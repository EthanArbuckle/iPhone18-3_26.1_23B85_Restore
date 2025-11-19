uint64_t sub_2143A3764(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);
  v10 = *(a2 + 184);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  return result;
}

void (*sub_2143A37EC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A388C;
}

void sub_2143A388C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 168);
  v9 = *(v3 + 176);
  v11 = *(v3 + 184);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 168);

    sub_214032564(v9, v11);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  free(v2);
}

uint64_t sub_2143A396C@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v9 = *(v1 + 232);
  v10[0] = v3;
  v8[0] = *(v1 + 200);
  v4 = v8[0];
  v8[1] = v2;
  *(v10 + 9) = *(v1 + 257);
  v5 = *(v10 + 9);
  a1[2] = v9;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v2;
  *(a1 + 57) = v5;
  return sub_213FB2E54(v8, &v7, &qword_27C906460, &qword_2146F4370);
}

__n128 sub_2143A39D4(__int128 *a1)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v8[2] = *(v1 + 232);
  v9[0] = v4;
  v8[0] = *(v1 + 200);
  v8[1] = v3;
  *(v9 + 9) = *(v1 + 257);
  sub_213FB2DF4(v8, &qword_27C906460, &qword_2146F4370);
  v5 = *a1;
  *(v1 + 216) = a1[1];
  v6 = a1[3];
  *(v1 + 232) = a1[2];
  *(v1 + 248) = v6;
  result = *(a1 + 57);
  *(v1 + 257) = result;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_2143A3A8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 280);

  *(v1 + 280) = v2;
  return result;
}

uint64_t sub_2143A3AD8@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x120uLL);
  memcpy(a1, v1, 0x120uLL);
  return sub_2142EBBC4(__dst, v4);
}

void *sub_2143A3B2C(const void *a1)
{
  memcpy(__dst, v1, 0x120uLL);
  sub_2142EB96C(__dst);
  return memcpy(v1, a1, 0x120uLL);
}

uint64_t sub_2143A3B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 304);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2143A3C10(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A3CC0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2143A3D8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 312);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 304);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143A3E2C;
  }

  return result;
}

uint64_t sub_2143A3E2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2143A3F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 320);
  *a2 = *(a1 + 288);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2143A3FC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 296);
  v9 = *(a2 + 304);
  v10 = *(a2 + 312);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 288) = v4;
  *(a2 + 296) = v3;
  *(a2 + 304) = v5;
  *(a2 + 312) = v6;
  *(a2 + 320) = v7;
  return result;
}

void (*sub_2143A4048(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  *v4 = *(v1 + 288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2143A40E8;
}

void sub_2143A40E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 296);
  v9 = *(v3 + 304);
  v11 = *(v3 + 312);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 296);

    sub_214032564(v9, v11);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
  }

  free(v2);
}

uint64_t sub_2143A41C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = a1 + *(type metadata accessor for CloudKitSharingToken() + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v8 + *(v9 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143A4364(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for CloudKitSharingToken() + 24);
  sub_21402F904(v9);
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2143A44A4(uint64_t a1)
{
  v3 = sub_2146D8958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1 + *(type metadata accessor for CloudKitSharingToken() + 24);
  sub_21402F904(v7);
  return (*(v4 + 8))(a1, v3);
}

void (*sub_2143A45A0(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
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
  v15 = *(type metadata accessor for CloudKitSharingToken() + 24);
  *(v5 + 12) = v15;
  v16 = v1 + v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v16 + *(v17 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_2143A47E0;
  }

  return result;
}

void sub_2143A47E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21402F904(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v7 = v2[1];
    v9 = *v2 + *(*a1 + 12);
    sub_21402F904((*a1)[5]);
  }

  free(v4);
  free(v3);
  free(v7);

  free(v2);
}

void (*sub_2143A48B0(uint64_t a1))(uint64_t a1)
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

  v5 = v4;
  *(a1 + 8) = v4;
  v6 = *(type metadata accessor for CloudKitSharingToken() + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &unk_27C9131D0, &qword_2146EAA70);
  return sub_2143A4970;
}

void sub_2143A4970(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2143A009C(v1, *a1 + *(a1 + 16));

  free(v1);
}

uint64_t sub_2143A49B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for CloudKitSharingToken() + 28);
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

uint64_t sub_2143A4A50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for CloudKitSharingToken() + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2143A4B18(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitSharingToken() + 28);
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

void (*sub_2143A4C68(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for CloudKitSharingToken() + 28);
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

uint64_t sub_2143A4D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CloudKitSharingToken() + 28));
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

uint64_t sub_2143A4DC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for CloudKitSharingToken() + 28);
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

void (*sub_2143A4E5C(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for CloudKitSharingToken() + 28);
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

uint64_t sub_2143A4F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A5078(uint64_t a1)
{
  *(a1 + 8) = sub_2143A50E0(&qword_27C9057A0);
  result = sub_2143A50E0(&qword_27C9057C0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A50E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudKitSharingToken();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2143A5124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2143A516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143A51C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2143A5210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143A5270(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2143A52B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143A5368(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2143A53B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSgSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17CloudStorageSPKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor21CloudStorageSignatureVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143A546C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_2143A54B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2143A5578()
{
  sub_21409A2B4(319, &qword_27C912210, &qword_27C905680, &unk_2146F3CE0);
  if (v0 <= 0x3F)
  {
    sub_2143A5654();
    if (v1 <= 0x3F)
    {
      sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2143A5654()
{
  if (!qword_280B2E580)
  {
    sub_2146D8958();
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E580);
    }
  }
}

uint64_t sub_2143A56AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143A5734()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6910;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1 && (v6 = MEMORY[0x277D837D0], *(inited + 48) = v2, *(inited + 56) = v1, *(inited + 72) = v6, *(inited + 80) = 1954047348, *(inited + 88) = 0xE400000000000000, v3))
  {
    *(inited + 120) = v6;
    *(inited + 96) = v4;
    *(inited + 104) = v3;
    v7 = inited;

    v8 = sub_2140457C0(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayDestroy();
    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2143A5880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v53 = a2;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = *(v3 + 200);
  v106[8] = *(v3 + 184);
  v106[9] = v9;
  v10 = *(v3 + 232);
  v106[10] = *(v3 + 216);
  v106[11] = v10;
  v11 = *(v3 + 136);
  v106[4] = *(v3 + 120);
  v106[5] = v11;
  v12 = *(v3 + 168);
  v106[6] = *(v3 + 152);
  v106[7] = v12;
  v13 = *(v3 + 72);
  v106[0] = *(v3 + 56);
  v106[1] = v13;
  v14 = *(v3 + 104);
  v106[2] = *(v3 + 88);
  v106[3] = v14;
  v15 = *(v3 + 200);
  v100 = *(v3 + 184);
  v101 = v15;
  v16 = *(v3 + 232);
  v102 = *(v3 + 216);
  v103 = v16;
  v17 = *(v3 + 136);
  v96 = *(v3 + 120);
  v97 = v17;
  v18 = *(v3 + 168);
  v98 = *(v3 + 152);
  v99 = v18;
  v19 = *(v3 + 72);
  v92 = *(v3 + 56);
  v93 = v19;
  v20 = *(v3 + 104);
  v94 = *(v3 + 88);
  v95 = v20;
  *&v54[2] = a3;
  v54[3] = a1;
  v21 = *(v8 + 8);
  sub_21407CE3C(v106, &v80);
  type metadata accessor for CGImage(0);
  v23 = v22;
  v21(&v104, &v92, sub_2143A5D90, v54, v22, v7, v8);
  if (v4)
  {
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v84 = v96;
    v85 = v97;
    v86 = v98;
    v87 = v99;
    v80 = v92;
    v81 = v93;
    v82 = v94;
    v83 = v95;
    return sub_213FB2DF4(&v80, &qword_27C904D00, &qword_2146EF6E0);
  }

  v88 = v100;
  v89 = v101;
  v90 = v102;
  v91 = v103;
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  sub_213FB2DF4(&v80, &qword_27C904D00, &qword_2146EF6E0);
  v25 = v104;
  if (v104)
  {
    v105 = v104;
LABEL_5:
    v26 = v53;
    *(v53 + 24) = v23;
    *(v26 + 32) = &off_28268E9F0;
    *v26 = v25;
    v27 = *(v3 + 200);
    v76 = *(v3 + 184);
    v77 = v27;
    v28 = *(v3 + 232);
    v78 = *(v3 + 216);
    v79 = v28;
    v29 = *(v3 + 136);
    v72 = *(v3 + 120);
    v73 = v29;
    v30 = *(v3 + 168);
    v74 = *(v3 + 152);
    v75 = v30;
    v31 = *(v3 + 72);
    v68 = *(v3 + 56);
    v69 = v31;
    v32 = *(v3 + 104);
    v70 = *(v3 + 88);
    v71 = v32;
    *(v26 + 40) = 0;
    *(v26 + 48) = 1;
    *(v26 + 184) = *(v3 + 184);
    *(v26 + 200) = *(v3 + 200);
    *(v26 + 216) = *(v3 + 216);
    *(v26 + 232) = *(v3 + 232);
    *(v26 + 120) = *(v3 + 120);
    *(v26 + 136) = *(v3 + 136);
    *(v26 + 152) = *(v3 + 152);
    *(v26 + 168) = *(v3 + 168);
    *(v26 + 56) = *(v3 + 56);
    *(v26 + 72) = *(v3 + 72);
    *(v26 + 88) = *(v3 + 88);
    *(v26 + 104) = *(v3 + 104);
    return sub_21407CE3C(&v68, &v56);
  }

  v33 = *(v3 + 32);
  v51 = *(v3 + 24);
  v34 = __swift_project_boxed_opaque_existential_1(v3, v51);
  v52 = &v50;
  v35 = *(v3 + 200);
  v76 = *(v3 + 184);
  v77 = v35;
  v36 = *(v3 + 232);
  v78 = *(v3 + 216);
  v79 = v36;
  v37 = *(v3 + 136);
  v72 = *(v3 + 120);
  v73 = v37;
  v38 = *(v3 + 168);
  v74 = *(v3 + 152);
  v75 = v38;
  v39 = *(v3 + 72);
  v68 = *(v3 + 56);
  v69 = v39;
  v40 = *(v3 + 104);
  v70 = *(v3 + 88);
  v71 = v40;
  v41 = *(v3 + 200);
  v64 = *(v3 + 184);
  v65 = v41;
  v42 = *(v3 + 232);
  v66 = *(v3 + 216);
  v67 = v42;
  v43 = *(v3 + 136);
  v60 = *(v3 + 120);
  v61 = v43;
  v44 = *(v3 + 168);
  v62 = *(v3 + 152);
  v63 = v44;
  v45 = *(v3 + 72);
  v56 = *(v3 + 56);
  v57 = v45;
  v46 = *(v3 + 104);
  v58 = *(v3 + 88);
  v59 = v46;
  MEMORY[0x28223BE20](v34);
  *&v49[2] = a3;
  v47 = *(v33 + 16);
  sub_21407CE3C(&v68, v55);
  v47(&v105, &v56, sub_2143A6190, v49, v23, v51, v33);
  v55[8] = v64;
  v55[9] = v65;
  v55[10] = v66;
  v55[11] = v67;
  v55[4] = v60;
  v55[5] = v61;
  v55[6] = v62;
  v55[7] = v63;
  v55[0] = v56;
  v55[1] = v57;
  v55[2] = v58;
  v55[3] = v59;
  sub_213FB2DF4(v55, &qword_27C904D00, &qword_2146EF6E0);
  v25 = v105;
  if (v105)
  {
    goto LABEL_5;
  }

  sub_2143A61AC();
  swift_allocError();
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 3;
  return swift_willThrow();
}

uint64_t sub_2143A5D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2143A5DCC(*(v1 + 24), *(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2143A5DCC(int64_t a1, double a2)
{
  if (a1 < 0 || CGImageSourceGetCount(v2) <= a1)
  {
    v30 = CGImageSourceGetType(v2);
    if (v30)
    {
      v31 = v30;
      v28 = sub_2146D95B8();
      ThumbnailAtIndex = v32;
    }

    else
    {
      v28 = 0;
      ThumbnailAtIndex = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    v34 = 0;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  result = swift_initStackObject();
  v6 = *MEMORY[0x277CD3648];
  *(result + 32) = *MEMORY[0x277CD3648];
  v7 = MEMORY[0x277D839B0];
  *(result + 16) = xmmword_2146E6930;
  *(result + 40) = 1;
  v8 = *MEMORY[0x277CD3568];
  *(result + 64) = v7;
  *(result + 72) = v8;
  *(result + 80) = 1;
  v9 = *MEMORY[0x277CD3660];
  *(result + 104) = v7;
  *(result + 112) = v9;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2 < 9.22337204e18)
  {
    v10 = a2;
    v11 = MEMORY[0x277D83B88];
    if (a2 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    *(result + 120) = v10;
    v12 = *MEMORY[0x277CD3578];
    *(result + 144) = v11;
    *(result + 152) = v12;
    v13 = MEMORY[0x277CD3678];
    *(result + 160) = 1;
    v14 = *v13;
    *(result + 184) = v7;
    *(result + 192) = v14;
    v15 = MEMORY[0x277CD3618];
    *(result + 200) = 0;
    v16 = *v15;
    *(result + 224) = v7;
    *(result + 232) = v16;
    *(result + 264) = v7;
    *(result + 240) = 1;
    v17 = result;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    v21 = v12;
    v22 = v14;
    v23 = v16;
    sub_214045EE0(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    v24 = sub_2146D9468();

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v2, a1, v24);

    if (ThumbnailAtIndex)
    {
      return ThumbnailAtIndex;
    }

    v26 = CGImageSourceGetType(v2);
    if (v26)
    {
      v27 = v26;
      v28 = sub_2146D95B8();
      ThumbnailAtIndex = v29;
    }

    else
    {
      v28 = 0;
      ThumbnailAtIndex = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    v34 = 1;
LABEL_15:
    *v33 = v28;
    *(v33 + 8) = ThumbnailAtIndex;
    *(v33 + 16) = v34;
    swift_willThrow();
    return ThumbnailAtIndex;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2143A60C4@<X0>(CGImage *a1@<X0>, uint64_t *a2@<X8>)
{
  CGImageGetRenderingIntent(a1);
  result = CGImageCreateCopyWithParameters();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_2143A61AC();
    swift_allocError();
    *v4 = xmmword_214734E00;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2143A61AC()
{
  result = qword_27C912218;
  if (!qword_27C912218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912218);
  }

  return result;
}

void *sub_2143A6200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = v4;
  v11 = *(v6 + 200);
  v42 = *(v6 + 184);
  v43 = v11;
  v12 = *(v6 + 232);
  v44 = *(v6 + 216);
  v45 = v12;
  v13 = *(v6 + 136);
  v38 = *(v6 + 120);
  v39 = v13;
  v14 = *(v6 + 168);
  v40 = *(v6 + 152);
  v41 = v14;
  v15 = *(v6 + 72);
  v34 = *(v6 + 56);
  v35 = v15;
  v16 = *(v6 + 104);
  v36 = *(v6 + 88);
  v37 = v16;
  v17 = *(v6 + 24);
  v18 = *(v6 + 32);
  __swift_project_boxed_opaque_existential_1(v6, v17);
  v32[8] = v42;
  v32[9] = v43;
  v32[10] = v44;
  v32[11] = v45;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  v31[2] = a1;
  *&v31[3] = a4;
  v31[4] = a2;
  v19 = *(v18 + 8);
  type metadata accessor for CGImage(0);
  v21 = v20;
  result = v19(&v33, v32, sub_2143A6B5C, v31, v20, v17, v18);
  if (!v5)
  {
    v23 = v33;
    if (v33)
    {
      v24 = v43;
      *(a3 + 184) = v42;
      *(a3 + 200) = v24;
      v25 = v45;
      *(a3 + 216) = v44;
      *(a3 + 232) = v25;
      v26 = v39;
      *(a3 + 120) = v38;
      *(a3 + 136) = v26;
      v27 = v41;
      *(a3 + 152) = v40;
      *(a3 + 168) = v27;
      v28 = v35;
      *(a3 + 56) = v34;
      *(a3 + 72) = v28;
      v29 = v37;
      *(a3 + 88) = v36;
      *(a3 + 24) = v21;
      *(a3 + 32) = &off_28268E9F0;
      *a3 = v23;
      *(a3 + 40) = 0;
      *(a3 + 48) = 1;
      *(a3 + 104) = v29;
      return sub_21407CE3C(&v34, v32);
    }

    else
    {
      sub_2143A61AC();
      swift_allocError();
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_2143A640C(CGImageSource *a1@<X0>, int64_t a2@<X1>, double *a3@<X2>, CGImageRef *a4@<X8>, double a5@<D0>)
{
  Count = CGImageSourceGetCount(a1);
  if (a2 < 0 || Count <= a2)
  {
    v37 = CGImageSourceGetType(a1);
    if (v37)
    {
      v38 = v37;
      v39 = sub_2146D95B8();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    *v42 = v39;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0;
    goto LABEL_24;
  }

  v62 = a3;
  v63 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E6930;
  v12 = *MEMORY[0x277CD3648];
  *(inited + 32) = *MEMORY[0x277CD3648];
  v13 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v14 = *MEMORY[0x277CD3678];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 80) = 0;
  v15 = *MEMORY[0x277CD3618];
  *(inited + 104) = v13;
  *(inited + 112) = v15;
  *(inited + 120) = 1;
  v16 = *MEMORY[0x277CD3620];
  *(inited + 144) = v13;
  *(inited + 152) = v16;
  *(inited + 160) = 1;
  v17 = *MEMORY[0x277CD3668];
  v18 = MEMORY[0x277D837D0];
  *(inited + 200) = 0x682E63696C627570;
  *(inited + 208) = 0xEB00000000636965;
  v19 = MEMORY[0x277CD35A8];
  *(inited + 184) = v13;
  *(inited + 192) = v17;
  v20 = *v19;
  *(inited + 224) = v18;
  *(inited + 232) = v20;
  *(inited + 264) = v13;
  *(inited + 240) = 1;
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v20;
  sub_214045EE0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v27 = sub_2146D9468();

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, v27);

  if (!ImageAtIndex)
  {
    v43 = CGImageSourceGetType(a1);
    if (v43)
    {
      v44 = v43;
      v45 = sub_2146D95B8();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    sub_2143A61AC();
    swift_allocError();
    *v54 = v45;
    *(v54 + 8) = v47;
    *(v54 + 16) = 1;
LABEL_24:
    swift_willThrow();
    return;
  }

  v29 = ImageAtIndex;
  Width = CGImageGetWidth(v29);
  Height = CGImageGetHeight(v29);
  if (Width < 1 || (v32 = Width, Width > a5))
  {
    v48 = CGImageSourceGetType(a1);
    if (!v48)
    {
LABEL_20:
      v50 = 0;
      v52 = 0;
      goto LABEL_21;
    }

LABEL_18:
    v49 = v48;
    v50 = sub_2146D95B8();
    v52 = v51;

LABEL_21:
    sub_2143A61AC();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    *(v53 + 16) = 2;
    swift_willThrow();

    return;
  }

  if (Height < 1 || (v33 = Height, Height > a5))
  {
    v48 = CGImageSourceGetType(a1);
    if (!v48)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v34 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v34)
  {
    v35 = v34;
    v36 = v63;
    if ([(__CFDictionary *)v34 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3490]])
    {
      sub_2146D9E28();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v66 = v64;
    v67 = v65;
    if (*(&v65 + 1))
    {
      sub_21404A8B8(0, &qword_280B2E378, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v55 = v68;
        if ([v68 __swift_objectForKeyedSubscript_])
        {
          sub_2146D9E28();
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
        }

        v66 = v64;
        v67 = v65;
        if (*(&v65 + 1))
        {
          sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v56 = v68;
          }

          else
          {
            v56 = 0;
          }
        }

        else
        {
          sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
          v56 = 0;
        }

        if ([v55 __swift_objectForKeyedSubscript_])
        {
          sub_2146D9E28();
          swift_unknownObjectRelease();
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
        }

        v66 = v64;
        v67 = v65;
        if (*(&v65 + 1))
        {
          sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v57 = v68;
          }

          else
          {
            v57 = 0;
          }

          if (v56)
          {
            if (v57)
            {
              [v56 doubleValue];
              v59 = v58;
              [v57 doubleValue];
              v61 = v60;

              if (v59 <= v32 && v59 >= -v32 && v61 <= v33 && v61 >= -v33)
              {
                *v62 = v59;
                v62[1] = v61;
              }

              goto LABEL_57;
            }

            goto LABEL_54;
          }
        }

        else
        {
          sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
          if (v56)
          {
LABEL_54:

            goto LABEL_57;
          }

          v57 = 0;
        }

        goto LABEL_57;
      }
    }

    else
    {

      sub_213FB2DF4(&v66, &qword_27C913170, &qword_2146EAB20);
    }
  }

  else
  {

    v36 = v63;
  }

LABEL_57:
  *v36 = ImageAtIndex;
}

CGImageRef sub_2143A6A8C(CFDictionaryRef options)
{
  v2 = options;
  if (options)
  {
    type metadata accessor for CFString(0);
    sub_2143A6B04();
    v2 = sub_2146D9468();
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, v2);

  return ImageAtIndex;
}

unint64_t sub_2143A6B04()
{
  result = qword_280B34D70;
  if (!qword_280B34D70)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34D70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor14ThumbnailErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2143A6B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2143A6BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2143A6C28(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2143A6C74()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8F48();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for NearbyGroup_Member(0) + 24);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_2143A6D1C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_2146D90A8(), !v1))
  {
    result = sub_2143A6DC8(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for NearbyGroup_Member(0) + 20);
      return sub_2146D8DD8();
    }
  }

  return result;
}

uint64_t sub_2143A6DC8(uint64_t a1)
{
  result = type metadata accessor for NearbyGroup_Member(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_2143A6E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v4 = a2 + *(a1 + 20);
  result = sub_2146D8DE8();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_2143A6ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C9122E8, type metadata accessor for NearbyGroup_Member);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A6F6C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A6FD8()
{
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);

  return sub_2146D9008();
}

uint64_t sub_2143A7058()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19938);
  __swift_project_value_buffer(v0, qword_27CA19938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "initialize";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "memberAdded";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "memberRemoved";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "memberLeft";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143A72A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_2143A7EF0(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_2143A84AC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_2143A7384(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_2143A7934(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2143A7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912300, &qword_214735788);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_213FB2E54(a1, v14, &qword_27C9122F8, &qword_214735780);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_2143AC89C(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2143AC83C(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }

    else
    {
      sub_213FB2DF4(v28, &qword_27C912300, &qword_214735788);
      v35 = v43;
      sub_2143AC89C(v20, v43, type metadata accessor for NearbyGroup_Group.Initialization);
      sub_2143AC89C(v35, v28, type metadata accessor for NearbyGroup_Group.Initialization);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization);
  v37 = v47;
  sub_2146D8F98();
  if (v37)
  {
    return sub_213FB2DF4(v28, &qword_27C912300, &qword_214735788);
  }

  sub_213FB2E54(v28, v36, &qword_27C912300, &qword_214735788);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C912300, &qword_214735788);
    return sub_213FB2DF4(v36, &qword_27C912300, &qword_214735788);
  }

  else
  {
    v39 = v44;
    sub_2143AC89C(v36, v44, type metadata accessor for NearbyGroup_Group.Initialization);
    if (v32 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C912300, &qword_214735788);
    v40 = v42;
    sub_213FB2DF4(v42, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v39, v40, type metadata accessor for NearbyGroup_Group.Initialization);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_2143A7934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912308, &qword_214735790);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_213FB2E54(a1, v14, &qword_27C9122F8, &qword_214735780);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_2143AC89C(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_213FB2DF4(v28, &qword_27C912308, &qword_214735790);
      v35 = v44;
      sub_2143AC89C(v20, v44, type metadata accessor for NearbyGroup_Group.MemberAdded);
      sub_2143AC89C(v35, v28, type metadata accessor for NearbyGroup_Group.MemberAdded);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_2143AC83C(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded);
  v37 = v47;
  sub_2146D8F98();
  if (v37)
  {
    return sub_213FB2DF4(v28, &qword_27C912308, &qword_214735790);
  }

  sub_213FB2E54(v28, v36, &qword_27C912308, &qword_214735790);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C912308, &qword_214735790);
    return sub_213FB2DF4(v36, &qword_27C912308, &qword_214735790);
  }

  else
  {
    v39 = v43;
    sub_2143AC89C(v36, v43, type metadata accessor for NearbyGroup_Group.MemberAdded);
    if (v32 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C912308, &qword_214735790);
    v40 = v42;
    sub_213FB2DF4(v42, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v39, v40, type metadata accessor for NearbyGroup_Group.MemberAdded);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_2143A7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912310, &qword_214735798);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_213FB2E54(a1, v14, &qword_27C9122F8, &qword_214735780);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_2143AC89C(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_213FB2DF4(v28, &qword_27C912310, &qword_214735798);
      v35 = v44;
      sub_2143AC89C(v20, v44, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      sub_2143AC89C(v35, v28, type metadata accessor for NearbyGroup_Group.MemberRemoved);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_2143AC83C(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  v37 = v47;
  sub_2146D8F98();
  if (v37)
  {
    return sub_213FB2DF4(v28, &qword_27C912310, &qword_214735798);
  }

  sub_213FB2E54(v28, v36, &qword_27C912310, &qword_214735798);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C912310, &qword_214735798);
    return sub_213FB2DF4(v36, &qword_27C912310, &qword_214735798);
  }

  else
  {
    v39 = v43;
    sub_2143AC89C(v36, v43, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    if (v32 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C912310, &qword_214735798);
    v40 = v42;
    sub_213FB2DF4(v42, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v39, v40, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_2143A84AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912318, &qword_2147357A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_213FB2E54(a1, v14, &qword_27C9122F8, &qword_214735780);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C9122F8, &qword_214735780);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_2143AC89C(v14, v22, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    sub_2143AC89C(v22, v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_213FB2DF4(v28, &qword_27C912318, &qword_2147357A0);
      v35 = v44;
      sub_2143AC89C(v20, v44, type metadata accessor for NearbyGroup_Group.MemberLeft);
      sub_2143AC89C(v35, v28, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_2143AC83C(v20, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft);
  v37 = v47;
  sub_2146D8F98();
  if (v37)
  {
    return sub_213FB2DF4(v28, &qword_27C912318, &qword_2147357A0);
  }

  sub_213FB2E54(v28, v36, &qword_27C912318, &qword_2147357A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C912318, &qword_2147357A0);
    return sub_213FB2DF4(v36, &qword_27C912318, &qword_2147357A0);
  }

  else
  {
    v39 = v43;
    sub_2143AC89C(v36, v43, type metadata accessor for NearbyGroup_Group.MemberLeft);
    if (v32 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C912318, &qword_2147357A0);
    v40 = v42;
    sub_213FB2DF4(v42, &qword_27C9122F8, &qword_214735780);
    sub_2143AC89C(v39, v40, type metadata accessor for NearbyGroup_Group.MemberLeft);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_2143A8A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_213FB2E54(v3, &v16 - v10, &qword_27C9122F8, &qword_214735780);
  v12 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2143A90A8(v3, a1, a2, a3);
    }

    else
    {
      sub_2143A92E0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2143A8E70(v3, a1, a2, a3);
  }

  else
  {
    sub_2143A8C3C(v3, a1, a2, a3);
  }

  result = sub_2143AC83C(v11, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for NearbyGroup_Group(0) + 20);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143A8C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v8, &qword_27C9122F8, &qword_214735780);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_2143AC89C(v8, v12, type metadata accessor for NearbyGroup_Group.Initialization);
    sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization);
    sub_2146D90F8();
    return sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.Initialization);
  }

  result = sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A8E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v8, &qword_27C9122F8, &qword_214735780);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2143AC89C(v8, v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
    sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded);
    sub_2146D90F8();
    return sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
  }

  result = sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v8, &qword_27C9122F8, &qword_214735780);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2143AC89C(v8, v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    sub_2146D90F8();
    return sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.MemberRemoved);
  }

  result = sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB2E54(a1, v8, &qword_27C9122F8, &qword_214735780);
  v13 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C9122F8, &qword_214735780);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_2143AC89C(v8, v12, type metadata accessor for NearbyGroup_Group.MemberLeft);
    sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft);
    sub_2146D90F8();
    return sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.MemberLeft);
  }

  result = sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_2143A9518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_2146D8DE8();
}

uint64_t sub_2143A95CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C9122F0, type metadata accessor for NearbyGroup_Group);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A966C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A96D8()
{
  sub_2143AB278(&qword_27C9122B0, type metadata accessor for NearbyGroup_Group);

  return sub_2146D9008();
}

uint64_t sub_2143A9778(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2146D9148();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146E6910;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_2146D9118();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 7;
  v18[16] = 2;
  v17();
  return sub_2146D9128();
}

uint64_t sub_2143A9938()
{
  result = sub_2146D8E78();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2146D8ED8();
      }

      else if (result == 2)
      {
        type metadata accessor for NearbyGroup_Member(0);
        sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
        sub_2146D8F78();
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_2143A9A34()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2146D9048();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0[2] + 16) || (type metadata accessor for NearbyGroup_Member(0), sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member), result = sub_2146D90D8(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NearbyGroup_Group.Initialization(0) + 24);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143A9B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return sub_2146D8DE8();
}

uint64_t (*sub_2143A9BC4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2143A9C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912340, type metadata accessor for NearbyGroup_Group.Initialization);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143A9CB8(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143A9D24()
{
  sub_2143AB278(&qword_27C912290, type metadata accessor for NearbyGroup_Group.Initialization);

  return sub_2146D9008();
}

uint64_t sub_2143A9DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_2143D84A0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_2146D8DF8();
  sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2143A9E5C()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19968);
  __swift_project_value_buffer(v0, qword_27CA19968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AA09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912348, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AA13C(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AA1A8()
{
  sub_2143AB278(&qword_27C912270, type metadata accessor for NearbyGroup_Group.MemberAdded);

  return sub_2146D9008();
}

uint64_t sub_2143AA228()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19980);
  __swift_project_value_buffer(v0, qword_27CA19980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "member";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AA3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = sub_2146D8E78();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }

    else if (result == 2)
    {
      sub_2143AA490(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_2143AA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 24);
  type metadata accessor for NearbyGroup_Member(0);
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
  return sub_2146D8F98();
}

uint64_t sub_2143AA548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_2146D9048();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_2143AA638(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v18 = v5 + *(a5(0) + 20);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143AA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for NearbyGroup_Member(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_213FB2E54(a1 + *(v16 + 24), v10, &qword_27C912330, &qword_2147357B8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_213FB2DF4(v10, &qword_27C912330, &qword_2147357B8);
  }

  sub_2143AC89C(v10, v15, type metadata accessor for NearbyGroup_Member);
  sub_2143AB278(&qword_27C9122D0, type metadata accessor for NearbyGroup_Member);
  sub_2146D90F8();
  return sub_2143AC83C(v15, type metadata accessor for NearbyGroup_Member);
}

uint64_t sub_2143AA858@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  v4 = &a2[*(a1 + 20)];
  sub_2146D8DE8();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for NearbyGroup_Member(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_2143AA95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912350, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AA9FC(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AAA68()
{
  sub_2143AB278(&qword_27C912250, type metadata accessor for NearbyGroup_Group.MemberRemoved);

  return sub_2146D9008();
}

uint64_t sub_2143AAAE8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19998);
  __swift_project_value_buffer(v0, qword_27CA19998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "groupUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "usesToken";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_2143AACB0()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2146D8ED8();
    }

    else if (result == 2)
    {
      sub_2146D8EA8();
    }
  }

  return result;
}

uint64_t sub_2143AAD3C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2146D9048();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v0 + 16) != 1 || (result = sub_2146D9028(), !v1))
  {
    v8 = v0 + *(type metadata accessor for NearbyGroup_Group.MemberLeft(0) + 24);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2143AAE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2146ECC00;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_2146D8DE8();
}

uint64_t sub_2143AAE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2143AAEE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2143AAF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2143AB278(&qword_27C912358, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2143AB024(uint64_t a1)
{
  v2 = sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2143AB090()
{
  sub_2143AB278(&qword_27C912230, type metadata accessor for NearbyGroup_Group.MemberLeft);

  return sub_2146D9008();
}

uint64_t sub_2143AB10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_2146D8DF8();
  sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_2143AB278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143AB990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912320, &qword_2147357A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_213FB2E54(a1, &v24 - v16, &qword_27C9122F8, &qword_214735780);
  sub_213FB2E54(a2, &v17[v18], &qword_27C9122F8, &qword_214735780);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v17, &qword_27C9122F8, &qword_214735780);
LABEL_9:
      v22 = *(type metadata accessor for NearbyGroup_Group(0) + 20);
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
      v20 = sub_2146D9578();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_213FB2E54(v17, v12, &qword_27C9122F8, &qword_214735780);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.OneOf_Event);
LABEL_6:
    sub_213FB2DF4(v17, &qword_27C912320, &qword_2147357A8);
    goto LABEL_7;
  }

  sub_2143AC89C(&v17[v18], v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  v21 = sub_2143AC050(v12, v8);
  sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  sub_213FB2DF4(v17, &qword_27C9122F8, &qword_214735780);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2143ABCD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912338, &qword_2147357C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_213FB2E54(a1 + v17, v16, &qword_27C912330, &qword_2147357B8);
  sub_213FB2E54(a2 + v17, &v16[v18], &qword_27C912330, &qword_2147357B8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C912330, &qword_2147357B8);
LABEL_11:
      v24 = *(v26 + 20);
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
      v20 = sub_2146D9578();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_213FB2E54(v16, v12, &qword_27C912330, &qword_2147357B8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    sub_213FB2DF4(v16, &qword_27C912338, &qword_2147357C0);
    goto LABEL_8;
  }

  v22 = v25;
  sub_2143AC89C(&v16[v18], v25, type metadata accessor for NearbyGroup_Member);
  v23 = sub_2143AC70C(v12, v22);
  sub_2143AC83C(v22, type metadata accessor for NearbyGroup_Member);
  sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Member);
  sub_213FB2DF4(v16, &qword_27C912330, &qword_2147357B8);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2143AC050(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v53 = type metadata accessor for NearbyGroup_Group.MemberLeft(0);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NearbyGroup_Group.MemberRemoved(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for NearbyGroup_Group.Initialization(0);
  v13 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912328, &qword_2147357B0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v51 - v31;
  v33 = *(v30 + 56);
  sub_2143AC904(a1, &v51 - v31);
  sub_2143AC904(v56, &v32[v33]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2143AC904(v32, v19);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v35 = type metadata accessor for NearbyGroup_Group.MemberLeft;
        v36 = v19;
        goto LABEL_19;
      }

      v40 = &v32[v33];
      v41 = v55;
      sub_2143AC89C(v40, v55, type metadata accessor for NearbyGroup_Group.MemberLeft);
      if ((sub_214466780(*v19, *(v19 + 1), *v41, *(v41 + 8)) & 1) != 0 && v19[16] == *(v41 + 16))
      {
        v42 = *(v53 + 24);
        sub_2146D8DF8();
        sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
        if (sub_2146D9578())
        {
          v43 = type metadata accessor for NearbyGroup_Group.MemberLeft;
          sub_2143AC83C(v41, type metadata accessor for NearbyGroup_Group.MemberLeft);
          v44 = v19;
LABEL_25:
          sub_2143AC83C(v44, v43);
          sub_2143AC83C(v32, type metadata accessor for NearbyGroup_Group.OneOf_Event);
          v37 = 1;
          return v37 & 1;
        }
      }

      v45 = type metadata accessor for NearbyGroup_Group.MemberLeft;
      sub_2143AC83C(v41, type metadata accessor for NearbyGroup_Group.MemberLeft);
      v46 = v19;
LABEL_27:
      sub_2143AC83C(v46, v45);
      sub_2143AC83C(v32, type metadata accessor for NearbyGroup_Group.OneOf_Event);
      goto LABEL_28;
    }

    sub_2143AC904(v32, v22);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
      v36 = v22;
      goto LABEL_19;
    }

    sub_2143AC89C(&v32[v33], v8, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v37 = sub_2143ABCD4(v22, v8);
    v38 = type metadata accessor for NearbyGroup_Group.MemberRemoved;
    sub_2143AC83C(v8, type metadata accessor for NearbyGroup_Group.MemberRemoved);
    v39 = v22;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2143AC904(v32, v27);
      if (swift_getEnumCaseMultiPayload())
      {
        v35 = type metadata accessor for NearbyGroup_Group.Initialization;
        v36 = v27;
LABEL_19:
        sub_2143AC83C(v36, v35);
        sub_213FB2DF4(v32, &qword_27C912328, &qword_2147357B0);
LABEL_28:
        v37 = 0;
        return v37 & 1;
      }

      v47 = &v32[v33];
      v48 = v54;
      sub_2143AC89C(v47, v54, type metadata accessor for NearbyGroup_Group.Initialization);
      if (sub_214466780(*v27, *(v27 + 1), *v48, *(v48 + 8)) & 1) != 0 && (sub_2143D84A0(*(v27 + 2), *(v48 + 16)))
      {
        v49 = *(v52 + 24);
        sub_2146D8DF8();
        sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
        if (sub_2146D9578())
        {
          v43 = type metadata accessor for NearbyGroup_Group.Initialization;
          sub_2143AC83C(v48, type metadata accessor for NearbyGroup_Group.Initialization);
          v44 = v27;
          goto LABEL_25;
        }
      }

      v45 = type metadata accessor for NearbyGroup_Group.Initialization;
      sub_2143AC83C(v48, type metadata accessor for NearbyGroup_Group.Initialization);
      v46 = v27;
      goto LABEL_27;
    }

    sub_2143AC904(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for NearbyGroup_Group.MemberAdded;
      v36 = v25;
      goto LABEL_19;
    }

    sub_2143AC89C(&v32[v33], v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v37 = sub_2143AC968(v25, v12);
    v38 = type metadata accessor for NearbyGroup_Group.MemberAdded;
    sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Group.MemberAdded);
    v39 = v25;
  }

  sub_2143AC83C(v39, v38);
  sub_2143AC83C(v32, type metadata accessor for NearbyGroup_Group.OneOf_Event);
  return v37 & 1;
}

uint64_t sub_2143AC70C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {
    v5 = type metadata accessor for NearbyGroup_Member(0);
    v6 = *(v5 + 24);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        if (*v7 == *v9 && v8 == v10)
        {
          goto LABEL_13;
        }

        v12 = v5;
        v13 = sub_2146DA6A8();
        v5 = v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v10)
    {
LABEL_13:
      v14 = *(v5 + 20);
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
      return sub_2146D9578() & 1;
    }
  }

  return 0;
}

uint64_t sub_2143AC83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2143AC89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2143AC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Group.OneOf_Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143AC968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyGroup_Member(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912338, &qword_2147357C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for NearbyGroup_Group.MemberAdded(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_213FB2E54(a1 + v17, v16, &qword_27C912330, &qword_2147357B8);
  sub_213FB2E54(a2 + v17, &v16[v18], &qword_27C912330, &qword_2147357B8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_213FB2DF4(v16, &qword_27C912330, &qword_2147357B8);
LABEL_11:
      v24 = *(v26 + 20);
      sub_2146D8DF8();
      sub_2143AB278(&qword_27C903D38, MEMORY[0x277D216C8]);
      v20 = sub_2146D9578();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_213FB2E54(v16, v12, &qword_27C912330, &qword_2147357B8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Member);
LABEL_7:
    sub_213FB2DF4(v16, &qword_27C912338, &qword_2147357C0);
    goto LABEL_8;
  }

  v22 = v25;
  sub_2143AC89C(&v16[v18], v25, type metadata accessor for NearbyGroup_Member);
  v23 = sub_2143AC70C(v12, v22);
  sub_2143AC83C(v22, type metadata accessor for NearbyGroup_Member);
  sub_2143AC83C(v12, type metadata accessor for NearbyGroup_Member);
  sub_213FB2DF4(v16, &qword_27C912330, &qword_2147357B8);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2143ACCE4()
{
  result = type metadata accessor for NearbyGroup_Group.Initialization(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NearbyGroup_Group.MemberAdded(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NearbyGroup_Group.MemberRemoved(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NearbyGroup_Group.MemberLeft(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_2143ACDA8()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143ACE3C()
{
  if (!qword_280B34BE0)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B34BE0);
    }
  }
}

void sub_2143ACEB4()
{
  sub_2143AD054(319, &qword_27C912390, type metadata accessor for NearbyGroup_Group.OneOf_Event, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143ACF90()
{
  sub_2143AD054(319, &qword_27C9123A8, type metadata accessor for NearbyGroup_Member, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2143AD054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_33Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_34Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912330, &qword_2147357B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2143AD37C()
{
  sub_2146D8DF8();
  if (v0 <= 0x3F)
  {
    sub_2143AD054(319, &qword_27C9123C0, type metadata accessor for NearbyGroup_Member, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2143AD468()
{
  result = sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2143AD550(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_2143AD59C(uint64_t a1)
{
  *(a1 + 8) = sub_214322790();
  result = sub_21432255C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2143AD5DC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = sub_2146D8B08();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2146D8958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = v1[3];
  v51 = v1[2];
  v52 = v13;
  v56 = v1[5];
  type metadata accessor for ClientConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_2146D9588();
  v17 = sub_2146D9588();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    return 0;
  }

  sub_2146D88E8();

  (*(v6 + 32))(v12, v10, v5);
  v19 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v20 = sub_2146D8898();
  v21 = [v19 initWithURL_];

  if (!v21)
  {
LABEL_10:
    (*(v6 + 8))(v12, v5);
    return 0;
  }

  [v21 load];
  if (![v21 principalClass] || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v23 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
  {

    goto LABEL_10;
  }

  v50 = v5;
  if (v56 < 0)
  {
    v49 = v6;
    v34 = v23;
    memcpy(v59, ((v56 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    memcpy(v58, ((v56 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    v35 = *(v34 + 16);
    sub_214320F9C(v59, &v57);
    v36 = v35(v58, ObjCClassMetadata, v34);
    v38 = v37;
    blastdoor_AVTAvatarRecordGetClass();
    v56 = v36;
    v48 = v38;
    v39 = sub_2146D8A38();
    if (v52)
    {
      v40 = v39;
      swift_getObjCClassMetadata();
      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v42 = sub_2146D9588();

      v43 = v53;
      sub_2146D8AF8();
      v44 = sub_2146D8AD8();
      (*(v54 + 8))(v43, v55);
      v45 = [v41 initWithAvatarData:v40 identifier:v42 orderDate:v44];

      blastdoor_AVTAvatarRecordSerializerGetClass();
      swift_getObjCClassMetadata();
      v46 = [swift_getObjCClassFromMetadata() dataFromAvatarRecord_];
      v47 = sub_2146D8A58();

      sub_213FB54FC(v56, v48);
      sub_21432104C(v59);
      swift_unknownObjectRelease();
      (*(v49 + 8))(v12, v50);
      return v47;
    }
  }

  else
  {
    v24 = v6;
    v25 = *(v56 + 24);
    v26 = *(v56 + 32);
    v27 = *(v56 + 40);

    blastdoor_AVTAvatarPuppetRecordGetClass();
    if (v27)
    {
      swift_getObjCClassMetadata();
      v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v29 = sub_2146D9588();

      v30 = [v28 initWithPuppetName_];

      blastdoor_AVTAvatarRecordSerializerGetClass();
      swift_getObjCClassMetadata();
      v31 = [swift_getObjCClassFromMetadata() dataFromAvatarRecord_];
      v32 = sub_2146D8A58();
      swift_unknownObjectRelease();

      (*(v24 + 8))(v12, v50);
      return v32;
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t PosterArchive.bridgedToObjectiveC.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for PosterArchive();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v7 = sub_2143AE014();
  v9 = v8;
  v10 = sub_2146D8A38();
  sub_213FB54FC(v7, v9);
  return v10;
}

uint64_t sub_2143AE014()
{
  v173 = *MEMORY[0x277D85DE8];
  v0 = sub_2146D8858();
  v149 = *(v0 - 1);
  v150 = v0;
  v1 = *(v149 + 8);
  MEMORY[0x28223BE20](v0);
  v146 = v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2146D8958();
  v3 = *(v155 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v155);
  v138 = v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v139 = v136 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v144 = (v136 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v148 = v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v136 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v154 = v136 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v136 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v136 - v21;
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = [v24 temporaryDirectory];

  sub_2146D88E8();
  v147 = v23;
  v26 = [v23 defaultManager];
  v27 = sub_2146D8898();
  *&v159 = 0;
  v28 = [v26 URLForDirectory:99 inDomain:1 appropriateForURL:v27 create:1 error:&v159];

  v29 = v159;
  if (!v28)
  {
    v33 = v159;
    sub_2146D8838();

    swift_willThrow();
    v35 = *(v3 + 8);
    v34 = (v3 + 8);
    v35(v22, v155);
LABEL_37:
    v106 = *MEMORY[0x277D85DE8];
    return v34;
  }

  v153 = v3;
  sub_2146D88E8();
  v30 = v29;

  sub_214323660((v156 + 14), &v159);
  v151 = v20;
  v145 = v15;
  v141 = v22;
  if (v172 > 2u)
  {
    if (v172 == 3)
    {
      v31 = "tsUI.MonogramPosterExtension";
      v32 = 0xD000000000000030;
    }

    else if (v172 == 4)
    {
      sub_2143B9F60(&v159);
      v31 = "tPosterExtension";
      v32 = 0xD000000000000036;
    }

    else
    {
      v31 = "ster.GradientExtension";
      v32 = 0xD000000000000035;
    }
  }

  else if (v172)
  {
    if (v172 == 1)
    {
      sub_2143B9F60(&v159);
      v31 = "UIPrivate.PhotosPosterProvider";
      v32 = 0xD000000000000028;
    }

    else
    {
      sub_2143B9F60(&v159);
      v31 = "UI.AvatarPosterExtension";
      v32 = 0xD00000000000002CLL;
    }
  }

  else
  {
    sub_2143B9F60(&v159);
    v31 = "latn";
    v32 = 0xD00000000000002ELL;
  }

  *&v159 = v32;
  *(&v159 + 1) = v31 | 0x8000000000000000;
  v36 = *MEMORY[0x277CC91C0];
  v38 = v149;
  v37 = v150;
  v152 = *(v149 + 13);
  v39 = v146;
  (v152)(v146, v36, v150);
  v143 = sub_214069AD8();
  sub_2146D8948();
  v142 = *(v38 + 1);
  (v142)(v39, v37);

  strcpy(&v159, "configurations");
  HIBYTE(v159) = -18;
  LODWORD(v149) = *MEMORY[0x277CC91D8];
  v152(v39);
  v40 = v148;
  sub_2146D8948();
  v41 = v142;
  (v142)(v39, v37);
  v42 = type metadata accessor for PosterArchive();
  v136[1] = *(v42 + 24);
  v137 = v42;
  *&v159 = sub_2146D8B28();
  *(&v159 + 1) = v43;
  (v152)(v39, v149, v37);
  v44 = v145;
  sub_2146D8948();
  (v41)(v39, v37);

  v45 = v153 + 2;
  v46 = *(v153 + 1);
  v47 = v155;
  (v46)(v40, v155);
  v48 = [v147 defaultManager];
  v49 = sub_2146D8898();
  *&v159 = 0;
  v34 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v159];

  v50 = v159;
  if (!v34)
  {
    v54 = v159;
    sub_2146D8838();

    swift_willThrow();
    (v46)(v44, v47);
    (v46)(v154, v47);
    (v46)(v151, v47);
    (v46)(v141, v47);
    goto LABEL_37;
  }

  sub_214323660((v156 + 14), &v159);
  v149 = v45;
  v152 = v46;
  if (v172 <= 2u)
  {
    v51 = v144;
    v52 = v153;
LABEL_17:
    v53 = v50;
    sub_2143B9F60(&v159);
    goto LABEL_21;
  }

  v51 = v144;
  v52 = v153;
  if (v172 == 4)
  {
    goto LABEL_17;
  }

  v55 = v50;
LABEL_21:
  v56 = sub_2146D9588();

  v57 = v156;
  v58 = sub_2146D8B38();
  v59 = *(v57 + v137[7]);
  v60 = *(v57 + v137[8]);
  v61 = *(v57 + v137[9]);
  v62 = objc_opt_self();
  v63 = [v62 configurationIdentityWithProvider:v56 identifier:0 posterUUID:v58 version:v59 supplement:v60 role:v61];

  v64 = v154;
  v65 = sub_2146D8898();
  v66 = [v62 serverPathWithProviderURL:v65 identity:v63];

  v147 = v62;
  v150 = v66;
  v67 = [v62 configurationWithPath:v66];
  if (qword_27C902F58 != -1)
  {
    swift_once();
  }

  v68 = sub_2146D9208();
  v69 = __swift_project_value_buffer(v68, qword_27C904728);
  v70 = v51;
  v71 = v51;
  v72 = v155;
  v143 = *(v52 + 2);
  v143(v71, v64, v155);
  v73 = v63;
  v144 = v69;
  v74 = sub_2146D91E8();
  v75 = sub_2146D9BC8();

  v76 = os_log_type_enabled(v74, v75);
  v148 = v67;
  v153 = v52 + 4;
  v146 = v73;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = v70;
    v79 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v159 = v142;
    *v77 = 136315394;
    sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260]);
    v80 = sub_2146DA428();
    v82 = v81;
    (v152)(v78, v155);
    v83 = sub_2144AEA38(v80, v82, &v159);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2112;
    *(v77 + 14) = v73;
    *v79 = v73;
    v84 = v73;
    _os_log_impl(&dword_213FAF000, v74, v75, "Creating data from poster archive using provider URL: %s identity: %@", v77, 0x16u);
    sub_213FB2DF4(v79, &qword_27C9041E0, &qword_214736EF0);
    v72 = v155;
    MEMORY[0x216056AC0](v79, -1, -1);
    v85 = v142;
    __swift_destroy_boxed_opaque_existential_1(v142);
    v86 = v154;
    MEMORY[0x216056AC0](v85, -1, -1);
    MEMORY[0x216056AC0](v77, -1, -1);

    v87 = v156;
  }

  else
  {

    (v152)(v70, v72);
    v87 = v156;
    v86 = v154;
  }

  v88 = v87[11];
  v169 = v87[10];
  v170 = v88;
  v171[0] = v87[12];
  *(v171 + 9) = *(v87 + 201);
  v89 = v87[7];
  v165 = v87[6];
  v166 = v89;
  v90 = v87[9];
  v167 = v87[8];
  v168 = v90;
  v91 = v87[3];
  v161 = v87[2];
  v162 = v91;
  v92 = v87[5];
  v163 = v87[4];
  v164 = v92;
  v93 = v87[1];
  v159 = *v87;
  v160 = v93;
  v94 = *(v87 + 217);
  v95 = sub_2143B9F00(&v159);
  v96 = v150;
  v97 = v147;
  if (v95 == 1)
  {
    v98 = 0;
  }

  else
  {
    v157[10] = v169;
    v157[11] = v170;
    v158[0] = v171[0];
    *(v158 + 9) = *(v171 + 9);
    v157[6] = v165;
    v157[7] = v166;
    v157[8] = v167;
    v157[9] = v168;
    v157[2] = v161;
    v157[3] = v162;
    v157[4] = v163;
    v157[5] = v164;
    v157[0] = v159;
    v157[1] = v160;
    v98 = sub_2143AF6CC();
  }

  if (v94 == 2)
  {
    v99 = 0;
  }

  else
  {
    v99 = [v97 renderingConfigurationWithDepthEffectDisabled:v94 & 1 motionEffectsDisabled:(v94 >> 8) & 1];
  }

  v100 = [v97 configuredPropertiesWithTitleStyleConfiguration:v98 renderingConfiguration:v99];

  *&v157[0] = 0;
  v101 = [v97 storeConfiguredPropertiesForPath:v96 configuredProperties:v100 error:v157];

  if (!v101)
  {
    v34 = v96;
    v104 = *&v157[0];
    sub_2146D8838();

    swift_willThrow();
    goto LABEL_36;
  }

  v102 = *&v157[0];
  v34 = v148;
  v103 = v140;
  sub_2143B7DF8(v148);
  if (v103)
  {

LABEL_36:
    v105 = v152;
    (v152)(v145, v72);
    v105(v86, v72);
    v105(v151, v72);
    v105(v141, v72);
    goto LABEL_37;
  }

  v108 = [v97 archiver];
  *&v157[0] = 0;
  v109 = [v108 archiveConfiguration:v34 error:v157];
  v110 = *&v157[0];
  if (!v109)
  {
    v114 = *&v157[0];
    sub_2146D8838();

    swift_willThrow();
    v115 = v152;
    (v152)(v145, v72);
    v115(v86, v72);
    v115(v151, v72);
    v115(v141, v72);
    goto LABEL_37;
  }

  v111 = v139;
  v112 = v109;
  sub_2146D88E8();
  v113 = v110;

  v34 = sub_2146D8978();
  v117 = v116;
  v143(v138, v111, v72);
  sub_21402D9F8(v34, v117);
  sub_21402D9F8(v34, v117);
  v118 = sub_2146D91E8();
  LODWORD(v156) = sub_2146D9BC8();
  if (!os_log_type_enabled(v118, v156))
  {
    sub_213FB54FC(v34, v117);

    sub_213FB54FC(v34, v117);
    v129 = v152;
    (v152)(v138, v72);
    v129(v111, v72);
    v129(v145, v72);
    v129(v86, v72);
    v129(v151, v72);
    v129(v141, v72);
    goto LABEL_37;
  }

  v147 = v118;
  v119 = swift_slowAlloc();
  v153 = v119;
  v144 = swift_slowAlloc();
  *&v157[0] = v144;
  *v119 = 136315394;
  sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260]);
  v120 = v138;
  v121 = sub_2146DA428();
  v123 = v122;
  (v152)(v120, v72);
  v124 = v121;
  v125 = v153;
  v126 = sub_2144AEA38(v124, v123, v157);

  *(v125 + 1) = v126;
  *(v125 + 6) = 2048;
  v127 = v117 >> 62;
  if ((v117 >> 62) > 1)
  {
    if (v127 != 2)
    {
      sub_213FB54FC(v34, v117);
      v128 = 0;
      goto LABEL_53;
    }

    v131 = v34[2];
    v130 = v34[3];
    sub_213FB54FC(v34, v117);
    v128 = v130 - v131;
    if (!__OFSUB__(v130, v131))
    {
      goto LABEL_53;
    }

    __break(1u);
  }

  else if (!v127)
  {
    sub_213FB54FC(v34, v117);
    v128 = BYTE6(v117);
LABEL_53:
    v132 = v155;
    goto LABEL_54;
  }

  result = sub_213FB54FC(v34, v117);
  LODWORD(v128) = HIDWORD(v34) - v34;
  v132 = v155;
  if (!__OFSUB__(HIDWORD(v34), v34))
  {
    v128 = v128;
LABEL_54:
    *(v125 + 14) = v128;
    sub_213FB54FC(v34, v117);
    v133 = v147;
    _os_log_impl(&dword_213FAF000, v147, v156, "Successfully re-archived poster configuration to URL: %s data: (%ld bytes)", v125, 0x16u);
    v134 = v144;
    __swift_destroy_boxed_opaque_existential_1(v144);
    MEMORY[0x216056AC0](v134, -1, -1);
    MEMORY[0x216056AC0](v125, -1, -1);

    v135 = v152;
    (v152)(v139, v132);
    v135(v145, v132);
    v135(v154, v132);
    v135(v151, v132);
    v135(v141, v132);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

CGColorRef sub_2143AF200()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v18 = [objc_opt_self() vibrantMaterialContentStyle];
    }

    else
    {
      v18 = [objc_opt_self() vibrantMonochromeContentStyle];
    }

    return v18;
  }

  v5 = *(v0 + 1);
  if (!*v0)
  {
    if (v5)
    {
      v6 = *(v0 + 2);
      if (v6 != 2)
      {
        v7 = *(v0 + 3);
        v8 = *(v5 + 16);
        if (!v8)
        {
LABEL_37:
          v36 = objc_opt_self();
          v37 = sub_2146D98E8();

          v38 = [v36 discreteColorsContentStyleForColors:v37 vibrant:v6 & 1 supportsVariation:(v6 >> 8) & 1 variation:v7];

          return v38;
        }

        v39 = *(v0 + 2);
        v44[0] = MEMORY[0x277D84F90];
        v9 = v44;
        sub_21409FD48(0, v8, 0);
        v10 = v44[0];
        if (qword_27C903248 != -1)
        {
          swift_once();
        }

        v11 = 0;
        v12 = qword_27C9179D8;
        v13 = (v5 + 48);
        while (v8 != v11)
        {
          if (v11 >= *(v5 + 16))
          {
            goto LABEL_41;
          }

          v14 = *v13;
          v40[0] = *(v13 - 1);
          v40[1] = v14;
          result = CGColorCreate(v12, v40);
          if (!result)
          {
            goto LABEL_44;
          }

          v9 = result;
          type metadata accessor for CGColor(0);
          v43 = v16;
          *&v42 = v9;
          v44[0] = v10;
          v1 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v1 >= v17 >> 1)
          {
            v9 = v44;
            sub_21409FD48((v17 > 1), v1 + 1, 1);
            v10 = v44[0];
          }

          ++v11;
          *(v10 + 16) = v1 + 1;
          sub_213FDC730(&v42, (v10 + 32 * v1 + 32));
          v13 += 2;
          if (v8 == v11)
          {
            v6 = v39;
            goto LABEL_37;
          }
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v1 = *(v0 + 5);
  if (!v1)
  {
    return 0;
  }

  v19 = v0[32];
  v7 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v8 = *(v5 + 16);
  if (!v8)
  {
LABEL_33:
    v28 = sub_2146D98E8();

    v29 = *(v1 + 16);
    if (v29)
    {
      *&v42 = MEMORY[0x277D84F90];
      sub_2146D9FB8();
      v30 = (v1 + 32);
      do
      {
        v31 = *v30++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        sub_2146D9F98();
        v32 = *(v42 + 16);
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        --v29;
      }

      while (v29);
    }

    v33 = objc_opt_self();
    sub_21404A8B8(0, &qword_280B2E360, 0x277CCABB0);
    v34 = sub_2146D98E8();

    v35 = [v33 gradientContentStyleForColors:v28 gradientType:v19 locations:v34 startPoint:v7 endPoint:{v2, v3, v4}];

    return v35;
  }

  v39 = v0[32];
  v44[0] = MEMORY[0x277D84F90];
  sub_21409FD48(0, v8, 0);
  v9 = v44[0];
  if (qword_27C903248 != -1)
  {
    goto LABEL_42;
  }

LABEL_22:
  v20 = 0;
  v21 = qword_27C9179D8;
  v22 = (v5 + 48);
  while (1)
  {
    if (v8 == v20)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v20 >= *(v5 + 16))
    {
      goto LABEL_39;
    }

    v23 = *v22;
    v41[0] = *(v22 - 1);
    v41[1] = v23;
    result = CGColorCreate(v21, v41);
    if (!result)
    {
      break;
    }

    v24 = result;
    type metadata accessor for CGColor(0);
    v43 = v25;
    *&v42 = v24;
    v44[0] = v9;
    v27 = v9[2];
    v26 = v9[3];
    if (v27 >= v26 >> 1)
    {
      sub_21409FD48((v26 > 1), v27 + 1, 1);
      v9 = v44[0];
    }

    ++v20;
    v9[2] = v27 + 1;
    sub_213FDC730(&v42, &v9[4 * v27 + 4]);
    v22 += 2;
    if (v8 == v20)
    {
      v19 = v39;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_2143AF6CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v23 = *(v1 + 17);
  v22 = *(v1 + 18);
  v6 = *(v1 + 10);
  v5 = *(v1 + 11);
  v7 = *(v1 + 160);
  v8 = v1[21];
  v20 = *(v1 + 176);
  v21 = *(v1 + 161);
  v10 = *(v1 + 25);
  v9 = *(v1 + 26);
  v11 = objc_opt_self();
  if (v4 == 2)
  {
    v12 = 0;
    if (v5 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    if (v7 <= 2)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter();
  v14 = sub_2146D9588();

  v12 = [v11 systemTimeFontConfigurationWithTimeFontIdentifier:v14 weight:v4 & 1 systemItem:v3];

  if (v5 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v24 = *(v1 + 6);
  v25 = *(v1 + 7);
  v26 = *(v1 + 8);
  v27 = *(v1 + 9);
  v13 = sub_2143AF200();
  if (v7 <= 2)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v7 != 3 && v7 != 4)
  {
    v15 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:
  v15 = sub_2146D9588();

  if (!v9)
  {
LABEL_10:
    v16 = 0;
LABEL_14:
    LOBYTE(v19) = v20;
    v17 = [v11 titleStyleConfigurationWithTimeFontConfiguration:v12 preferredTitleAlignment:v23 preferredTitleLayout:v22 titleContentStyle:v13 timeNumberingSystem:v15 userConfigured:v21 contentsLuminance:v8 alternateDateEnabled:v19 groupName:v16];
    swift_unknownObjectRelease();

    return v17;
  }

LABEL_12:
  if (v9 != 1)
  {

    v16 = sub_2146D9588();
    sub_213FDC6D0(v10, v9);
    goto LABEL_14;
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2143AF930@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2143AF98C()
{
  v1 = 0x616C50726F467369;
  v2 = 0x7365636166;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69676572;
  }

  if (*v0)
  {
    v1 = 0x736E6F69676572;
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

uint64_t sub_2143AFA18()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143AFAE0()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143AFB94()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143AFC58@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2143AF930(a1);
}

void sub_2143AFC64(uint64_t *a1@<X8>)
{
  v2 = 0xEF646E756F726779;
  v3 = 0x616C50726F467369;
  v4 = 0xE500000000000000;
  v5 = 0x7365636166;
  if (*v1 != 2)
  {
    v5 = 0x6E6F69676572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6F69676572;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_2143AFCE8()
{
  v43 = *(v0 + 8);
  v44 = *v0;
  v41 = *(v0 + 24);
  v42 = *(v0 + 16);
  v39 = *(v0 + 40);
  v40 = *(v0 + 32);
  v37 = *(v0 + 56);
  v38 = *(v0 + 48);
  v35 = *(v0 + 72);
  v36 = *(v0 + 64);
  v33 = *(v0 + 88);
  v34 = *(v0 + 80);
  v31 = *(v0 + 104);
  v32 = *(v0 + 96);
  v29 = *(v0 + 120);
  v30 = *(v0 + 112);
  v27 = *(v0 + 128);
  v25 = *(v0 + 136);
  v1 = *(v0 + 145);
  v2 = *(v0 + 146);
  v3 = *(v0 + 147);
  v28 = *(v0 + 152);
  v26 = *(v0 + 160);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v11 = *(MEMORY[0x277CBF398] + 24);
  if (*(v0 + 144) == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2146D9588();
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D3B4B0]) initWithImageSize:v12 deviceResolution:v1 parallaxPadding:v2 visibleFrame:v3 adaptiveVisibleFrame:0 inactiveFrame:v44 adaptiveInactiveTopFrame:v43 spatialVisibleFrame:v42 spatialAdaptiveFrame:v41 timeFrame:v40 adaptiveTimeFrame:v39 salientContentFrame:v38 clockLayerOrder:v37 clockIntersection:v36 layoutVariant:v35 hasTopEdgeContact:v9 maxClockShift:v8 debugLayouts:{v10, v11, v34, v33, v32, v31, v9, v8, v10, v11, v28, v26, v24, v23, v22, v21, v20, v19, v30, v29, v27, v25, v18, v17, v16, v15, v5, v4, v6, v7, 0}];

  return v13;
}

void sub_2143AFF20(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (qword_27C902F58 != -1)
  {
    swift_once();
  }

  v6 = sub_2146D9208();
  __swift_project_value_buffer(v6, qword_27C904728);
  sub_2143B9FD0(a2, v33);
  sub_2143B9FD0(a2, v30);
  v7 = a1;
  v8 = sub_2146D91E8();
  v9 = sub_2146D9BC8();
  if (os_log_type_enabled(v8, v9))
  {
    v28 = a3;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 134218754;
    *(v10 + 4) = CVPixelBufferGetWidth(v7);
    *(v10 + 12) = 2048;
    *(v10 + 14) = CVPixelBufferGetHeight(v7);

    *(v10 + 22) = 2080;
    type metadata accessor for CGRect(0);
    v12 = sub_2146D9618();
    v14 = v13;
    sub_214310270(v33);
    v15 = sub_2144AEA38(v12, v14, &v29);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2080;
    v16 = v32;
    if (!v32)
    {
      goto LABEL_9;
    }

    v17 = v31;

    sub_214310270(v30);
    v18 = sub_2144AEA38(v17, v16, &v29);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_213FAF000, v8, v9, "Creating parallax image layer from image: (width: %ld, height: %ld) frame: %s identifier: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v11, -1, -1);
    MEMORY[0x216056AC0](v10, -1, -1);

    a3 = v28;
  }

  else
  {

    sub_214310270(v33);
    sub_214310270(v30);
  }

  if (*(a2 + 63))
  {
    v19 = *(a2 + 62);
    v21 = a2[58];
    v20 = a2[59];
    v23 = a2[56];
    v22 = a2[57];
    v24 = a2[55];
    v25 = objc_allocWithZone(MEMORY[0x277D3B460]);

    v26 = sub_2146D9588();

    v27 = [v25 initWithImage:v7 frame:v26 zPosition:v24 identifier:{v23, v22, v21, v20}];

    *a3 = v27;
    return;
  }

LABEL_9:
  sub_2146DA018();
  __break(1u);
}

void sub_2143B024C(uint64_t a1)
{
  v3 = v2;
  v83[65] = *MEMORY[0x277D85DE8];
  v5 = sub_2146D8958();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *v1;
  memcpy(v63, v1 + 1, sizeof(v63));
  v10 = *(v1 + 288);
  v51 = *(v1 + 289);
  v52 = v10;
  v11 = *(v1 + 37);
  v12 = *(v1 + 304);
  v49 = *(v1 + 305);
  v50 = v12;
  if (qword_27C902F58 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v13 = sub_2146D9208();
    __swift_project_value_buffer(v13, qword_27C904728);
    v14 = *(v6 + 16);
    v53 = a1;
    v14(v9, a1, v5);
    v15 = sub_2146D91E8();
    v16 = sub_2146D9BC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v57 = v17;
      v58 = swift_slowAlloc();
      v83[0] = v58;
      *v17 = 136315138;
      sub_2143B9F18(&qword_27C912630, MEMORY[0x277CC9260]);
      v18 = sub_2146DA428();
      v20 = v19;
      (*(v6 + 8))(v9, v5);
      v21 = sub_2144AEA38(v18, v20, v83);

      v22 = v57;
      *(v57 + 4) = v21;
      v23 = v22;
      _os_log_impl(&dword_213FAF000, v15, v16, "Saving unpacked layer stack to wallpaper URL: %s", v22, 0xCu);
      v24 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x216056AC0](v24, -1, -1);
      MEMORY[0x216056AC0](v23, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v9 = v55;
    a1 = *(v55 + 2);
    v6 = MEMORY[0x277D84F90];
    if (!a1)
    {
      break;
    }

    v5 = v81;
    v62 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v25 = 0;
    v26 = (v9 + 32);
    v54 = a1;
    while (v25 < *(v9 + 2))
    {
      v58 = v3;
      v56 = v26;
      sub_2143B9FD0(v26, v83);
      sub_213FB2E54(v83, &v65, &qword_27C904858, &qword_214736F00);
      if (!*(&v66 + 1))
      {
        __break(1u);
      }

      v81[12] = v77;
      v81[13] = v78;
      v81[14] = v79;
      v82 = v80;
      v81[8] = v73;
      v81[9] = v74;
      v81[10] = v75;
      v81[11] = v76;
      v81[4] = v69;
      v81[5] = v70;
      v81[6] = v71;
      v81[7] = v72;
      v81[0] = v65;
      v81[1] = v66;
      v81[2] = v67;
      v81[3] = v68;
      sub_214053840(v81, &v65);
      sub_21406D2CC(v81);
      v28 = *(&v66 + 1);
      v27 = v67;
      v29 = __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
      v57 = &v48;
      MEMORY[0x28223BE20](v29);
      *(&v48 - 2) = v83;
      v30 = *(v27 + 24);
      v31 = sub_21404A8B8(0, &qword_27C912648, 0x277D3B460);
      v32 = v58;
      v30(&v64, sub_2143BA02C, &v48 - 4, v31, v28, v27);
      v3 = v32;
      if (v32)
      {
        goto LABEL_16;
      }

      if (!v64)
      {
        v60 = 0xD000000000000066;
        v61 = 0x8000000214799830;
        MEMORY[0x2160545D0](58, 0xE100000000000000);
        v59 = 289;
        v43 = sub_2146DA428();
        MEMORY[0x2160545D0](v43);

        MEMORY[0x2160545D0](58, 0xE100000000000000);
        MEMORY[0x2160545D0](0x726579616CLL, 0xE500000000000000);
        v44 = v60;
        v45 = v61;
        sub_21404A6EC();
        swift_allocError();
        *v46 = 0xD00000000000002ELL;
        *(v46 + 8) = 0x80000002147998A0;
        strcpy((v46 + 16), "Expected Value");
        *(v46 + 31) = -18;
        *(v46 + 32) = v44;
        *(v46 + 40) = v45;
        swift_willThrow();
LABEL_16:
        __swift_destroy_boxed_opaque_existential_1(&v65);
        sub_214310270(v83);

        goto LABEL_17;
      }

      ++v25;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      sub_214310270(v83);
      sub_2146D9F98();
      v6 = *(v62 + 16);
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      v9 = v55;
      v26 = v56 + 520;
      a1 = v54;
      if (v54 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_12:
  v33 = sub_2143AFCE8();
  v34 = objc_allocWithZone(MEMORY[0x277D3B478]);
  sub_21404A8B8(0, &qword_27C912650, 0x277D3B470);
  v35 = sub_2146D98E8();

  v36 = [v34 initWithLayers:v35 layout:v33 depthEnabled:v52 parallaxDisabled:v51 clockAreaLuminance:v50 settlingEffectEnabled:v49 spatialPhotoEnabled:v11];

  v37 = [objc_allocWithZone(MEMORY[0x277D3B538]) initWithPortraitLayerStack:v36 landscapeLayerStack:0];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = sub_2146D8898();
  v83[0] = 0;
  LOBYTE(v38) = [v38 saveCompoundLayerStack:v39 toWallpaperURL:v40 error:v83];

  if (v38)
  {
    v41 = v83[0];
  }

  else
  {
    v42 = v83[0];
    sub_2146D8838();

    swift_willThrow();
  }

LABEL_17:
  v47 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2143B09C0()
{
  v1 = v0[4];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[11];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    v6 = v0[3];

    v5 = sub_2146D9588();
    sub_213FDC6D0(v6, v1);
  }

  else
  {
    v5 = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D3B4A0]) initWithAssetUUID_];

  if (v3)
  {

    v8 = sub_2146D9588();

    [v7 setSubpath_];

    [v7 setVersion_];
    return v7;
  }

LABEL_7:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_2143B0AF0(void *a1)
{
  v173 = *MEMORY[0x277D85DE8];
  v3 = sub_2146D8858();
  v127 = *(v3 - 8);
  v128 = v3;
  v4 = *(v127 + 64);
  MEMORY[0x28223BE20](v3);
  v126 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2146D8958();
  v130 = *(v6 - 8);
  v131 = v6;
  v7 = *(v130 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v136 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v119 - v10;
  v12 = *v1;
  DWORD2(v125) = v1[1];
  v13 = *(v1 + 4);
  v146[0] = *(v1 + 3);
  v146[1] = v13;
  v14 = *(v1 + 6);
  v146[2] = *(v1 + 5);
  v146[3] = v14;
  v16 = *(v1 + 14);
  v15 = *(v1 + 15);
  v146[5] = *(v1 + 8);
  memcpy(v140, v1 + 144, 0x132uLL);
  v17 = *(v1 + 632);
  v169 = *(v1 + 616);
  v170 = v17;
  v171 = *(v1 + 648);
  v172 = *(v1 + 332);
  v18 = *(v1 + 568);
  v165 = *(v1 + 552);
  v166 = v18;
  v19 = *(v1 + 600);
  v167 = *(v1 + 584);
  v168 = v19;
  v20 = *(v1 + 504);
  v161 = *(v1 + 488);
  v162 = v20;
  v21 = *(v1 + 536);
  v163 = *(v1 + 520);
  v164 = v21;
  v22 = *(v1 + 472);
  v159 = *(v1 + 456);
  v160 = v22;
  v134 = v1[666];
  v23 = *(v1 + 86);
  v123 = a1;
  v124 = v23;
  v135 = *(v1 + 87);
  v122 = v1[705];
  v24 = *(v1 + 90);
  v132 = *(v1 + 89);
  v133 = v24;
  v25 = [a1 assetDirectory];
  v137 = v11;
  sub_2146D88E8();

  v26 = [objc_allocWithZone(MEMORY[0x277D3B490]) initWithConfigurationType_];
  v27 = v26;
  v28 = 32;
  if (!v12)
  {
    v28 = 0;
  }

  if (DWORD2(v125))
  {
    v29 = v28 | 0x10;
  }

  else
  {
    v29 = v28;
  }

  [v26 setOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  *&v125 = v16;
  *(&v125 + 1) = v15;
  *&v146[4] = v16;
  *(&v146[4] + 1) = v15;
  *(v30 + 32) = sub_2143B09C0();
  sub_21404A8B8(0, &qword_27C912638, 0x277D3B4A0);
  v31 = sub_2146D98E8();

  [v27 setMedia_];

  v156 = v169;
  v157[0] = v170;
  v157[1] = v171;
  v158 = v172;
  v152 = v165;
  v153 = v166;
  v154 = v167;
  v155 = v168;
  v149 = v161;
  v150[0] = v162;
  v150[1] = v163;
  v151 = v164;
  v147 = v159;
  v148 = v160;
  v32 = 0;
  if (sub_2143B9FB4(&v147) != 1)
  {
    v33 = *(&v147 + 1);
    *&v121 = v147;
    v34 = v148;
    v35 = v149;
    v36 = *v150;
    v37 = *(&v150[1] + 1);
    v119 = v151;
    v120 = *(v150 + 8);
    v38 = v152;
    v39 = objc_allocWithZone(MEMORY[0x277D3B488]);
    v40 = [v39 initWithScreenSize:v121 screenScale:v33 timeRect:v34 inactiveTimeRect:v35 parallaxPadding:{v36, v120, v37, v119, v38}];
    if (v158)
    {
      v41 = 0;
    }

    else
    {
      v42 = *(&v157[1] + 1);
      v119 = v156;
      v120 = *(v157 + 8);
      v43 = *&v157[0];
      v121 = *(&v155 + 1);
      v44 = *&v155;
      v45 = *(&v154 + 1);
      v46 = *&v154;
      v47 = *(&v153 + 1);
      v48 = *&v153;
      v49 = *(&v152 + 1);
      v50 = objc_allocWithZone(MEMORY[0x277D3B488]);
      v41 = [v50 initWithScreenSize:v49 screenScale:v48 timeRect:v47 inactiveTimeRect:v46 parallaxPadding:{v45, v44, v121, v119, *(&v119 + 1), v43, v120, *(&v120 + 1), v42}];
    }

    v32 = [objc_allocWithZone(MEMORY[0x277D3B530]) initWithPortraitConfiguration:v40 landscapeConfiguration:v41];
  }

  [v27 setLayoutConfiguration_];

  sub_214045DA4(MEMORY[0x277D84F90]);
  v51 = sub_2146D9468();

  [v27 setUserInfo_];

  v52 = &off_27817C000;
  v54 = v136;
  v53 = v137;
  v55 = v135;
  if (v134 != 2)
  {
    v56 = [v27 userInfo];
    if (v56)
    {
      v57 = v56;
      v58 = sub_2146D9488();

      v59 = *MEMORY[0x277D3B590];
      *&v145[0] = sub_2146D95B8();
      *(&v145[0] + 1) = v60;
      sub_2146D9E98();
      *(&v145[1] + 1) = MEMORY[0x277D839B0];
      LOBYTE(v145[0]) = v134 & 1;
      sub_213FDC730(v145, &v143);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v141 = v58;
      sub_2140528AC(&v143, v146, isUniquelyReferenced_nonNull_native);
      sub_21408DE3C(v146);
      if (v141)
      {
        v62 = sub_2146D9468();
      }

      else
      {
        v62 = 0;
      }

      [v27 setUserInfo_];

      v52 = &off_27817C000;
      v55 = v135;
      if (!v135)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    [v27 setUserInfo_];
  }

  if (!v55)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (v55 == 1)
  {
    goto LABEL_78;
  }

  v63 = [v27 userInfo];
  if (v63)
  {
    v64 = v63;
    v65 = sub_2146D9488();

    v66 = *MEMORY[0x277D3B588];
    *&v145[0] = sub_2146D95B8();
    *(&v145[0] + 1) = v67;
    v68 = MEMORY[0x277D837D0];
    sub_2146D9E98();
    *(&v145[1] + 1) = v68;
    *&v145[0] = v124;
    *(&v145[0] + 1) = v55;
    sub_213FDC730(v145, &v143);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *&v141 = v65;
    sub_2140528AC(&v143, v146, v69);
    sub_21408DE3C(v146);
    if (v141)
    {
      v70 = sub_2146D9468();
    }

    else
    {
      v70 = 0;
    }

    [v27 setUserInfo_];

    v52 = &off_27817C000;
    v54 = v136;
    v53 = v137;
  }

  else
  {
    sub_213FDC6D0(v124, v55);
    [v27 setUserInfo_];
  }

LABEL_27:
  if (!v132)
  {
    goto LABEL_46;
  }

  v71 = sub_2140463E0(MEMORY[0x277D84F90]);
  v72 = [v27 userInfo];
  if (v72)
  {
    v73 = v72;
    v74 = sub_2146D9488();

    *&v143 = 0x736E6F69676572;
    *(&v143 + 1) = 0xE700000000000000;
    sub_2146D9E98();
    if (*(v74 + 16) && (v75 = sub_21408C378(v146), (v76 & 1) != 0))
    {
      sub_2140537E4(*(v74 + 56) + 32 * v75, &v143);
    }

    else
    {
      v143 = 0u;
      v144 = 0u;
    }

    v52 = &off_27817C000;
    v141 = v143;
    v142 = v144;
    if (*(&v144 + 1))
    {

      sub_21408DE3C(v146);
      sub_213FDC730(&v141, v145);
    }

    else
    {
      *(&v145[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
      *&v145[0] = v71;

      sub_21408DE3C(v146);
      sub_213FB2DF4(&v141, &qword_27C913170, &qword_2146EAB20);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
    if (swift_dynamicCast())
    {
      if (*&v146[0])
      {
        v77 = *(v132 + 16);
        v78 = MEMORY[0x277D84F90];
        if (v77)
        {
          *&v145[0] = MEMORY[0x277D84F90];
          v79 = v132;
          sub_2146D9FB8();
          v80 = v79 + 56;
          do
          {
            CGRectCreateDictionaryRepresentation(*(v80 - 24));
            sub_2146D9F98();
            v81 = *(*&v145[0] + 16);
            sub_2146D9FC8();
            sub_2146D9FD8();
            sub_2146D9FA8();
            v80 += 32;
            --v77;
          }

          while (v77);
          v78 = *&v145[0];
          v53 = v137;
          v52 = &off_27817C000;
        }

        v82 = swift_isUniquelyReferenced_nonNull_native();
        *&v145[0] = *&v146[0];
        *&v146[0] = 0x8000000000000000;
        sub_214052EEC(v78, 0x7365636166, 0xE500000000000000, v82);
        *&v146[0] = *&v145[0];
      }

      goto LABEL_45;
    }
  }

  else
  {

    memset(v145, 0, 32);
    sub_213FB2DF4(v145, &qword_27C913170, &qword_2146EAB20);
  }

  *&v146[0] = 0;
LABEL_45:

LABEL_46:
  if (!v133)
  {
    goto LABEL_65;
  }

  v83 = sub_2140463E0(MEMORY[0x277D84F90]);
  v84 = [v27 v52[68]];
  if (v84)
  {
    v85 = v84;
    v86 = sub_2146D9488();

    *&v143 = 0x736E6F69676572;
    *(&v143 + 1) = 0xE700000000000000;
    sub_2146D9E98();
    if (*(v86 + 16) && (v87 = sub_21408C378(v146), (v88 & 1) != 0))
    {
      sub_2140537E4(*(v86 + 56) + 32 * v87, &v143);
    }

    else
    {
      v143 = 0u;
      v144 = 0u;
    }

    v141 = v143;
    v142 = v144;
    if (*(&v144 + 1))
    {

      sub_21408DE3C(v146);
      sub_213FDC730(&v141, v145);
    }

    else
    {
      *(&v145[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
      *&v145[0] = v83;

      sub_21408DE3C(v146);
      sub_213FB2DF4(&v141, &qword_27C913170, &qword_2146EAB20);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912640, &qword_214736EF8);
    if (swift_dynamicCast())
    {
      if (*&v146[0])
      {
        v89 = *(v133 + 16);
        v90 = MEMORY[0x277D84F90];
        if (v89)
        {
          *&v145[0] = MEMORY[0x277D84F90];
          v91 = v133;
          sub_2146D9FB8();
          v92 = v91 + 56;
          do
          {
            CGRectCreateDictionaryRepresentation(*(v92 - 24));
            sub_2146D9F98();
            v93 = *(*&v145[0] + 16);
            sub_2146D9FC8();
            sub_2146D9FD8();
            sub_2146D9FA8();
            v92 += 32;
            --v89;
          }

          while (v89);
          v90 = *&v145[0];
          v53 = v137;
        }

        v94 = swift_isUniquelyReferenced_nonNull_native();
        *&v145[0] = *&v146[0];
        *&v146[0] = 0x8000000000000000;
        sub_214052EEC(v90, 0x6E6F69676572, 0xE600000000000000, v94);
        *&v146[0] = *&v145[0];
      }

      goto LABEL_64;
    }
  }

  else
  {

    memset(v145, 0, 32);
    sub_213FB2DF4(v145, &qword_27C913170, &qword_2146EAB20);
  }

  *&v146[0] = 0;
LABEL_64:

LABEL_65:
  memcpy(v146, v140, 0x132uLL);
  if (*(&v125 + 1))
  {
    v143 = v125;
    v96 = v126;
    v95 = v127;
    v97 = v128;
    (*(v127 + 104))(v126, *MEMORY[0x277CC91D8], v128);
    sub_2142FC7E4(v140, v145);
    sub_214069AD8();

    sub_2146D8938();
    (*(v95 + 8))(v96, v97);

    v98 = v129;
    sub_2143B024C(v54);
    v100 = v130;
    v99 = v131;
    if (v98)
    {

      v101 = *(v100 + 8);
      v101(v54, v99);
      memcpy(v145, v146, 0x132uLL);
      sub_2142FC4F8(v145);
      v101(v53, v99);
LABEL_77:
      v118 = *MEMORY[0x277D85DE8];
      return;
    }

    v102 = v54;
    v103 = *(v130 + 8);
    v103(v102, v131);
    memcpy(v145, v146, 0x132uLL);
    sub_2142FC4F8(v145);
    v104 = sub_2146D8898();
    *&v143 = 0;
    v105 = [v27 saveToURL:v104 error:&v143];

    if (v105)
    {
      v106 = v143;
      v107 = sub_2140457C0(MEMORY[0x277D84F90]);
      v139 = v107;
      if (v122 == 2)
      {
        sub_2144AEF6C(0x616C50726F467369, 0xEF646E756F726779, &v143);
        sub_213FB2DF4(&v143, &qword_27C913170, &qword_2146EAB20);
        v108 = v139;
      }

      else
      {
        v111 = v107;
        *(&v144 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v143) = v122 & 1;
        sub_213FDC730(&v143, &v141);
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v138 = v111;
        sub_2140524DC(&v141, 0x616C50726F467369, 0xEF646E756F726779, v112);
        v108 = v138;
        v139 = v138;
      }

      v113 = [v123 _path];
      sub_214641CCC(v108);

      v114 = sub_2146D9468();

      *&v143 = 0;
      v115 = [v113 storeUserInfo:v114 error:&v143];

      if (v115)
      {
        v116 = v143;
        v103(v137, v99);

        goto LABEL_77;
      }

      v117 = v143;
      sub_2146D8838();

      swift_willThrow();
      v110 = v137;
    }

    else
    {
      v109 = v143;
      sub_2146D8838();

      swift_willThrow();
      v110 = v53;
    }

    v103(v110, v99);
    goto LABEL_77;
  }

LABEL_78:
  sub_2146DA018();
  __break(1u);
}

unint64_t sub_2143B1B9C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_2143B1BEC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2143B1C68()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_2143B1C9C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2143B1CF4()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2143B1D28(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_2143B1D80()
{
  v1 = 0x79646F42736168;
  v2 = 0x6D49726174617661;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_2143B1E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143B9A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143B1E38(uint64_t a1)
{
  v2 = sub_2143B81F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B1E74(uint64_t a1)
{
  v2 = sub_2143B81F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B1EB0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123E8, &qword_214735920);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v23 = *(v1 + 8);
  v10 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v10;
  v11 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B81F4();

  sub_2146DAA28();
  v21 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334);
  sub_2146DA388();
  if (v2)
  {
  }

  else
  {
    v13 = v19;
    v14 = v20;
    v15 = v18;

    LOBYTE(v21) = 1;
    sub_2146DA338();
    v21 = v14;
    v22 = v13;
    v24 = 2;
    sub_213FDCA18(v14, v13);
    sub_214061684();
    sub_2146DA308();
    sub_213FDC6BC(v21, v22);
    v21 = v15;
    v22 = v17;
    v24 = 3;
    sub_213FDCA18(v15, v17);
    sub_2146DA308();
    sub_213FDC6BC(v21, v22);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B215C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912408, &qword_214735930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B81F4();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FDC6BC(0, 0xF000000000000000);
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    v24 = 0;
    sub_2143B8248(&qword_27C912410, sub_2143112E0);
    sub_2146DA1C8();
    v20 = v21;
    LOBYTE(v21) = 1;
    v23 = sub_2146DA178();
    v24 = 2;
    sub_21406116C();
    sub_2146DA148();
    v12 = v21;
    v13 = v22;
    sub_213FDC6BC(0, 0xF000000000000000);
    v24 = 3;
    sub_2146DA148();
    (*(v6 + 8))(v9, v5);
    v14 = v23 & 1;
    v15 = v21;
    v16 = v22;
    sub_213FDC6BC(0, 0xF000000000000000);
    *a2 = v20;
    *(a2 + 8) = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;

    sub_213FDCA18(v12, v13);
    sub_213FDCA18(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_213FDC6BC(v12, v13);
    v17 = v15;
    v18 = v16;
  }

  return sub_213FDC6BC(v17, v18);
}

uint64_t sub_2143B24E4(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  if (*(v1 + 472))
  {
    v5 = *(v1 + 504);
    v4 = *(v1 + 512);
    v6 = *(v1 + 480);
    *&v74 = *(v1 + 472);
    *(&v74 + 1) = v6;
    v75 = *(v1 + 488);
    LOBYTE(v76) = v5;
    *(&v76 + 1) = v4;
    v7 = sub_2143AD5DC(a1);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E68F0;
  v11 = *(v1 + 8);
  *(v10 + 48) = *v1;
  *(v10 + 72) = v11;
  v12 = *(v1 + 24);
  *(v10 + 96) = *(v1 + 16);
  *(v10 + 32) = 6579570;
  *(v10 + 40) = 0xE300000000000000;
  *(v10 + 56) = 0x6E65657267;
  *(v10 + 64) = 0xE500000000000000;
  *(v10 + 80) = 1702194274;
  *(v10 + 88) = 0xE400000000000000;
  *(v10 + 104) = 0x6168706C61;
  *(v10 + 112) = 0xE500000000000000;
  *(v10 + 120) = v12;
  v13 = sub_2140464E4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = *(v1 + 520);
  sub_213FB2E54(v1 + 32, &v58, &qword_27C904858, &qword_214736F00);
  if (!*(&v59 + 1))
  {
    __break(1u);
  }

  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v73;
  v82 = v66;
  v83 = v67;
  v84 = v68;
  v85 = v69;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  v81 = v65;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v77 = v61;
  LOWORD(v57[0]) = 0;
  sub_2140615D0(v57);
  v53 = v57[8];
  v54 = v57[9];
  v55 = v57[10];
  v56 = v57[11];
  v49 = v57[4];
  v50 = v57[5];
  v51 = v57[6];
  v52 = v57[7];
  v45 = v57[0];
  v46 = v57[1];
  v47 = v57[2];
  v48 = v57[3];
  v15 = sub_21463C734(&v45);
  if (v2)
  {
    sub_21406D2CC(&v74);
    sub_213FDC6BC(v7, v9);
  }

  else
  {
    v17 = v15;
    v43 = a1;
    v44 = v16;
    sub_21406D2CC(&v74);
    v18 = sub_2146D87D8();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_213FDCA18(v7, v9);
    sub_2146D87C8();
    *&v45 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    sub_2143B8248(&qword_27C912400, sub_214311334);
    v21 = sub_2146D87B8();
    v41 = v24;
    v42 = v21;

    v25 = *(v18 + 48);
    v26 = *(v18 + 52);
    swift_allocObject();
    sub_2146D87C8();
    *&v45 = v13;
    BYTE8(v45) = v14;
    *&v46 = v17;
    *(&v46 + 1) = v44;
    *&v47 = v7;
    *(&v47 + 1) = v9;
    sub_2143BA048();
    v27 = sub_2146D87B8();
    v29 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912670, &qword_214736F18);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2146E6910;
    *(v30 + 32) = 0xD00000000000001ALL;
    *(v30 + 40) = 0x8000000214787660;
    *(v30 + 48) = v42;
    *(v30 + 56) = v41;
    *(v30 + 64) = 0xD000000000000012;
    *(v30 + 72) = 0x8000000214787680;
    *(v30 + 80) = v27;
    *(v30 + 88) = v29;
    sub_21402D9F8(v42, v41);
    v39 = v27;
    v40 = v29;
    sub_21402D9F8(v27, v29);
    v31 = sub_2140465E8(v30);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912678, &qword_214736F20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = [v43 _path];
    sub_214641F94(v31);

    v33 = sub_2146D9468();

    *&v45 = 0;
    v34 = v32;
    LOBYTE(v32) = [v32 storeUserInfo:v33 error:&v45];

    if (v32)
    {
      v35 = v45;
      sub_213FB54FC(v39, v40);
      sub_213FB54FC(v42, v41);

      sub_213FDC6BC(v17, v44);
      v36 = v7;
      v37 = v9;
    }

    else
    {
      v38 = v45;
      sub_2146D8838();

      swift_willThrow();
      sub_213FDC6BC(v7, v9);
      sub_213FB54FC(v42, v41);
      sub_213FB54FC(v39, v40);

      v36 = v17;
      v37 = v44;
    }

    sub_213FDC6BC(v36, v37);
    result = sub_213FDC6BC(v7, v9);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2143B2B18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "gions";
  }

  else
  {
    v5 = "backgroundColorDescription";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "backgroundColorDescription";
  }

  else
  {
    v8 = "gions";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2146DA6A8();
  }

  return v10 & 1;
}

uint64_t sub_2143B2BC4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B2C44()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143B2CB0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B2D58()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_2143B2DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143B9BE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143B2DE8(uint64_t a1)
{
  v2 = sub_2143B82CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B2E24(uint64_t a1)
{
  v2 = sub_2143B82CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B2E60(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912418, &qword_214735938);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B82CC();
  sub_2146DAA28();
  v15[15] = 0;
  sub_2146DA348();
  if (!v2)
  {
    v15[14] = 1;
    sub_2146DA348();
    v15[13] = 2;
    sub_2146DA348();
    v15[12] = 3;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B3034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912428, &qword_214735940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B82CC();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    sub_2146DA188();
    v12 = v11;
    v23 = 1;
    sub_2146DA188();
    v14 = v13;
    v22 = 2;
    sub_2146DA188();
    v17 = v16;
    v21 = 3;
    sub_2146DA188();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143B32E8(uint64_t a1)
{
  v2 = sub_2143B8320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B3324(uint64_t a1)
{
  v2 = sub_2143B8320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B3360(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912430, &qword_214735948);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8320();
  sub_2146DAA28();
  v16 = v10;
  v15 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v16 = v9;
    v15 = 1;
    sub_2146DA388();
    v16 = v11;
    v15 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B354C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912440, &qword_214735950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8320();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v17;
    v16 = 1;
    sub_2146DA1C8();
    v13 = v17;
    v16 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2143B37C8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2143B37D8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_2143B3868(uint64_t a1)
{
  v2 = sub_2143B8374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B38A4(uint64_t a1)
{
  v2 = sub_2143B8374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B38E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912448, &qword_214735958);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 3);
  v16 = v10;
  v12 = v1[5];
  v11 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8374();
  sub_2146DAA28();
  *&v17 = v9;
  v19 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = 1;
    sub_2143B83C8();
    sub_2146DA388();
    *&v17 = v12;
    v19 = 2;
    sub_2146DA388();
    *&v17 = v11;
    v19 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B3B04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912460, &qword_214735960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8374();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v18;
    v20 = 1;
    sub_2143B841C();
    sub_2146DA1C8();
    v16 = v19;
    v17 = v18;
    v20 = 2;
    sub_2146DA1C8();
    v13 = v18;
    v20 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    *a2 = v11;
    v15 = v17;
    *(a2 + 24) = v16;
    *(a2 + 8) = v15;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_2143B3DD0()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

__n128 sub_2143B3E00@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_2143B3E10(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_2143B3F30(uint64_t a1)
{
  v2 = sub_2143B8470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B3F6C(uint64_t a1)
{
  v2 = sub_2143B8470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B3FA8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912470, &qword_214735968);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 24);
  v20 = *(v1 + 40);
  v21 = v12;
  v14 = *(v1 + 7);
  v13 = *(v1 + 8);
  v16 = *(v1 + 9);
  v15 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8470();
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  sub_2146DA338();
  if (!v2)
  {
    *&v22 = v10;
    *(&v22 + 1) = v11;
    v24 = 1;
    type metadata accessor for CGPoint(0);
    sub_2143B9F18(&qword_27C9058D0, type metadata accessor for CGPoint);
    sub_2146DA388();
    v23 = v20;
    v22 = v21;
    v24 = 2;
    sub_2143B83C8();
    sub_2146DA388();
    *&v22 = v14;
    v24 = 3;
    sub_214311334();
    sub_2146DA388();
    *&v22 = v13;
    v24 = 4;
    sub_2146DA388();
    *&v22 = v16;
    v24 = 5;
    sub_2146DA388();
    *&v22 = v15;
    v24 = 6;
    sub_2146DA388();
    *&v22 = v17;
    v24 = 7;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B4300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912480, &qword_214735970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8470();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v11 = sub_2146DA178();
    type metadata accessor for CGPoint(0);
    v24 = 1;
    sub_2143B9F18(&qword_27C9058B8, type metadata accessor for CGPoint);
    sub_2146DA1C8();
    v12 = v22;
    v24 = 2;
    sub_2143B841C();
    sub_2146DA1C8();
    v20 = v22;
    v21 = v23;
    v24 = 3;
    sub_2143112E0();
    sub_2146DA1C8();
    v13 = v22;
    v24 = 4;
    sub_2146DA1C8();
    v14 = v22;
    v24 = 5;
    sub_2146DA1C8();
    v15 = v22;
    v24 = 6;
    sub_2146DA1C8();
    v17 = v22;
    v24 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v18 = v22;
    *a2 = v11 & 1;
    *(a2 + 8) = v12;
    v19 = v21;
    *(a2 + 24) = v20;
    *(a2 + 40) = v19;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
    *(a2 + 72) = v15;
    *(a2 + 80) = v17;
    *(a2 + 88) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143B473C(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

__n128 sub_2143B4788@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_2143B47A4(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 sub_2143B47E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 97);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_2143B4800(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_2143B4840(uint64_t a1)
{
  v2 = sub_2143B84C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B487C(uint64_t a1)
{
  v2 = sub_2143B84C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B48B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912488, &qword_214735978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = v3[3];
  v25 = v3[2];
  v26 = v10;
  v13 = v3[5];
  v23 = v3[4];
  v24 = v12;
  v22 = v13;
  v30 = *(v3 + 48);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B84C4();
  v15 = v5;
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v16 = v24;
    v17 = v25;
    v18 = v23;
    LOBYTE(v27) = 1;
    sub_2146DA368();
    *&v27 = v17;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912498, &qword_214735980);
    sub_2143B8614(&qword_27C9124A0, sub_2143B8518);
    sub_2146DA388();
    *&v27 = v16;
    *(&v27 + 1) = v18;
    *&v28 = v22;
    BYTE8(v28) = v30;
    v31 = 3;
    sub_2143B856C();
    sub_2146DA308();
    v19 = *(v3 + 9);
    v27 = *(v3 + 7);
    v28 = v19;
    v29[0] = *(v3 + 11);
    *(v29 + 9) = *(v3 + 97);
    v31 = 4;
    sub_2143B85C0();
    sub_2146DA308();
  }

  return (*(v6 + 8))(v9, v15);
}

uint64_t sub_2143B4B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9124C0, &qword_214735988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v65 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2143B84C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v12 = v6;
  LOBYTE(v45) = 0;
  v13 = v5;
  v14 = sub_2146DA1A8();
  LOBYTE(v45) = 1;
  v35 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912498, &qword_214735980);
  LOBYTE(v37) = 2;
  sub_2143B8614(&qword_27C9124C8, sub_2143B868C);
  sub_2146DA1C8();
  v15 = v45;
  LOBYTE(v37) = 3;
  sub_2143B86E0();
  sub_2146DA148();
  v32 = v46;
  v33 = v45;
  v34 = v47;
  v65 = v48;
  v66 = 4;
  sub_2143B8734();
  sub_2146DA148();
  (*(v12 + 8))(v9, v13);
  v30 = v61;
  v31 = v60;
  v27 = v62;
  v28 = *(&v61 + 1);
  v25 = v63;
  v26 = *(&v62 + 1);
  v24 = *(&v63 + 1);
  v16 = v35;
  *&v37 = v14;
  *(&v37 + 1) = v35;
  v17 = v32;
  v18 = v33;
  *&v38 = v15;
  *(&v38 + 1) = v33;
  *&v39 = v32;
  *(&v39 + 1) = v34;
  v29 = v65;
  LOBYTE(v40) = v65;
  *(&v40 + 1) = v60;
  v41 = v61;
  LOBYTE(v13) = v64;
  v42 = v62;
  v43 = v63;
  v44 = v64;
  *(a2 + 112) = v64;
  v19 = v37;
  v20 = v38;
  v21 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v21;
  *a2 = v19;
  *(a2 + 16) = v20;
  v22 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v22;
  *(a2 + 96) = v43;
  sub_2143B8788(&v37, &v45);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v45 = v14;
  v46 = v16;
  v47 = v15;
  v48 = v18;
  v49 = v17;
  v50 = v34;
  v51 = v29;
  v52 = v31;
  v53 = v30;
  v54 = v28;
  v55 = v27;
  v56 = v26;
  v57 = v25;
  v58 = v24;
  v59 = v13;
  return sub_2143B87C0(&v45);
}

uint64_t sub_2143B4F94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_213FB2E54(v11, v10, &qword_27C9124E8, &qword_214735990);
}

__n128 sub_2143B5014(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_213FB2DF4(v10, &qword_27C9124E8, &qword_214735990);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t sub_2143B50CC(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_2143B5120(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_2143B516C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_2143B519C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

unint64_t sub_2143B5224()
{
  v1 = *v0;
  v2 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2143B52CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143B9D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2143B52F4(uint64_t a1)
{
  v2 = sub_2143B87F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B5330(uint64_t a1)
{
  v2 = sub_2143B87F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B536C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9124F0, &qword_214735998);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = v1[5];
  v44 = v1[4];
  v45 = v8;
  v46 = v1[6];
  v47 = *(v1 + 112);
  v9 = v1[1];
  v40 = *v1;
  v41 = v9;
  v10 = v1[3];
  v42 = v1[2];
  v43 = v10;
  v11 = *(v1 + 15);
  v19 = *(v1 + 16);
  v20 = v11;
  v12 = *(v1 + 17);
  v17 = *(v1 + 18);
  v18 = v12;
  v16[3] = *(v1 + 152);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v40, &v32, &qword_27C9124E8, &qword_214735990);
  sub_2143B87F0();
  sub_2146DAA28();
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v31 = 0;
  sub_2143B8844();
  v14 = v48;
  sub_2146DA308();
  if (v14)
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    sub_213FB2DF4(&v23, &qword_27C9124E8, &qword_214735990);
  }

  else
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    sub_213FB2DF4(&v23, &qword_27C9124E8, &qword_214735990);
    v22 = v20;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    sub_2143B8248(&qword_27C912400, sub_214311334);
    sub_2146DA388();
    v22 = v19;
    v21 = 2;
    sub_2146DA388();
    LOBYTE(v22) = 3;
    sub_2146DA328();
    LOBYTE(v22) = 4;
    sub_2146DA2C8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2143B56E8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912508, &qword_2147359A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2143B87F0();
  sub_2146DAA08();
  if (v2)
  {
    v47 = v2;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    LODWORD(v42) = 0;
    v97 = 0;
    LODWORD(v41) = 0;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v61 = v51;
    v62 = v50;
    v63 = v49;
    v64 = v48;
    v65 = v46;
    v66 = v43;
    v67 = v44;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    result = sub_213FB2DF4(&v61, &qword_27C9124E8, &qword_214735990);
    if (v42)
    {
    }

    if (v97)
    {
    }

    if (v41)
    {
    }
  }

  else
  {
    v99 = 0;
    sub_2143B8898();
    sub_2146DA148();
    v42 = a2;
    v50 = v83;
    v51 = v82;
    v48 = v85;
    v49 = v84;
    v12 = v87;
    v46 = v86;
    v44 = v88;
    v36 = v90;
    v37 = v89;
    v34 = v92;
    v35 = v91;
    v32 = v94;
    v33 = v93;
    v31 = v95;
    HIDWORD(v30) = v96;
    memset(v81, 0, 113);
    sub_213FB2DF4(v81, &qword_27C9124E8, &qword_214735990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
    LOBYTE(v52) = 1;
    sub_2143B8248(&qword_27C912410, sub_2143112E0);
    sub_2146DA1C8();
    v43 = v12;
    v40 = v61;
    LOBYTE(v52) = 2;
    sub_2146DA1C8();
    v39 = v61;
    LOBYTE(v61) = 3;
    v13 = sub_2146DA168();
    v38 = v14;
    v98 = 4;
    v15 = sub_2146DA108();
    v47 = 0;
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    v18 = v50;
    v17 = v51;
    *&v52 = v51;
    *(&v52 + 1) = v50;
    v19 = v49;
    v20 = v13;
    v41 = v13;
    v21 = v48;
    *&v53 = v49;
    *(&v53 + 1) = v48;
    v22 = v46;
    *&v54 = v46;
    *(&v54 + 1) = v12;
    v23 = v44;
    *&v55 = v44;
    *(&v55 + 1) = v37;
    *&v56 = v36;
    *(&v56 + 1) = v35;
    *&v57 = v34;
    *(&v57 + 1) = v33;
    *&v58 = v32;
    *(&v58 + 1) = v31;
    LOBYTE(v59) = BYTE4(v30);
    *(&v59 + 1) = v40;
    *&v60[0] = v39;
    *(&v60[0] + 1) = v20;
    *&v60[1] = v38;
    BYTE8(v60[1]) = v16;
    v24 = v57;
    v25 = v42;
    v42[4] = v56;
    v25[5] = v24;
    v26 = v53;
    *v25 = v52;
    v25[1] = v26;
    *(v25 + 137) = *(v60 + 9);
    v27 = v60[0];
    v25[7] = v59;
    v25[8] = v27;
    v25[6] = v58;
    v28 = v55;
    v25[2] = v54;
    v25[3] = v28;
    sub_2143B88EC(&v52, &v61);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v61 = v17;
    v62 = v18;
    v63 = v19;
    v64 = v21;
    v65 = v22;
    v66 = v12;
    v67 = v23;
    v68 = v37;
    v69 = v36;
    v70 = v35;
    v71 = v34;
    v72 = v33;
    v73 = v32;
    v74 = v31;
    v75 = BYTE4(v30);
    v76 = v40;
    v77 = v39;
    v78 = v41;
    v79 = v38;
    v80 = v16;
    return sub_2143B8924(&v61);
  }

  return result;
}

uint64_t sub_2143B5CD8@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2143B5D40@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2143B5CD8(a1);
}

uint64_t sub_2143B5D4C(void *a1)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v82 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 48);
  v83 = *(v1 + 9);
  v85 = *(v1 + 7);
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[13];
  v12 = *(v1 + 112);
  v14 = v1[19];
  v13 = v1[20];
  v16 = v1[21];
  v15 = v1[22];
  v78 = v1[23];
  v79 = v1[24];
  v77 = *(v1 + 200);
  v17 = sub_2146D87D8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v80 = v17;
  swift_allocObject();
  sub_2146D87C8();
  sub_2146D8798();
  v66 = a1;
  if (v5)
  {
    if (v8)
    {
      v20 = 0;
    }

    else
    {
      v20 = v4;
    }

    if (v8)
    {
      v21 = 0;
    }

    else
    {
      v21 = v6;
    }

    if (v8)
    {
      v22 = 0;
    }

    else
    {
      v22 = v7;
    }

    v73 = v22;
    v74 = v21;
    if (v12)
    {
      v23 = 0uLL;
      v9 = 0;
      v24 = 1;
      v10 = 0;
      v11 = 0;
      v25 = 0uLL;
    }

    else
    {
      v24 = 0;
      v25 = v83;
      v23 = v85;
    }

    v72 = v24;
    v75 = v20;
    v76 = v3;
    v27 = *(v5 + 16);
    v26 = MEMORY[0x277D84F90];
    v84 = v25;
    v86 = v23;
    if (v27)
    {
      *&v89 = MEMORY[0x277D84F90];
      sub_21409FE4C(0, v27, 0);
      v28 = 0;
      v26 = v89;
      v29 = *(v89 + 16);
      v30 = 96 * v29;
      do
      {
        v31 = *(v5 + v28 + 32);
        v32 = *(v5 + v28 + 40);
        v33 = *(v5 + v28 + 56);
        v34 = *(v5 + v28 + 72);
        v35 = *(v5 + v28 + 88);
        v36 = *(v5 + v28 + 104);
        v37 = *(v5 + v28 + 120);
        *&v89 = v26;
        v38 = *(v26 + 24);
        v39 = v29 + 1;
        if (v29 >= v38 >> 1)
        {
          v68 = v33;
          v71 = v32;
          v67 = v34;
          v64 = v36;
          v65 = v35;
          sub_21409FE4C((v38 > 1), v29 + 1, 1);
          v36 = v64;
          v35 = v65;
          v34 = v67;
          v33 = v68;
          v32 = v71;
          v26 = v89;
        }

        *(v26 + 16) = v39;
        v40 = v26 + v30 + v28;
        *(v40 + 32) = v31;
        v41 = v87[0];
        *(v40 + 36) = *(v87 + 3);
        *(v40 + 33) = v41;
        *(v40 + 40) = v32;
        *(v40 + 56) = v33;
        *(v40 + 72) = v34;
        *(v40 + 88) = v35;
        *(v40 + 104) = v36;
        *(v40 + 120) = v37;
        v28 += 96;
        v29 = v39;
        --v27;
      }

      while (v27);
    }

    v70 = v8 & 1;
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v82 = 0;
    v26 = 0;
    v73 = 0;
    v74 = 0;
    v70 = 0;
    v72 = 0;
    v84 = 0u;
    v86 = 0u;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  v42 = swift_allocObject();
  *(v42 + 32) = 6579570;
  *(v42 + 16) = xmmword_2146E68F0;
  *(v42 + 40) = 0xE300000000000000;
  *(v42 + 48) = v14;
  *(v42 + 56) = 0x6E65657267;
  *(v42 + 64) = 0xE500000000000000;
  *(v42 + 72) = v13;
  *(v42 + 80) = 1702194274;
  *(v42 + 88) = 0xE400000000000000;
  *(v42 + 96) = v16;
  *(v42 + 104) = 0x6168706C61;
  *(v42 + 112) = 0xE500000000000000;
  *(v42 + 120) = v15;
  v69 = sub_2140464E4(v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v43 = swift_allocObject();
  *(v43 + 32) = 6579570;
  *(v43 + 16) = xmmword_2146E68F0;
  *(v43 + 40) = 0xE300000000000000;
  *(v43 + 48) = v14;
  *(v43 + 56) = 0x6E65657267;
  *(v43 + 64) = 0xE500000000000000;
  *(v43 + 72) = v13;
  *(v43 + 80) = 1702194274;
  *(v43 + 88) = 0xE400000000000000;
  *(v43 + 96) = v16;
  *(v43 + 104) = 0x6168706C61;
  *(v43 + 112) = 0xE500000000000000;
  *(v43 + 120) = v15;
  v44 = sub_2140464E4(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v89 = v76;
  *(&v89 + 1) = v82;
  *&v90 = v26;
  *(&v90 + 1) = v75;
  *&v91 = v74;
  *(&v91 + 1) = v73;
  v92[0] = v70;
  v92[7] = 0;
  *&v92[5] = 0;
  *&v92[1] = 0;
  *&v92[8] = v86;
  *&v92[24] = v84;
  *&v92[40] = v9;
  *&v93 = v10;
  *(&v93 + 1) = v11;
  LOBYTE(v94) = v72;
  *(&v94 + 1) = v69;
  *v95 = v44;
  *&v95[8] = v78;
  *&v95[16] = v79;
  v95[24] = v77;
  v45 = *(v80 + 48);
  v46 = *(v80 + 52);
  swift_allocObject();

  sub_2146D87C8();
  *&v87[0] = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334);
  v47 = sub_2146D87B8();
  if (v81)
  {

    sub_2143B8924(&v89);
  }

  else
  {
    v50 = v47;
    v51 = v48;

    v52 = *(v80 + 48);
    v53 = *(v80 + 52);
    swift_allocObject();
    sub_2146D87C8();
    v87[7] = v94;
    v88[0] = *v95;
    *(v88 + 9) = *&v95[9];
    v87[2] = v91;
    v87[3] = *v92;
    v87[4] = *&v92[16];
    v87[5] = *&v92[32];
    v87[6] = v93;
    v87[0] = v89;
    v87[1] = v90;
    sub_2143BA09C();
    v54 = sub_2146D87B8();
    v56 = v55;

    sub_2143B8924(&v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912670, &qword_214736F18);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2146E6910;
    *(v57 + 32) = 0xD00000000000001ALL;
    *(v57 + 40) = 0x8000000214787660;
    *(v57 + 48) = v50;
    *(v57 + 56) = v51;
    *(v57 + 64) = 0xD000000000000012;
    *(v57 + 72) = 0x8000000214787680;
    *(v57 + 80) = v54;
    *(v57 + 88) = v56;
    sub_21402D9F8(v50, v51);
    sub_21402D9F8(v54, v56);
    v58 = sub_2140465E8(v57);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912678, &qword_214736F20);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v59 = [v66 _path];
    sub_214641F94(v58);

    v60 = sub_2146D9468();

    *&v87[0] = 0;
    LOBYTE(v57) = [v59 storeUserInfo:v60 error:v87];

    if (v57)
    {
      v61 = *&v87[0];
    }

    else
    {
      v62 = *&v87[0];
      sub_2146D8838();

      swift_willThrow();
    }

    sub_213FB54FC(v50, v51);
    sub_213FB54FC(v54, v56);
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2143B652C(void *a1)
{
  v17[40] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912658, &qword_214736F08);
  inited = swift_initStackObject();
  *(inited + 32) = 6579570;
  *(inited + 16) = xmmword_2146E68F0;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v5;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v6;
  v9 = sub_2140464E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912660, &qword_214736F10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E6910;
  v11 = MEMORY[0x277D837D0];
  sub_2146D9E98();
  *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  *(v10 + 72) = v9;
  v17[1] = 0xE700000000000000;
  sub_2146D9E98();
  *(v10 + 168) = v11;
  *(v10 + 144) = (v7 << 48) + 0x31746573657270;
  *(v10 + 152) = 0xE700000000000000;
  sub_214045DA4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041B0, &unk_2146EAB10);
  swift_arrayDestroy();
  v12 = [a1 _path];
  v13 = sub_2146D9468();

  v17[0] = 0;
  LODWORD(a1) = [v12 storeUserInfo:v13 error:v17];

  if (a1)
  {
    result = v17[0];
  }

  else
  {
    v15 = v17[0];
    sub_2146D8838();

    result = swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2143B6824()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_2143B6884()
{
  if (*v0)
  {
    result = 0x6F6C6F4365736162;
  }

  else
  {
    result = 0x746E6169726176;
  }

  *v0;
  return result;
}

id sub_2143B68C4(void *a1)
{
  v32[15] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 40);
  v6 = *(v1 + 44);
  v7 = *(v1 + 64);
  v8 = *(v1 + 68);
  v9 = *(v1 + 88);
  v10 = *(v1 + 92);
  v11 = *(v1 + 112);
  v12 = *(v1 + 116);
  v13 = *(v1 + 136);
  v14 = *(v1 + 140);
  v15 = *(v1 + 160);
  v16 = *(v1 + 164);
  v17 = *(v1 + 184);
  v18 = *(v1 + 188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146E68E0;
  if (v4)
  {
    goto LABEL_13;
  }

  v20 = MEMORY[0x277D83A90];
  v21 = MEMORY[0x277D83B08];
  *(v19 + 56) = MEMORY[0x277D83A90];
  *(v19 + 64) = v21;
  *(v19 + 32) = v3;
  if (v6)
  {
    goto LABEL_13;
  }

  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 72) = v5;
  if (v8)
  {
    goto LABEL_13;
  }

  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  *(v19 + 112) = v7;
  if (v10)
  {
    goto LABEL_13;
  }

  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  *(v19 + 152) = v9;
  if (v12)
  {
    goto LABEL_13;
  }

  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v11;
  if (v14 & 1) != 0 || (*(v19 + 256) = v20, *(v19 + 264) = v21, *(v19 + 232) = v13, (v16) || (*(v19 + 296) = v20, *(v19 + 304) = v21, *(v19 + 272) = v15, (v18))
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(v19 + 336) = v20;
    *(v19 + 344) = v21;
    *(v19 + 312) = v17;
    v22 = sub_2146D95D8();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    v32[1] = 0xE600000000000000;
    v26 = MEMORY[0x277D837D0];
    sub_2146D9E98();
    *(inited + 96) = v26;
    *(inited + 72) = v22;
    *(inited + 80) = v24;
    sub_214045DA4(inited);
    swift_setDeallocating();
    sub_213FB2DF4(inited + 32, &qword_27C9041B0, &unk_2146EAB10);
    v27 = [a1 _path];
    v28 = sub_2146D9468();

    v32[0] = 0;
    LODWORD(inited) = [v27 storeUserInfo:v28 error:v32];

    if (inited)
    {
      result = v32[0];
    }

    else
    {
      v31 = v32[0];
      sub_2146D8838();

      result = swift_willThrow();
    }

    v30 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2143B6C14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F6C6F4365736162;
  }

  else
  {
    v4 = 0x746E6169726176;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000072;
  }

  if (*a2)
  {
    v6 = 0x6F6C6F4365736162;
  }

  else
  {
    v6 = 0x746E6169726176;
  }

  if (*a2)
  {
    v7 = 0xE900000000000072;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2143B6CC0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B6D48()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143B6DBC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143B6E4C(uint64_t *a1@<X8>)
{
  v2 = 0x746E6169726176;
  if (*v1)
  {
    v2 = 0x6F6C6F4365736162;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2143B6E98(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2143B6EE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_2143B6F14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_2143B6F6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2143B6F78(uint64_t a1)
{
  v2 = sub_2143B8954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2143B6FB4(uint64_t a1)
{
  v2 = sub_2143B8954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2143B6FF0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912518, &qword_2147359A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[1] = v1[2];
  v13[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8954();

  sub_2146DAA28();
  v16 = v10;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  sub_2143B8248(&qword_27C912400, sub_214311334);
  sub_2146DA388();

  if (!v2)
  {
    v14 = 1;
    sub_2146DA328();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2143B71D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912528, &qword_2147359B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143B8954();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9123F8, &qword_214735928);
  v16[15] = 0;
  sub_2143B8248(&qword_27C912410, sub_2143112E0);
  sub_2146DA1C8();
  v11 = v17;
  v16[14] = 1;
  v12 = sub_2146DA168();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2143B7464@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2143B74C0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B7568()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143B75FC()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B76A0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2143B7464(a1);
}

uint64_t sub_2143B76AC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2146DA098();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2143B7704()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143B7768()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2143B77B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2146DA098();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2143B782C()
{
  if (*v0)
  {
    result = 0x6F436D6F74737563;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_2143B7874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F436D6F74737563;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xEB00000000726F6CLL;
  }

  if (*a2)
  {
    v6 = 0x6F436D6F74737563;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726F6CLL;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2143B7928()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2143B79B8()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2143B7A34()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2143B7ACC(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x6F436D6F74737563;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB00000000726F6CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_2143B7B18(void *a1)
{
  v31[18] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v7 = *(v1 + 3);
  v6 = *(v1 + 4);
  v8 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912688, &qword_214736F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  v31[0] = 0x696669746E656469;
  v31[1] = 0xEA00000000007265;
  v10 = MEMORY[0x277D837D0];
  sub_2146D9E98();
  LOBYTE(v31[0]) = v3;
  v11 = DynamicPoster.DynamicPosterType.rawValue.getter();
  *(inited + 96) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = sub_214045DA4(inited);
  swift_setDeallocating();
  sub_213FB2DF4(inited + 32, &qword_27C9041B0, &unk_2146EAB10);
  if ((v8 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2146E68F0;
    v15 = MEMORY[0x277D839F8];
    v16 = MEMORY[0x277D83A80];
    *(v14 + 56) = MEMORY[0x277D839F8];
    *(v14 + 64) = v16;
    *(v14 + 32) = v5;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = v4;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = v7;
    *(v14 + 176) = v15;
    *(v14 + 184) = v16;
    *(v14 + 152) = v6;
    v17 = sub_2146D95D8();
    v19 = v18;
    sub_2146D9E98();
    v30 = v10;
    *&v29 = v17;
    *(&v29 + 1) = v19;
    sub_213FDC730(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13;
    sub_2140528AC(v28, v31, isUniquelyReferenced_nonNull_native);
    sub_21408DE3C(v31);
  }

  v21 = [a1 _path];
  v22 = sub_2146D9468();

  v31[0] = 0;
  v23 = [v21 storeUserInfo:v22 error:v31];

  if (v23)
  {
    result = v31[0];
  }

  else
  {
    v25 = v31[0];
    sub_2146D8838();

    result = swift_willThrow();
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2143B7DF8(void *a1)
{
  sub_214323660(v1, __src);
  if (v7 > 2u)
  {
    if (v7 == 3)
    {
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      LOBYTE(__dst[2]) = __src[32];
      return sub_2143B652C(a1);
    }

    else if (v7 == 4)
    {
      __dst[8] = *&__src[128];
      __dst[9] = *&__src[144];
      __dst[10] = *&__src[160];
      *(&__dst[10] + 14) = *&__src[174];
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[6] = *&__src[96];
      __dst[7] = *&__src[112];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      v4[8] = *&__src[128];
      v4[9] = *&__src[144];
      v4[10] = *&__src[160];
      *(&v4[10] + 14) = *&__src[174];
      v4[4] = *&__src[64];
      v4[5] = *&__src[80];
      v4[6] = *&__src[96];
      v4[7] = *&__src[112];
      v4[0] = *__src;
      v4[1] = *&__src[16];
      v4[2] = *&__src[32];
      v4[3] = *&__src[48];
      sub_2143B68C4(a1);
      return sub_2142FD404(__dst);
    }

    else
    {
      return sub_2143B7B18(a1);
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      memcpy(__dst, __src, 0x209uLL);
      sub_2143B24E4(a1);
      return sub_2143238B4(__dst);
    }

    else
    {
      __dst[10] = *&__src[160];
      __dst[11] = *&__src[176];
      *(&__dst[11] + 9) = *&__src[185];
      __dst[6] = *&__src[96];
      __dst[7] = *&__src[112];
      __dst[8] = *&__src[128];
      __dst[9] = *&__src[144];
      __dst[2] = *&__src[32];
      __dst[3] = *&__src[48];
      __dst[4] = *&__src[64];
      __dst[5] = *&__src[80];
      __dst[0] = *__src;
      __dst[1] = *&__src[16];
      v4[10] = *&__src[160];
      v4[11] = *&__src[176];
      *(&v4[11] + 9) = *&__src[185];
      v4[6] = *&__src[96];
      v4[7] = *&__src[112];
      v4[8] = *&__src[128];
      v4[9] = *&__src[144];
      v4[2] = *&__src[32];
      v4[3] = *&__src[48];
      v4[4] = *&__src[64];
      v4[5] = *&__src[80];
      v4[0] = *__src;
      v4[1] = *&__src[16];
      sub_2143B5D4C(a1);
      return sub_21432380C(__dst);
    }
  }

  else
  {
    memcpy(__dst, __src, 0x2D8uLL);
    memcpy(v4, __src, 0x2D8uLL);
    sub_2143B0AF0(a1);
    return sub_2142FC228(__dst);
  }
}

uint64_t sub_2143B80D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterArchive();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2143B8134(uint64_t a1)
{
  v2 = type metadata accessor for PosterArchive();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2143B8190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterArchive();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2143B81F4()
{
  result = qword_27C9123F0;
  if (!qword_27C9123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9123F0);
  }

  return result;
}

uint64_t sub_2143B8248(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9123F8, &qword_214735928);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143B82CC()
{
  result = qword_27C912420;
  if (!qword_27C912420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912420);
  }

  return result;
}

unint64_t sub_2143B8320()
{
  result = qword_27C912438;
  if (!qword_27C912438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912438);
  }

  return result;
}

unint64_t sub_2143B8374()
{
  result = qword_27C912450;
  if (!qword_27C912450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912450);
  }

  return result;
}

unint64_t sub_2143B83C8()
{
  result = qword_27C912458;
  if (!qword_27C912458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912458);
  }

  return result;
}

unint64_t sub_2143B841C()
{
  result = qword_27C912468;
  if (!qword_27C912468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912468);
  }

  return result;
}

unint64_t sub_2143B8470()
{
  result = qword_27C912478;
  if (!qword_27C912478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912478);
  }

  return result;
}

unint64_t sub_2143B84C4()
{
  result = qword_27C912490;
  if (!qword_27C912490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912490);
  }

  return result;
}

unint64_t sub_2143B8518()
{
  result = qword_27C9124A8;
  if (!qword_27C9124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124A8);
  }

  return result;
}

unint64_t sub_2143B856C()
{
  result = qword_27C9124B0;
  if (!qword_27C9124B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124B0);
  }

  return result;
}

unint64_t sub_2143B85C0()
{
  result = qword_27C9124B8;
  if (!qword_27C9124B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124B8);
  }

  return result;
}

uint64_t sub_2143B8614(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C912498, &qword_214735980);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2143B868C()
{
  result = qword_27C9124D0;
  if (!qword_27C9124D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124D0);
  }

  return result;
}

unint64_t sub_2143B86E0()
{
  result = qword_27C9124D8;
  if (!qword_27C9124D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124D8);
  }

  return result;
}

unint64_t sub_2143B8734()
{
  result = qword_27C9124E0;
  if (!qword_27C9124E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124E0);
  }

  return result;
}

unint64_t sub_2143B87F0()
{
  result = qword_27C9124F8;
  if (!qword_27C9124F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9124F8);
  }

  return result;
}

unint64_t sub_2143B8844()
{
  result = qword_27C912500;
  if (!qword_27C912500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912500);
  }

  return result;
}

unint64_t sub_2143B8898()
{
  result = qword_27C912510;
  if (!qword_27C912510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912510);
  }

  return result;
}

unint64_t sub_2143B8954()
{
  result = qword_27C912520;
  if (!qword_27C912520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912520);
  }

  return result;
}

unint64_t sub_2143B89AC()
{
  result = qword_27C912530;
  if (!qword_27C912530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912530);
  }

  return result;
}

unint64_t sub_2143B8A04()
{
  result = qword_27C912538;
  if (!qword_27C912538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912538);
  }

  return result;
}

unint64_t sub_2143B8A5C()
{
  result = qword_27C912540;
  if (!qword_27C912540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912540);
  }

  return result;
}

uint64_t sub_2143B8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2143B8B48()
{
  result = qword_27C912548;
  if (!qword_27C912548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912548);
  }

  return result;
}

unint64_t sub_2143B8BA0()
{
  result = qword_27C912550;
  if (!qword_27C912550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912550);
  }

  return result;
}

unint64_t sub_2143B8BF8()
{
  result = qword_27C912558;
  if (!qword_27C912558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912558);
  }

  return result;
}

unint64_t sub_2143B8C50()
{
  result = qword_27C912560;
  if (!qword_27C912560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912560);
  }

  return result;
}

unint64_t sub_2143B8CA8()
{
  result = qword_27C912568;
  if (!qword_27C912568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912568);
  }

  return result;
}

uint64_t dispatch thunk of static BlastDoorAVTBridging.dataFor(descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2143B8D58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2143B8DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2143B8E0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2143B8E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2143B8EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2143B8F40(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2143B8FFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2143B9050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2143B90DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2143B9124(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2143B9228()
{
  result = qword_27C912570;
  if (!qword_27C912570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912570);
  }

  return result;
}

unint64_t sub_2143B9280()
{
  result = qword_27C912578;
  if (!qword_27C912578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912578);
  }

  return result;
}

unint64_t sub_2143B92D8()
{
  result = qword_27C912580;
  if (!qword_27C912580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912580);
  }

  return result;
}

unint64_t sub_2143B9330()
{
  result = qword_27C912588;
  if (!qword_27C912588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912588);
  }

  return result;
}

unint64_t sub_2143B9388()
{
  result = qword_27C912590;
  if (!qword_27C912590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912590);
  }

  return result;
}

unint64_t sub_2143B93E0()
{
  result = qword_27C912598;
  if (!qword_27C912598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912598);
  }

  return result;
}

unint64_t sub_2143B9438()
{
  result = qword_27C9125A0;
  if (!qword_27C9125A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125A0);
  }

  return result;
}

unint64_t sub_2143B9490()
{
  result = qword_27C9125A8;
  if (!qword_27C9125A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125A8);
  }

  return result;
}

unint64_t sub_2143B94E8()
{
  result = qword_27C9125B0;
  if (!qword_27C9125B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125B0);
  }

  return result;
}

unint64_t sub_2143B9540()
{
  result = qword_27C9125B8;
  if (!qword_27C9125B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125B8);
  }

  return result;
}

unint64_t sub_2143B9598()
{
  result = qword_27C9125C0;
  if (!qword_27C9125C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125C0);
  }

  return result;
}

unint64_t sub_2143B95F0()
{
  result = qword_27C9125C8;
  if (!qword_27C9125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125C8);
  }

  return result;
}

unint64_t sub_2143B9648()
{
  result = qword_27C9125D0;
  if (!qword_27C9125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125D0);
  }

  return result;
}

unint64_t sub_2143B96A0()
{
  result = qword_27C9125D8;
  if (!qword_27C9125D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125D8);
  }

  return result;
}

unint64_t sub_2143B96F8()
{
  result = qword_27C9125E0;
  if (!qword_27C9125E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125E0);
  }

  return result;
}

unint64_t sub_2143B9750()
{
  result = qword_27C9125E8;
  if (!qword_27C9125E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125E8);
  }

  return result;
}

unint64_t sub_2143B97A8()
{
  result = qword_27C9125F0;
  if (!qword_27C9125F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125F0);
  }

  return result;
}

unint64_t sub_2143B9800()
{
  result = qword_27C9125F8;
  if (!qword_27C9125F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9125F8);
  }

  return result;
}

unint64_t sub_2143B9858()
{
  result = qword_27C912600;
  if (!qword_27C912600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912600);
  }

  return result;
}

unint64_t sub_2143B98B0()
{
  result = qword_27C912608;
  if (!qword_27C912608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912608);
  }

  return result;
}

unint64_t sub_2143B9908()
{
  result = qword_27C912610;
  if (!qword_27C912610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912610);
  }

  return result;
}

unint64_t sub_2143B9960()
{
  result = qword_27C912618;
  if (!qword_27C912618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912618);
  }

  return result;
}

unint64_t sub_2143B99B8()
{
  result = qword_27C912620;
  if (!qword_27C912620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912620);
  }

  return result;
}

unint64_t sub_2143B9A10()
{
  result = qword_27C912628;
  if (!qword_27C912628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912628);
  }

  return result;
}

uint64_t sub_2143B9A64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000214787660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79646F42736168 && a2 == 0xE700000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002147997D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_2146DA6A8();

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

uint64_t sub_2143B9BE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2143B9D48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000214795480 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002147997F0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000214787660 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214799810 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2143B9F00(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2143B9F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2143B9FB4(uint64_t a1)
{
  if (*(a1 + 209))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2143BA048()
{
  result = qword_27C912668;
  if (!qword_27C912668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912668);
  }

  return result;
}

unint64_t sub_2143BA09C()
{
  result = qword_27C912680;
  if (!qword_27C912680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C912680);
  }

  return result;
}