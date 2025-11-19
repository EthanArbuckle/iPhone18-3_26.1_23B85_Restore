uint64_t sub_21BC1BC58()
{
  v1 = *(v0 + 232);
  *(v0 + 376) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BCE4, v3, v2);
}

uint64_t sub_21BC1BCE4()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);

  if (v2)
  {
    v3 = *(v0 + 368);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_21BE26CAC();

    v5 = *(v0 + 112);
    if (*(v5 + 16) && (v6 = sub_21BBB31A4(*(v0 + 336)), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);

      v9 = *(v0 + 368);
      if (v8)
      {
        v10 = *(v0 + 336);
        v11 = *(v0 + 312);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21BE26CAC();

        v12 = *(v0 + 120);
        *(v0 + 128) = v10;
        v13 = swift_task_alloc();
        *(v13 + 16) = v0 + 128;
        v14 = sub_21BC9DAC4(sub_21BC1E390, v13, v12);

        goto LABEL_8;
      }
    }

    else
    {
      v15 = *(v0 + 368);
    }
  }

  v14 = 0;
LABEL_8:
  *(v0 + 424) = v14 & 1;

  return MEMORY[0x2822009F8](sub_21BC1BEB4, 0, 0);
}

uint64_t sub_21BC1BEB4()
{
  v1 = *(v0 + 336);
  *(v0 + 425) = [v1 hasAskToBuyEnabled];
  *(v0 + 426) = sub_21BC52A54(v1) & 1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_21BC1BF44, 0, 0);
}

uint64_t sub_21BC1BF44()
{
  v1 = [*(v0 + 336) dsid];
  *(v0 + 384) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 392) = v6;
    *(v6 + 16) = v2;
    v7 = *(MEMORY[0x277CE4600] + 4);
    v8 = v2;
    v9 = swift_task_alloc();
    *(v0 + 400) = v9;
    *v9 = v0;
    v9[1] = sub_21BC1C0D4;
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);

    return MEMORY[0x2821372C0](v10, v3, v5, &unk_21BE37418, v6, v11);
  }

  else
  {
    sub_21BC1E158();
    v12 = swift_allocError();
    *v13 = 1;
    swift_willThrow();
    *(v0 + 416) = v12;
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);

    return MEMORY[0x2822009F8](sub_21BC1C800, v14, v15);
  }
}

uint64_t sub_21BC1C0D4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_21BC1C5A8;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_21BC1C1F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21BC1C1F0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_21BC1C254, v1, v2);
}

uint64_t sub_21BC1C254()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_21BB3A4CC(v2, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BC1E320(v1, v2);
  v3 = *(v0 + 408);
  v4 = *(v0 + 144);
  v5 = v4[5];
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v8 = *(v0 + 320);
  v9 = *(v0 + 224);
  if ((*(v0 + 426) & 1) == 0 && (*(v0 + 425) & 1) == 0 && (*(v0 + 424) & 1) == 0)
  {
    v10 = (v0 + 160);
    v11 = *(v0 + 160);
    sub_21BC1E1AC(v9, &v11[v5]);
    v11[v4[8]] = 2;
    *v11 = 0;
    *&v11[v4[6]] = v7;
    *&v11[v4[7]] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 320);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v10 = (v0 + 168);
  v14 = *(v0 + 168);
  sub_21BC1E1AC(v9, &v14[v5]);
  v14[v4[8]] = 2;
  *v14 = 1;
  *&v14[v4[6]] = v7;
  *&v14[v4[7]] = v6;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 320);
  if ((v15 & 1) == 0)
  {
LABEL_5:
    v13 = sub_21BBBD1C8(0, v13[2] + 1, 1, v13);
  }

LABEL_7:
  v17 = v13[2];
  v16 = v13[3];
  if (v17 >= v16 >> 1)
  {
    v13 = sub_21BBBD1C8(v16 > 1, v17 + 1, 1, v13);
  }

  v18 = *v10;
  v19 = *(v0 + 344);
  v20 = *(v0 + 304);
  v21 = *(v0 + 224);
  v22 = *(v0 + 152);

  sub_21BB3A4CC(v21, &qword_27CDB9720, &unk_21BE39F00);
  v13[2] = v17 + 1;
  v23 = sub_21BC1E21C(v18, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17);
  if (v19 != v20)
  {
    v36 = *(v0 + 344);
    *(v0 + 320) = v13;
    *(v0 + 328) = v36;
    *(v0 + 312) = v3;
    v37 = *(v0 + 296);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x21CF047C0](v36);
    }

    else
    {
      if (v36 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v23 = *(v37 + 8 * v36 + 32);
    }

    *(v0 + 336) = v23;
    *(v0 + 344) = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      v38 = *(v0 + 224);
      v39 = sub_21BE25D1C();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v23 = sub_21BC1BA44;
      v37 = 0;
      v24 = 0;

      return MEMORY[0x2822009F8](v23, v37, v24);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return MEMORY[0x2822009F8](v23, v37, v24);
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 280);
  v27 = *(v0 + 264);
  v28 = *(v0 + 240);
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 168);
  v40 = *(v0 + 160);

  sub_21BC852D8();

  v34 = *(v0 + 8);

  return v34(v13);
}

uint64_t sub_21BC1C5A8()
{
  v29 = v0;
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[25];

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v1;
  v9 = v1;
  v10 = sub_21BE29A5C();
  v12 = v11;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  v13 = sub_21BE28A2C();
  v15 = v14;
  v16 = sub_21BE26A2C();
  v17 = sub_21BE28FDC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[51];
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    v22 = sub_21BB3D81C(v13, v15, &v28);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_21BB35000, v16, v17, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  else
  {
  }

  v23 = v0[51];
  v24 = v0[48];
  (*(v0[23] + 8))(v0[25], v0[22]);
  swift_willThrow();

  v0[52] = v0[51];
  v25 = v0[31];
  v26 = v0[32];

  return MEMORY[0x2822009F8](sub_21BC1C800, v25, v26);
}

uint64_t sub_21BC1C800()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 192);
  sub_21BE261BC();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 416);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v4, v5, "Unable to get last modified date because of %@", v8, 0xCu);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  v12 = *(v0 + 144);
  v13 = v12[5];
  v14 = *(v0 + 328);
  v15 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 224);
  if ((*(v0 + 426) & 1) == 0 && (*(v0 + 425) & 1) == 0 && (*(v0 + 424) & 1) == 0)
  {
    v18 = (v0 + 160);
    v19 = *(v0 + 160);
    sub_21BC1E1AC(v17, &v19[v13]);
    v19[v12[8]] = 2;
    *v19 = 0;
    *&v19[v12[6]] = v15;
    *&v19[v12[7]] = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v0 + 320);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v18 = (v0 + 168);
  v22 = *(v0 + 168);
  sub_21BC1E1AC(v17, &v22[v13]);
  v22[v12[8]] = 2;
  *v22 = 1;
  *&v22[v12[6]] = v15;
  *&v22[v12[7]] = v14;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 320);
  if ((v23 & 1) == 0)
  {
LABEL_8:
    v21 = sub_21BBBD1C8(0, v21[2] + 1, 1, v21);
  }

LABEL_10:
  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_21BBBD1C8(v24 > 1, v25 + 1, 1, v21);
  }

  v26 = *v18;
  v27 = *(v0 + 344);
  v28 = *(v0 + 304);
  v29 = *(v0 + 224);
  v30 = *(v0 + 152);

  sub_21BB3A4CC(v29, &qword_27CDB9720, &unk_21BE39F00);
  v21[2] = v25 + 1;
  v31 = sub_21BC1E21C(v26, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
  if (v27 != v28)
  {
    v44 = *(v0 + 344);
    *(v0 + 320) = v21;
    *(v0 + 328) = v44;
    *(v0 + 312) = 0;
    v45 = *(v0 + 296);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CF047C0](v44);
    }

    else
    {
      if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v31 = *(v45 + 8 * v44 + 32);
    }

    *(v0 + 336) = v31;
    *(v0 + 344) = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
      v46 = *(v0 + 224);
      v47 = sub_21BE25D1C();
      (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
      v31 = sub_21BC1BA44;
      v45 = 0;
      v32 = 0;

      return MEMORY[0x2822009F8](v31, v45, v32);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v31, v45, v32);
  }

  v33 = *(v0 + 296);
  v34 = *(v0 + 280);
  v35 = *(v0 + 264);
  v36 = *(v0 + 240);
  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v40 = *(v0 + 192);
  v39 = *(v0 + 200);
  v41 = *(v0 + 168);
  v48 = *(v0 + 160);

  sub_21BC852D8();

  v42 = *(v0 + 8);

  return v42(v21);
}

uint64_t sub_21BC1CC40()
{
  v1 = v0[33];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];

  sub_21BC852D8();

  v9 = v0[1];
  v10 = v0[36];

  return v9();
}

uint64_t sub_21BC1CD08()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB004();
}

void sub_21BC1CDCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE374C8, v9);
}

uint64_t sub_21BC1CEFC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7330));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDB7338));
  v1 = qword_27CDB7340;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_21BC1CFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParentalControlItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC1CFD8(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7328));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7330));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDB7338));
  v2 = qword_27CDB7340;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_21BC1D0A0()
{
  sub_21BC1D140();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BC1D140()
{
  if (!qword_27CDB7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7360, &unk_21BE37290);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7358);
    }
  }
}

void sub_21BC1D1F4()
{
  sub_21BC1D2A0();
  if (v0 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BC1D2A0()
{
  if (!qword_27CDB7378)
  {
    sub_21BE25D1C();
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7378);
    }
  }
}

uint64_t sub_21BC1D2F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

unint64_t sub_21BC1D364()
{
  v1 = type metadata accessor for ParentalControlDataItem(0);
  v2 = *(v0 + *(v1 + 24));
  v7 = *(v0 + *(v1 + 28));
  sub_21BE2992C();
  v3 = sub_21BE291AC();
  v5 = v4;

  MEMORY[0x21CF03CA0](v3, v5);

  return 0xD000000000000013;
}

uint64_t sub_21BC1D414(char *a1)
{
  v3 = sub_21BE25E5C();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25E6C();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_21BE25D1C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v43 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v26 = type metadata accessor for ParentalControlDataItem(0);
  sub_21BC1E1AC(v1 + *(v26 + 20), v15);
  v27 = v17[6];
  if (v27(v15, 1, v16) == 1)
  {
    sub_21BB3A4CC(v15, &qword_27CDB9720, &unk_21BE39F00);
  }

  else
  {
    v39 = a1;
    v37 = v17[4];
    v37(v25, v15, v16);
    v40 = v23;
    sub_21BE25D0C();
    v38 = v27;
    v28 = v41;
    sub_21BE25E4C();
    v29 = v46;
    v30 = v42;
    (*(v46 + 104))(v42, *MEMORY[0x277CC9998], v3);
    v39 = v25;
    sub_21BE25E3C();
    (*(v29 + 8))(v30, v3);
    v31 = v38;
    (*(v44 + 8))(v28, v45);
    if (v31(v13, 1, v16) == 1)
    {
      v32 = v43;
      sub_21BE25C8C();
      if (v31(v13, 1, v16) != 1)
      {
        sub_21BB3A4CC(v13, &qword_27CDB9720, &unk_21BE39F00);
      }
    }

    else
    {
      v32 = v43;
      v37(v43, v13, v16);
    }

    v33 = v40;
    v34 = sub_21BE25CBC();
    v35 = v17[1];
    v35(v32, v16);
    v35(v33, v16);
    v35(v39, v16);
    if (v34)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21BC1D89C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1D930(uint64_t a1, uint64_t a2)
{
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();
}

uint64_t sub_21BC1D9B8(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BC1D364();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1DA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC1D364();
  v8 = v7;
  if (v6 == sub_21BC1D364() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 32);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

unint64_t sub_21BC1DB5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC1D364();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BC1DBCC(uint64_t a1)
{
  *(a1 + 8) = sub_21BC1DC50(&qword_27CDB7388, type metadata accessor for ParentalControlDataItem);
  result = sub_21BC1DC50(&qword_27CDB7390, type metadata accessor for ParentalControlDataItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC1DC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC1DCB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlDataItem(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BC1E044(v1, v6);
  v7 = type metadata accessor for ParentalControlView();
  v8 = (a1 + v7[5]);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC1DC50(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  *v8 = sub_21BE2727C();
  v8[1] = v9;
  v10 = v7[6];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a1 + v10) = [objc_opt_self() bundleForClass_];
  v12 = v7[8];
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v13 = (a1 + v12);
  type metadata accessor for FamilyPictureStore(0);
  sub_21BC1DC50(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  *v13 = sub_21BE270CC();
  v13[1] = v14;
  sub_21BC1E044(v6, a1);
  v15 = *&v6[*(v3 + 24)];
  sub_21BC1E0A8(v6);
  type metadata accessor for AgeBasedPresetFlow();
  result = swift_allocObject();
  *(result + 16) = v15;
  *(a1 + v7[7]) = result;
  return result;
}

uint64_t sub_21BC1DEC8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC1DC50(&qword_27CDB7398, type metadata accessor for ParentalControlItemProvider);
  result = sub_21BC1DC50(&qword_27CDB5FE0, type metadata accessor for ParentalControlItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC1DF4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC1DFCC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BC1E044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E0A8(uint64_t a1)
{
  v2 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC1E104(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21BBE66D8();
  return sub_21BE2940C() & 1;
}

unint64_t sub_21BC1E158()
{
  result = qword_27CDB73A8;
  if (!qword_27CDB73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB73A8);
  }

  return result;
}

uint64_t sub_21BC1E1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParentalControlDataItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BC5228C(a1, v4);
}

uint64_t sub_21BC1E320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC1E390(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_21BBE66D8();
  return sub_21BE2940C() & 1;
}

uint64_t sub_21BC1E3E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC1CD08();
}

unint64_t sub_21BC1E49C()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v94 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE290CC();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v1;
    v93 = v0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v0 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v7 = sub_21BE2951C();
  v92 = v1;
  v93 = v0;
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v1 = v5 & 0xC000000000000001;
  v0 = MEMORY[0x277D84F90];
  do
  {
    v9 = v8;
    while (1)
    {
      if (v1)
      {
        v10 = MEMORY[0x21CF047C0](v9, v5);
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v5 + 8 * v9 + 32);
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v11 = v10;
      v12 = [v11 shortName];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    v13 = v12;
    v14 = sub_21BE28A0C();
    v91 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_21BBBC990(0, *(v0 + 16) + 1, 1, v0);
    }

    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    if (v17 >= v16 >> 1)
    {
      v0 = sub_21BBBC990((v16 > 1), v17 + 1, 1, v0);
    }

    *(v0 + 16) = v17 + 1;
    v18 = v0 + 16 * v17;
    v19 = v91;
    *(v18 + 32) = v14;
    *(v18 + 40) = v19;
  }

  while (v8 != v7);
LABEL_24:

  v20 = *MEMORY[0x277D07F40];
  v22 = v92;
  v21 = v93;
  v23 = v94;
  v91 = *(v92 + 104);
  v91(v94, v20, v93);
  v24 = MEMORY[0x21CF01150](v23);
  v25 = *(v22 + 8);
  v25(v23, v21);
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_21BE295EC();

  if (v24)
  {
    v96 = 0xD00000000000002CLL;
    v97 = 0x800000021BE58360;
  }

  else
  {
    v96 = 0xD000000000000027;
    v97 = 0x800000021BE582C0;
  }

  v95 = *(v0 + 16);
  v26 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v26);

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v29 = *(v0 + 16);
  if (v29 <= 2)
  {
    switch(v29)
    {
      case 0:

        return 0;
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_21BE32770;
        *(v74 + 56) = MEMORY[0x277D837D0];
        result = sub_21BBBEFE8();
        *(v74 + 64) = result;
        if (*(v0 + 16))
        {
          v76 = *(v0 + 32);
          v75 = *(v0 + 40);

          *(v74 + 32) = v76;
          *(v74 + 40) = v75;
          type metadata accessor for ConfirmChildAgeViewModel();
          v77 = swift_getObjCClassFromMetadata();
          v78 = objc_opt_self();

          v39 = [v78 bundleForClass_];
          goto LABEL_61;
        }

        goto LABEL_68;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_21BE33260;
        v31 = MEMORY[0x277D837D0];
        *(v30 + 56) = MEMORY[0x277D837D0];
        result = sub_21BBBEFE8();
        *(v30 + 64) = result;
        v33 = *(v0 + 16);
        if (v33)
        {
          v34 = *(v0 + 40);
          *(v30 + 32) = *(v0 + 32);
          *(v30 + 40) = v34;
          *(v30 + 96) = v31;
          *(v30 + 104) = result;
          if (v33 != 1)
          {
            v36 = *(v0 + 48);
            v35 = *(v0 + 56);

            *(v30 + 72) = v36;
            *(v30 + 80) = v35;
            type metadata accessor for ConfirmChildAgeViewModel();
            v37 = swift_getObjCClassFromMetadata();
            v38 = objc_opt_self();

            v39 = [v38 bundleForClass_];
LABEL_61:
            v89 = v39;
            sub_21BE2599C();

            v51 = sub_21BE289DC();
            goto LABEL_62;
          }

          goto LABEL_72;
        }

        goto LABEL_66;
    }

    goto LABEL_48;
  }

  if (v29 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_21BE362A0;
    v53 = MEMORY[0x277D837D0];
    *(v52 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v52 + 64) = result;
    v54 = *(v0 + 16);
    if (v54)
    {
      v55 = result;
      result = *(v0 + 40);
      *(v52 + 32) = *(v0 + 32);
      *(v52 + 40) = result;
      *(v52 + 96) = v53;
      *(v52 + 104) = v55;
      if (v54 != 1)
      {
        v56 = *(v0 + 56);
        *(v52 + 72) = *(v0 + 48);
        *(v52 + 80) = v56;
        *(v52 + 136) = v53;
        *(v52 + 144) = v55;
        if (v54 >= 3)
        {
          v58 = *(v0 + 64);
          v57 = *(v0 + 72);

          *(v52 + 112) = v58;
          *(v52 + 120) = v57;
          type metadata accessor for ConfirmChildAgeViewModel();
          v59 = swift_getObjCClassFromMetadata();
          v60 = objc_opt_self();

          v39 = [v60 bundleForClass_];
          goto LABEL_61;
        }

        goto LABEL_75;
      }

      goto LABEL_70;
    }

    __break(1u);
    goto LABEL_65;
  }

  if (v29 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_21BE374E0;
    v80 = MEMORY[0x277D837D0];
    *(v79 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v79 + 64) = result;
    v81 = *(v0 + 16);
    if (v81)
    {
      v82 = result;
      result = *(v0 + 40);
      *(v79 + 32) = *(v0 + 32);
      *(v79 + 40) = result;
      *(v79 + 96) = v80;
      *(v79 + 104) = v82;
      if (v81 != 1)
      {
        v83 = *(v0 + 56);
        *(v79 + 72) = *(v0 + 48);
        *(v79 + 80) = v83;
        *(v79 + 136) = v80;
        *(v79 + 144) = v82;
        if (v81 >= 3)
        {
          v84 = *(v0 + 72);
          *(v79 + 112) = *(v0 + 64);
          *(v79 + 120) = v84;
          *(v79 + 176) = v80;
          *(v79 + 184) = v82;
          if (v81 != 3)
          {
            v86 = *(v0 + 80);
            v85 = *(v0 + 88);

            *(v79 + 152) = v86;
            *(v79 + 160) = v85;
            type metadata accessor for ConfirmChildAgeViewModel();
            v87 = swift_getObjCClassFromMetadata();
            v88 = objc_opt_self();

            v39 = [v88 bundleForClass_];
            goto LABEL_61;
          }

          goto LABEL_81;
        }

        goto LABEL_78;
      }

      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (v29 != 5)
  {
LABEL_48:

    v61 = v94;
    v91(v94, v20, v21);
    MEMORY[0x21CF01150](v61);
    v25(v61, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_21BE374D0;
    v63 = MEMORY[0x277D837D0];
    *(v62 + 56) = MEMORY[0x277D837D0];
    result = sub_21BBBEFE8();
    *(v62 + 64) = result;
    v64 = *(v0 + 16);
    if (v64)
    {
      v65 = result;
      result = *(v0 + 40);
      *(v62 + 32) = *(v0 + 32);
      *(v62 + 40) = result;
      *(v62 + 96) = v63;
      *(v62 + 104) = v65;
      if (v64 != 1)
      {
        v66 = *(v0 + 56);
        *(v62 + 72) = *(v0 + 48);
        *(v62 + 80) = v66;
        *(v62 + 136) = v63;
        *(v62 + 144) = v65;
        if (v64 >= 3)
        {
          v67 = *(v0 + 72);
          *(v62 + 112) = *(v0 + 64);
          *(v62 + 120) = v67;
          *(v62 + 176) = v63;
          *(v62 + 184) = v65;
          if (v64 != 3)
          {
            v68 = *(v0 + 88);
            *(v62 + 152) = *(v0 + 80);
            *(v62 + 160) = v68;
            *(v62 + 216) = v63;
            *(v62 + 224) = v65;
            if (v64 >= 5)
            {
              v70 = *(v0 + 96);
              v69 = *(v0 + 104);

              *(v62 + 192) = v70;
              *(v62 + 200) = v69;
              type metadata accessor for ConfirmChildAgeViewModel();
              v71 = swift_getObjCClassFromMetadata();
              v72 = objc_opt_self();

              v73 = [v72 bundleForClass_];
              sub_21BE2599C();

              v51 = sub_21BE289DC();
LABEL_62:

              return v51;
            }

            goto LABEL_82;
          }

          goto LABEL_79;
        }

        goto LABEL_76;
      }

      goto LABEL_71;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_21BE374D0;
  v41 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  result = sub_21BBBEFE8();
  *(v40 + 64) = result;
  v42 = *(v0 + 16);
  if (!v42)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v43 = result;
  result = *(v0 + 40);
  *(v40 + 32) = *(v0 + 32);
  *(v40 + 40) = result;
  *(v40 + 96) = v41;
  *(v40 + 104) = v43;
  if (v42 == 1)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v44 = *(v0 + 56);
  *(v40 + 72) = *(v0 + 48);
  *(v40 + 80) = v44;
  *(v40 + 136) = v41;
  *(v40 + 144) = v43;
  if (v42 < 3)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v45 = *(v0 + 72);
  *(v40 + 112) = *(v0 + 64);
  *(v40 + 120) = v45;
  *(v40 + 176) = v41;
  *(v40 + 184) = v43;
  if (v42 == 3)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v46 = *(v0 + 88);
  *(v40 + 152) = *(v0 + 80);
  *(v40 + 160) = v46;
  *(v40 + 216) = v41;
  *(v40 + 224) = v43;
  if (v42 >= 5)
  {
    v48 = *(v0 + 96);
    v47 = *(v0 + 104);

    *(v40 + 192) = v48;
    *(v40 + 200) = v47;
    type metadata accessor for ConfirmChildAgeViewModel();
    v49 = swift_getObjCClassFromMetadata();
    v50 = objc_opt_self();

    v39 = [v50 bundleForClass_];
    goto LABEL_61;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_21BC1F08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21BE25FCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE2917C();
  v12 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x277D07F40], v5);
  v13 = MEMORY[0x21CF01150](v9);
  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21BE362A0;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_21BBBEFE8();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = a2;
    *(v14 + 80) = a3;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = v10;
    *(v14 + 120) = v12;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();

    v19 = [v18 bundleForClass_];
    sub_21BE2599C();
  }

  else
  {
    String.rebrand.getter(0xD000000000000018, 0x800000021BE58260);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21BE362A0;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v22 = sub_21BBBEFE8();
    *(v20 + 32) = v10;
    *(v20 + 40) = v12;
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 64) = v22;
    *(v20 + 72) = a2;
    *(v20 + 80) = a3;
    *(v20 + 136) = v21;
    *(v20 + 144) = v22;
    *(v20 + 112) = v10;
    *(v20 + 120) = v12;
    type metadata accessor for ConfirmChildAgeViewModel();
    v23 = swift_getObjCClassFromMetadata();
    v24 = objc_opt_self();

    v25 = [v24 bundleForClass_];
    sub_21BE2599C();
  }

  v26 = sub_21BE289DC();

  return v26;
}

uint64_t sub_21BC1F420()
{
  v0 = sub_21BE2917C();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE374E0;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_21BBBEFE8();
  *(v3 + 32) = v0;
  *(v3 + 40) = v2;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 64) = v5;
  *(v3 + 72) = v0;
  *(v3 + 80) = v2;
  *(v3 + 136) = v4;
  *(v3 + 144) = v5;
  *(v3 + 112) = v0;
  *(v3 + 120) = v2;
  *(v3 + 176) = v4;
  *(v3 + 184) = v5;
  *(v3 + 152) = v0;
  *(v3 + 160) = v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  swift_bridgeObjectRetain_n();

  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  v9 = sub_21BE289DC();

  return v9;
}

uint64_t sub_21BC1F5A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_21BBBEFE8();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  v8 = sub_21BE289DC();

  return v8;
}

uint64_t sub_21BC1F70C(uint64_t a1)
{
  v59 = a1;
  v60 = sub_21BE25D1C();
  v58 = *(v60 - 8);
  v1 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21BE2595C();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE25E6C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE25E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73B8, &qword_21BE374F8);
  v12 = sub_21BE25E5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = 2 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE362A0;
  v18 = v17 + v15;
  v19 = *(v13 + 104);
  v19(v18, *MEMORY[0x277CC9988], v12);
  v20 = v18 + v14;
  v21 = v11;
  v19(v20, *MEMORY[0x277CC9998], v12);
  v19(v18 + v16, *MEMORY[0x277CC9968], v12);
  sub_21BC0961C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21BE25D0C();
  sub_21BE25E0C();

  (*(v58 + 8))(v3, v60);
  v22 = sub_21BE2593C();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_21BE2594C();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  result = sub_21BE2592C();
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = result;
  }

  v31 = v30 * 0.143;
  if (COERCE__INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v31 < 9.22337204e18)
  {
    if (v24 >= 1)
    {
      goto LABEL_14;
    }

    if (v27 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D83B88];
      *(v38 + 16) = xmmword_21BE32770;
      v40 = MEMORY[0x277D83C10];
      *(v38 + 56) = v39;
      *(v38 + 64) = v40;
      *(v38 + 32) = v27;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v42 = objc_opt_self();

      v37 = [v42 bundleForClass_];
      goto LABEL_20;
    }

    v24 = v31;
    if (v31 >= 1)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D83B88];
      *(v32 + 16) = xmmword_21BE32770;
      v34 = MEMORY[0x277D83C10];
      *(v32 + 56) = v33;
      *(v32 + 64) = v34;
      *(v32 + 32) = v24;
      type metadata accessor for ConfirmChildAgeViewModel();
      v35 = swift_getObjCClassFromMetadata();
      v36 = objc_opt_self();

      v37 = [v36 bundleForClass_];
    }

    else
    {
      if (v30 < 1)
      {
        if (v30)
        {
          v48 = 0;
        }

        else
        {
          type metadata accessor for ConfirmChildAgeViewModel();
          v51 = swift_getObjCClassFromMetadata();
          v52 = [objc_opt_self() bundleForClass_];
          v48 = sub_21BE2599C();
        }

        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D83B88];
      *(v43 + 16) = xmmword_21BE32770;
      v45 = MEMORY[0x277D83C10];
      *(v43 + 56) = v44;
      *(v43 + 64) = v45;
      *(v43 + 32) = v30;
      type metadata accessor for ConfirmChildAgeViewModel();
      v46 = swift_getObjCClassFromMetadata();
      v47 = objc_opt_self();

      v37 = [v47 bundleForClass_];
    }

LABEL_20:
    sub_21BE2599C();

    v48 = sub_21BE289DC();

LABEL_21:
    v50 = v54;
    v49 = v55;
    (*(v56 + 8))(v7, v57);
    (*(v50 + 8))(v21, v49);
    return v48;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BC1FF18(void *a1)
{
  v2 = sub_21BE257FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_21BE2917C();
  v17[1] = v7;
  sub_21BE257DC();
  sub_21BB41FA4();
  v8 = MEMORY[0x277D837D0];
  v9 = sub_21BE2948C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);

  if ([a1 isMe])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21BE32770;
    *(v12 + 56) = v8;
    *(v12 + 64) = sub_21BBBEFE8();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();

    v15 = [v14 bundleForClass_];
    sub_21BE2599C();

    v9 = sub_21BE289DC();
  }

  return v9;
}

uint64_t FamilyDestinations.MemberDetails.altDSID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

FamilyCircleUI::FamilyDestinations::MemberDetails_optional __swiftcall FamilyDestinations.MemberDetails.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  v4 = *(pathComponents->_rawValue + 2);
  if (v4 < 2)
  {
    goto LABEL_19;
  }

  if (rawValue != &unk_282D84F18)
  {
    v6 = rawValue[4];
    v5 = rawValue[5];
    v7 = qword_282D84F38;
    v8 = unk_282D84F40;
    v9 = pathComponents->_rawValue;

    if (v6 == v7 && v5 == v8)
    {
    }

    else
    {
      v11 = sub_21BE2995C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v13 = rawValue[6];
    v12 = rawValue[7];
    v14 = *aMembers_2;
    v15 = unk_282D84F50;

    if (v13 == v14 && v12 == v15)
    {
    }

    else
    {
      v17 = sub_21BE2995C();

      if ((v17 & 1) == 0)
      {
LABEL_15:

        goto LABEL_19;
      }
    }

    v4 = rawValue[2];
  }

  if (v4 >= 3)
  {
    v21 = rawValue[8];
    v20 = rawValue[9];

    pathComponents = sub_21BBBED1C(0, 3);
    *v2 = v21;
    v2[1] = v20;
    goto LABEL_21;
  }

LABEL_19:
  *v2 = 0;
  v2[1] = 0;
LABEL_21:
  result.value.altDSID._object = v18;
  result.value.altDSID._countAndFlagsBits = pathComponents;
  result.is_nil = v19;
  return result;
}

uint64_t sub_21BC20318(uint64_t a1)
{
  v2 = sub_21BC22850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20354(uint64_t a1)
{
  v2 = sub_21BC22850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyDestinations.MemberDetails.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_21BE28ABC();
}

uint64_t sub_21BC2049C(uint64_t a1)
{
  v2 = sub_21BC228A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC204D8(uint64_t a1)
{
  v2 = sub_21BC228A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC205B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21BE2995C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21BC20644(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_21BC23F14(v3, v20);
        sub_21BC23F14(v4, v19);
        v18[3] = &type metadata for AnyLinkDestination;
        v18[4] = sub_21BC23F70();
        v18[0] = swift_allocObject();
        sub_21BC23F14(v19, v18[0] + 16);
        sub_21BB3A35C(v18, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
        if (swift_dynamicCast())
        {
          v16[0] = v11;
          v16[1] = v12;
          v16[2] = v13;
          v17 = v14;
          v5 = v21;
          v6 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v7 = (*(v6 + 24))(v16, v5, v6);
          sub_21BC17C80(v16);
        }

        else
        {
          v14 = 0;
          v12 = 0u;
          v13 = 0u;
          v11 = 0u;
          sub_21BC23FC4(&v11);
          v8 = v21;
          v9 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v20, v21);
          v7 = (*(v9 + 24))(v18, v8, v9);
        }

        sub_21BC17C80(v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        sub_21BC17C80(v20);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        v4 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC2086C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_21BB3A2A4(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CF047C0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x21CF047C0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_21BE2940C();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_21BE2940C();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_21BE2951C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_21BE2951C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21BC20ADC(uint64_t a1)
{
  v2 = sub_21BC228F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20B18(uint64_t a1)
{
  v2 = sub_21BC228F8();

  return MEMORY[0x2821FE720](a1, v2);
}

FamilyCircleUI::FamilyDestinations::MemberAccountDetails_optional __swiftcall FamilyDestinations.MemberAccountDetails.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  v4 = *(pathComponents->_rawValue + 2);
  if (v4 < 2)
  {
    goto LABEL_19;
  }

  if (rawValue != &unk_282D85760)
  {
    v6 = rawValue[4];
    v5 = rawValue[5];
    v7 = qword_282D85780;
    v8 = unk_282D85788;
    v9 = pathComponents->_rawValue;

    if (v6 == v7 && v5 == v8)
    {
    }

    else
    {
      v11 = sub_21BE2995C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v13 = rawValue[6];
    v12 = rawValue[7];
    v14 = aAccountdetails_1[0];
    v15 = aAccountdetails_1[1];

    if (v13 == v14 && v12 == v15)
    {
    }

    else
    {
      v17 = sub_21BE2995C();

      if ((v17 & 1) == 0)
      {
LABEL_15:

        goto LABEL_19;
      }
    }

    v4 = rawValue[2];
  }

  if (v4 >= 3)
  {
    v21 = rawValue[8];
    v20 = rawValue[9];

    pathComponents = sub_21BBBED1C(0, 3);
    *v2 = v21;
    v2[1] = v20;
    goto LABEL_21;
  }

LABEL_19:
  *v2 = 0;
  v2[1] = 0;
LABEL_21:
  result.value.altDSID._object = v18;
  result.value.altDSID._countAndFlagsBits = pathComponents;
  result.is_nil = v19;
  return result;
}

uint64_t _s14FamilyCircleUI0A12DestinationsO13MemberDetailsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C();
  }
}

uint64_t sub_21BC20DD4()
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  return sub_21BE29B0C();
}

uint64_t sub_21BC20E18()
{
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](0);
  return sub_21BE29B0C();
}

uint64_t sub_21BC20E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BE2995C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21BC20EE0(uint64_t a1)
{
  v2 = sub_21BC2294C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC20F1C(uint64_t a1)
{
  v2 = sub_21BC2294C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC20F9C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v15();
  sub_21BE29B6C();
  sub_21BE298DC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s14FamilyCircleUI0A12DestinationsO13MemberDetailsV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC21174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B4C();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_21BE2986C();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_21BC21354(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v17();
  sub_21BE29B6C();
  sub_21BE298DC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21BC2149C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21BE29ACC();
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC214F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_21BC205B4(*a1, a2);
  result = sub_21BB3A250(a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v6 + 16))
  {
    result = sub_21BBBED1C(0, 1);
LABEL_4:
    *a4 = (v7 & 1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC21578(uint64_t a1)
{
  v2 = sub_21BC229A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC215B4(uint64_t a1)
{
  v2 = sub_21BC229A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC21634(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B6C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21BC21768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_21BC205B4(*a1, a2);
  result = sub_21BB3A250(a3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (*(v6 + 16))
  {
    result = sub_21BBBED1C(0, 1);
LABEL_4:
    *a4 = (v7 & 1) == 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC21828(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_21BE29B6C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t FamilyDestinations.MemberPendingDetails.inviteEmail.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilyDestinations.MemberPendingDetails.resendInvitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyDestinations.MemberPendingDetails() + 20);
  v4 = sub_21BE25B9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FamilyDestinations.MemberPendingDetails.familyID.getter()
{
  v1 = (v0 + *(type metadata accessor for FamilyDestinations.MemberPendingDetails() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FamilyDestinations.MemberPendingDetails.init(inviteEmail:resendInvitationURL:familyID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v11 = *(v10 + 20);
  v12 = sub_21BE25B9C();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t static FamilyDestinations.MemberPendingDetails.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21BE2995C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v6 = *(v5 + 20);
  if ((sub_21BE25B4C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_21BE2995C();
}

uint64_t sub_21BC21B8C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x4449796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D45657469766E69;
  }
}

uint64_t sub_21BC21BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BC23DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BC21C1C(uint64_t a1)
{
  v2 = sub_21BC22A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC21C58(uint64_t a1)
{
  v2 = sub_21BC22A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyDestinations.MemberPendingDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7420, &qword_21BE37538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC22A40();
  sub_21BE29B6C();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_21BE298DC();
  if (!v2)
  {
    v13 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
    v14 = *(v13 + 20);
    v19[14] = 1;
    sub_21BE25B9C();
    sub_21BC234F8(&qword_27CDB7430, MEMORY[0x277CC9260]);
    sub_21BE298FC();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_21BE298DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FamilyDestinations.MemberPendingDetails.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_21BE28ABC();
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v5 = *(v4 + 20);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260]);
  sub_21BE2895C();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_21BE28ABC();
}

uint64_t FamilyDestinations.MemberPendingDetails.hashValue.getter()
{
  v1 = v0;
  sub_21BE29ACC();
  v2 = *v0;
  v3 = v0[1];
  sub_21BE28ABC();
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v5 = *(v4 + 20);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260]);
  sub_21BE2895C();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t FamilyDestinations.MemberPendingDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_21BE25B9C();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7440, &qword_21BE37540);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = v27 - v8;
  v10 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC22A40();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v28 = v10;
  v29 = a1;
  v16 = v32;
  v15 = v33;
  v37 = 0;
  v17 = v13;
  *v13 = sub_21BE2986C();
  v13[1] = v18;
  v27[2] = v18;
  v36 = 1;
  sub_21BC234F8(&qword_27CDB7448, MEMORY[0x277CC9260]);
  sub_21BE298AC();
  v19 = v28;
  (*(v31 + 32))(v17 + *(v28 + 20), v6, v15);
  v35 = 2;
  v27[1] = 0;
  v20 = sub_21BE2986C();
  v27[0] = v21;
  v22 = v29;
  v23 = v20;
  (*(v16 + 8))(v9, v34);
  v24 = (v17 + *(v19 + 24));
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_21BC22A94(v17, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return sub_21BC22AF8(v17);
}

uint64_t sub_21BC22400(uint64_t a1)
{
  v3 = v1;
  sub_21BE29ACC();
  v4 = *v1;
  v5 = v1[1];
  sub_21BE28ABC();
  v6 = *(a1 + 20);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260]);
  sub_21BE2895C();
  v7 = (v3 + *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC224C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_21BE28ABC();
  v7 = *(a2 + 20);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260]);
  sub_21BE2895C();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];

  return sub_21BE28ABC();
}

uint64_t sub_21BC22578(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_21BE29ACC();
  v5 = *v2;
  v6 = v2[1];
  sub_21BE28ABC();
  v7 = *(a2 + 20);
  sub_21BE25B9C();
  sub_21BC234F8(&qword_27CDB7438, MEMORY[0x277CC9260]);
  sub_21BE2895C();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_21BE28ABC();
  return sub_21BE29B0C();
}

uint64_t sub_21BC22634(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21BE2995C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((sub_21BE25B4C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_21BE2995C();
}

FamilyCircleUI::FamilyDestinations::SubscriptionsDeepLink_optional __swiftcall FamilyDestinations.SubscriptionsDeepLink.init(pathComponents:)(Swift::OpaquePointer *pathComponents)
{
  v2 = v1;
  rawValue = pathComponents->_rawValue;
  if (*(pathComponents->_rawValue + 2) >= 2uLL)
  {
    if (rawValue != &unk_282D84E78)
    {
      v5 = rawValue[4];
      v4 = rawValue[5];
      v6 = qword_282D84E98;
      v7 = unk_282D84EA0;
      v8 = pathComponents->_rawValue;

      if (v5 == v6 && v4 == v7)
      {
      }

      else
      {
        v10 = sub_21BE2995C();

        if ((v10 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v13 = rawValue[6];
      v12 = rawValue[7];
      v14 = aSubscriptions_5[0];
      v15 = aSubscriptions_5[1];

      if (v13 == v14 && v12 == v15)
      {
      }

      else
      {
        v17 = sub_21BE2995C();

        if ((v17 & 1) == 0)
        {
LABEL_16:

          v11 = 1;
          goto LABEL_20;
        }
      }

      if (rawValue[2] < 2uLL)
      {
        __break(1u);
        return pathComponents;
      }
    }

    LOBYTE(pathComponents) = sub_21BBBED1C(0, 2);
    v11 = 0;
    goto LABEL_20;
  }

  v11 = 1;
LABEL_20:
  *v2 = v11;
  return pathComponents;
}

unint64_t sub_21BC22850()
{
  result = qword_27CDB73C8;
  if (!qword_27CDB73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB73C8);
  }

  return result;
}

unint64_t sub_21BC228A4()
{
  result = qword_27CDB73E0;
  if (!qword_27CDB73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB73E0);
  }

  return result;
}

unint64_t sub_21BC228F8()
{
  result = qword_27CDB73F0;
  if (!qword_27CDB73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB73F0);
  }

  return result;
}

unint64_t sub_21BC2294C()
{
  result = qword_27CDB7400;
  if (!qword_27CDB7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7400);
  }

  return result;
}

unint64_t sub_21BC229A0()
{
  result = qword_27CDB7418;
  if (!qword_27CDB7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7418);
  }

  return result;
}

uint64_t type metadata accessor for FamilyDestinations.MemberPendingDetails()
{
  result = qword_27CDB7518;
  if (!qword_27CDB7518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BC22A40()
{
  result = qword_27CDB7428;
  if (!qword_27CDB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7428);
  }

  return result;
}

uint64_t sub_21BC22A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC22AF8(uint64_t a1)
{
  v2 = type metadata accessor for FamilyDestinations.MemberPendingDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC22B94(uint64_t a1)
{
  result = sub_21BC22BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22BBC()
{
  result = qword_27CDB7450;
  if (!qword_27CDB7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7450);
  }

  return result;
}

unint64_t sub_21BC22C14()
{
  result = qword_27CDB7458;
  if (!qword_27CDB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7458);
  }

  return result;
}

uint64_t sub_21BC22CA8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_21BC22CFC()
{
  result = qword_27CDB7460;
  if (!qword_27CDB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7460);
  }

  return result;
}

unint64_t sub_21BC22D50()
{
  result = qword_27CDB7468;
  if (!qword_27CDB7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7468);
  }

  return result;
}

unint64_t sub_21BC22DA4()
{
  result = qword_27CDB7470;
  if (!qword_27CDB7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7470);
  }

  return result;
}

unint64_t sub_21BC22DF8(uint64_t a1)
{
  result = sub_21BC22E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22E20()
{
  result = qword_27CDB7478;
  if (!qword_27CDB7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7478);
  }

  return result;
}

unint64_t sub_21BC22E78()
{
  result = qword_27CDB7480;
  if (!qword_27CDB7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7480);
  }

  return result;
}

unint64_t sub_21BC22F0C()
{
  result = qword_27CDB7488;
  if (!qword_27CDB7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7488);
  }

  return result;
}

unint64_t sub_21BC22F60(uint64_t a1)
{
  result = sub_21BC22F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC22F88()
{
  result = qword_27CDB7490;
  if (!qword_27CDB7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7490);
  }

  return result;
}

unint64_t sub_21BC22FE0()
{
  result = qword_27CDB7498;
  if (!qword_27CDB7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7498);
  }

  return result;
}

unint64_t sub_21BC23074()
{
  result = qword_27CDB74A0;
  if (!qword_27CDB74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74A0);
  }

  return result;
}

unint64_t sub_21BC230C8()
{
  result = qword_27CDB74A8;
  if (!qword_27CDB74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74A8);
  }

  return result;
}

unint64_t sub_21BC2311C()
{
  result = qword_27CDB74B0;
  if (!qword_27CDB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74B0);
  }

  return result;
}

unint64_t sub_21BC23170(uint64_t a1)
{
  result = sub_21BC23198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23198()
{
  result = qword_27CDB74B8;
  if (!qword_27CDB74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74B8);
  }

  return result;
}

unint64_t sub_21BC231F0()
{
  result = qword_27CDB74C0;
  if (!qword_27CDB74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74C0);
  }

  return result;
}

unint64_t sub_21BC23284()
{
  result = qword_27CDB74C8;
  if (!qword_27CDB74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74C8);
  }

  return result;
}

unint64_t sub_21BC232D8(uint64_t a1)
{
  result = sub_21BC23300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23300()
{
  result = qword_27CDB74D0;
  if (!qword_27CDB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74D0);
  }

  return result;
}

unint64_t sub_21BC23358()
{
  result = qword_27CDB74D8;
  if (!qword_27CDB74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB74D8);
  }

  return result;
}

uint64_t sub_21BC233AC(void *a1)
{
  a1[1] = sub_21BC234F8(&qword_27CDB74E0, type metadata accessor for FamilyDestinations.MemberPendingDetails);
  a1[2] = sub_21BC234F8(&qword_27CDB74E8, type metadata accessor for FamilyDestinations.MemberPendingDetails);
  result = sub_21BC234F8(&qword_27CDB74F0, type metadata accessor for FamilyDestinations.MemberPendingDetails);
  a1[3] = result;
  return result;
}

uint64_t sub_21BC23458(uint64_t a1)
{
  result = sub_21BC234F8(&qword_27CDB74F8, type metadata accessor for FamilyDestinations.MemberPendingDetails);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BC234F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BC23540(uint64_t a1)
{
  result = sub_21BC23568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC23568()
{
  result = qword_27CDB7508;
  if (!qword_27CDB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7508);
  }

  return result;
}

unint64_t sub_21BC235C0()
{
  result = qword_27CDB7510;
  if (!qword_27CDB7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7510);
  }

  return result;
}

uint64_t sub_21BC2369C()
{
  result = sub_21BE25B9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HostRemoteViewCoordinator.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

uint64_t storeEnumTagSinglePayload for HostRemoteViewCoordinator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

unint64_t sub_21BC238CC()
{
  result = qword_27CDB7528;
  if (!qword_27CDB7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7528);
  }

  return result;
}

unint64_t sub_21BC23924()
{
  result = qword_27CDB7530;
  if (!qword_27CDB7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7530);
  }

  return result;
}

unint64_t sub_21BC2397C()
{
  result = qword_27CDB7538;
  if (!qword_27CDB7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7538);
  }

  return result;
}

unint64_t sub_21BC239D4()
{
  result = qword_27CDB7540;
  if (!qword_27CDB7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7540);
  }

  return result;
}

unint64_t sub_21BC23A2C()
{
  result = qword_27CDB7548;
  if (!qword_27CDB7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7548);
  }

  return result;
}

unint64_t sub_21BC23A84()
{
  result = qword_27CDB7550;
  if (!qword_27CDB7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7550);
  }

  return result;
}

unint64_t sub_21BC23ADC()
{
  result = qword_27CDB7558;
  if (!qword_27CDB7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7558);
  }

  return result;
}

unint64_t sub_21BC23B34()
{
  result = qword_27CDB7560;
  if (!qword_27CDB7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7560);
  }

  return result;
}

unint64_t sub_21BC23B8C()
{
  result = qword_27CDB7568;
  if (!qword_27CDB7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7568);
  }

  return result;
}

unint64_t sub_21BC23BE4()
{
  result = qword_27CDB7570;
  if (!qword_27CDB7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7570);
  }

  return result;
}

unint64_t sub_21BC23C3C()
{
  result = qword_27CDB7578;
  if (!qword_27CDB7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7578);
  }

  return result;
}

unint64_t sub_21BC23C94()
{
  result = qword_27CDB7580;
  if (!qword_27CDB7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7580);
  }

  return result;
}

unint64_t sub_21BC23CEC()
{
  result = qword_27CDB7588;
  if (!qword_27CDB7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7588);
  }

  return result;
}

unint64_t sub_21BC23D44()
{
  result = qword_27CDB7590;
  if (!qword_27CDB7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7590);
  }

  return result;
}

unint64_t sub_21BC23D9C()
{
  result = qword_27CDB7598;
  if (!qword_27CDB7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7598);
  }

  return result;
}

uint64_t sub_21BC23DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D45657469766E69 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE583D0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449796C696D6166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

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

unint64_t sub_21BC23F70()
{
  result = qword_27CDB75B0;
  if (!qword_27CDB75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB75B0);
  }

  return result;
}

uint64_t sub_21BC23FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7278, &qword_21BE3A250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC240F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v11 = a3;
    v5 = (a2 + 64);
    while (1)
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12[0] = v7;
      v12[1] = v6;
      v12[2] = v8;
      v12[3] = v9;
      v13 = v10;

      result = v14(v12);
      if (v3)
      {
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 40;
      if (!--v4)
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
LABEL_7:
        a3 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_9:
    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
  }

  return result;
}

void *sub_21BC241EC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF047C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_21BC24300()
{
  v0 = sub_21BE25D1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_21BE25D0C();
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  (*(v1 + 16))(v5, qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_launchDate, v0);
  sub_21BE25C9C();
  v9 = v8;
  v10 = v8;
  v11 = *(v1 + 8);
  v11(v5, v0);
  result = (v11)(v7, v0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_21BC244C0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000018;
    v7 = 0x6572656767697274;
    if (a1 != 10)
    {
      v7 = 0x6574617473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 1701667182;
    if (a1 != 7)
    {
      v9 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x79547265626D656DLL;
    v2 = 0x6D69547972746E65;
    v3 = 0x656D695474697865;
    if (a1 != 4)
    {
      v3 = 0x5464657370616C65;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x695468636E75616CLL;
    if (a1 != 1)
    {
      v4 = 0x61676E4572657375;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21BC24668(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a2 + 16) + 40))(a1, *(a2 + 16));
  result = 0;
  if (v4)
  {
    v7 = (*(a2 + 32))(a1, a2);
    MEMORY[0x28223BE20](v7);
    swift_getAssociatedTypeWitness();
    sub_21BE28CBC();
    swift_getWitnessTable();
    sub_21BE296AC();
    v6 = sub_21BE28C9C();

    return v6;
  }

  return result;
}

uint64_t sub_21BC247C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  return v5(v6, AssociatedConformanceWitness) & 1;
}

uint64_t sub_21BC2487C()
{
  if (qword_27CDB5028 != -1)
  {
    swift_once();
  }

  v0 = qword_27CDD43E8;
  v1 = type metadata accessor for FamilyChecklistStore();
  v12[3] = v1;
  v12[4] = &off_282D994A0;
  v12[0] = v0;
  type metadata accessor for ChecklistMetricsLogger();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v1);
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  swift_retain_n();
  v9 = sub_21BC26C94(v8, v2);

  result = __swift_destroy_boxed_opaque_existential_0Tm(v12);
  qword_27CDD41D8 = v9;
  return result;
}

uint64_t sub_21BC249EC()
{
  v0[5] = -1;
  v0[6] = -1;
  v1 = v0[2];
  v0[2] = MEMORY[0x277D84F98];

  v2 = v0[3];
  v3 = MEMORY[0x277D84F90];
  v0[3] = MEMORY[0x277D84F90];

  v4 = v0[4];
  v0[4] = v3;

  v0[7] = 0;
  return result;
}

uint64_t sub_21BC24A48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v49[0] = v1;
  v49[1] = v2;

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v34 = v3;
    v6 = v49[v4];
    v7 = *(v6 + 16);

    v37 = v7;
    if (v7)
    {
      break;
    }

LABEL_2:

    v3 = 1;
    v4 = 1;
    if (v34)
    {
LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C8, &qword_21BE382F8);
      swift_arrayDestroy();
      v32 = *(v33 + 64);
      *(v33 + 64) = v5;
    }
  }

  v9 = 0;
  v35 = v6;
  v36 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    v10 = (v36 + 32 * v9);
    v38 = v10[1];
    v39 = *v10;
    v11 = v10[2];
    v40 = v9 + 1;
    v41 = v5;
    v5 = *(v11 + 16);

    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = 0uLL;
      v15 = v5;
      v16 = 0uLL;
      v17 = 0uLL;
      if (v12 != v5)
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v15 = v12 + 1;
        *&v45 = v12;
        sub_21BB3A35C(v11 + 32 + 40 * v12, &v45 + 8);
        v14 = v45;
        v16 = v46;
        v17 = v47;
      }

      v48[0] = v14;
      v48[1] = v16;
      v48[2] = v17;
      if (!v17)
      {
        break;
      }

      v42 = v14;
      sub_21BB3D104((v48 + 8), &v45);
      v18 = v47;
      __swift_project_boxed_opaque_existential_1Tm(&v45, *(&v46 + 1));
      v19 = *(v18 + 16);
      sub_21BE295FC();
      v20 = *(&v46 + 1);
      v21 = v47;
      __swift_project_boxed_opaque_existential_1Tm(&v45, *(&v46 + 1));
      v22 = (*(v21 + 24))(v20, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_21BBBD310(0, *(v13 + 2) + 1, 1, v13);
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      v25 = v42;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_21BBBD310((v23 > 1), v24 + 1, 1, v13);
        v25 = v42;
        v13 = v27;
      }

      *(v13 + 2) = v24 + 1;
      v26 = &v13[40 * v24];
      *(v26 + 4) = v43;
      *(v26 + 5) = v44;
      *(v26 + 6) = v9;
      *(v26 + 7) = v25;
      v26[64] = v22 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm(&v45);
      v12 = v15;
    }

    v28 = sub_21BC24300();

    v5 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBD1F0(0, *(v41 + 16) + 1, 1, v41);
      v5 = result;
    }

    v6 = v35;
    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_21BBBD1F0((v29 > 1), v30 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v30 + 1;
    v31 = (v5 + 40 * v30);
    v31[4] = v28;
    v31[5] = v39;
    v31[6] = v38;
    v31[7] = v9;
    v31[8] = v13;
    ++v9;
    if (v40 == v37)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC24D94(void *a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  sub_21BE2611C();
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21BB35000, v12, v13, "Create  session...", v14, 2u);
    MEMORY[0x21CF05C50](v14, -1, -1);
  }

  v15 = *(v5 + 8);
  v15(v11, v4);
  if ((v59[5] & 0x8000000000000000) == 0)
  {
    sub_21BE2611C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "Prior session not ended!", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    v15(v9, v4);
  }

  sub_21BC249EC();
  v19 = [a1 me];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 memberType];
  }

  else
  {
    v21 = -1;
  }

  v22 = v59;
  v59[6] = v21;
  v22[5] = sub_21BC24300();
  v23 = *(*__swift_project_boxed_opaque_existential_1Tm(v22 + 9, v22[12]) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_21BE0476C;
  v24[4] = 0;

  v25 = sub_21BDE83F8(a2);
  v27 = v26;

  v28 = v22[3];
  v22[3] = v25;

  v29 = v22[4];
  v22[4] = v27;

  sub_21BC24A48();
  v30 = sub_21BBB5AAC(MEMORY[0x277D84F90]);
  v31 = *__swift_project_boxed_opaque_existential_1Tm(v22 + 9, v22[12]);
  v32 = sub_21BE08538();
  v61 = *(v32 + 16);
  if (!v61)
  {
LABEL_25:

    v57 = v59[2];
    v59[2] = v30;
  }

  v33 = 0;
  v34 = (v32 + 40);
  v60 = v32;
  while (v33 < *(v32 + 16))
  {
    v36 = *(v34 - 1);
    v37 = *v34;
    ObjectType = swift_getObjectType();
    v39 = *(v37 + 24);
    swift_unknownObjectRetain();
    v40 = v39(ObjectType, v37);
    v42 = v41;
    v43 = sub_21BC24668(ObjectType, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v30;
    v45 = sub_21BBB3108(v40, v42);
    v47 = v30[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_27;
    }

    v51 = v46;
    if (v30[3] < v50)
    {
      sub_21BC7C4B4(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_21BBB3108(v40, v42);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v51)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v56 = v45;
    sub_21BC81174();
    v45 = v56;
    if (v51)
    {
LABEL_12:
      v35 = v45;

      v30 = v62;
      *(v62[7] + 8 * v35) = v43;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

LABEL_21:
    v30 = v62;
    v62[(v45 >> 6) + 8] |= 1 << v45;
    v53 = (v30[6] + 16 * v45);
    *v53 = v40;
    v53[1] = v42;
    *(v30[7] + 8 * v45) = v43;
    swift_unknownObjectRelease();
    v54 = v30[2];
    v49 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v49)
    {
      goto LABEL_28;
    }

    v30[2] = v55;
LABEL_13:
    ++v33;
    v34 += 2;
    v32 = v60;
    if (v61 == v33)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BC25284()
{
  v1 = v0;
  v104 = sub_21BE26A4C();
  v2 = *(v104 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v104);
  v101 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v98 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = (v98 - v9);
  sub_21BE2611C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "End session...", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  v14 = *(v2 + 8);
  v103 = v2 + 8;
  v102 = v14;
  v14(v10, v104);
  if ((v1[5] & 0x8000000000000000) == 0)
  {
    v15 = *(*(*__swift_project_boxed_opaque_existential_1Tm(v1 + 9, v1[12]) + 24) + 16);
    if (v15)
    {
      v105 = v1;

      v106 = MEMORY[0x277D84F98];
      v98[1] = v16;
      v17 = (v16 + 40);
      *&v18 = 136315138;
      v99 = v18;
      while (1)
      {
        v20 = *(v17 - 1);
        v19 = *v17;
        ObjectType = swift_getObjectType();
        v22 = *(v19 + 24);
        swift_unknownObjectRetain();
        v23 = v22(ObjectType, v19);
        v25 = v24;
        v26 = v105[2];
        if (!*(v26 + 16))
        {
          goto LABEL_15;
        }

        v27 = v105[2];

        v28 = sub_21BBB3108(v23, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        v30 = *(*(v26 + 56) + 8 * v28);

        *&v116 = v20;
        if ((*(*(v19 + 16) + 40))(ObjectType))
        {
          v31 = sub_21BC24668(ObjectType, v19);
          if (v31 == v30)
          {
            v32 = 0xE900000000000065;
            v33 = 0x676E616863206F4ELL;
          }

          else
          {
            v33 = 0x6576697469736F50;
            if (v30 >= v31)
            {
              v33 = 0x657669746167654ELL;
            }

            v32 = 0xEF65676E61686320;
          }
        }

        else
        {
          v32 = 0xEA0000000000726FLL;
          v33 = 0x7272652064616F4CLL;
        }

        v39 = MEMORY[0x277D837D0];
        v117 = MEMORY[0x277D837D0];
        v118 = &protocol witness table for String;
        *&v116 = v33;
        *(&v116 + 1) = v32;
        sub_21BB3D104(&v116, v114);
        v40 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = v40;
        v42 = v115;
        v43 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
        v100 = v98;
        v44 = *(*(v42 - 8) + 64);
        MEMORY[0x28223BE20](v43);
        v46 = (v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v47 + 16))(v46);
        v48 = *v46;
        v49 = v46[1];
        v111 = v39;
        v112 = &protocol witness table for String;
        *&v110 = v48;
        *(&v110 + 1) = v49;
        v10 = v40;
        v50 = sub_21BBB3108(v23, v25);
        v52 = v40;
        v53 = v50;
        v54 = v52[2];
        v55 = (v51 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v57 = v51;
        if (v52[3] >= v56)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21BC8142C();
          }
        }

        else
        {
          sub_21BC7CFA8(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_21BBB3108(v23, v25);
          if ((v57 & 1) != (v59 & 1))
          {
            result = sub_21BE299FC();
            __break(1u);
            return result;
          }

          v53 = v58;
        }

        v106 = v113;
        if (v57)
        {
          v10 = (v113[7] + 40 * v53);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          sub_21BB3D104(&v110, v10);
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = v111;
          v60 = __swift_mutable_project_boxed_opaque_existential_1(&v110, v111);
          v61 = *(*(v10 - 1) + 64);
          MEMORY[0x28223BE20](v60);
          v63 = (v98 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v64 + 16))(v63);
          v65 = *v63;
          v66 = v63[1];
          v108 = MEMORY[0x277D837D0];
          v109 = &protocol witness table for String;
          *&v107 = v65;
          *(&v107 + 1) = v66;
          v106[(v53 >> 6) + 8] |= 1 << v53;
          v67 = (v106[6] + 16 * v53);
          *v67 = v23;
          v67[1] = v25;
          sub_21BB3D104(&v107, v106[7] + 40 * v53);
          v68 = v106[2];
          v69 = __OFADD__(v68, 1);
          v70 = v68 + 1;
          if (v69)
          {
            goto LABEL_41;
          }

          v106[2] = v70;
          __swift_destroy_boxed_opaque_existential_0Tm(&v110);
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v114);
LABEL_8:
        v17 += 2;
        if (!--v15)
        {

          v1 = v105;
          goto LABEL_37;
        }
      }

LABEL_15:
      v34 = v101;
      sub_21BE2611C();

      v10 = sub_21BE26A2C();
      v35 = sub_21BE28FDC();

      if (os_log_type_enabled(v10, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v116 = v37;
        *v36 = v99;
        v38 = sub_21BB3D81C(v23, v25, &v116);

        *(v36 + 4) = v38;
        _os_log_impl(&dword_21BB35000, v10, v35, "%s does not have a previous state", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x21CF05C50](v37, -1, -1);
        MEMORY[0x21CF05C50](v36, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v102(v34, v104);
      goto LABEL_8;
    }

    v106 = MEMORY[0x277D84F98];
LABEL_37:
    v75 = sub_21BC24300();
    v76 = v1[5];
    v77 = v75 - v76;
    if (__OFSUB__(v75, v76))
    {
LABEL_42:
      __break(1u);
    }

    else
    {
      v78 = MEMORY[0x277D83B88];
      v117 = MEMORY[0x277D83B88];
      v118 = &protocol witness table for Int;
      *&v116 = v75;
      sub_21BB3D104(&v116, v114);
      v79 = v106;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v79;
      v81 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      sub_21BC26D64(*v81, 0x656D695474697865, 0xE800000000000000, v80, &v110);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      v82 = v110;
      v117 = v78;
      v118 = &protocol witness table for Int;
      *&v116 = v77;
      sub_21BB3D104(&v116, v114);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v82;
      v84 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      sub_21BC26D64(*v84, 0x5464657370616C65, 0xEB00000000656D69, v83, &v110);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      v85 = v110;
      v86 = v1[6];
      v117 = v78;
      v118 = &protocol witness table for Int;
      *&v116 = v86;
      sub_21BB3D104(&v116, v114);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v85;
      v88 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      sub_21BC26D64(*v88, 0x79547265626D656DLL, 0xEA00000000006570, v87, &v110);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      v89 = v110;
      v90 = v1[5];
      v117 = v78;
      v118 = &protocol witness table for Int;
      *&v116 = v90;
      sub_21BB3D104(&v116, v114);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v89;
      v92 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      sub_21BC26D64(*v92, 0x695468636E75616CLL, 0xEA0000000000656DLL, v91, &v110);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      v93 = v110;
      v94 = v1[7] > 0;
      v117 = MEMORY[0x277D839B0];
      v118 = &protocol witness table for Bool;
      LOBYTE(v116) = v94;
      sub_21BB3D104(&v116, v114);
      v95 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = v93;
      v96 = __swift_mutable_project_boxed_opaque_existential_1(v114, v115);
      sub_21BC26ECC(*v96, 0x61676E4572657375, 0xEB00000000646567, v95, &v110);
      __swift_destroy_boxed_opaque_existential_0Tm(v114);
      v10 = v110;
      if (qword_27CDB4F68 == -1)
      {
LABEL_39:
        LOBYTE(v116) = 40;

        v97 = sub_21BCA2CBC(v10);

        sub_21BCA55DC(&v116, v97);

        return sub_21BC249EC();
      }
    }

    swift_once();
    goto LABEL_39;
  }

  sub_21BE2611C();
  v71 = sub_21BE26A2C();
  v72 = sub_21BE28FDC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_21BB35000, v71, v72, "Prior session already ended!", v73, 2u);
    MEMORY[0x21CF05C50](v73, -1, -1);
  }

  return (v102)(v8, v104);
}

uint64_t sub_21BC25DC8(void *a1)
{
  v84 = sub_21BE26A4C();
  v3 = *(v84 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v84);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v74 - v8;
  result = MEMORY[0x28223BE20](v7);
  v10 = v1;
  v12 = &v74 - v11;
  if ((v10[5] & 0x8000000000000000) != 0)
  {
    sub_21BE261BC();
    v71 = sub_21BE26A2C();
    v72 = sub_21BE28FFC();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_21BB35000, v71, v72, "No Prior session/already ended?", v73, 2u);
      MEMORY[0x21CF05C50](v73, -1, -1);
    }

    return (*(v3 + 8))(v12, v84);
  }

  else
  {
    v13 = v10[7];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      v10[7] = v15;
      v80 = v10;
      v16 = *(v10[8] + 16);
      v85 = v10[8];

      v83 = v16;
      if (!v16)
      {
      }

      v18 = 0;
      v82 = (v3 + 8);
      v19 = 0;
      v78 = 0x800000021BE584D0;
      v79 = 0x800000021BE584B0;
      v77 = 0x800000021BE584F0;
      v20 = (v85 + 64);
      *&v17 = 136315394;
      v74 = v17;
      v76 = xmmword_21BE381E0;
      v86 = a1;
      while (v19 < *(v85 + 16))
      {
        v32 = *(v20 - 2);
        v92 = *(v20 - 3);
        v94 = v20;
        v33 = *v20;
        MEMORY[0x28223BE20](result);
        *(&v74 - 2) = a1;
        swift_bridgeObjectRetain_n();

        sub_21BC240F0(sub_21BC27154, v33, v101);

        if (v102)
        {
          v89 = v103;
          v90 = v104;
          v34 = v81;
          sub_21BE2611C();
          sub_21BB3A35C(a1, v98);

          v35 = sub_21BE26A2C();
          v36 = sub_21BE28FCC();

          v37 = os_log_type_enabled(v35, v36);
          v91 = v19;
          if (v37)
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v97 = v39;
            *v38 = v74;
            v40 = v100;
            __swift_project_boxed_opaque_existential_1Tm(v98, v99);
            v41 = *(v40 + 16);
            sub_21BE295FC();
            v42 = v95;
            v43 = v96;
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            v44 = sub_21BB3D81C(v42, v43, &v97);

            *(v38 + 4) = v44;
            *(v38 + 12) = 2080;

            v45 = sub_21BB3D81C(v92, v32, &v97);

            *(v38 + 14) = v45;
            _os_log_impl(&dword_21BB35000, v35, v36, "%s found in section %s", v38, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v39, -1, -1);
            v46 = v38;
            a1 = v86;
            MEMORY[0x21CF05C50](v46, -1, -1);

            (*v82)(v81, v84);
          }

          else
          {

            (*v82)(v34, v84);
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
          }

          v93 = v18;
          if (qword_27CDB4F68 != -1)
          {
            swift_once();
          }

          v60 = a1[3];
          v61 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v60);
          v62 = (*(v61 + 32))(v60, v61);
          v63 = sub_21BC5A608(v62);
          v65 = v64;
          v66 = v80[6];
          v88 = v80[5];
          v67 = a1[3];
          v68 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v67);
          v87 = (*(v68 + 24))(v67, v68);
          v92 = sub_21BC24300();
          v69 = a1[3];
          v70 = a1[4];
          __swift_project_boxed_opaque_existential_1Tm(a1, v69);
          if ((*(v70 + 24))(v69, v70))
          {
            v25 = 0xE800000000000000;
            v24 = 0x6574656C706D6F63;
          }

          else
          {
            v21 = a1[3];
            v22 = a1[4];
            __swift_project_boxed_opaque_existential_1Tm(a1, v21);
            v23 = sub_21BBE7DA8(v21, v22);
            if (v23)
            {
              v24 = 0x657373696D736964;
            }

            else
            {
              v24 = 0x656C706D6F636E69;
            }

            if (v23)
            {
              v25 = 0xE900000000000064;
            }

            else
            {
              v25 = 0xEA00000000006574;
            }
          }

          LOBYTE(v98[0]) = 41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
          inited = swift_initStackObject();
          *(inited + 16) = v76;
          *(inited + 32) = 1701667182;
          v27 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = v63;
          *(inited + 56) = v65;
          *(inited + 80) = &protocol witness table for String;
          *(inited + 88) = 0x79547265626D656DLL;
          *(inited + 96) = 0xEA00000000006570;
          v28 = MEMORY[0x277D83B88];
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 104) = v66;
          *(inited + 136) = &protocol witness table for Int;
          *(inited + 144) = 0x695468636E75616CLL;
          *(inited + 184) = v28;
          *(inited + 192) = &protocol witness table for Int;
          v29 = v88;
          *(inited + 152) = 0xEA0000000000656DLL;
          *(inited + 160) = v29;
          *(inited + 200) = 0xD000000000000015;
          *(inited + 208) = v79;
          *(inited + 240) = v28;
          *(inited + 248) = &protocol witness table for Int;
          *(inited + 216) = v89;
          v30 = v78;
          *(inited + 256) = 0xD000000000000011;
          *(inited + 264) = v30;
          *(inited + 296) = v28;
          *(inited + 304) = &protocol witness table for Int;
          *(inited + 272) = v90;
          *(inited + 312) = 0xD000000000000018;
          *(inited + 320) = v77;
          *(inited + 352) = MEMORY[0x277D839B0];
          *(inited + 328) = v87 & 1;
          *(inited + 360) = &protocol witness table for Bool;
          strcpy((inited + 368), "triggeredTime");
          *(inited + 382) = -4864;
          *(inited + 408) = v28;
          *(inited + 416) = &protocol witness table for Int;
          *(inited + 384) = v92;
          *(inited + 424) = 0x6574617473;
          *(inited + 432) = 0xE500000000000000;
          *(inited + 440) = v24;
          *(inited + 464) = v27;
          *(inited + 472) = &protocol witness table for String;
          *(inited + 448) = v25;

          v31 = sub_21BBB5E60(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
          swift_arrayDestroy();
          sub_21BCA55DC(v98, v31);
          sub_21BC27174(v101);

          a1 = v86;
          v19 = v91;
          v18 = v93;
        }

        else
        {
          v47 = v75;
          sub_21BE2611C();
          sub_21BB3A35C(a1, v98);

          v48 = sub_21BE26A2C();
          v49 = sub_21BE28FCC();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v97 = v51;
            *v50 = v74;
            v93 = v18;
            v52 = v19;
            v53 = v100;
            __swift_project_boxed_opaque_existential_1Tm(v98, v99);
            v54 = *(v53 + 16);
            sub_21BE295FC();
            v55 = v95;
            v56 = v96;
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            v57 = sub_21BB3D81C(v55, v56, &v97);
            v19 = v52;
            v18 = v93;

            *(v50 + 4) = v57;
            *(v50 + 12) = 2080;

            v58 = sub_21BB3D81C(v92, v32, &v97);

            *(v50 + 14) = v58;
            _os_log_impl(&dword_21BB35000, v48, v49, "%s not found in section %s", v50, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v51, -1, -1);
            v59 = v50;
            a1 = v86;
            MEMORY[0x21CF05C50](v59, -1, -1);

            result = (*v82)(v75, v84);
          }

          else
          {

            (*v82)(v47, v84);
            result = __swift_destroy_boxed_opaque_existential_0Tm(v98);
          }
        }

        ++v19;
        v20 = v94 + 5;
        if (v83 == v19)
        {
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BC267BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  v5 = *(v4 + 16);
  sub_21BE295FC();
  if (v2 == v9 && v3 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

uint64_t sub_21BC2685C(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 40) & 0x8000000000000000) != 0)
  {
    sub_21BE261BC();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21BB35000, v20, v21, "No Prior session/already ended?", v22, 2u);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v8);
    v10 = (*(v9 + 32))(v8, v9);
    v11 = sub_21BC5A608(v10);
    v13 = v12;
    v14 = sub_21BC24300();
    v24 = 42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    v16 = MEMORY[0x277D837D0];
    *(inited + 16) = xmmword_21BE33260;
    *(inited + 72) = v16;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    v17 = MEMORY[0x277D83B88];
    strcpy((inited + 88), "triggeredTime");
    *(inited + 102) = -4864;
    *(inited + 128) = v17;
    *(inited + 136) = &protocol witness table for Int;
    *(inited + 104) = v14;

    v18 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
    swift_arrayDestroy();
    sub_21BCA55DC(&v24, v18);
  }
}

uint64_t sub_21BC26B20()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21BC26BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21BC26C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC26C58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChecklistMetricsLogger();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

void *sub_21BC26C94(uint64_t a1, void *a2)
{
  v8 = type metadata accessor for FamilyChecklistStore();
  v9 = &off_282D994A0;
  *&v7 = a1;
  v4 = MEMORY[0x277D84F90];
  a2[2] = sub_21BBB5AAC(MEMORY[0x277D84F90]);
  a2[3] = v4;
  a2[4] = v4;
  a2[5] = -1;
  a2[6] = -1;
  a2[7] = 0;
  a2[8] = v4;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v5 = qword_280BD79E0;
  a2[17] = type metadata accessor for FamilyCircleStore(0);
  a2[18] = &protocol witness table for FamilyCircleStore;
  a2[14] = v5;
  sub_21BB3D104(&v7, (a2 + 9));

  return a2;
}

uint64_t sub_21BC26D64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v26 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_21BBB3108(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_21BB3D104(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21BC8142C();
    goto LABEL_7;
  }

  sub_21BC7CFA8(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_21BBB3108(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D83B88]);
  sub_21BC270C0(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v24);
}

uint64_t sub_21BC26ECC(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v26 = &protocol witness table for Bool;
  v9 = *a5;
  v11 = sub_21BBB3108(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_21BB3D104(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_21BC8142C();
    goto LABEL_7;
  }

  sub_21BC7CFA8(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_21BBB3108(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_21BE299FC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, MEMORY[0x277D839B0]);
  sub_21BC27030(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v24);
}

uint64_t sub_21BC27030(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  v13 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB3D104(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21BC270C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21BB3D104(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_21BC27174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75B8, &qword_21BE382E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeclaredAgeRangeContext.init(altDSIDList:ageRangeController:requestContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_21BC27238(uint64_t *a1, int a2)
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

uint64_t sub_21BC27280(uint64_t result, int a2, int a3)
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

uint64_t sub_21BC272D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BC27318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC27368()
{
  v1 = sub_21BE25FCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  (*(v2 + 104))(v5, *MEMORY[0x277D07F18], v1);
  v7 = MEMORY[0x21CF01150](v5);
  (*(v2 + 8))(v5, v1);
  if ((v7 & 1) == 0)
  {
LABEL_4:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v6 = sub_21BE2599C();

    return v6;
  }

  if (v6 <= 2)
  {
    if ((v6 - 1) >= 2)
    {
      return v6;
    }

    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21BE32770;
  v11 = MEMORY[0x277D83C10];
  *(v10 + 56) = MEMORY[0x277D83B88];
  *(v10 + 64) = v11;
  if (v6 == 3)
  {
    *(v10 + 32) = 1;
  }

  else
  {
    *(v10 + 32) = 10;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v12 = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289DC();

  return v6;
}

uint64_t sub_21BC27720(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItemView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BC28CD4(a2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItemView);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_21BC28D3C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PurchaseSharingItemView);
  v9 = a1;
  sub_21BCE8474(sub_21BC28DA4, v8);
}

void sub_21BC2785C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = type metadata accessor for PurchaseSharingItemView();
    sub_21BC28CD4(a2 + *(v13 + 20), v7, type metadata accessor for PurchaseSharingItem);
    v14 = type metadata accessor for PurchaseSharingHostViewController();
    v15 = objc_allocWithZone(v14);
    sub_21BC28CD4(v7, v15 + OBJC_IVAR____TtC14FamilyCircleUI33PurchaseSharingHostViewController_item, type metadata accessor for PurchaseSharingItem);
    v21.receiver = v15;
    v21.super_class = v14;
    v16 = a1;
    v17 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
    sub_21BC28B68(v7);
    v17[OBJC_IVAR____TtC14FamilyCircleUI24HelpfulRemoteUiHostingVC_shouldAddSpinner] = 1;
    [v16 presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    sub_21BE261BC();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21BB35000, v18, v19, "navigationController is null while presenting purchase sharing VC", v20, 2u);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

id sub_21BC27B10()
{
  v1 = type metadata accessor for PurchaseSharingItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PurchaseSharingHostViewController();
  v20.receiver = v0;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() systemBackgroundColor];
    [v11 setBackgroundColor_];

    v13 = OBJC_IVAR____TtC14FamilyCircleUI33PurchaseSharingHostViewController_item;
    v14 = sub_21BE28DAC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_21BC28CD4(v0 + v13, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseSharingItem);
    sub_21BE28D7C();
    v15 = v0;
    v16 = sub_21BE28D6C();
    v17 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v16;
    v18[3] = v19;
    v18[4] = v15;
    sub_21BC28D3C(v4, v18 + v17, type metadata accessor for PurchaseSharingItem);
    sub_21BBA932C(0, 0, v8, &unk_21BE38438, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC27DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_21BE26A4C();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v10 = sub_21BE25B9C();
  v5[33] = v10;
  v11 = *(v10 - 8);
  v5[34] = v11;
  v12 = *(v11 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_21BE28D7C();
  v5[37] = sub_21BE28D6C();
  v14 = sub_21BE28D0C();
  v5[38] = v14;
  v5[39] = v13;

  return MEMORY[0x2822009F8](sub_21BC27F78, v14, v13);
}

uint64_t sub_21BC27F78()
{
  v58 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[26];
  v5 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[40] = v5;
  v6 = sub_21BBB6068(&unk_282D85890);
  sub_21BB3A4CC(&unk_282D858B0, &unk_27CDB6F40, qword_21BE36348);
  sub_21BCA2A64(v6);

  v7 = sub_21BE288EC();

  [v5 setAdditionalParameters_];

  v8 = type metadata accessor for PurchaseSharingItem(0);
  sub_21BBF0D04(v4 + *(v8 + 20), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v9 = v0[37];
    v10 = v0[32];
    v11 = v0[29];

    sub_21BB3A4CC(v10, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[28];
    v16 = v0[29];
    v17 = v0[27];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_21BB3D81C(0x6F6C467472617473, 0xED0000293A5F2877, &v57);
      _os_log_impl(&dword_21BB35000, v12, v13, "%s missing url", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v15 + 8))(v16, v17);
    v21 = v0[35];
    v20 = v0[36];
    v23 = v0[31];
    v22 = v0[32];
    v25 = v0[29];
    v24 = v0[30];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v29 = v0[35];
    v28 = v0[36];
    v31 = v0[33];
    v30 = v0[34];
    v32 = v0[31];
    (*(v30 + 32))(v28, v0[32], v31);
    v33 = sub_21BE25B2C();
    [v5 setUrlForContext_];

    sub_21BE261BC();
    (*(v30 + 16))(v29, v28, v31);
    v34 = sub_21BE26A2C();
    v35 = sub_21BE28FCC();
    v36 = os_log_type_enabled(v34, v35);
    v38 = v0[34];
    v37 = v0[35];
    v39 = v0[33];
    v40 = v0[31];
    v42 = v0[27];
    v41 = v0[28];
    if (v36)
    {
      v53 = v35;
      v43 = swift_slowAlloc();
      v56 = v5;
      v57 = swift_slowAlloc();
      v44 = v57;
      *v43 = 136315138;
      v54 = v42;
      v55 = v40;
      v45 = sub_21BE25AFC();
      v47 = v46;
      (*(v38 + 8))(v37, v39);
      v48 = sub_21BB3D81C(v45, v47, &v57);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_21BB35000, v34, v53, "PurchaseSharingHost launching %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      v49 = v44;
      v5 = v56;
      MEMORY[0x21CF05C50](v49, -1, -1);
      MEMORY[0x21CF05C50](v43, -1, -1);

      (*(v41 + 8))(v55, v54);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
      (*(v41 + 8))(v40, v42);
    }

    v50 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
    v0[41] = v50;
    v0[22] = sub_21BC288C8;
    v0[23] = 0;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21BB42A18;
    v0[21] = &block_descriptor_7;
    v51 = _Block_copy(v0 + 18);
    [v50 setPresentationHandler_];
    _Block_release(v51);
    [v50 setPresentationType_];
    [v50 setModalPresentationStyle_];
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_21BC285CC;
    v52 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BC2D85C;
    v0[13] = &block_descriptor_15;
    v0[14] = v52;
    [v50 performWithContext:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21BC285CC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC286D4, v2, v1);
}

uint64_t sub_21BC286D4()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 192);
  v3 = [v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 240);
    v6 = *(v0 + 216);
    v7 = *(v0 + 224);
    sub_21BE2614C();
    v8 = v4;
    sub_21BC51D50(v4);

    (*(v7 + 8))(v5, v6);
  }

  [*(v0 + 200) dismissViewControllerAnimated:1 completion:0];
  v9 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  [v9 postNotificationName:qword_27CDB7E70 object:0 userInfo:0 deliverImmediately:1];

  (*(v14 + 8))(v12, v13);
  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v18 = *(v0 + 248);
  v17 = *(v0 + 256);
  v20 = *(v0 + 232);
  v19 = *(v0 + 240);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21BC288C8()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Purchase sharing presented", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

id sub_21BC28A3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseSharingHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PurchaseSharingHostViewController()
{
  result = qword_27CDB75D0;
  if (!qword_27CDB75D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC28AD8()
{
  result = type metadata accessor for PurchaseSharingItem(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BC28B68(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseSharingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC28BC4(uint64_t a1)
{
  v4 = *(type metadata accessor for PurchaseSharingItem(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC27DCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21BC28CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC28D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21BC28DA4()
{
  v1 = *(type metadata accessor for PurchaseSharingItemView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21BC2785C(v2, v3);
}

double sub_21BC28E08(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = (*(a2 + 40))(a1, a2);
  return v4 + v5 + v5;
}

uint64_t sub_21BC28E78()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC28ED8()
{
  v1 = sub_21BE2626C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  sub_21BE2909C();
  v7 = sub_21BE2623C();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  v10 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = -v11;
    if (!__OFSUB__(0, v11))
    {
      goto LABEL_3;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = sub_21BE2951C();
  v12 = -v11;
  if (__OFSUB__(0, v11))
  {
    goto LABEL_40;
  }

LABEL_3:
  if ((v12 + 3) >= 4)
  {
    v1 = v11 - 4;
    if (__OFSUB__(v11, 4))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v11 < v1)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v10)
    {
LABEL_6:
      v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v1 = 0;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_21BE2951C();
LABEL_11:
  if (v13 < v1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v1 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v10)
  {
    v14 = sub_21BE2951C();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < v11)
  {
    goto LABEL_43;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v7 & 0xC000000000000001) == 0 || v1 == v11)
  {

    goto LABEL_25;
  }

  if (v1 >= v11)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);

  v15 = v1;
  do
  {
    v16 = v15 + 1;
    sub_21BE2960C();
    v15 = v16;
  }

  while (v11 != v16);
LABEL_25:

  if (v10)
  {
    v8 = sub_21BE297AC();
    v10 = v17;
    v1 = v18;
    v11 = v19;

    if (v11)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_21BDE6CB0(v8, v10, v1, v11);
    v21 = v20;
LABEL_36:
    swift_unknownObjectRelease();
    return v21;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  v10 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v11 = (2 * v11) | 1;
  if ((v11 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  sub_21BE2999C();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v11 >> 1, v1))
  {
    goto LABEL_49;
  }

  if (v23 != (v11 >> 1) - v1)
  {
LABEL_50:
    swift_unknownObjectRelease_n();
    goto LABEL_29;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v21)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  return v21;
}

double sub_21BC29210()
{
  v1 = *v0;
  v2 = sub_21BC28ED8();
  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_21BC28ED8();
  if (v4 >> 62)
  {
    v5 = sub_21BE2951C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 70.0;
  if (v5 == 3)
  {
    v6 = 66.0;
  }

  if (v5 == 2)
  {
    v6 = 58.0;
  }

  return (v6 + v3 * -32.0) / (v3 + -1.0);
}

void FAImageMarqueeView.init(familyCircle:membersToRender:)(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FAImageMarqueeViewModel();
  v7 = swift_allocObject();
  v11 = sub_21BC2AD38(a2, sub_21BDFE090, sub_21BC2ADDC);
  sub_21BC29DF8(&v11);
  *(v7 + 16) = v11;
  a3[3] = v6;
  a3[4] = &off_282D8B0F8;
  *a3 = v7;
  [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v8 = sub_21BE270CC();
  v10 = v9;

  a3[5] = v8;
  a3[6] = v10;
}

uint64_t FAImageMarqueeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *a1 = sub_21BE275DC();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E0, &qword_21BE38450) + 44);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = sub_21BC2B144(v9);

  v17 = v10;
  swift_getKeyPath();
  sub_21BC2B334(v1, v15);
  v11 = swift_allocObject();
  v12 = v15[1];
  *(v11 + 16) = v15[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15[2];
  *(v11 + 64) = v16;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21BC2B36C;
  *(v13 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E8, &qword_21BE38478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB75F0, &qword_21BE38480);
  sub_21BB3B038(&qword_280BD8A48, &qword_27CDB75E8, &qword_21BE38478);
  sub_21BC2B3A4();
  return sub_21BE285BC();
}

id sub_21BC29684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3[6];
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v9);
  (*(v10 + 24))(v9, v10);
  result = [v8 profilePictureForFamilyMember:a2 pictureDiameter:?];
  if (result)
  {
    v12 = result;
    v13 = sub_21BE25BFC();
    v15 = v14;

    v16 = sub_21BE2869C();
    v18 = v17;
    sub_21BC297E4(v13, v15, a3, a1, &v27);
    v19 = v27;
    v25 = v28;
    v26 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v28;
    sub_21BBBEE74(v27, v28);
    sub_21BBBEF94(v19, v22);
    result = sub_21BBBEF94(v13, v15);
    v23 = v25;
    v24 = v26;
    LOBYTE(v27) = v21;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = xmmword_21BE38440;
    v24 = 0uLL;
  }

  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  *(a4 + 24) = v23;
  *(a4 + 40) = v24;
  *(a4 + 56) = v20;
  *(a4 + 64) = v21;
  return result;
}

uint64_t sub_21BC297E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v13);
  v15 = (*(v14 + 40))(v13, v14);
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v16);
  v18 = *(v17 + 8);
  sub_21BBBEE74(a1, a2);
  v19 = v18(v16, v17);
  if (v19 >> 62)
  {
    v20 = sub_21BE2951C();

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = 0uLL;
  if (v22 < v20)
  {
    v24 = a3[3];
    v25 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v24);
    v30 = (*(v25 + 32))(v24, v25);
    v26 = a3[3];
    v27 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v26);
    v28 = (*(v27 + 16))(v26, v27);
    *&v29 = v30;
    *(&v29 + 1) = v28;
    v23 = v29;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v12;
  *(a5 + 24) = v15;
  *(a5 + 32) = v23;
  *(a5 + 48) = v22 >= v20;
  sub_21BBBEE74(a1, a2);

  return sub_21BBBEF94(a1, a2);
}

uint64_t sub_21BC299EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  *a1 = sub_21BE275DC();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E0, &qword_21BE38450) + 44);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = sub_21BC2B144(v9);

  v17 = v10;
  swift_getKeyPath();
  sub_21BC2B334(v1, v15);
  v11 = swift_allocObject();
  v12 = v15[1];
  *(v11 + 16) = v15[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15[2];
  *(v11 + 64) = v16;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21BC2C498;
  *(v13 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75E8, &qword_21BE38478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB75F0, &qword_21BE38480);
  sub_21BB3B038(&qword_280BD8A48, &qword_27CDB75E8, &qword_21BE38478);
  sub_21BC2B3A4();
  return sub_21BE285BC();
}

uint64_t sub_21BC29BFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_21BBBEE74(a1, a2);
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v14[5] = v15;
  *&v14[21] = v16;
  *&v14[37] = v17;
  v8 = sub_21BE27B7C();
  result = sub_21BE26E0C();
  *(a3 + 16) = a4;
  *(a3 + 24) = a4;
  *(a3 + 35) = *v14;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 32) = 1;
  *(a3 + 34) = 1;
  *(a3 + 51) = *&v14[16];
  *(a3 + 67) = *&v14[32];
  *(a3 + 80) = *(&v17 + 1);
  *(a3 + 88) = v8;
  *(a3 + 96) = v10;
  *(a3 + 104) = v11;
  *(a3 + 112) = v12;
  *(a3 + 120) = v13;
  *(a3 + 128) = 0;
  return result;
}

__n128 sub_21BC29CE4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_21BE282CC();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v10[6] = v11;
  *&v10[22] = v12;
  *&v10[38] = v13;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7698, &qword_21BE38768) + 36);
  v7 = *MEMORY[0x277CE13C0];
  v8 = sub_21BE286CC();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *a1 = v5;
  *(a1 + 8) = 256;
  *(a1 + 10) = *v10;
  *(a1 + 26) = *&v10[16];
  result = *&v10[32];
  *(a1 + 42) = *&v10[32];
  *(a1 + 56) = *(&v13 + 1);
  *(a1 + 64) = v3 + v4;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_21BC29DF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BC29E74(v6);
  return sub_21BE296CC();
}

void sub_21BC29E74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
        v6 = sub_21BE28C7C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21BC2A0E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21BC29F88(0, v2, 1, a1);
  }
}

void sub_21BC29F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 memberSortOrder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 memberSortOrder];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[236]];

        v18 = v17 < v13;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 < 2)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BC2A0E8(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_115:
    v12 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v4;
LABEL_118:
      v4 = *(v106 + 2);
      if (v4 >= 2)
      {
        do
        {
          v107 = *v7;
          if (!*v7)
          {
            goto LABEL_153;
          }

          v7 = (v4 - 1);
          v108 = *&v106[16 * v4];
          v109 = v106;
          v110 = *&v106[16 * v4 + 24];
          sub_21BC2A8D4((v107 + 8 * v108), (v107 + 8 * *&v106[16 * v4 + 16]), (v107 + 8 * v110), v6);
          if (v12)
          {
            break;
          }

          if (v110 < v108)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_21BDFD0AC(v109);
          }

          if (v4 - 2 >= *(v109 + 2))
          {
            goto LABEL_143;
          }

          v111 = &v109[16 * v4];
          *v111 = v108;
          *(v111 + 1) = v110;
          sub_21BDFD020(v4 - 1);
          v106 = v109;
          v4 = *(v109 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_149:
    v106 = sub_21BDFD0AC(v4);
    goto LABEL_118;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = &off_2782F5000;
  while (1)
  {
    v12 = v9;
    v13 = v9 + 1;
    if (v13 >= v8)
    {
      v123 = v13;
      goto LABEL_8;
    }

    v114 = v10;
    v116 = v12;
    v14 = *v7;
    v4 = *(*v7 + 8 * v12);
    v15 = *(*v7 + 8 * v13);
    v16 = v4;
    v17 = [v15 v11[257]];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 integerValue];

      v11 = &off_2782F5000;
    }

    else
    {
      v19 = 0;
    }

    v38 = [v16 v11[257]];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 integerValue];

      v11 = &off_2782F5000;
      v41 = v40 < v19;
      v7 = a3;
      v42 = v41;
    }

    else
    {

      v42 = v19 > 1;
    }

    v122 = v42;
    v12 = v116;
    v123 = v116 + 2;
    if (v116 + 2 >= v8)
    {
      v10 = v114;
      if (!v42)
      {
        goto LABEL_8;
      }

LABEL_106:
      v100 = v123;
      if (v123 < v12)
      {
        goto LABEL_146;
      }

      if (v12 < v123)
      {
        v101 = 8 * v123 - 8;
        v102 = 8 * v12;
        v103 = v12;
        do
        {
          if (v103 != --v100)
          {
            v104 = *v7;
            if (!*v7)
            {
              goto LABEL_152;
            }

            v105 = *(v104 + v102);
            *(v104 + v102) = *(v104 + v101);
            *(v104 + v101) = v105;
          }

          v103 = (v103 + 1);
          v101 -= 8;
          v102 += 8;
        }

        while (v103 < v100);
      }

      goto LABEL_8;
    }

    v43 = (v14 + 8 * v116 + 16);
    do
    {
      v4 = v8;
      v44 = *(v43 - 1);
      v45 = *v43;
      v46 = v44;
      v47 = [v45 v11[257]];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 integerValue];
      }

      else
      {
        v49 = 0;
      }

      v50 = [v46 v11[257]];
      v8 = v4;
      if (v50)
      {
        v51 = v50;
        v52 = [v50 integerValue];

        v41 = v52 < v49;
        v11 = &off_2782F5000;
        v53 = !v41;
        v7 = a3;
        if (((v122 ^ v53) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {

        v7 = a3;
        if (v122 == v49 < 2)
        {
          goto LABEL_105;
        }
      }

      ++v43;
      ++v123;
    }

    while (v4 != v123);
    v123 = v4;
LABEL_105:
    v10 = v114;
    v12 = v116;
    if (v122)
    {
      goto LABEL_106;
    }

LABEL_8:
    v20 = v7[1];
    if (v123 < v20)
    {
      if (__OFSUB__(v123, v12))
      {
        goto LABEL_145;
      }

      if (v123 - v12 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v123 < v12)
    {
      goto LABEL_144;
    }

    v54 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v54;
    }

    else
    {
      v10 = sub_21BBBCBFC(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v10 + 2);
    v55 = *(v10 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v10 = sub_21BBBCBFC((v55 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v4];
    *(v57 + 4) = v12;
    *(v57 + 5) = v123;
    v12 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_74:
          if (v62)
          {
            goto LABEL_133;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_136;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_140;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_88:
        if (v80)
        {
          goto LABEL_135;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_138;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v7)
        {
          goto LABEL_151;
        }

        v96 = v10;
        v97 = *&v10[16 * v4 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_21BC2A8D4((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v12);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v98 < v97)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_21BDFD0AC(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_130;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_21BDFD020(v58);
        v10 = v96;
        v56 = *(v96 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_131;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_132;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_134;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_137;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_141;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_147;
  }

  if (v12 + a4 >= v20)
  {
    v21 = v7[1];
  }

  else
  {
    v21 = v12 + a4;
  }

  if (v21 < v12)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v123 == v21)
  {
    goto LABEL_54;
  }

  v115 = v10;
  v117 = v12;
  v112 = v6;
  v22 = *v7;
  v23 = *v7 + 8 * v123 - 8;
  v24 = v12 - v123;
  v25 = v123;
  v119 = v21;
LABEL_20:
  v121 = v23;
  v124 = v25;
  v26 = *(v22 + 8 * v25);
  v4 = v24;
  while (1)
  {
    v27 = *v23;
    v28 = v26;
    v29 = v27;
    v30 = [v28 v11[257]];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 integerValue];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v29 v11[257]];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 integerValue];

      if (v35 >= v32)
      {
        goto LABEL_18;
      }
    }

    else
    {

      if (v32 < 2)
      {
LABEL_18:
        v11 = &off_2782F5000;
LABEL_19:
        v25 = v124 + 1;
        v23 = v121 + 8;
        --v24;
        if ((v124 + 1) == v119)
        {
          v123 = v119;
          v6 = v112;
          v7 = a3;
          v10 = v115;
          v12 = v117;
          goto LABEL_54;
        }

        goto LABEL_20;
      }
    }

    if (!v22)
    {
      break;
    }

    v36 = *v23;
    v26 = *(v23 + 8);
    *v23 = v26;
    *(v23 + 8) = v36;
    v23 -= 8;
    v37 = __CFADD__(v4++, 1);
    v11 = &off_2782F5000;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_21BC2A8D4(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_24:
      v28 = v6;
      goto LABEL_50;
    }

    v47 = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 memberSortOrder];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 integerValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 memberSortOrder];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 integerValue];

        if (v25 >= v22)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v22 < 2)
        {
LABEL_20:
          v26 = v13;
          v27 = v6 == v13++;
          v5 = v16;
          if (v27)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v26;
          goto LABEL_22;
        }
      }

      v26 = v16;
      v5 = v16 + 1;
      if (v6 != v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v6;
      v15 = v47;
      if (v13 >= v47 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v29 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v29;
  }

  v48 = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_49;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v28 = v5;
    goto LABEL_50;
  }

  v31 = &off_2782F5000;
  do
  {
    v45 = v5;
    v32 = v5 - 1;
    --v4;
    v33 = v15;
    v46 = v32;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      v38 = [v36 v31[257]];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 integerValue];
      }

      else
      {
        v40 = 0;
      }

      v41 = [v37 v31[257]];
      if (!v41)
      {
        break;
      }

      v42 = v41;
      v43 = [v41 integerValue];

      if (v43 < v40)
      {
        goto LABEL_42;
      }

LABEL_40:
      v32 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v33;
      }

      --v4;
      v15 = v33;
      v31 = &off_2782F5000;
      if (v33 <= v48)
      {
        v15 = v33;
        v13 = v48;
        v28 = v45;
        goto LABEL_50;
      }
    }

    if (v40 < 2)
    {
      goto LABEL_40;
    }

LABEL_42:
    v28 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = v48;
    v31 = &off_2782F5000;
    if (v15 <= v48)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_50:
  if (v28 != v13 || v28 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v13, 8 * ((v15 - v13) / 8));
  }

  return 1;
}

unint64_t sub_21BC2ACA4()
{
  result = qword_280BD8A20;
  if (!qword_280BD8A20)
  {
    sub_21BB3A2A4(255, &qword_280BD8A10, off_2782F0CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD8A20);
  }

  return result;
}

uint64_t sub_21BC2AD38(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_21BE2951C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21BC2ADDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21BE2951C();
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
      result = sub_21BE2951C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21BB3B038(&qword_27CDB76D0, &qword_27CDB5CC8, &qword_21BE36190);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
            v9 = sub_21BC9D564(v13, i, a3);
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
        sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
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

uint64_t sub_21BC2AF90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21BE2951C();
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
      result = sub_21BE2951C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21BB3B038(&unk_27CDB76B0, &qword_27CDB76A8, &qword_21BE38780);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A8, &qword_21BE38780);
            v9 = sub_21BC9D5EC(v13, i, a3);
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
        sub_21BB3A2A4(0, &unk_27CDB6550, 0x277D08338);
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

unint64_t sub_21BC2B144(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x21CF047C0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_21BE2951C();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB76C0, &unk_21BE38788);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC2B374(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_21BC2B3A4()
{
  result = qword_280BD6A20;
  if (!qword_280BD6A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB75F0, &qword_21BE38480);
    sub_21BC2B428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6A20);
  }

  return result;
}

unint64_t sub_21BC2B428()
{
  result = qword_280BD6A28;
  if (!qword_280BD6A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB7600, &qword_21BE38488);
    sub_21BB3B038(&qword_280BD69E8, &qword_27CDB7610, &qword_21BE38490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6A28);
  }

  return result;
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

uint64_t sub_21BC2B5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BC2B5E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21BC2B670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21BC2B6C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21BC2B75C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 32;
    while (1)
    {
      v20 = *(v6 + 16 * v3);
      if (v4)
      {
        swift_unknownObjectRetain();

        v7 = __OFSUB__(v4--, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7688, &qword_21BE38758);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = v11 + 4;
        v14 = v2[3] >> 1;
        v5 = &v11[3 * v14 + 4];
        v15 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v13, v2 + 4, 24 * v14);
          }

          swift_unknownObjectRetain();

          v2[2] = 0;
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v2 = v11;
        v7 = __OFSUB__(v15, 1);
        v4 = v15 - 1;
        if (v7)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v20;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v7 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v7)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }

  return v2;
}

unint64_t sub_21BC2B938(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x21CF047C0](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_21BE2951C();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);
        result = swift_unknownObjectRetain();
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7680, &qword_21BE38750);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC2BB28(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      *&v21[0] = v3;
      result = sub_21BB3A35C(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7690, &qword_21BE38760);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BC2BCD8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v28 = a1 + 32;

  v5 = 0;
  v6 = 0;
  v29 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90] + 32;
LABEL_4:
  v9 = *(a1 + 16);
  if (v6 == v9)
  {
    goto LABEL_29;
  }

  if (v6 >= v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = 16 * v6;
  v30 = *(v28 + 16 * v6);
  swift_unknownObjectRetain();
  a2(&v33, &v30);
  swift_unknownObjectRelease();
  v11 = v33;
  ++v6;
  v12 = (a1 + 48 + v10);

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = *(v11 + 16);
  if (v8)
  {
    v15 = 0;
    while (v15 < v8)
    {
      sub_21BB3A35C(v11 + 40 * v15 + 32, &v30);
      v34 = v30;
      v35 = v31;
      v36 = v32;
      if (!*(&v31 + 1))
      {
        goto LABEL_30;
      }

      result = sub_21BB3D104(&v34, v37);
      if (!v5)
      {
        v16 = v29[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E0, &unk_21BE32F50);
        v19 = swift_allocObject();
        v20 = (_swift_stdlib_malloc_size(v19) - 32) / 40;
        v19[2] = v18;
        v19[3] = 2 * v20;
        v21 = (v19 + 4);
        v22 = v29[3] >> 1;
        if (v29[2])
        {
          v23 = v29 + 4;
          if (v19 != v29 || v21 >= v23 + 40 * v22)
          {
            memmove(v19 + 4, v23, 40 * v22);
          }

          v29[2] = 0;
        }

        v7 = v21 + 40 * v22;
        v5 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

        v29 = v19;
      }

      v24 = __OFSUB__(v5--, 1);
      if (v24)
      {
        goto LABEL_36;
      }

      ++v15;
      result = sub_21BB3D104(v37, v7);
      v7 += 40;
      v8 = *(v11 + 16);
      if (v15 == v8)
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        result = sub_21BC2BFF8(&v30);
        goto LABEL_4;
      }
    }

    goto LABEL_35;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  result = sub_21BC2BFF8(&v30);
LABEL_9:
  while (1)
  {
    v13 = *(a1 + 16);
    if (v6 == v13)
    {
      break;
    }

    if (v6 >= v13)
    {
      goto LABEL_34;
    }

    v14 = *v12++;
    v30 = v14;
    swift_unknownObjectRetain();
    a2(&v33, &v30);
    swift_unknownObjectRelease();
    v11 = v33;
    ++v6;

    if (v11)
    {
      goto LABEL_7;
    }
  }

LABEL_29:
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
LABEL_30:

  result = sub_21BC2BFF8(&v34);
  v25 = v29[3];
  if (v25 < 2)
  {
    return v29;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v5);
  v27 = v26 - v5;
  if (!v24)
  {
    v29[2] = v27;
    return v29;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21BC2BFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB76A0, &unk_21BE38770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_21BC2C0A0()
{
  result = qword_27CDB76D8;
  if (!qword_27CDB76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7698, &qword_21BE38768);
    sub_21BC2C12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB76D8);
  }

  return result;
}

unint64_t sub_21BC2C12C()
{
  result = qword_27CDB76E0;
  if (!qword_27CDB76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76E8, &qword_21BE38798);
    sub_21BC2C1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB76E0);
  }

  return result;
}

unint64_t sub_21BC2C1B8()
{
  result = qword_27CDB76F0;
  if (!qword_27CDB76F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB76F8, &qword_21BE387A0);
    sub_21BB3B038(&qword_27CDB7700, &qword_27CDB7708, &qword_21BE387A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB76F0);
  }

  return result;
}

unint64_t sub_21BC2C270()
{
  result = qword_27CDB7710;
  if (!qword_27CDB7710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7718, &qword_21BE387B0);
    sub_21BC2C2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7710);
  }

  return result;
}

unint64_t sub_21BC2C2FC()
{
  result = qword_27CDB7720;
  if (!qword_27CDB7720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB7728, &qword_21BE387B8);
    sub_21BC2C388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7720);
  }

  return result;
}

unint64_t sub_21BC2C388()
{
  result = qword_280BD6A30;
  if (!qword_280BD6A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7738, qword_21BE387C0);
    sub_21BC2C440();
    sub_21BB3B038(&qword_280BD6A38, qword_27CDB7740, &qword_21BE3CA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6A30);
  }

  return result;
}

unint64_t sub_21BC2C440()
{
  result = qword_280BD7700;
  if (!qword_280BD7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD7700);
  }

  return result;
}

id sub_21BC2C4DC(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_21BC2C520()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2612C();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "Biome stream sunk, it's all over now", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

char *sub_21BC2C674(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 locationChangeType];
  if ((result - 1) <= 1)
  {
    sub_21BE2612C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "Signal on sharing status change event", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v17 = sub_21BE28DAC();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;

    sub_21BBA9018(0, 0, v7, &unk_21BE388B8, v18);
  }

  return result;
}

uint64_t sub_21BC2C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC2C8D4, 0, 0);
}

uint64_t sub_21BC2C8D4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    swift_unknownObjectRetain();
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 40) = v7;
    *v7 = v0;
    v7[1] = sub_21BC2CA5C;

    return v10(ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21BC2CA5C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21BC2CB74, 0, 0);
}

void *LocationShareListener.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BC2CE60(a1, v2, ObjectType, a2);
}

void *LocationShareListener.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21BC2CEC0(a1, v2, ObjectType, a2);
}

uint64_t sub_21BC2CC60()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2612C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v7, v8, "BiomeListener for location shutdown", v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = v1[2];
  if (v10)
  {
    v11 = *(v10 + 16);
    v12 = v1[2];

    [v11 cancel];
    v13 = *(v10 + 16);
    *(v10 + 16) = 0;

    v14 = v1[2];
  }

  v1[2] = 0;

  v15 = v1[3];
  v1[3] = 0;
  v1[4] = 0;
  return swift_unknownObjectRelease();
}

uint64_t LocationShareListener.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocationShareListener.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_21BC2CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationShareListener();
  v7 = swift_allocObject();

  return sub_21BC2CEC0(a1, v7, a3, a4);
}

void *sub_21BC2CEC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[2] = 0;
  a2[3] = a1;
  a2[4] = a4;
  v12 = [objc_opt_self() findMyLocationChangeStream];
  v13 = [v12 publisher];

  v14 = sub_21BDCF5D0(0x6E6F697461636F6CLL, 0xE800000000000000);
  v15 = [v13 subscribeOn_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7830, &unk_21BE388C0);
  swift_allocObject();
  v16 = v15;

  v17 = sub_21BDCF180(v16, sub_21BC2D3B0, a2);
  v18 = a2[2];
  a2[2] = v17;

  sub_21BE2612C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21BB35000, v19, v20, "LocationShareListener started", v21, 2u);
    MEMORY[0x21CF05C50](v21, -1, -1);
    v22 = v16;
  }

  else
  {
    v22 = v19;
    v19 = v16;
  }

  (*(v8 + 8))(v11, v7);
  return a2;
}

uint64_t dispatch thunk of LocationShareListenerDelegate.notifyLocationChange()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2);
}

uint64_t sub_21BC2D2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC2C8B4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for FamilyMemberAccountDetails()
{
  result = qword_27CDB7840;
  if (!qword_27CDB7840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC2D438()
{
  sub_21BC2D71C(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21BC2D620();
    if (v1 <= 0x3F)
    {
      sub_21BC2D6B4();
      if (v2 <= 0x3F)
      {
        sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
        if (v3 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AgeRangeSharingViewModel();
            if (v5 <= 0x3F)
            {
              sub_21BB403C0();
              if (v6 <= 0x3F)
              {
                sub_21BC2D71C(319, &qword_27CDB7860, type metadata accessor for FamilyDependentPasswordResetController, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_21BC2D71C(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
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

void sub_21BC2D620()
{
  if (!qword_27CDB7850)
  {
    type metadata accessor for FamilyMemberAccountDetailsViewModel();
    sub_21BC35B30(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7850);
    }
  }
}

void sub_21BC2D6B4()
{
  if (!qword_27CDB7858)
  {
    sub_21BB3A2A4(255, &qword_280BD8A40, 0x277D08268);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7858);
    }
  }
}

void sub_21BC2D71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyMemberAccountDetails.GlobalStateLabel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyMemberAccountDetails.GlobalStateLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21BC2D85C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_21BC2D8C0()
{
  v1 = *(v0 + *(type metadata accessor for FamilyMemberAccountDetails() + 28));
  v2 = [v1 appleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 iTunesAccountUsername];
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_21BE28A0C();
  v11 = v10;

  if (!v6)
  {
    if (v11)
    {
LABEL_15:

      v14 = 1;
      return v14 & 1;
    }

LABEL_17:
    v14 = 0;
    return v14 & 1;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  if (v4 == v9 && v6 == v11)
  {

    goto LABEL_17;
  }

  v13 = sub_21BE2995C();

  v14 = v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_21BC2D9E8()
{
  v0 = sub_21BE2642C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = [objc_opt_self() sharedBag];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21BE289CC();
    v16 = [v14 configurationAtKey:v15];

    if (v16)
    {
      sub_21BE294BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31[0] = v29;
    v31[1] = v30;
    if (*(&v30 + 1))
    {
      if (swift_dynamicCast())
      {
        v17 = v28;
        sub_21BE2614C();
        v18 = sub_21BE26A2C();
        v19 = sub_21BE28FCC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v27 = v18;
          v21 = v20;
          *v20 = 67109120;
          *(v20 + 4) = v17;
          _os_log_impl(&dword_21BB35000, v27, v19, "FamilyMemberAccountDetails Fetching proxAdvertisementDisabled from AKURLBag: %{BOOL}d", v20, 8u);
          v22 = v21;
          v18 = v27;
          MEMORY[0x21CF05C50](v22, -1, -1);
        }

        goto LABEL_15;
      }
    }

    else
    {

      sub_21BB3A4CC(v31, &qword_27CDB5940, &unk_21BE32B10);
    }
  }

  sub_21BE2614C();
  v14 = sub_21BE26A2C();
  v23 = sub_21BE28FCC();
  if (os_log_type_enabled(v14, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21BB35000, v14, v23, "FamilyMemberAccountDetails proxAdvertisementDisabled not available in URLBag, assuming it is set to false by default.", v24, 2u);
    MEMORY[0x21CF05C50](v24, -1, -1);
  }

  v17 = 0;
  v12 = v10;
LABEL_15:

  (*(v6 + 8))(v12, v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D08050], v0);
  v25 = sub_21BE2641C();
  (*(v1 + 8))(v4, v0);
  return (v17 ^ v25) & 1;
}

uint64_t sub_21BC2DDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FamilyMemberAccountDetails();
  sub_21BBA3854(v1 + *(v12 + 52), v11, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BC2DFAC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(sub_21BE25E9C() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = sub_21BE25EBC();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v7 = sub_21BE25B9C();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_21BE28D7C();
  v2[29] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v2[30] = v11;
  v2[31] = v10;

  return MEMORY[0x2822009F8](sub_21BC2E134, v11, v10);
}

uint64_t sub_21BC2E134()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[32] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC2E26C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5808, &qword_21BE328C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC2E26C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_21BC2E800;
  }

  else
  {
    v6 = sub_21BC2E39C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BC2E39C()
{
  v1 = v0[32];
  v2 = v0[18];
  v0[34] = v2;

  v3 = [v2 urlForEndpoint_];
  if (v3)
  {
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = v3;
    sub_21BE25B5C();

    (*(v7 + 32))(v5, v4, v6);
    v9 = [objc_allocWithZone(FACircleContext) initWithEventType_];
    v0[35] = v9;
    v10 = sub_21BE25B2C();
    [v9 setUrlForContext_];

    v11 = swift_task_alloc();
    v0[36] = v11;
    *v11 = v0;
    v11[1] = sub_21BC2E610;
    v12 = v0[19];

    return sub_21BC2E8A8(v9, v12);
  }

  else
  {
    v14 = v0[29];
    v16 = v0[23];
    v15 = v0[24];
    v17 = v0[21];
    v18 = v0[22];

    sub_21BE25E8C();
    sub_21BDCE614(MEMORY[0x277D84F90]);
    sub_21BC35B30(&qword_27CDB7A10, MEMORY[0x277CC9AE8]);
    sub_21BE25A6C();
    sub_21BE25EAC();
    (*(v16 + 8))(v15, v18);
    swift_willThrow();

    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[24];
    v22 = v0[21];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21BC2E610()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x2822009F8](sub_21BC2E730, v4, v3);
}

uint64_t sub_21BC2E730()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 168);

  (*(v5 + 8))(v2, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BC2E800()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[29];

  swift_willThrow();

  v4 = v0[33];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BC2E8A8(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  v3 = sub_21BE26A4C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  sub_21BE28D7C();
  v2[34] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[35] = v7;
  v2[36] = v6;

  return MEMORY[0x2822009F8](sub_21BC2E99C, v7, v6);
}

uint64_t sub_21BC2E99C()
{
  v1 = v0[29];
  v2 = [objc_allocWithZone(FACircleStateController) initWithPresenter_];
  v0[37] = v2;
  v0[22] = sub_21BC2EE98;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21BB42A18;
  v0[21] = &block_descriptor_70;
  v3 = _Block_copy(v0 + 18);
  [v2 setPresentationHandler_];
  _Block_release(v3);
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_21BC2EB68;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_73;
  v0[14] = v4;
  [v2 performWithContext:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC2EB68()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC2EC70, v2, v1);
}

void *sub_21BC2EC70()
{
  v29 = v0;
  v1 = v0[34];

  v2 = v0[27];
  v3 = [v2 error];
  if (v3)
  {
    v4 = v3;
    v5 = v0[33];
    sub_21BE2614C();
    v6 = v4;
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();

    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v27 = v10;
      v16 = v0[24];
      v15 = v0[25];
      v17 = v0[26];
      v18 = sub_21BE29A5C();
      v26 = v12;
      v20 = sub_21BB3D81C(v18, v19, &v28);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_21BB35000, v7, v8, "Error loading stateController: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);

      (*(v11 + 8))(v27, v26);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }
  }

  v21 = v0[37];
  v22 = [v2 success];

  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    v24 = v0[33];
    [result endIgnoringInteractionEvents];

    v25 = v0[1];

    return v25(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21BC2EE98()
{
  result = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    return [result endIgnoringInteractionEvents];
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC2EEB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7870, &qword_21BE38AA0);
  v83 = *(v76 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v76);
  v5 = &v66 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7878, &qword_21BE38AA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  *v9 = sub_21BE2771C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7880, &qword_21BE38AB0);
  sub_21BC2FA24(v1, &v9[*(v10 + 44)]);
  v74 = type metadata accessor for FamilyMemberAccountDetails();
  v11 = (v1 + *(v74 + 36));
  v13 = *v11;
  v12 = v11[1];
  v88 = v13;
  v89 = v12;
  sub_21BB3B038(&qword_27CDB7888, &qword_27CDB7878, &qword_21BE38AA8);
  sub_21BB41FA4();
  sub_21BE27F9C();
  sub_21BB3A4CC(v9, &qword_27CDB7878, &qword_21BE38AA8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7890, &qword_21BE38AB8);
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v14);
  v77 = &v66 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7898, &unk_21BE38AC0);
  v73 = *(v75 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5060, &qword_21BE31038);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78A0, &qword_21BE38AD0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  v82 = v5;
  v84 = v5;
  v85 = v2;
  v78 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78A8, &qword_21BE38AD8);
  sub_21BB3B038(&qword_27CDB78B0, &qword_27CDB78A8, &qword_21BE38AD8);
  sub_21BE27D0C();
  v28 = sub_21BE271DC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE286DC();
  sub_21BB3B038(&qword_27CDB78B8, &qword_27CDB78A0, &qword_21BE38AD0);
  sub_21BC35B30(&qword_27CDB78C0, MEMORY[0x277CDDAB8]);
  sub_21BE281FC();
  (*(v29 + 8))(v32, v28);
  (*(v24 + 8))(v27, v23);
  v70 = v19;
  v33 = *(v19 + 36);
  v71 = v22;
  v34 = &v22[v33];
  *&v22[v33] = sub_21BC33ECC;
  sub_21BE28D7C();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 1) = 0;
  v35 = sub_21BE28D6C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  v38 = sub_21BE28DAC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v66 - v41;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v68 = sub_21BE2715C();
    v69 = &v66;
    v67 = *(v68 - 8);
    v43 = *(v67 + 64);
    MEMORY[0x28223BE20](v68);
    v45 = &v66 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_21BE295EC();

    v88 = 0xD00000000000003CLL;
    v89 = 0x800000021BE58770;
    v86 = 376;
    v46 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v46);

    MEMORY[0x28223BE20](v47);
    (*(v39 + 16))(&v66 - v41, &v66 - v41, v38);
    sub_21BE2714C();
    (*(v39 + 8))(&v66 - v41, v38);
    v48 = v72;
    sub_21BBB7D84(v71, v72, &qword_27CDB5060, &qword_21BE31038);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5068, &unk_21BE31040);
    (*(v67 + 32))(v48 + *(v49 + 36), v45, v68);
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5070, &qword_21BE38B20);
    v48 = v72;
    v51 = (v72 + *(v50 + 36));
    v52 = sub_21BE2701C();
    (*(v39 + 32))(&v51[*(v52 + 20)], v42, v38);
    *v51 = &unk_21BE38AE8;
    *(v51 + 1) = v36;
    sub_21BBB7D84(v71, v48, &qword_27CDB5060, &qword_21BE31038);
  }

  v53 = sub_21BC3510C();
  v88 = v70;
  v89 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v77;
  v56 = v75;
  sub_21BE27E3C();
  (*(v73 + 8))(v48, v56);
  v57 = *(v78 + *(v74 + 40));
  v58 = sub_21BE25D6C();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = &v66 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v88 = v57;
  sub_21BC35B30(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v63 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v59 + 16))(v62, v57 + v63, v58);
  v86 = v56;
  v87 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21BC35B30(&qword_27CDB78D8, MEMORY[0x277CC95F0]);
  v64 = v80;
  sub_21BE281CC();
  (*(v59 + 8))(v62, v58);
  (*(v79 + 8))(v55, v64);
  return (*(v83 + 8))(v82, v76);
}