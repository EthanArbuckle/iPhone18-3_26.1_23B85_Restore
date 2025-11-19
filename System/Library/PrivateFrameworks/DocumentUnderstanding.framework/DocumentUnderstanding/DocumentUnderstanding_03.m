uint64_t sub_232B49B7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for FeatureProviderWithMask();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = *(*(sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_232CE9700();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B49CA4, 0, 0);
}

uint64_t sub_232B49CA4()
{
  v1 = 0xD00000000000001ALL;
  sub_232CE9810();
  if (MEMORY[0x238391530]())
  {
    if (sub_232CE9710())
    {
      type metadata accessor for DUWordPieceTokenizerSpecification();
      v0[16] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[17] = v2;
      *v2 = v0;
      v2[1] = sub_232B49E30;
      v3 = v0[12];
      v4 = v0[8];

      return sub_232B4EE70(v3, v4);
    }

    v6 = "Backbone model is disabled";
    v1 = 0xD000000000000027;
  }

  else
  {
    v6 = "molBERToImplementation";
  }

  v7 = v6 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4ACD4();
  swift_allocError();
  *v8 = v1;
  *(v8 + 8) = v7;
  *(v8 + 16) = 0;
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];

  v12 = sub_232B4ACE0();

  return v13(v12, 1);
}

uint64_t sub_232B49E30()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_232B49F48, 0, 0);
}

uint64_t sub_232B49F48()
{
  v2 = v0[12];
  v1 = v0[13];
  if (sub_232B12480(v2, 1, v1) == 1)
  {
    sub_232B267AC(v2, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v4 = 0xD00000000000001ALL;
    *(v4 + 8) = 0x8000000232D04380;
    *(v4 + 16) = 0;
LABEL_10:
    v22 = v0[15];
    v23 = v0[11];
    v24 = v0[12];

    v25 = v0[1];

    return v25(v3, 1);
  }

  (*(v0[14] + 32))(v0[15], v2, v1);
  v5 = sub_232B49058();
  v0[18] = v5;
  if (!v5)
  {
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v17 = 0xD00000000000002ALL;
    *(v17 + 8) = 0x8000000232D043A0;
    *(v17 + 16) = 0;
    (*(v15 + 8))(v14, v16);
    goto LABEL_10;
  }

  v6 = v5;
  type metadata accessor for DUTrialAssetLoader();
  v0[19] = swift_initStackObject();
  v0[20] = sub_232C14534();
  v7 = sub_232C149A0();
  v8 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000016, 0x8000000232D04420, v7 & 1);
  v0[21] = v8;
  if (!v8)
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    sub_232B4A95C();
    sub_232B4ACD4();
    v3 = swift_allocError();
    *v21 = 0xD000000000000023;
    *(v21 + 8) = 0x8000000232D04440;
    *(v21 + 16) = 1;

    (*(v19 + 8))(v18, v20);
    goto LABEL_10;
  }

  v9 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v10 = v6;
  v11 = [v9 init];
  v0[22] = v11;
  v12 = *(MEMORY[0x277CBFDF0] + 4);
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_232B4A284;

  return MEMORY[0x282111978](v10, v11);
}

uint64_t sub_232B4A284(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v8 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_232B4A5C8;
  }

  else
  {
    v6 = *(v3 + 144);

    v5 = sub_232B4A3A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232B4A3A8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  swift_unknownObjectRetain();
  v7 = sub_232CE96A0();
  sub_232B12504(v5 + *(v6 + 24), 1, 1, v4);
  *v5 = v1;
  v5[1] = v7;
  sub_232B49694(v5);
  if (v2)
  {
    v8 = v0[24];
    sub_232B4A9B0(v0[11]);
    swift_unknownObjectRelease();
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[14];
    v33 = v0[15];
    v13 = v0[13];
    sub_232CEA4F0();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_232B4AD50();
    v0[7] = v2;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    sub_232CEA5B0();
    v14 = v0[5];
    v15 = v0[6];
    sub_232B4A95C();
    sub_232B4ACD4();
    v16 = swift_allocError();
    sub_232B4AD14(v16, v17);

    (*(v12 + 8))(v33, v13);
  }

  else
  {
    v18 = v0[24];
    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[18];
    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[13];
    v25 = v0[11];

    swift_unknownObjectRelease();

    sub_232B4A9B0(v25);
    (*(v23 + 8))(v22, v24);
  }

  v26 = v2 != 0;
  v27 = v0[15];
  v29 = v0[11];
  v28 = v0[12];

  v30 = sub_232B4ACE0();

  return v31(v30, v26);
}

uint64_t sub_232B4A5C8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 112);
  v18 = *(v0 + 120);
  v7 = *(v0 + 104);
  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  sub_232B4AD50();
  *(v0 + 56) = v2;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_232B4A95C();
  sub_232B4ACD4();
  v10 = swift_allocError();
  sub_232B4AD14(v10, v11);

  (*(v6 + 8))(v18, v7);
  v12 = *(v0 + 120);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);

  v15 = sub_232B4ACE0();

  return v16(v15, 1);
}

uint64_t sub_232B4A79C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232B4A838;

  return sub_232B49B7C(a2);
}

uint64_t sub_232B4A838(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

unint64_t sub_232B4A95C()
{
  result = qword_2814E01C0;
  if (!qword_2814E01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E01C0);
  }

  return result;
}

uint64_t sub_232B4A9B0(uint64_t a1)
{
  v2 = type metadata accessor for FeatureProviderWithMask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B4AA0C()
{
  result = qword_27DDC6FA8;
  if (!qword_27DDC6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FA8);
  }

  return result;
}

unint64_t sub_232B4AA60()
{
  result = qword_27DDC6FC8;
  if (!qword_27DDC6FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6FC8);
  }

  return result;
}

uint64_t sub_232B4AAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuildSmolBERToHeadInputError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BuildSmolBERToHeadInputError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232B4AC6C()
{
  result = qword_27DDC6FF0;
  if (!qword_27DDC6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FF0);
  }

  return result;
}

void sub_232B4AD14(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
}

void sub_232B4AD50()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232B4AE2C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232B4AED4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232B4AF24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B4AED4(v4);
}

void *sub_232B4AFD4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232B4B06C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232B4B0BC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232B4B06C(v2);
}

char *sub_232B4B13C(uint64_t a1)
{
  v72 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v2 = sub_232B13F24(v72);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v67 = v6 - v5;
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = sub_232B2D120(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B3516C();
  v66 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v69 = v65 - v14;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  sub_232B350D8();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v74 = v65 - v25;
  v68 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v26 = sub_232B13F24(v68);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v31 = (v30 - v29);
  v71 = [objc_allocWithZone(type metadata accessor for DUCategoryClassificationResponse()) init];
  sub_232B4D4C4(a1, v31, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  v70 = v31;
  v32 = *v31;
  v33 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v34 = *(v32 + 16);
  if (v34)
  {
    v65[1] = a1;
    v35 = v32 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v73 = *(v17 + 72);
    do
    {
      v36 = v74;
      sub_232B4D4C4(v35, v74, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B4D4C4(v36, v23, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      v37 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
      sub_232B4D560();
      sub_232B4D470();
      v38 = v15;
      v39 = (v23 + *(v15 + 20));
      if (v39[1])
      {
        v40 = *v39;
        v41 = v39[1];
      }

      else
      {
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      v42 = &v37[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      sub_232B13F5C();
      v43 = *(v42 + 1);
      *v42 = v40;
      *(v42 + 1) = v41;

      v15 = v38;
      v44 = v23 + *(v38 + 24);
      v45 = *v44;
      v46 = *(v44 + 8);
      sub_232B4D560();
      sub_232B4D470();
      if (v46)
      {
        v45 = 0.0;
      }

      v47 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v48 = sub_232B13F5C();
      *&v37[v47] = v45;
      MEMORY[0x238391D50](v48);
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v35 += v73;
      --v34;
    }

    while (v34);
    v33 = v75;
  }

  v49 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  v50 = v71;
  sub_232B13F5C();
  v51 = *&v50[v49];
  *&v50[v49] = v33;

  v52 = v69;
  v53 = *(v68 + 24);
  v54 = v70;
  sub_232B21B7C(v70 + v53, v69);
  v55 = v72;
  sub_232B351B0(v52, 1, v72);
  if (v57)
  {
    sub_232B4D470();
    sub_232B13790(v52, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B4D470();
  }

  else
  {
    sub_232B13790(v52, &qword_27DDC67C8, &unk_232CF5E70);
    v56 = v66;
    sub_232B21B7C(v54 + v53, v66);
    sub_232B351B0(v56, 1, v55);
    if (v57)
    {
      v58 = v67;
      sub_232CE9330();
      v59 = (v58 + *(v55 + 20));
      *v59 = 0;
      v59[1] = 0;
      sub_232B351B0(v56, 1, v55);
      if (!v57)
      {
        sub_232B13790(v56, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232B4D578();
      sub_232B4D104(v56, v67, v60);
    }

    v61 = sub_232B4C530();
    sub_232B4D470();
    sub_232B4D470();
    v62 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
    sub_232B13F5C();
    v63 = *&v50[v62];
    *&v50[v62] = v61;
  }

  return v50;
}

char *sub_232B4B67C(uint64_t a1)
{
  v60 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v52 - v10;
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v52 - v17;
  v56 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v18 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = [objc_allocWithZone(v1) init];
  sub_232B4D4C4(a1, v20, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  v58 = v20;
  v21 = *v20;
  v22 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);
  if (v23)
  {
    v53 = v5;
    v54 = a1;
    v24 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v61 = *(v12 + 72);
    do
    {
      v25 = v62;
      sub_232B4D4C4(v24, v62, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      sub_232B4D4C4(v25, v16, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
      v26 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
      sub_232B4D470();
      v27 = v11;
      v28 = &v16[*(v11 + 20)];
      if (*(v28 + 1))
      {
        v29 = *v28;
        v30 = *(v28 + 1);
      }

      else
      {
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = &v26[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      swift_beginAccess();
      v32 = *(v31 + 1);
      *v31 = v29;
      *(v31 + 1) = v30;

      v11 = v27;
      v33 = &v16[*(v27 + 24)];
      v34 = *v33;
      v35 = v33[8];
      sub_232B4D470();
      if (v35)
      {
        v34 = 0.0;
      }

      v36 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v37 = swift_beginAccess();
      *&v26[v36] = v34;
      MEMORY[0x238391D50](v37);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v24 += v61;
      --v23;
    }

    while (v23);
    v22 = v63;
    v5 = v53;
  }

  v38 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  v39 = v59;
  swift_beginAccess();
  v40 = *&v39[v38];
  *&v39[v38] = v22;

  v41 = v57;
  v42 = *(v56 + 24);
  v43 = v58;
  sub_232B21B7C(v58 + v42, v57);
  v44 = v60;
  if (sub_232B12480(v41, 1, v60) == 1)
  {
    sub_232B4D470();
    sub_232B13790(v41, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B4D470();
  }

  else
  {
    sub_232B13790(v41, &qword_27DDC67C8, &unk_232CF5E70);
    v45 = v43 + v42;
    v46 = v55;
    sub_232B21B7C(v45, v55);
    if (sub_232B12480(v46, 1, v44) == 1)
    {
      sub_232CE9330();
      v47 = &v5[*(v44 + 20)];
      *v47 = 0;
      *(v47 + 1) = 0;
      if (sub_232B12480(v46, 1, v44) != 1)
      {
        sub_232B13790(v46, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232B4D104(v46, v5, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    }

    v48 = sub_232B4C530();
    sub_232B4D470();
    sub_232B4D470();
    v49 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
    swift_beginAccess();
    v50 = *&v39[v49];
    *&v39[v49] = v48;
  }

  return v39;
}

char *DUCategoryClassificationResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v94 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v94);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v91 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  v93 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = &v84 - v18;
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  sub_232B350D8();
  v95 = v20;
  v96 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B3516C();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  v29 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v30 = sub_232B2D120(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v84 - v33;
  sub_232B350D8();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  sub_232B20704();
  v42 = v41 - v40;
  v43 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v44 = sub_232B13F24(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v49 = (v48 - v47);
  v50 = v3;
  v51 = a1;
  v52 = [objc_allocWithZone(v50) init];
  (*(v36 + 16))(v42, v51, a2);
  if (swift_dynamicCast())
  {
    v88 = v36;
    v89 = v52;
    v90 = a2;
    v87 = v43;
    sub_232B12504(v34, 0, 1, v43);
    sub_232B4D104(v34, v49, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
    v53 = *v49;
    v54 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v55 = *(v53 + 16);
    if (v55)
    {
      v85 = v49;
      v86 = v51;
      v56 = v53 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v95 = *(v95 + 72);
      do
      {
        sub_232B4D4C4(v56, v28, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
        sub_232B4D4C4(v28, v25, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
        v57 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
        sub_232B4D560();
        sub_232B4D470();
        v58 = (v25 + *(v96 + 20));
        if (v58[1])
        {
          v59 = *v58;
          v60 = v58[1];
        }

        else
        {
          v59 = 0;
          v60 = 0xE000000000000000;
        }

        v61 = &v57[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
        sub_232B13F5C();
        v62 = *(v61 + 1);
        *v61 = v59;
        *(v61 + 1) = v60;

        v63 = v25 + *(v96 + 24);
        v64 = *v63;
        LODWORD(v61) = *(v63 + 8);
        sub_232B4D560();
        sub_232B4D470();
        if (v61)
        {
          v64 = 0.0;
        }

        v65 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
        v66 = sub_232B13F5C();
        *&v57[v65] = v64;
        MEMORY[0x238391D50](v66);
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v56 += v95;
        --v55;
      }

      while (v55);
      v54 = v97;
      v51 = v86;
      v49 = v85;
    }

    v68 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
    v67 = v89;
    sub_232B13F5C();
    v69 = *&v67[v68];
    *&v67[v68] = v54;

    v70 = *(v87 + 24);
    v71 = v92;
    sub_232B21B7C(v49 + v70, v92);
    v72 = v94;
    sub_232B351B0(v71, 1, v94);
    v73 = v90;
    v74 = v93;
    v75 = v88;
    if (v76)
    {
      (*(v88 + 8))(v51, v90);
      sub_232B13790(v71, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232B4D5E8();
    }

    else
    {
      sub_232B13790(v71, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232B21B7C(v49 + v70, v74);
      sub_232B351B0(v74, 1, v72);
      if (v76)
      {
        v77 = v91;
        sub_232CE9330();
        v78 = (v77 + *(v72 + 20));
        *v78 = 0;
        v78[1] = 0;
        sub_232B351B0(v74, 1, v72);
        if (!v76)
        {
          sub_232B13790(v74, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232B4D578();
        sub_232B4D104(v74, v91, v79);
      }

      v80 = sub_232B4C530();
      (*(v75 + 8))(v51, v73);
      sub_232B4D5E8();
      v81 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
      sub_232B13F5C();
      v82 = *&v67[v81];
      *&v67[v81] = v80;
    }
  }

  else
  {
    (*(v36 + 8))(v51, a2);

    sub_232B12504(v34, 1, 1, v43);
    sub_232B13790(v34, &qword_27DDC7008, &unk_232CFBAB0);
    return 0;
  }

  return v67;
}

char *sub_232B4C2DC()
{
  sub_232B4D640();
  v1 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v3 = (v0 + *(v2 + 20));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  sub_232B13F5C();
  v7 = *(v6 + 1);
  *v6 = v4;
  *(v6 + 1) = v5;

  v8 = v0 + *(v2 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_232B4D560();
  sub_232B4D470();
  if (v10)
  {
    v9 = 0.0;
  }

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F5C();
  *&v1[v11] = v9;
  return v1;
}

char *sub_232B4C3E8()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v2 = sub_232B13F24(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v7 = v6 - v5;
  v8 = [objc_allocWithZone(v0) init];
  v9 = sub_232B4D590();
  sub_232B4D104(v9, v7, v10);
  v11 = (v7 + *(v1 + 20));
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  sub_232B13F5C();
  v15 = *(v14 + 1);
  *v14 = v12;
  *(v14 + 1) = v13;

  v16 = v7 + *(v1 + 24);
  v17 = *v16;
  v18 = *(v16 + 8);
  sub_232B4D560();
  sub_232B4D470();
  if (v18)
  {
    v17 = 0.0;
  }

  v19 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F5C();
  *&v8[v19] = v17;
  return v8;
}

char *sub_232B4C530()
{
  sub_232B4D640();
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(type metadata accessor for DUDebugInfo()) init];
  sub_232B4D578();
  sub_232B4D104(v0, v6, v8);
  v9 = (v6 + *(v2 + 28));
  v11 = *v9;
  v10 = v9[1];

  sub_232B4D5C4();
  sub_232B4D470();
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  sub_232B13F5C();
  v14 = *(v13 + 1);
  *v13 = v11;
  *(v13 + 1) = v12;

  return v7;
}

char *sub_232B4C624()
{
  sub_232B4D640();
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v7 = v6 - v5;
  v8 = [objc_allocWithZone(v1) init];
  sub_232B4D578();
  sub_232B4D104(v0, v7, v9);
  v10 = (v7 + *(v3 + 28));
  v12 = *v10;
  v11 = v10[1];

  sub_232B4D5C4();
  sub_232B4D470();
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  sub_232B13F5C();
  v15 = *(v14 + 1);
  *v14 = v12;
  *(v14 + 1) = v13;

  return v8;
}

id sub_232B4C714@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v17 = sub_232B13F24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v53 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v53 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - v26;
  *a1 = MEMORY[0x277D84F90];
  v28 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v29 = a1 + *(v28 + 20);
  sub_232CE9330();
  v30 = *(v28 + 24);
  v54 = a1;
  sub_232B4D66C(a1 + v30, 1);
  v31 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
  swift_beginAccess();
  v32 = *(v2 + v31);
  if (!v32)
  {
    sub_232B4D66C(v15, 1);
    goto LABEL_5;
  }

  v33 = v32;
  sub_232B55A40(v25);

  v34 = swift_dynamicCast();
  sub_232B4D66C(v15, v34 ^ 1u);
  sub_232B351B0(v15, 1, v16);
  if (v35)
  {
LABEL_5:
    sub_232B13790(v15, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_6;
  }

  sub_232B4D104(v15, v27, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  v36 = v53;
  sub_232B4D104(v27, v53, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  v37 = v54;
  sub_232B13790(v54 + v30, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232B4D104(v36, v37 + v30, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B4D66C(v37 + v30, 0);
LABEL_6:
  v38 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
  swift_beginAccess();
  v39 = *(v2 + v38);
  v40 = sub_232B26B10(v39);

  v42 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v40 == v42)
    {

      *v54 = v43;
      return result;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383922C0](v42, v39);
    }

    else
    {
      if (v42 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      result = *(v39 + 8 * v42 + 32);
    }

    v44 = result;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    sub_232B519F8(v9);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v43 + 16);
      sub_232B3673C();
      v43 = v51;
    }

    v45 = *(v43 + 16);
    if (v45 >= *(v43 + 24) >> 1)
    {
      sub_232B3673C();
      v43 = v52;
    }

    *(v43 + 16) = v45 + 1;
    v46 = v43 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v45;
    v47 = sub_232B4D590();
    result = sub_232B4D104(v47, v48, v49);
    ++v42;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_232B4CB04@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B4C714((v7 - v6));
  v9 = sub_232B4B13C(v8);
  result = sub_232B124A8(&qword_27DDC7010, &qword_232CF7DF0);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232B4CBF8(void *a1)
{
  type metadata accessor for DUCategoryClassificationResponse();
  sub_232B4D5AC();
  sub_232B4D3B8(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUCategoryClassificationResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B4D5AC();
  sub_232B4D3B8(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B4D64C();
    return 0;
  }

  swift_getObjectType();
  sub_232B4D64C();
  return v5;
}

id DUCategoryClassificationResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUCategoryClassificationResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryClassificationResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUCategoryClassificationResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryClassificationResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B4CFC4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B4B67C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B4CFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C(v5);
  if (v4)
  {
    v6 = sub_232B4D628();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v6;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v9;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C(v5);
  if (v4)
  {
    v6 = sub_232B4D628();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v6;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_232B4D3B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B4D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B4D52C(a1, a2, a3);
  sub_232B26B2C(v7);
  if (v6)
  {
    v8 = *(v4 + 8 * v5 + 32);
    v9 = swift_unknownObjectRetain();
  }

  else
  {
    sub_232B4D610();
  }

  *v3 = v9;
  return sub_232B4D5DC();
}

uint64_t sub_232B4D470()
{
  v1 = sub_232B4D640();
  v3 = v2(v1);
  sub_232B13F24(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_232B4D4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232B4D5E8()
{

  return sub_232B4D470();
}

void sub_232B4D610()
{

  JUMPOUT(0x2383922C0);
}

id sub_232B4D628()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_232B4D64C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B4D66C(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

void *sub_232B4D684()
{
  sub_232B124A8(&qword_27DDC7028, &qword_232CF7EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF7E80;
  *(inited + 32) = 0x74656B636974;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_232C0D410(&unk_28480CEB0);
  *(inited + 56) = 0x74706965636572;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_232C0D410(&unk_28480CF10);
  *(inited + 80) = 0x6D726F46786174;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_232C0D410(&unk_28480CF50);
  *(inited + 104) = 1836216166;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_232C0D410(&unk_28480CFB0);
  strcpy((inited + 128), "identification");
  *(inited + 143) = -18;
  *(inited + 144) = sub_232C0D410(&unk_28480D000);
  *(inited + 152) = 1802465122;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = sub_232C0D410(&unk_28480D040);
  *(inited + 176) = 0x657069636572;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = sub_232C0D410(&unk_28480D0A0);
  *(inited + 200) = 0x6C61636964656DLL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = sub_232C0D410(&unk_28480D110);
  sub_232B124A8(&qword_27DDC7030, &qword_232CF7EE8);
  result = sub_232CE9C60();
  off_27DDC7020 = result;
  return result;
}

uint64_t sub_232B4D840@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUCategoryClassificationSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_2819318B8;
  *a1 = result;
  return result;
}

uint64_t sub_232B4D8A8()
{
  v1 = *(v0[12] + 24);
  if (!v1)
  {
    v37 = 0x8000000232D04650;
    sub_232B4A95C();
    v38 = swift_allocError();
    v40 = 0xD000000000000015;
LABEL_27:
    *v39 = v40;
    *(v39 + 8) = v37;
    *(v39 + 16) = 0;
    v41 = 1;
    goto LABEL_28;
  }

  sub_232B5821C();
  if (!v2)
  {
    v37 = 0x8000000232D04670;
    sub_232B4A95C();
    v38 = swift_allocError();
    v40 = 0xD000000000000017;
    goto LABEL_27;
  }

  v52 = MEMORY[0x277D84F90];
  v50 = sub_232CE9DD0();
  v51 = v3;
  v44 = v1;

  if (qword_27DDC6370 != -1)
  {
LABEL_33:
    swift_once();
  }

  v5 = off_27DDC7020 + 64;
  v4 = *(off_27DDC7020 + 8);
  v6 = *(off_27DDC7020 + 32);
  sub_232B4DD98();
  v9 = v8 & v7;
  v11 = (63 - v10) >> 6;
  v48 = v12;

  v13 = 0;
  v45 = MEMORY[0x277D84F90];
  v47 = v5;
LABEL_5:
  v14 = v13;
  if (!v9)
  {
    goto LABEL_7;
  }

  do
  {
    v13 = v14;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v48 + 48) + 16 * v16);
    v18 = v17[1];
    v46 = *v17;
    v19 = *(*(v48 + 56) + 8 * v16);
    v20 = *(v19 + 56);
    v21 = *(v19 + 32);
    sub_232B4DD98();
    v24 = v23 & v22;
    v26 = (63 - v25) >> 6;
    swift_bridgeObjectRetain_n();
    v49 = v18;

    v27 = 0;
    while (v24)
    {
      v28 = v27;
LABEL_17:
      v29 = (*(v19 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v24)))));
      v31 = *v29;
      v30 = v29[1];
      v24 &= v24 - 1;
      v0[8] = v50;
      v0[9] = v51;
      v0[10] = v31;
      v0[11] = v30;
      sub_232B48080();
      if (sub_232CEA3F0())
      {

        v32 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
        v33 = &v32[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
        swift_beginAccess();
        v34 = *(v33 + 1);
        *v33 = v46;
        *(v33 + 1) = v49;

        v35 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
        v36 = swift_beginAccess();
        *&v32[v35] = 0x3FF0000000000000;
        MEMORY[0x238391D50](v36);
        v5 = v47;
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v45 = v52;
        goto LABEL_5;
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v28 >= v26)
      {
        break;
      }

      v24 = *(v19 + 56 + 8 * v28);
      ++v27;
      if (v24)
      {
        v27 = v28;
        goto LABEL_17;
      }
    }

    v14 = v13;
    v5 = v47;
  }

  while (v9);
  while (1)
  {
LABEL_7:
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_32;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *&v5[8 * v13];
    ++v14;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v41 = 0;
  v38 = v45;
LABEL_28:
  v42 = v0[1];

  return v42(v38, v41);
}

uint64_t sub_232B4DD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232B4D888(a2);
}

uint64_t sub_232B4DDB4(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v3 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = (a1 + 36);
      v7 = 1;
      v8 = v4;
      do
      {
        v9 = *v6++;
        v10 = v9;
        if (v8 < v9)
        {
          v5 = v7;
          v4 = v10;
          v8 = v10;
        }

        ++v7;
      }

      while (v3 != v7);
      if (v5 == 4)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v11 = [objc_allocWithZone(type metadata accessor for DUCategoryResult()) init];
    if (v5 > 9)
    {
      __break(1u);
    }

    else
    {
      v12 = v11;
      v13 = &unk_28480D190 + 16 * v5;
      v15 = *(v13 + 4);
      v14 = *(v13 + 5);
      v16 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      swift_beginAccess();
      v17 = *(v16 + 1);
      *v16 = v15;
      *(v16 + 1) = v14;

      v18 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      v19 = swift_beginAccess();
      *&v12[v18] = v4;
      MEMORY[0x238391D50](v19);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_12:
        sub_232CEA020();
        return v20;
      }
    }

    sub_232CEA000();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_232B4DF48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B4DFE4, 0, 0);
}

uint64_t sub_232B4DFE4()
{
  v1 = 0xD000000000000023;
  sub_232CE9810();
  if (MEMORY[0x238391580]())
  {
    if (sub_232CE9710())
    {
      type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
      v0[11] = swift_allocObject();
      v2 = swift_task_alloc();
      v0[12] = v2;
      *v2 = v0;
      v2[1] = sub_232B4E154;
      v3 = v0[8];

      return sub_232B4EC3C(v3);
    }

    v5 = "Backbone model is disabled";
    v1 = 0xD000000000000027;
  }

  else
  {
    v5 = "ationSmolBERToImplementation";
  }

  v6 = v5 | 0x8000000000000000;
  sub_232B4A95C();
  sub_232B4EC24();
  *v7 = v1;
  *(v7 + 8) = v6;
  *(v7 + 16) = 0;
  v8 = v0[10];

  v9 = sub_232B4ACE0();

  return v10(v9, 1);
}

uint64_t sub_232B4E154()
{
  v1 = *v0;
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v0;
  sub_232B482C0();
  *v8 = v7;
  *(v10 + 104) = v9;

  return MEMORY[0x2822009F8](sub_232B4E26C, 0, 0);
}

uint64_t sub_232B4E26C()
{
  v1 = v0[13];
  if (v1)
  {
    type metadata accessor for DUTrialAssetLoader();
    v0[14] = swift_initStackObject();
    v0[15] = sub_232C14534();
    v2 = sub_232C149A0();
    v3 = sub_232C15424(0xD00000000000002DLL, 0x8000000232D043D0, 0xD000000000000015, 0x8000000232D04740, v2 & 1);
    v0[16] = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v5 = v1;
      v6 = [v4 init];
      v0[17] = v6;
      v7 = *(MEMORY[0x277CBFDF0] + 4);
      v8 = swift_task_alloc();
      v0[18] = v8;
      *v8 = v0;
      v8[1] = sub_232B4E4A0;

      return MEMORY[0x282111978](v5, v6);
    }

    sub_232B4A95C();
    v9 = sub_232B4EC24();
    *v11 = 0xD000000000000022;
    *(v11 + 8) = 0x8000000232D04760;
    *(v11 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v9 = sub_232B4EC24();
    *v10 = 0xD00000000000002BLL;
    *(v10 + 8) = 0x8000000232D04710;
    *(v10 + 16) = 0;
  }

  v12 = v0[10];

  v13 = v0[1];

  return v13(v9, 1);
}

uint64_t sub_232B4E4A0()
{
  v2 = *v1;
  sub_232B482C0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v0;

  if (v0)
  {
    v7 = sub_232B4E828;
  }

  else
  {
    v8 = *(v2 + 104);

    v7 = sub_232B4E5C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_232B4E5C0()
{
  v1 = v0[19];
  v2 = sub_232CE9D20();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v0[10];
  sub_232CEA1F0();

  v5 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v6 = sub_232B12480(v4, 1, v5);
  v7 = v0[10];
  if (v6 == 1)
  {
    sub_232B4EB58(v0[10]);
LABEL_4:
    v8 = v0[19];
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[13];
    sub_232B4A95C();
    sub_232B4EC24();
    *v12 = 0xD000000000000029;
    *(v12 + 8) = 0x8000000232D047C0;
    *(v12 + 16) = 0;

    swift_unknownObjectRelease();

    v13 = 1;
    goto LABEL_8;
  }

  sub_232B4EBC0();
  v14 = sub_232CE9A80();
  (*(*(v5 - 8) + 8))(v7, v5);
  v15 = sub_232B4DDB4(v14);

  v16 = v0[19];
  v17 = v0[15];
  v18 = v0[16];
  v19 = v0[13];
  if (v15)
  {
    v20 = v0[19];
    swift_unknownObjectRelease();

    v13 = 0;
  }

  else
  {
    sub_232B4A95C();
    sub_232B4EC24();
    *v21 = 0xD000000000000042;
    *(v21 + 8) = 0x8000000232D047F0;
    v13 = 1;
    *(v21 + 16) = 1;

    swift_unknownObjectRelease();
  }

LABEL_8:
  v22 = v0[10];

  v23 = sub_232B4ACE0();

  return v24(v23, v13);
}

uint64_t sub_232B4E828()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  sub_232CEA4F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238391C30](0xD00000000000002ALL, 0x8000000232D04790);
  *(v0 + 56) = v1;
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  sub_232CEA5B0();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_232B4A95C();
  sub_232B4EC24();
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v7 + 16) = 1;

  v8 = *(v0 + 80);

  v9 = sub_232B4ACE0();

  return v10(v9, 1);
}

uint64_t sub_232B4E99C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232B4EA38;

  return sub_232B4DF48(a2);
}

uint64_t sub_232B4EA38(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;
  sub_232B482C0();
  *v8 = v7;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232B4EB58(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B4EBC0()
{
  result = qword_27DDC7040;
  if (!qword_27DDC7040)
  {
    sub_232B27EEC(&qword_27DDC6FA0, &unk_232CF7CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7040);
  }

  return result;
}

uint64_t sub_232B4EC24()
{

  return swift_allocError();
}

uint64_t sub_232B4EC3C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4EC50()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  sub_232B51348(v0, &off_281931808);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4ECF8()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4EDDC()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    sub_232B51274();
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B4EE70(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return sub_232B512BC();
}

uint64_t sub_232B4EE88()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUWordPieceTokenizerSpecification();
  sub_232B51348(v0, &off_281932858);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4EF30()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4F014()
{
  sub_232B26C7C();
  sub_232B512CC();
  v2 = *(v0 + 168);
  if (v1)
  {
    sub_232B5120C(v0 + 96);
    v3 = sub_232CE9700();
    v4 = v2;
    v5 = 1;
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    v6 = sub_232CE9700();
    v5 = swift_dynamicCast() ^ 1;
    v4 = v2;
    v3 = v6;
  }

  sub_232B12504(v4, v5, 1, v3);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_232B4F0F8(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F10C()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  sub_232B51348(v0, &off_281931E60);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F1B4()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4F298()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    type metadata accessor for DUDocument();
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B4F32C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F340()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventDDSpecification();
  sub_232B51348(v0, &off_281931D88);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F3E8()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4F4CC()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC7070, &qword_232CF8048);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B4F570(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F584()
{
  sub_232B26C7C();
  v2 = v1[24];
  v3 = type metadata accessor for DUConcatenatedDocumentTextSpecification();
  sub_232B51348(v3, &off_281931930);

  v4 = swift_task_alloc();
  v1[25] = v4;
  *v4 = v1;
  v4[1] = sub_232B4F648;
  v5 = v1[23];

  return sub_232BEEB30((v1 + 7), v0);
}

uint64_t sub_232B4F648()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4F72C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C((v0 + 12));
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    if (swift_dynamicCast())
    {
      v2 = v0[21];
      v3 = v0[22];
      goto LABEL_6;
    }
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_232B4F7DC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F7F0()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  sub_232B51348(v0, &off_281931E10);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4F898()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4F97C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4F990()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUPosTaggingSpecification();
  sub_232B51348(v0, &off_2814E0E20);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FA38()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4FB1C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC7050, &qword_232CF8000);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B4FBC0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4FBD4()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUUserInterfaceUnderstandingSpecification();
  sub_232B51348(v0, &off_281932770);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FC7C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4FD60()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC7060, &qword_232CF8020);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B4FE04(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B4FE18()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUPoemSpecification();
  sub_232B51348(v0, &off_2814E11E8);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B4FEC0()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B4FFA4()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC6AF0, &qword_232CF6E70);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B50048(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B5005C()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventSpecification();
  sub_232B51348(v0, &off_281932028);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50104()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B501E8()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    type metadata accessor for DUFoundInEventResult();
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B5027C(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B50290()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DULanguageTaggingSpecification();
  sub_232B51348(v0, &off_281932220);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50338()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B5041C()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B504C0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B504D4()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUStructuredExtractionSpecification();
  sub_232B51348(v0, &off_281932528);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B5057C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B50660()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC7058, &qword_232CF8010);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B50704(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_232B50724, 0, 0);
}

uint64_t sub_232B50724()
{
  sub_232B26C7C();
  v1 = *(v0 + 184);
  v2 = type metadata accessor for DUCategoryClassificationSpecification();
  sub_232B51348(v2, &off_2819318B8);

  v3 = swift_task_alloc();
  v4 = sub_232B51358(v3);
  *v4 = v5;
  v6 = sub_232B512E8(v4);

  return sub_232BEEB30(v6, v7);
}

uint64_t sub_232B507CC()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B508B0()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B124A8(&qword_27DDC7048, &qword_232CF7FC0);
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B50954(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return sub_232B512BC();
}

uint64_t sub_232B50968()
{
  sub_232B26C7C();
  sub_232B51368();
  v0 = type metadata accessor for DUFoundInEventClassificationSpecification();
  sub_232B51348(v0, &off_281931D38);

  v1 = swift_task_alloc();
  v2 = sub_232B51358(v1);
  *v2 = v3;
  v4 = sub_232B512E8(v2);

  return sub_232BEEB30(v4, v5);
}

uint64_t sub_232B50A10()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  sub_232B51338();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v0;
  sub_232B26B3C();
  *v7 = v6;

  sub_232B2040C((v2 + 16));
  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232B50AF4()
{
  sub_232B26C44();
  sub_232B512CC();
  if (v1)
  {
    sub_232B5120C(v0 + 96);
  }

  else
  {
    sub_232B51300();
    sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
    sub_232B5139C();
    type metadata accessor for DUFoundInEventClassificationResult();
    sub_232B51314();
    sub_232B51380();
  }

  sub_232B51374();

  return v2();
}

uint64_t sub_232B50BE8()
{
  sub_232B26C7C();
  v2 = v1;
  *(v0 + 184) = v3;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_232B50C94;

  return sub_232B50704(v2);
}

uint64_t sub_232B50C94()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = v1;
  v3 = *(v1 + 192);
  v9 = *v0;
  *(v2 + 200) = v4;

  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232B50D84()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[23];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(v2 + v3);
      v6 = v5;
    }

    else
    {
      v6 = [objc_allocWithZone(type metadata accessor for DUCategoryClassificationResponse()) init];
      v5 = 0;
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = v6;
    v7 = v6;
    v8 = v5;

    v9 = *(v2 + v3);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
      swift_beginAccess();
      v11 = *(v9 + v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v12 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
    swift_beginAccess();
    v13 = *&v7[v12];
    *&v7[v12] = v11;

    v14 = *(v2 + v3);
    if (v14)
    {
      swift_beginAccess();
      v15 = v14;
      sub_232C5E4A4(v1);
      swift_endAccess();
    }

    else
    {
    }

    v16 = *(v2 + v3);
    if (v16)
    {
      v17 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
      swift_beginAccess();
      v18 = *&v16[v17];
      if (v18)
      {
        v19 = v16;
        v20 = v18;
        v21 = v18;
      }

      else
      {
        v22 = objc_allocWithZone(type metadata accessor for DUDebugInfo());
        v23 = v16;
        v21 = [v22 init];
        v20 = *&v16[v17];
      }

      *&v16[v17] = v21;
      v24 = v18;

      v25 = *(v2 + v3);
      if (v25)
      {
        v26 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_responseDebugInfo;
        swift_beginAccess();
        v27 = *(v25 + v26);
        if (v27)
        {
          swift_beginAccess();
          v28 = v27;
          MEMORY[0x238391C30](0xD00000000000001DLL, 0x8000000232D04890);
          swift_endAccess();
        }
      }
    }
  }

  v29 = v0[1];

  return v29();
}

id sub_232B5100C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 256;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232B51068()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232B51110;

  return sub_232B50BE8();
}

uint64_t sub_232B51110()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_232B5120C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B51274()
{
  result = qword_27DDC7068;
  if (!qword_27DDC7068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7068);
  }

  return result;
}

__n128 sub_232B512CC()
{
  *(v0 + 128) = *(v0 + 88);
  result = *(v0 + 56);
  v2 = *(v0 + 72);
  *(v0 + 96) = result;
  *(v0 + 112) = v2;
  return result;
}

uint64_t sub_232B512E8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 176);
  return v2 + 56;
}

__n128 sub_232B51300()
{
  *(v0 + 136) = *(v0 + 56);
  result = *(v0 + 72);
  *(v0 + 152) = result;
  return result;
}

uint64_t sub_232B51314()
{

  return swift_dynamicCast();
}

uint64_t sub_232B51348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[5] = result;
  v3[6] = a2;
  v3[2] = v2;
  return result;
}

char *DUCategoryResult.__allocating_init<A>(proto:)()
{
  v2 = sub_232B124A8(&qword_27DDC7078, &qword_232CF8060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v0) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v5, 0, 1, v6);
    sub_232B515F4(v5, v1);
    v9 = (v1 + *(v6 + 20));
    if (v9[1])
    {
      v10 = *v9;
      v11 = v9[1];
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
    sub_232B13F5C();
    v13 = *(v12 + 1);
    *v12 = v10;
    *(v12 + 1) = v11;

    v14 = v1 + *(v6 + 24);
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_232B51658(v1);
    if (v16)
    {
      v15 = 0.0;
    }

    v17 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
    sub_232B13F5C();
    *&v8[v17] = v15;
  }

  else
  {

    sub_232B12504(v5, 1, 1, v6);
    sub_232B5158C(v5);
    return 0;
  }

  return v8;
}

uint64_t sub_232B5158C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7078, &qword_232CF8060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B515F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B51658(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUCategoryResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232B51734()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232B517F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F5C();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B5184C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B517F4(v2, v3);
}

double sub_232B51900()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F74();
  return *(v0 + v1);
}

uint64_t sub_232B51960(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232B519F8@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + *(v3 + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier);
  sub_232B13F74();
  v7 = *v6;
  v8 = v6[1];
  *v4 = v7;
  v4[1] = v8;
  v9 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
  sub_232B13F74();
  *v5 = *(v1 + v9);
  *(v5 + 8) = 0;
}

uint64_t sub_232B51A9C@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232B519F8(v1);
  v5 = sub_232B4C2DC();
  result = sub_232B124A8(&qword_27DDC7090, &qword_232CF8068);
  a1[3] = result;
  *a1 = v5;
  return result;
}

void sub_232B51B8C(void *a1)
{
  type metadata accessor for DUCategoryResult();
  sub_232B521B0();
  sub_232B52168(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUCategoryResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B521B0();
  sub_232B52168(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3A3E0();
    return 0;
  }

  swift_getObjectType();
  sub_232B3A3E0();
  return v5;
}

id DUCategoryResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUCategoryResult();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUCategoryResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUCategoryResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B51F2C@<X0>(char **a1@<X8>)
{
  result = sub_232B4C3E8();
  *a1 = result;
  return result;
}

uint64_t sub_232B52168(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B521E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUConcatenatedDocumentTextSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931930;
  *a1 = result;
  return result;
}

uint64_t sub_232B52248()
{
  v1 = *(*(v0 + 40) + 24);
  if (v1)
  {
    v2 = sub_232B586E8();
    if (v2)
    {
      v3 = v2;
      result = sub_232B26B10(v2);
      if (result)
      {
        v5 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v25 = v1;
        v6 = v1;
        for (i = 0; i != v5; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x2383922C0](i, v3);
          }

          else
          {
            v8 = *(v3 + 8 * i + 32);
          }

          v9 = v8;
          v10 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
          swift_beginAccess();
          v11 = *(v10 + 1);
          if (v11)
          {
            v12 = *v10;
            v13 = *(v10 + 1);

            MEMORY[0x238391C30](10, 0xE100000000000000);
            MEMORY[0x238391C30](v12, v11);
          }
        }

        v14 = 0;
        v15 = 0xE000000000000000;
        v1 = v25;
        goto LABEL_17;
      }

      v18 = v1;
    }

    else
    {
      v17 = v1;
    }

    v14 = 0;
    v15 = 0xE000000000000000;
LABEL_17:
    sub_232B526F4();
    if (v19)
    {
    }

    else
    {
      sub_232B580E8();
      if (v20)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      sub_232B58168();
      if (v21)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      sub_232B5821C();
      if (v22)
      {
        sub_232B526B4();
        sub_232B526D8();
      }

      v14 = 0;
      v15 = 0xE000000000000000;

      sub_232B526F4();
      if (!v23)
      {

        v14 = 0;
        v15 = 0xE000000000000000;
      }
    }

    goto LABEL_27;
  }

  sub_232B4A95C();
  v14 = swift_allocError();
  v15 = 0;
  *v16 = 0xD000000000000015;
  *(v16 + 8) = 0x8000000232D04650;
  *(v16 + 16) = 0;
LABEL_27:
  v24 = *(v0 + 8);

  return v24(v14, v15, v1 == 0);
}

uint64_t sub_232B524F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B5258C;

  return sub_232B52228(a2);
}

uint64_t sub_232B5258C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;

  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  v9 = *(v11 + 8);

  return v9();
}

void sub_232B526B4()
{

  JUMPOUT(0x238391C30);
}

void sub_232B526D8()
{

  JUMPOUT(0x238391C30);
}

void sub_232B52768(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v240 = a2;
  v262 = *MEMORY[0x277D85DE8];
  v5 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v6 = sub_232B2D120(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v226[-v9];
  v11 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v12 = sub_232B2D120(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B20714();
  v243 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v226[-v17];
  v19 = type metadata accessor for CalendarEvent(0);
  v20 = sub_232B13F24(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v248 = (v24 - v23);
  sub_232B554F0();
  v25 = sub_232CE8AE0();
  v26 = sub_232B48F0C(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v31);
  sub_232B55558();
  v255 = v32;
  sub_232B554F0();
  v251 = sub_232CE8F00();
  v33 = sub_232B48F0C(v251);
  v249 = v34;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v33);
  v39 = &v226[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v40);
  sub_232B55558();
  v242 = v41;
  sub_232B554F0();
  v42 = sub_232CE8E90();
  v43 = sub_232B48F0C(v42);
  v246 = v44;
  v247 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_232B20704();
  v253 = v48 - v47;
  sub_232B554F0();
  v256 = sub_232CE8D10();
  v49 = sub_232B48F0C(v256);
  v254 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v53);
  sub_232B20628();
  v245 = v54;
  MEMORY[0x28223BE20](v55);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v56);
  sub_232B20628();
  sub_232B55424();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v226[-v59];
  MEMORY[0x28223BE20](v58);
  sub_232B55558();
  v257 = v61;
  v62 = objc_allocWithZone(MEMORY[0x277CC5668]);
  v252 = a1;
  v63 = [v62 initWithDDScannerResult_];
  if (v63)
  {
    v64 = v63;
    v228 = v10;
    v65 = [v63 startDate];
    if (v65)
    {
      v66 = v65;
      v237 = v28;
      v244 = v25;
      v233 = v18;
      sub_232CE8CF0();

      v67 = *(v254 + 32);
      v68 = v256;
      v230 = v254 + 32;
      v229 = v67;
      v67(v257, v60, v256);
      v69 = v252;
      v70 = [v252 type];
      v71 = sub_232CE9D50();
      v73 = v72;

      sub_232B53BDC(v69);
      v75 = v74;
      if (!*MEMORY[0x277D04198])
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      sub_232CE9D50();
      sub_232B5557C();
      v77 = v77 && v73 == v76;
      if (v77)
      {
        goto LABEL_26;
      }

      sub_232B553E0();
      sub_232B555E0();
      if (v70)
      {
LABEL_9:
        v239 = 1;
        goto LABEL_28;
      }

      if (!*MEMORY[0x277D040B0])
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      sub_232CE9D50();
      sub_232B5557C();
      if (v77 && v73 == v84)
      {
        goto LABEL_26;
      }

      sub_232B553E0();
      sub_232B555E0();
      if (v70)
      {
        goto LABEL_9;
      }

      if (!*MEMORY[0x277D04190])
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        return;
      }

      sub_232CE9D50();
      sub_232B5557C();
      if (v77 && v73 == v86)
      {
LABEL_26:
        v239 = 1;
      }

      else
      {
        v239 = sub_232B553E0();
      }

LABEL_28:
      if (*MEMORY[0x277D040A8])
      {
        sub_232CE9D50();
        sub_232B5557C();
        v89 = v77 && v73 == v88;
        v234 = v75;
        v231 = a3;
        v238 = v19;
        v250 = v64;
        v232 = v39;
        if (v89)
        {
          goto LABEL_48;
        }

        sub_232B553E0();
        sub_232B555E0();
        if (v70)
        {
          goto LABEL_49;
        }

        if (*MEMORY[0x277D040B0])
        {
          sub_232CE9D50();
          sub_232B5557C();
          if (!v77 || v73 != v90)
          {
            sub_232B553E0();
            sub_232B555E0();
            if ((v70 & 1) == 0)
            {
              if (*MEMORY[0x277D040A0])
              {
                if (v71 != sub_232CE9D50() || v73 != v92)
                {
                  v94 = sub_232CEA750();

                  if ((v94 & 1) == 0)
                  {
                    if ((v239 & 1) == 0)
                    {
                      (*(v254 + 8))(v257, v68);

                      sub_232B55484();
                      sub_232B12504(v223, v224, v225, v19);
LABEL_86:
                      v222 = *MEMORY[0x277D85DE8];
                      sub_232B20A00();
                      return;
                    }

                    v227 = 0;
                    goto LABEL_52;
                  }

LABEL_50:
                  if ((v239 & 1) == 0)
                  {
                    v227 = 1;
                    v258 = MEMORY[0x277D84FA0];
LABEL_54:
                    v105 = v244;
                    v260 = 0x65626D754E796144;
                    v261 = 0xE900000000000072;
                    MEMORY[0x28223BE20](v95);
                    sub_232B55380();
                    v106 = &v260;
                    *(v107 - 16) = &v260;
                    v108 = v234;
                    v110 = sub_232C0A5F8(sub_232B551FC, v109, v234);
                    if (v110)
                    {
                      goto LABEL_57;
                    }

                    v111 = 0x6D754E68746E6F4DLL;
                    v260 = 0x6D754E68746E6F4DLL;
                    v261 = 0xEB00000000726562;
                    MEMORY[0x28223BE20](v110);
                    sub_232B55380();
                    *(v112 - 16) = &v260;
                    v110 = sub_232C0A5F8(sub_232B55340, v113, v108);
                    if (v110 || (sub_232B55390(), MEMORY[0x28223BE20](v114), sub_232B55380(), *(v115 - 16) = &v260, v110 = sub_232C0A5F8(sub_232B55340, v116, v108)))
                    {
LABEL_57:
                      v260 = 0x65626D754E796144;
                      v261 = 0xE900000000000072;
                      MEMORY[0x28223BE20](v110);
                      sub_232B55380();
                      *(v117 - 16) = &v260;
                      v119 = sub_232C0A5F8(sub_232B55340, v118, v234);
                      if (v119)
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v120 = sub_232CE8E80();
                        sub_232B48F0C(v120);
                        v122 = v121;
                        v124 = *(v123 + 72);
                        v125 = (*(v121 + 80) + 32) & ~*(v121 + 80);
                        v126 = swift_allocObject();
                        *(v126 + 16) = xmmword_232CF6460;
                        (*(v122 + 104))(v126 + v125, *MEMORY[0x277CC9968], v120);
                        v119 = sub_232C0A394(v126, v258);
                        v258 = v119;
                      }

                      v260 = 0x6D754E68746E6F4DLL;
                      v261 = 0xEB00000000726562;
                      MEMORY[0x28223BE20](v119);
                      sub_232B55380();
                      *(v127 - 16) = &v260;
                      if (sub_232B555A0(v128, v129))
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v130 = sub_232CE8E80();
                        sub_232B48F0C(v130);
                        v132 = v131;
                        v134 = *(v133 + 72);
                        v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
                        v136 = swift_allocObject();
                        *(v136 + 16) = xmmword_232CF6460;
                        (*(v132 + 104))(v136 + v135, *MEMORY[0x277CC9998], v130);
                        v258 = sub_232C0A394(v136, v258);
                      }

                      sub_232B55390();
                      MEMORY[0x28223BE20](v137);
                      sub_232B55380();
                      *(v138 - 16) = &v260;
                      if (sub_232B555A0(v139, v140))
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        v141 = sub_232CE8E80();
                        sub_232B48F0C(v141);
                        v143 = v142;
                        v145 = *(v144 + 72);
                        sub_232B55564();
                        v146 = swift_allocObject();
                        *(v146 + 16) = xmmword_232CF6460;
                        (*(v143 + 104))(&v260 + v146, *MEMORY[0x277CC9988], v141);
                        v258 = sub_232C0A394(v146, v258);
                      }

                      v105 = v244;
                      sub_232B55390();
                      MEMORY[0x28223BE20](v147);
                      sub_232B55380();
                      *(v148 - 16) = &v260;
                      v151 = sub_232B555A0(v149, v150);
                      if (v151 && (v260 = 0x6D754E68746E6F4DLL, v261 = 0xEB00000000726562, MEMORY[0x28223BE20](v151), sub_232B55380(), *(v152 - 16) = &v260, v155 = sub_232B555A0(v153, v154)))
                      {
                        v260 = 0x65626D754E796144;
                        v261 = 0xE900000000000072;
                        MEMORY[0x28223BE20](v155);
                        sub_232B55380();
                        *(v156 - 16) = &v260;
                        v159 = sub_232B555A0(v157, v158);
                      }

                      else
                      {

                        v159 = 0;
                      }

                      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                      sub_232B5139C();
                      v106 = sub_232CE8E80();
                      sub_232B48F0C(v106);
                      v161 = v160;
                      v163 = *(v162 + 72);
                      sub_232B55564();
                      v164 = swift_allocObject();
                      *(v164 + 16) = xmmword_232CF6460;
                      v165 = *(v161 + 104);
                      v111 = v161 + 104;
                      v165(&v260 + v164, *MEMORY[0x277CC9988], v106);
                      v258 = sub_232C0A394(v164, v258);
                      sub_232B55518();
                    }

                    else
                    {

                      if (v227)
                      {
                        sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                        sub_232B5139C();
                        v210 = sub_232CE8E80();
                        sub_232B48F0C(v210);
                        v212 = v211;
                        v214 = *(v213 + 72);
                        v215 = (*(v211 + 80) + 32) & ~*(v211 + 80);
                        v216 = swift_allocObject();
                        *(v216 + 16) = xmmword_232CF8180;
                        v106 = (v216 + v215);
                        v217 = *(v212 + 104);
                        v111 = v212 + 104;
                        v217(v106, *MEMORY[0x277CC9988], v210);
                        v217((v106 + v214), *MEMORY[0x277CC9998], v210);
                        v217((v106 + 2 * v214), *MEMORY[0x277CC9968], v210);
                        v258 = sub_232C0A394(v216, v258);
                      }

                      v159 = 0;
                      sub_232B55518();
                    }

                    sub_232CE8E50();
                    v166 = [v250 startTimeZone];
                    if (v166)
                    {
                      v167 = v166;
                      v168 = v241;
                      sub_232CE8EE0();

                      v169 = v249;
                      v170 = v242;
                      v171 = v168;
                      v172 = v251;
                      (*(v249 + 32))(v242, v171, v251);
                      (*(v169 + 16))(v232, v170, v172);
                      sub_232CE8E70();
                      (*(v169 + 8))(v170, v172);
                    }

                    sub_232CE8E20();
                    if (!v159)
                    {
                      v173 = v232;
                      sub_232CE8E60();
                      v174 = sub_232CE8ED0();
                      v175 = *(v249 + 8);
                      v176 = v251;
                      v175(v173, v251);
                      v259 = 0;
                      v106 = sub_232CE8CD0();
                      sub_232CE8E60();
                      v177 = sub_232CE8ED0();
                      v175(v173, v176);
                      v260 = v174;
                      v178 = [v252 dateFromReferenceDate:v106 referenceTimezone:v177 timezoneRef:&v260 allDayRef:&v259];

                      v105 = v244;
                      v179 = v260;

                      v111 = v256;
                      if (v178)
                      {
                        sub_232CE8CF0();

                        v180 = v235;
                        sub_232B555B8();
                        v181();
                        v182 = v236;
                        sub_232CE8E20();
                        (*(v254 + 8))(v180, v111);
                        v111 = v237;
                        v183 = v255;
                        (*(v237 + 8))(v255, v105);
                        (*(v111 + 32))(v183, v182, v105);
                      }

                      sub_232B55518();
                    }

                    v184 = v238;
                    v185 = v237;
                    v186 = v248;
                    (*(v237 + 16))(&v248[*(v238 + 20)], v111, v105);
                    v187 = *(v184 + 24);
                    sub_232B55484();
                    sub_232B12504(v188, v189, v190, v105);
                    *v186 = (v239 & 1) == 0;
                    sub_232B55484();
                    sub_232B12504(v191, v192, v193, v105);
                    v194 = v105;
                    v195 = v250;
                    v196 = [v250 endDate];
                    if (v196)
                    {
                      v197 = v196;
                      sub_232CE8CF0();

                      v198 = v245;
                      v199 = v256;
                      sub_232B555B8();
                      v200();
                      v201 = v243;
                      v202 = v253;
                      sub_232CE8E20();

                      sub_232B351FC();
                      sub_232B12504(v203, v204, v205, v194);
                      sub_232B55134(v201, v106);
                      if (!sub_232B12480(v106, 1, v194))
                      {
                        v206 = [v250 endTimeZone];
                        if (v206)
                        {
                          v207 = v206;
                          v208 = v228;
                          sub_232CE8EE0();

                          v209 = 0;
                        }

                        else
                        {
                          v209 = 1;
                          v208 = v228;
                        }

                        sub_232B12504(v208, v209, 1, v251);
                        sub_232CE8AD0();
                        v198 = v245;
                      }

                      v218 = *(v254 + 8);
                      v218(v198, v199);
                      (*(v237 + 8))(v255, v194);
                      (*(v246 + 8))(v202, v247);
                      v218(v257, v199);
                      sub_232B552D0(v106, &v186[v187]);
                    }

                    else
                    {

                      (*(v185 + 8))(v111, v194);
                      (*(v246 + 8))(v253, v247);
                      (*(v254 + 8))(v257, v256);
                    }

                    sub_232B5521C(v186, v231);
                    sub_232B351FC();
                    sub_232B12504(v219, v220, v221, v238);
                    sub_232B13790(v106, &qword_27DDC70B0, &unk_232CF81C0);
                    sub_232B55278(v186, type metadata accessor for CalendarEvent);
                    goto LABEL_86;
                  }

                  v227 = 1;
LABEL_52:
                  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
                  v96 = sub_232CE8E80();
                  sub_232B48F0C(v96);
                  v98 = v97;
                  v100 = *(v99 + 72);
                  v101 = (*(v97 + 80) + 32) & ~*(v97 + 80);
                  v102 = swift_allocObject();
                  *(v102 + 16) = xmmword_232CF8180;
                  v103 = v102 + v101;
                  v104 = *(v98 + 104);
                  v104(v103, *MEMORY[0x277CC9980], v96);
                  v104(v103 + v100, *MEMORY[0x277CC99A0], v96);
                  v104(v103 + 2 * v100, *MEMORY[0x277CC99A8], v96);
                  v95 = sub_232C0D110(v102);
                  v258 = v95;
                  goto LABEL_54;
                }

                goto LABEL_48;
              }

              goto LABEL_94;
            }

LABEL_49:

            goto LABEL_50;
          }

LABEL_48:

          goto LABEL_49;
        }

        goto LABEL_92;
      }

      goto LABEL_90;
    }
  }

  v78 = *MEMORY[0x277D85DE8];
  sub_232B55484();
  sub_232B20A00();

  sub_232B12504(v79, v80, v81, v82);
}

void sub_232B53BDC(void *a1)
{
  v1 = sub_232C0D76C(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = sub_232B26B10(v1);
  if (!v3)
  {
LABEL_26:

    return;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_31;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](v5, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 type];
    v10 = sub_232CE9D50();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v6 + 16);
      sub_232B35ECC();
      v6 = v26;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_232B35ECC();
      v6 = v27;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    v15 = sub_232B53BDC(v8);
    v16 = *(v15 + 16);
    v17 = *(v6 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v19 = v15;
    v20 = *(v6 + 24) >> 1;
    if (v20 < v18)
    {
      if (v17 > v18)
      {
        v28 = *(v6 + 16);
      }

      sub_232B35ECC();
      v6 = v29;
      v17 = *(v29 + 16);
      v20 = *(v29 + 24) >> 1;
      if (*(v19 + 16))
      {
LABEL_15:
        if ((v20 - v17) < v16)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = *(v6 + 16);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_30;
          }

          *(v6 + 16) = v24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_23:
    ++v5;

    if (v4 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_232B53E08(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC5698]) initWithDDScannerResult_];
  if (v1)
  {
    v2 = v1;
    sub_232C0D6D4(v1);
    v3 = MEMORY[0x277D84F98];
    if (v4)
    {

      v5 = *MEMORY[0x277CCA6E8];
      sub_232C0D6D4(v2);
      if (v6)
      {
        sub_232B554AC();
        sub_232B553B8();
        v3 = v66;
      }

      else
      {
        sub_232B20540(v5);
        if (v7)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v8 = sub_232B55464();
          sub_232B554C8(v8, v9, v10, v11, v12, v13, v14, v15, v65, v66);
          sub_232B55444();
          sub_232B551A4();
          sub_232B55490();
        }
      }
    }

    sub_232C0D6E0(v2);
    if (v16)
    {

      v17 = *MEMORY[0x277CCA6B0];
      sub_232C0D6E0(v2);
      if (v18)
      {
        sub_232B554AC();
        sub_232B553B8();
        v3 = v66;
      }

      else
      {
        sub_232B20540(v17);
        if (v19)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v20 = sub_232B55464();
          sub_232B554C8(v20, v21, v22, v23, v24, v25, v26, v27, v65, v66);
          sub_232B55444();
          sub_232B551A4();
          sub_232B55490();
        }
      }
    }

    sub_232C0D6EC(v2);
    if (v28)
    {

      v29 = *MEMORY[0x277CCA6E0];
      sub_232C0D6EC(v2);
      if (v30)
      {
        sub_232B554AC();
        sub_232B553B8();
        v3 = v66;
      }

      else
      {
        sub_232B20540(v29);
        if (v31)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v32 = sub_232B55464();
          sub_232B554C8(v32, v33, v34, v35, v36, v37, v38, v39, v65, v66);
          sub_232B55444();
          sub_232B551A4();
          sub_232B55490();
        }
      }
    }

    sub_232C0D6F8(v2);
    if (v40)
    {

      v41 = *MEMORY[0x277CCA6F0];
      sub_232C0D6F8(v2);
      if (v42)
      {
        sub_232B554AC();
        sub_232B553B8();
        v3 = v66;
      }

      else
      {
        sub_232B20540(v41);
        if (v43)
        {
          sub_232B55588();
          sub_232B55434();
          sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
          v44 = sub_232B55464();
          sub_232B554C8(v44, v45, v46, v47, v48, v49, v50, v51, v65, v66);
          sub_232B55444();
          sub_232B551A4();
          sub_232B55490();
        }
      }
    }

    sub_232C0D704(v2);
    if (v52)
    {

      v53 = *MEMORY[0x277CCA6B8];
      sub_232C0D704(v2);
      if (v54)
      {
        sub_232B554AC();
        sub_232B553B8();

        return v66;
      }

      sub_232B20540(v53);
      if (v55)
      {
        sub_232B55588();
        sub_232B55434();
        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
        v56 = sub_232B55464();
        sub_232B554C8(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66);
        sub_232B55444();
        sub_232B551A4();
        sub_232B55490();
      }
    }

    return v3;
  }

  return 0;
}

void sub_232B5414C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v150 = a5;
  v152 = a3;
  v153 = a4;
  v144 = a2;
  v154 = a6;
  v7 = sub_232CE8C00();
  v8 = sub_232B48F0C(v7);
  v136 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v135 = v13;
  v14 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  v15 = sub_232B2D120(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v148 = v134 - v18;
  v19 = sub_232B554F0();
  v149 = type metadata accessor for CalendarEvent(v19);
  v20 = sub_232B13F24(v149);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v147 = v24 - v23;
  sub_232B554F0();
  v25 = type metadata accessor for FoundInEventDataDetectorsOutput();
  v26 = sub_232B13F24(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v31 = v30 - v29;
  v32 = sub_232CE8AE0();
  sub_232B55484();
  sub_232B12504(v33, v34, v35, v32);
  v36 = v25[5];
  v37 = sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v38, v39, v40, v37);
  v145 = v25[6];
  v146 = v32;
  sub_232B55484();
  sub_232B12504(v41, v42, v43, v32);
  v44 = v25[7];
  sub_232B55484();
  sub_232B12504(v45, v46, v47, v37);
  v151 = v25[8];
  *(v31 + v151) = 0;
  sub_232B554E4(v25[9]);
  v142 = v48;
  sub_232B554E4(v25[10]);
  v143 = v49;
  sub_232B554E4(v25[11]);
  v138 = v50;
  sub_232B554E4(v25[12]);
  v139 = v51;
  sub_232B554E4(v25[13]);
  v141 = v52;
  sub_232B554E4(v25[14]);
  sub_232B554E4(v25[15]);
  v140 = v53;
  v134[0] = v25[16];
  sub_232B55484();
  v137 = v7;
  sub_232B12504(v54, v55, v56, v7);
  v57 = v25[17];
  *(v31 + v57) = 0;
  v58 = (v31 + v25[18]);
  v59 = v31 + v25[19];
  v60 = v31 + v25[20];
  v61 = [a1 type];
  sub_232CE9D50();

  v62 = sub_232CE9DD0();
  v64 = v63;

  v65 = v153;
  *v58 = v152;
  v58[1] = v65;
  v66 = a1;

  *v59 = [a1 range];
  *(v59 + 8) = 0;
  [a1 range];
  *v60 = v67;
  *(v60 + 8) = 0;
  v157 = v62;
  v158 = v64;
  sub_232B55528();
  v155 = v68;
  v156 = v69;
  sub_232B48080();
  if (sub_232CEA3F0())
  {

    *(v31 + v151) = 4;
    v70 = sub_232B53E08(a1);
    if (v70)
    {
      *(v31 + v57) = v70;
LABEL_28:
      v75 = v154;
      sub_232B5521C(v31, v154);
      v74 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v71 = v151;
    v157 = v62;
    v158 = v64;
    v155 = 1702125924;
    v156 = 0xE400000000000000;
    if ((sub_232B55404() & 1) == 0)
    {
      v157 = v62;
      v158 = v64;
      v155 = 1701669236;
      v156 = 0xE400000000000000;
      if ((sub_232B55404() & 1) == 0)
      {
        v157 = v62;
        v158 = v64;
        sub_232B55540();
        v155 = v81;
        v156 = v82;
        if (sub_232B55404())
        {

          objc_opt_self();
          v83 = sub_232B554FC();
          if (!v83)
          {
            goto LABEL_28;
          }

          v84 = v83;
          *(v31 + v71) = 10;
          v85 = &v157;
          v86 = [v84 trackingNumber];
          v87 = sub_232CE9D50();
          v89 = v88;

          v90 = v142;
          *v142 = v87;
          v90[1] = v89;
          v91 = [v84 carrier];
          v92 = sub_232CE9D50();
          v94 = v93;

          v95 = v143;
        }

        else
        {
          v157 = v62;
          v158 = v64;
          v155 = 0x656E6F6870;
          v156 = 0xE500000000000000;
          if (sub_232B55404())
          {

            objc_opt_self();
            v96 = sub_232B554FC();
            if (v96)
            {
              v97 = v96;
              *(v31 + v71) = 2;
              v98 = &v157;
              v99 = [v97 phoneNumber];
              v100 = sub_232CE9D50();
              v102 = v101;

              v103 = v141;
              *v141 = v100;
              v103[1] = v102;
            }

            goto LABEL_28;
          }

          v157 = v62;
          v158 = v64;
          v155 = 0x6C69616D65;
          v156 = 0xE500000000000000;
          if (sub_232B55404())
          {

            objc_opt_self();
            v104 = sub_232B554FC();
            if (!v104)
            {
              goto LABEL_28;
            }

            v105 = v104;
            *(v31 + v71) = 8;
            v106 = &v157;
            v107 = [v105 emailAddress];
            v92 = sub_232CE9D50();
            v94 = v108;

            v95 = v140;
          }

          else
          {
            v157 = v62;
            v158 = v64;
            sub_232B555CC();
            v155 = v109;
            v156 = v110;
            if ((sub_232B55404() & 1) == 0)
            {
              v157 = v62;
              v158 = v64;
              v155 = 7107189;
              v156 = 0xE300000000000000;
              v121 = sub_232B55404();

              if (v121)
              {
                v122 = [a1 url];
                if (v122)
                {
                  v123 = v122;
                  v124 = v134[1];
                  sub_232CE8BB0();

                  v125 = v136;
                  v126 = *(v136 + 32);
                  v127 = v135;
                  v128 = v124;
                  v129 = v137;
                  v126(v135, v128, v137);
                  if ([v66 category] == 1)
                  {
                    *(v31 + v71) = 3;
                    v130 = v134[0];
                    sub_232B13790(v31 + v134[0], &qword_27DDC6AD8, &unk_232CF82F0);
                    v126(v31 + v130, v127, v129);
                    sub_232B351FC();
                    sub_232B12504(v131, v132, v133, v129);
                  }

                  else
                  {
                    (*(v125 + 8))(v127, v129);
                  }
                }

                goto LABEL_28;
              }

              goto LABEL_8;
            }

            objc_opt_self();
            v111 = sub_232B554FC();
            if (!v111)
            {
              goto LABEL_28;
            }

            v112 = v111;
            *(v31 + v71) = 9;
            v113 = &v157;
            v114 = [v112 flightNumber];
            v115 = sub_232CE9D50();
            v117 = v116;

            v118 = v138;
            *v138 = v115;
            v118[1] = v117;
            v119 = [v112 airline];
            v92 = sub_232CE9D50();
            v94 = v120;

            v95 = v139;
          }
        }

        *v95 = v92;
        v95[1] = v94;
        goto LABEL_28;
      }
    }

    *(v31 + v71) = 5;
    v72 = v148;
    sub_232B52768(a1, v150, v148);
    v73 = v149;
    if (sub_232B12480(v72, 1, v149) != 1)
    {
      v76 = v147;
      sub_232B550D8(v72, v147);
      sub_232B13790(v31, &qword_27DDC70B0, &unk_232CF81C0);
      v77 = v146;
      (*(*(v146 - 8) + 32))(v31, v76 + *(v73 + 20), v146);
      sub_232B351FC();
      sub_232B12504(v78, v79, v80, v77);
      sub_232B55134(v76 + *(v73 + 24), v31 + v145);
      goto LABEL_28;
    }

    sub_232B13790(v72, &qword_27DDC70A8, &unk_232CF81B0);
  }

LABEL_8:
  v74 = 1;
  v75 = v154;
LABEL_29:
  sub_232B12504(v75, v74, 1, v25);
  sub_232B55278(v31, type metadata accessor for FoundInEventDataDetectorsOutput);
  sub_232B20A00();
}

id sub_232B54A2C(void *a1)
{
  v2 = [a1 type];
  sub_232CE9D50();

  v3 = sub_232CE9DD0();
  v5 = v4;

  v17 = v3;
  v18 = v5;
  sub_232B55528();
  v15 = v6;
  v16 = v7;
  sub_232B48080();
  if (sub_232B5535C())
  {
    v8 = 0x277CC5698;
LABEL_6:

    return [objc_allocWithZone(*v8) initWithDDScannerResult_];
  }

  v17 = v3;
  v18 = v5;
  v15 = 1702125924;
  v16 = 0xE400000000000000;
  if (sub_232B5535C() & 1) != 0 || (v17 = v3, v18 = v5, v15 = 1701669236, v16 = 0xE400000000000000, (sub_232B5535C()))
  {
    v8 = 0x277CC5668;
    goto LABEL_6;
  }

  v17 = v3;
  v18 = v5;
  sub_232B55540();
  v15 = v10;
  v16 = v11;
  if (sub_232B5535C())
  {
    v8 = 0x277CC56A0;
    goto LABEL_6;
  }

  v17 = v3;
  v18 = v5;
  v15 = 0x656E6F6870;
  v16 = 0xE500000000000000;
  if (sub_232B5535C())
  {
    v8 = 0x277CC5690;
    goto LABEL_6;
  }

  v17 = v3;
  v18 = v5;
  v15 = 0x6C69616D65;
  v16 = 0xE500000000000000;
  if (sub_232B5535C())
  {
    v8 = 0x277CC5670;
    goto LABEL_6;
  }

  v17 = v3;
  v18 = v5;
  sub_232B555CC();
  v15 = v12;
  v16 = v13;
  if (sub_232B5535C())
  {
    v8 = 0x277CC5678;
    goto LABEL_6;
  }

  v17 = v3;
  v18 = v5;
  v15 = 7107189;
  v16 = 0xE300000000000000;
  v14 = sub_232B5535C();

  if (v14)
  {
    v8 = 0x277CC5680;
    return [objc_allocWithZone(*v8) initWithDDScannerResult_];
  }

  return 0;
}

void sub_232B54C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = sub_232B124A8(&qword_27DDC70A0, &qword_232CF81A8);
  v6 = sub_232B2D120(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v49 - v9;
  v53 = type metadata accessor for FoundInEventDataDetectorsOutput();
  v11 = sub_232B48F0C(v53);
  v49[0] = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20714();
  v52 = v15;
  MEMORY[0x28223BE20](v16);
  sub_232B55558();
  v51 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
  v19 = objc_opt_self();
  v20 = sub_232CE9D20();
  v21 = [v19 scanString:v20 range:0 configuration:{MEMORY[0x238391CC0](a1, a2), v18}];

  sub_232B55094();
  v22 = sub_232CE9FE0();

  v23 = v22;
  v24 = sub_232B26B10(v22);
  if (!v24)
  {
LABEL_23:

    sub_232B20A00();
    return;
  }

  v25 = v24;
  if (v24 >= 1)
  {
    v50 = v10;
    v26 = 0;
    v56 = MEMORY[0x277D84F90];
    v57 = v24;
    v27 = v23 & 0xC000000000000001;
    v28 = &off_2789A8000;
    v49[1] = a2;
    v55 = v23 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v29 = MEMORY[0x2383922C0](v26, v23);
      }

      else
      {
        v29 = *(v23 + 8 * v26 + 32);
      }

      v30 = v29;
      [v29 v28[142]];
      sub_232CEA110();
      if (v31)
      {
      }

      else
      {
        v32 = a1;
        v33 = sub_232CE9FB0();
        v34 = MEMORY[0x238391B80](v33);
        v36 = v35;

        v37 = sub_232B54A2C(v30);
        if (v37)
        {
          v38 = v37;
          v39 = v23;
          v40 = v18;
          v41 = v50;
          sub_232B5414C(v30, v37, v34, v36, v54, v50);

          if (sub_232B12480(v41, 1, v53) == 1)
          {

            sub_232B13790(v41, &qword_27DDC70A0, &qword_232CF81A8);
          }

          else
          {
            v42 = v51;
            sub_232B550D8(v41, v51);
            sub_232B5521C(v42, v52);
            v43 = v56;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = *(v43 + 16);
              sub_232B35FA0();
              v43 = v47;
            }

            v44 = *(v43 + 16);
            if (v44 >= *(v43 + 24) >> 1)
            {
              sub_232B35FA0();
              v56 = v48;
            }

            else
            {
              v56 = v43;
            }

            sub_232B55278(v51, type metadata accessor for FoundInEventDataDetectorsOutput);
            v45 = v56;
            *(v56 + 16) = v44 + 1;
            sub_232B550D8(v52, v45 + ((*(v49[0] + 80) + 32) & ~*(v49[0] + 80)) + *(v49[0] + 72) * v44);
          }

          v18 = v40;
          v23 = v39;
        }

        else
        {
        }

        v25 = v57;
        a1 = v32;
        v27 = v55;
        v28 = &off_2789A8000;
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_23;
  }

  __break(1u);
}

unint64_t sub_232B55094()
{
  result = qword_2814DF918;
  if (!qword_2814DF918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF918);
  }

  return result;
}

uint64_t sub_232B550D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B5139C();
  v6 = v5(v4);
  sub_232B13F24(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_232B55134(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_232B551A4()
{
  result = qword_27DDC65C8;
  if (!qword_27DDC65C8)
  {
    type metadata accessor for NSTextCheckingKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC65C8);
  }

  return result;
}

uint64_t sub_232B5521C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B5139C();
  v6 = v5(v4);
  sub_232B13F24(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_232B55278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B552D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5535C()
{

  return sub_232CEA3F0();
}

id sub_232B553B8()
{

  return sub_232B1FAB4();
}

uint64_t sub_232B553E0()
{

  return sub_232CEA750();
}

uint64_t sub_232B55404()
{

  return sub_232CEA3F0();
}

void sub_232B55444()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for NSTextCheckingKey();
}

uint64_t sub_232B55464()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B55490()
{

  return sub_232CEA5E0();
}

uint64_t sub_232B554AC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232B554C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 8 * v10);
}

void sub_232B554E4(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B554FC()
{
  v2 = *(v0 - 216);

  return swift_dynamicCastObjCClass();
}

uint64_t sub_232B55588()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL sub_232B555A0(uint64_t a1, uint64_t a2)
{

  return sub_232C0A5F8(v2, a2, v3);
}

uint64_t sub_232B555E0()
{
}

char *DUDebugInfo.__allocating_init<A>(proto:)()
{
  v1 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(v0) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v4, 0, 1, v5);
    sub_232B21BEC(v4, v8);
    v10 = &v8[*(v5 + 20)];
    v12 = *v10;
    v11 = *(v10 + 1);

    sub_232B21C50(v8);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
    swift_beginAccess();
    v15 = *(v14 + 1);
    *v14 = v12;
    *(v14 + 1) = v13;
  }

  else
  {

    sub_232B12504(v4, 1, 1, v5);
    sub_232B557A4(v4);
    return 0;
  }

  return v9;
}

uint64_t sub_232B557A4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DUDebugInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232B5588C()
{
  sub_232B56134();
  v2 = *v0;
  v1 = v0[1];

  return v2;
}

uint64_t sub_232B55940(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B559A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B55940(v2, v3);
}

uint64_t sub_232B55A40@<X0>(void *a1@<X8>)
{
  sub_232CE9330();
  v2 = (a1 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo() + 20));
  *v2 = 0;
  v2[1] = 0;
  sub_232B56134();
  v3 = a1[1];
  *v2 = *a1;
  v2[1] = v3;
}

uint64_t sub_232B55AA0@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B55A40((&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v5 = sub_232B4C530();
  result = sub_232B124A8(&qword_27DDC70D0, &qword_232CF81D8);
  a1[3] = result;
  *a1 = v5;
  return result;
}

void sub_232B55BA0(void *a1)
{
  type metadata accessor for DUDebugInfo();
  sub_232B5611C();
  sub_232B560D4(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDebugInfo.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5611C();
  sub_232B560D4(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B4D64C();
    return 0;
  }

  swift_getObjectType();
  sub_232B4D64C();
  return v5;
}

id DUDebugInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding11DUDebugInfo_debugString];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUDebugInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DUDebugInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDebugInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B55F34@<X0>(char **a1@<X8>)
{
  result = sub_232B4C624();
  *a1 = result;
  return result;
}

uint64_t sub_232B560D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B56134()
{

  return swift_beginAccess();
}

double sub_232B5617C()
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow);
  sub_232B13F74();
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

uint64_t sub_232B561DC(double a1, double a2, double a3, double a4)
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow);
  result = sub_232B13F5C();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void sub_232B56238(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_232B5617C();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

double sub_232B56308()
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen);
  sub_232B13F74();
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_232B56364(double a1, double a2)
{
  sub_232B459B0(OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen);
  result = sub_232B13F5C();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_232B5644C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  sub_232B13F74();
  return *(v0 + v1);
}

uint64_t sub_232B564B0(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

char *sub_232B56548(uint64_t a1)
{
  v6 = sub_232CE9DA0();
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(type metadata accessor for DUDisplayInfo()) init];
  sub_232B57B5C(a1, v14);
  v16 = *v14;
  v17 = *(v14 + 8);
  sub_232CE9D90();
  sub_232CE9D70();
  if (v18)
  {
    sub_232B2F0F4();
    if (v19)
    {
      v20 = sub_232CE9D20();

      CGRectFromString(v20);
      sub_232B45A88();

      goto LABEL_17;
    }
  }

  v21 = v10[9];
  v23 = sub_232B57BC0(v14 + v10[8]);
  if (v24)
  {
    v4 = v23;
  }

  else
  {
    v4 = 0.0;
  }

  v25 = sub_232B57BC0(v14 + v22);
  if (v24)
  {
    v1 = v25;
  }

  else
  {
    v1 = v26;
  }

  v27 = v10[11];
  v29 = sub_232B57BC0(v14 + v10[10]);
  if (v24)
  {
    v2 = v29;
  }

  else
  {
    v2 = v30;
  }

  v31 = sub_232B57BC0(v14 + v28);
  if (v24)
  {
    v3 = v31;
  }

  else
  {
    v3 = v32;
  }

LABEL_17:
  v33 = &v15[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  sub_232B13F5C();
  *v33 = v4;
  v33[1] = v1;
  v33[2] = v2;
  v33[3] = v3;
  v34 = *(v14 + 16);
  v35 = *(v14 + 24);
  sub_232CE9D90();
  sub_232CE9D70();
  if (v36)
  {
    sub_232B2F0F4();
    if (v37)
    {
      v38 = v15;
      v39 = sub_232CE9D20();

      v40 = CGPointFromString(v39);

      sub_232B57030(a1);
      v41 = &v38[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
      sub_232B13F5C();
      *v41 = v40;
      goto LABEL_29;
    }

    sub_232B57030(a1);
  }

  else
  {
    sub_232B57030(a1);
  }

  v42 = v10[13];
  v44 = sub_232B57BC0(v14 + v10[12]);
  if (v24)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = sub_232B57BC0(v14 + v43);
  if (v24)
  {
    v48 = v46;
  }

  else
  {
    v48 = v47;
  }

  v49 = &v15[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  sub_232B13F5C();
  *v49 = v45;
  v49[1] = v48;
  v50 = v15;
LABEL_29:
  v51 = *(v14 + 32);
  sub_232B57030(v14);
  v52 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  sub_232B13F5C();
  v15[v52] = v51;

  return v15;
}

char *sub_232B56804(uint64_t a1)
{
  v2 = v1;
  v4 = sub_232CE9DA0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(v2) init];
  sub_232B57B5C(a1, v9);
  v11 = *v9;
  v12 = *(v9 + 1);
  sub_232CE9D90();
  v13 = sub_232CE9D70();
  if (v14)
  {
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = sub_232CE9D20();

      v47 = CGRectFromString(v16);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;

      goto LABEL_19;
    }
  }

  v21 = v6[9];
  v22 = &v9[v6[8]];
  if (v22[8])
  {
    x = 0.0;
  }

  else
  {
    x = *v22;
  }

  if (v9[v21 + 8])
  {
    y = 0.0;
  }

  else
  {
    y = *&v9[v21];
  }

  v23 = v6[11];
  v24 = &v9[v6[10]];
  if (v24[8])
  {
    width = 0.0;
  }

  else
  {
    width = *v24;
  }

  v25 = *&v9[v23];
  if (v9[v23 + 8])
  {
    height = 0.0;
  }

  else
  {
    height = *&v9[v23];
  }

LABEL_19:
  v26 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  swift_beginAccess();
  *v26 = x;
  v26[1] = y;
  v26[2] = width;
  v26[3] = height;
  v27 = *(v9 + 2);
  v28 = *(v9 + 3);
  sub_232CE9D90();
  v29 = sub_232CE9D70();
  if (v30)
  {
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v10;
      v33 = sub_232CE9D20();

      v34 = CGPointFromString(v33);

      sub_232B57030(a1);
      v35 = &v32[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
      swift_beginAccess();
      *v35 = v34;
      goto LABEL_33;
    }

    sub_232B57030(a1);
  }

  else
  {
    sub_232B57030(a1);
  }

  v36 = v6[13];
  v37 = &v9[v6[12]];
  if (v37[8])
  {
    v38 = 0.0;
  }

  else
  {
    v38 = *v37;
  }

  v39 = *&v9[v36];
  if (v9[v36 + 8])
  {
    v40 = 0.0;
  }

  else
  {
    v40 = *&v9[v36];
  }

  v41 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  swift_beginAccess();
  *v41 = v38;
  v41[1] = v40;
  v42 = v10;
LABEL_33:
  v43 = v9[32];
  sub_232B57030(v9);
  v44 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  swift_beginAccess();
  v10[v44] = v43;

  return v10;
}

char *DUDisplayInfo.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  v10 = sub_232CE9DA0();
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v14 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v15 = sub_232B2D120(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v78 - v19;
  v21 = *(a2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B20704();
  v25 = v24 - v23;
  v26 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v30 = v29 - v28;
  v31 = [objc_allocWithZone(v7) init];
  (*(v21 + 16))(v25, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v20, 0, 1, v26);
    sub_232B56FCC(v20, v30);
    v32 = *v30;
    v33 = *(v30 + 8);
    sub_232CE9D90();
    sub_232CE9D70();
    if (v34)
    {
      sub_232B2F0F4();
      if (v35)
      {
        v36 = sub_232CE9D20();

        CGRectFromString(v36);
        sub_232B45A88();

        goto LABEL_19;
      }
    }

    v39 = v26[9];
    v41 = sub_232B57BC0(v30 + v26[8]);
    if (v42)
    {
      v6 = v41;
    }

    else
    {
      v6 = 0.0;
    }

    v43 = sub_232B57BC0(v30 + v40);
    if (v42)
    {
      v3 = v43;
    }

    else
    {
      v3 = v44;
    }

    v45 = v26[11];
    v47 = sub_232B57BC0(v30 + v26[10]);
    if (v42)
    {
      v4 = v47;
    }

    else
    {
      v4 = v48;
    }

    v49 = sub_232B57BC0(v30 + v46);
    if (v42)
    {
      v5 = v49;
    }

    else
    {
      v5 = v50;
    }

LABEL_19:
    v51 = &v31[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
    sub_232B13F5C();
    *v51 = v6;
    v51[1] = v3;
    v51[2] = v4;
    v51[3] = v5;
    v52 = *(v30 + 16);
    v53 = *(v30 + 24);
    sub_232CE9D90();
    sub_232CE9D70();
    if (v54)
    {
      sub_232B2F0F4();
      if (v55)
      {
        v56 = v31;
        v57 = sub_232CE9D20();

        v58 = CGPointFromString(v57);

        v59 = sub_232B57BE8();
        v60(v59);
        v61 = &v56[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
        sub_232B13F5C();
        *v61 = v58;
LABEL_31:
        v75 = *(v30 + 32);
        sub_232B57030(v30);
        v76 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
        sub_232B13F5C();
        v31[v76] = v75;

        return v31;
      }

      v64 = sub_232B57BE8();
      v65(v64);
    }

    else
    {
      v62 = sub_232B57BE8();
      v63(v62);
    }

    v66 = v26[13];
    v68 = sub_232B57BC0(v30 + v26[12]);
    if (v42)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0.0;
    }

    v70 = sub_232B57BC0(v30 + v67);
    if (v42)
    {
      v72 = v70;
    }

    else
    {
      v72 = v71;
    }

    v73 = &v31[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
    sub_232B13F5C();
    *v73 = v69;
    v73[1] = v72;
    v74 = v31;
    goto LABEL_31;
  }

  v37 = sub_232B57BE8();
  v38(v37);

  sub_232B12504(v20, 1, 1, v26);
  sub_232B56F64(v20);
  return 0;
}

uint64_t sub_232B56F64(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B56FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B57030(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B5708C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232CE9DA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  *a1 = xmmword_232CF76F0;
  *(a1 + 16) = xmmword_232CF76F0;
  v9 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v10 = a1 + v9[7];
  sub_232CE9330();
  v11 = a1 + v9[8];
  *v11 = 0;
  v48 = v11;
  *(v11 + 8) = 1;
  v12 = v9[9];
  sub_232B57BF8();
  v45 = v13;
  *(v13 + 8) = v14;
  v15 = v9[10];
  sub_232B57BF8();
  v47 = v16;
  *(v16 + 8) = v17;
  v18 = v9[11];
  sub_232B57BF8();
  v44 = v19;
  *(v19 + 8) = v20;
  v21 = v9[12];
  sub_232B57BF8();
  v46 = v22;
  *(v22 + 8) = v23;
  v24 = v9[13];
  sub_232B57BF8();
  v43 = v25;
  *(v25 + 8) = v26;
  v27 = v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow;
  sub_232B13F74();
  v28 = NSStringFromCGRect(*v27);
  sub_232CE9D50();

  sub_232CE9D90();
  v29 = sub_232CE9D60();
  v31 = v30;

  v32 = *(v4 + 8);
  v32(v8, v3);
  if (v31 >> 60 != 15)
  {
    sub_232B41BEC(*a1, *(a1 + 8));
    *a1 = v29;
    *(a1 + 8) = v31;
  }

  v49 = v1;
  v33 = v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen;
  sub_232B13F74();
  v34 = NSStringFromCGPoint(*v33);
  sub_232CE9D50();

  sub_232CE9D90();
  v35 = sub_232CE9D60();
  v37 = v36;

  v32(v8, v3);
  if (v37 >> 60 != 15)
  {
    sub_232B41BEC(*(a1 + 16), *(a1 + 24));
    *(a1 + 16) = v35;
    *(a1 + 24) = v37;
  }

  v38 = OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen;
  result = sub_232B13F74();
  *(a1 + 32) = *(v49 + v38);
  v40 = *(v27 + 8);
  *v48 = *v27;
  *(v48 + 8) = 0;
  *v45 = v40;
  *(v45 + 8) = 0;
  v41 = *(v27 + 24);
  *v47 = *(v27 + 16);
  *(v47 + 8) = 0;
  *v44 = v41;
  *(v44 + 8) = 0;
  v42 = *(v33 + 8);
  *v46 = *v33;
  *(v46 + 8) = 0;
  *v43 = v42;
  *(v43 + 8) = 0;
  return result;
}

uint64_t sub_232B57378@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B5708C(v7 - v6);
  v9 = sub_232B56548(v8);
  result = sub_232B124A8(&qword_27DDC7100, &qword_232CF8268);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232B5746C(void *a1)
{
  type metadata accessor for DUDisplayInfo();
  sub_232B57BD0();
  sub_232B57B14(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDisplayInfo.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B57BD0();
  sub_232B57B14(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B57C04();
    return 0;
  }

  swift_getObjectType();
  sub_232B57C04();
  return v5;
}

id DUDisplayInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDisplayInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_frameInWindow];
  *v1 = 0u;
  v1[1] = 0u;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_absoluteOriginOnScreen];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding13DUDisplayInfo_isOnScreen] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUDisplayInfo();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DUDisplayInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDisplayInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B5783C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B56804(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B57B14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B57B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_232B57BC0@<D0>(uint64_t a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

uint64_t sub_232B57C04()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B57C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a1 && sub_232CE9E60() > a1)
  {

    v9 = sub_232B57E40(a1);
    a2 = MEMORY[0x238391B80](v9);
  }

  v10 = sub_232CE9E60();

  if (v10 > 100000)
  {
    sub_232CE9A20();
    v11 = sub_232CE9A00();
    v12 = sub_232CEA1C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;

      v14 = sub_232CE9E60();

      *(v13 + 4) = v14;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 100000;
      _os_log_impl(&dword_232B02000, v11, v12, "DUDocument: Document length %ld is beyond recommended maximum %ld.", v13, 0x16u);
      MEMORY[0x238393870](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return a2;
}

uint64_t sub_232B57E40(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_232CE9E80();
    v1 = sub_232CE9FB0();

    return v1;
  }

  return result;
}

uint64_t sub_232B57F80(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), void (*a4)(uint64_t, unint64_t), void (*a5)(void))
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = sub_232CEA620();

    return v15;
  }

  v9 = a3(a2);
  v10 = sub_232B59F6C(0, a1, v9);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 < 0)
  {
    goto LABEL_16;
  }

  a4(0, a2);
  a4(v12, a2);
  if ((a2 & 0xC000000000000001) != 0 && v12)
  {
    a5(0);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_232CEA520();
      v13 = v14;
    }

    while (v12 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_232B5810C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_232CE9D20();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_232B582DC(void *a1)
{
  v2 = (*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument) + *a1);
  sub_232B13F74();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_232B5839C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v9 = *a1;
  sub_232B13F74();
  return sub_232B26744(v8 + v9, a4, a2, a3);
}

id sub_232B58424(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v10 = sub_232CE8C00();
  sub_232B5A088(v10);
  if (!v11)
  {
    a1 = v3;
    sub_232CE8B90();
    sub_232B5A014();
    (*(v12 + 8))(v3, a3);
  }

  return a1;
}

id sub_232B58524(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B5A028();
  a3();
  v10 = sub_232CE8D10();
  sub_232B5A088(v10);
  if (!v11)
  {
    a1 = v3;
    sub_232CE8CD0();
    sub_232B5A014();
    (*(v12 + 8))(v3, a3);
  }

  return a1;
}

uint64_t sub_232B586F4(uint64_t *a1)
{
  sub_232B59FE0(a1, OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v3 = *(v1 + v2);
}

void *sub_232B5876C(uint64_t *a1)
{
  sub_232B59FE0(a1, OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t DUDocument.__allocating_init(rawDocument:maxLength:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B5A008();
  return DUDocument.init(rawDocument:maxLength:)(v2, v3);
}

uint64_t DUDocument.init(rawDocument:maxLength:)(void *a1, uint64_t a2)
{
  v93 = a2;
  v3 = sub_232CE8D40();
  sub_232B350D8();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  v96 = sub_232CE9A30();
  sub_232B350D8();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v92 = (&v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  [a1 copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  type metadata accessor for DURawDocument();
  if (swift_dynamicCast())
  {
    v94 = v102;
    v24 = (v102 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier);
    sub_232B13F5C();
    v25 = v24[1];
    if (!v25 || ((v25 & 0x2000000000000000) != 0 ? (v26 = HIBYTE(v25) & 0xF) : (v26 = *v24 & 0xFFFFFFFFFFFFLL), !v26))
    {
      sub_232CE8D30();
      v27 = sub_232CE8D20();
      v29 = v28;
      (*(v5 + 8))(v11, v3);
      v30 = v24[1];
      *v24 = v27;
      v24[1] = v29;
    }

    sub_232B5A03C();
    v31 = v93;
    if (v93 > v32)
    {
      sub_232CE9A20();
      v33 = sub_232CE9A00();
      v34 = sub_232CEA1C0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = v31;
        *(v35 + 12) = 2048;
        sub_232B5A03C();
        *(v36 + 14) = v37;
        _os_log_impl(&dword_232B02000, v33, v34, "DUDocument: Truncation string length %ld is beyond recommended maximum %ld.", v35, 0x16u);
        MEMORY[0x238393870](v35, -1, -1);
      }

      v13[1](v21, v96);
    }

    v38 = (v94 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F5C();
    v39 = *v38;
    v23 = v38[1];
    if (v23)
    {
      v40 = v38[1];

      v39 = sub_232B57C24(v31, v39);
      v42 = v41;

      v43 = v38[1];
    }

    else
    {
      v42 = 0;
    }

    *v38 = v39;
    v38[1] = v42;

    v44 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    v45 = v94;
    sub_232B13F74();
    v46 = *(v45 + v44);
    if (v46)
    {
      v47 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
      sub_232B13F5C();
      v48 = *v47;
      if (v47[1])
      {
        v49 = v46;

        v48 = sub_232B57C24(100000, v48);
        v23 = v50;

        v51 = v47[1];
      }

      else
      {
        v52 = v46;
        v23 = 0;
      }

      *v47 = v48;
      v47[1] = v23;
    }

    v53 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
    v54 = v94;
    sub_232B13F74();
    v55 = *(v54 + v53);
    if (!v55)
    {
LABEL_42:
      v82 = v90;
      *&v90[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument] = v94;
      v83 = type metadata accessor for DUDocument();
      v101.receiver = v82;
      v101.super_class = v83;
      v84 = objc_msgSendSuper2(&v101, sel_init);

      return v84;
    }

    v89 = a1;
    v100 = sub_232B26B10(v55);
    v99 = v55 & 0xC000000000000001;
    v98 = v55 & 0xFFFFFFFFFFFFFF8;
    v95 = v13 + 1;

    v56 = 0;
    *&v57 = 134218240;
    v91 = v57;
    v13 = v92;
    v58 = v55;
    v97 = v55;
    while (1)
    {
      if (v100 == v56)
      {

        a1 = v89;
        goto LABEL_42;
      }

      if (v99)
      {
        v59 = MEMORY[0x2383922C0](v56, v58);
      }

      else
      {
        if (v56 >= *(v98 + 16))
        {
          goto LABEL_44;
        }

        v59 = *(v58 + 8 * v56 + 32);
      }

      v23 = v59;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      v60 = &v59[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
      sub_232B13F5C();
      v61 = *v60;
      v62 = v60[1];
      if (v62)
      {
        v63 = v60[1];
        swift_bridgeObjectRetain_n();
        if (v31 && sub_232CE9E60() > v31)
        {
          if (v31 < 0)
          {
            goto LABEL_45;
          }

          sub_232CE9E80();
          v64 = sub_232CE9FB0();
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v61 = MEMORY[0x238391B80](v64, v66, v68, v70);
          v72 = v71;

          v58 = v97;
        }

        else
        {
          v72 = v62;
        }

        sub_232B5A008();
        v73 = sub_232CE9E60();

        sub_232B5A03C();
        if (v73 > v74)
        {
          sub_232CE9A20();
          v75 = sub_232CE9A00();
          v76 = sub_232CEA1C0();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = v91;

            sub_232B5A008();
            v78 = sub_232CE9E60();

            *(v77 + 4) = v78;
            v13 = v92;
            *(v77 + 12) = 2048;
            sub_232B5A03C();
            *(v77 + 14) = v79;
            _os_log_impl(&dword_232B02000, v75, v76, "DUDocument: Document length %ld is beyond recommended maximum %ld.", v77, 0x16u);
            v80 = v77;
            v31 = v93;
            MEMORY[0x238393870](v80, -1, -1);
          }

          (*v95)(v13, v96);
          v58 = v97;
        }

        v81 = v60[1];
      }

      else
      {
        v72 = 0;
      }

      *v60 = v61;
      v60[1] = v72;

      ++v56;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  sub_232CE9A20();
  v86 = sub_232CE9A00();
  v87 = sub_232CEA1D0();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_232B02000, v86, v87, "Could not create a DURawDocument copy due to mismatched typing.", v88, 2u);
    MEMORY[0x238393870](v88, -1, -1);
  }

  v13[1](v23, v96);
  result = sub_232B59FB8();
  __break(1u);
  return result;
}

id DUDocument.init(text:maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v8 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v9 = *(v8 + 1);
  *v8 = a1;
  *(v8 + 1) = a2;

  v10 = [v3 initWithRawDocument:v7 maxLength:a3];

  return v10;
}

uint64_t sub_232B591FC()
{
  [*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument) copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  type metadata accessor for DURawDocument();
  if (sub_232B5A068())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id DUDocument.init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(type metadata accessor for DURawDocument());
  v4 = a1;
  v5 = DURawDocument.init(coder:)(v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v2 initWithRawDocument:v5 maxLength:0];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

uint64_t sub_232B59448@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v4 = sub_232B2D120(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  sub_232BF4C38(v8 - v7);
  v11 = sub_232B594EC(v9);
  result = sub_232B124A8(&qword_27DDC7120, &unk_232CF8300);
  a1[3] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_232B594EC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232B59EAC(a1, v7 - v6);
  v9 = sub_232BEFD64(v8);
  if (v9)
  {
    v10 = objc_allocWithZone(type metadata accessor for DUDocument());
    v9 = sub_232B5A048();
  }

  sub_232B59F10(a1);
  return v9;
}

uint64_t DUDocument.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  sub_232B350D8();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  type metadata accessor for DURawDocument();
  (*(v5 + 16))(v11, a1, a2);
  v12 = DURawDocument.__allocating_init<A>(proto:)(v11, a2);
  if (v12)
  {
    v13 = objc_allocWithZone(type metadata accessor for DUDocument());
    v12 = sub_232B5A048();
  }

  v14 = *(v5 + 8);
  v15 = sub_232B5A008();
  v16(v15);
  return v12;
}

id sub_232B596E8(uint64_t a1)
{
  sub_232B26744(a1, v7, &qword_27DDC68C8, &qword_232CF6210);
  if (!v8)
  {
    sub_232B598F4(v7);
    return 0;
  }

  type metadata accessor for DUDocument();
  if ((sub_232B5A068() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument);
  v3 = *&v6[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument];
  v4 = [v2 isEqual_];

  return v4;
}

id DUDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B598A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232B594EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B598F4(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC68C8, &qword_232CF6210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232B59E54()
{
  result = qword_27DDC6978;
  if (!qword_27DDC6978)
  {
    type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6978);
  }

  return result;
}

uint64_t sub_232B59EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B59F10(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B59F6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_232B59FB8()
{

  return sub_232CEA5F0();
}

uint64_t sub_232B59FE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  v5 = *a1;

  return swift_beginAccess();
}

uint64_t sub_232B5A048()
{

  return DUDocument.init(rawDocument:maxLength:)(v0, 0);
}

uint64_t sub_232B5A068()
{

  return swift_dynamicCast();
}

uint64_t sub_232B5A118(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_232B5A1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  sub_232B5B698();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_232B5A274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B5A2FC(v2, v3);
}

uint64_t sub_232B5A2B4()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B3CAE4();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232B5A2FC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B5B698();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t static DUDocumentAttribute.supportsSecureCoding.setter(char a1)
{
  result = sub_232B5B698();
  byte_27DDC7128 = a1;
  return result;
}

uint64_t sub_232B5A494@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC7128;
  return result;
}

uint64_t sub_232B5A4E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC7128 = v1;
  return result;
}

id DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeNamespace];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeType];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeID];
  *v14 = a5;
  *(v14 + 1) = a6;
  swift_beginAccess();
  *v11 = a7;
  *(v11 + 1) = a8;
  v16.receiver = v8;
  v16.super_class = type metadata accessor for DUDocumentAttribute();
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_232B5A67C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v6 = v5 - v4;
  v22 = a1;
  sub_232B5B61C(a1, v5 - v4);
  v7 = (v6 + v2[5]);
  if (v7[1])
  {
    v20 = v7[1];
    v21 = *v7;
  }

  else
  {
    v20 = 0xE000000000000000;
    v21 = 0;
  }

  v8 = (v6 + v2[6]);
  if (v8[1])
  {
    v18 = v8[1];
    v19 = *v8;
  }

  else
  {
    v18 = 0xE000000000000000;
    v19 = 0;
  }

  v9 = (v6 + v2[7]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (v6 + v2[8]);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

  v16 = DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v21, v20, v19, v18, v10, v11, v13, v14);
  sub_232B5ABAC(v22);
  sub_232B5ABAC(v6);
  return v16;
}

id DUDocumentAttribute.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7150, &qword_232CF8390);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - v7;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v13 = v12 - v11;
  v14 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v18 = v17 - v16;
  (*(v9 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    v41 = a1;
    sub_232B12504(v8, 0, 1, v14);
    sub_232B5AB48(v8, v18);
    v19 = (v18 + v14[5]);
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v39 = v20;
      v40 = v21;
    }

    else
    {
      v39 = 0xE000000000000000;
      v40 = 0;
    }

    v23 = (v18 + v14[6]);
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v37 = v24;
      v38 = v25;
    }

    else
    {
      v37 = 0xE000000000000000;
      v38 = 0;
    }

    v26 = (v18 + v14[7]);
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      v35 = v27;
      v36 = v28;
    }

    else
    {
      v35 = 0xE000000000000000;
      v36 = 0;
    }

    v29 = (v18 + v14[8]);
    if (v29[1])
    {
      v30 = *v29;
      v31 = v29[1];
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

    v22 = DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v40, v39, v38, v37, v36, v35, v30, v31);
    (*(v9 + 8))(v41, a2);
    sub_232B5ABAC(v18);
  }

  else
  {
    (*(v9 + 8))(a1, a2);
    sub_232B12504(v8, 1, 1, v14);
    sub_232B5AAE0(v8);
    return 0;
  }

  return v22;
}

uint64_t sub_232B5AAE0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7150, &qword_232CF8390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B5AB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5ABAC(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B5AC08@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232CE9330();
  v9 = (v8 + v4[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + v4[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v8 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v8 + v4[10]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeNamespace);
  sub_232B13F74();
  v14 = *v13;
  v15 = v13[1];
  *v9 = v14;
  v9[1] = v15;
  v16 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeType);
  sub_232B13F74();
  v17 = *v16;
  v18 = v16[1];
  *v10 = v17;
  v10[1] = v18;
  v19 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_attributeID);
  sub_232B13F74();
  v20 = *v19;
  v21 = v19[1];
  *v11 = v20;
  v11[1] = v21;
  v22 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentAttribute_displayName);
  sub_232B13F74();
  v23 = v22[1];
  if (v23)
  {
    *v12 = *v22;
    v12[1] = v23;
  }

  sub_232B5AB48(v8, a1);
}

uint64_t sub_232B5AD74@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B5AC08(v5 - v4);
  v7 = sub_232B5A67C(v6);
  result = sub_232B124A8(&qword_27DDC7158, &qword_232CF8398);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B5AE6C(void *a1)
{
  type metadata accessor for DUDocumentAttribute();
  sub_232B5B680();
  sub_232B5B5D4(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t DUDocumentAttribute.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5B680();
  sub_232B5B5D4(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B5B6B8();
    return 0;
  }

  swift_getObjectType();
  sub_232B5B6B8();
  return v5;
}

id DUDocumentAttribute.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentAttribute.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentAttribute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B5B24C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232B5A67C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232B5B5D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B5B61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B5B698()
{

  return swift_beginAccess();
}

uint64_t sub_232B5B6B8()
{

  return swift_deallocPartialClassInstance();
}

id sub_232B5B704()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B26BFC();
  v2 = *(v0 + v1);

  return v2;
}

void sub_232B5B748(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232B5B7DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B5B860(v2, v3);
}

uint64_t sub_232B5B81C()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody);
  sub_232B3CAE4();
  v3 = *v1;
  v2 = v1[1];

  return sub_232B5EFF4();
}

uint64_t sub_232B5B860(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody);
  sub_232B5B698();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_232B5B8FC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232B5B968(v2);
}

void *sub_232B5B92C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232B5B968(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232B5BA80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B5BB04(v2, v3);
}

uint64_t sub_232B5BAC0()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType);
  sub_232B3CAE4();
  v3 = *v1;
  v2 = v1[1];

  return sub_232B5EFF4();
}

uint64_t sub_232B5BB04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType);
  sub_232B5B698();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B5BBA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = sub_232B124A8(a5, a6);
  sub_232B2D120(v12);
  v14 = *(v13 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20]();
  v16 = &v19 - v15;
  sub_232B5D6C0(a1, &v19 - v15, a5, a6);
  v17 = *a2;
  return a7(v16);
}

uint64_t sub_232B5BC60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_232B13F74();
  return sub_232B5D6C0(v4 + v8, a4, a2, a3);
}

uint64_t sub_232B5BCE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  sub_232B207D4();
  sub_232B5BD4C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_232B5BD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24(v5);
  v7 = *(v6 + 40);
  v8 = sub_232B2080C();
  v9(v8);
  return v4;
}

uint64_t sub_232B5BDE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B5BE48(v4);
}

uint64_t sub_232B5BE10()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232B5BE48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t static DUDocumentUpdate.supportsSecureCoding.setter(char a1)
{
  result = sub_232B5B698();
  byte_27DDC7168 = a1;
  return result;
}

uint64_t (*static DUDocumentUpdate.supportsSecureCoding.modify())()
{
  sub_232B5EFF4();
  sub_232B207D4();
  return j_j__swift_endAccess;
}

uint64_t sub_232B5BFCC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDC7168;
  return result;
}

uint64_t sub_232B5C018(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDC7168 = v1;
  return result;
}

id DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document] = 0;
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_associatedFileURL;
  sub_232CE8C00();
  sub_232B55484();
  sub_232B12504(v17, v18, v19, v20);
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_updateTimestamp;
  sub_232CE8D10();
  sub_232B55484();
  sub_232B12504(v22, v23, v24, v25);
  v26 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes] = 0;
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID] = a1;
  swift_beginAccess();
  *v14 = a2;
  *(v14 + 1) = a3;
  swift_beginAccess();
  *&v9[v15] = a4;
  sub_232B207D4();
  v27 = a4;
  v28 = a1;
  sub_232B5C310(a5, &v9[v16], &qword_27DDC6AD8, &unk_232CF82F0);
  swift_endAccess();
  v29 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType];
  *v29 = a6;
  *(v29 + 1) = a7;
  sub_232B207D4();
  sub_232B5C310(a8, &v9[v21], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  swift_beginAccess();
  v30 = *&v9[v26];
  *&v9[v26] = a9;

  v37.receiver = v9;
  v37.super_class = type metadata accessor for DUDocumentUpdate();
  v31 = objc_msgSendSuper2(&v37, sel_init);

  sub_232B13790(a8, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B13790(a5, &qword_27DDC6AD8, &unk_232CF82F0);
  return v31;
}

uint64_t sub_232B5C310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24(v5);
  v7 = *(v6 + 24);
  v8 = sub_232B2080C();
  v9(v8);
  return v4;
}

uint64_t type metadata accessor for DUDocumentUpdate()
{
  result = qword_2814E1400;
  if (!qword_2814E1400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B5C3A8()
{
  sub_232B5F048();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v133 = v7;
  sub_232B554F0();
  v139 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v8 = sub_232B48F0C(v139);
  v145 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v140 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  v147 = &v130 - v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v146 = v16;
  v17 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v18 = sub_232B2D120(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B20714();
  v132 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B55558();
  v135 = v23;
  v24 = sub_232B554F0();
  v25 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v24);
  v26 = sub_232B13F24(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v144 = v30 - v29;
  v31 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  v32 = sub_232B2D120(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_232B20714();
  v143 = v35;
  sub_232B20600();
  MEMORY[0x28223BE20](v36);
  v38 = &v130 - v37;
  v39 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v39);
  v41 = *(v40 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v42);
  v43 = sub_232B5F064();
  v44 = sub_232B13F24(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v49 = v48 - v47;
  v50 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v51 = sub_232B13F24(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_232B20704();
  v56 = v55 - v54;
  v134 = v2;
  sub_232B5EEF4(v2, v55 - v54, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  v136 = v50;
  v137 = v56;
  sub_232B5D6C0(v56 + *(v50 + 24), v0, &qword_27DDC6D18, &qword_232CF7420);
  v57 = sub_232B5F000();
  sub_232B351B0(v57, v58, v43);
  if (v59)
  {
    sub_232CE9330();
    sub_232B2DF60(v43[5]);
    sub_232B2DF60(v43[6]);
    sub_232B2DF60(v43[7]);
    sub_232B2DF60(v43[8]);
    sub_232B2DF60(v43[9]);
    v60 = sub_232B5F000();
    sub_232B351B0(v60, v61, v43);
    if (!v59)
    {
      sub_232B13790(v0, &qword_27DDC6D18, &qword_232CF7420);
    }
  }

  else
  {
    v62 = sub_232B5EFF4();
    sub_232B5E728(v62, v63, v64);
  }

  v65 = sub_232B3B8DC(v49);
  if (v65)
  {
    v131 = v65;
    v66 = v137;
    v67 = v136[8];
    sub_232B5D6C0(v137 + v67, v38, &qword_27DDC6F10, &unk_232CF8420);
    v68 = sub_232B12480(v38, 1, v25);
    sub_232B13790(v38, &qword_27DDC6F10, &unk_232CF8420);
    if (v68 == 1)
    {
      v130 = 0;
      v69 = v66;
      v70 = v140;
    }

    else
    {
      v71 = v66 + v67;
      v72 = v143;
      sub_232B5D6C0(v71, v143, &qword_27DDC6F10, &unk_232CF8420);
      sub_232B351B0(v72, 1, v25);
      v69 = v66;
      v70 = v140;
      if (v59)
      {
        v75 = v144;
        sub_232CE9330();
        v73 = *(v25 + 20);
        if (qword_2814E2300 != -1)
        {
          sub_232B5EFA8();
        }

        *(v75 + v73) = qword_2814E2308;
        v74 = sub_232B12480(v72, 1, v25);

        if (v74 != 1)
        {
          sub_232B13790(v72, &qword_27DDC6F10, &unk_232CF8420);
        }
      }

      else
      {
        v75 = v144;
        sub_232B5E728(v72, v144, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      }

      v130 = sub_232B594E8(v75);
    }

    v76 = (v69 + v136[9]);
    if (v76[1])
    {
      v77 = *v76;
      v78 = v76[1];

      sub_232B5EFF4();
      sub_232CE8BD0();
    }

    else
    {
      sub_232CE8C00();
      sub_232B55484();
      sub_232B12504(v79, v80, v81, v82);
    }

    v83 = *v69;
    v84 = MEMORY[0x277D84F90];
    v148 = MEMORY[0x277D84F90];
    v85 = *(v83 + 16);
    if (v85)
    {
      v86 = v83 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v138 = *(v145 + 72);
      do
      {
        v87 = v146;
        sub_232B5EEF4(v86, v146, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        v88 = v87;
        v89 = v147;
        sub_232B5EEF4(v88, v147, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        sub_232B5EEF4(v89, v70, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
        v90 = (v70 + v139[5]);
        v91 = v90[1];
        if (v91)
        {
          v92 = *v90;
          v144 = v91;
          v145 = v92;
        }

        else
        {
          v144 = 0xE000000000000000;
          v145 = 0;
        }

        v93 = (v70 + v139[6]);
        v94 = v93[1];
        if (v94)
        {
          v95 = *v93;
          v142 = v94;
          v143 = v95;
        }

        else
        {
          v142 = 0xE000000000000000;
          v143 = 0;
        }

        v96 = (v70 + v139[7]);
        v97 = v96[1];
        if (v97)
        {
          v141 = *v96;
          v98 = v97;
        }

        else
        {
          v141 = 0;
          v98 = 0xE000000000000000;
        }

        v99 = (v70 + v139[8]);
        if (v99[1])
        {
          v100 = *v99;
          v101 = v99[1];
        }

        else
        {
          v100 = 0;
          v101 = 0xE000000000000000;
        }

        v102 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

        DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v145, v144, v143, v142, v141, v98, v100, v101);
        sub_232B5EF50();
        v70 = v140;
        sub_232B5D70C(v140, v103);
        sub_232B5D70C(v147, v102);
        v104 = sub_232B5D70C(v146, v102);
        MEMORY[0x238391D50](v104);
        sub_232B5F018();
        if (v105)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v86 += v138;
        --v85;
      }

      while (v85);
      v84 = v148;
      v69 = v137;
    }

    v106 = sub_232B26B10(v84);
    v108 = v133;
    v107 = v134;
    v109 = v135;
    v110 = v132;
    if (!v106)
    {

      v84 = 0;
    }

    v111 = v136;
    v112 = (v69 + v136[7]);
    v113 = v69;
    v114 = *v112;
    v115 = v112[1];
    sub_232B5D6C0(v109, v110, &qword_27DDC6AD8, &unk_232CF82F0);
    v116 = (v113 + v111[10]);
    if (v116[1])
    {
      v117 = *v116;
      v118 = v116[1];
    }

    else
    {
      v117 = 0;
      v118 = 0xE000000000000000;
    }

    v119 = v137 + v136[11];
    if (v119[8])
    {
      sub_232CE8D10();
      sub_232B55484();
      sub_232B12504(v120, v121, v122, v123);
    }

    else
    {
      v124 = *v119;

      sub_232CE8CA0();
      sub_232CE8D10();
      sub_232B351FC();
      sub_232B12504(v125, v126, v127, v128);
    }

    v129 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v131, v114, v115, v130, v110, v117, v118, v108, v84);
    sub_232B5D70C(v107, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    sub_232B13790(v109, &qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B5D70C(v137, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  }

  else
  {
    sub_232B5D70C(v134, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    sub_232B5D70C(v137, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
  }

  sub_232B5F02C();
}

void DUDocumentUpdate.__allocating_init<A>(proto:)()
{
  sub_232B5F048();
  v2 = v1;
  v4 = v3;
  v5 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232B2D108();
  v159 = v9;
  sub_232B554F0();
  v164 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v10 = sub_232B48F0C(v164);
  v168 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v165 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v172 = &v153 - v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B55558();
  v171 = v18;
  v19 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v20 = sub_232B2D120(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20714();
  v160 = v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  sub_232B55558();
  v162 = v25;
  v26 = sub_232B554F0();
  v170 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v26);
  v27 = sub_232B13F24(v170);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v167 = v31 - v30;
  v32 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  v33 = sub_232B2D120(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_232B20714();
  v166 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B55558();
  v169 = v38;
  v39 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v39);
  v41 = *(v40 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v42);
  v43 = sub_232B5F064();
  v44 = sub_232B13F24(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v49 = v48 - v47;
  v50 = sub_232B124A8(&qword_27DDC7188, &qword_232CF8430);
  sub_232B2D120(v50);
  v52 = *(v51 + 64);
  sub_232B2D114();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v153 - v55;
  v57 = *(v2 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  sub_232B20704();
  v61 = v60 - v59;
  v62 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v63 = sub_232B13F24(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_232B20704();
  v68 = v67 - v66;
  (*(v57 + 16))(v61, v4, v2);
  v69 = v62;
  v70 = v2;
  if (swift_dynamicCast())
  {
    v71 = v4;
    v158 = v57;
    sub_232B351FC();
    sub_232B12504(v72, v73, v74, v69);
    sub_232B5E728(v56, v68, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
    v75 = *(v69 + 24);
    v161 = v68;
    sub_232B5D6C0(v68 + v75, v0, &qword_27DDC6D18, &qword_232CF7420);
    v76 = sub_232B5F000();
    sub_232B351B0(v76, v77, v43);
    if (v78)
    {
      sub_232CE9330();
      sub_232B5F00C(v43[5]);
      sub_232B5F00C(v43[6]);
      sub_232B5F00C(v43[7]);
      sub_232B5F00C(v43[8]);
      sub_232B5F00C(v43[9]);
      v79 = sub_232B5F000();
      sub_232B351B0(v79, v80, v43);
      v84 = v158;
      v85 = v165;
      v86 = v170;
      if (!v78)
      {
        sub_232B13790(v0, &qword_27DDC6D18, &qword_232CF7420);
      }
    }

    else
    {
      sub_232B5E728(v0, v49, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
      v84 = v158;
      v85 = v165;
      v86 = v170;
    }

    v87 = sub_232B3B8DC(v49);
    if (v87)
    {
      v154 = v87;
      v157 = v69;
      v88 = *(v69 + 32);
      v89 = v161;
      v90 = v169;
      sub_232B5D6C0(v161 + v88, v169, &qword_27DDC6F10, &unk_232CF8420);
      v91 = sub_232B12480(v90, 1, v86);
      v92 = sub_232B2080C();
      sub_232B13790(v92, v93, &unk_232CF8420);
      if (v91 == 1)
      {
        v153 = 0;
        v94 = v89;
      }

      else
      {
        v95 = v89 + v88;
        v96 = v166;
        sub_232B5D6C0(v95, v166, &qword_27DDC6F10, &unk_232CF8420);
        sub_232B351B0(v96, 1, v86);
        v94 = v89;
        if (v78)
        {
          v99 = v167;
          sub_232CE9330();
          v97 = *(v86 + 20);
          if (qword_2814E2300 != -1)
          {
            sub_232B5EFA8();
          }

          *(v99 + v97) = qword_2814E2308;
          v98 = sub_232B12480(v96, 1, v86);

          if (v98 != 1)
          {
            sub_232B13790(v96, &qword_27DDC6F10, &unk_232CF8420);
          }
        }

        else
        {
          v99 = v167;
          sub_232B5E728(v96, v167, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
        }

        v153 = sub_232B594E8(v99);
      }

      v100 = (v94 + v157[9]);
      v101 = v100[1];
      v155 = v71;
      v156 = v70;
      if (v101)
      {
        v102 = *v100;

        sub_232B5EFF4();
        sub_232CE8BD0();
      }

      else
      {
        sub_232CE8C00();
        sub_232B55484();
        sub_232B12504(v103, v104, v105, v106);
      }

      v107 = *v94;
      v108 = MEMORY[0x277D84F90];
      v173 = MEMORY[0x277D84F90];
      v109 = *(v107 + 16);
      if (v109)
      {
        v110 = v107 + ((*(v168 + 80) + 32) & ~*(v168 + 80));
        v163 = *(v168 + 72);
        do
        {
          v166 = v109;
          v111 = v171;
          sub_232B5EEF4(v110, v171, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          v112 = v111;
          v113 = v172;
          sub_232B5EEF4(v112, v172, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          sub_232B5EEF4(v113, v85, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          v114 = (v85 + v164[5]);
          if (v114[1])
          {
            v115 = *v114;
            v116 = v114[1];
          }

          else
          {
            v115 = 0;
            v116 = 0xE000000000000000;
          }

          v117 = (v85 + v164[6]);
          v118 = v117[1];
          if (v118)
          {
            v119 = *v117;
            v120 = v118;
          }

          else
          {
            v119 = 0;
            v120 = 0xE000000000000000;
          }

          v167 = v120;
          v168 = v119;
          v169 = v116;
          v170 = v115;
          v121 = (v85 + v164[7]);
          if (v121[1])
          {
            v122 = *v121;
            v123 = v121[1];
          }

          else
          {
            v122 = 0;
            v123 = 0xE000000000000000;
          }

          v124 = (v85 + v164[8]);
          if (v124[1])
          {
            v125 = *v124;
            v126 = v124[1];
          }

          else
          {
            v125 = 0;
            v126 = 0xE000000000000000;
          }

          v127 = objc_allocWithZone(type metadata accessor for DUDocumentAttribute());

          DUDocumentAttribute.init(attributeNamespace:attributeType:attributeID:displayName:)(v170, v169, v168, v167, v122, v123, v125, v126);
          sub_232B5EF50();
          sub_232B5D70C(v172, v128);
          v85 = v165;
          sub_232B5D70C(v165, v127);
          v129 = sub_232B5D70C(v171, v127);
          MEMORY[0x238391D50](v129);
          sub_232B5F018();
          if (v130)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v110 += v163;
          v109 = v166 - 1;
        }

        while (v166 != 1);
        v108 = v173;
        v94 = v161;
      }

      v131 = sub_232B26B10(v108);
      v133 = v155;
      v132 = v156;
      if (!v131)
      {

        v108 = 0;
      }

      v134 = v157;
      v135 = (v94 + v157[7]);
      v136 = *v135;
      v137 = v135[1];
      sub_232B5D6C0(v162, v160, &qword_27DDC6AD8, &unk_232CF82F0);
      v138 = (v94 + v134[10]);
      if (v138[1])
      {
        v139 = *v138;
        v140 = v138[1];
      }

      else
      {
        v139 = 0;
        v140 = 0xE000000000000000;
      }

      v141 = v161 + v157[11];
      if (v141[8])
      {
        sub_232CE8D10();
        v142 = v159;
        sub_232B55484();
        sub_232B12504(v143, v144, v145, v146);
      }

      else
      {
        v147 = *v141;

        v142 = v159;
        sub_232CE8CA0();
        sub_232CE8D10();
        sub_232B351FC();
        sub_232B12504(v148, v149, v150, v151);
      }

      v152 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate());
      DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v154, v136, v137, v153, v160, v139, v140, v142, v108);
      (*(v158 + 8))(v133, v132);
      sub_232B13790(v162, &qword_27DDC6AD8, &unk_232CF82F0);
      sub_232B5EF80();
    }

    else
    {
      (*(v84 + 8))(v4, v70);
      sub_232B5EF80();
    }
  }

  else
  {
    (*(v57 + 8))(v4, v2);
    sub_232B55484();
    sub_232B12504(v81, v82, v83, v69);
    sub_232B13790(v56, &qword_27DDC7188, &qword_232CF8430);
  }

  sub_232B5F02C();
}

uint64_t sub_232B5D6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_232B5EFD4(a1, a2, a3, a4);
  sub_232B13F24(v5);
  v7 = *(v6 + 16);
  v8 = sub_232B2080C();
  v9(v8);
  return v4;
}

uint64_t sub_232B5D70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_232B5D764()
{
  sub_232B5F048();
  v167 = v0;
  v2 = v1;
  v3 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B20704();
  v8 = v7 - v6;
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v9);
  v11 = *(v10 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  sub_232B2D108();
  v165 = v13;
  sub_232B554F0();
  v166 = sub_232CE8D10();
  v14 = sub_232B48F0C(v166);
  v158 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  sub_232B5EFC8(v19 - v18);
  v20 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v20);
  v22 = *(v21 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v23);
  sub_232B2D108();
  v163 = v24;
  sub_232B554F0();
  v164 = sub_232CE8C00();
  v25 = sub_232B48F0C(v164);
  v156 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232B20704();
  sub_232B5EFC8(v30 - v29);
  v31 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
  sub_232B2D120(v31);
  v33 = *(v32 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v34);
  sub_232B2D108();
  v160 = v35;
  v36 = sub_232B554F0();
  v37 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(v36);
  v38 = sub_232B13F24(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_232B20714();
  v150 = v41;
  sub_232B20600();
  MEMORY[0x28223BE20](v42);
  v159 = &v148 - v43;
  sub_232B20600();
  MEMORY[0x28223BE20](v44);
  sub_232B55558();
  sub_232B5EFC8(v45);
  v46 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
  sub_232B2D120(v46);
  v48 = *(v47 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v49);
  v51 = &v148 - v50;
  v52 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
  v53 = sub_232B13F24(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_232B20714();
  v152 = v56;
  sub_232B20600();
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v148 - v59;
  MEMORY[0x28223BE20](v58);
  sub_232B55558();
  sub_232B5EFC8(v61);
  *v2 = MEMORY[0x277D84F90];
  v62 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v63 = v2 + v62[5];
  sub_232CE9330();
  v64 = v62[6];
  sub_232B55484();
  sub_232B12504(v65, v66, v67, v52);
  v68 = (v2 + v62[7]);
  *v68 = 0;
  v68[1] = 0;
  v148 = v62[8];
  sub_232B55484();
  v162 = v37;
  sub_232B12504(v69, v70, v71, v37);
  v72 = (v2 + v62[9]);
  *v72 = 0;
  v72[1] = 0;
  v153 = v72;
  v73 = (v2 + v62[10]);
  *v73 = 0;
  v73[1] = 0;
  v161 = v73;
  v74 = v2 + v62[11];
  *v74 = 0;
  v154 = v74;
  v74[8] = 1;
  v75 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  v76 = v167;
  sub_232B13F74();
  v77 = *(v76 + v75);
  sub_232B3BF20(v60);

  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v78, v79, v80, v52);
    v81 = v151;
    sub_232B5E728(v51, v151, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    v82 = v81;
    v83 = v152;
    sub_232B5E728(v82, v152, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    sub_232B13790(v2 + v64, &qword_27DDC6D18, &qword_232CF7420);
    sub_232B5E728(v83, v2 + v64, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier);
    sub_232B351FC();
    sub_232B12504(v84, v85, v86, v52);
  }

  else
  {
    sub_232B55484();
    sub_232B12504(v87, v88, v89, v52);
    sub_232B13790(v51, &qword_27DDC6D18, &qword_232CF7420);
  }

  v90 = v167;
  v91 = (v167 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentBody);
  sub_232B13F74();
  v92 = v91[1];
  v93 = v160;
  if (v92)
  {
    *v68 = *v91;
    v68[1] = v92;
  }

  v94 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74();
  v95 = *(v90 + v94);
  if (v95)
  {
    v96 = *&v95[OBJC_IVAR____TtC21DocumentUnderstanding10DUDocument_rawDocument];

    v97 = v95;
    sub_232BF4C38(v159);

    v98 = v162;
    v99 = swift_dynamicCast();
    sub_232B12504(v93, v99 ^ 1u, 1, v98);
    sub_232B351B0(v93, 1, v98);
    v100 = v166;
    v101 = v164;
    if (!v102)
    {
      v103 = v93;
      v104 = v149;
      sub_232B5E728(v103, v149, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v105 = v104;
      v106 = v150;
      sub_232B5E728(v105, v150, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      v107 = v148;
      sub_232B13790(v2 + v148, &qword_27DDC6F10, &unk_232CF8420);
      sub_232B5E728(v106, v2 + v107, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
      sub_232B351FC();
      sub_232B12504(v108, v109, v110, v98);
      goto LABEL_11;
    }
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v111, v112, v113, v162);
    v100 = v166;
    v101 = v164;
  }

  sub_232B13790(v93, &qword_27DDC6F10, &unk_232CF8420);
LABEL_11:
  v114 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_associatedFileURL;
  sub_232B13F74();
  v115 = v90 + v114;
  v116 = v163;
  sub_232B5D6C0(v115, v163, &qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B351B0(v116, 1, v101);
  if (v102)
  {
    sub_232B13790(v116, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    v117 = v156;
    v118 = v155;
    (*(v156 + 32))(v155, v116, v101);
    v119 = sub_232CE8B60();
    v121 = v120;
    (*(v117 + 8))(v118, v101);
    v122 = v153;
    *v153 = v119;
    v122[1] = v121;
  }

  v123 = (v90 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentType);
  sub_232B13F74();
  v124 = *v123;
  v125 = v123[1];
  v126 = v161;
  *v161 = v124;
  v126[1] = v125;
  v127 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_updateTimestamp;
  sub_232B13F74();
  v128 = v90 + v127;
  v129 = v165;
  sub_232B5D6C0(v128, v165, &qword_27DDC6A80, &qword_232CF6D30);
  v130 = sub_232B5F000();
  sub_232B351B0(v130, v131, v100);
  if (v102)
  {

    sub_232B13790(v129, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v132 = v158;
    v133 = v157;
    (*(v158 + 32))(v157, v129, v100);

    sub_232CE8CB0();
    v135 = v134;
    (*(v132 + 8))(v133, v100);
    v136 = v154;
    *v154 = v135;
    *(v136 + 8) = 0;
  }

  v137 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentAttributes;
  sub_232B13F74();
  v138 = *(v90 + v137);
  if (v138)
  {
    v167 = v2;
    v139 = sub_232B26B10(v138);

    v140 = 0;
    v141 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v139 == v140)
      {

        *v167 = v141;
        goto LABEL_31;
      }

      if ((v138 & 0xC000000000000001) != 0)
      {
        v142 = MEMORY[0x2383922C0](v140, v138);
      }

      else
      {
        if (v140 >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v142 = *(v138 + 8 * v140 + 32);
      }

      v143 = v142;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      sub_232B5AC08(v8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = *(v141 + 16);
        sub_232B368EC();
        v141 = v146;
      }

      v144 = *(v141 + 16);
      if (v144 >= *(v141 + 24) >> 1)
      {
        sub_232B368EC();
        v141 = v147;
      }

      *(v141 + 16) = v144 + 1;
      sub_232B5E728(v8, v141 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v144, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
      ++v140;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_31:
    sub_232B5F02C();
  }
}

uint64_t sub_232B5E170@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232B5D764();
  sub_232B5C3A8();
  v7 = v6;
  result = sub_232B124A8(&qword_27DDC7190, &qword_232CF8438);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B5E264(void *a1)
{
  type metadata accessor for DUDocumentUpdate();
  sub_232B5EF68();
  sub_232B5EEAC(v2, v3);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    [a1 encodeObject:v5 forKey:v6];
  }
}

uint64_t DUDocumentUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B5EF68();
  sub_232B5EEAC(v4, v5);
  sub_232CE98B0();

  v6 = v12;
  if (!v12)
  {
LABEL_5:
    swift_getObjectType();
    v9 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

id DUDocumentUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232B5E728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 32);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

void sub_232B5E7A8()
{
  sub_232B5EE58(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_232B5EE58(319, &qword_2814E25E0, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_232B5EE58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232B5EEAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B5EEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 16);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

uint64_t sub_232B5EF80()
{
  v2 = *(v0 - 208);

  return sub_232B5D70C(v2, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentUpdate);
}

uint64_t sub_232B5EFA8()
{

  return swift_once();
}

uint64_t sub_232B5EFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_232B124A8(a3, a4);
}

void sub_232B5F00C(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_232B5F064()
{

  return type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentIdentifier();
}

void sub_232B5F0CC()
{
  sub_232B5F16C();
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B5F16C()
{
  if (!qword_27DDC71B0)
  {
    type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(255);
    v0 = sub_232CE9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC71B0);
    }
  }
}

void sub_232B5F21C()
{
  sub_232B5F2A0();
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B5F2A0()
{
  if (!qword_27DDC71C8)
  {
    v0 = sub_232CEA030();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC71C8);
    }
  }
}

uint64_t sub_232B5F2F0@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0) + 20);
  return sub_232CE9330();
}

uint64_t sub_232B5F330@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  a1[5] = sub_232B60768();
  a1[6] = sub_232B60768();
  v2 = a1 + *(type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0) + 40);
  return sub_232CE9330();
}

uint64_t sub_232B5F3B8()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F80);
  sub_232B135C4(v0, qword_27DDD4F80);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF6460;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "values";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_232CE9600();
}

uint64_t sub_232B5F524()
{
  sub_232B60720();
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_232B2F148();
      sub_232CE93F0();
    }
  }

  return result;
}

uint64_t sub_232B5F578()
{
  sub_232B606E4();
  if (!*(*v0 + 16) || (sub_232B60650(), result = sub_232CE9530(), !v1))
  {
    v4 = v2 + *(type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0) + 20);
    sub_232B2F148();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B5F5F0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_232B32944(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0) + 20);
  sub_232CE9340();
  sub_232B60664();
  sub_232B60458(v3, v4);
  return sub_232B606FC() & 1;
}

uint64_t sub_232B5F6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B60458(&qword_27DDC7210, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B5F768(uint64_t a1)
{
  v2 = sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B5F830()
{
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);

  return sub_232CE9500();
}

uint64_t sub_232B5F8B0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4F98);
  sub_232B135C4(v0, qword_27DDD4F98);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF74B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "modelName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hiddenLayerSize";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nHiddenLayers";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sequenceSize";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "pooledHiddenLayerValues";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hiddenLayerValues";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B5FB74()
{
  sub_232B60720();
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      case 2:
      case 3:
      case 4:
        sub_232B2F148();
        sub_232CE9440();
        break;
      case 5:
        sub_232B13EE0();
        sub_232B5FC30();
        break;
      case 6:
        sub_232B13EE0();
        sub_232B5FD28();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B5FC30()
{
  sub_232CE9300();
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
  sub_232B60458(&qword_27DDC7200, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
  return sub_232CE9380();
}

uint64_t sub_232B5FD28()
{
  sub_232CE9300();
  type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B60458(&qword_27DDC71F8, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
  sub_232B60458(&qword_27DDC7200, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
  return sub_232CE9380();
}

uint64_t sub_232B5FE20()
{
  sub_232B606E4();
  v6 = *v1;
  v7 = v1[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (v2 = v0, result = sub_232CE95C0(), !v0))
  {
    if (!v4[2] || (sub_232B60650(), result = sub_232CE9590(), !v2))
    {
      if (!v4[3] || (sub_232B60650(), result = sub_232CE9590(), !v2))
      {
        if (!v4[4] || (sub_232B60650(), result = sub_232CE9590(), !v2))
        {
          v10 = v4[5];
          if (!*(v10 + 16) || (v27 = sub_232CE9300(), type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0), sub_232B6067C(), sub_232B60458(v11, v5), v12 = sub_232B60694(&qword_27DDC7200), result = sub_232B606BC(v10, 5, v13, v14, MEMORY[0x277D21668], v15, v12, v16, v3, v25, v26, v27), !v2))
          {
            v17 = v4[6];
            if (!*(v17 + 16) || (v28 = sub_232CE9300(), type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0), sub_232B6067C(), sub_232B60458(v18, v5), v19 = sub_232B60694(&qword_27DDC7200), result = sub_232B606BC(v17, 6, v20, v21, MEMORY[0x277D21668], v22, v19, v23, v3, v25, v26, v28), !v2))
            {
              v24 = v4 + *(type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0) + 40);
              sub_232B2F148();
              return sub_232CE9320();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B6001C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];
  sub_232B323BC();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  sub_232B323BC();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for DocumentUnderstanding_EncodingModelOutput(0) + 40);
  sub_232CE9340();
  sub_232B60664();
  sub_232B60458(v12, v13);
  return sub_232B606FC() & 1;
}

uint64_t sub_232B60108(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_232CEA820();
  a1(0);
  sub_232B60458(a2, a3);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B601E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B60458(&qword_27DDC7218, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B60280(uint64_t a1)
{
  v2 = sub_232B60458(&qword_27DDC71D8, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B60348()
{
  sub_232B60458(&qword_27DDC71D8, type metadata accessor for DocumentUnderstanding_EncodingModelOutput);

  return sub_232CE9500();
}

uint64_t sub_232B60458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B60694(unint64_t *a1)
{

  return sub_232B60458(a1, v1);
}

uint64_t sub_232B606BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return MEMORY[0x28217E468](a1, a2, a12, v14, a5, v13, a7, v12);
}

uint64_t sub_232B606FC()
{

  return sub_232CE9CF0();
}

uint64_t sub_232B60754@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_232B60768()
{

  return sub_232CE9C60();
}

uint64_t sub_232B60788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34 = a3;
  v7 = a7;
  v8 = a6;
  v37 = a5;
  while (1)
  {
    v11 = a1 <= a2;
    if (a3 > 0)
    {
      v11 = a1 >= a2;
    }

    if (v11)
    {
    }

    v12 = a1 + a3;
    if (__OFADD__(a1, a3))
    {
      v12 = ((a1 + a3) >> 63) ^ 0x8000000000000000;
    }

    v13 = a1 + v7;
    if (__OFADD__(a1, v7))
    {
      break;
    }

    if (v13 < a1)
    {
      goto LABEL_28;
    }

    if (a1 < 0)
    {
      goto LABEL_29;
    }

    v14 = *(v8 + 16);
    if (v14 < a1 || v14 < v13)
    {
      goto LABEL_30;
    }

    v39 = v12;
    v16 = *a5;
    swift_unknownObjectRetain();
    v17 = v8;
    if (v14 != v7)
    {
      sub_232BD31DC(v8, v8 + 32, a1, (2 * v13) | 1);
      v17 = v32;
    }

    v18 = *a4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = a4;
    v20 = *a4;
    v40 = *a4;
    v21 = sub_232B20520(v16);
    if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
    {
      goto LABEL_31;
    }

    v23 = v21;
    v24 = v22;
    sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
    if (sub_232CEA5C0())
    {
      v25 = sub_232B20520(v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_34;
      }

      v23 = v25;
    }

    if (v24)
    {
      v27 = v40[7];
      v28 = *(v27 + 8 * v23);
      *(v27 + 8 * v23) = v17;
    }

    else
    {
      v40[(v23 >> 6) + 8] |= 1 << v23;
      *(v40[6] + 8 * v23) = v16;
      *(v40[7] + 8 * v23) = v17;
      v29 = v40[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_33;
      }

      v40[2] = v31;
    }

    *v19 = v40;
    v8 = a6;
    a5 = v37;
    if (__OFADD__(*v37, 1))
    {
      goto LABEL_32;
    }

    a4 = v19;
    ++*v37;
    a1 = v39;
    a3 = v34;
    v7 = a7;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

id DUEncodingModelOutput.__allocating_init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_232B66BC0();
  v15 = objc_allocWithZone(v7);
  return DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(v12, v11, v10, v9, v8, a6, a7);
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:pooledHiddenLayerValues:hiddenLayerValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_232B66BC0();
  v13 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v13 = 0;
  v13[8] = 1;
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  *&v7[v14] = sub_232CE9C60();
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v16 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v16 = v12;
  *(v16 + 1) = v11;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = v10;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = v9;
  *v13 = v8;
  v13[8] = 0;
  swift_beginAccess();
  *&v7[v14] = a6;

  v17 = *&v7[v15];
  *&v7[v15] = a7;

  v21.receiver = v7;
  v21.super_class = type metadata accessor for DUEncodingModelOutput();
  return objc_msgSendSuper2(&v21, sel_init);
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:pooledFeatureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v12 = 0;
  v12[8] = 1;
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  *&v6[v13] = sub_232CE9C60();
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v15 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = a3;
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = a4;
  v16 = type metadata accessor for DUEncodingModelOutput();
  v17 = sub_232B60D5C(a3, a4);
  if (v17)
  {
    v18 = v17;
    swift_beginAccess();
    v19 = *&v6[v13];
    *&v6[v13] = v18;

    v25.receiver = v6;
    v25.super_class = v16;
    v20 = objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {

    v21 = *(v15 + 1);

    v22 = *&v6[v13];

    v23 = *&v6[v14];

    sub_232B2080C();
    sub_232B66C14();
    return 0;
  }

  return v20;
}

uint64_t sub_232B60D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  sub_232CEA1F0();
  v8 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    sub_232B13790(v7, &qword_27DDC7038, &unk_232CF7F40);
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v9 = sub_232CE9A30();
    sub_232B135C4(v9, qword_2814E3DA8);
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_232B02000, v10, v11, "Unable to convert model output to scalar array", v12, 2u);
      MEMORY[0x238393870](v12, -1, -1);
    }

    return 0;
  }

  sub_232B48E4C(&qword_27DDC7040, &qword_27DDC6FA0, &unk_232CF7CB0);
  v14 = sub_232CE9A80();
  (*(*(v8 - 8) + 8))(v7, v8);
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v14 + 16);
  if (v15 != a1 * a2)
  {
    if (qword_2814DFA50 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v16 = sub_232CE9C60();
  v23 = 0;
  v24 = v16;
  if (!a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_13:
    v17 = sub_232CE9A30();
    sub_232B135C4(v17, qword_2814E3DA8);

    v18 = sub_232CE9A00();
    v19 = sub_232CEA1C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218496;
      v21 = *(v14 + 16);

      *(v20 + 4) = v21;

      *(v20 + 12) = 2048;
      *(v20 + 14) = a2;
      *(v20 + 22) = 2048;
      *(v20 + 24) = a1;
      _os_log_impl(&dword_232B02000, v18, v19, "Model output of length: %ld does not conform to expected size [%ld, %ld]", v20, 0x20u);
      MEMORY[0x238393870](v20, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  sub_232B60788(0, v15, a1, &v24, &v23, v14, a1);
  return v24;
}

id DUEncodingModelOutput.init(modelName:hiddenLayerSize:nHiddenLayers:sequenceSize:featureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_sequenceSize];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_pooledHiddenLayerValues;
  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v26 = v15;
  *&v7[v15] = sub_232CE9C60();
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerValues] = 0;
  v17 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_modelName];
  *v17 = a1;
  *(v17 + 1) = a2;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_hiddenLayerSize] = a3;
  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding21DUEncodingModelOutput_nHiddenLayers] = a4;
  *v14 = a5;
  v14[8] = 0;
  v18 = type metadata accessor for DUEncodingModelOutput();
  v19 = sub_232B61308(a3, a4, a5);
  if (v19)
  {
    v20 = *&v7[v16];
    *&v7[v16] = v19;

    v27.receiver = v7;
    v27.super_class = v18;
    v21 = objc_msgSendSuper2(&v27, sel_init);
  }

  else
  {

    v22 = *(v17 + 1);

    v23 = *&v7[v26];

    v24 = *&v7[v16];

    sub_232B66C14();
    return 0;
  }

  return v21;
}

uint64_t *sub_232B61308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7038, &unk_232CF7F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  sub_232CEA1F0();
  if (sub_232B12480(v9, 1, v10) == 1)
  {
    sub_232B13790(v9, &qword_27DDC7038, &unk_232CF7F40);
    if (qword_2814DFA50 != -1)
    {
      swift_once();
    }

    v18 = sub_232CE9A30();
    sub_232B135C4(v18, qword_2814E3DA8);
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_232B02000, v19, v20, "Unable to convert model output to MLShapedArray", v21, 2u);
      MEMORY[0x238393870](v21, -1, -1);
    }

    return 0;
  }

  (*(v11 + 32))(v17, v9, v10);
  v22 = sub_232CE9A40();
  sub_232B124A8(&qword_27DDC6B68, &qword_232CF6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF8180;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;
  v24 = sub_232B34EB4(v22, inited);

  swift_setDeallocating();
  if ((v24 & 1) == 0)
  {
    if (qword_2814DFA50 == -1)
    {
LABEL_11:
      v27 = sub_232CE9A30();
      sub_232B135C4(v27, qword_2814E3DA8);
      (*(v11 + 16))(v15, v17, v10);
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1C0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v44;
        *v30 = 136315906;
        v43 = v28;
        sub_232CE9A40();
        v39 = MEMORY[0x238391D80]();
        v42 = a3;
        v32 = v31;

        v40 = a1;
        v33 = *(v11 + 8);
        v41 = v29;
        v33(v15, v10);
        v34 = sub_232BAD2D4(v39, v32, &v45);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2048;
        *(v30 + 14) = a2;
        *(v30 + 22) = 2048;
        v35 = v43;
        *(v30 + 24) = v42;
        *(v30 + 32) = 2048;
        *(v30 + 34) = v40;
        _os_log_impl(&dword_232B02000, v35, v41, "Model output of shape: %s does not conform to expected size [%ld, %ld, %ld]", v30, 0x2Au);
        v36 = v44;
        sub_232B2040C(v44);
        MEMORY[0x238393870](v36, -1, -1);
        MEMORY[0x238393870](v30, -1, -1);
      }

      else
      {

        v33 = *(v11 + 8);
        v33(v15, v10);
      }

      v33(v17, v10);
      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
  v25 = sub_232CE9C60();
  v45 = v25;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = &v45;
  *(&v38 - 1) = v17;
  sub_232B1D268(sub_232B66AB4, (&v38 - 4), 0, a2);
  v26 = v45;
  (*(v11 + 8))(v17, v10);
  return v26;
}