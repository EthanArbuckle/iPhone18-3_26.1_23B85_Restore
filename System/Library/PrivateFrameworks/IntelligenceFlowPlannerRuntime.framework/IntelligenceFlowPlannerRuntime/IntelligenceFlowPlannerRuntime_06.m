uint64_t static FullPlannerCLISupport.IFTool.modelResponseToPlanValue(preferences:locale:queryableToolbox:modelResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v7 = sub_22C587C84(0);
  v6[32] = v7;
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v6[33] = sub_22C3699D4();
  v10 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  v6[34] = sub_22C3699D4();
  v13 = sub_22C90069C();
  v6[35] = v13;
  v14 = *(v13 - 8);
  v6[36] = v14;
  v15 = *(v14 + 64);
  v6[37] = sub_22C3699D4();
  v16 = sub_22C90880C();
  sub_22C369914(v16);
  v18 = *(v17 + 64);
  v6[38] = sub_22C3699D4();
  v19 = sub_22C9087BC();
  v6[39] = v19;
  v20 = *(v19 - 8);
  v6[40] = v20;
  v21 = *(v20 + 64);
  v6[41] = sub_22C3699D4();
  v22 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v6[42] = v22;
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v6[43] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C3DDA5C, 0, 0);
}

uint64_t sub_22C3DDA5C()
{
  v1 = *(v0 + 216);
  v2 = sub_22C4DE310();
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = sub_22C90077C();
  sub_22C36985C(v8);
  (*(v9 + 16))(v3, v6);
  v10 = v4[6];
  sub_22C906A5C();
  sub_22C36A748();
  sub_22C36C640(v11, v12, v13, v14);
  v15 = v4[7];
  sub_22C90876C();
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v19);
  v20 = v4[9];
  type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C36A748();
  sub_22C36C640(v21, v22, v23, v24);
  sub_22C3DA748(v7, v3 + v4[10]);
  *(v3 + v4[5]) = v5;
  v25 = (v3 + v4[8]);
  *v25 = 0;
  v25[1] = 0;

  sub_22C4DE060(v2, v3, (v0 + 120));
  sub_22C3DB0DC(*(v0 + 344));
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  sub_22C36D1E4(v0 + 120, v26);
  (*(v27 + 104))(v26, v27);
  if (*(v0 + 112))
  {
    *(v0 + 200) = *(v0 + 72);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94((v0 + 120));
    v28 = *(v0 + 344);
    v29 = *(v0 + 328);
    v31 = *(v0 + 296);
    v30 = *(v0 + 304);
    v33 = *(v0 + 264);
    v32 = *(v0 + 272);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 328);
    v38 = *(v0 + 296);
    v37 = *(v0 + 304);
    v40 = *(v0 + 264);
    v39 = *(v0 + 272);
    v41 = *(v0 + 256);
    sub_22C36C730((v0 + 72), v0 + 160);
    sub_22C90068C();
    sub_22C9087EC();
    sub_22C90879C();
    sub_22C374168((v0 + 160), *(v0 + 184));
    sub_22C56F0A0((v0 + 16));
    sub_22C906D3C();
    sub_22C36A748();
    sub_22C36C640(v42, v43, v44, v45);
    v46 = type metadata accessor for RenderingState();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    *(v0 + 352) = sub_22C480800(v39);
    *(v0 + 360) = sub_22C9073DC();
    sub_22C36A748();
    sub_22C36C640(v49, v50, v51, v52);
    *(v0 + 116) = v41[5];
    sub_22C90068C();
    *(v0 + 400) = v41[6];
    sub_22C90451C();
    sub_22C36A748();
    sub_22C36C640(v53, v54, v55, v56);
    *(v0 + 404) = v41[7];
    sub_22C90068C();
    *(v0 + 408) = v41[8];
    sub_22C90068C();
    *(v0 + 412) = v41[9];
    sub_22C90068C();
    v57 = swift_task_alloc();
    *(v0 + 368) = v57;
    *v57 = v0;
    v57[1] = sub_22C3DDE40;
    v58 = *(v0 + 328);
    v59 = *(v0 + 264);
    v61 = *(v0 + 240);
    v60 = *(v0 + 248);

    return sub_22C4211E0();
  }
}

uint64_t sub_22C3DDE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 368);
  v26 = *v4;
  *(*v4 + 376) = v3;

  if (v3)
  {
    v9 = *(v7 + 352);

    sub_22C3DE2C8(v7 + 16);
    v10 = sub_22C3DE050;
  }

  else
  {
    v11 = *(v7 + 352);
    v12 = *(v7 + 360);
    v13 = *(v7 + 288);
    v14 = *(v7 + 264);

    sub_22C3DE2C8(v7 + 16);
    v15 = sub_22C370B74(v14, 1, v12);
    v16 = *(v13 + 8);
    v25 = a1;
    if (v15 != 1)
    {
      v16(*(v7 + 264), *(v7 + 280));
    }

    v24 = *(v7 + 412);
    v17 = *(v7 + 408);
    v18 = *(v7 + 404);
    v19 = *(v7 + 400);
    v20 = *(v7 + 116);
    v21 = *(v7 + 280);
    v22 = *(v7 + 264);
    *(v7 + 384) = a3;
    *(v7 + 392) = v25;
    v16(v22 + v20, v21);
    sub_22C3DD4B0(v22 + v19);
    v16(v22 + v18, v21);
    v16(v22 + v17, v21);
    v16(v22 + v24, v21);
    v10 = sub_22C3DE1CC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22C3DE050()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v4 = sub_22C370B74(v3, 1, v1);
  v5 = *(v2 + 8);
  if (v4 != 1)
  {
    v5(*(v0 + 264), *(v0 + 280));
  }

  v6 = *(v0 + 412);
  v7 = *(v0 + 408);
  v8 = *(v0 + 404);
  v9 = *(v0 + 400);
  v10 = *(v0 + 280);
  v11 = *(v0 + 264);
  v5(v11 + *(v0 + 116), v10);
  sub_22C3DD4B0(v11 + v9);
  v5(v11 + v8, v10);
  v5(v11 + v7, v10);
  v5(v11 + v6, v10);
  sub_22C36FF94((v0 + 160));
  sub_22C36FF94((v0 + 120));
  v12 = *(v0 + 376);
  v13 = *(v0 + 344);
  v14 = *(v0 + 328);
  v16 = *(v0 + 296);
  v15 = *(v0 + 304);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22C3DE1CC()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[43];
  v4 = v0[38];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[26];
  (*(v0[40] + 8))(v0[41], v0[39]);

  *v8 = 0;
  v8[1] = 0;
  v8[2] = v2;
  sub_22C36FF94(v0 + 20);
  sub_22C36FF94(v0 + 15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22C3DE31C()
{
  v0 = sub_22C90B21C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3DE370(char a1)
{
  if (a1)
  {
    return 0x65747441666C6573;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_22C3DE3D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C3DE31C();
  *a2 = result;
  return result;
}

uint64_t sub_22C3DE404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3DE370(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C3DE4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C3DE5A4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22C3DE5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3DE4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3DE600(uint64_t a1)
{
  v2 = sub_22C3DE800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3DE63C(uint64_t a1)
{
  v2 = sub_22C3DE800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerCLISupport.IFTool.TGToolInterop.CodableContent.encode(to:)(void *a1)
{
  v4 = sub_22C3A5908(&qword_27D9BB7C0, &qword_22C910168);
  v5 = sub_22C369824(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3DE800();
  sub_22C90B6CC();
  v20 = 0;
  sub_22C90B3CC();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_22C3DE854();
    sub_22C90B41C();
  }

  return (*(v16 + 8))(v10, v4);
}

unint64_t sub_22C3DE800()
{
  result = qword_27D9BB7C8;
  if (!qword_27D9BB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7C8);
  }

  return result;
}

unint64_t sub_22C3DE854()
{
  result = qword_27D9BB7D0;
  if (!qword_27D9BB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7D0);
  }

  return result;
}

uint64_t FullPlannerCLISupport.IFTool.TGToolInterop.CodableContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BB7D8, &qword_22C910170);
  v6 = sub_22C369824(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3DE800();
  sub_22C90B6BC();
  if (v2)
  {
    return sub_22C36FF94(a1);
  }

  v10 = sub_22C90B2DC();
  v12 = v11;
  sub_22C3DEA78();
  sub_22C90B32C();
  v13 = sub_22C36A754();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  sub_22C36FF94(a1);
}

unint64_t sub_22C3DEA78()
{
  result = qword_27D9BB7E0;
  if (!qword_27D9BB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7E0);
  }

  return result;
}

_BYTE *_s14descr283FAC5B1V13TGToolInteropOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C3DEBA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22C3DEBE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22C3DEC3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C3DED1C()
{
  result = qword_27D9BB7E8;
  if (!qword_27D9BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7E8);
  }

  return result;
}

unint64_t sub_22C3DED74()
{
  result = qword_27D9BB7F0;
  if (!qword_27D9BB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7F0);
  }

  return result;
}

unint64_t sub_22C3DEDCC()
{
  result = qword_27D9BB7F8;
  if (!qword_27D9BB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB7F8);
  }

  return result;
}

unint64_t sub_22C3DEE24()
{
  result = qword_27D9BB800;
  if (!qword_27D9BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB800);
  }

  return result;
}

unint64_t sub_22C3DEE78()
{
  result = qword_27D9BB808;
  if (!qword_27D9BB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB808);
  }

  return result;
}

uint64_t static FullPlannerCLISupport.IFTool.getCLIToolRenderer(locale:queryableToolbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v8 = sub_22C36985C(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = type metadata accessor for FullPlannerPreferences();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22C369838();
  v18 = v17 - v16;
  FullPlannerPreferences.init()(v17 - v16);
  v19 = sub_22C4DE310();
  if (v3)
  {
    sub_22C36A764();
    return sub_22C3E0180(v18, v29);
  }

  v20 = v19;
  v21 = sub_22C90077C();
  sub_22C36985C(v21);
  (*(v22 + 16))(v13, a1);
  v23 = v13 + v7[6];
  sub_22C57689C();
  v24 = v7[7];
  v25 = sub_22C90876C();
  sub_22C386F58(v25);
  v26 = v7[9];
  v27 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  sub_22C386F58(v27);
  sub_22C3DA748(v18, v13 + v7[10]);
  *(v13 + v7[5]) = a2;
  v28 = (v13 + v7[8]);
  *v28 = 0;
  v28[1] = 0;

  sub_22C4DE060(v20, v13, v53);
  sub_22C3E0180(v13, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
  v31 = v53[4];
  sub_22C36D1E4(v53, v53[3]);
  v32 = *(v31 + 96);
  v33 = sub_22C3E0290();
  v34(v33);
  if ((v43[0] & 1) == 0)
  {
    sub_22C36C730(v42, v50);
    sub_22C3A5908(&qword_27D9BB740, &qword_22C90FE48);
    sub_22C3A5908(&qword_27D9BB748, &qword_22C90FE50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v52 = 0;
      memset(v51, 0, sizeof(v51));
    }

    sub_22C3DF278(v51, v44);
    if (v45)
    {
      v36 = v46;
      sub_22C374168(v44, v45);
      v37 = *(v36 + 16);
      v38 = sub_22C3E0290();
      v39(v38);
      sub_22C36A764();
      sub_22C3E0180(v18, v40);
      sub_22C378A4C(v43, &v47);
      sub_22C3DF2E8(v42);
      sub_22C36FF94(v44);
      if (*(&v48 + 1))
      {
        sub_22C36C730(&v47, v50);
        sub_22C36C730(v50, a3);
LABEL_13:
        sub_22C36DD28(v51, &qword_27D9BB750, &qword_22C90FE58);
        return sub_22C36FF94(v53);
      }
    }

    else
    {
      sub_22C36A764();
      sub_22C3E0180(v18, v41);
      sub_22C36DD28(v44, &qword_27D9BB750, &qword_22C90FE58);
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
    }

    sub_22C36DD28(&v47, &qword_27D9BB810, &unk_22C910420);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_13;
  }

  *&v47 = *&v42[0];
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  swift_willThrowTypedImpl();
  sub_22C36A764();
  sub_22C3E0180(v18, v35);
  return sub_22C36FF94(v53);
}

uint64_t sub_22C3DF278(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB750, &qword_22C90FE58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FullPlannerCLISupport.IFTool.CLIToolEntryRenderer.render(_:shouldReformatOutput:)(unint64_t a1, int a2)
{
  v158 = a2;
  v153 = a1;
  v2 = type metadata accessor for FullPlannerPreferences();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22C369838();
  v151 = v5 - v4;
  v6 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C3698F8(&v138 - v8);
  v145 = sub_22C908A7C();
  v9 = sub_22C369824(v145);
  v143 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v140 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698F8(&v138 - v15);
  v142 = sub_22C908DAC();
  v16 = sub_22C369824(v142);
  v141 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C3698F8(v21 - v20);
  v22 = sub_22C908D6C();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v30 = v29 - v28;
  v31 = sub_22C908EAC();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v152 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v138 - v39;
  v41 = sub_22C908ABC();
  v42 = sub_22C369824(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  v49 = (v48 - v47);
  v146 = type metadata accessor for RenderableTool();
  v50 = sub_22C36985C(v146);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v150 = (v54 - v53);
  (*(v44 + 16))(v49, v153, v41);
  v55 = (*(v44 + 88))(v49, v41);
  if (v55 == *MEMORY[0x277D1E8E0])
  {
    v56 = sub_22C38B7D4();
    v57(v56);
    v144 = v34;
    v58 = *(v34 + 32);
    v145 = v31;
    v142 = v34 + 32;
    v141 = v58;
    v58(v40, v49, v31);
    v143 = v40;
    v59 = sub_22C908DEC();
    v60 = 0;
    v61 = *(v59 + 16);
    v152 = v25 + 16;
    v153 = v61;
    v62 = *MEMORY[0x277D72188];
    v63 = *MEMORY[0x277D72178];
    v64 = (v25 + 8);
    while (1)
    {
      if (v153 == v60)
      {
        v60 = v153;
        goto LABEL_15;
      }

      v65 = v59;
      (*(v25 + 16))(v30, v59 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v60, v22);
      v66 = (*(v25 + 88))(v30, v22);
      if (v66 == v62)
      {
        break;
      }

      if (v66 == v63)
      {
        goto LABEL_14;
      }

      (*v64)(v30, v22);
      ++v60;
      v59 = v65;
    }

    (*v64)(v30, v22);
LABEL_14:
    v59 = v65;
LABEL_15:
    v92 = *(v59 + 16);
    v91 = v158;
    v71 = v150;
    v93 = v145;
    v94 = v144;
    v95 = v143;
    if (v60 == v92)
    {

      v96 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*(v94 + 16))(v71, v95, v93);
      v97 = *MEMORY[0x277D1ECE0];
      v98 = sub_22C9036EC();
      sub_22C36985C(v98);
      v100 = *(v99 + 104);
      v101 = sub_22C36D390();
      v102(v101);
      sub_22C9037DC();
      *&v155[0] = MEMORY[0x277D84F90];
      sub_22C3E00C4();
      sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
      sub_22C3E011C();
      sub_22C36BB6C();
      (*(v94 + 8))(v95, v93);
      sub_22C37153C();
LABEL_20:
      swift_storeEnumTagMultiPayload();
LABEL_24:
      v78 = v151;
      goto LABEL_25;
    }

    if (v60 >= v92)
    {
      __break(1u);
    }

    else
    {
      v103 = v59 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v60;
      if (!sub_22C4AF1C0())
      {

        sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
        v104 = *(v94 + 72);
        v105 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_22C90F800;
        v141(v106 + v105, v95, v93);
        *v71 = v106;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  if (v55 == *MEMORY[0x277D1E8C8])
  {
    v67 = sub_22C38B7D4();
    v68(v67);
    v69 = v152;
    (*(v34 + 32))(v152, v49, v31);
    v70 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    v71 = v150;
    (*(v34 + 16))(v150, v69, v31);
    v72 = *MEMORY[0x277D1ECD0];
    v73 = sub_22C9036EC();
    sub_22C36985C(v73);
    v75 = *(v74 + 104);
    v76 = sub_22C36D390();
    v77(v76);
    sub_22C9037DC();
    *&v155[0] = MEMORY[0x277D84F90];
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3E011C();
    sub_22C36BB6C();
    (*(v34 + 8))(v69, v31);
    sub_22C37153C();
    swift_storeEnumTagMultiPayload();
    v78 = v151;
  }

  else
  {
    v71 = v150;
    v78 = v151;
    if (v55 != *MEMORY[0x277D1E8D0])
    {
      if (v55 == *MEMORY[0x277D1E8D8])
      {
        v107 = sub_22C38B7D4();
        v108(v107);
        v109 = v143;
        v110 = v144;
        v111 = v145;
        (*(v143 + 4))(v144, v49, v145);
        v112 = v140;
        v109[2](v140, v110, v111);
        if ((v109[11])(v112, v111) == *MEMORY[0x277D1E8B8])
        {
          (v109[12])(v112, v111);
          v113 = v152;
          v114 = v31;
          (*(v34 + 32))(v152, v112, v31);
          v115 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
          (*(v34 + 16))(v71, v113, v114);
          v116 = *MEMORY[0x277D1ECE0];
          v117 = sub_22C9036EC();
          sub_22C36985C(v117);
          v119 = *(v118 + 104);
          v120 = sub_22C36D390();
          v121(v120);
          sub_22C9037DC();
          *&v155[0] = MEMORY[0x277D84F90];
          sub_22C3E00C4();
          sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
          sub_22C3E011C();
          sub_22C36BB6C();
          (*(v34 + 8))(v113, v114);
          (v109[1])(v144, v145);
          sub_22C37153C();
          swift_storeEnumTagMultiPayload();
          v91 = v158;
          goto LABEL_24;
        }
      }

      goto LABEL_36;
    }

    v79 = sub_22C38B7D4();
    v80(v79);
    v81 = v141;
    v82 = v139;
    v83 = v142;
    (*(v141 + 4))(v139, v49, v142);
    v84 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    sub_22C908D7C();
    v85 = *MEMORY[0x277D1ECE8];
    v86 = sub_22C9036EC();
    sub_22C36985C(v86);
    v88 = *(v87 + 104);
    v89 = sub_22C36D390();
    v90(v89);
    sub_22C9037DC();
    *&v155[0] = MEMORY[0x277D84F90];
    sub_22C3E00C4();
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3E011C();
    sub_22C90AE4C();
    (*(v81 + 1))(v82, v83);
    sub_22C37153C();
    swift_storeEnumTagMultiPayload();
  }

  v91 = v158;
LABEL_25:
  v122 = v147[3];
  v123 = v147[4];
  sub_22C374168(v147, v122);
  v124 = sub_22C4B9B90(MEMORY[0x277D84F90]);
  v125 = sub_22C906D3C();
  v126 = v148;
  sub_22C36C640(v148, 1, 1, v125);
  v127 = type metadata accessor for RenderingState();
  v128 = *(v127 + 48);
  v129 = *(v127 + 52);
  swift_allocObject();
  v130 = sub_22C480800(v126);
  v131 = v149;
  (*(v123 + 16))(v155, v71, v124, v130, v122, v123);
  if (v131)
  {
    sub_22C3731E4();
  }

  else
  {

    v154[0] = v155[0];
    v154[1] = v155[1];
    v154[2] = v156;
    v154[3] = v157;
    v132 = *&v155[0];
    if (BYTE8(v156))
    {
      v159 = v155[0];
      sub_22C3E01D8();
      v124 = &unk_283FB5838;
      swift_willThrowTypedImpl();
      swift_allocError();
      *v133 = v132;
      sub_22C3E022C(v154);
      sub_22C3731E4();
    }

    else
    {

      FullPlannerPreferences.init()(v78);
      v124 = sub_22C49FB90(v132, v78);
      v136 = v135;
      sub_22C36A764();
      sub_22C3E0180(v78, v137);

      if (v91)
      {
        v124 = sub_22C3F9740(v124, v136);

        sub_22C3E022C(v154);

        sub_22C3731E4();
      }

      else
      {
        sub_22C3731E4();

        sub_22C3E022C(v154);
      }
    }
  }

  return v124;
}

unint64_t sub_22C3E00C4()
{
  result = qword_27D9BB820;
  if (!qword_27D9BB820)
  {
    sub_22C9037DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB820);
  }

  return result;
}

unint64_t sub_22C3E011C()
{
  result = qword_27D9BB830;
  if (!qword_27D9BB830)
  {
    sub_22C3AC1A0(&qword_27D9BB828, &unk_22C912AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB830);
  }

  return result;
}

uint64_t sub_22C3E0180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_22C3E01D8()
{
  result = qword_27D9BB838;
  if (!qword_27D9BB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB838);
  }

  return result;
}

uint64_t sub_22C3E02A4()
{
  v0 = sub_22C8FFEFC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22C8FFF5C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_22C8FFF4C();

  sub_22C8FFEDC();
  sub_22C8FFF0C();

  qword_27D9BB840 = v5;
  return result;
}

uint64_t FullPlannerDBToolAlias.databaseValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C90A17C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C369838();
  v14 = *v1;
  v15 = v1[1];
  v16 = *(v1 + 32);
  if (qword_27D9BA5E8 != -1)
  {
    v33 = v1[1];
    v34 = *v1;
    swift_once();
    v15 = v33;
    v14 = v34;
  }

  v35 = v14;
  v36 = v15;
  LOBYTE(v37) = v16;
  sub_22C3E0650();
  v21 = sub_22C8FFF3C();
  v23 = v22;
  sub_22C90A15C();
  v24 = sub_22C90A13C();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    sub_22C38B120(v21, v23);
    *a1 = v26;
    a1[1] = v27;
    v20 = MEMORY[0x277D78288];
  }

  else
  {
    sub_22C90735C();
    sub_22C3A5F00();
    v31 = swift_allocError();
    *v32 = v35;
    *(v32 + 16) = v36;
    *(v32 + 32) = v37;
    swift_willThrow();
    sub_22C38B120(v21, v23);
    sub_22C903F7C();
    v17 = sub_22C9063CC();
    v18 = sub_22C90AADC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22C366000, v17, v18, "Unable to encode tool rendering information - tools may not be indexed for FullPlanner usage.", v19, 2u);
      sub_22C370510();
    }

    (*(v6 + 8))(v11, v3);
    v20 = MEMORY[0x277D78278];
  }

  v28 = *v20;
  v29 = sub_22C9014CC();
  return (*(*(v29 - 8) + 104))(a1, v28, v29);
}

unint64_t sub_22C3E0650()
{
  result = qword_27D9BB848;
  if (!qword_27D9BB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB848);
  }

  return result;
}

uint64_t sub_22C3E06A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6F6F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022C92FF90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22C3E0774(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656D614E6C6F6F74;
  }
}

uint64_t sub_22C3E07B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C3E0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3E06A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C3E085C(uint64_t a1)
{
  v2 = sub_22C3E1590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0898(uint64_t a1)
{
  v2 = sub_22C3E1590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3E08D8(uint64_t a1)
{
  v2 = sub_22C3E15E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0914(uint64_t a1)
{
  v2 = sub_22C3E15E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C3E0954(uint64_t a1)
{
  v2 = sub_22C3E1638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C3E0990(uint64_t a1)
{
  v2 = sub_22C3E1638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerDBToolAlias.encode(to:)(void *a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB850, &qword_22C910480);
  v4 = sub_22C369824(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v10 = sub_22C3A5908(&qword_27D9BB858, &qword_22C910488);
  v11 = sub_22C369824(v10);
  v38 = v12;
  v39 = v11;
  v14 = *(v13 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = sub_22C3A5908(&qword_27D9BB860, &qword_22C910490);
  sub_22C369824(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = &v32 - v24;
  v26 = *v1;
  v36 = v1[1];
  v37 = v26;
  v27 = *(v1 + 32);
  v28 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3E1590();
  sub_22C90B6CC();
  if (v27 == 255)
  {
    LOBYTE(v40) = 1;
    sub_22C3E15E4();
    v31 = v33;
    sub_22C36BB8C();
    sub_22C90B36C();
    (*(v34 + 8))(v31, v35);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_22C3E1638();
    sub_22C36BB8C();
    sub_22C90B36C();
    v41 = v36;
    v40 = v37;
    v42 = v27 & 1;
    sub_22C3E168C();
    v29 = v39;
    sub_22C90B41C();
    (*(v38 + 8))(v17, v29);
  }

  return (*(v20 + 8))(v25, v18);
}

void FullPlannerDBToolAlias.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = sub_22C3A5908(&qword_27D9BB888, &qword_22C910498);
  sub_22C369824(v61);
  v58 = v3;
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v53[-v7];
  v9 = sub_22C3A5908(&qword_27D9BB890, &qword_22C9104A0);
  sub_22C369824(v9);
  v59 = v10;
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = &v53[-v14];
  v16 = sub_22C3A5908(&qword_27D9BB898, &qword_22C9104A8);
  sub_22C369824(v16);
  v60 = v17;
  v19 = *(v18 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = &v53[-v21];
  v23 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C3E1590();
  v24 = v66;
  sub_22C90B6BC();
  if (v24)
  {
    goto LABEL_8;
  }

  v56 = v8;
  v57 = v15;
  v66 = a1;
  v55 = v9;
  v25 = v61;
  v26 = v62;
  v27 = sub_22C90B34C();
  sub_22C3E16E0(v27, 0);
  v32 = v28;
  if (v30 == v31 >> 1)
  {
    goto LABEL_7;
  }

  if (v30 >= (v31 >> 1))
  {
    __break(1u);
    return;
  }

  v54 = *(v29 + v30);
  v33 = sub_22C3E1EA4(v30 + 1, v31 >> 1, v28, v29, v30, v31);
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  v32 = v33;
  if (v35 != v37 >> 1)
  {
LABEL_7:
    v62 = v32;
    v39 = sub_22C90AFBC();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0) + 48);
    *v41 = &type metadata for FullPlannerDBToolAlias;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = sub_22C369B18();
    v44(v43, v16);
    a1 = v66;
LABEL_8:
    sub_22C36FF94(a1);
    return;
  }

  if (v54)
  {
    LOBYTE(v63) = 1;
    sub_22C3E15E4();
    v38 = v56;
    sub_22C36BB8C();
    sub_22C90B24C();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v38, v25);
    v45 = sub_22C369B18();
    v46(v45, v16);
    v47 = 0uLL;
    v48 = -1;
    v49 = 0uLL;
  }

  else
  {
    LOBYTE(v63) = 0;
    sub_22C3E1638();
    sub_22C36BB8C();
    sub_22C90B24C();
    sub_22C3E1758();
    sub_22C90B32C();
    v50 = v60;
    swift_unknownObjectRelease();
    v51 = sub_22C388548();
    v52(v51);
    (*(v50 + 8))(v22, v16);
    v47 = v63;
    v49 = v64;
    v48 = v65;
  }

  *v26 = v47;
  *(v26 + 16) = v49;
  *(v26 + 32) = v48;
  sub_22C36FF94(v66);
}

double FullPlannerToolboxDelegate.toolDefinitionCustomMapping(toolDefinition:)(void *a1)
{
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = sub_22C371550();
  sub_22C4DE3B8(v9);
  if (a1)
  {
    sub_22C903F7C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AADC();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      sub_22C370510();
    }

    (*(v6 + 8))(v1, v3);
    return sub_22C372600();
  }

  return result;
}

double FullPlannerToolboxDelegate.assistantSchemaCustomMapping(assistantSchemaIdentifier:assistantToolSchemaDefinition:)(void *a1)
{
  v3 = sub_22C9063DC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v9 = sub_22C371550();
  sub_22C4DE634(v9);
  if (a1)
  {
    sub_22C903F7C();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AADC();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      sub_22C370510();
    }

    (*(v6 + 8))(v1, v3);
    return sub_22C372600();
  }

  return result;
}

uint64_t FullPlannerToolboxDelegate.versionIdentifier.getter()
{
  v0 = *(type metadata accessor for FullPlannerPreferences() + 32);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();

  MEMORY[0x2318B7850](95, 0xE100000000000000);

  v1 = sub_22C90B47C();
  v3 = v2;

  MEMORY[0x2318B7850](v1, v3);

  return v5;
}

unint64_t sub_22C3E1590()
{
  result = qword_27D9BB868;
  if (!qword_27D9BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB868);
  }

  return result;
}

unint64_t sub_22C3E15E4()
{
  result = qword_27D9BB870;
  if (!qword_27D9BB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB870);
  }

  return result;
}

unint64_t sub_22C3E1638()
{
  result = qword_27D9BB878;
  if (!qword_27D9BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB878);
  }

  return result;
}

unint64_t sub_22C3E168C()
{
  result = qword_27D9BB880;
  if (!qword_27D9BB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB880);
  }

  return result;
}

void sub_22C3E16E0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22C37320C();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_22C3E171C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22C37320C();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_22C3E1758()
{
  result = qword_27D9BB8A0;
  if (!qword_27D9BB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8A0);
  }

  return result;
}

uint64_t sub_22C3E17AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3E1814()
{
  result = qword_27D9BB8B0;
  if (!qword_27D9BB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8B0);
  }

  return result;
}

uint64_t sub_22C3E1874(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_22C3E1888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C3E189C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3E18E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_22C3E1930(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for FullPlannerToolboxDelegate()
{
  result = qword_27D9BB8B8;
  if (!qword_27D9BB8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C3E19E0()
{
  result = type metadata accessor for FullPlannerPreferences();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerDBToolAlias.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FullPlannerDBToolAlias.ToolNameCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C3E1BE8()
{
  result = qword_27D9BB8C8;
  if (!qword_27D9BB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8C8);
  }

  return result;
}

unint64_t sub_22C3E1C40()
{
  result = qword_27D9BB8D0;
  if (!qword_27D9BB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8D0);
  }

  return result;
}

unint64_t sub_22C3E1C98()
{
  result = qword_27D9BB8D8;
  if (!qword_27D9BB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8D8);
  }

  return result;
}

unint64_t sub_22C3E1CF0()
{
  result = qword_27D9BB8E0;
  if (!qword_27D9BB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8E0);
  }

  return result;
}

unint64_t sub_22C3E1D48()
{
  result = qword_27D9BB8E8;
  if (!qword_27D9BB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8E8);
  }

  return result;
}

unint64_t sub_22C3E1DA0()
{
  result = qword_27D9BB8F0;
  if (!qword_27D9BB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8F0);
  }

  return result;
}

unint64_t sub_22C3E1DF8()
{
  result = qword_27D9BB8F8;
  if (!qword_27D9BB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB8F8);
  }

  return result;
}

unint64_t sub_22C3E1E50()
{
  result = qword_27D9BB900;
  if (!qword_27D9BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BB900);
  }

  return result;
}

uint64_t sub_22C3E1EA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22C3E1F28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FullPlannerHydrationArbiter.shouldHydrateExecutionOutput()()
{
  v1 = sub_22C9063DC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  if ((sub_22C903E8C() & 1) == 0)
  {
    return 0;
  }

  if (sub_22C3E20D0())
  {
    return 1;
  }

  v11 = sub_22C4DE310();
  if (v0)
  {

    sub_22C903F7C();
    v12 = sub_22C9063CC();
    v13 = sub_22C90AACC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22C366000, v12, v13, "Couldn't load FullPlannerPreferences. Not requesting to hydrate execution output", v14, 2u);
      MEMORY[0x2318B9880](v14, -1, -1);
    }

    (*(v4 + 8))(v9, v1);
    return 0;
  }

  return v11 < 4u;
}

BOOL sub_22C3E20D0()
{
  swift_getKeyPath();
  sub_22C901F3C();

  v0 = sub_22C90B21C();

  return v0 < 2;
}

uint64_t FullPlannerHydrationArbiter.shouldHydrate(_:)(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v49 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C90952C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v45 - v24;
  if (sub_22C3E20D0())
  {
    v26 = 1;
    return v26 & 1;
  }

  v47 = v2;
  v48 = a1;
  sub_22C90391C();
  v27 = sub_22C9093BC();
  if (sub_22C370B74(v25, 1, v27) != 1)
  {
    sub_22C90935C();
    v28 = *(v27 - 8);
    v29 = *(v28 + 8);
    v45[1] = v28 + 8;
    v46 = v29;
    v29(v25, v27);
    v30 = sub_22C9094BC();
    v32 = v31;
    v45[0] = *(v13 + 8);
    (v45[0])(v18, v10);
    if (v30 == 0xD000000000000019 && 0x800000022C92E340 == v32)
    {
    }

    else
    {
      v34 = sub_22C90B4FC();

      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_22C90391C();
    if (sub_22C370B74(v23, 1, v27) != 1)
    {
      sub_22C90935C();
      v46(v23, v27);
      TypeIdentifier.selfLoggingTypeName.getter();
      v40 = v39;
      v42 = v41;
      (v45[0])(v18, v10);
      if (v40 == 0x746E457465737341 && v42 == 0xEB00000000797469)
      {

        v26 = 0;
        return v26 & 1;
      }

      v44 = sub_22C90B4FC();

      v26 = 0;
      if (v44)
      {
        return v26 & 1;
      }

      goto LABEL_14;
    }

    v25 = v23;
  }

  sub_22C3E259C(v25);
LABEL_14:
  if (sub_22C50D9B8())
  {
    sub_22C903F7C();
    v35 = sub_22C9063CC();
    v36 = sub_22C90AACC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22C366000, v35, v36, "FullPlannerHydrationArbiter: entity hydration should be performed as the type is one rendered in the prompt", v37, 2u);
      MEMORY[0x2318B9880](v37, -1, -1);
    }

    (*(v49 + 8))(v9, v47);
  }

  v26 = sub_22C50D9B8();
  return v26 & 1;
}

uint64_t sub_22C3E259C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3E2684()
{
  sub_22C90B62C();
  sub_22C3A4FC0(v2, *v0);
  return sub_22C90B66C();
}

uint64_t sub_22C3E26C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_22C3C3C70(*v1);
}

uint64_t sub_22C3E26D4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_22C38C740(a1, *v2);
}

uint64_t sub_22C3E26E4(uint64_t a1, void *a2)
{
  sub_22C90B62C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_22C38C740(v8, *v2);
  return sub_22C90B66C();
}

BOOL sub_22C3E2730(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_22C382C3C(*a1, *a2);
}

uint64_t sub_22C3E2748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v9 = sub_22C901FAC();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v40 = a4;
  v16 = *(a4 + 16);
  v52 = v37 - v14;
  if (v16)
  {
    v51 = MEMORY[0x277D84F90];

    sub_22C3B6F24();
    v17 = v51;
    v18 = *(v51 + 16);
    do
    {
      v51 = v17;
      if (v18 >= *(v17 + 24) >> 1)
      {
        sub_22C3B6F24();
        v17 = v51;
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + v18++ + 32) = 0;
      --v16;
    }

    while (v16);
    v15 = v52;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v46 = v19 + 2;
  v47 = v19;
  v19[3] = a3;
  v19[4] = v17;
  v20 = swift_allocObject();
  v42 = v20;
  *(v20 + 16) = a1;
  v37[1] = v20 + 16;
  v21 = *(a3 + 16);
  if (!v21)
  {
    goto LABEL_28;
  }

  v38 = a2;
  v39 = a3;
  v22 = v50 + 16;
  v50 = *(v50 + 16);
  v45 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v44 = a3 + v45;
  v23 = (v22 - 8);
  v24 = *(v22 + 56);

  while (1)
  {
    v49 = v21 - 1;
    (v50)(v15, v44 + v24 * (v21 - 1), v9);
    swift_beginAccess();
    v26 = v47[2];
    v25 = v47[3];
    v48 = v47[4];
    v27 = v25 + v45;
    v28 = *(v25 + 16);
    if (!v26)
    {
      for (i = 0; v28 != i; ++i)
      {
        (v50)(v13, v27, v9);
        sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338]);
        v33 = sub_22C90A0BC();
        (*v23)(v13, v9);
        if (v33)
        {
          goto LABEL_18;
        }

        v27 += v24;
      }

LABEL_12:
      swift_endAccess();
LABEL_20:
      v15 = v52;
      goto LABEL_21;
    }

    sub_22C7DBC48();
    i = v29;
    v32 = v31;

    if (v32)
    {
      goto LABEL_12;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_18:
    if (i >= *(v48 + 16))
    {
      goto LABEL_27;
    }

    v34 = *(v48 + i + 32);
    swift_endAccess();
    if (v34)
    {
      goto LABEL_20;
    }

    v15 = v52;
    v35 = v43;
    sub_22C3E2BA4(v52, v47, v38, v39, v40, v41, v42);
    v43 = v35;
    if (v35)
    {
      (*v23)(v15, v9);

      return v34;
    }

LABEL_21:
    (*v23)(v15, v9);
    v21 = v49;
    if (!v49)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

LABEL_29:
  swift_beginAccess();
  v34 = *(v42 + 16);

  return v34;
}

void sub_22C3E2BA4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v77 = a5;
  v78 = a7;
  v79 = a3;
  v80 = a4;
  v12 = sub_22C9070DC();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C901FAC();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v84 = v23;
  v24 = *(v23 + 16);
  v90 = v23 + 16;
  v89 = v24;
  v24(&v70 - v21, a1, v16);
  swift_beginAccess();
  v88 = a2;
  sub_22C7C650C();
  swift_endAccess();
  v25 = *(a6 + 16);
  v76 = a6;
  if (v25 && (sub_22C628274(), (v27 & 1) != 0))
  {
    v28 = (*(a6 + 56) + 16 * v26);
    v29 = v28[1];
    v75 = *v28;
  }

  else
  {
    sub_22C7F5258();
    v75 = v30;
    v29 = v31;
  }

  v71 = v15;
  v74 = a1;
  v81 = v8;
  v32 = *(v29 + 16);
  if (v32)
  {
    v33 = 0;
    v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v82 = v29;
    v83 = v29 + v87;
    v34 = (v84 + 8);
    while (1)
    {
      if (v33 >= v32)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v35 = *(v84 + 72);
      v86 = v33;
      v89(v20, v83 + v35 * v33, v16);
      v36 = v88;
      swift_beginAccess();
      v38 = v36[2];
      v37 = v36[3];
      v85 = v36[4];
      v39 = v37 + v87;
      v40 = *(v37 + 16);
      if (!v38)
      {
        break;
      }

      sub_22C7DBC48();
      j = v41;
      v44 = v43;

      if (v44)
      {
        goto LABEL_10;
      }

      if ((j & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

LABEL_16:
      if (j >= *(v85 + 16))
      {
        goto LABEL_37;
      }

      v46 = *(v85 + j + 32);
      swift_endAccess();
      if (v46 == 1)
      {
        type metadata accessor for FullPlannerError();
        sub_22C3E340C(qword_27D9BB910, type metadata accessor for FullPlannerError);
        swift_allocError();
        v68 = v67;
        v69 = sub_22C901E8C();
        sub_22C36C640(v68, 6, 15, v69);
        swift_willThrow();

        (*v34)(v20, v16);
        return;
      }

LABEL_18:
      v47 = v88;
      swift_beginAccess();
      v49 = v47[2];
      v48 = v47[3];
      v85 = v47[4];
      v50 = v48 + v87;
      v51 = *(v48 + 16);
      if (!v49)
      {
        for (i = 0; v51 != i; ++i)
        {
          v89(v22, v50, v16);
          sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338]);
          v56 = sub_22C90A0BC();
          (*v34)(v22, v16);
          if (v56)
          {
            goto LABEL_26;
          }

          v50 += v35;
        }

LABEL_20:
        swift_endAccess();
        goto LABEL_29;
      }

      sub_22C7DBC48();
      i = v52;
      v55 = v54;

      if (v55)
      {
        goto LABEL_20;
      }

      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

LABEL_26:
      if (i >= *(v85 + 16))
      {
        goto LABEL_39;
      }

      v57 = *(v85 + i + 32);
      swift_endAccess();
      if (!v57)
      {
        v58 = v81;
        sub_22C3E2BA4(v20, v88, v79, v80, v77, v76, v78);
        v81 = v58;
        if (v58)
        {
          (*v34)(v20, v16);

          return;
        }
      }

LABEL_29:
      v33 = v86 + 1;
      (*v34)(v20, v16);
      v32 = *(v82 + 16);
      if (v33 == v32)
      {
        goto LABEL_30;
      }
    }

    for (j = 0; v40 != j; ++j)
    {
      v89(v22, v39, v16);
      sub_22C3E340C(&qword_27D9BAA28, MEMORY[0x277D1C338]);
      v45 = sub_22C90A0BC();
      (*v34)(v22, v16);
      if (v45)
      {
        goto LABEL_16;
      }

      v39 += v35;
    }

LABEL_10:
    swift_endAccess();
    goto LABEL_18;
  }

LABEL_30:

  MEMORY[0x28223BE20](v59);
  v60 = v80;
  *(&v70 - 4) = v79;
  *(&v70 - 3) = v60;
  v61 = v74;
  *(&v70 - 2) = v74;
  v62 = v81;
  v63 = sub_22C7D5C98(sub_22C3E33E8, (&v70 - 6), v60);
  if (v64)
  {
    goto LABEL_40;
  }

  v65 = v71;
  sub_22C4054D0(v63, v77);
  v66 = v78;
  swift_beginAccess();
  sub_22C3E3338((v66 + 16), v65);
  swift_endAccess();
  (*(v72 + 8))(v65, v73);
  if (!v62)
  {
    v89(v22, v61, v16);
    swift_beginAccess();
    sub_22C7C650C();
    swift_endAccess();
  }
}

uint64_t sub_22C3E3338(uint64_t *a1, uint64_t a2)
{
  sub_22C3D0F68();
  v4 = *(*a1 + 16);
  sub_22C3D112C(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = sub_22C9070DC();
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *a1 = v5;
  return result;
}

void sub_22C3E33E8(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_22C4078F4(v1[2], a1);
}

uint64_t sub_22C3E340C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_22C3E3454(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C3E3538()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_22C3E3598(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GraphUtilities.GraphUtilitiesError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C3E3798()
{
  result = qword_27D9BBA98;
  if (!qword_27D9BBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBA98);
  }

  return result;
}

uint64_t sub_22C3E38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C3E392C()
{
  if (!qword_27D9BBAC8)
  {
    sub_22C9089DC();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BBAC8);
    }
  }
}

uint64_t sub_22C3E3984()
{
  sub_22C369980();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_22C9063DC();
  v1[13] = v6;
  sub_22C3699B8(v6);
  v1[14] = v7;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = sub_22C90634C();
  v1[18] = v10;
  sub_22C3699B8(v10);
  v1[19] = v11;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v14 = sub_22C90636C();
  v1[22] = v14;
  sub_22C3699B8(v14);
  v1[23] = v15;
  v17 = *(v16 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BBB40, &unk_22C910E10);
  v1[26] = v18;
  sub_22C3699B8(v18);
  v1[27] = v19;
  v21 = *(v20 + 64);
  v1[28] = sub_22C3699D4();
  v22 = type metadata accessor for PlannerServiceContext();
  sub_22C3699B8(v22);
  v1[29] = v23;
  v1[30] = *(v24 + 64);
  v1[31] = sub_22C3699D4();
  v25 = sub_22C9087BC();
  v1[32] = v25;
  sub_22C3699B8(v25);
  v1[33] = v26;
  v1[34] = *(v27 + 64);
  v1[35] = sub_22C3699D4();
  v28 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64);
  v1[36] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_22C3E3C40()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v23 = *(v0 + 240);
  v21 = *(v0 + 232);
  v22 = *(v0 + 272);
  v24 = *(v0 + 224);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = type metadata accessor for MediatorControlChannel(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v0 + 296) = v12;
  sub_22C3E5554();
  v13 = sub_22C90A75C();
  sub_22C36C640(v1, 1, 1, v13);
  sub_22C378A4C(v8, v0 + 16);
  (*(v3 + 16))(v2, v7, v5);
  sub_22C3E5F4C(v6, v4);
  v14 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v15 = (v22 + *(v21 + 80) + v14) & ~*(v21 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v12;
  sub_22C36C730((v0 + 16), (v16 + 40));
  (*(v3 + 32))(&v16[v14], v2, v5);
  sub_22C3E5FB0(v4, &v16[v15]);

  sub_22C82B678();
  *(v0 + 304) = v17;
  sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  sub_22C90A78C();
  *(v0 + 312) = 0;
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  sub_22C369B28(v19);
  sub_22C36BB08();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_22C3E3E5C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 320);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3E3F44()
{
  v96 = v0;
  if (*(v0 + 56))
  {
    v93 = *(v0 + 56);
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 168);
    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v90 = *(v3 + 8);
    v90(v1, v4);
    v6 = sub_22C90635C();
    v7 = sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      v8 = *(v0 + 168);
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "Mediator.handle - process checkpoint", "", v9, 2u);
      sub_22C3699EC();
    }

    v11 = *(v0 + 200);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);

    (*(v15 + 16))(v14, v13, v17);
    v18 = sub_22C9063AC();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_22C90639C();
    (*(v15 + 8))(v13, v17);
    v90(v11, v12);
    sub_22C903F7C();
    v21 = sub_22C9063CC();
    v22 = sub_22C90AABC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22C366000, v21, v22, "[Mediator] Checkpoint received - processing...", v23, 2u);
      sub_22C3699EC();
    }

    v24 = *(v0 + 312);
    v25 = *(v0 + 136);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);
    v28 = *(v0 + 96);

    v29 = *(v26 + 8);
    v29(v25, v27);
    v30 = sub_22C3E5004(v93 + 16);
    if (v24)
    {
      v32 = *(v0 + 296);
      v31 = *(v0 + 304);
      v33 = *(v0 + 216);
      v34 = *(v0 + 224);
      v35 = *(v0 + 208);
      v36 = *(v0 + 96);

      sub_22C3E4D18();

      (*(v33 + 8))(v34, v35);
      v38 = *(v0 + 280);
      v37 = *(v0 + 288);
      v39 = *(v0 + 248);
      v40 = *(v0 + 224);
      v42 = *(v0 + 192);
      v41 = *(v0 + 200);
      v44 = *(v0 + 160);
      v43 = *(v0 + 168);
      v45 = *(v0 + 136);
      v92 = *(v0 + 128);
      v94 = *(v0 + 120);

      sub_22C369A24();
      goto LABEL_18;
    }

    v53 = v30;
    v54 = *(v0 + 128);
    sub_22C903F7C();
    v55 = sub_22C9063CC();
    v56 = sub_22C90AABC();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 128);
    v60 = *(v0 + 104);
    v59 = *(v0 + 112);
    if (v57)
    {
      v88 = *(v0 + 128);
      v61 = swift_slowAlloc();
      v62 = v60;
      v63 = swift_slowAlloc();
      v95 = v63;
      *v61 = 136315138;
      *(v0 + 352) = v53 & 1;
      v64 = sub_22C90A1AC();
      v66 = sub_22C36F9F4(v64, v65, &v95);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_22C366000, v55, v56, "[Mediator] Checkpoint processed - decision: %s", v61, 0xCu);
      sub_22C36FF94(v63);
      sub_22C3699EC();
      sub_22C3699EC();

      v67 = v88;
      v68 = v62;
    }

    else
    {

      v67 = v58;
      v68 = v60;
    }

    v29(v67, v68);
    if (v53)
    {
      v69 = *(v0 + 120);
      v70 = *(v0 + 96);

      sub_22C903F7C();
      v71 = sub_22C9063CC();
      v72 = sub_22C90AADC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_22C366000, v71, v72, "[Mediator] NOTE: Requesting task cancellation on worker running FullPlanner", v73, 2u);
        sub_22C3699EC();
      }

      v74 = *(v0 + 296);
      v75 = *(v0 + 304);
      v76 = *(v0 + 216);
      v89 = *(v0 + 208);
      v91 = *(v0 + 224);
      v77 = *(v0 + 112);
      v78 = *(v0 + 120);
      v79 = *(v0 + 104);
      v80 = *(v0 + 64);

      v29(v78, v79);
      sub_22C3E51BC();
      v81 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
      sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
      sub_22C90A7CC();
      sub_22C36C640(v80, 1, 1, v81);
      sub_22C3E4D18();

      (*(v76 + 8))(v91, v89);
      sub_22C371568();

      sub_22C369A24();
LABEL_18:
      sub_22C375E04();

      __asm { BRAA            X1, X16 }
    }

    sub_22C3E4D18();

    *(v0 + 312) = 0;
    v84 = *(MEMORY[0x277D85798] + 4);
    v85 = swift_task_alloc();
    *(v0 + 320) = v85;
    *v85 = v0;
    sub_22C369B28();
    sub_22C36BB08();
    sub_22C375E04();

    return MEMORY[0x2822003E8]();
  }

  else
  {
    v46 = *(v0 + 296);
    v47 = *(v0 + 96);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    sub_22C3E51BC();
    v48 = *(MEMORY[0x277D857C8] + 4);
    v49 = swift_task_alloc();
    *(v0 + 328) = v49;
    *(v0 + 336) = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v49 = v0;
    v49[1] = sub_22C3E46B8;
    v50 = *(v0 + 304);
    v51 = *(v0 + 64);
    sub_22C375E04();

    return MEMORY[0x282200430]();
  }
}

uint64_t sub_22C3E46B8()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 328);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 344) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3E47B8()
{
  v1 = v0[42];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[8];

  sub_22C36C640(v4, 0, 1, v1);
  sub_22C371568();

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C3E48B8()
{
  v2 = v0[37];
  v1 = v0[38];

  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[31];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[16];
  v12 = v0[17];
  v15 = v0[15];
  v16 = v0[43];

  sub_22C369A24();

  return v13();
}

uint64_t sub_22C3E49B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22C3E49E0, 0, 0);
}

uint64_t sub_22C3E49E0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  sub_22C374168(v1, v3);
  v5 = *(v4 + 8);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22C3E4B20;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];

  return v12(v10, v8, v9, v2, v3, v4);
}

uint64_t sub_22C3E4B20()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C3E4C20()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C3E4C9C()
{
  sub_22C369980();
  v1 = *(v0 + 24);
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  sub_22C369A24();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_22C3E4D18()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "Mediator.handle - process checkpoint", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C3E5004(uint64_t a1)
{
  v23 = sub_22C901B7C();
  v4 = *(*(v23 - 8) + 64);
  result = MEMORY[0x28223BE20](v23);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v20[1] = v2;
  v11 = 0;
  v21 = (v6 + 8);
  v12 = &unk_27D9BBB50;
  v13 = &type metadata for EndPromptGenerationCheckpoint;
  v14 = &unk_22C910E30;
  while (v11 < *(v9 + 16))
  {
    sub_22C378A4C(a1, v22);
    sub_22C3A5908(v12, v14);
    result = swift_dynamicCast();
    if (result)
    {
      sub_22C901B8C();
      v15 = v14;
      v16 = v13;
      v17 = v12;
      v18 = sub_22C901B6C();
      result = (*v21)(v8, v23);
      v19 = v18 <= 10;
      v12 = v17;
      v13 = v16;
      v14 = v15;
      if (!v19)
      {
        return 1;
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3E51BC()
{
  v1 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  v6 = sub_22C3A5908(&qword_27D9BBB58, &qword_22C910E38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A77C();
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream, v1);
  sub_22C3E6170();
  sub_22C90B23C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s30IntelligenceFlowPlannerRuntime24ResponseValidationAssetsCfD_0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3E53E4()
{
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation;
  (*(v3 + 16))(&v10 - v5, v1 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation, v2);
  sub_22C90A6EC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  sub_22C36FF94((v1 + 16));
  v8((v1 + v7), v2);
  return v1;
}

uint64_t sub_22C3E5500()
{
  v0 = *sub_22C3E53E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3E5554()
{
  v0 = sub_22C3A5908(&qword_27D9BBB68, &qword_22C910E48);
  sub_22C369824(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  sub_22C369824(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v26 - v21;
  v23 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C36C640(v22, 1, 1, v23);
  v26[4] = v22;
  type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest(0);
  (*(v2 + 104))(v7, *MEMORY[0x277D85778], v0);
  v24 = v26[1];
  sub_22C90A7AC();
  (*(v10 + 32))(v24 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream, v15, v8);
  sub_22C3E61DC(v22, v20);
  result = sub_22C370B74(v20, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v23 - 8) + 32))(v24 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation, v20, v23);
    sub_22C3E624C(v22);
    return v24;
  }

  return result;
}

uint64_t sub_22C3E5810(uint64_t a1, uint64_t a2)
{
  sub_22C3E624C(a2);
  v4 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_22C36C640(a2, 0, 1, v4);
}

uint64_t sub_22C3E58B0()
{
  v1 = v0;
  v2 = sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C369824(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation;
  (*(v4 + 16))(&v15 - v8, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_streamContinuation, v2);
  sub_22C90A77C();
  v11 = *(v4 + 8);
  v11(v9, v2);
  v12 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime22MediatorControlChannel_stream;
  v13 = sub_22C3A5908(&qword_27D9BBB38, &qword_22C910E00);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v11((v1 + v10), v2);
  return v1;
}

uint64_t sub_22C3E5A00()
{
  sub_22C3E58B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22C3E5A80()
{
  sub_22C3E5BC8(319, &qword_27D9BBAF0, type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22C3E5BC8(319, &qword_27D9BBAF8, type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22C3E5BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22C3E5C34()
{
  sub_22C3E5CD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22C3E5CD0()
{
  if (!qword_27D9BBB18)
  {
    v0 = sub_22C90A6FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BBB18);
    }
  }
}

uint64_t sub_22C3E5D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB20, &qword_22C910DE8);
  sub_22C369824(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  sub_22C369824(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_22C378A4C(a2, v26);
  (*(v14 + 16))(v19, a1, v12);
  v20 = type metadata accessor for MediatorControlChannel.CheckpointProcessingRequest(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  sub_22C36C730(v26, v23 + 16);
  (*(v14 + 32))(v23 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime22MediatorControlChannelP33_63D3BAAE91999D510B02F5CD6211EA5F27CheckpointProcessingRequest_continuation, v19, v12);
  *&v26[0] = v23;

  sub_22C3A5908(&qword_27D9BBB30, &qword_22C910DF8);
  sub_22C90A76C();

  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_22C3E5F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerServiceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E5FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerServiceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E6014(uint64_t a1)
{
  v3 = v2;
  v5 = sub_22C9087BC();
  sub_22C3699B8(v5);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for PlannerServiceContext() - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22C382AF4;

  return sub_22C3E49B8(a1, v12, v13, v14, (v1 + 5), v1 + v7, v1 + v11);
}

unint64_t sub_22C3E6170()
{
  result = qword_27D9BBB60;
  if (!qword_27D9BBB60)
  {
    sub_22C3AC1A0(&qword_27D9BBB38, &qword_22C910E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBB60);
  }

  return result;
}

uint64_t sub_22C3E61DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E624C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBB70, &unk_22C910E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MediatorDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22C3E63D8()
{
  sub_22C3E5BC8(319, &qword_27D9BBB88, MEMORY[0x277D1E890], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_22C3E6464()
{
  result = qword_27D9BBB90;
  if (!qword_27D9BBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBB90);
  }

  return result;
}

uint64_t sub_22C3E64B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22C90046C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  sub_22C378A4C(a1, (a3 + 1));
  v16 = sub_22C90A75C();
  sub_22C36C640(v15, 1, 1, v16);
  (*(v9 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v9 + 32))(v18 + v17, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_22C82B8D0();
  v20 = v19;
  (*(v9 + 8))(a2, v6);
  result = sub_22C36FF94(a1);
  *a3 = v20;
  return result;
}

uint64_t sub_22C3E669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_22C90046C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_22C909BFC();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E67B8, 0, 0);
}

uint64_t sub_22C3E67B8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v0[10] = sub_22C909B4C();
  (*(v2 + 104))(v1, *MEMORY[0x277D22D80], v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = *(MEMORY[0x277D22D60] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22C3E68D0;
  v10 = v0[9];
  v11 = v0[6];

  return MEMORY[0x282181830](v10, v11);
}

uint64_t sub_22C3E68D0()
{
  sub_22C36D5EC();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[12] = v3;
  v5[13] = v0;

  if (v0)
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(MEMORY[0x277D22D58] + 4);
    v17 = (*MEMORY[0x277D22D58] + MEMORY[0x277D22D58]);
    v15 = swift_task_alloc();
    v5[14] = v15;
    *v15 = v9;
    v15[1] = sub_22C3E6A54;

    return v17();
  }
}

uint64_t sub_22C3E6A54()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3E6B50()
{
  sub_22C369980();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[2];
  v5 = MEMORY[0x277D22D68];
  v4[3] = v0[10];
  v4[4] = v5;
  *v4 = v1;

  sub_22C369A24();

  return v6();
}

uint64_t sub_22C3E6BD0()
{
  sub_22C369980();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C3E6C38()
{
  sub_22C369980();
  v1 = v0[12];

  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[6];

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C3E6CA8()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *(sub_22C90046C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22C382AF4;

  return sub_22C3E669C(v3, v6, v7, v0 + v5);
}

__n128 sub_22C3E6D94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22C3E6DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_22C3E6DE8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22C3E6E44()
{
  v1 = v0[5];
  sub_22C374168(v0 + 1, v0[4]);
  v2 = *(v1 + 8);
  v3 = sub_22C36BAFC();
  return v4(v3);
}

uint64_t sub_22C3E6E94()
{
  v1 = v0[5];
  sub_22C374168(v0 + 1, v0[4]);
  v2 = *(v1 + 16);
  v3 = sub_22C36BAFC();
  return v4(v3);
}

uint64_t sub_22C3E6EE4()
{
  sub_22C369980();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v1[32] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C3699B8(v6);
  v1[37] = v7;
  v1[38] = *(v8 + 64);
  v1[39] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v10 = type metadata accessor for CompletionPromptProperty(0);
  v1[41] = v10;
  sub_22C3699B8(v10);
  v1[42] = v11;
  v13 = *(v12 + 64) + 15;
  v1[43] = swift_task_alloc();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C3E7034()
{
  sub_22C369980();
  v1 = **(v0 + 288);
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_22C3E70D4;
  v3 = *(v0 + 288);

  return sub_22C3E7A8C(v0 + 16, v1);
}

uint64_t sub_22C3E70D4()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 352);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3E71B8()
{
  sub_22C3E8FB4(v0 + 16, v0 + 96, &qword_27D9BBB98, &qword_22C910F98);
  if (*(v0 + 120))
  {
    sub_22C36C730((v0 + 96), v0 + 56);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = sub_22C374168((v0 + 56), v3);
    v5 = swift_task_alloc();
    *(v0 + 360) = v5;
    *v5 = v0;
    v5[1] = sub_22C3E740C;
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v9 = *(v0 + 256);

    return sub_22C3E91F0(v9, v7, v4, v8, v6, v3, v2);
  }

  else
  {
    sub_22C36DD28(v0 + 96, &qword_27D9BBB98, &qword_22C910F98);
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = *(v0 + 328);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    *v11 = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    v16 = v14[5];
    sub_22C374168(v14 + 1, v14[4]);
    sub_22C3A5908(&qword_27D9BBBA0, &qword_22C910FA0);
    v17 = sub_22C3749B0();
    *(v17 + 16) = xmmword_22C90F800;
    sub_22C3E8EF4(v11, v17 + v1);

    v18 = sub_22C3CE27C(v17);
    sub_22C372614(v18, v19, v20, v21, v22, v23, v24, v25, v32, v33, v15);
    v34 = v26 + *v26;
    v28 = *(v27 + 4);
    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    *v29 = v0;
    v30 = sub_22C37321C(v29);

    return v31(v30);
  }
}

uint64_t sub_22C3E740C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C3E74F8()
{
  sub_22C36FF94(v0 + 7);
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v6 = v0[35];
  v5 = v0[36];
  *v2 = v0[46];
  swift_storeEnumTagMultiPayload();
  v7 = v5[5];
  sub_22C374168(v5 + 1, v5[4]);
  sub_22C3A5908(&qword_27D9BBBA0, &qword_22C910FA0);
  v8 = sub_22C3749B0();
  *(v8 + 16) = xmmword_22C90F800;
  sub_22C3E8EF4(v2, v8 + v1);

  v9 = sub_22C3CE27C(v8);
  sub_22C372614(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v6);
  v26 = v17 + *v17;
  v19 = *(v18 + 4);
  v20 = swift_task_alloc();
  v0[48] = v20;
  *v20 = v0;
  v21 = sub_22C37321C(v20);

  return v22(v21);
}

uint64_t sub_22C3E7668()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *(v4 + 376);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v11[49] = v9;
  v11[50] = v10;
  v11[51] = v12;
  v11[52] = v13;
  v11[53] = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C3E778C()
{
  sub_22C3E8FB4(v0 + 16, v0 + 176, &qword_27D9BBB98, &qword_22C910F98);
  if (*(v0 + 200))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 400);
    v28 = *(v0 + 392);
    v29 = *(v0 + 408);
    v30 = *(v0 + 344);
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v27 = *(v0 + 256);
    sub_22C36C730((v0 + 176), v0 + 136);
    v9 = *(sub_22C587C84(0) + 24);
    v10 = sub_22C90A75C();
    sub_22C36C640(v3, 1, 1, v10);
    sub_22C3E8FB4(v8 + v9, v4, &qword_27D9BB7A0, &qword_22C9110D0);
    sub_22C378A4C(v0 + 136, v0 + 216);
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_22C3E9014(v4, v14 + v11);
    sub_22C36C730((v0 + 216), v14 + v12);
    v15 = (v14 + v13);
    *v15 = v27;
    v15[1] = v7;
    v16 = (v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v28;
    v16[1] = v2;
    v16[2] = v29;
    v16[3] = v1;

    sub_22C5809B8();

    sub_22C36FF94((v0 + 136));
    sub_22C3E8F58(v30);
    v17 = v0 + 16;
  }

  else
  {
    sub_22C3E8F58(*(v0 + 344));
    sub_22C36DD28(v0 + 16, &qword_27D9BBB98, &qword_22C910F98);
    v17 = v0 + 176;
  }

  sub_22C36DD28(v17, &qword_27D9BBB98, &qword_22C910F98);
  v18 = *(v0 + 344);
  v19 = *(v0 + 312);
  v20 = *(v0 + 320);

  v21 = *(v0 + 8);
  v22 = *(v0 + 408);
  v23 = *(v0 + 416);
  v24 = *(v0 + 392);
  v25 = *(v0 + 400);

  return v21(v24, v25, v22, v23);
}

uint64_t sub_22C3E79F0()
{
  sub_22C36FB38();
  v2 = v0[39];
  v1 = v0[40];
  sub_22C3E8F58(v0[43]);
  sub_22C36DD28((v0 + 2), &qword_27D9BBB98, &qword_22C910F98);

  sub_22C369A24();
  v4 = v0[53];

  return v3();
}

uint64_t sub_22C3E7A8C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_22C9063DC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E7B58, 0, 0);
}

uint64_t sub_22C3E7B58()
{
  sub_22C36D5EC();
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[9];

    sub_22C903F7C();
    v4 = sub_22C9063CC();
    v5 = sub_22C90AACC();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_22C3765C4(&dword_22C366000, v6, v7, "Waiting for LLMCacheManager.init, LLMCacheManager.warmup to finish");
      sub_22C3699EC();
    }

    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[11];

    v11 = *(v10 + 8);
    v0[14] = v11;
    v11(v8, v9);
    v12 = *(MEMORY[0x277D857D0] + 4);
    v13 = swift_task_alloc();
    v0[15] = v13;
    v14 = sub_22C3A5908(&qword_27D9BBBA8, &unk_22C910FC0);
    v15 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    *v13 = v0;
    v13[1] = sub_22C3E7D24;
    v16 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 2, v1, v14, v15, v16);
  }

  else
  {
    v17 = v0[8];
    *(v17 + 32) = 0;
    *v17 = 0u;
    *(v17 + 16) = 0u;
    v19 = v0[12];
    v18 = v0[13];

    sub_22C369A24();

    return v20();
  }
}

uint64_t sub_22C3E7D24()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3E7E08()
{
  sub_22C36D5EC();
  if (*(v0 + 56))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 16);
    sub_22C903F7C();
    v3 = v2;
    v4 = sub_22C9063CC();
    v5 = sub_22C90AADC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22C366000, v4, v5, "LLMCacheManager failed to set up: %@", v8, 0xCu);
      sub_22C36DD28(v9, &qword_27D9BB158, qword_22C910FD0);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {
      v14 = *(v0 + 72);
    }

    v15 = *(v0 + 64);
    v16 = *(v0 + 88) + 8;
    (*(v0 + 112))(*(v0 + 96), *(v0 + 80));
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);

    sub_22C36C730((v0 + 16), v13);
  }

  v18 = *(v0 + 96);
  v17 = *(v0 + 104);

  sub_22C369A24();

  return v19();
}

uint64_t sub_22C3E7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v32;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_22C9063DC();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v12 = sub_22C90696C();
  v8[11] = v12;
  v13 = *(v12 - 8);
  v8[12] = v13;
  v14 = *(v13 + 64) + 15;
  v8[13] = swift_task_alloc();
  v15 = sub_22C90659C();
  v8[14] = v15;
  v16 = *(v15 - 8);
  v8[15] = v16;
  v17 = *(v16 + 64) + 15;
  v8[16] = swift_task_alloc();
  v18 = sub_22C90652C();
  v8[17] = v18;
  v19 = *(v18 - 8);
  v8[18] = v19;
  v20 = *(v19 + 64) + 15;
  v8[19] = swift_task_alloc();
  v21 = sub_22C909BEC();
  v8[20] = v21;
  v22 = *(v21 - 8);
  v8[21] = v22;
  v23 = *(v22 + 64) + 15;
  v8[22] = swift_task_alloc();
  v24 = sub_22C9068DC();
  v8[23] = v24;
  v25 = *(v24 - 8);
  v8[24] = v25;
  v26 = *(v25 + 64) + 15;
  v8[25] = swift_task_alloc();
  v27 = sub_22C90069C();
  v8[26] = v27;
  v28 = *(v27 - 8);
  v8[27] = v28;
  v29 = *(v28 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3E82C8, 0, 0);
}

uint64_t sub_22C3E82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = *(v18 + 224);
  v20 = *(v18 + 216);
  v47 = *(v18 + 232);
  v48 = *(v18 + 208);
  v22 = *(v18 + 192);
  v21 = *(v18 + 200);
  v23 = *(v18 + 184);
  v52 = *(v18 + 176);
  v53 = *(v18 + 48);
  v49 = *(v18 + 40);
  v50 = *(v18 + 56);
  v51 = *(v18 + 32);
  v24 = *(v18 + 16);
  v25 = *(v18 + 24);
  *(v18 + 240) = sub_22C9076EC();
  v26 = *MEMORY[0x277D1E1B0];
  *(v18 + 304) = v26;
  v27 = sub_22C90796C();
  *(v18 + 248) = v27;
  sub_22C36985C(v27);
  v29 = *(v28 + 104);
  *(v18 + 256) = v29;
  *(v18 + 264) = (v28 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v21, v26);
  v30 = *MEMORY[0x277D1DCB0];
  v31 = sub_22C386F78(v22);
  v32(v31);
  sub_22C90068C();
  sub_22C9076CC();
  v33 = *(v20 + 8);
  *(v18 + 272) = v33;
  *(v18 + 280) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v19, v48);
  (*(v22 + 8))(v21, v23);
  v34 = v25[4];
  sub_22C374168(v25, v25[3]);
  (*(v20 + 16))(v19, v47, v48);

  sub_22C909BDC();
  v35 = *(MEMORY[0x277D22D78] + 4);
  v36 = swift_task_alloc();
  *(v18 + 288) = v36;
  *v36 = v18;
  v36[1] = sub_22C3E84E4;
  v37 = *(v18 + 176);
  sub_22C375E04();

  return MEMORY[0x282181848](v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, a16, a17, a18);
}

uint64_t sub_22C3E84E4()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = v4[36];
  v6 = v4[22];
  v7 = v4[21];
  v8 = v4[20];
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v11 + 296) = v0;

  v12 = *(v7 + 8);
  v13 = sub_22C36BAFC();
  v14(v13);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C3E8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v16 = *(v14 + 264);
  v17 = *(v14 + 240);
  v18 = *(v14 + 232);
  v20 = *(v14 + 144);
  v19 = *(v14 + 152);
  v21 = *(v14 + 136);
  v22 = *(v14 + 16);
  (*(v14 + 256))(v19, *(v14 + 304), *(v14 + 248));
  (*(v20 + 104))(v19, *MEMORY[0x277D1D9E8], v21);
  sub_22C9076AC();
  v23 = *(v14 + 144);
  v24 = *(v14 + 152);
  sub_22C36D614();
  v26 = *(v14 + 128);
  v25 = *(v14 + 136);
  v39 = *(v14 + 104);
  v40 = *(v14 + 80);
  v28 = sub_22C388E7C(v27);
  v29(v28);
  v15(v18, v21);

  sub_22C369A24();
  sub_22C36D5F8();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, a12, a13, a14);
}

uint64_t sub_22C3E875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 296);
  v16 = *(v14 + 264);
  v17 = *(v14 + 232);
  v19 = *(v14 + 120);
  v18 = *(v14 + 128);
  v21 = *(v14 + 104);
  v20 = *(v14 + 112);
  v22 = *(v14 + 88);
  v23 = *(v14 + 96);
  v50 = v22;
  v52 = *(v14 + 240);
  v24 = *(v14 + 80);
  v25 = *(v14 + 16);
  (*(v14 + 256))(v18, *(v14 + 304), *(v14 + 248));
  v26 = *MEMORY[0x277D1DB58];
  v27 = sub_22C386F78(v19);
  v28(v27);
  sub_22C9002FC();
  sub_22C90695C();
  sub_22C9076BC();
  (*(v23 + 8))(v21, v50);
  (*(v19 + 8))(v18, v20);
  sub_22C903F7C();
  v29 = sub_22C9063CC();
  LOBYTE(v23) = sub_22C90AADC();
  v30 = os_log_type_enabled(v29, v23);
  v31 = *(v14 + 296);
  if (v30)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    sub_22C3765C4(&dword_22C366000, v32, v33, "Failed to insert the LLM response to the plan cache. Continuing.");
    sub_22C3699EC();
  }

  v34 = *(v14 + 72);
  v35 = *(v14 + 80);
  v36 = *(v14 + 64);
  sub_22C36D614();
  v37 = *(v14 + 152);
  v51 = *(v14 + 128);
  v53 = *(v14 + 104);
  v39 = sub_22C388E7C(v38);
  v40(v39);
  v24(v31, v18);

  sub_22C369A24();
  sub_22C36D5F8();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v51, v53, a12, a13, a14);
}

uint64_t sub_22C3E8944()
{
  *(v1 + 16) = v0;
  v2 = sub_22C36BB98();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C3E896C()
{
  sub_22C36D5EC();
  v1 = *(v0 + 16);
  v2 = v1[5];
  sub_22C374168(v1 + 1, v1[4]);
  v3 = *(v2 + 32);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_22C3E8A8C;
  v6 = sub_22C36BAFC();

  return v8(v6);
}

uint64_t sub_22C3E8A8C()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = *(v6 + 24);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_22C3E8B94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3E8C50;

  return sub_22C3E6EE4();
}

uint64_t sub_22C3E8C50()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_22C369A3C();
  v11 = *(v10 + 16);
  v12 = *v1;
  sub_22C369970();
  *v13 = v12;

  v18 = *(v12 + 8);
  if (!v0)
  {
    v14 = v9;
    v15 = v7;
    v16 = v5;
    v17 = v3;
  }

  return v18(v14, v15, v16, v17);
}

uint64_t sub_22C3E8D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3E8DF4;

  return sub_22C3E8944();
}

uint64_t sub_22C3E8DF4()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_22C369970();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v0)
  {
    v10 = v5;
    v11 = v3;
  }

  return v12(v10, v11);
}

uint64_t sub_22C3E8EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E8F58(uint64_t a1)
{
  v2 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3E8FB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C3A5908(a3, a4);
  sub_22C36985C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C3E9014(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3E9084()
{
  sub_22C37F038();
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C3699B8(v3);
  v6 = (((*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = (v0 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v7);
  v26 = *(v0 + v7 + 8);
  v14 = *(v0 + v7 + 24);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_22C382AF4;
  sub_22C36D5F8();

  return sub_22C3E7FC4(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_22C3E91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a4;
  v7[2] = a1;
  v9 = sub_22C909B8C();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = sub_22C90652C();
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = sub_22C9063DC();
  v7[13] = v15;
  v16 = *(v15 - 8);
  v7[14] = v16;
  v17 = *(v16 + 64) + 15;
  v7[15] = swift_task_alloc();
  v18 = sub_22C90696C();
  v7[16] = v18;
  v19 = *(v18 - 8);
  v7[17] = v19;
  v20 = *(v19 + 64) + 15;
  v7[18] = swift_task_alloc();
  v21 = sub_22C90659C();
  v7[19] = v21;
  v22 = *(v21 - 8);
  v7[20] = v22;
  v23 = *(v22 + 64) + 15;
  v7[21] = swift_task_alloc();
  v24 = sub_22C909BCC();
  v7[22] = v24;
  v25 = *(v24 - 8);
  v7[23] = v25;
  v26 = *(v25 + 64) + 15;
  v7[24] = swift_task_alloc();
  v27 = sub_22C909C0C();
  v7[25] = v27;
  v28 = *(v27 - 8);
  v7[26] = v28;
  v29 = *(v28 + 64) + 15;
  v7[27] = swift_task_alloc();
  v30 = sub_22C909BAC();
  v7[28] = v30;
  v31 = *(v30 - 8);
  v7[29] = v31;
  v32 = *(v31 + 64) + 15;
  v7[30] = swift_task_alloc();
  v33 = sub_22C9068DC();
  v7[31] = v33;
  v34 = *(v33 - 8);
  v7[32] = v34;
  v35 = *(v34 + 64) + 15;
  v7[33] = swift_task_alloc();
  v36 = sub_22C90069C();
  v7[34] = v36;
  v37 = *(v36 - 8);
  v7[35] = v37;
  v38 = *(v37 + 64) + 15;
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v39 = *(a6 - 8);
  v40 = v39;
  v7[38] = v39;
  v41 = *(v39 + 64) + 15;
  v7[39] = swift_task_alloc();
  (*(v40 + 16))();

  return MEMORY[0x2822009F8](sub_22C3E9680, 0, 0);
}

uint64_t sub_22C3E9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v19 = *(v18 + 288);
  v20 = *(v18 + 280);
  v47 = *(v18 + 296);
  v48 = *(v18 + 272);
  v22 = *(v18 + 256);
  v21 = *(v18 + 264);
  v23 = *(v18 + 248);
  v24 = *(v18 + 208);
  v49 = *(v18 + 216);
  v50 = *(v18 + 200);
  v25 = *(v18 + 32);
  v51 = *(v18 + 24);
  v52 = *(v18 + 16);
  v53 = *(v18 + 240);
  *(v18 + 320) = sub_22C9076EC();
  v26 = *MEMORY[0x277D1E1B8];
  *(v18 + 384) = v26;
  v27 = sub_22C90796C();
  *(v18 + 328) = v27;
  sub_22C36985C(v27);
  v29 = *(v28 + 104);
  *(v18 + 336) = v29;
  *(v18 + 344) = (v28 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v21, v26);
  (*(v22 + 104))(v21, *MEMORY[0x277D1DCB0], v23);
  *(v18 + 388) = *(sub_22C587C84(0) + 24);
  sub_22C90068C();
  sub_22C9076CC();
  v30 = *(v20 + 8);
  *(v18 + 352) = v30;
  *(v18 + 360) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v19, v48);
  (*(v22 + 8))(v21, v23);
  (*(v24 + 104))(v49, *MEMORY[0x277D22D88], v50);
  (*(v20 + 16))(v19, v47, v48);

  sub_22C909B9C();
  v31 = *(MEMORY[0x277D22D70] + 4);
  v32 = swift_task_alloc();
  *(v18 + 368) = v32;
  *v32 = v18;
  v32[1] = sub_22C3E98BC;
  v33 = *(v18 + 312);
  v34 = *(v18 + 240);
  v35 = *(v18 + 192);
  v36 = *(v18 + 40);
  v37 = *(v18 + 48);
  sub_22C375E04();

  return MEMORY[0x282181840](v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, a16, a17, a18);
}

uint64_t sub_22C3E98BC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 376) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3E99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  v20 = *(v18 + 184);
  v19 = *(v18 + 192);
  v21 = *(v18 + 176);
  v22 = sub_22C909BBC();
  (*(v20 + 8))(v19, v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v18 + 64);
    v77 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v25 = v77;
    v26 = *(v24 + 16);
    v24 += 16;
    v27 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v69 = *(v24 + 56);
    v72 = v26;
    v28 = (v24 - 8);
    do
    {
      v29 = *(v18 + 72);
      v30 = *(v18 + 56);
      v72(v29, v27, v30);
      v31 = sub_22C909B7C();
      v33 = v32;
      (*v28)(v29, v30);
      a15 = v25;
      v34 = *(v25 + 16);
      if (v34 >= *(v25 + 24) >> 1)
      {
        sub_22C3B5E2C();
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v33;
      v27 += v69;
      --v23;
    }

    while (v23);
  }

  v73 = *(v18 + 352);
  v75 = *(v18 + 360);
  v36 = *(v18 + 388);
  v37 = *(v18 + 344);
  v38 = *(v18 + 320);
  v39 = *(v18 + 296);
  v40 = *(v18 + 232);
  v67 = *(v18 + 240);
  v70 = *(v18 + 272);
  v66 = *(v18 + 224);
  v41 = *(v18 + 88);
  v42 = *(v18 + 96);
  v43 = *(v18 + 80);
  v44 = *(v18 + 32);
  (*(v18 + 336))(v42, *(v18 + 384), *(v18 + 328));
  (*(v41 + 104))(v42, *MEMORY[0x277D1D9E8], v43);
  sub_22C9076AC();
  (*(v41 + 8))(v42, v43);
  (*(v40 + 8))(v67, v66);
  v73(v39, v70);
  v45 = *(v18 + 312);
  v47 = *(v18 + 288);
  v46 = *(v18 + 296);
  v48 = *(v18 + 264);
  v49 = *(v18 + 240);
  v50 = *(v18 + 216);
  v51 = *(v18 + 192);
  v52 = *(v18 + 168);
  v68 = *(v18 + 144);
  v71 = *(v18 + 120);
  v74 = *(v18 + 96);
  v76 = *(v18 + 72);
  v53 = *(v18 + 40);
  v54 = sub_22C388E7C(*(v18 + 304));
  v55(v54);

  v56 = *(v18 + 8);
  sub_22C375E04();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, v68, v71, v74, v76, a15, a16, a17, a18);
}

uint64_t sub_22C3E9CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22C372634();
  sub_22C37F038();
  v15 = *(v14 + 376);
  v16 = *(v14 + 344);
  v64 = *(v14 + 320);
  v67 = *(v14 + 388);
  v17 = *(v14 + 296);
  v19 = *(v14 + 160);
  v18 = *(v14 + 168);
  v21 = *(v14 + 144);
  v20 = *(v14 + 152);
  v22 = *(v14 + 136);
  v61 = *(v14 + 128);
  v23 = *(v14 + 120);
  v24 = *(v14 + 32);
  (*(v14 + 336))(v18, *(v14 + 384), *(v14 + 328));
  v25 = *MEMORY[0x277D1DB58];
  v26 = sub_22C386F78(v19);
  v27(v26);
  sub_22C9002FC();
  sub_22C90695C();
  sub_22C9076BC();
  (*(v22 + 8))(v21, v61);
  (*(v19 + 8))(v18, v20);
  sub_22C903F7C();
  v28 = sub_22C9063CC();
  v29 = sub_22C90AADC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22C366000, v28, v29, "Failed to read from plan cache. Continuing with no drafts.", v30, 2u);
    sub_22C3699EC();
  }

  v31 = *(v14 + 376);
  v65 = *(v14 + 352);
  v68 = *(v14 + 360);
  v62 = *(v14 + 296);
  v32 = *(v14 + 272);
  v34 = *(v14 + 232);
  v33 = *(v14 + 240);
  v35 = *(v14 + 224);
  v36 = *(v14 + 112);
  v37 = *(v14 + 120);
  v38 = *(v14 + 104);

  (*(v36 + 8))(v37, v38);
  (*(v34 + 8))(v33, v35);
  v65(v62, v32);
  v39 = *(v14 + 312);
  v41 = *(v14 + 288);
  v40 = *(v14 + 296);
  v42 = *(v14 + 264);
  v43 = *(v14 + 240);
  v44 = *(v14 + 216);
  v45 = *(v14 + 192);
  v46 = *(v14 + 168);
  v47 = *(v14 + 144);
  v63 = *(v14 + 120);
  v66 = *(v14 + 96);
  v69 = *(v14 + 72);
  v48 = *(v14 + 40);
  v49 = sub_22C388E7C(*(v14 + 304));
  v50(v49);

  v51 = *(v14 + 8);
  sub_22C36D5F8();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, v63, v66, v69, a12, a13, a14);
}

uint64_t sub_22C3E9F60(uint64_t a1, int a2)
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

uint64_t sub_22C3E9FA0(uint64_t result, int a2, int a3)
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

uint64_t sub_22C3EA008()
{
  sub_22C3715A0();
  v1 = *(v0 + 8);
  v2 = sub_22C372650();
  return v3(v2);
}

uint64_t sub_22C3EA044()
{
  sub_22C3715A0();
  v1 = *(v0 + 16);
  v2 = sub_22C372650();
  return v3(v2);
}

uint64_t sub_22C3EA080()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[12] = sub_22C3699D4();
  v9 = sub_22C90069C();
  v1[13] = v9;
  sub_22C3699B8(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = sub_22C3699D4();
  v13 = sub_22C909D9C();
  v1[16] = v13;
  sub_22C3699B8(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = sub_22C3699D4();
  v17 = sub_22C9063DC();
  v1[19] = v17;
  sub_22C3699B8(v17);
  v1[20] = v18;
  v20 = *(v19 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v21 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_22C3EA204()
{
  v1 = v0[22];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Running completion request using TokenGeneration", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[14];
  v32 = v0[13];
  v33 = v0[15];
  v34 = v0[12];
  v10 = v0[11];
  v11 = v0[8];
  v31 = v0[9];
  v12 = v0[7];

  v0[23] = *(v6 + 8);
  v13 = sub_22C36D264();
  v14(v13);
  sub_22C3F9B04(v12, v11, v8);
  sub_22C378A4C(v10, (v0 + 2));
  v15 = v0[6];
  sub_22C374168(v0 + 2, v0[5]);
  v16 = sub_22C587C84(0);
  (*(v9 + 16))(v33, v31 + *(v16 + 36), v32);
  sub_22C3ECF48(v31 + *(v16 + 24), v34);
  v17 = sub_22C90451C();
  v18 = sub_22C370B74(v34, 1, v17);
  v19 = v0[12];
  if (v18 == 1)
  {
    sub_22C36DD28(v0[12], &qword_27D9BB7A0, &qword_22C9110D0);
    v20 = 0;
  }

  else
  {
    v21 = v0[12];
    sub_22C90448C();
    v20 = v22;
    (*(*(v17 - 8) + 8))(v19, v17);
  }

  v0[24] = v20;
  v23 = *(v15 + 24);
  v35 = v23 + *v23;
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_22C3EA4F0;
  v26 = v0[18];
  v27 = v0[15];
  v28 = v0[10];
  sub_22C36EC40();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_22C3EA4F0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = *v1;
  sub_22C369970();
  *v12 = v11;
  v13 = v10[25];
  *v12 = *v1;
  v11[26] = v0;

  v14 = v10[24];
  v15 = v10[15];
  v16 = v10[14];
  v17 = v10[13];
  if (!v0)
  {
    v11[27] = v3;
    v11[28] = v5;
    v11[29] = v7;
    v11[30] = v9;
  }

  (*(v16 + 8))(v15, v17);

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C3EA694()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[12];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_22C36FF94(v0 + 2);

  v5 = v0[1];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];

  return v5(v6, v7, v8, v9);
}

uint64_t sub_22C3EA75C()
{
  v1 = v0[26];
  v2 = v0[21];
  sub_22C36FF94(v0 + 2);
  sub_22C903F7C();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = sub_22C36FB44();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    sub_22C3CA698(&dword_22C366000, v11, v12, "Error during GMS inference request: %@");
    sub_22C36DD28(v8, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v13 = v0[26];
  v14 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];

  v18 = sub_22C36D264();
  v14(v18);
  v19 = sub_22C3EA98C(v13);
  v20 = v0[26];
  if (v19)
  {
    type metadata accessor for FullPlannerError();
    sub_22C371588();
    sub_22C3ED0B4(v21, v22);
    sub_22C3700B4();
    v23 = v20;
    sub_22C901E9C();
    v24 = sub_22C901E8C();
    sub_22C3ED274(v24);
  }

  else
  {
    v25 = v0[26];
    swift_willThrow();
    v26 = v0[26];
  }

  v28 = v0[21];
  v27 = v0[22];
  v29 = v0[15];
  v30 = v0[12];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_22C369A24();

  return v31();
}

BOOL sub_22C3EA98C(void *a1)
{
  v2 = sub_22C90348C();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = sub_22C90195C();
  v15 = sub_22C369824(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v32 - v24;
  v33 = a1;
  v26 = a1;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if (swift_dynamicCast())
  {
    (*(v17 + 32))(v22, v25, v14);
    v27 = (*(v17 + 88))(v22, v14) == *MEMORY[0x277D71AB0];
    (*(v17 + 8))(v22, v14);
  }

  else
  {

    v33 = a1;
    v28 = a1;
    if (!swift_dynamicCast())
    {

      return 0;
    }

    (*(v5 + 32))(v10, v13, v2);
    v27 = (*(v5 + 88))(v10, v2) == *MEMORY[0x277D29D68];
    v29 = sub_22C3ED264();
    v30(v29);
  }

  return v27;
}

uint64_t sub_22C3EAC34()
{
  sub_22C369980();
  v1[2] = v0;
  v2 = sub_22C587C84(0);
  v1[3] = v2;
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  v1[4] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3EACB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_22C9073DC();
  sub_22C36D628(v3);
  *(v0 + 92) = v1[6];
  v4 = sub_22C90451C();
  sub_22C379F24(v4);
  *(v0 + 100) = v1[8];
  sub_22C90068C();
  *(v0 + 104) = v1[9];
  sub_22C90068C();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22C3EADA0;
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_22C3EA080();
}

uint64_t sub_22C3EADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C37F044();
  v16 = v15;
  v17 = v15[6];
  v18 = *v11;
  sub_22C369970();
  *v19 = v18;
  v16[7] = v10;

  if (!v10)
  {
    v20 = v16[4];
    if (sub_22C370B74(v20, 1, v16[5]) != 1)
    {
      v21 = sub_22C90069C();
      sub_22C36985C(v21);
      (*(v22 + 8))(v20);
      v20 = v16[4];
    }

    v23 = sub_22C386F88();
    sub_22C36985C(v23);
    v25 = *(v24 + 8);
    v25(v20 + v9, v23);
    sub_22C36DD28(v20 + v12, &qword_27D9BB7A0, &qword_22C9110D0);
    v25(v20 + v14, v23);
    v25(v20 + v13, v23);
    v25(v20 + a9, v23);
  }

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C3EAF80()
{
  sub_22C369980();
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[1];
  v5 = v0[8];
  v4 = v0[9];

  return v3(v4, v5);
}

uint64_t sub_22C3EAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 32);
  if (sub_22C370B74(v13, 1, *(v12 + 40)) != 1)
  {
    v14 = sub_22C90069C();
    sub_22C36985C(v14);
    (*(v15 + 8))(v13);
    v13 = *(v12 + 32);
  }

  v17 = *(v12 + 100);
  v16 = *(v12 + 104);
  v19 = *(v12 + 92);
  v18 = *(v12 + 96);
  v20 = *(v12 + 88);
  v21 = sub_22C90069C();
  sub_22C36985C(v21);
  v23 = *(v22 + 8);
  v23(v13 + v20, v21);
  sub_22C36DD28(v13 + v19, &qword_27D9BB7A0, &qword_22C9110D0);
  v23(v13 + v18, v21);
  v23(v13 + v17, v21);
  v23(v13 + v16, v21);

  sub_22C369A24();
  v24 = *(v12 + 56);
  sub_22C372034();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_22C3EB13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3EB1F8;

  return sub_22C3EA080();
}

uint64_t sub_22C3EB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v5 + 16);
  v11 = *v5;
  sub_22C369970();
  *v12 = v11;

  v17 = *(v11 + 8);
  if (!v4)
  {
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a4;
  }

  return v17(v13, v14, v15, v16);
}

uint64_t sub_22C3EB318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3EB3A4;

  return sub_22C3EAC34();
}

uint64_t sub_22C3EB3A4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;
  sub_22C369970();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

uint64_t sub_22C3EB4AC()
{
  v3 = sub_22C382EF8();
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v1 == v2 && 0x800000022C92E300 == v0;
  if (v7 || (sub_22C377328() & 1) != 0)
  {
    return v2 - 39;
  }

  sub_22C903F7C();

  v9 = sub_22C9063CC();
  v10 = sub_22C90AADC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_22C36FB44();
    v16 = swift_slowAlloc();
    *(v11 + 4) = sub_22C37B948(4.8149e-34);
    sub_22C385538(&dword_22C366000, v12, v13, "Unable to find the PromptTemplatePrefix for key %s");
    sub_22C36FF94(v16);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v14 = sub_22C3ED264();
  v15(v14);
  return 0;
}

uint64_t sub_22C3EB640()
{
  v3 = sub_22C382EF8();
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v1 == v2 && 0x800000022C92E300 == v0;
  if (v7 || (sub_22C377328() & 1) != 0)
  {
    sub_22C3A5908(&qword_27D9BBBE0, &unk_22C911100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v1;
    *(inited + 40) = v0;
    *(inited + 56) = 35;
    *(inited + 64) = 2;
  }

  else
  {
    sub_22C903F7C();

    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_22C36FB44();
      v17 = swift_slowAlloc();
      *(v11 + 4) = sub_22C37B948(4.8149e-34);
      sub_22C385538(&dword_22C366000, v12, v13, "Unable to find the PromptTemplatePrefix for key %s");
      sub_22C36FF94(v17);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v14 = sub_22C3ED264();
    v15(v14);
  }

  return sub_22C909F0C();
}

uint64_t sub_22C3EB848(uint64_t a1)
{
  v2 = sub_22C3ED200();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3EB884(uint64_t a1)
{
  v2 = sub_22C3ED200();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C3EB8DC()
{
  sub_22C369980();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[23] = sub_22C3699D4();
  v9 = sub_22C90069C();
  v1[24] = v9;
  sub_22C3699B8(v9);
  v1[25] = v10;
  v12 = *(v11 + 64);
  v1[26] = sub_22C3699D4();
  v13 = sub_22C909D9C();
  v1[27] = v13;
  sub_22C3699B8(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = sub_22C3699D4();
  v17 = sub_22C90444C();
  v1[30] = v17;
  sub_22C3699B8(v17);
  v1[31] = v18;
  v20 = *(v19 + 64);
  v1[32] = sub_22C3699D4();
  v21 = sub_22C9063DC();
  v1[33] = v21;
  sub_22C3699B8(v21);
  v1[34] = v22;
  v24 = *(v23 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v25 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

void sub_22C3EBAAC()
{
  v1 = v0[36];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    sub_22C3720F4();
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Running completion request using templated TokenGeneration", v4, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];

  v12 = *(v7 + 8);
  v0[37] = v12;
  v12(v5, v6);
  v13 = sub_22C3EC41C(v8, v11, v10, *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64));
  v14 = v0[26];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[27];
  v18 = v0[25];
  v19 = v0[22];
  v41 = v0[24];
  v42 = v0[23];
  v20 = v0[20];
  sub_22C3F9B04(v13, v21, v15);

  sub_22C378A4C(v19, (v0 + 13));
  v22 = v0[17];
  sub_22C374168(v0 + 13, v0[16]);
  sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0x746E65746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v24 = MEMORY[0x277D42E20];
  *(inited + 72) = v17;
  *(inited + 80) = v24;
  v25 = sub_22C36D548((inited + 48));
  (*(v16 + 16))(v25, v15, v17);
  sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
  v0[38] = sub_22C909F0C();
  v26 = sub_22C587C84(0);
  (*(v18 + 16))(v14, v20 + *(v26 + 36), v41);
  sub_22C3ECF48(v20 + *(v26 + 24), v42);
  v27 = sub_22C90451C();
  v28 = sub_22C370B74(v42, 1, v27);
  v29 = v0[23];
  if (v28 == 1)
  {
    sub_22C36DD28(v0[23], &qword_27D9BB7A0, &qword_22C9110D0);
    v30 = 0;
  }

  else
  {
    v31 = v0[23];
    sub_22C90448C();
    v30 = v32;
    (*(*(v27 - 8) + 8))(v29, v27);
  }

  v0[39] = v30;
  v33 = *(v22 + 32);
  v43 = v33 + *v33;
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[40] = v35;
  *v35 = v0;
  v35[1] = sub_22C3EBEE0;
  v36 = v0[32];
  v37 = v0[26];
  v38 = v0[21];
  sub_22C36EC40();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22C3EBEE0()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v8 = v7;
  v9 = *v1;
  v10 = *v1;
  sub_22C369970();
  *v11 = v10;
  v12 = v9[40];
  *v11 = *v1;
  v10[41] = v0;

  v13 = v9[39];
  v14 = v9[38];
  v15 = v9[26];
  v16 = v9[25];
  v17 = v9[24];
  if (!v0)
  {
    v10[42] = v3;
    v10[43] = v5;
    v10[44] = v23;
    v10[45] = v8;
  }

  (*(v16 + 8))(v15, v17);

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_22C3EC0AC()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[26];
  v7 = v0[23];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v8 = *(v4 + 8);
  v9 = sub_22C36D264();
  v10(v9);
  sub_22C36FF94(v0 + 13);

  v11 = v0[1];
  v13 = v0[44];
  v12 = v0[45];
  v15 = v0[42];
  v14 = v0[43];

  return v11(v12, v13, v14, v15);
}

uint64_t sub_22C3EC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[41];
  v14 = v12[35];
  sub_22C36FF94(v12 + 13);
  sub_22C903F7C();
  v15 = v13;
  v16 = sub_22C9063CC();
  v17 = sub_22C90AADC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12[41];
    v19 = sub_22C36FB44();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v18;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    sub_22C3CA698(&dword_22C366000, v23, v24, "Error during GMS inference request: %@");
    sub_22C36DD28(v20, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v25 = v12[41];
  v26 = v12[37];
  v28 = v12[34];
  v27 = v12[35];
  v29 = v12[33];

  v30 = sub_22C36D264();
  v26(v30);
  v31 = sub_22C3EA98C(v25);
  v32 = v12[41];
  v34 = v12[31];
  v33 = v12[32];
  v36 = v12[29];
  v35 = v12[30];
  v37 = v12[27];
  v38 = v12[28];
  if (v31)
  {
    type metadata accessor for FullPlannerError();
    sub_22C371588();
    sub_22C3ED0B4(v39, v40);
    sub_22C3700B4();
    v41 = v32;
    sub_22C901E9C();
    v42 = sub_22C901E8C();
    sub_22C3ED274(v42);

    (*(v38 + 8))(v36, v37);
    (*(v34 + 8))(v33, v35);
  }

  else
  {
    v43 = v12[41];
    swift_willThrow();
    (*(v38 + 8))(v36, v37);
    (*(v34 + 8))(v33, v35);
    v44 = v12[41];
  }

  v46 = v12[35];
  v45 = v12[36];
  v47 = v12[32];
  v48 = v12[29];
  v49 = v12[26];
  v50 = v12[23];

  sub_22C369A24();
  sub_22C372034();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
}

uint64_t sub_22C3EC41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, unint64_t a7)
{
  v70 = a4;
  v71 = a5;
  v72 = a1;
  v77 = sub_22C90444C();
  v11 = sub_22C369824(v77);
  v75 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v74 = v16 - v15;
  v78 = sub_22C9063DC();
  v17 = sub_22C369824(v78);
  v82 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v76 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  v29 = sub_22C3A5908(&qword_27D9BBBC0, &qword_22C92C1C0);
  v30 = sub_22C369914(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v73 = a2;
  v81[0] = a2;
  v81[1] = a3;
  v33 = a3;
  v79 = sub_22C3EB4AC();
  v80 = v34;
  sub_22C3ECFB8();
  sub_22C3ED00C();
  LOBYTE(a3) = sub_22C90A02C();

  if (a3)
  {
    v35 = sub_22C3EB4AC();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35;
    }

    v39 = 7;
    if (((v37 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
    {
      v39 = 11;
    }

    v40 = sub_22C8A5380(v39 | (v38 << 16), v73, v33);
    v69 = MEMORY[0x2318B76D0](v40);
    v73 = v41;

    sub_22C90127C();
    sub_22C3ED0B4(&qword_281435820, MEMORY[0x277D29CE0]);

    sub_22C90125C();

    sub_22C3EB640();
    v42 = v72;
    v70 = a6;
    sub_22C90442C();
    sub_22C903F7C();
    v43 = sub_22C9063CC();
    v44 = sub_22C90AACC();
    v45 = a7;
    if (os_log_type_enabled(v43, v44))
    {
      sub_22C3720F4();
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22C366000, v43, v44, "Prompt converted into template and bindings.", v46, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v47 = v82 + 8;
    v48 = v78;
    v71 = *(v82 + 8);
    v71(v28, v78);
    v49 = v76;
    sub_22C903F7C();
    v50 = v74;
    v51 = v75;
    (*(v75 + 16))(v74, v42, v77);

    v52 = sub_22C9063CC();
    v53 = v45;
    v54 = sub_22C90AACC();
    v55 = v52;

    LODWORD(v72) = v54;
    if (os_log_type_enabled(v52, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v82 = v47;
      v81[0] = v57;
      *v56 = 136315650;
      *(v56 + 4) = sub_22C36F9F4(v70, v53, v81);
      *(v56 + 12) = 2080;
      v58 = sub_22C9043FC();
      if (v59)
      {
        v60 = v58;
      }

      else
      {
        v60 = 0x756F4620746F4E3CLL;
      }

      v61 = v49;
      if (v59)
      {
        v62 = v59;
      }

      else
      {
        v62 = 0xEB000000003E646ELL;
      }

      (*(v51 + 8))(v50, v77);
      v63 = sub_22C36F9F4(v60, v62, v81);

      *(v56 + 14) = v63;
      *(v56 + 22) = 2080;
      v64 = v69;
      *(v56 + 24) = sub_22C36F9F4(v69, v73, v81);
      _os_log_impl(&dword_22C366000, v55, v72, "    Template ID: %s\n    Client Template: %s\n    Content: %s", v56, 0x20u);
      swift_arrayDestroy();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v71(v61, v78);
    }

    else
    {

      (*(v51 + 8))(v50, v77);
      v71(v49, v48);
      return v69;
    }
  }

  else
  {
    sub_22C903F7C();
    v65 = sub_22C9063CC();
    v64 = sub_22C90AADC();
    if (os_log_type_enabled(v65, v64))
    {
      sub_22C3720F4();
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22C366000, v65, v64, "Prompt does not match GMS template. Unable to reform prompt to send to GMS.", v66, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v82 + 8))(v23, v78);
    sub_22C3ED060();
    swift_allocError();
    swift_willThrow();
  }

  return v64;
}

uint64_t sub_22C3ECAB4()
{
  sub_22C369980();
  v1[2] = v0;
  v2 = sub_22C587C84(0);
  v1[3] = v2;
  sub_22C369914(v2);
  v4 = *(v3 + 64);
  v1[4] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C3ECB30()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_22C9073DC();
  sub_22C36D628(v3);
  *(v0 + 92) = v1[6];
  v4 = sub_22C90451C();
  sub_22C379F24(v4);
  *(v0 + 100) = v1[8];
  sub_22C90068C();
  *(v0 + 104) = v1[9];
  sub_22C90068C();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22C3ECC20;
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_22C3EB8DC();
}

uint64_t sub_22C3ECC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22C36BA18();
  sub_22C3749D8();
  sub_22C37F044();
  v16 = v15;
  v17 = v15[6];
  v18 = *v11;
  sub_22C369970();
  *v19 = v18;
  v16[7] = v10;

  if (!v10)
  {
    v20 = v16[4];
    if (sub_22C370B74(v20, 1, v16[5]) != 1)
    {
      v21 = sub_22C90069C();
      sub_22C36985C(v21);
      (*(v22 + 8))(v20);
      v20 = v16[4];
    }

    v23 = sub_22C386F88();
    sub_22C36985C(v23);
    v25 = *(v24 + 8);
    v25(v20 + v9, v23);
    sub_22C36DD28(v20 + v12, &qword_27D9BB7A0, &qword_22C9110D0);
    v25(v20 + v14, v23);
    v25(v20 + v13, v23);
    v25(v20 + a9, v23);
  }

  sub_22C36BB08();
  sub_22C372034();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_22C3ECE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3ED258;

  return sub_22C3EB8DC();
}

uint64_t sub_22C3ECEBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3ED260;

  return sub_22C3ECAB4();
}

uint64_t sub_22C3ECF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3ECFB8()
{
  result = qword_27D9BBBC8;
  if (!qword_27D9BBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBC8);
  }

  return result;
}

unint64_t sub_22C3ED00C()
{
  result = qword_27D9BBBD0;
  if (!qword_27D9BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBD0);
  }

  return result;
}

unint64_t sub_22C3ED060()
{
  result = qword_27D9BBBD8;
  if (!qword_27D9BBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBD8);
  }

  return result;
}

uint64_t sub_22C3ED0B4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_22C3ED0FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C3ED1AC()
{
  result = qword_27D9BBBE8;
  if (!qword_27D9BBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBE8);
  }

  return result;
}

unint64_t sub_22C3ED200()
{
  result = qword_27D9BBBF0;
  if (!qword_27D9BBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBBF0);
  }

  return result;
}

uint64_t sub_22C3ED274(uint64_t a1)
{
  sub_22C36C640(v1, 0, 15, a1);

  return swift_willThrow();
}

uint64_t sub_22C3ED2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = sub_22C3A5908(&qword_27D9BBC30, &qword_22C9112B0);
  sub_22C369824(v80);
  v86 = v4;
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v79 = v8;
  v78 = sub_22C3A5908(&qword_27D9BBC38, &qword_22C9112B8);
  sub_22C369824(v78);
  v84 = v9;
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v77 = v13;
  sub_22C36BA0C();
  v76 = sub_22C901B3C();
  v14 = sub_22C369824(v76);
  v82 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v75 = v18;
  v19 = sub_22C3A5908(&qword_27D9BBC40, &unk_22C9112C0);
  sub_22C369824(v19);
  v81 = v20;
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v83 = v24;
  sub_22C36BA0C();
  v25 = sub_22C909CCC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v33 = v32 - v31;
  v89 = type metadata accessor for CompletionPromptProperty(0);
  v34 = sub_22C369824(v89);
  v36 = v35;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v34);
  v41 = (v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v43 = v69 - v42;
  v44 = v28;
  result = (*(v28 + 16))(a2, v88, v25);
  v46 = *(a1 + 16);
  if (v46)
  {
    v47 = *(v36 + 80);
    sub_22C36BA94();
    v49 = a1 + v48;
    v87 = *(v36 + 72);
    v72 = v86 + 1;
    v73 = v86 + 13;
    v50 = v44;
    v86 = (v44 + 8);
    v85 = *MEMORY[0x277D0E548];
    v70 = (v82 + 2);
    v71 = (v82 + 4);
    v69[2] = v84 + 13;
    v69[1] = v84 + 1;
    v69[0] = v82 + 1;
    v51 = v81++;
    v82 = v51 + 13;
    v84 = (v50 + 32);
    v88 = v33;
    v74 = v19;
    while (2)
    {
      sub_22C3F03C0(v49, v43, type metadata accessor for CompletionPromptProperty);
      sub_22C3F03C0(v43, v41, type metadata accessor for CompletionPromptProperty);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v67 = sub_22C3F059C();
          v68(v67);
          sub_22C3F041C();
          sub_22C372100();
          sub_22C909E5C();
          goto LABEL_8;
        case 2u:
          v54 = v75;
          v36 = v76;
          (*v71)(v75, v41, v76);
          (*v70)(v77, v54, v36);
          v55 = sub_22C385558();
          v56 = v78;
          v57(v55, v85, v78);
          sub_22C3F041C();
          sub_22C37F70C();
          sub_22C909E4C();
          v58 = sub_22C385558();
          v33 = v88;
          v59(v58, v56);
          v60 = v54;
          v19 = v74;
          (*v69[0])(v60, v36);
          goto LABEL_10;
        case 3u:
          v61 = v80;
          *v79 = *v41;
          v62 = sub_22C385558();
          v63(v62, v85, v61);
          sub_22C3F041C();
          sub_22C37F70C();
          sub_22C909E0C();
          v64 = sub_22C385558();
          v33 = v88;
          v66 = v61;
          goto LABEL_9;
        default:
          v52 = sub_22C3F059C();
          v53(v52);
          sub_22C3F041C();
          sub_22C372100();
          sub_22C909E1C();
LABEL_8:
          v65 = *v81;
          v64 = v36;
          v66 = v19;
LABEL_9:
          v65(v64, v66);
LABEL_10:
          sub_22C3F0474(v43, type metadata accessor for CompletionPromptProperty);
          (*v86)(a2, v25);
          result = (*v84)(a2, v33, v25);
          v49 += v87;
          if (!--v46)
          {
            return result;
          }

          continue;
      }
    }
  }

  return result;
}

void sub_22C3ED870(uint64_t a1)
{
  v2 = sub_22C9019FC();
  v151 = sub_22C369824(v2);
  v152 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v151);
  sub_22C3698A8();
  v150 = v6;
  sub_22C36BA0C();
  v138 = sub_22C9063DC();
  v7 = sub_22C369824(v138);
  v137 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v13 = v12 - v11;
  v146 = sub_22C901A4C();
  v14 = sub_22C369824(v146);
  v141 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v145 = v18;
  sub_22C36BA0C();
  v19 = sub_22C901A1C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C901A8C();
  v148 = sub_22C369824(v28);
  v149 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v148);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = sub_22C901A6C();
  v36 = sub_22C369824(v35);
  v154 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698E4();
  v147 = v40;
  sub_22C369930();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  v153 = v42;
  sub_22C369930();
  MEMORY[0x28223BE20](v43);
  v45 = v135 - v44;
  v46 = sub_22C3A5908(&qword_27D9BBC28, &qword_22C911298);
  sub_22C369914(v46);
  v48 = *(v47 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v49);
  v51 = v135 - v50;
  v140 = a1;
  v52 = sub_22C901A2C();
  sub_22C58B020(v52, v51);

  v53 = sub_22C901ABC();
  v54 = sub_22C370B74(v51, 1, v53);
  v136 = v13;
  v135[2] = v19;
  v135[1] = v22;
  v139 = v27;
  if (v54 == 1)
  {
    sub_22C36DD28(v51, &qword_27D9BBC28, &qword_22C911298);
LABEL_10:
    v58 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v55 = sub_22C901AAC();
  sub_22C36BBA8(v53);
  (*(v56 + 8))(v51, v53);
  v57 = *(v55 + 16);
  if (!v57)
  {

    goto LABEL_10;
  }

  v157 = MEMORY[0x277D84F90];
  sub_22C3B637C(0, v57, 0);
  v58 = v157;
  v59 = *(v149 + 16);
  v60 = *(v149 + 80);
  sub_22C36BA94();
  v142 = v55;
  v62 = v55 + v61;
  v143 = *(v63 + 56);
  v144 = v64;
  v149 = v63;
  v65 = (v63 - 8);
  do
  {
    v66 = v148;
    v144(v34, v62, v148);
    sub_22C901A7C();
    (*v65)(v34, v66);
    v157 = v58;
    v22 = *(v58 + 16);
    v67 = *(v58 + 24);
    v19 = (v22 + 1);
    if (v22 >= v67 >> 1)
    {
      v71 = sub_22C369AB0(v67);
      sub_22C3B637C(v71, v22 + 1, 1);
      v58 = v157;
    }

    *(v58 + 16) = v19;
    v68 = *(v154 + 80);
    sub_22C36BA94();
    (*(v70 + 32))(v58 + v69 + *(v70 + 72) * v22, v45, v35);
    v62 += v143;
    --v57;
  }

  while (v57);

  sub_22C3F05E0();
LABEL_11:
  v72 = *(v58 + 16);
  v73 = v147;
  if (v72)
  {
    v19 = *(v154 + 16);
    v74 = *(v154 + 80);
    sub_22C36BA94();
    v135[0] = v58;
    v76 = v58 + v75;
    v149 = *(v77 + 56);
    v22 = v77 + 72;
    LODWORD(v148) = *MEMORY[0x277D71C10];
    v78 = (v77 - 8);
    v154 = v77;
    v142 = (v141 + 4);
    v143 = v77 + 80;
    ++v141;
    v79 = MEMORY[0x277D84F90];
    v80 = v153;
    v144 = v19;
    do
    {
      v19(v80, v76, v35);
      v19(v73, v80, v35);
      v81 = (*v22)(v73, v35);
      if (v81 == v148)
      {
        (*v143)(v73, v35);
        v82 = v145;
        v83 = v73;
        v84 = v146;
        (*v142)(v145, v83, v146);
        v85 = sub_22C901A3C();
        v87 = v86;
        (*v141)(v82, v84);
        (*v78)(v153, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v79 + 16);
          sub_22C590270();
          v79 = v93;
        }

        v89 = *(v79 + 16);
        v88 = *(v79 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_22C369AB0(v88);
          sub_22C590270();
          v79 = v94;
        }

        *(v79 + 16) = v89 + 1;
        v90 = v79 + 16 * v89;
        *(v90 + 32) = v85;
        *(v90 + 40) = v87;
        v73 = v147;
        v80 = v153;
        v19 = v144;
      }

      else
      {
        v91 = *v78;
        (*v78)(v80, v35);
        v91(v73, v35);
      }

      v76 += v149;
      --v72;
    }

    while (v72);

    sub_22C3F05E0();
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  v157 = v79;
  v95 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  v96 = sub_22C3F035C();
  v97 = sub_22C90A04C();
  v145 = v98;
  v146 = v97;

  v99 = v139;
  sub_22C901A5C();
  v100 = sub_22C901A0C();
  (*(v22 + 8))(v99, v19);
  v101 = *(v100 + 16);
  if (v101)
  {
    v143 = v96;
    v144 = v95;
    v159 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v102 = 0;
    v103 = v159;
    v104 = *(v152 + 80);
    sub_22C36BA94();
    v153 = v100 + v105;
    v154 = v100;
    v148 = v106 + 16;
    v149 = 0x800000022C9301C0;
    v147 = v106 + 8;
    v107 = v152;
    while (v102 < *(v100 + 16))
    {
      v108 = v101;
      v109 = v150;
      v110 = v151;
      (*(v107 + 16))(v150, v153 + *(v107 + 72) * v102, v151);
      v157 = 0;
      v158 = 0xE000000000000000;
      sub_22C90AF5C();

      v157 = 0xD000000000000012;
      v158 = v149;
      v111 = sub_22C9019DC();
      MEMORY[0x2318B7850](v111);

      MEMORY[0x2318B7850](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
      v155 = sub_22C9019EC();
      v156 = v112;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v113 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v113);

      MEMORY[0x2318B7850](41, 0xE100000000000000);
      v114 = v157;
      v115 = v158;
      (*(v107 + 8))(v109, v110);
      v159 = v103;
      v117 = *(v103 + 16);
      v116 = *(v103 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_22C369AB0(v116);
        sub_22C3B5E2C();
        v103 = v159;
      }

      ++v102;
      *(v103 + 16) = v117 + 1;
      v118 = v103 + 16 * v117;
      *(v118 + 32) = v114;
      *(v118 + 40) = v115;
      v101 = v108;
      v100 = v154;
      if (v108 == v102)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {

    v103 = MEMORY[0x277D84F90];
LABEL_31:
    v157 = v103;
    v119 = sub_22C90A04C();
    v121 = v120;

    v157 = 91;
    v158 = 0xE100000000000000;
    MEMORY[0x2318B7850](v119, v121);

    MEMORY[0x2318B7850](93, 0xE100000000000000);
    v122 = v157;
    v123 = v158;
    v124 = v136;
    sub_22C903F7C();

    v125 = sub_22C9063CC();
    v126 = sub_22C90AACC();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v157 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_22C36F9F4(v122, v123, &v157);
      _os_log_impl(&dword_22C366000, v125, v126, "Inference request via GMS completed with model information: %s", v127, 0xCu);
      sub_22C36FF94(v128);
      sub_22C369B50();
      MEMORY[0x2318B9880](v129, v130, v131);
      v132 = sub_22C36D66C();
      MEMORY[0x2318B9880](v132);
    }

    v133 = sub_22C901ACC();
    sub_22C36985C(v133);
    (*(v134 + 8))(v140);
    (*(v137 + 8))(v124, v138);
  }
}

uint64_t sub_22C3EE398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v25;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 184) = a6;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_22C3A5908(&qword_27D9BBC20, &qword_22C911290);
  sub_22C369914(v10);
  v12 = *(v11 + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  v13 = sub_22C901B3C();
  *(v9 + 96) = v13;
  v14 = *(v13 - 8);
  sub_22C369B5C();
  *(v9 + 104) = v15;
  v17 = *(v16 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v18 = type metadata accessor for CompletionPromptProperty(0);
  *(v9 + 120) = v18;
  v19 = *(v18 - 8);
  sub_22C369B5C();
  *(v9 + 128) = v20;
  v22 = *(v21 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3EE514, 0, 0);
}

uint64_t sub_22C3EE514()
{
  v1 = *(v0 + 184);
  if (v1 == 255)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    if (v1)
    {
      v6 = *(v0 + 152);
      v5 = (v0 + 152);
      *v6 = v3;
      v6[1] = v4;
    }

    else
    {
      v8 = *(v0 + 144);
      v5 = (v0 + 144);
      *v8 = v3;
      v8[1] = v4;
    }

    swift_storeEnumTagMultiPayload();
    sub_22C36BA00();
    sub_22C3F0354();
    sub_22C592734();
    v7 = v9;
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_22C369AB0(v10);
      sub_22C592734();
      v7 = v38;
    }

    v12 = *v5;
    v13 = *(v0 + 128);
    *(v7 + 16) = v11 + 1;
    sub_22C3F02F0(v12, v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
  }

  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  sub_22C379DF8(*(v0 + 56), v15, &qword_27D9BBC20, &qword_22C911290);
  if (sub_22C370B74(v15, 1, v14) == 1)
  {
    sub_22C36DD28(*(v0 + 88), &qword_27D9BBC20, &qword_22C911290);
  }

  else
  {
    v16 = *(v0 + 136);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    (*(v18 + 32))(v17, *(v0 + 88), v19);
    (*(v18 + 16))(v16, v17, v19);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v7 + 16);
      sub_22C592734();
      v7 = v40;
    }

    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22C369AB0(v20);
      sub_22C592734();
      v7 = v41;
    }

    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *(v7 + 16) = v21 + 1;
    v24 = *(v23 + 80);
    sub_22C36BA94();
    sub_22C3F02F0(v22, v7 + v25 + *(v23 + 72) * v21);
  }

  *(v0 + 160) = v7;
  v26 = *(*(v0 + 72) + 24);
  sub_22C369B5C();
  v42 = (v27 + *v27);
  v29 = *(v28 + 4);
  v30 = swift_task_alloc();
  *(v0 + 168) = v30;
  *v30 = v0;
  v30[1] = sub_22C3EE854;
  v31 = *(v0 + 72);
  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  v36 = *(v0 + 16);

  return v42(v36, v34, v35, v7, v33, v31);
}

uint64_t sub_22C3EE854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v5 + 168);
  v11 = *v5;
  sub_22C369970();
  *v12 = v11;
  v11[22] = v4;

  if (v4)
  {

    return MEMORY[0x2822009F8](sub_22C3EEA10, 0, 0);
  }

  else
  {
    v14 = v11[19];
    v13 = v11[20];
    v16 = v11[17];
    v15 = v11[18];
    v17 = v11[14];
    v18 = v11[11];

    v19 = v11[1];

    return v19(a1, a2, a3, a4);
  }
}

uint64_t sub_22C3EEA10()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_22C3EEAB8()
{
  v0 = sub_22C90035C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90046C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3F0160(v8, qword_27D9E3E90);
  sub_22C37AA60(v5, qword_27D9E3E90);
  if (qword_27D9BA600 != -1)
  {
    swift_once();
  }

  v11 = sub_22C37AA60(v5, qword_27D9E3EA8);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 0xD000000000000022;
  v13[1] = 0x800000022C930190;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_22C3858B4();
  sub_22C90043C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22C3EECF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v207 = a2;
  v249 = a1;
  v211 = a4;
  v200 = sub_22C90046C();
  v5 = sub_22C369824(v200);
  v199 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  sub_22C3698F8(v9);
  v10 = sub_22C90197C();
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v14);
  v210 = sub_22C901B5C();
  v15 = sub_22C369824(v210);
  v209 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C3698F8(v20);
  v205 = sub_22C90876C();
  v21 = sub_22C369824(v205);
  v197 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C3698A8();
  v196 = v25;
  v26 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v204 = v30;
  v31 = sub_22C3A5908(&qword_27D9BBBF8, &qword_22C911238);
  sub_22C369914(v31);
  v33 = *(v32 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v34);
  sub_22C36D5B4();
  sub_22C3698F8(v35);
  v219 = sub_22C90199C();
  v36 = sub_22C369824(v219);
  v218 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v40);
  v221 = sub_22C90124C();
  v41 = sub_22C369824(v221);
  v220 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA64();
  sub_22C3698F8(v46);
  v47 = sub_22C90075C();
  v48 = sub_22C369824(v47);
  v237 = v49;
  v238 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  v214 = v54;
  v55 = sub_22C3A5908(&qword_27D9BBC00, &unk_22C911240);
  v56 = sub_22C369914(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v60);
  sub_22C36BA64();
  v62 = sub_22C3698F8(v61);
  v63 = type metadata accessor for FullPlannerGMSClientConfiguration(v62);
  v64 = sub_22C36985C(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C3698E4();
  v233 = v67;
  sub_22C369930();
  MEMORY[0x28223BE20](v68);
  v70 = &v194 - v69;
  v71 = sub_22C9063DC();
  v72 = sub_22C369824(v71);
  v236 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  v234 = v80;
  sub_22C369930();
  MEMORY[0x28223BE20](v81);
  v83 = &v194 - v82;
  v227 = type metadata accessor for FullPlannerPreferences();
  v84 = v227[10];
  v85 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  v229 = a3;
  v222 = v85;
  sub_22C901EDC();
  v86 = v245;
  v87 = v246;
  sub_22C903F7C();
  sub_22C38855C();
  sub_22C3F03C0(v249, v70, v88);

  v89 = sub_22C9063CC();
  v90 = sub_22C90AACC();

  v91 = os_log_type_enabled(v89, v90);
  v230 = v71;
  v235 = v63;
  v228 = v87;
  v226 = v86;
  if (v91)
  {
    LODWORD(v202) = v90;
    v92 = v89;
    v93 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v245 = v195;
    *v93 = 136315394;
    *(v93 + 4) = sub_22C36F9F4(v86, v87, &v245);
    *(v93 + 12) = 2080;
    v94 = &v70[*(v63 + 20)];
    v95 = v214;
    sub_22C90076C();
    v96 = v232;
    sub_22C90074C();
    (*(v237 + 8))(v95, v238);
    v97 = sub_22C9006FC();
    if (sub_22C370B74(v96, 1, v97) == 1)
    {
      v98 = 7104878;
      sub_22C36DD28(v96, &qword_27D9BBC00, &unk_22C911240);
      v99 = 0xE300000000000000;
    }

    else
    {
      v98 = sub_22C9006EC();
      v99 = v104;
      sub_22C36BBA8(v97);
      (*(v105 + 8))(v96, v97);
    }

    sub_22C373260();
    sub_22C3F0474(v70, v106);
    v107 = sub_22C36F9F4(v98, v99, &v245);

    *(v93 + 14) = v107;
    _os_log_impl(&dword_22C366000, v92, v202, "Building GMS client with ModelBundleIdentifier: %s and locale: %s", v93, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v108 = sub_22C36D66C();
    MEMORY[0x2318B9880](v108);

    v101 = *(v236 + 8);
    v102 = v83;
    v103 = v230;
  }

  else
  {

    sub_22C373260();
    sub_22C3F0474(v70, v100);
    v101 = *(v236 + 8);
    v102 = v83;
    v103 = v71;
  }

  v232 = v101;
  v101(v102, v103);
  v109 = v229 + v227[19];
  sub_22C901EDC();
  v111 = v245;
  v110 = v246;
  sub_22C903F7C();
  sub_22C38855C();
  v112 = v249;
  v113 = v233;
  sub_22C3F03C0(v249, v233, v114);

  v115 = sub_22C9063CC();
  v116 = sub_22C90AACC();

  LODWORD(v214) = v116;
  v117 = os_log_type_enabled(v115, v116);
  v202 = v111;
  v222 = v110;
  if (v117)
  {
    v118 = v113;
    v119 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v119 = 136315394;
    *(v119 + 4) = sub_22C36F9F4(v111, v110, &v245);
    *(v119 + 12) = 2080;
    v120 = v118 + *(v235 + 20);
    v121 = v215;
    sub_22C90076C();
    v122 = v216;
    sub_22C90074C();
    (*(v237 + 8))(v121, v238);
    v123 = sub_22C9006FC();
    if (sub_22C370B74(v122, 1, v123) == 1)
    {
      v124 = 7104878;
      sub_22C36DD28(v122, &qword_27D9BBC00, &unk_22C911240);
      v125 = 0xE300000000000000;
    }

    else
    {
      v124 = sub_22C9006EC();
      v125 = v129;
      sub_22C36BBA8(v123);
      (*(v130 + 8))(v122, v123);
    }

    sub_22C373260();
    sub_22C3F0474(v233, v131);
    v132 = sub_22C36F9F4(v124, v125, &v245);

    *(v119 + 14) = v132;
    _os_log_impl(&dword_22C366000, v115, v214, "Building GMS client with PromptTemplateKey: %s and locale: %s", v119, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    v133 = sub_22C36D66C();
    MEMORY[0x2318B9880](v133);

    sub_22C38A864();
    v134();
    v128 = v231;
    v112 = v249;
  }

  else
  {

    sub_22C373260();
    sub_22C3F0474(v113, v126);
    sub_22C38A864();
    v127();
    v128 = v231;
  }

  v135 = *(v235 + 20);

  v136 = v223;
  sub_22C90076C();
  sub_22C90074C();
  (*(v237 + 8))(v136, v238);
  v137 = v225;
  sub_22C90123C();
  v138 = v224;
  if (v137)
  {
  }

  v238 = 0;
  (*(v220 + 16))(v213, v128, v221);
  sub_22C90198C();
  v140 = v219;
  if (sub_22C370B74(v138, 1, v219) == 1)
  {

    sub_22C36DD28(v138, &qword_27D9BBBF8, &qword_22C911238);
    sub_22C903F7C();
    v141 = sub_22C9063CC();
    v142 = sub_22C90AADC();
    if (sub_22C36FBB4(v142))
    {
      v143 = sub_22C36D240();
      *v143 = 0;
      _os_log_impl(&dword_22C366000, v141, v142, "Failed to create the model bundle", v143, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    sub_22C38A864();
    v144();
    sub_22C3F010C();
    swift_allocError();
    *v145 = 2;
    swift_willThrow();
    return (*(v220 + 8))(v128, v221);
  }

  (*(v218 + 32))(v217, v138, v140);
  v146 = v204;
  sub_22C379DF8(v112, v204, &qword_27D9BB728, &qword_22C911230);
  v147 = v205;
  if (sub_22C370B74(v146, 1, v205) != 1)
  {
    v148 = v197;
    v149 = v196;
    (*(v197 + 32))(v196, v146, v147);
    sub_22C3FCDA0();
    (*(v148 + 8))(v149, v147);
  }

  sub_22C3A5908(&qword_27D9BBC10, &unk_22C911250);
  v150 = v218;
  v151 = *(v218 + 72);
  v152 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_22C90F800;
  (*(v150 + 16))(v153 + v152, v217, v219);
  sub_22C90196C();
  v154 = v208;
  sub_22C901B4C();
  v155 = v227[27];
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v242 == 1)
  {
    sub_22C903F7C();
    v156 = sub_22C9063CC();
    v157 = sub_22C90AADC();
    v158 = sub_22C36FBB4(v157);
    v159 = v210;
    v160 = v209;
    v161 = v230;
    if (v158)
    {
      v162 = sub_22C36D240();
      *v162 = 0;
      _os_log_impl(&dword_22C366000, v156, v157, "FullPlanner configured to skip inference. Note that the GMS APIs will be stubbed out, and the model will not be hit!", v162, 2u);
      v163 = sub_22C36D66C();
      MEMORY[0x2318B9880](v163);
    }

    v232(v203, v161);
    v247 = &type metadata for StubGMSWrapper;
    v248 = &off_283FB3348;
  }

  else
  {
    v160 = v209;
    v164 = v198;
    v159 = v210;
    (*(v209 + 16))(v198, v154, v210);
    v165 = sub_22C3F0614(v164);
    v247 = &type metadata for GMSWrapper;
    v248 = &off_283FB3370;
    v245 = v165;
    v161 = v230;
  }

  v166 = v202;
  v167 = v222;
  v168 = sub_22C90B21C();
  v169 = v206;
  if (v168)
  {

    v243 = &unk_283FB3168;
    v244 = &off_283FB31A8;
    *&v242 = swift_allocObject();
    sub_22C378AB0(&v245, v242 + 16);
    sub_22C903F7C();
    v170 = sub_22C9063CC();
    v171 = sub_22C90AACC();
    if (!sub_22C36FBB4(v171))
    {
      v169 = v212;
      goto LABEL_33;
    }

    *sub_22C36D240() = 0;
    sub_22C3F05F4(&dword_22C366000, v172, v173, "Created a FullPlannerModelClient with TokenGeneration");
    v169 = v212;
    goto LABEL_31;
  }

  v243 = &unk_283FB30E0;
  v244 = &off_283FB3180;
  v174 = swift_allocObject();
  *&v242 = v174;
  sub_22C378AB0(&v245, (v174 + 2));
  v175 = v228;
  v174[7] = v226;
  v174[8] = v175;
  v174[9] = v166;
  v174[10] = v167;
  sub_22C903F7C();
  v170 = sub_22C9063CC();
  v176 = sub_22C90AACC();
  if (sub_22C36FBB4(v176))
  {
    *sub_22C36D240() = 0;
    sub_22C3F05F4(&dword_22C366000, v177, v178, "Created a FullPlannerTemplatedGMSPromptClient with TokenGeneration");
LABEL_31:
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

LABEL_33:

  v232(v169, v161);
  v179 = v207;
  if (v207 != 3)
  {
    v240 = &type metadata for PnRTelemetryGMSPromptClient;
    v241 = &off_283FB3398;
    v180 = swift_allocObject();
    *&v239 = v180;
    sub_22C36C730(&v242, v180 + 16);
    *(v180 + 56) = v179;
    sub_22C36C730(&v239, &v242);
  }

  if (*(v249 + *(v235 + 24)) == 1)
  {
    sub_22C378AB0(&v242, &v239);
    if (qword_27D9BA5F0 != -1)
    {
      swift_once();
    }

    v181 = v200;
    v182 = sub_22C37AA60(v200, qword_27D9E3E90);
    v183 = v201;
    (*(v199 + 16))(v201, v182, v181);
    v184 = v211;
    v211[3] = &type metadata for CachedGMSPromptClient;
    v184[4] = &off_283FB3028;
    v185 = swift_allocObject();
    *v184 = v185;
    sub_22C3E64B8(&v239, v183, (v185 + 16));
    (*(v160 + 8))(v154, v159);
    v186 = sub_22C388E88();
    v187(v186);
    v188 = sub_22C3F05C0();
    v189(v188);
    sub_22C36FF94(&v242);
    return sub_22C36FF94(&v245);
  }

  else
  {
    (*(v160 + 8))(v154, v159);
    v190 = sub_22C388E88();
    v191(v190);
    v192 = sub_22C3F05C0();
    v193(v192);
    sub_22C36FF94(&v245);
    return sub_22C36C730(&v242, v211);
  }
}

unint64_t sub_22C3F010C()
{
  result = qword_27D9BBC08;
  if (!qword_27D9BBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBC08);
  }

  return result;
}

uint64_t *sub_22C3F0160(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_22C3F01EC()
{
  sub_22C3F0278();
  if (v0 <= 0x3F)
  {
    sub_22C90077C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C3F0278()
{
  if (!qword_28142FAA0)
  {
    sub_22C90876C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28142FAA0);
    }
  }
}

uint64_t sub_22C3F02F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionPromptProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3F035C()
{
  result = qword_28142F9F0;
  if (!qword_28142F9F0)
  {
    sub_22C3AC1A0(&qword_27D9BB5D0, &unk_22C9112A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F9F0);
  }

  return result;
}

uint64_t sub_22C3F03C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

unint64_t sub_22C3F041C()
{
  result = qword_27D9BBC48;
  if (!qword_27D9BBC48)
  {
    sub_22C909CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BBC48);
  }

  return result;
}

uint64_t sub_22C3F0474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C3F04CC()
{
  sub_22C901B3C();
  if (v0 <= 0x3F)
  {
    sub_22C3F054C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C3F054C()
{
  if (!qword_27D9BBC60)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BBC60);
    }
  }
}

void *sub_22C3F059C()
{
  v2 = v0[1];
  v3 = *(v1 - 144);
  *v3 = *v0;
  v3[1] = v2;
  v4 = **(v1 - 152);
  result = v3;
  v6 = *(v1 - 124);
  return result;
}

uint64_t sub_22C3F05C0()
{
  v1 = *(*(v0 - 368) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 360);
  return result;
}

void sub_22C3F05F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_22C3F0614(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C901B5C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  (*(v14 + 16))(v18 - v17, a1, v11);
  v19 = sub_22C90194C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_22C90190C();
  sub_22C903F7C();
  v23 = sub_22C9063CC();
  v24 = sub_22C90AACC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22C366000, v23, v24, "Created a FullPlannerModelClient with TokenGeneration", v25, 2u);
    MEMORY[0x2318B9880](v25, -1, -1);
  }

  v26 = *(v14 + 8);
  v27 = sub_22C36D264();
  v28(v27);
  (*(v5 + 8))(v10, v2);
  return v22;
}

uint64_t sub_22C3F0834()
{
  v0 = sub_22C9019CC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C9019BC();
  sub_22C90192C();
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_22C3F08EC()
{
  sub_22C369980();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_22C9018DC();
  v0[8] = v7;
  sub_22C3699B8(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_22C3699D4();
  v11 = sub_22C901ACC();
  v0[11] = v11;
  sub_22C3699B8(v11);
  v0[12] = v12;
  v14 = *(v13 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v15 = sub_22C9063DC();
  v0[15] = v15;
  sub_22C3699B8(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C3F0A48()
{
  v1 = v0[17];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_22C36BB14(&dword_22C366000, v5, v6, "Running completion request using TokenGeneration");
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[2];

  v13 = *(v8 + 8);
  v14 = sub_22C36BAFC();
  v15(v14);
  sub_22C3F9FDC(v12, v11, v10);
  swift_task_alloc();
  sub_22C36CC90();
  v0[18] = v16;
  *v16 = v17;
  v16[1] = sub_22C3F0B98;
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[3];
  v21 = v0[4];
  v22 = v0[2];

  return sub_22C3F12F4(v18, v22, v20, v21, v19);
}

uint64_t sub_22C3F0B98()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 152) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v33 = v12[17];
  v14 = v12[13];
  v13 = v12[14];
  v16 = v12[11];
  v15 = v12[12];
  v18 = v12[9];
  v17 = v12[10];
  v19 = v12[8];
  sub_22C9018CC();
  (*(v18 + 8))(v17, v19);
  v20 = sub_22C379808();
  v21(v20);
  sub_22C3ED870(v14);
  v22 = sub_22C38A874();
  v23(v22);

  sub_22C36D67C();
  sub_22C372034();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_22C3F0D6C()
{
  sub_22C36FB38();
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];

  sub_22C369A24();
  v6 = v0[19];

  return v5();
}

uint64_t sub_22C3F0DF0()
{
  sub_22C369980();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = sub_22C9018DC();
  v0[9] = v8;
  sub_22C3699B8(v8);
  v0[10] = v9;
  v11 = *(v10 + 64);
  v0[11] = sub_22C3699D4();
  v12 = sub_22C901ACC();
  v0[12] = v12;
  sub_22C3699B8(v12);
  v0[13] = v13;
  v15 = *(v14 + 64) + 15;
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v16 = sub_22C9063DC();
  v0[16] = v16;
  sub_22C3699B8(v16);
  v0[17] = v17;
  v19 = *(v18 + 64);
  v0[18] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22C3F0F50()
{
  sub_22C36BA18();
  sub_22C3749D8();
  v1 = v0[18];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    sub_22C36BB14(&dword_22C366000, v5, v6, "Running completion request using TokenGeneration");
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[3];
  v12 = v0[4];
  v14 = v0[2];

  v15 = *(v8 + 8);
  v16 = sub_22C36BAFC();
  v17(v16);
  sub_22C3FA19C(v14, v13, v11, v10);
  v18 = sub_22C36FBCC();
  sub_22C3FD408(v18, v19, v20, v21, v22);
  swift_task_alloc();
  sub_22C36CC90();
  v0[19] = v23;
  *v23 = v24;
  v23[1] = sub_22C3F109C;
  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[2];
  v30 = v0[3];
  sub_22C372034();

  return sub_22C3F29DC(v31, v32, v33, v34, v35, v36);
}

uint64_t sub_22C3F109C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 160) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v33 = v12[18];
  v14 = v12[14];
  v13 = v12[15];
  v16 = v12[12];
  v15 = v12[13];
  v18 = v12[10];
  v17 = v12[11];
  v19 = v12[9];
  sub_22C9018CC();
  (*(v18 + 8))(v17, v19);
  v20 = sub_22C379808();
  v21(v20);
  sub_22C3ED870(v14);
  v22 = sub_22C38A874();
  v23(v22);

  sub_22C36D67C();
  sub_22C372034();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_22C3F1270()
{
  sub_22C36FB38();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];

  sub_22C369A24();
  v6 = v0[20];

  return v5();
}

uint64_t sub_22C3F12F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v6 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  v5[35] = v6;
  v7 = *(v6 - 8);
  v5[36] = v7;
  v8 = *(v7 + 64) + 15;
  v5[37] = swift_task_alloc();
  v9 = *(*(sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v10 = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  v5[39] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v12 = sub_22C90322C();
  v5[41] = v12;
  v13 = *(v12 - 8);
  v5[42] = v13;
  v14 = *(v13 + 64) + 15;
  v5[43] = swift_task_alloc();
  v15 = sub_22C90323C();
  v5[44] = v15;
  v16 = *(v15 - 8);
  v5[45] = v16;
  v17 = *(v16 + 64) + 15;
  v5[46] = swift_task_alloc();
  v18 = *(*(sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v19 = sub_22C90630C();
  v5[48] = v19;
  v20 = *(v19 - 8);
  v5[49] = v20;
  v21 = *(v20 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v22 = sub_22C901C2C();
  v5[52] = v22;
  v23 = *(v22 - 8);
  v5[53] = v23;
  v24 = *(v23 + 64) + 15;
  v5[54] = swift_task_alloc();
  v25 = sub_22C901C1C();
  v5[55] = v25;
  v26 = *(v25 - 8);
  v5[56] = v26;
  v27 = *(v26 + 64) + 15;
  v5[57] = swift_task_alloc();
  v28 = sub_22C901C6C();
  v5[58] = v28;
  v29 = *(v28 - 8);
  v5[59] = v29;
  v30 = *(v29 + 64) + 15;
  v5[60] = swift_task_alloc();
  v31 = sub_22C901D2C();
  v5[61] = v31;
  v32 = *(v31 - 8);
  v5[62] = v32;
  v33 = *(v32 + 64) + 15;
  v5[63] = swift_task_alloc();
  v34 = sub_22C901D1C();
  v5[64] = v34;
  v35 = *(v34 - 8);
  v5[65] = v35;
  v36 = *(v35 + 64) + 15;
  v5[66] = swift_task_alloc();
  v37 = sub_22C901D5C();
  v5[67] = v37;
  v38 = *(v37 - 8);
  v5[68] = v38;
  v39 = *(v38 + 64) + 15;
  v5[69] = swift_task_alloc();
  v40 = sub_22C909CCC();
  v5[70] = v40;
  v41 = *(v40 - 8);
  v5[71] = v41;
  v42 = *(v41 + 64) + 15;
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F1848, 0, 0);
}

uint64_t sub_22C3F1848()
{
  v66 = *(v0 + 608);
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v53 = *(v0 + 552);
  v54 = *(v0 + 600);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  v48 = *(v0 + 592);
  v49 = *(v0 + 528);
  v5 = *(v0 + 520);
  v50 = *(v0 + 512);
  v51 = *(v0 + 504);
  v6 = *(v0 + 496);
  v52 = *(v0 + 488);
  v63 = *(v0 + 480);
  v64 = *(v0 + 472);
  v65 = *(v0 + 464);
  v57 = *(v0 + 456);
  v58 = *(v0 + 448);
  v59 = *(v0 + 440);
  v60 = *(v0 + 432);
  v61 = *(v0 + 424);
  v62 = *(v0 + 416);
  v68 = *(v0 + 408);
  v67 = *(v0 + 376);
  v7 = *(v0 + 256);
  v47 = *(v0 + 264);
  v8 = *(v0 + 248);
  *(swift_task_alloc() + 16) = v8;
  sub_22C909CDC();

  sub_22C3ED2AC(v7, v1);
  v9 = *(v3 + 8);
  *(v0 + 616) = v9;
  *(v0 + 624) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  sub_22C90065C();
  sub_22C36BBB4();
  *(v0 + 632) = sub_22C3F4780(v10, v11);
  sub_22C909DDC();

  v9(v1, v4);
  *(v0 + 640) = sub_22C901D3C();
  v12 = sub_22C369B68();
  sub_22C36C640(v12, v13, v14, v15);
  *(v0 + 800) = *MEMORY[0x277D0E5C0];
  v16 = *(v5 + 104);
  *(v0 + 648) = v16;
  *(v0 + 656) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v49);
  *(v0 + 664) = sub_22C901D0C();
  sub_22C36A748();
  sub_22C36C640(v17, v18, v19, v20);
  *(v0 + 804) = *MEMORY[0x277D0E5C8];
  v21 = *(v6 + 104);
  *(v0 + 672) = v21;
  *(v0 + 680) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v51);
  sub_22C901D4C();
  sub_22C909DEC();
  *(v0 + 688) = *(v55 + 8);
  sub_22C380478();
  *(v0 + 696) = v22;
  v23(v53);
  v9(v48, v4);
  *(v0 + 704) = sub_22C901C4C();
  v24 = sub_22C369B68();
  sub_22C36C640(v24, v25, v26, v27);
  *(v0 + 808) = *MEMORY[0x277D0E578];
  *(v0 + 712) = *(v58 + 104);
  sub_22C3700D4();
  *(v0 + 720) = v28;
  v29(v57);
  *(v0 + 728) = sub_22C901BDC();
  sub_22C36A748();
  sub_22C36C640(v30, v31, v32, v33);
  *(v0 + 812) = *MEMORY[0x277D0E580];
  *(v0 + 736) = *(v61 + 104);
  sub_22C3700D4();
  *(v0 + 744) = v34;
  v35(v60);
  sub_22C901C5C();
  sub_22C909E2C();
  *(v0 + 752) = *(v64 + 8);
  sub_22C380478();
  *(v0 + 760) = v36;
  v37(v63);
  v9(v54, v4);
  sub_22C9062FC();
  sub_22C36A748();
  sub_22C36C640(v38, v39, v40, v41);
  sub_22C3758BC();
  v42 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 768) = v43;
  *v43 = v44;
  v43[1] = sub_22C3F1CD8;
  v45 = *(v0 + 304);
  sub_22C3F48FC();

  return MEMORY[0x282166B58]();
}

uint64_t sub_22C3F1CD8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 768);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 776) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F1DD4()
{
  v2 = *(v0 + 304);
  v3 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C3F4718(v2);
  }

  else
  {
    v142 = *(v0 + 752);
    v143 = *(v0 + 760);
    v138 = *(v0 + 736);
    v139 = *(v0 + 744);
    v137 = *(v0 + 812);
    v136 = *(v0 + 728);
    v133 = *(v0 + 712);
    v134 = *(v0 + 720);
    v132 = *(v0 + 808);
    v131 = *(v0 + 704);
    v129 = *(v0 + 688);
    v130 = *(v0 + 696);
    v124 = *(v0 + 672);
    v125 = *(v0 + 680);
    v123 = *(v0 + 804);
    v119 = *(v0 + 664);
    v115 = *(v0 + 648);
    v116 = *(v0 + 656);
    v114 = *(v0 + 800);
    v113 = *(v0 + 640);
    v146 = *(v0 + 616);
    v147 = *(v0 + 624);
    v140 = *(v0 + 600);
    v141 = *(v0 + 608);
    v144 = *(v0 + 560);
    v145 = *(v0 + 568);
    v104 = *(v3 + 48);
    v109 = *(v0 + 512);
    v110 = *(v0 + 504);
    v111 = *(v0 + 488);
    v112 = *(v0 + 528);
    v127 = *(v0 + 480);
    v128 = *(v0 + 464);
    v117 = *(v0 + 456);
    v118 = *(v0 + 552);
    v120 = *(v0 + 536);
    v121 = *(v0 + 440);
    v122 = *(v0 + 432);
    v126 = *(v0 + 416);
    v4 = *(v0 + 392);
    v105 = *(v0 + 400);
    v106 = *(v0 + 384);
    v107 = *(v0 + 408);
    v148 = *(v0 + 368);
    v135 = *(v0 + 360);
    v5 = *(v0 + 352);
    v102 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v10 = sub_22C3749E4();
    v11 = v1(v10);
    v19 = sub_22C37734C(v11, v12, v13, v14, v15, v16, v17, v18, v97);
    (v3)(v19);
    v20 = sub_22C3F4910();
    v21 = v1(v20);
    v29 = sub_22C37B538(v21, v22, v23, v24, v25, v26, v27, v28, v98, v100, v102);
    (v3)(v29);
    v30 = v105;
    v31 = sub_22C90321C();
    v39 = sub_22C3F48A8(v31, v32, v33, v34, v35, v36, v37, v38, v99, v101, v103, v104, v105, v106, v107);
    v40(v39);
    v41 = *(v4 + 32);
    v42 = sub_22C3F4864();
    v43(v42);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    sub_22C382F1C(inited, xmmword_22C90F800);
    v45 = sub_22C909D9C();
    v46 = MEMORY[0x277D42E20];
    inited[4].n128_u64[1] = v45;
    inited[5].n128_u64[0] = v46;
    v47 = sub_22C36D548(&inited[3]);
    (*(*(v45 - 8) + 16))(v47, v108, v45);
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_22C90F870;
    sub_22C3F4874(v48, "_OverrideConfigurationHelper.renderedPromptSanitizer(.init(overrides:.withoutDefault(nil),guardrails:.withoutDefault(nil)))");
    v49 = sub_22C369B68();
    sub_22C36C640(v49, v50, v51, v52);
    v115(v112, v114, v109);
    sub_22C36A748();
    sub_22C36C640(v53, v54, v55, v119);
    v124(v110, v123, v111);
    sub_22C37EB94();
    *(v48 + 72) = v120;
    sub_22C36D548((v48 + 48));
    sub_22C901CFC();
    v56 = sub_22C36D264();
    v129(v56);
    *(v48 + 80) = v30;
    *(v48 + 88) = 0x800000022C930280;
    sub_22C36A748();
    sub_22C36C640(v57, v58, v59, v131);
    v60 = sub_22C3F48D4();
    v61(v60);
    v62 = sub_22C369B68();
    sub_22C36C640(v62, v63, v64, v136);
    v65 = sub_22C3F48E8();
    v66(v65);
    sub_22C36D264();
    sub_22C901C5C();
    *(v48 + 120) = v128;
    sub_22C36D548((v48 + 96));
    sub_22C901CDC();
    v67 = sub_22C36BAFC();
    v142(v67);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3765E4();

    v68 = sub_22C3819AC();
    v69(v68);
    v70 = sub_22C3F48C0();
    v71(v70);
    v72 = sub_22C3F4890();
    v73(v72);
    v74 = *(v145 + 32);
    v75 = sub_22C3F4864();
    v76(v75);
  }

  v77 = *(v0 + 632);
  v78 = *(v0 + 624);
  v79 = *(v0 + 616);
  v80 = *(v0 + 608);
  v81 = *(v0 + 600);
  v82 = *(v0 + 560);
  v83 = *(v0 + 408);
  v84 = *(v0 + 296);
  v85 = *(v0 + 272);
  sub_22C909DCC();
  *(v0 + 232) = v85;
  sub_22C90194C();
  sub_22C37F720();
  v86 = sub_22C36D264();
  v79(v86);
  v87 = sub_22C9018DC();
  v88 = *(MEMORY[0x277D0D8D0] + 4);
  v89 = swift_task_alloc();
  *(v0 + 784) = v89;
  sub_22C372660();
  v92 = sub_22C3F4780(v90, v91);
  *v89 = v0;
  v89[1] = sub_22C3F2348;
  v93 = *(v0 + 296);
  v94 = *(v0 + 280);
  v95 = *(v0 + 240);

  return MEMORY[0x282165A60](v95, v87, v94, v92);
}

uint64_t sub_22C3F2348()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[98];
  *v4 = *v1;
  *(v3 + 792) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C3F24A4()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[72];
  v8 = v0[70];
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[63];
  v14 = v0[60];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[38];
  v23 = v0[37];
  (*(v0[49] + 8))(v0[51], v0[48]);
  v2(v3, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C3F2644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v24 = sub_22C37FC6C();
  v25(v24);
  v26 = sub_22C36BBCC();
  v23(v26);
  v27 = *(v22 + 776);
  sub_22C3715C4();

  sub_22C3F4854();
  sub_22C381608();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v24 = sub_22C37FC6C();
  v25(v24);
  v26 = sub_22C36BBCC();
  v23(v26);
  v27 = *(v22 + 792);
  sub_22C3715C4();

  sub_22C3F4854();
  sub_22C381608();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F2854()
{
  v0 = sub_22C909D9C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D42E18];
  sub_22C909D0C();
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v7 = *(v1 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22C90F800;
  (*(v2 + 16))(v9 + v8, v5, v0);
  MEMORY[0x2318B71C0](v9, v0, v6);

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_22C3F29DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  v7 = sub_22C3A5908(&qword_27D9BBC68, &unk_22C9113B0);
  v6[36] = v7;
  v8 = *(v7 - 8);
  v6[37] = v8;
  v9 = *(v8 + 64) + 15;
  v6[38] = swift_task_alloc();
  v10 = *(*(sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9BBC78, &unk_22C9113C0);
  v6[40] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v13 = sub_22C90322C();
  v6[42] = v13;
  v14 = *(v13 - 8);
  v6[43] = v14;
  v15 = *(v14 + 64) + 15;
  v6[44] = swift_task_alloc();
  v16 = sub_22C90323C();
  v6[45] = v16;
  v17 = *(v16 - 8);
  v6[46] = v17;
  v18 = *(v17 + 64) + 15;
  v6[47] = swift_task_alloc();
  v19 = *(*(sub_22C3A5908(&qword_27D9BBC80, &qword_22C92C220) - 8) + 64) + 15;
  v6[48] = swift_task_alloc();
  v20 = sub_22C90630C();
  v6[49] = v20;
  v21 = *(v20 - 8);
  v6[50] = v21;
  v22 = *(v21 + 64) + 15;
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v23 = sub_22C901C2C();
  v6[53] = v23;
  v24 = *(v23 - 8);
  v6[54] = v24;
  v25 = *(v24 + 64) + 15;
  v6[55] = swift_task_alloc();
  v26 = sub_22C901C1C();
  v6[56] = v26;
  v27 = *(v26 - 8);
  v6[57] = v27;
  v28 = *(v27 + 64) + 15;
  v6[58] = swift_task_alloc();
  v29 = sub_22C901C6C();
  v6[59] = v29;
  v30 = *(v29 - 8);
  v6[60] = v30;
  v31 = *(v30 + 64) + 15;
  v6[61] = swift_task_alloc();
  v32 = sub_22C901D2C();
  v6[62] = v32;
  v33 = *(v32 - 8);
  v6[63] = v33;
  v34 = *(v33 + 64) + 15;
  v6[64] = swift_task_alloc();
  v35 = sub_22C901D1C();
  v6[65] = v35;
  v36 = *(v35 - 8);
  v6[66] = v36;
  v37 = *(v36 + 64) + 15;
  v6[67] = swift_task_alloc();
  v38 = sub_22C901D5C();
  v6[68] = v38;
  v39 = *(v38 - 8);
  v6[69] = v39;
  v40 = *(v39 + 64) + 15;
  v6[70] = swift_task_alloc();
  v41 = sub_22C909CCC();
  v6[71] = v41;
  v42 = *(v41 - 8);
  v6[72] = v42;
  v43 = *(v42 + 64) + 15;
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3F2F3C, 0, 0);
}

uint64_t sub_22C3F2F3C()
{
  v70 = *(v0 + 624);
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  v57 = *(v0 + 552);
  v58 = *(v0 + 616);
  v59 = *(v0 + 544);
  v50 = *(v0 + 608);
  v51 = *(v0 + 536);
  v6 = *(v0 + 528);
  v52 = *(v0 + 520);
  v53 = *(v0 + 512);
  v54 = *(v0 + 504);
  v55 = *(v0 + 496);
  v56 = *(v0 + 560);
  v66 = *(v0 + 488);
  v67 = *(v0 + 480);
  v69 = *(v0 + 472);
  v60 = *(v0 + 464);
  v61 = *(v0 + 456);
  v62 = *(v0 + 448);
  v63 = *(v0 + 440);
  v64 = *(v0 + 432);
  v65 = *(v0 + 424);
  v68 = *(v0 + 384);
  v71 = *(v0 + 416);
  v48 = *(v0 + 264);
  v49 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v8;
  sub_22C909CDC();

  sub_22C36BBB4();
  *(v0 + 632) = sub_22C3F4780(v9, v10);
  sub_22C37B1F8();
  sub_22C909E7C();
  v11 = *(v4 + 8);
  *(v0 + 640) = v11;
  *(v0 + 648) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  sub_22C3ED2AC(v48, v1);
  v11(v2, v5);
  sub_22C90065C();
  sub_22C909DDC();

  v11(v1, v5);
  *(v0 + 656) = sub_22C901D3C();
  sub_22C36A748();
  sub_22C36C640(v12, v13, v14, v15);
  *(v0 + 816) = *MEMORY[0x277D0E5C0];
  v16 = *(v6 + 104);
  *(v0 + 664) = v16;
  *(v0 + 672) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v51);
  *(v0 + 680) = sub_22C901D0C();
  sub_22C36A748();
  sub_22C36C640(v17, v18, v19, v20);
  *(v0 + 820) = *MEMORY[0x277D0E5C8];
  *(v0 + 688) = *(v54 + 104);
  sub_22C3700D4();
  *(v0 + 696) = v21;
  v22(v53);
  sub_22C901D4C();
  sub_22C37B1F8();
  sub_22C909DEC();
  *(v0 + 704) = *(v57 + 8);
  sub_22C380478();
  *(v0 + 712) = v23;
  v24(v56, v59);
  v11(v50, v5);
  *(v0 + 720) = sub_22C901C4C();
  sub_22C36A748();
  sub_22C36C640(v25, v26, v27, v28);
  *(v0 + 824) = *MEMORY[0x277D0E578];
  *(v0 + 728) = *(v61 + 104);
  sub_22C3700D4();
  *(v0 + 736) = v29;
  v30(v60);
  *(v0 + 744) = sub_22C901BDC();
  sub_22C36A748();
  sub_22C36C640(v31, v32, v33, v34);
  *(v0 + 828) = *MEMORY[0x277D0E580];
  *(v0 + 752) = *(v64 + 104);
  sub_22C3700D4();
  *(v0 + 760) = v35;
  v36(v63);
  sub_22C901C5C();
  sub_22C37B1F8();
  sub_22C909E2C();
  *(v0 + 768) = *(v67 + 8);
  sub_22C380478();
  *(v0 + 776) = v37;
  v38(v66, v69);
  v11(v58, v5);
  sub_22C9062FC();
  sub_22C36A748();
  sub_22C36C640(v39, v40, v41, v42);
  sub_22C3758BC();
  v43 = *(MEMORY[0x277D0E538] + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 784) = v44;
  *v44 = v45;
  v44[1] = sub_22C3F33E4;
  v46 = *(v0 + 312);
  sub_22C3F48FC();

  return MEMORY[0x282166B58]();
}

uint64_t sub_22C3F33E4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 784);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 792) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C3F34E0()
{
  v2 = *(v0 + 312);
  v3 = sub_22C3A5908(&qword_27D9BBC88, &unk_22C9113D0);
  if (sub_22C370B74(v2, 1, v3) == 1)
  {
    sub_22C3F4718(v2);
  }

  else
  {
    v140 = *(v0 + 768);
    v141 = *(v0 + 776);
    v136 = *(v0 + 752);
    v137 = *(v0 + 760);
    v135 = *(v0 + 828);
    v134 = *(v0 + 744);
    v131 = *(v0 + 728);
    v132 = *(v0 + 736);
    v130 = *(v0 + 824);
    v129 = *(v0 + 720);
    v127 = *(v0 + 704);
    v128 = *(v0 + 712);
    v122 = *(v0 + 688);
    v123 = *(v0 + 696);
    v120 = *(v0 + 820);
    v117 = *(v0 + 680);
    v113 = *(v0 + 664);
    v114 = *(v0 + 672);
    v112 = *(v0 + 816);
    v111 = *(v0 + 656);
    v144 = *(v0 + 640);
    v145 = *(v0 + 648);
    v138 = *(v0 + 616);
    v139 = *(v0 + 624);
    v142 = *(v0 + 568);
    v143 = *(v0 + 576);
    v109 = *(v0 + 536);
    v110 = *(v0 + 520);
    v107 = *(v0 + 512);
    v108 = *(v0 + 496);
    v125 = *(v0 + 488);
    v126 = *(v0 + 472);
    v115 = *(v0 + 464);
    v116 = *(v0 + 560);
    v118 = *(v0 + 544);
    v119 = *(v0 + 448);
    v121 = *(v0 + 440);
    v124 = *(v0 + 424);
    v4 = *(v0 + 400);
    v102 = *(v3 + 48);
    v103 = *(v0 + 408);
    v104 = *(v0 + 392);
    v105 = *(v0 + 416);
    v146 = *(v0 + 376);
    v133 = *(v0 + 368);
    v5 = *(v0 + 360);
    v100 = *(v0 + 352);
    v6 = *(v0 + 336);
    v7 = *(v0 + 344);
    v8 = *(v0 + 320);
    v9 = *(v0 + 328);
    v10 = sub_22C3749E4();
    v11 = v1(v10);
    v19 = sub_22C37734C(v11, v12, v13, v14, v15, v16, v17, v18, v95);
    (v3)(v19);
    v20 = sub_22C3F4910();
    v21 = v1(v20);
    v29 = sub_22C37B538(v21, v22, v23, v24, v25, v26, v27, v28, v96, v98, v100);
    (v3)(v29);
    v30 = v103;
    v31 = sub_22C90321C();
    v39 = sub_22C3F48A8(v31, v32, v33, v34, v35, v36, v37, v38, v97, v99, v101, v102, v103, v104, v105);
    v40(v39);
    v41 = *(v4 + 32);
    v42 = sub_22C3F4864();
    v43(v42);
    sub_22C3A5908(&qword_27D9BBBB0, &qword_22C9110E8);
    inited = swift_initStackObject();
    sub_22C382F1C(inited, xmmword_22C90F800);
    v45 = sub_22C90444C();
    inited[4].n128_u64[1] = v45;
    inited[5].n128_u64[0] = sub_22C3F4780(&qword_27D9BBC98, MEMORY[0x277D0E698]);
    v46 = sub_22C36D548(&inited[3]);
    (*(*(v45 - 8) + 16))(v46, v106, v45);
    sub_22C3A5908(&qword_27D9BBBB8, &unk_22C9110F0);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3A5908(&qword_27D9BBCA0, &qword_22C9120F0);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_22C90F870;
    sub_22C3F4874(v47, "_OverrideConfigurationHelper.renderedPromptSanitizer(.init(overrides:.withoutDefault(nil),guardrails:.withoutDefault(nil)))");
    v48 = sub_22C369B68();
    sub_22C36C640(v48, v49, v50, v111);
    v113(v109, v112, v110);
    sub_22C36A748();
    sub_22C36C640(v51, v52, v53, v117);
    v122(v107, v120, v108);
    sub_22C37EB94();
    *(v47 + 72) = v118;
    sub_22C36D548((v47 + 48));
    sub_22C901CFC();
    v54 = sub_22C36D264();
    v127(v54);
    *(v47 + 80) = v30;
    *(v47 + 88) = 0x800000022C930280;
    sub_22C36A748();
    sub_22C36C640(v55, v56, v57, v129);
    v58 = sub_22C3F48D4();
    v59(v58);
    v60 = sub_22C369B68();
    sub_22C36C640(v60, v61, v62, v134);
    v63 = sub_22C3F48E8();
    v64(v63);
    sub_22C36D264();
    sub_22C901C5C();
    *(v47 + 120) = v126;
    sub_22C36D548((v47 + 96));
    sub_22C901CDC();
    v65 = sub_22C36BAFC();
    v140(v65);
    sub_22C380120();
    sub_22C909F0C();
    sub_22C3765E4();

    v66 = sub_22C3819AC();
    v67(v66);
    v68 = sub_22C3F48C0();
    v69(v68);
    v70 = sub_22C3F4890();
    v71(v70);
    v72 = *(v143 + 32);
    v73 = sub_22C3F4864();
    v74(v73);
  }

  v75 = *(v0 + 648);
  v76 = *(v0 + 640);
  v77 = *(v0 + 632);
  v78 = *(v0 + 624);
  v79 = *(v0 + 616);
  v80 = *(v0 + 568);
  v81 = *(v0 + 416);
  v82 = *(v0 + 304);
  v83 = *(v0 + 280);
  sub_22C909DCC();
  *(v0 + 232) = v83;
  sub_22C90194C();
  sub_22C37F720();
  v84 = sub_22C36D264();
  v76(v84);
  v85 = sub_22C9018DC();
  v86 = *(MEMORY[0x277D0D8D0] + 4);
  v87 = swift_task_alloc();
  *(v0 + 800) = v87;
  sub_22C372660();
  v90 = sub_22C3F4780(v88, v89);
  *v87 = v0;
  v87[1] = sub_22C3F3A88;
  v91 = *(v0 + 304);
  v92 = *(v0 + 288);
  v93 = *(v0 + 240);

  return MEMORY[0x282165A60](v93, v85, v92, v90);
}

uint64_t sub_22C3F3A88()
{
  sub_22C36FB38();
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = v2[100];
  *v4 = *v1;
  *(v3 + 808) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C3F3BE4()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[71];
  v11 = v0[73];
  v12 = v0[70];
  v13 = v0[67];
  v14 = v0[64];
  v15 = v0[61];
  v16 = v0[58];
  v17 = v0[55];
  v18 = v0[51];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[44];
  v22 = v0[41];
  v23 = v0[39];
  v24 = v0[38];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v2(v3, v8);

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C3F3D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v24 = sub_22C379F64();
  v25(v24);
  v26 = sub_22C36BBCC();
  v23(v26);
  v27 = *(v22 + 792);
  sub_22C3F47E8();

  sub_22C3F4854();
  sub_22C381608();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  sub_22C38610C();
  v24 = sub_22C379F64();
  v25(v24);
  v26 = sub_22C36BBCC();
  v23(v26);
  v27 = *(v22 + 808);
  sub_22C3F47E8();

  sub_22C3F4854();
  sub_22C381608();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C3F3FAC(uint64_t a1)
{
  v2 = sub_22C909D9C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90444C();
  v16[3] = v8;
  v16[4] = sub_22C3F4780(&qword_27D9BBC98, MEMORY[0x277D0E698]);
  v9 = sub_22C36D548(v16);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  v10 = MEMORY[0x277D42E18];
  sub_22C909CFC();
  sub_22C36FF94(v16);
  sub_22C3A5908(&qword_27D9BBCA8, &qword_22C9113E0);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v13 + v12, v7, v2);
  MEMORY[0x2318B71C0](v13, v2, v10);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_22C3F41D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3F47E4;

  return sub_22C3F08EC();
}

uint64_t sub_22C3F429C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3F4378;

  return sub_22C3F0DF0();
}

uint64_t sub_22C3F4378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C369A3C();
  v11 = *(v10 + 16);
  v12 = *v5;
  sub_22C369970();
  *v13 = v12;

  v18 = *(v12 + 8);
  if (!v4)
  {
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
  }

  return v18(v14, v15, v16, v17);
}

uint64_t sub_22C3F4494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C3F44AC()
{
  sub_22C369980();
  sub_22C3F9FDC(v0[2], v0[3], v0[4]);
  v1 = sub_22C37052C();

  return v2(v1);
}

uint64_t sub_22C3F4508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  return sub_22C36A77C();
}

uint64_t sub_22C3F4520()
{
  sub_22C369980();
  sub_22C3FA19C(v0[2], v0[3], v0[4], v0[5]);
  v1 = sub_22C37052C();

  return v2(v1);
}

uint64_t sub_22C3F457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22C3F47E4;

  return sub_22C3F4494(a1, v10, v11, a4, a5);
}

uint64_t sub_22C3F4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_22C3F47E4;

  return sub_22C3F4508(a1, a2, v12, v13, a5, a6);
}

uint64_t sub_22C3F4718(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BBC70, &unk_22C92C210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3F4780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C3F47E8()
{
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[70];
  v9 = v0[67];
  v10 = v0[64];
  v11 = v0[61];
  v13 = v0[58];
  v14 = v0[55];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[48];
  v18 = v0[47];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[39];
  v22 = v0[38];
}

uint64_t sub_22C3F4854()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C3F4874@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD00000000000007BLL;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_22C3F4890()
{
  result = v0;
  v3 = *(v1 - 120);
  v5 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_22C3F48D4()
{
  result = v0;
  v3 = *(v1 - 212);
  v5 = *(v1 - 208);
  v4 = *(v1 - 200);
  return result;
}

uint64_t sub_22C3F48E8()
{
  result = v0;
  v3 = *(v1 - 172);
  v5 = *(v1 - 168);
  v4 = *(v1 - 160);
  return result;
}

__n128 sub_22C3F4924(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C3F4938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_22C3F4978(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22C3F49D4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_22C374168(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_22C3F4A28()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_22C374168(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22C3F4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C3F4A98()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v1 + 40);
  sub_22C59A450();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_22C374168(v1, v4);
  v6 = *(v5 + 24);
  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22C3F4BD8;
  v9 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];

  return v14(v12, v11, v9, v10, v4, v5);
}