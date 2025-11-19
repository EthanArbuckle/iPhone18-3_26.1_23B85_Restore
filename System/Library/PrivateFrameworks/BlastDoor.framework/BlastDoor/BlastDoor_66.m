unint64_t sub_2145D2984()
{
  result = qword_27C915FC8;
  if (!qword_27C915FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915FC8);
  }

  return result;
}

unint64_t sub_2145D29D8()
{
  result = qword_27C915FD0;
  if (!qword_27C915FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915FD0);
  }

  return result;
}

unint64_t sub_2145D2A2C()
{
  result = qword_27C915FD8;
  if (!qword_27C915FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C915FD8);
  }

  return result;
}

uint64_t sub_2145D2AAC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145D2AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FE0, &qword_214763E88);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FE8, &qword_214763E90);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FF0, &unk_214763E98);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D2984();
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
      *v26 = &type metadata for Chatbot.SettingsAction;
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
        sub_2145D29D8();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2145D2A2C();
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

uint64_t sub_2145D2FE0@<X0>(uint64_t a1@<X8>)
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
  return sub_21431AC80(v11, v10);
}

__n128 sub_2145D3050(uint64_t a1)
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
  sub_21431AB00(v10);
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

uint64_t sub_2145D3278()
{
  if (*v0)
  {
    result = 0x544E4F5A49524F48;
  }

  else
  {
    result = 0x4C41434954524556;
  }

  *v0;
  return result;
}

uint64_t sub_2145D32B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x544E4F5A49524F48;
  }

  else
  {
    v4 = 0x4C41434954524556;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000004C41;
  }

  if (*a2)
  {
    v6 = 0x544E4F5A49524F48;
  }

  else
  {
    v6 = 0x4C41434954524556;
  }

  if (*a2)
  {
    v7 = 0xEA00000000004C41;
  }

  else
  {
    v7 = 0xE800000000000000;
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

uint64_t sub_2145D3364()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D33EC()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145D3460()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D34F0(uint64_t *a1@<X8>)
{
  v2 = 0x4C41434954524556;
  if (*v1)
  {
    v2 = 0x544E4F5A49524F48;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000004C41;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2145D35E4@<X0>(char *a1@<X8>)
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

uint64_t sub_2145D3640()
{
  v1 = 1684828002;
  if (*v0 != 1)
  {
    v1 = 0x6E696C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7363696C617469;
  }
}

uint64_t sub_2145D3698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 0x6E696C7265646E75;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7363696C617469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684828002;
  if (*a2 != 1)
  {
    v8 = 0x6E696C7265646E75;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7363696C617469;
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
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2145D3794()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D3834()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145D38C0()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D395C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2145D35E4(a1);
}

void sub_2145D3968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684828002;
  if (v2 != 1)
  {
    v5 = 0x6E696C7265646E75;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7363696C617469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2145D3A74@<X0>(char *a1@<X8>)
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

uint64_t sub_2145D3AD0()
{
  v1 = 0x485F4D554944454DLL;
  if (*v0 != 1)
  {
    v1 = 0x4945485F4C4C4154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x45485F54524F4853;
  }
}

uint64_t sub_2145D3B48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x485F4D554944454DLL;
  v4 = 0xED00005448474945;
  if (v2 != 1)
  {
    v3 = 0x4945485F4C4C4154;
    v4 = 0xEB00000000544847;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x45485F54524F4853;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000054484749;
  }

  v7 = 0x485F4D554944454DLL;
  v8 = 0xED00005448474945;
  if (*a2 != 1)
  {
    v7 = 0x4945485F4C4C4154;
    v8 = 0xEB00000000544847;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x45485F54524F4853;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000054484749;
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

uint64_t sub_2145D3C78()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D3D38()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145D3DE4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D3EA0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2145D3A74(a1);
}

void sub_2145D3EAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000054484749;
  v4 = 0xED00005448474945;
  v5 = 0x485F4D554944454DLL;
  if (v2 != 1)
  {
    v5 = 0x4945485F4C4C4154;
    v4 = 0xEB00000000544847;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x45485F54524F4853;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2145D3FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_2145D4164(uint64_t a1)
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

uint64_t sub_2145D4294(uint64_t a1)
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

void (*sub_2145D4380(void *a1))(uint64_t **a1, char a2)
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

void (*sub_2145D45AC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return sub_2145D465C;
}

void sub_2145D4670(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a1[1];
  sub_21402EDB8(v4, *a1, a3, a4);

  free(v4);
}

uint64_t sub_2145D46AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  v4 = *(v3 + 24);
  if (v4)
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145D4744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a5(0) + 20);
  a6(v7, v8, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145D4818(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v12 = *(v5 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v5 + 24);

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
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

void (*sub_2145D496C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  *(v4 + 32) = v5;
  v6 = v1 + v5;
  v7 = *(v6 + 24);
  *(v4 + 24) = v7;
  if (v7)
  {
    *v4 = *(v6 + 16);
    *(v4 + 8) = v7;

    return sub_2145DF574;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145D4A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v3;
}

uint64_t sub_2145D4AB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  v8 = *(v7 + 8);
  v9 = *(v7 + 24);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145D4B3C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v6;

  return sub_2145DF578;
}

uint64_t sub_2145D4BE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v5 + 16);
  }

  return result;
}

uint64_t (*sub_2145D4CA8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v4 + 16);
    return sub_2145187C0;
  }

  return result;
}

uint64_t sub_2145D4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 25);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v3;
}

uint64_t sub_2145D4DB4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  v8 = *(v7 + 8);

  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 25) = v6;
  return result;
}

void (*sub_2145D4E30(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 24);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  LOBYTE(v6) = *(v6 + 25);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v6;

  return sub_21451ABE0;
}

void (*sub_2145D4EF4(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.CardMedia(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

uint64_t (*sub_2145D5124(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
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
  v6 = *(type metadata accessor for Chatbot.CardMedia(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D51E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
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

uint64_t sub_2145D5280(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145D5348(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
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

void (*sub_2145D5498(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 32);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2145D5584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 32));
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

uint64_t sub_2145D55F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 32);
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

void (*sub_2145D568C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 32);
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
  return sub_21439DFAC;
}

uint64_t sub_2145D5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 24);
    *a2 = *(v5 + 16);
    *(a2 + 8) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2145D5814(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  if (*(v4 + 25))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 24);
    *a1 = *(v4 + 16);
    *(a1 + 8) = v5 & 1;
    return sub_21406646C;
  }

  return result;
}

uint64_t sub_2145D58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = *(v3 + 25);
  LOBYTE(v3) = *(v3 + 26);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 25) = v8;
  *(a2 + 26) = v3;
}

uint64_t sub_2145D5934(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 25) = v6;
  *(v8 + 26) = v7;
  return result;
}

void (*sub_2145D59B8(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 36);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = *(v6 + 24);
  v11 = *(v6 + 25);
  LOBYTE(v6) = *(v6 + 26);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 25) = v11;
  *(v4 + 26) = v6;

  return sub_214066720;
}

uint64_t sub_2145D5A6C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Chatbot.CardMedia(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_2145D5AA0(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Chatbot.CardMedia(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_2145D5B18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
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

uint64_t sub_2145D5BB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145D5C7C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
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

void (*sub_2145D5DCC(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 44);
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

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2145D5EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Chatbot.CardMedia(0) + 44));
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

uint64_t sub_2145D5F28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for Chatbot.CardMedia(0) + 44);
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

void (*sub_2145D5FC0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Chatbot.CardMedia(0) + 44);
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
  return sub_21439DFAC;
}

uint64_t (*sub_2145D606C(void *a1))(uint64_t *, char)
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

uint64_t (*sub_2145D6108(uint64_t *a1))()
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

uint64_t (*sub_2145D61A0(void *a1))(uint64_t *, char)
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

uint64_t (*sub_2145D623C(uint64_t *a1))()
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

uint64_t sub_2145D62DC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void (*sub_2145D6360(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

uint64_t (*sub_2145D6590(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
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
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D665C()
{
  if (*v0)
  {
    result = 0x5448474952;
  }

  else
  {
    result = 1413891404;
  }

  *v0;
  return result;
}

uint64_t sub_2145D668C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5448474952;
  }

  else
  {
    v4 = 1413891404;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x5448474952;
  }

  else
  {
    v6 = 1413891404;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
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

uint64_t sub_2145D6728()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D67A0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145D6804()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D6884(uint64_t *a1@<X8>)
{
  v2 = 1413891404;
  if (*v1)
  {
    v2 = 0x5448474952;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2145D69A8(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2145D69FC(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2145D6A48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = a1 + *(a2(0) + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v10 + *(v11 + 28), v9, &qword_27C903F40, &unk_2146F1C50);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) != 1)
  {
    return sub_214032588(v9, a3);
  }

  sub_213FB2DF4(v9, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145D6BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_213FB2E54(a1, &v17 - v13, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v14, v12, &unk_27C9131A0, &unk_2146E9D10);
  v15 = a2 + *(a5(0) + 28);
  sub_21402F5FC(v12);
  return sub_213FB2DF4(v14, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_2145D6CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  sub_213FB2E54(a1, &v11 - v7, &unk_27C9131A0, &unk_2146E9D10);
  v9 = v2 + *(a2(0) + 28);
  sub_21402F5FC(v8);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

void (*sub_2145D6DC4(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

uint64_t (*sub_2145D6FF4(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
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
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D7428()
{
  if (*v0)
  {
    result = 0x575F4D554944454DLL;
  }

  else
  {
    result = 0x49575F4C4C414D53;
  }

  *v0;
  return result;
}

uint64_t sub_2145D7474(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x575F4D554944454DLL;
  }

  else
  {
    v4 = 0x49575F4C4C414D53;
  }

  if (v3)
  {
    v5 = 0xEB00000000485444;
  }

  else
  {
    v5 = 0xEC00000048544449;
  }

  if (*a2)
  {
    v6 = 0x575F4D554944454DLL;
  }

  else
  {
    v6 = 0x49575F4C4C414D53;
  }

  if (*a2)
  {
    v7 = 0xEC00000048544449;
  }

  else
  {
    v7 = 0xEB00000000485444;
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

uint64_t sub_2145D752C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145D75C0()
{
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145D7640()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2145D76DC(uint64_t *a1@<X8>)
{
  v2 = 0x49575F4C4C414D53;
  if (*v1)
  {
    v2 = 0x575F4D554944454DLL;
  }

  v3 = 0xEB00000000485444;
  if (*v1)
  {
    v3 = 0xEC00000048544449;
  }

  *a1 = v2;
  a1[1] = v3;
}

void (*sub_2145D7854(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
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
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  *(v5 + 8) = v14;
  v15 = v1 + v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v15 + *(v16 + 28), v8, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v8, v13);
    return sub_2145DF564;
  }

  return result;
}

uint64_t (*sub_2145D7A84(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
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
  v6 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(0) + 28);
  *(a1 + 16) = v6;
  sub_213FB2E54(v1 + v6, v5, &qword_27C903F38, &unk_2146E9D40);
  return sub_2145DF568;
}

uint64_t sub_2145D7B7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_21431C5DC(v5);
}

__n128 sub_2145D7C08(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 32);
  v5 = v2 + *(a2(0) + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  sub_21431E10C(*v5);
  result = *a1;
  v11 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v11;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2145D7CC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_21431C5DC(v5);
}

__n128 sub_2145D7D30(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a1 + 32);
  v5 = v2 + *(a2(0) + 24);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  sub_21431E10C(*v5);
  result = *a1;
  v11 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v11;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2145D7DEC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
}

uint64_t sub_2145D7E40(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_2145D7F50()
{
  v1 = *(v0 + *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20));
}

uint64_t sub_2145D7FA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2145D8040(uint64_t a1)
{
  v2 = sub_2145D86B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D807C(uint64_t a1)
{
  v2 = sub_2145D86B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D80B8(uint64_t a1)
{
  v2 = sub_2145D865C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D80F4(uint64_t a1)
{
  v2 = sub_2145D865C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8130()
{
  v1 = 0x343665736162;
  if (*v0 != 1)
  {
    v1 = 0x5255343665736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 946238581;
  }
}

uint64_t sub_2145D8184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145DEB4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145D81AC(uint64_t a1)
{
  v2 = sub_2145D8608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D81E8(uint64_t a1)
{
  v2 = sub_2145D8608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8224(uint64_t a1)
{
  v2 = sub_2145D8704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D8260(uint64_t a1)
{
  v2 = sub_2145D8704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D829C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C915FF8, &qword_214763EA8);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916000, &qword_214763EB0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916008, &qword_214763EB8);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916010, &qword_214763EC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D8608();
  sub_2146DAA28();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2145D86B0();
      v12 = v26;
      sub_2146DA288();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_2145D865C();
      v12 = v29;
      sub_2146DA288();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2145D8704();
    sub_2146DA288();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_2145D8608()
{
  result = qword_27C916018;
  if (!qword_27C916018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916018);
  }

  return result;
}

unint64_t sub_2145D865C()
{
  result = qword_27C916020;
  if (!qword_27C916020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916020);
  }

  return result;
}

unint64_t sub_2145D86B0()
{
  result = qword_27C916028;
  if (!qword_27C916028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916028);
  }

  return result;
}

unint64_t sub_2145D8704()
{
  result = qword_27C916030;
  if (!qword_27C916030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916030);
  }

  return result;
}

uint64_t sub_2145D8784()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145D87CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916038, &qword_214763EC8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916040, &qword_214763ED0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916048, &qword_214763ED8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916050, &qword_214763EE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2145D8608();
  v20 = v43;
  sub_2146DAA08();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_2146DA238();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_214397004();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_2146D9F58();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v30 = &type metadata for Chatbot.RootMessage.Context.DataEncoding;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_2145D86B0();
          sub_2146DA0B8();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_2145D865C();
          v33 = v22;
          sub_2146DA0B8();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_2145D8704();
        sub_2146DA0B8();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

_BYTE *sub_2145D8DD4@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

unint64_t sub_2145D8DE4()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0x6F636E4561746164;
  }

  *v0;
  return result;
}

uint64_t sub_2145D8E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F636E4561746164 && a2 == 0xEC000000676E6964;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A5230 == a2)
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

uint64_t sub_2145D8F14(uint64_t a1)
{
  v2 = sub_2145D912C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145D8F50(uint64_t a1)
{
  v2 = sub_2145D912C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145D8F8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916058, &qword_214763EE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D912C();
  sub_2146DAA28();
  v16 = v9;
  v15 = 0;
  sub_2145D9180();
  sub_2146DA388();
  if (!v2)
  {
    v14 = 1;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2145D912C()
{
  result = qword_27C916060;
  if (!qword_27C916060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916060);
  }

  return result;
}

unint64_t sub_2145D9180()
{
  result = qword_27C916068;
  if (!qword_27C916068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916068);
  }

  return result;
}

uint64_t sub_2145D91D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916070, &qword_214763EF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145D912C();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2145D9394();
    sub_2146DA1C8();
    v11 = v17;
    v15 = 1;
    v12 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2145D9394()
{
  result = qword_27C916078;
  if (!qword_27C916078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916078);
  }

  return result;
}

uint64_t sub_2145D9418@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Chatbot.VerificationInfo(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2145CBE50(v1, v6, type metadata accessor for Chatbot.VerificationInfo);
  v7 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2145D9554(v6);
    v9 = 1;
  }

  else
  {
    sub_2145DF420(v6, a1, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t sub_2145D9554(uint64_t a1)
{
  v2 = type metadata accessor for Chatbot.VerificationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2145D960C()
{
  result = qword_27C916080;
  if (!qword_27C916080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916080);
  }

  return result;
}

unint64_t sub_2145D9664()
{
  result = qword_27C916088;
  if (!qword_27C916088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916088);
  }

  return result;
}

uint64_t sub_2145D9710(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BB68, type metadata accessor for Chatbot.Media);
  result = sub_2145D9794(&qword_27C90BB88, type metadata accessor for Chatbot.Media);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9794(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2145D97E0()
{
  result = qword_27C916090;
  if (!qword_27C916090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916090);
  }

  return result;
}

unint64_t sub_2145D9838()
{
  result = qword_27C916098;
  if (!qword_27C916098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916098);
  }

  return result;
}

uint64_t sub_2145D988C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BBC8, type metadata accessor for Chatbot.MediaEntry);
  result = sub_2145D9794(&qword_27C90BBE8, type metadata accessor for Chatbot.MediaEntry);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145D9998()
{
  result = qword_27C9160A0;
  if (!qword_27C9160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160A0);
  }

  return result;
}

uint64_t sub_2145D9AC8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BEB0, type metadata accessor for Chatbot.BotInfo);
  result = sub_2145D9794(&qword_27C90BEE8, type metadata accessor for Chatbot.BotInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9B4C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D828, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
  result = sub_2145D9794(&qword_27C90D810, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9BD0(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BE80, type metadata accessor for Chatbot.VerificationInfo);
  result = sub_2145D9794(&qword_27C90BE90, type metadata accessor for Chatbot.VerificationInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9C54(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BED8, type metadata accessor for Chatbot.BotVerification);
  result = sub_2145D9794(&qword_27C90BF08, type metadata accessor for Chatbot.BotVerification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C9160A8, type metadata accessor for Chatbot.Info);
  result = sub_2145D9794(&qword_27C9160B0, type metadata accessor for Chatbot.Info);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9D7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BF30, type metadata accessor for Chatbot.MenuL2.Entry);
  result = sub_2145D9794(&qword_27C90BF48, type metadata accessor for Chatbot.MenuL2.Entry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9E4C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BF70, type metadata accessor for Chatbot.MenuL1.Entry);
  result = sub_2145D9794(&qword_27C90BF88, type metadata accessor for Chatbot.MenuL1.Entry);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145D9F1C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90BFB0, type metadata accessor for Chatbot.MenuL0);
  result = sub_2145D9794(&qword_27C90BFC8, type metadata accessor for Chatbot.MenuL0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA074()
{
  result = qword_27C9160B8;
  if (!qword_27C9160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160B8);
  }

  return result;
}

unint64_t sub_2145DA0CC()
{
  result = qword_27C9160C0;
  if (!qword_27C9160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160C0);
  }

  return result;
}

uint64_t sub_2145DA178(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D970, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  result = sub_2145D9794(&qword_27C90D948, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA1FC(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D968, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  result = sub_2145D9794(&qword_27C90D940, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA280(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D960, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  result = sub_2145D9794(&qword_27C90D938, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA304(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB00, type metadata accessor for Chatbot.DialerAction);
  result = sub_2145D9794(&qword_27C90DAB8, type metadata accessor for Chatbot.DialerAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA458(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D9A8, type metadata accessor for Chatbot.MapAction.ShowLocation);
  result = sub_2145D9794(&qword_27C90D990, type metadata accessor for Chatbot.MapAction.ShowLocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA4DC(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DAF8, type metadata accessor for Chatbot.MapAction);
  result = sub_2145D9794(&qword_27C90DAB0, type metadata accessor for Chatbot.MapAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA580(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DA28, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  result = sub_2145D9794(&qword_27C90DA10, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA604(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DAF0, type metadata accessor for Chatbot.CalendarAction);
  result = sub_2145D9794(&qword_27C90DAA8, type metadata accessor for Chatbot.CalendarAction);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA6D8()
{
  result = qword_27C9160C8;
  if (!qword_27C9160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160C8);
  }

  return result;
}

unint64_t sub_2145DA788()
{
  result = qword_27C9160D0;
  if (!qword_27C9160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160D0);
  }

  return result;
}

unint64_t sub_2145DA80C()
{
  result = qword_27C9160D8;
  if (!qword_27C9160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160D8);
  }

  return result;
}

uint64_t sub_2145DA88C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C1D0, type metadata accessor for Chatbot.Action.ActionType);
  result = sub_2145D9794(&qword_27C90C1E0, type metadata accessor for Chatbot.Action.ActionType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DA910(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D868, type metadata accessor for Chatbot.Action);
  result = sub_2145D9794(&qword_27C90D848, type metadata accessor for Chatbot.Action);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DA998()
{
  result = qword_27C9160E0;
  if (!qword_27C9160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160E0);
  }

  return result;
}

unint64_t sub_2145DA9F0()
{
  result = qword_27C9160E8;
  if (!qword_27C9160E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160E8);
  }

  return result;
}

unint64_t sub_2145DAA48()
{
  result = qword_27C9160F0;
  if (!qword_27C9160F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160F0);
  }

  return result;
}

uint64_t sub_2145DAA9C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C318, type metadata accessor for Chatbot.CardMedia);
  result = sub_2145D9794(&qword_27C90C388, type metadata accessor for Chatbot.CardMedia);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DABB4(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB50, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
  result = sub_2145D9794(&qword_27C90DB30, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DAC3C()
{
  result = qword_27C9160F8;
  if (!qword_27C9160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9160F8);
  }

  return result;
}

uint64_t sub_2145DAC90(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB48, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
  result = sub_2145D9794(&qword_27C90DB28, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAD14(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C250, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  result = sub_2145D9794(&qword_27C90C268, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAD98(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C258, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
  result = sub_2145D9794(&qword_27C90C270, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAE1C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB98, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
  result = sub_2145D9794(&qword_27C90DB78, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DAEA4()
{
  result = qword_27C916100;
  if (!qword_27C916100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916100);
  }

  return result;
}

uint64_t sub_2145DAEF8(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C3D8, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
  result = sub_2145D9794(&qword_27C90C400, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DAF7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C3F0, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content);
  result = sub_2145D9794(&qword_27C90C410, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB000(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90DB90, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
  result = sub_2145D9794(&qword_27C90DB70, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB084(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(qword_27C90DBF8, type metadata accessor for Chatbot.Message);
  result = sub_2145D9794(&qword_27C90DBE0, type metadata accessor for Chatbot.Message);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145DB128(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90C370, type metadata accessor for Chatbot.Suggestion);
  result = sub_2145D9794(&qword_27C90C3C0, type metadata accessor for Chatbot.Suggestion);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145DB1D0()
{
  result = qword_27C916108;
  if (!qword_27C916108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916108);
  }

  return result;
}

unint64_t sub_2145DB228()
{
  result = qword_27C916110;
  if (!qword_27C916110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916110);
  }

  return result;
}

unint64_t sub_2145DB280()
{
  result = qword_27C916118;
  if (!qword_27C916118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916118);
  }

  return result;
}

uint64_t sub_2145DB2D4(uint64_t a1)
{
  result = sub_2145D9794(&qword_27C916120, type metadata accessor for Chatbot.RootMessage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2145DB34C(uint64_t a1)
{
  *(a1 + 8) = sub_2145D9794(&qword_27C90D4C0, type metadata accessor for Chatbot.RootMessage);
  result = sub_2145D9794(&qword_27C90D460, type metadata accessor for Chatbot.RootMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_122Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_2145DB630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_2145DB678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145DB6F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2145DB738(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_2145DB7D0()
{
  sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2145DB8D4()
{
  result = type metadata accessor for Chatbot.Media(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor7ChatbotO9MediaListVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DB9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DBA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor7ChatbotO19OrganizationDetailsVSg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_2145DBB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_2145DBB64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

void sub_2145DBC44()
{
  sub_2145DD8D4(319, &qword_280B34BE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        sub_2145DD8D4(319, &qword_27C916158, &type metadata for Chatbot.Address, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DBE20()
{
  sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2145DC100(319, &qword_280B35230, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2145DBF38()
{
  result = type metadata accessor for Chatbot.VerificationInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2145DBFCC()
{
  type metadata accessor for Chatbot.BotInfo(319);
  if (v0 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_27C9161A0, &type metadata for Chatbot.Menu, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        sub_2145DC100(319, &qword_27C9161A8, type metadata accessor for Chatbot.BotVerification, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DC100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2145DC19C()
{
  result = type metadata accessor for Chatbot.Action(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145DC28C()
{
  result = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Chatbot.DialerAction.DialVideoCall(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2145DC33C()
{
  sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2145DC438()
{
  sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_510Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_511Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_381Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_382Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_2145DC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_2145DC880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145DC8C8(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_2145DC954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 58))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 56) & 0x7E | (*(a1 + 56) >> 7) & 1) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2145DC9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
    }
  }

  return result;
}

void sub_2145DCA64()
{
  sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2145DCB0C(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);

  return MEMORY[0x2821FE9C0](a1, a2, Event, j____swift_get_extra_inhabitant_index_580Tm);
}

uint64_t sub_2145DCB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, Event, j____swift_store_extra_inhabitant_index_581Tm);
}

uint64_t sub_2145DCBCC(uint64_t a1)
{
  result = type metadata accessor for Chatbot.CalendarAction.CreateEvent(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_580Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_581Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2145DCEF8()
{
  sub_2146D8B08();
  if (v0 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2145DD034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2145DD084(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 9;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145DD19C()
{
  result = type metadata accessor for Chatbot.Action.ActionType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145DD218()
{
  result = type metadata accessor for Chatbot.DialerAction(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.MapAction(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Chatbot.CalendarAction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2145DD310()
{
  sub_2145DC100(319, &qword_280B2E580, MEMORY[0x277CC9260], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      sub_2145DD8D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
      if (v2 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
        if (v3 <= 0x3F)
        {
          sub_2145DD924(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
          if (v4 <= 0x3F)
          {
            sub_2145DD924(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0, type metadata accessor for Validated);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2145DD55C()
{
  result = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2145DD634()
{
  sub_2145DD924(319, &qword_27C9162C0, &qword_27C90C2A0, &qword_2146F6BB0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2145DD77C()
{
  sub_2145DC100(319, &qword_27C9162E8, type metadata accessor for Chatbot.CardMedia, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2145DD8D4(319, &qword_27C9162F0, &type metadata for Chatbot.CardTitle, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2145DD8D4(319, &qword_27C9162F8, &type metadata for Chatbot.CardDescription, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2145DD924(319, &qword_27C916300, &qword_27C90C368, &qword_2146F6BF8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145DD8D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2145DD924(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2145DD9B0()
{
  type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Layout(319);
  if (v0 <= 0x3F)
  {
    sub_2145DC100(319, &qword_27C916318, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage.Content, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_722Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_723Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2145DDC10()
{
  sub_2145DD924(319, &qword_27C9162C0, &qword_27C90C2A0, &qword_2146F6BB0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2145DD924(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10, type metadata accessor for Validated);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_737Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_738Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C2F8, &qword_2146F6BD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2145DDEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2145DDF70()
{
  result = type metadata accessor for Chatbot.Action(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2145DDFDC()
{
  type metadata accessor for Chatbot.Message(319);
  if (v0 <= 0x3F)
  {
    sub_2145DC100(319, &qword_27C916370, type metadata accessor for Chatbot.Suggestion, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Chatbot.RootMessage.Context(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Chatbot.RootMessage.Context(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2145DE298()
{
  result = qword_27C916378;
  if (!qword_27C916378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916378);
  }

  return result;
}

unint64_t sub_2145DE2F0()
{
  result = qword_27C916380;
  if (!qword_27C916380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916380);
  }

  return result;
}

unint64_t sub_2145DE348()
{
  result = qword_27C916388;
  if (!qword_27C916388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916388);
  }

  return result;
}

unint64_t sub_2145DE3A0()
{
  result = qword_27C916390;
  if (!qword_27C916390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916390);
  }

  return result;
}

unint64_t sub_2145DE3F8()
{
  result = qword_27C916398;
  if (!qword_27C916398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916398);
  }

  return result;
}

unint64_t sub_2145DE450()
{
  result = qword_27C9163A0;
  if (!qword_27C9163A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163A0);
  }

  return result;
}

unint64_t sub_2145DE4A8()
{
  result = qword_27C9163A8;
  if (!qword_27C9163A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163A8);
  }

  return result;
}

unint64_t sub_2145DE500()
{
  result = qword_27C9163B0;
  if (!qword_27C9163B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163B0);
  }

  return result;
}

unint64_t sub_2145DE558()
{
  result = qword_27C9163B8;
  if (!qword_27C9163B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163B8);
  }

  return result;
}

unint64_t sub_2145DE5B0()
{
  result = qword_27C9163C0;
  if (!qword_27C9163C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163C0);
  }

  return result;
}

unint64_t sub_2145DE608()
{
  result = qword_27C9163C8;
  if (!qword_27C9163C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163C8);
  }

  return result;
}

unint64_t sub_2145DE660()
{
  result = qword_27C9163D0;
  if (!qword_27C9163D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163D0);
  }

  return result;
}

unint64_t sub_2145DE6B8()
{
  result = qword_27C9163D8;
  if (!qword_27C9163D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163D8);
  }

  return result;
}

unint64_t sub_2145DE710()
{
  result = qword_27C9163E0;
  if (!qword_27C9163E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163E0);
  }

  return result;
}

unint64_t sub_2145DE768()
{
  result = qword_27C9163E8;
  if (!qword_27C9163E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163E8);
  }

  return result;
}

unint64_t sub_2145DE7C0()
{
  result = qword_27C9163F0;
  if (!qword_27C9163F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163F0);
  }

  return result;
}

unint64_t sub_2145DE818()
{
  result = qword_27C9163F8;
  if (!qword_27C9163F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9163F8);
  }

  return result;
}

unint64_t sub_2145DE870()
{
  result = qword_27C916400;
  if (!qword_27C916400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916400);
  }

  return result;
}

unint64_t sub_2145DE8C8()
{
  result = qword_27C916408;
  if (!qword_27C916408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916408);
  }

  return result;
}

unint64_t sub_2145DE920()
{
  result = qword_27C916410;
  if (!qword_27C916410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916410);
  }

  return result;
}

unint64_t sub_2145DE978()
{
  result = qword_27C916418;
  if (!qword_27C916418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916418);
  }

  return result;
}

unint64_t sub_2145DE9D0()
{
  result = qword_27C916420;
  if (!qword_27C916420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916420);
  }

  return result;
}

unint64_t sub_2145DEA28()
{
  result = qword_27C916428;
  if (!qword_27C916428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916428);
  }

  return result;
}

unint64_t sub_2145DEA80()
{
  result = qword_27C916430;
  if (!qword_27C916430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916430);
  }

  return result;
}

uint64_t sub_2145DEAD4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_214047B58(*a1, 2, *a3);
  }
}

uint64_t sub_2145DEAF4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v6 = a3;
  return v3(a2, &v6) & 1;
}

uint64_t sub_2145DEB4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 946238581 && a2 == 0xE400000000000000;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x343665736162 && a2 == 0xE600000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5255343665736162 && a2 == 0xE90000000000004CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2145DEC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_2145DECD0()
{
  result = qword_27C916438;
  if (!qword_27C916438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916438);
  }

  return result;
}

unint64_t sub_2145DED24()
{
  result = qword_27C916440;
  if (!qword_27C916440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916440);
  }

  return result;
}

unint64_t sub_2145DED78()
{
  result = qword_27C916448;
  if (!qword_27C916448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916448);
  }

  return result;
}

unint64_t sub_2145DEDCC()
{
  result = qword_27C916450;
  if (!qword_27C916450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916450);
  }

  return result;
}

unint64_t sub_2145DEE20()
{
  result = qword_27C916458;
  if (!qword_27C916458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916458);
  }

  return result;
}

unint64_t sub_2145DEE74()
{
  result = qword_27C916460;
  if (!qword_27C916460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916460);
  }

  return result;
}

unint64_t sub_2145DEEC8()
{
  result = qword_27C916468;
  if (!qword_27C916468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916468);
  }

  return result;
}

unint64_t sub_2145DEF1C()
{
  result = qword_27C916470;
  if (!qword_27C916470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916470);
  }

  return result;
}

unint64_t sub_2145DEF70()
{
  result = qword_27C916478;
  if (!qword_27C916478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916478);
  }

  return result;
}

unint64_t sub_2145DEFC4()
{
  result = qword_27C916480;
  if (!qword_27C916480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916480);
  }

  return result;
}

unint64_t sub_2145DF018()
{
  result = qword_27C916488;
  if (!qword_27C916488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916488);
  }

  return result;
}

unint64_t sub_2145DF06C()
{
  result = qword_27C916490;
  if (!qword_27C916490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916490);
  }

  return result;
}

unint64_t sub_2145DF0C0()
{
  result = qword_27C916498;
  if (!qword_27C916498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916498);
  }

  return result;
}

uint64_t sub_2145DF11C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v24[-v17];
  sub_213FB2E54(a1, v16, &unk_27C9131A0, &unk_2146E9D10);
  v19 = *(v5 + 48);
  v20 = 1;
  if (v19(v16, 1, v4) != 1)
  {
    (*(v5 + 32))(v18, v16, v4);
    v20 = 0;
  }

  (*(v5 + 56))(v18, v20, 1, v4);
  sub_213FB2E54(v18, v13, &unk_27C9131A0, &unk_2146E9D10);
  if (v19(v13, 1, v4) == 1)
  {
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
    v21 = 1;
  }

  else
  {
    v22 = (*(v5 + 32))(v8, v13, v4);
    MEMORY[0x28223BE20](v22);
    *&v24[-16] = v8;
    v24[-8] = 2;
    v21 = sub_2140479E4(sub_214046F5C, &v24[-32], a2);
    sub_213FB2DF4(v18, &unk_27C9131A0, &unk_2146E9D10);
    (*(v5 + 8))(v8, v4);
  }

  return v21 & 1;
}

uint64_t sub_2145DF420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RedWoodInvite.sessionToken.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RedWoodInvite.isprod.getter()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t RedWoodInvite.aaToken.getter()
{
  if (*(v0 + 120) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 112);

    return v1;
  }

  return result;
}

uint64_t RedWoodInvite.appleName.getter()
{
  if (*(v0 + 176) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 168);

    return v1;
  }

  return result;
}

uint64_t RedWoodInvite.shareType.getter()
{
  if (*(v0 + 216) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 208);

    return v1;
  }

  return result;
}

unint64_t sub_2145DF858@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2143E05A8;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145DF978@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2145E278C;
  v5[3] = 0;
  v5[4] = 10;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_21439DF90;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2143E05A8;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 40) = v12;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2145DFB8C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_2145E278C;
  v5[3] = 0;
  v5[4] = 30;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 40) = v12;
  return sub_214042A28(inited, a1);
}

uint64_t RedWoodInvite.$sessionToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RedWoodInvite.$sessionToken.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t RedWoodInvite.$isprod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 RedWoodInvite.$isprod.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t RedWoodInvite.$aaToken.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$aaToken.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_u64[1];
  v7 = v1[7].n128_i64[0];
  v8 = v1[7].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t RedWoodInvite.$appleName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$appleName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  return result;
}

uint64_t RedWoodInvite.$shareType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 RedWoodInvite.$shareType.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[12].n128_u64[1];
  v7 = v1[13].n128_i64[0];
  v8 = v1[13].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v3;
  v1[13].n128_u64[1] = v4;
  v1[14].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E0130()
{
  v1 = *v0;
  sub_213FDCA18(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2145E0164(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2145E01BC()
{
  v1 = *(v0 + 16);
  sub_213FDCA18(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_2145E01F0(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2145E0248()
{
  v1 = *(v0 + 32);
  sub_213FDCA18(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2145E027C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2145E02D4()
{
  v1 = *(v0 + 48);
  sub_21402D9F8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_2145E0308(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RedWoodInvite.sessionToken.setter(uint64_t a1, uint64_t a2)
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

uint64_t (*RedWoodInvite.sessionToken.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RedWoodInvite.$sessionToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
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

  return sub_2143D01AC;
}

uint64_t RedWoodInvite.resourcepath.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RedWoodInvite.resourcepath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t RedWoodInvite.isprod.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v12 = *(v3 + 88);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 80);

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
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

uint64_t (*RedWoodInvite.isprod.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 80);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 72);
    a1[1] = v3;

    return sub_2143C00B4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*RedWoodInvite.$isprod.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143C03E4;
}

uint64_t sub_2145E08E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 120);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 112);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145E0954(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t RedWoodInvite.aaToken.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v11 = *(v3 + 128);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 112), *(v3 + 120));

    *(v3 + 112) = a1;
    *(v3 + 120) = a2;
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

void (*RedWoodInvite.aaToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
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

    return sub_2145E0C20;
  }

  return result;
}

void sub_2145E0C20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 96);
    v11 = *(v3 + 104);
    v16 = *(v3 + 128);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 112) = v5;
      *(v12 + 120) = v4;
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
  v7 = *(v3 + 96);
  v6 = *(v3 + 104);
  v16 = *(v3 + 128);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 112) = v5;
  *(v8 + 120) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145E0DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E0E44(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  *(a2 + 112) = v5;
  *(a2 + 120) = v6;
  *(a2 + 128) = v7;
  return result;
}

void (*RedWoodInvite.$aaToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E0F6C;
}

void sub_2145E0F6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 104);
  v9 = *(v3 + 112);
  v11 = *(v3 + 120);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 104);

    sub_213FDC6D0(v9, v11);
    *(v3 + 96) = v5;
    *(v3 + 104) = v4;
    *(v3 + 112) = v7;
    *(v3 + 120) = v6;
    *(v3 + 128) = v8;
  }

  free(v2);
}

uint64_t RedWoodInvite.timeout.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t RedWoodInvite.timeout.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t sub_2145E1088@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 176);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 168);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145E10FC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t RedWoodInvite.appleName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 152);
  v7 = *(v2 + 160);
  v11 = *(v3 + 184);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 168), *(v3 + 176));

    *(v3 + 168) = a1;
    *(v3 + 176) = a2;
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

void (*RedWoodInvite.appleName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 168);
  *(v3 + 24) = v5;
  v6 = *(v1 + 176);
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

    return sub_2145E13C8;
  }

  return result;
}

void sub_2145E13C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 152);
    v11 = *(v3 + 160);
    v16 = *(v3 + 184);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 168) = v5;
      *(v12 + 176) = v4;
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
  v7 = *(v3 + 152);
  v6 = *(v3 + 160);
  v16 = *(v3 + 184);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 168) = v5;
  *(v8 + 176) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145E1598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E15EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 160);
  v9 = *(a2 + 168);
  v10 = *(a2 + 176);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  return result;
}

void (*RedWoodInvite.$appleName.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  *v4 = *(v1 + 152);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E1714;
}

void sub_2145E1714(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 160);
  v9 = *(v3 + 168);
  v11 = *(v3 + 176);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 160);

    sub_213FDC6D0(v9, v11);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
  }

  free(v2);
}

uint64_t sub_2145E17F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 216);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 208);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145E1868(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t RedWoodInvite.shareType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 192);
  v7 = *(v2 + 200);
  v11 = *(v3 + 224);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 208), *(v3 + 216));

    *(v3 + 208) = a1;
    *(v3 + 216) = a2;
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

void (*RedWoodInvite.shareType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 208);
  *(v3 + 24) = v5;
  v6 = *(v1 + 216);
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

    return sub_2145E1B34;
  }

  return result;
}

void sub_2145E1B34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 192);
    v11 = *(v3 + 200);
    v16 = *(v3 + 224);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 208) = v5;
      *(v12 + 216) = v4;
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
  v7 = *(v3 + 192);
  v6 = *(v3 + 200);
  v16 = *(v3 + 224);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 208) = v5;
  *(v8 + 216) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145E1D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  *a2 = *(a1 + 192);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145E1D58(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v10 = *(a2 + 216);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 192) = v4;
  *(a2 + 200) = v3;
  *(a2 + 208) = v5;
  *(a2 + 216) = v6;
  *(a2 + 224) = v7;
  return result;
}

void (*RedWoodInvite.$shareType.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  *v4 = *(v1 + 192);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145E1E80;
}

void sub_2145E1E80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 200);
  v9 = *(v3 + 208);
  v11 = *(v3 + 216);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 200);

    sub_213FDC6D0(v9, v11);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
  }

  free(v2);
}

uint64_t sub_2145E1F90@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_213FB2E54(v7, &v6, &qword_27C904250, qword_214766C00);
}

__n128 sub_2145E1FE0(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_213FB2DF4(v8, &qword_27C904250, qword_214766C00);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t sub_2145E2060@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 272);
  v35 = *(v1 + 256);
  v36 = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 208);
  v31 = *(v1 + 192);
  v6 = v31;
  v32 = v5;
  v7 = *(v1 + 208);
  v8 = *(v1 + 240);
  v33 = *(v1 + 224);
  v9 = v33;
  v34 = v8;
  v10 = *(v1 + 112);
  v11 = *(v1 + 144);
  v27 = *(v1 + 128);
  v12 = v27;
  v28 = v11;
  v13 = *(v1 + 144);
  v14 = *(v1 + 176);
  v29 = *(v1 + 160);
  v15 = v29;
  v30 = v14;
  v16 = *(v1 + 80);
  v24[0] = *(v1 + 64);
  v24[1] = v16;
  v17 = *(v1 + 112);
  v19 = *(v1 + 64);
  v18 = *(v1 + 80);
  v25 = *(v1 + 96);
  v20 = v25;
  v26 = v17;
  v21 = *(v1 + 272);
  *(a1 + 192) = v35;
  *(a1 + 208) = v21;
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 160) = v9;
  *(a1 + 176) = v2;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v15;
  *(a1 + 112) = v4;
  *a1 = v19;
  *(a1 + 16) = v18;
  v37 = *(v1 + 288);
  *(a1 + 224) = *(v1 + 288);
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  return sub_213FB2E54(v24, v23, &qword_27C904248, &qword_2146F4C30);
}

__n128 sub_2145E2128(uint64_t a1)
{
  v3 = *(v1 + 272);
  v17[12] = *(v1 + 256);
  v17[13] = v3;
  v18 = *(v1 + 288);
  v4 = *(v1 + 208);
  v17[8] = *(v1 + 192);
  v17[9] = v4;
  v5 = *(v1 + 240);
  v17[10] = *(v1 + 224);
  v17[11] = v5;
  v6 = *(v1 + 144);
  v17[4] = *(v1 + 128);
  v17[5] = v6;
  v7 = *(v1 + 176);
  v17[6] = *(v1 + 160);
  v17[7] = v7;
  v8 = *(v1 + 80);
  v17[0] = *(v1 + 64);
  v17[1] = v8;
  v9 = *(v1 + 112);
  v17[2] = *(v1 + 96);
  v17[3] = v9;
  sub_213FB2DF4(v17, &qword_27C904248, &qword_2146F4C30);
  v10 = *(a1 + 208);
  *(v1 + 256) = *(a1 + 192);
  *(v1 + 272) = v10;
  *(v1 + 288) = *(a1 + 224);
  v11 = *(a1 + 144);
  *(v1 + 192) = *(a1 + 128);
  *(v1 + 208) = v11;
  v12 = *(a1 + 176);
  *(v1 + 224) = *(a1 + 160);
  *(v1 + 240) = v12;
  v13 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v13;
  v14 = *(a1 + 112);
  *(v1 + 160) = *(a1 + 96);
  *(v1 + 176) = v14;
  v15 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v15;
  result = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = result;
  return result;
}

uint64_t sub_2145E2238()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return v1;
}

uint64_t sub_2145E2268(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 304);

  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
  return result;
}

uint64_t sub_2145E22C0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

uint64_t sub_2145E22F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 320);

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return result;
}

uint64_t sub_2145E2348()
{
  result = *(v0 + 328);
  v2 = *(v0 + 336);
  return result;
}

uint64_t sub_2145E2354(uint64_t result, char a2)
{
  *(v2 + 328) = result;
  *(v2 + 336) = a2 & 1;
  return result;
}

uint64_t sub_2145E2408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E2444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 56) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 56) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2145E2498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy226_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 112);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2145E2554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 226))
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

uint64_t sub_2145E259C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 226) = 1;
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

    *(result + 226) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18AVConferenceInviteVSg(uint64_t a1)
{
  v1 = *(a1 + 56) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor13RedWoodInviteVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2145E2670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 337))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_2145E26CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 337) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_2145E27F8(uint64_t a1)
{
  *(a1 + 8) = sub_2145E2828();
  result = sub_2145E287C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145E2828()
{
  result = qword_27C9164A0;
  if (!qword_27C9164A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9164A0);
  }

  return result;
}

unint64_t sub_2145E287C()
{
  result = qword_27C9164A8;
  if (!qword_27C9164A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9164A8);
  }

  return result;
}

uint64_t sub_2145E28E0(uint64_t a1, uint64_t a2)
{
  sub_214069AD8();
  v4 = MEMORY[0x277D837D0];
  v5 = (sub_2146D9DB8() + 16);
  if (!*v5)
  {

    goto LABEL_9;
  }

  v6 = &v5[2 * *v5];
  v8 = *v6;
  v7 = v6[1];

  if (v8 == a1 && v7 == a2)
  {

    goto LABEL_12;
  }

  v10 = sub_2146DA6A8();

  if ((v10 & 1) == 0)
  {
LABEL_9:
    sub_2146D9BA8();
    if (qword_280B35360 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (a1 == 11822 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {
    sub_2146D9BA8();
    if (qword_280B35360 == -1)
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2146EA710;

      v12 = sub_2146D9618();
      v14 = v13;
      *(v11 + 56) = v4;
      *(v11 + 64) = sub_213FB2DA0();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      sub_2146D91D8();

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_2145E2B90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145E2BDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E2C38()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145E2CB4(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_2145E2DFC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145E2E98(uint64_t *a1))(uint64_t **a1, char a2)
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

  return sub_2143D01AC;
}

unint64_t sub_2145E2F30(uint64_t a1)
{
  *(a1 + 8) = sub_214307240();
  result = sub_21430775C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E2F90@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_2146D8D48();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  sub_2146D8C88();
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8CE8();
  (*(v31 + 8))(v8, v32);
  sub_214503110(v12);
  (*(v14 + 8))(v17, v13);
  MEMORY[0x216053B20](v4, MEMORY[0x277D83E40]);
  v27 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  MEMORY[0x216053AF0](v23, v18, v27);
  v28 = *(v19 + 8);
  v28(v23, v18);
  sub_2146D8C08();
  return (v28)(v25, v18);
}

uint64_t sub_2145E339C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_2146D8D48();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (qword_27C9031F8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_27CA19E68);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v20, v9, v21);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_27CA19E50);
  MEMORY[0x216053AD0](v22, v9, v21);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v23 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v27 + 8))(v4, v28);
  MEMORY[0x216053B70](v14, v23);
  (*(v26 + 8))(v8, v5);
  v24 = *(v10 + 8);
  v24(v17, v9);
  return (v24)(v19, v9);
}

uint64_t sub_2145E3760@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - v3;
  v5 = sub_2146D8D48();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (qword_27C9031F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19E68);
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v22 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v27 + 8))(v8, v28);
  sub_214503110(v12);
  MEMORY[0x216053B90](v4, v22);
  v23 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v18, v13, v23);
  v24 = *(v14 + 8);
  v24(v18, v13);
  sub_2146D8C08();
  return (v24)(v20, v13);
}

uint64_t sub_2145E3B00@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v42 = sub_2146D8D48();
  v37 = *(v42 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = v31 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  v47 = 2036625250;
  v48 = 0xE400000000000000;
  v20 = sub_2145031D0();
  MEMORY[0x216053AD0](v49, &v47, MEMORY[0x277D837D0], v20);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  v34 = v19;
  MEMORY[0x216053AD0](v17, v12, v21);
  v22 = *(v13 + 8);
  v35 = v13 + 8;
  v36 = v22;
  v33 = v12;
  v22(v17, v12);
  v45 = 0x5F65636976726573;
  v46 = 0xEA00000000006469;
  v23 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](&v47, &v45, MEMORY[0x277D837D0], v20);
  v43 = 0x6974736567677573;
  v44 = 0xEB00000000736E6FLL;
  v31[1] = v20;
  MEMORY[0x216053AD0](&v45, &v43, v23, v20);
  v43 = v49[0];
  v44 = v49[1];
  v32 = v11;
  sub_2146D8BE8();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v25 = *(v37 + 8);
  v26 = v42;
  v25(v3, v42);
  MEMORY[0x216053B70](v17, v24);
  v43 = v47;
  v44 = v48;
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v3, v26);

  v27 = v38;
  v28 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v17, MEMORY[0x277D83E40]);
  v43 = v45;
  v44 = v46;
  sub_2146D8C38();
  sub_2146D8CF8();
  v25(v3, v42);

  MEMORY[0x216053B70](v17, v28);
  v29 = *(v39 + 8);
  v29(v27, v4);
  v29(v41, v4);
  v29(v32, v4);
  return v36(v34, v33);
}

uint64_t sub_2145E4088@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v41 = sub_2146D8D48();
  v39 = *(v41 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v35 = &v32 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v32 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v18, v4, v21);
  v22 = *(v5 + 8);
  v37 = v5 + 8;
  v22(v18, v4);
  v42 = 61;
  v43 = 0xE100000000000000;
  v23 = sub_2145031D0();
  MEMORY[0x216053AF0](v44, &v42, MEMORY[0x277D837D0], v23);
  if (qword_27C903200 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_27C9164B0);
  v32 = v18;
  MEMORY[0x216053AF0](v24, v4, v21);
  v34 = v20;
  sub_2146D8C08();
  v33 = v15;
  v25 = v44[0];
  v26 = v44[1];
  sub_2146D8C38();
  v42 = v25;
  v43 = v26;
  v27 = v35;
  sub_2146D8D08();
  v28 = v36;
  sub_2146D8D08();

  sub_2146D8CD8();
  v22(v28, v4);
  v22(v27, v4);
  v29 = *(v39 + 8);
  v29(v3, v41);
  sub_2146D8C38();
  sub_2146D8D08();
  v30 = v32;
  sub_2146D8D08();
  sub_2146D8CD8();
  v22(v28, v4);
  v22(v27, v4);
  v29(v3, v41);
  v22(v40, v4);
  v22(v33, v4);
  v22(v30, v4);
  return (v22)(v34, v4);
}

uint64_t sub_2145E4594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v5, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2146D8C08();
  return (v9)(v7, v0);
}

uint64_t sub_2145E4718@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_2146D8D48();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_27CA19DC0);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v20, v9, v21);
  if (qword_27C903200 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_27C9164B0);
  MEMORY[0x216053AD0](v22, v9, v21);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v23 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v27 + 8))(v4, v28);
  MEMORY[0x216053B70](v14, v23);
  (*(v26 + 8))(v8, v5);
  v24 = *(v10 + 8);
  v24(v17, v9);
  return (v24)(v19, v9);
}

uint64_t sub_2145E4ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_2146D8D48();
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v46 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v49 = *(v20 - 8);
  v21 = *(v49 + 64);
  v22 = MEMORY[0x28223BE20](a1);
  v52 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v46 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v46 - v31;
  if (*v30 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v20, a2);
  v34 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v33, v20, v34);
  v35 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v36 = sub_2146D8D88();
  (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
  sub_2146D8C38();
  v48 = v26;
  sub_2146D8CE8();
  v37 = *(v59 + 8);
  v59 += 8;
  v50 = v37;
  v56 = v32;
  v37(v9, v58);
  sub_214503110(v13);
  v49 = *(v49 + 8);
  (v49)(v29, v20);
  v38 = v51;
  MEMORY[0x216053B20](v26, v35);
  v39 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v40 = v53;
  MEMORY[0x216053AF0](v38, v53, v39);
  v54 = *(v54 + 8);
  (v54)(v38, v40);
  v47 = v29;
  sub_2146D8C08();
  sub_2146D8C38();
  v41 = v48;
  sub_2146D8D08();
  v42 = v52;
  v43 = v57;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44 = v49;
  (v49)(v42, v20);
  v44(v41, v20);
  v50(v9, v58);
  v44(v47, v20);
  (v54)(v43, v40);
  return (v44)(v56, v20);
}

uint64_t sub_2145E5058@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31[0] = a4;
  v31[1] = a5;
  v8 = sub_2146D8D48();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v31 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v31 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v31 - v24;
  v34 = a1;
  v35 = 0xE100000000000000;
  v26 = sub_2145031D0();
  MEMORY[0x216053AF0](v36, &v34, MEMORY[0x277D837D0], v26);
  if (*a2 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v12, a3);
  v28 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v27, v12, v28);
  v34 = v36[0];
  v35 = v36[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v29 = *(v13 + 8);
  v29(v17, v12);
  v29(v20, v12);
  (*(v32 + 8))(v11, v33);
  v29(v23, v12);
  return (v29)(v25, v12);
}

uint64_t sub_2145E53AC@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_2146D8D48();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v54 = *(v52 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v48 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v40 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v53 = &v40 - v26;
  v57 = 980643187;
  v58 = 0xE400000000000000;
  v45 = sub_2145031D0();
  MEMORY[0x216053AF0](v59, &v57, MEMORY[0x277D837D0], v45);
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v28 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v25, v13, v27);
  v29 = *(v14 + 8);
  v29(v25, v13);
  v30 = sub_2146D8D88();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_2146D8C38();
  sub_2145E5A74(v22);
  sub_2146D8D38();
  v29(v22, v13);
  v31 = *(v55 + 8);
  v55 += 8;
  v50 = v31;
  v31(v4, v56);
  sub_214503110(v8);
  v32 = v47;
  MEMORY[0x216053B10](v25, v28);
  v42 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v33 = v52;
  MEMORY[0x216053AF0](v32, v52, v42);
  v34 = *(v54 + 8);
  v54 += 8;
  v44 = v34;
  v34(v32, v33);
  v57 = v59[0];
  v58 = v59[1];
  v43 = v25;
  sub_2146D8C08();

  sub_2146D8C38();
  v35 = v46;
  sub_2146D8D08();
  v36 = v48;
  sub_2146D8D08();
  v41 = v22;
  sub_2146D8CD8();
  v29(v36, v13);
  v29(v35, v13);
  v50(v4, v56);
  sub_2146D8C38();
  sub_2146D8D08();
  v37 = v51;
  v38 = v52;
  sub_2146D8D08();
  sub_2146D8CD8();
  v29(v36, v13);
  v29(v35, v13);
  v50(v4, v56);
  v29(v41, v13);
  v29(v43, v13);
  v44(v37, v38);
  return (v29)(v53, v13);
}

uint64_t sub_2145E5A74@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_2146D8D48();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v23 - v15;
  MEMORY[0x28223BE20](v14);
  v23[0] = v23 - v17;
  v26 = 63;
  v27 = 0xE100000000000000;
  v18 = sub_2145031D0();
  MEMORY[0x216053AF0](v28, &v26, MEMORY[0x277D837D0], v18);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v16, v5, v19);
  v20 = *(v6 + 8);
  v20(v16, v5);
  v26 = v28[0];
  v27 = v28[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v21 = v23[0];
  sub_2146D8D08();
  sub_2146D8CD8();
  v20(v10, v5);
  v20(v13, v5);
  (*(v24 + 8))(v4, v25);
  v20(v16, v5);
  return (v20)(v21, v5);
}

unint64_t sub_2145E5EB4(uint64_t a1)
{
  *(a1 + 8) = sub_2142FEA74();
  result = sub_2142FECFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145E5EF4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E6064@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E61D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145E6344@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2145E64B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145E6500(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E655C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

__n128 sub_2145E65B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6BC(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145E661C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E6674(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[7].n128_u64[1];
  v7 = v1[8].n128_i64[0];
  v8 = v1[8].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u64[1] = v4;
  v1[9].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E66DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E6734(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v8 = *(v1 + 176);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 152) = *a1;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  return result;
}

uint64_t sub_2145E679C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  *a1 = *(v1 + 192);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E67F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[12].n128_u64[1];
  v7 = v1[13].n128_i64[0];
  v8 = v1[13].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v3;
  v1[13].n128_u64[1] = v4;
  v1[14].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145E685C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  v5 = *(v1 + 264);
  *a1 = *(v1 + 232);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145E68B4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 240);
  v7 = *(v1 + 248);
  v8 = *(v1 + 256);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 232) = *a1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v4;
  *(v1 + 264) = v5;
  return result;
}

uint64_t sub_2145E691C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145E6998()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_21402D9F8(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6A20()
{
  v1 = *(v0 + 136);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 128);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6AA8()
{
  v1 = *(v0 + 176);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 168);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6B30()
{
  v1 = *(v0 + 216);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 208);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6BB8()
{
  v1 = *(v0 + 256);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 248);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145E6C40(uint64_t a1, uint64_t a2)
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

uint64_t (*sub_2145E6D88(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145E6E24(uint64_t *a1))(uint64_t **a1, char a2)
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

  return sub_2143D01AC;
}

uint64_t sub_2145E6EBC(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_2145E6F88(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 56);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_2143A2164;
  }

  return result;
}

void (*sub_2145E7028(uint64_t *a1))(uint64_t **a1, char a2)
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
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2143A2420;
}

uint64_t sub_2145E70F8()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_2145E7104(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t sub_2145E7134()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_2145E7164(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_2145E71BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 128);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2145E7230(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145E72E0(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E73AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 136);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 128);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E744C;
  }

  return result;
}

uint64_t sub_2145E744C(uint64_t *a1, char a2)
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

uint64_t sub_2145E758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  *a2 = *(a1 + 112);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E75E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  v10 = *(a2 + 136);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 144) = v7;
  return result;
}

void (*sub_2145E7668(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E7708;
}

void sub_2145E7708(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 120);
  v9 = *(v3 + 128);
  v11 = *(v3 + 136);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 120);

    sub_214032564(v9, v11);
    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v7;
    *(v3 + 136) = v6;
    *(v3 + 144) = v8;
  }

  free(v2);
}

uint64_t sub_2145E77E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 168);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2145E785C(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145E790C(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E79D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 176);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 168);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E7A78;
  }

  return result;
}

uint64_t sub_2145E7A78(uint64_t *a1, char a2)
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

uint64_t sub_2145E7BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  *a2 = *(a1 + 152);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E7C0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 160);
  v9 = *(a2 + 168);
  v10 = *(a2 + 176);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 152) = v4;
  *(a2 + 160) = v3;
  *(a2 + 168) = v5;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  return result;
}

void (*sub_2145E7C94(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  *v4 = *(v1 + 152);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E7D34;
}

void sub_2145E7D34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 160);
  v9 = *(v3 + 168);
  v11 = *(v3 + 176);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 160);

    sub_214032564(v9, v11);
    *(v3 + 152) = v5;
    *(v3 + 160) = v4;
    *(v3 + 168) = v7;
    *(v3 + 176) = v6;
    *(v3 + 184) = v8;
  }

  free(v2);
}

uint64_t sub_2145E7E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 216);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 208);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2145E7E88(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145E7F38(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E8004(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 216);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 208);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E80A4;
  }

  return result;
}

uint64_t sub_2145E80A4(uint64_t *a1, char a2)
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

uint64_t sub_2145E81E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  v4 = *(a1 + 216);
  v5 = *(a1 + 224);
  *a2 = *(a1 + 192);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E8238(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v10 = *(a2 + 216);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 192) = v4;
  *(a2 + 200) = v3;
  *(a2 + 208) = v5;
  *(a2 + 216) = v6;
  *(a2 + 224) = v7;
  return result;
}

void (*sub_2145E82C0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  *v4 = *(v1 + 192);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E8360;
}

void sub_2145E8360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 200);
  v9 = *(v3 + 208);
  v11 = *(v3 + 216);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 200);

    sub_214032564(v9, v11);
    *(v3 + 192) = v5;
    *(v3 + 200) = v4;
    *(v3 + 208) = v7;
    *(v3 + 216) = v6;
    *(v3 + 224) = v8;
  }

  free(v2);
}

uint64_t sub_2145E8440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 256);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 248);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2145E84B4(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145E8564(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145E8630(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 256);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 248);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145E86D0;
  }

  return result;
}

uint64_t sub_2145E86D0(uint64_t *a1, char a2)
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

uint64_t sub_2145E8810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 240);
  v3 = *(a1 + 248);
  v4 = *(a1 + 256);
  v5 = *(a1 + 264);
  *a2 = *(a1 + 232);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145E8864(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 240);
  v9 = *(a2 + 248);
  v10 = *(a2 + 256);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 232) = v4;
  *(a2 + 240) = v3;
  *(a2 + 248) = v5;
  *(a2 + 256) = v6;
  *(a2 + 264) = v7;
  return result;
}

void (*sub_2145E88EC(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v8 = *(v1 + 264);
  *v4 = *(v1 + 232);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145E898C;
}

void sub_2145E898C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 240);
  v9 = *(v3 + 248);
  v11 = *(v3 + 256);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v7;
    *(v3 + 256) = v6;
    *(v3 + 264) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 240);

    sub_214032564(v9, v11);
    *(v3 + 232) = v5;
    *(v3 + 240) = v4;
    *(v3 + 248) = v7;
    *(v3 + 256) = v6;
    *(v3 + 264) = v8;
  }

  free(v2);
}

uint64_t sub_2145E8A6C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x109uLL);
  memcpy(a1, v1, 0x109uLL);
  return sub_2142FB7A4(__dst, v4);
}

void *sub_2145E8AC0(const void *a1)
{
  memcpy(__dst, v1, 0x109uLL);
  sub_2142FB6FC(__dst);
  return memcpy(v1, a1, 0x109uLL);
}

uint64_t sub_2145E8B30@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NicknameInformationMessage() + 20);

  return sub_21405CD6C(v3, a1);
}

uint64_t type metadata accessor for NicknameInformationMessage()
{
  result = qword_27C916508;
  if (!qword_27C916508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2145E8BC0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NicknameInformationMessage() + 20);

  return sub_21405CDD8(a1, v3);
}

unint64_t sub_2145E8C4C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FB854();
  result = sub_2142FB8A8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E8C7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145E8CE4(&qword_27C9164F8);
  result = sub_2145E8CE4(&qword_27C916500);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145E8CE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NicknameInformationMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2145E8D30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
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

uint64_t sub_2145E8D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145E8E34()
{
  result = type metadata accessor for Metadata();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2145E8EB0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E8FD8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E90C4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E91AC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E92CC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9400()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9508()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9610()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E9678(char a1)
{
  sub_2146DA958();
  sub_21405019C(*&a420v_0[8 * a1], 0xE400000000000000);
  sub_2146DA998();
  return sub_2146DA9B8();
}

uint64_t sub_2145E96D4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2145E97E0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t MBDRichCard.dictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = v0[1];
  v25 = *v0;
  v26 = v2;
  v27 = v0[2];
  v28 = *(v0 + 48);
  v4 = *(v0 + 42);
  v3 = *(v0 + 43);
  v6 = *(v0 + 47);
  v5 = *(v0 + 48);
  v7 = *(v0 + 50);
  v23 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_214737980;
  *(v8 + 32) = 0x74756F79616CLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_21405B7F4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
  *(v8 + 48) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = 0x616964656DLL;
  *(v8 + 88) = 0xE500000000000000;
  memcpy(__dst, v1 + 56, 0x101uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__dst) == 1)
  {
    v11 = 0;
    v12 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  else
  {
    memcpy(v24, __dst, 0x101uLL);
    v11 = sub_2144158B8();
    v12 = v10;
  }

  *(v8 + 96) = v11;
  *(v8 + 120) = v12;
  *(v8 + 128) = 0x656C746974;
  *(v8 + 136) = 0xE500000000000000;
  if (v3 == 1)
  {
    goto LABEL_16;
  }

  if (v3)
  {
    v13 = MEMORY[0x277D837D0];
    v14 = v4;
    v15 = v3;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v14;
  *(v8 + 152) = v15;
  *(v8 + 168) = v13;
  *(v8 + 176) = 0x6373654464726163;
  *(v8 + 184) = 0xEF6E6F6974706972;
  if (v5 == 1)
  {
LABEL_16:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v16 = MEMORY[0x277D837D0];
      v17 = v6;
      v18 = v5;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v16 = 0;
      *(v8 + 208) = 0;
    }

    *(v8 + 192) = v17;
    *(v8 + 200) = v18;
    *(v8 + 216) = v16;
    *(v8 + 224) = 0x7473694C70696863;
    *(v8 + 232) = 0xE800000000000000;
    if (v7)
    {
      v24[0] = v7;
      LOBYTE(v24[1]) = v23 & 1;
      sub_213FDC9D0(v4, v3);
      sub_213FDC9D0(v6, v5);
      v19 = MBDChipList.dictionaryRepresentation.getter();
      *(v8 + 264) = v10;
      *(v8 + 240) = v19;
    }

    else
    {
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      sub_213FDC9D0(v4, v3);
      sub_213FDC9D0(v6, v5);
    }

    v20 = sub_214045690(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = sub_2140418B8(v20);

    return v21;
  }

  return result;
}

uint64_t sub_2145E9C1C()
{
  *v0;
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2145E9D18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2145EB038();
  *a2 = result;
  return result;
}

void sub_2145E9D48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x74756F79616CLL;
  v5 = 0xEF6E6F6974706972;
  v6 = 0x6373654464726163;
  v7 = 0xE800000000000000;
  v8 = 0x7473694C70696863;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000214788010;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x616964656DLL;
  if (v2 != 1)
  {
    v9 = 0x656C746974;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2145E9E0C()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x6373654464726163;
  v4 = 0x7473694C70696863;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616964656DLL;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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