uint64_t sub_21A212184()
{
  type metadata accessor for CookingModePopoverTipViewModifier();

  return sub_21A2112C8();
}

uint64_t sub_21A2121F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CookingModeTipState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A212294(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD01720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A2122FC()
{
  result = qword_27CD01730;
  if (!qword_27CD01730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01730);
  }

  return result;
}

unint64_t sub_21A212350()
{
  result = qword_27CD01780;
  if (!qword_27CD01780)
  {
    sub_21A176D98(&qword_27CD01778);
    sub_21A1772F8(&qword_27CD01788, &qword_27CD01768);
    sub_21A212408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01780);
  }

  return result;
}

unint64_t sub_21A212408()
{
  result = qword_27CD01790;
  if (!qword_27CD01790)
  {
    sub_21A176D98(&qword_27CD01760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01790);
  }

  return result;
}

unint64_t sub_21A21248C()
{
  result = qword_27CD017A0;
  if (!qword_27CD017A0)
  {
    sub_21A176D98(&qword_27CD01728);
    sub_21A176D98(&qword_27CD016F8);
    sub_21A176D98(&qword_27CD016F0);
    sub_21A176D98(&qword_27CD016E8);
    sub_21A176D98(&qword_27CD01708);
    sub_21A1772F8(&qword_27CD01710, &qword_27CD01708);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD017A8, &qword_27CD017B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD017A0);
  }

  return result;
}

uint64_t type metadata accessor for IngredientsColumnsView()
{
  result = qword_27CD017C0;
  if (!qword_27CD017C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A212700()
{
  sub_21A212774();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A212774()
{
  if (!qword_27CD017D0)
  {
    type metadata accessor for IngredientsViewModel(255);
    sub_21A212BC0(&qword_27CCFFA78);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD017D0);
    }
  }
}

uint64_t sub_21A212810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for IngredientStackView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v33 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v33 - v12);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v33 - v16);
  sub_21A176C98(&qword_27CD017B8);
  sub_21A2F7714();
  v34 = sub_21A1B0BA4();
  v36 = v18;

  v19 = sub_21A2F7714();
  v20 = sub_21A2F7714();
  swift_getKeyPath();
  v40 = v20;
  v35 = sub_21A212BC0(&qword_27CCFFA20);
  sub_21A2F5094();

  sub_21A177CF4(v20 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, v17 + v4[8]);

  v21 = *(a1 + *(type metadata accessor for IngredientsColumnsView() + 20));
  v22 = v34;
  *v17 = v19;
  v17[1] = v22;
  *(v17 + v4[9]) = v21;
  sub_21A2F6864();
  v23 = v4[11];
  *(v17 + v23) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFED70);
  swift_storeEnumTagMultiPayload();
  v24 = sub_21A2F7714();
  v25 = sub_21A2F7714();
  swift_getKeyPath();
  v40 = v25;
  sub_21A2F5094();

  sub_21A177CF4(v25 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, v13 + v4[8]);

  v26 = v36;
  *v13 = v24;
  v13[1] = v26;
  *(v13 + v4[9]) = v21;
  sub_21A2F6864();
  v27 = v4[11];
  *(v13 + v27) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v28 = v37;
  sub_21A212C04(v17, v37);
  v29 = v38;
  sub_21A212C04(v13, v38);
  v30 = v39;
  sub_21A212C04(v28, v39);
  v31 = sub_21A176C98(&qword_27CD017E0);
  sub_21A212C04(v29, v30 + *(v31 + 48));
  sub_21A212C68(v13);
  sub_21A212C68(v17);
  sub_21A212C68(v29);
  return sub_21A212C68(v28);
}

uint64_t sub_21A212B6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A2F5F24();
  *(a1 + 8) = 0x4044000000000000;
  *(a1 + 16) = 0;
  v3 = sub_21A176C98(&qword_27CD017D8);
  return sub_21A212810(v1, a1 + *(v3 + 44));
}

uint64_t sub_21A212BC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IngredientsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A212C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IngredientStackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A212C68(uint64_t a1)
{
  v2 = type metadata accessor for IngredientStackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A212CC4()
{
  result = qword_27CD017E8;
  if (!qword_27CD017E8)
  {
    sub_21A176D98(&qword_27CD017F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD017E8);
  }

  return result;
}

uint64_t sub_21A212D38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAA8);
  result = sub_21A2F51B4();
  if (v7)
  {
    v4 = type metadata accessor for DebugInfoProvider();
    v5 = swift_allocObject();
    result = sub_21A14274C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282B36770;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RecipeSourceType.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for RecipeSourceType();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A212F48(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = EnumCaseMultiPayload;
    result = 0;
    if (v11 == 1)
    {
      sub_21A2147C0(v9, v5, type metadata accessor for ExternalRecipeSource);
      v13 = *v5;
      sub_21A2F5434();
      sub_21A214760(v5, type metadata accessor for ExternalRecipeSource);
      return v13;
    }
  }

  else
  {
    sub_21A214760(v9, type metadata accessor for RecipeSourceType);
    return 0;
  }

  return result;
}

uint64_t sub_21A212F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeSourceType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A212FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeSourceType();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A212F48(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A2147C0(v11, v7, type metadata accessor for ExternalRecipeSource);
      sub_21A17FE58(&v7[*(v4 + 28)], a1);
      return sub_21A214760(v7, type metadata accessor for ExternalRecipeSource);
    }
  }

  else
  {
    sub_21A214760(v11, type metadata accessor for RecipeSourceType);
  }

  v14 = type metadata accessor for ImageAsset(0);
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_21A213150()
{
  v1 = 0x6C616E7265747865;
  if (*v0 != 1)
  {
    v1 = 0x6775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6448503;
  }
}

uint64_t sub_21A2131A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A214C78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A2131C8(uint64_t a1)
{
  v2 = sub_21A214610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A213204(uint64_t a1)
{
  v2 = sub_21A214610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A213240(uint64_t a1)
{
  v2 = sub_21A214664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21327C(uint64_t a1)
{
  v2 = sub_21A214664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2132C4(uint64_t a1)
{
  v2 = sub_21A2146B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A213300(uint64_t a1)
{
  v2 = sub_21A2146B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21333C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A2133BC(uint64_t a1)
{
  v2 = sub_21A21470C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2133F8(uint64_t a1)
{
  v2 = sub_21A21470C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeSourceType.encode(to:)(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD01818);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = &v35 - v4;
  v5 = sub_21A176C98(&qword_27CD01820);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v41 = &v35 - v7;
  v38 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v38, v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A176C98(&qword_27CD01828);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  v35 = type metadata accessor for WebRecipeSource();
  MEMORY[0x28223BE20](v35, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RecipeSourceType();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21A176C98(&qword_27CD01830);
  v21 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v22);
  v24 = &v35 - v23;
  sub_21A142764(a1, a1[3]);
  sub_21A214610();
  sub_21A2F84B4();
  sub_21A212F48(v46, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v39;
      sub_21A2147C0(v20, v39, type metadata accessor for ExternalRecipeSource);
      v49 = 1;
      sub_21A2146B8();
      v27 = v41;
      v28 = v47;
      sub_21A2F82A4();
      sub_21A214828(&qword_27CD01850, type metadata accessor for ExternalRecipeSource);
      v29 = v45;
      sub_21A2F8324();
      (*(v44 + 8))(v27, v29);
      sub_21A214760(v26, type metadata accessor for ExternalRecipeSource);
      return (*(v21 + 8))(v24, v28);
    }

    else
    {
      v50 = 2;
      sub_21A214664();
      v33 = v40;
      v34 = v47;
      sub_21A2F82A4();
      (*(v42 + 8))(v33, v43);
      return (*(v21 + 8))(v24, v34);
    }
  }

  else
  {
    sub_21A2147C0(v20, v16, type metadata accessor for WebRecipeSource);
    v48 = 0;
    sub_21A21470C();
    v31 = v47;
    sub_21A2F82A4();
    sub_21A214828(&qword_27CD01860, type metadata accessor for WebRecipeSource);
    v32 = v37;
    sub_21A2F8324();
    (*(v36 + 8))(v13, v32);
    sub_21A214760(v16, type metadata accessor for WebRecipeSource);
    return (*(v21 + 8))(v24, v31);
  }
}

uint64_t RecipeSourceType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_21A176C98(&qword_27CD01868);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v66 = &v54 - v5;
  v60 = sub_21A176C98(&qword_27CD01870);
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v6);
  v65 = &v54 - v7;
  v8 = sub_21A176C98(&qword_27CD01878);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v54 - v11;
  v64 = sub_21A176C98(&qword_27CD01880);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for RecipeSourceType();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v54 - v26;
  v28 = a1[3];
  v70 = a1;
  sub_21A142764(a1, v28);
  sub_21A214610();
  v29 = v69;
  sub_21A2F8494();
  if (!v29)
  {
    v55 = v23;
    v56 = v19;
    v30 = v65;
    v31 = v66;
    v69 = 0;
    v57 = v27;
    v32 = v16;
    v33 = v67;
    v34 = v64;
    v35 = sub_21A2F8294();
    v36 = (2 * *(v35 + 16)) | 1;
    v71 = v35;
    v72 = v35 + 32;
    v73 = 0;
    v74 = v36;
    v37 = sub_21A207C94();
    v38 = v15;
    if (v37 == 3 || v73 != v74 >> 1)
    {
      v44 = sub_21A2F8064();
      swift_allocError();
      v46 = v45;
      sub_21A176C98(&qword_27CD012F0);
      *v46 = v32;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v68 + 8))(v38, v34);
    }

    else
    {
      if (v37)
      {
        v59 = v32;
        if (v37 == 1)
        {
          v75 = 1;
          sub_21A2146B8();
          v39 = v69;
          sub_21A2F81F4();
          v40 = v68;
          if (!v39)
          {
            v41 = v33;
            type metadata accessor for ExternalRecipeSource();
            sub_21A214828(&qword_27CD01888, type metadata accessor for ExternalRecipeSource);
            v42 = v56;
            v43 = v60;
            sub_21A2F8284();
            (*(v63 + 8))(v30, v43);
            (*(v40 + 8))(v38, v34);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v53 = v57;
            sub_21A2147C0(v42, v57, type metadata accessor for RecipeSourceType);
LABEL_17:
            sub_21A2147C0(v53, v41, type metadata accessor for RecipeSourceType);
            return sub_21A142808(v70);
          }
        }

        else
        {
          v75 = 2;
          sub_21A214664();
          v49 = v69;
          sub_21A2F81F4();
          v40 = v68;
          if (!v49)
          {
            v41 = v33;
            (*(v61 + 8))(v31, v62);
            (*(v40 + 8))(v38, v34);
            swift_unknownObjectRelease();
            v53 = v57;
            swift_storeEnumTagMultiPayload();
            goto LABEL_17;
          }
        }
      }

      else
      {
        v75 = 0;
        sub_21A21470C();
        v48 = v69;
        sub_21A2F81F4();
        if (!v48)
        {
          type metadata accessor for WebRecipeSource();
          v50 = v12;
          sub_21A214828(&qword_27CD01890, type metadata accessor for WebRecipeSource);
          v51 = v55;
          v52 = v58;
          sub_21A2F8284();
          (*(v59 + 8))(v50, v52);
          (*(v68 + 8))(v15, v34);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v57;
          sub_21A2147C0(v51, v57, type metadata accessor for RecipeSourceType);
          v41 = v33;
          goto LABEL_17;
        }

        v40 = v68;
      }

      (*(v40 + 8))(v15, v34);
    }

    swift_unknownObjectRelease();
  }

  return sub_21A142808(v70);
}

BOOL _s10CookingKit16RecipeSourceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebRecipeSource();
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RecipeSourceType();
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v32 - v18);
  v20 = sub_21A176C98(&qword_27CD018F0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v32 - v23;
  v25 = *(v22 + 56);
  sub_21A212F48(a1, &v32 - v23);
  sub_21A212F48(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21A212F48(v24, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      v28 = type metadata accessor for WebRecipeSource;
      v29 = v19;
LABEL_10:
      sub_21A214760(v29, v28);
      goto LABEL_11;
    }

    sub_21A2147C0(&v24[v25], v11, type metadata accessor for WebRecipeSource);
    v30 = *v19 == *v11 && v19[1] == v11[1];
    if (!v30 && (sub_21A2F8394() & 1) == 0 || (sub_21A2F4724() & 1) == 0)
    {
      sub_21A214760(v11, type metadata accessor for WebRecipeSource);
      sub_21A214760(v19, type metadata accessor for WebRecipeSource);
      sub_21A214760(v24, type metadata accessor for RecipeSourceType);
      return 0;
    }

    sub_21A214760(v11, type metadata accessor for WebRecipeSource);
    sub_21A214760(v19, type metadata accessor for WebRecipeSource);
LABEL_20:
    sub_21A214760(v24, type metadata accessor for RecipeSourceType);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_11:
      sub_21A214D8C(v24);
      return 0;
    }

    goto LABEL_20;
  }

  sub_21A212F48(v24, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for ExternalRecipeSource;
    v29 = v16;
    goto LABEL_10;
  }

  sub_21A2147C0(&v24[v25], v7, type metadata accessor for ExternalRecipeSource);
  v27 = _s10CookingKit20ExternalRecipeSourceV2eeoiySbAC_ACtFZ_0(v16, v7);
  sub_21A214760(v7, type metadata accessor for ExternalRecipeSource);
  sub_21A214760(v16, type metadata accessor for ExternalRecipeSource);
  sub_21A214760(v24, type metadata accessor for RecipeSourceType);
  return v27;
}

unint64_t sub_21A214610()
{
  result = qword_27CD01838;
  if (!qword_27CD01838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01838);
  }

  return result;
}

unint64_t sub_21A214664()
{
  result = qword_27CD01840;
  if (!qword_27CD01840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01840);
  }

  return result;
}

unint64_t sub_21A2146B8()
{
  result = qword_27CD01848;
  if (!qword_27CD01848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01848);
  }

  return result;
}

unint64_t sub_21A21470C()
{
  result = qword_27CD01858;
  if (!qword_27CD01858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01858);
  }

  return result;
}

uint64_t sub_21A214760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2147C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A214828(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A2148B4()
{
  result = qword_27CD01898;
  if (!qword_27CD01898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01898);
  }

  return result;
}

unint64_t sub_21A21490C()
{
  result = qword_27CD018A0;
  if (!qword_27CD018A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018A0);
  }

  return result;
}

unint64_t sub_21A214964()
{
  result = qword_27CD018A8;
  if (!qword_27CD018A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018A8);
  }

  return result;
}

unint64_t sub_21A2149BC()
{
  result = qword_27CD018B0;
  if (!qword_27CD018B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018B0);
  }

  return result;
}

unint64_t sub_21A214A14()
{
  result = qword_27CD018B8;
  if (!qword_27CD018B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018B8);
  }

  return result;
}

unint64_t sub_21A214A6C()
{
  result = qword_27CD018C0;
  if (!qword_27CD018C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018C0);
  }

  return result;
}

unint64_t sub_21A214AC4()
{
  result = qword_27CD018C8;
  if (!qword_27CD018C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018C8);
  }

  return result;
}

unint64_t sub_21A214B1C()
{
  result = qword_27CD018D0;
  if (!qword_27CD018D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018D0);
  }

  return result;
}

unint64_t sub_21A214B74()
{
  result = qword_27CD018D8;
  if (!qword_27CD018D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018D8);
  }

  return result;
}

unint64_t sub_21A214BCC()
{
  result = qword_27CD018E0;
  if (!qword_27CD018E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018E0);
  }

  return result;
}

unint64_t sub_21A214C24()
{
  result = qword_27CD018E8;
  if (!qword_27CD018E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018E8);
  }

  return result;
}

uint64_t sub_21A214C78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6448503 && a2 == 0xE300000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A214D8C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD018F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Dependencies.adPlacement.getter()
{
  sub_21A214E54();
  sub_21A214EA8();

  return sub_21A2F7624();
}

unint64_t sub_21A214E54()
{
  result = qword_27CD018F8;
  if (!qword_27CD018F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD018F8);
  }

  return result;
}

unint64_t sub_21A214EA8()
{
  result = qword_27CD01900;
  if (!qword_27CD01900)
  {
    sub_21A176D98(&qword_27CCFF8B0);
    sub_21A20E100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01900);
  }

  return result;
}

uint64_t sub_21A214F2C@<X0>(_BYTE *a1@<X8>)
{
  sub_21A214E54();
  sub_21A214EA8();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t sub_21A214F90()
{
  sub_21A214E54();
  sub_21A214EA8();
  return sub_21A2F7634();
}

uint64_t Dependencies.adPlacement.setter()
{
  sub_21A214E54();
  sub_21A214EA8();
  return sub_21A2F7634();
}

uint64_t (*Dependencies.adPlacement.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_21A214E54();
  a1[2] = sub_21A214EA8();
  sub_21A2F7624();
  return sub_21A2150B4;
}

void sub_21A215148()
{
  sub_21A2151E8();
  if (v0 <= 0x3F)
  {
    sub_21A1AB70C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A2151E8()
{
  if (!qword_27CD01920)
  {
    type metadata accessor for RecipeCardQuickLinksViewModel(255);
    sub_21A218F88(&qword_27CCFF158, type metadata accessor for RecipeCardQuickLinksViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD01920);
    }
  }
}

uint64_t sub_21A215298@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_21A176C98(&qword_27CD01930);
  MEMORY[0x28223BE20](v1, v2);
  v4 = (v24 - v3);
  v5 = sub_21A176C98(&qword_27CD01938);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v24 - v7;
  v9 = sub_21A176C98(&qword_27CD01940);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v24 - v11;
  sub_21A176C98(&qword_27CD01908);
  v13 = sub_21A2F7714();
  swift_getKeyPath();
  v24[3] = v13;
  sub_21A218F88(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v14 = *(v13 + 48);

  if (v14)
  {
    __asm { FMOV            V0.2D, #10.0 }

    *v4 = _Q0;
    sub_21A2155F8(0, 0x100u, v4 + *(v1 + 44));
    v20 = &qword_27CD01930;
    sub_21A183960(v4, v8, &qword_27CD01930);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD01948, &qword_27CD01940);
    sub_21A218FD0();
    sub_21A2F6114();
    v21 = v4;
  }

  else
  {
    *v12 = sub_21A2F5F34();
    *(v12 + 1) = 0x4024000000000000;
    v12[16] = 0;
    v22 = sub_21A176C98(&qword_27CD01978);
    sub_21A2155F8(0x405A000000000000, 0, &v12[*(v22 + 44)]);
    v20 = &qword_27CD01940;
    sub_21A183960(v12, v8, &qword_27CD01940);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD01948, &qword_27CD01940);
    sub_21A218FD0();
    sub_21A2F6114();
    v21 = v12;
  }

  return sub_21A1427A8(v21, v20);
}

uint64_t sub_21A2155F8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v129 = a1;
  v126 = a3;
  v4 = type metadata accessor for RecipeCardQuickLinksView.QuickLink(0);
  v124 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v5);
  v114 = &v106[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21A176C98(&qword_27CCFEBC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v119 = &v106[-v9];
  v10 = type metadata accessor for ShareableRecipe(0);
  v117 = *(v10 - 8);
  v118 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v113 = &v106[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_21A176C98(&qword_27CD01980);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v125 = &v106[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v123 = &v106[-v18];
  v19 = sub_21A176C98(&qword_27CD01988);
  v20 = *(v19 - 8);
  v115 = v19;
  v116 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v109 = &v106[-v22];
  v23 = sub_21A176C98(&qword_27CD01990);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v122 = &v106[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v128 = &v106[-v28];
  v29 = type metadata accessor for RecipeCardQuickLinksView(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29 - 8, v32);
  v33 = &v106[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v106[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = sub_21A2F7894();
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v106[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_21A176C98(&qword_27CD01998);
  v43 = v42 - 8;
  MEMORY[0x28223BE20](v42, v44);
  v121 = &v106[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v106[-v48];
  sub_21A2F7884();
  sub_21A2F4A54();
  v111 = v41;
  v112 = v37;
  v127 = sub_21A2F7934();
  v120 = v50;
  v51 = (v49 + v4[8]);
  sub_21A219174(v3, v33, type metadata accessor for RecipeCardQuickLinksView);
  v52 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v53 = swift_allocObject();
  sub_21A21910C(v33, v53 + v52, type metadata accessor for RecipeCardQuickLinksView);
  *v51 = sub_21A2190D4;
  v51[1] = v53;
  v110 = type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(0);
  swift_storeEnumTagMultiPayload();
  sub_21A176C98(&qword_27CD01908);
  v54 = sub_21A2F7714();
  swift_getKeyPath();
  v132 = v54;
  sub_21A218F88(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  LOBYTE(v52) = *(v54 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable);

  *v49 = swift_getKeyPath();
  v108 = sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v55 = v49 + v4[5];
  v56 = v128;
  *v55 = v129;
  v57 = v130;
  v55[8] = v130;
  v107 = (v57 >> 8) & 1;
  v55[9] = v107;
  v58 = v49 + v4[6];
  *v58 = xmmword_21A305700;
  v59 = 1;
  v58[16] = 1;
  v60 = (v49 + v4[7]);
  v61 = v120;
  *v60 = v127;
  v60[1] = v61;
  v127 = v4;
  v62 = v4[9];
  v63 = v115;
  *(v49 + v62) = v52;
  v64 = *(v43 + 44);
  v120 = v49;
  v65 = v49 + v64;
  swift_getKeyPath();
  sub_21A218F88(&qword_27CD016D0, type metadata accessor for CookingModeTipState);
  sub_21A2F7754();
  v66 = type metadata accessor for CookingModePopoverTipViewModifier();
  v67 = &v65[*(v66 + 24)];
  v131 = 0;
  sub_21A2F7014();
  v68 = v133;
  *v67 = v132;
  *(v67 + 1) = v68;
  v69 = &v65[*(v66 + 28)];
  v131 = 0;
  sub_21A2F7014();
  v70 = v133;
  *v69 = v132;
  *(v69 + 1) = v70;
  v71 = sub_21A2F7714();
  swift_getKeyPath();
  v132 = v71;
  sub_21A2F5094();

  LODWORD(v66) = *(v71 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__savingEnabled);

  if (v66 == 1)
  {
    v72 = v109;
    sub_21A2164BC(v129, v130 & 0x1FF, v109);
    v73 = sub_21A2F73A4();
    v74 = sub_21A2F7714();
    swift_getKeyPath();
    v132 = v74;
    sub_21A2F5094();

    v75 = *(v74 + 49);

    v76 = &v72[*(v63 + 36)];
    *v76 = v73;
    v76[8] = v75;
    sub_21A149B18(v72, v56, &qword_27CD01988);
    v59 = 0;
  }

  (*(v116 + 56))(v56, v59, 1, v63);
  v77 = sub_21A2F7714();
  swift_getKeyPath();
  v132 = v77;
  sub_21A2F5094();

  v78 = v119;
  sub_21A183960(v77 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__shareableRecipe, v119, &qword_27CCFEBC0);

  if ((*(v117 + 48))(v78, 1, v118) == 1)
  {
    sub_21A1427A8(v78, &qword_27CCFEBC0);
    v79 = 1;
    v80 = v123;
    v81 = v127;
  }

  else
  {
    v82 = v113;
    sub_21A21910C(v78, v113, type metadata accessor for ShareableRecipe);
    v119 = 0x800000021A3195F0;
    sub_21A2F7884();
    sub_21A2F4A54();
    v83 = sub_21A2F7934();
    v117 = v84;
    v118 = v83;
    v85 = v114;
    v86 = v114 + *(v127 + 32);
    v87 = (v86 + *(sub_21A176C98(&qword_27CD019A8) + 48));
    sub_21A219174(v82, v86, type metadata accessor for ShareableRecipe);
    v88 = sub_21A2F7714();
    swift_getKeyPath();
    v132 = v88;
    sub_21A2F5094();

    v89 = *(v88 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction);
    v90 = *(v88 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__externalShareAction + 8);
    sub_21A18FD24(v89);

    *v87 = v89;
    v87[1] = v90;
    swift_storeEnumTagMultiPayload();
    v91 = sub_21A2F7714();
    swift_getKeyPath();
    v132 = v91;
    sub_21A2F5094();

    v81 = v127;
    sub_21A219268(v82, type metadata accessor for ShareableRecipe);
    LOBYTE(v87) = *(v91 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable);

    *v85 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v92 = v85 + v81[5];
    *v92 = v129;
    v92[8] = v130;
    v92[9] = v107;
    v93 = v85 + v81[6];
    *v93 = 0xD000000000000013;
    v94 = v118;
    *(v93 + 1) = v119;
    v93[16] = 0;
    v95 = (v85 + v81[7]);
    v96 = v117;
    *v95 = v94;
    v95[1] = v96;
    *(v85 + v81[9]) = v87;
    v97 = v85;
    v80 = v123;
    sub_21A21910C(v97, v123, type metadata accessor for RecipeCardQuickLinksView.QuickLink);
    v79 = 0;
  }

  (*(v124 + 56))(v80, v79, 1, v81);
  v99 = v120;
  v98 = v121;
  sub_21A183960(v120, v121, &qword_27CD01998);
  v100 = v128;
  v101 = v122;
  sub_21A183960(v128, v122, &qword_27CD01990);
  v102 = v125;
  sub_21A183960(v80, v125, &qword_27CD01980);
  v103 = v126;
  sub_21A183960(v98, v126, &qword_27CD01998);
  v104 = sub_21A176C98(&qword_27CD019A0);
  sub_21A183960(v101, v103 + *(v104 + 48), &qword_27CD01990);
  sub_21A183960(v102, v103 + *(v104 + 64), &qword_27CD01980);
  sub_21A1427A8(v80, &qword_27CD01980);
  sub_21A1427A8(v100, &qword_27CD01990);
  sub_21A1427A8(v99, &qword_27CD01998);
  sub_21A1427A8(v102, &qword_27CD01980);
  sub_21A1427A8(v101, &qword_27CD01990);
  return sub_21A1427A8(v98, &qword_27CD01998);
}

uint64_t sub_21A216384()
{
  sub_21A176C98(&qword_27CD01908);
  v0 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A218F88(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 24);
  if (!v1)
  {
  }

  v3 = *(v0 + 16);
  sub_21A14FB78();
  sub_21A2F5434();
  sub_21A2F75E4();

  return sub_21A18FAD4(v3, v1, 0, 0, 2, 0, 0x20u);
}

uint64_t sub_21A2164BC@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v31 = a3;
  v4 = sub_21A176C98(&qword_27CD019B0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v29 = &v28 - v9;
  v10 = sub_21A176C98(&qword_27CD019B8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v28 - v16;
  sub_21A176C98(&qword_27CD01908);
  v18 = sub_21A2F7714();
  swift_getKeyPath();
  v32 = v18;
  sub_21A218F88(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v19 = *(v18 + 49);

  v20 = v28;
  sub_21A2167F4(v19, v28, a2 & 0x1FF, v17);
  v21 = sub_21A2F7714();
  swift_getKeyPath();
  v32 = v21;
  sub_21A2F5094();

  LOBYTE(v19) = *(v21 + 49);

  v22 = a2 & 0x1FF;
  v23 = v29;
  sub_21A2167F4((v19 & 1) == 0, v20, v22, v29);
  sub_21A183960(v17, v13, &qword_27CD019B8);
  v24 = v30;
  sub_21A183960(v23, v30, &qword_27CD019B0);
  v25 = v31;
  sub_21A183960(v13, v31, &qword_27CD019B8);
  v26 = sub_21A176C98(&qword_27CD019C0);
  sub_21A183960(v24, v25 + *(v26 + 48), &qword_27CD019B0);
  sub_21A1427A8(v23, &qword_27CD019B0);
  sub_21A1427A8(v17, &qword_27CD019B8);
  sub_21A1427A8(v24, &qword_27CD019B0);
  return sub_21A1427A8(v13, &qword_27CD019B8);
}

uint64_t sub_21A2167F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v43 = a4;
  v39 = a3;
  v40 = a3;
  v6 = type metadata accessor for RecipeCardQuickLinksView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  v10 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = sub_21A2F7894();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for RecipeCardQuickLinksView.QuickLink(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = a1;
  sub_21A2F7884();
  sub_21A2F4A54();
  v19 = sub_21A2F7934();
  v21 = v20;
  if (a1)
  {
    v22 = 0xED00006C6C69662ELL;
  }

  else
  {
    v22 = 0xE800000000000000;
  }

  v23 = (v18 + v15[8]);
  sub_21A219174(v4, &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardQuickLinksView);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_21A21910C(v10, v25 + v24, type metadata accessor for RecipeCardQuickLinksView);
  *v23 = sub_21A2191DC;
  v23[1] = v25;
  type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(0);
  swift_storeEnumTagMultiPayload();
  sub_21A176C98(&qword_27CD01908);
  v26 = sub_21A2F7714();
  swift_getKeyPath();
  v44 = v26;
  sub_21A218F88(&qword_27CCFF0E0, type metadata accessor for RecipeCardQuickLinksViewModel);
  sub_21A2F5094();

  v27 = *(v26 + OBJC_IVAR____TtC10CookingKit29RecipeCardQuickLinksViewModel__isFocusable);

  *v18 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v28 = v18 + v15[5];
  *v28 = v41;
  v29 = BYTE1(v40);
  v28[8] = v39;
  v28[9] = v29 & 1;
  v30 = v18 + v15[6];
  *v30 = 0x6B72616D6B6F6F62;
  *(v30 + 1) = v22;
  v30[16] = 0;
  v31 = (v18 + v15[7]);
  *v31 = v19;
  v31[1] = v21;
  *(v18 + v15[9]) = v27;
  if (v42)
  {
    sub_21A2F5F54();
    if (qword_27CCFE760 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_21A2F5F54();
  if (qword_27CCFE760 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v32 = qword_27CD23BB8;
  v33 = sub_21A2F69A4();
  v35 = v34;
  v37 = v36;
  sub_21A218F88(&qword_27CD019C8, type metadata accessor for RecipeCardQuickLinksView.QuickLink);
  sub_21A2F6C24();
  sub_21A1834EC(v33, v35, v37 & 1);

  return sub_21A219268(v18, type metadata accessor for RecipeCardQuickLinksView.QuickLink);
}

uint64_t sub_21A216DE4()
{
  sub_21A176C98(&qword_27CD01908);
  sub_21A2F7714();
  sub_21A18E400();
}

uint64_t sub_21A216E38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_21A2F74B4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F7494();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F5B94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21A176C98(&qword_27CD01A30);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v40 - v19);
  v21 = sub_21A176C98(&qword_27CD01A38);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v40 - v23;
  *v20 = sub_21A2F7344();
  v20[1] = v25;
  v26 = sub_21A176C98(&qword_27CD01A40);
  sub_21A217328(v2, v20 + *(v26 + 44));
  sub_21A2F5B84();
  sub_21A1772F8(&qword_27CD01A48, &qword_27CD01A30);
  sub_21A218F88(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
  sub_21A2F6AC4();
  (*(v13 + 8))(v16, v12);
  sub_21A1427A8(v20, &qword_27CD01A30);
  sub_21A2F7484();
  sub_21A2F74A4();
  v27 = &v24[*(sub_21A176C98(&qword_27CD01A50) + 36)];
  sub_21A176C98(&qword_27CD01A58);
  sub_21A218F88(&qword_27CD01A60, MEMORY[0x277CE1598]);
  v28 = v41;
  sub_21A2F5C64();
  (*(v43 + 8))(v6, v44);
  (*(v42 + 8))(v11, v28);
  *v27 = swift_getKeyPath();
  v29 = &v24[*(v21 + 36)];
  v30 = sub_21A176C98(&qword_27CCFEF30);
  sub_21A2F5C44();
  v31 = *(sub_21A2F5BC4() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_21A2F5F64();
  (*(*(v33 - 8) + 104))(&v29[v31], v32, v33);
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  v29[*(v30 + 36)] = 0;
  type metadata accessor for RecipeCardQuickLinksView.QuickLink(0);
  sub_21A21B204();
  sub_21A2F6EB4();
  return sub_21A1427A8(v24, &qword_27CD01A38);
}

uint64_t sub_21A217328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_21A176C98(&qword_27CD01A80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v80 = v73 - v5;
  v90 = sub_21A176C98(&qword_27CD01A88);
  v82 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v6);
  v81 = v73 - v7;
  v87 = sub_21A176C98(&qword_27CD01A90);
  MEMORY[0x28223BE20](v87, v8);
  v89 = v73 - v9;
  v10 = sub_21A176C98(&qword_27CD01A98);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = v73 - v12;
  v13 = sub_21A2F4794();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v85 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21A176C98(&qword_27CD01AA0);
  v79 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v16);
  v78 = v73 - v17;
  v92 = sub_21A176C98(&qword_27CD01AA8);
  MEMORY[0x28223BE20](v92, v18);
  v95 = v73 - v19;
  v94 = sub_21A176C98(&qword_27CD01AB0);
  MEMORY[0x28223BE20](v94, v20);
  v22 = v73 - v21;
  v93 = sub_21A176C98(&qword_27CD01AB8);
  MEMORY[0x28223BE20](v93, v23);
  v86 = v73 - v24;
  v97 = sub_21A176C98(&qword_27CD01AC0);
  MEMORY[0x28223BE20](v97, v25);
  v96 = v73 - v26;
  v27 = type metadata accessor for ShareableRecipe(0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = (v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_21A176C98(&qword_27CD01AC8);
  MEMORY[0x28223BE20](v31, v32);
  v34 = v73 - v33;
  v35 = sub_21A176C98(&qword_27CD01AD0);
  v91 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v38 = v73 - v37;
  v39 = type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for RecipeCardQuickLinksView.QuickLink(0);
  sub_21A219174(a1 + *(v43 + 32), v42, type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v76 = v31;
    v91 = v34;
    v75 = v35;
    v46 = &v42[*(sub_21A176C98(&qword_27CD019A8) + 48)];
    v48 = *v46;
    v47 = v46[1];
    sub_21A21910C(v42, v30, type metadata accessor for ShareableRecipe);
    v74 = v30;
    if (v48)
    {
      sub_21A219174(v30, v22, type metadata accessor for ShareableRecipe);
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v47;
      v50 = v94;
      v51 = *(v94 + 40);

      sub_21A2181FC(&v22[v51]);
      v52 = &v22[*(v50 + 36)];
      *v52 = sub_21A21BD44;
      v52[1] = v49;
      v53 = *(v50 + 44);
      v99 = 0;
      sub_21A176C98(&qword_27CD01BE0);
      sub_21A2F7014();
      *&v22[v53] = v100;
      sub_21A183960(v22, v95, &qword_27CD01AB0);
      swift_storeEnumTagMultiPayload();
      sub_21A1772F8(&qword_27CD01BB8, &qword_27CD01AB0);
      sub_21A21BB34();
      v54 = v96;
      sub_21A2F6114();
      sub_21A1427A8(v22, &qword_27CD01AB0);
      v55 = v91;
    }

    else
    {
      v73[1] = v47;
      v73[0] = 0;
      v58 = v30[4];
      (*(v83 + 16))(v85, v30 + *(v27 + 28), v84);
      v59 = v30[3];
      *&v100 = v30[2];
      *(&v100 + 1) = v59;
      if (v58)
      {
        v60 = v58;
        sub_21A2F5434();
        v99 = sub_21A2F6F84();
        sub_21A21BCCC();
        sub_21A1834FC();
        v61 = sub_21A2F5734();
        MEMORY[0x28223BE20](v61, v62);
        sub_21A176C98(&qword_27CD01AD8);
        sub_21A21B434();
        sub_21A218F88(&qword_27CD01BA0, MEMORY[0x277CC9260]);
        v63 = v81;
        sub_21A2F73F4();
        v64 = v82;
        v65 = v90;
        (*(v82 + 16))(v89, v63, v90);
        swift_storeEnumTagMultiPayload();
        sub_21A1772F8(&qword_27CD01BA8, &qword_27CD01A88);
        sub_21A1772F8(&qword_27CD01BB0, &qword_27CD01AA0);
        v66 = v86;
        sub_21A2F6114();

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        sub_21A1834FC();
        sub_21A2F5434();
        v67 = sub_21A2F5744();
        MEMORY[0x28223BE20](v67, v68);
        sub_21A176C98(&qword_27CD01AD8);
        sub_21A21B434();
        sub_21A218F88(&qword_27CD01BA0, MEMORY[0x277CC9260]);
        v69 = v78;
        sub_21A2F73F4();
        v70 = v79;
        v71 = v88;
        (*(v79 + 16))(v89, v69, v88);
        swift_storeEnumTagMultiPayload();
        sub_21A1772F8(&qword_27CD01BA8, &qword_27CD01A88);
        sub_21A1772F8(&qword_27CD01BB0, &qword_27CD01AA0);
        v66 = v86;
        sub_21A2F6114();
        (*(v70 + 8))(v69, v71);
      }

      v55 = v91;
      sub_21A183960(v66, v95, &qword_27CD01AB8);
      swift_storeEnumTagMultiPayload();
      sub_21A1772F8(&qword_27CD01BB8, &qword_27CD01AB0);
      sub_21A21BB34();
      v72 = v66;
      v54 = v96;
      sub_21A2F6114();
      sub_21A1427A8(v72, &qword_27CD01AB8);
      v48 = v73[0];
    }

    sub_21A183960(v54, v55, &qword_27CD01AC0);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD01BC8, &qword_27CD01AD0);
    sub_21A21BC14();
    sub_21A2F6114();
    sub_21A18EAA0(v48);
    sub_21A1427A8(v54, &qword_27CD01AC0);
    return sub_21A219268(v74, type metadata accessor for ShareableRecipe);
  }

  else
  {
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v45);

    sub_21A176C98(&qword_27CD01AD8);
    sub_21A21B434();
    sub_21A2F7094();
    v56 = v91;
    (*(v91 + 2))(v34, v38, v35);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD01BC8, &qword_27CD01AD0);
    sub_21A21BC14();
    sub_21A2F6114();

    return (*(v56 + 1))(v38, v35);
  }
}

uint64_t sub_21A2181FC@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v121 = sub_21A176C98(&qword_27CD01BE8);
  MEMORY[0x28223BE20](v121, v2);
  v122 = v104 - v3;
  v4 = sub_21A176C98(&qword_27CD01BF0);
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v105 = v104 - v6;
  v120 = sub_21A176C98(&qword_27CD01AF0);
  MEMORY[0x28223BE20](v120, v7);
  v106 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v109 = v104 - v11;
  v12 = sub_21A176C98(&qword_27CD01B60);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = v104 - v15;
  v17 = sub_21A176C98(&qword_27CD01B50);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v111 = v104 - v20;
  v21 = sub_21A176C98(&qword_27CD01B40);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21, v23);
  v113 = v104 - v24;
  v25 = sub_21A176C98(&qword_27CD01B30);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25, v27);
  v112 = v104 - v28;
  v119 = sub_21A176C98(&qword_27CD01B20) - 8;
  MEMORY[0x28223BE20](v119, v29);
  v118 = v104 - v30;
  v117 = sub_21A176C98(&qword_27CD01B10) - 8;
  MEMORY[0x28223BE20](v117, v31);
  v116 = v104 - v32;
  v115 = sub_21A176C98(&qword_27CD01AF8);
  MEMORY[0x28223BE20](v115, v33);
  v114 = v104 - v34;
  v110 = v1;
  v125 = v1;
  v124 = v1;
  sub_21A176C98(&qword_27CD01BF8);
  sub_21A176C98(&qword_27CD01C00);
  sub_21A21BD7C();
  sub_21A21BE00();
  sub_21A2F6FF4();
  v35 = sub_21A2F65F4();
  sub_21A2F55A4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v16[*(sub_21A176C98(&qword_27CD01B70) + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_21A2F5F14();
  v46 = &v16[*(v13 + 44)];
  *v46 = v45;
  v46[1] = sub_21A218D24;
  v46[2] = 0;
  sub_21A2F6004();
  sub_21A2F5F14();
  sub_21A2F5C14();
  v47 = v16;
  v48 = v111;
  sub_21A149B18(v47, v111, &qword_27CD01B60);
  v49 = (v48 + *(v18 + 44));
  v50 = v131;
  v49[4] = v130;
  v49[5] = v50;
  v49[6] = v132;
  v51 = v127;
  *v49 = v126;
  v49[1] = v51;
  v52 = v129;
  v49[2] = v128;
  v49[3] = v52;
  v53 = sub_21A2F6664();
  v54 = (v110 + *(type metadata accessor for RecipeCardQuickLinksView.QuickLink(0) + 20));
  v110 = *v54;
  v104[1] = *(v54 + 8);
  v55 = *(v54 + 9);
  sub_21A2F55A4();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v113;
  sub_21A149B18(v48, v113, &qword_27CD01B50);
  v65 = v64 + *(v22 + 44);
  *v65 = v53;
  *(v65 + 8) = v57;
  *(v65 + 16) = v59;
  *(v65 + 24) = v61;
  *(v65 + 32) = v63;
  *(v65 + 40) = 0;
  v66 = sub_21A2F7344();
  v68 = v67;
  v69 = v112;
  v70 = &v112[*(v26 + 44)];
  *v70 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v71 = *(type metadata accessor for RecipeCardButtonBackgroundView() + 20);
  *(v70 + v71) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v72 = (v70 + *(sub_21A176C98(&qword_27CD01C18) + 36));
  v73 = *(sub_21A2F5BC4() + 20);
  v74 = *MEMORY[0x277CE0118];
  v75 = sub_21A2F5F64();
  v76 = v72 + v73;
  v77 = v114;
  (*(*(v75 - 8) + 104))(v76, v74, v75);
  __asm { FMOV            V0.2D, #10.0 }

  *v72 = _Q0;
  *(v72 + *(sub_21A176C98(&qword_27CCFEF18) + 36)) = 256;
  v83 = (v70 + *(sub_21A176C98(&qword_27CD01B90) + 36));
  *v83 = v66;
  v83[1] = v68;
  sub_21A149B18(v64, v69, &qword_27CD01B40);
  KeyPath = swift_getKeyPath();
  v85 = v118;
  sub_21A149B18(v69, v118, &qword_27CD01B30);
  v86 = v85 + *(v119 + 44);
  *v86 = KeyPath;
  *(v86 + 8) = 1;
  v88 = v115;
  v87 = v116;
  v89 = &v116[*(v117 + 44)];
  v90 = *(sub_21A176C98(&qword_27CCFE918) + 28);
  v91 = *MEMORY[0x277CE1058];
  v92 = sub_21A2F6FC4();
  (*(*(v92 - 8) + 104))(v89 + v90, v91, v92);
  *v89 = swift_getKeyPath();
  sub_21A149B18(v85, v87, &qword_27CD01B20);
  sub_21A2F67B4();
  sub_21A2F6724();
  v93 = sub_21A2F6764();

  v94 = swift_getKeyPath();
  sub_21A149B18(v87, v77, &qword_27CD01B10);
  v95 = (v77 + *(v88 + 36));
  *v95 = v94;
  v95[1] = v93;
  if (v55)
  {
    sub_21A183960(v77, v122, &qword_27CD01AF8);
    swift_storeEnumTagMultiPayload();
    sub_21A21B4C0();
    sub_21A21B5A4();
    sub_21A2F6114();
  }

  else
  {
    sub_21A21B5A4();
    sub_21A21BAE0();
    v96 = v105;
    sub_21A2F6A84();
    sub_21A2F7344();
    sub_21A2F5C14();
    v97 = v106;
    (*(v107 + 32))(v106, v96, v108);
    v98 = (v97 + *(v120 + 36));
    v99 = v138;
    v98[4] = v137;
    v98[5] = v99;
    v98[6] = v139;
    v100 = v134;
    *v98 = v133;
    v98[1] = v100;
    v101 = v136;
    v98[2] = v135;
    v98[3] = v101;
    v102 = v109;
    sub_21A1627B0(v97, v109);
    sub_21A183960(v102, v122, &qword_27CD01AF0);
    swift_storeEnumTagMultiPayload();
    sub_21A21B4C0();
    sub_21A2F6114();
    sub_21A1427A8(v102, &qword_27CD01AF0);
  }

  return sub_21A1427A8(v77, &qword_27CD01AF8);
}

double sub_21A218D24()
{
  sub_21A141A6C(0, &qword_27CD01C20);
  v0 = sub_21A2F7E54();
  [v0 descender];
  v2 = v1;

  v3 = sub_21A2F5F14();
  return MEMORY[0x21CED44B0](v3) - v2;
}

uint64_t sub_21A218DAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecipeCardQuickLinksView.QuickLink(0);
  sub_21A1834FC();
  sub_21A2F5434();
  result = sub_21A2F69B4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_21A218E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for RecipeCardQuickLinksView.QuickLink(0) + 24) + 16))
  {
    v3 = qword_27CCFE760;
    sub_21A2F5434();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_27CD23BB8;
    sub_21A2F6FE4();
  }

  else
  {
    sub_21A2F5434();
    sub_21A2F6F94();
  }

  result = sub_21A2F6114();
  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_21A218F3C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21A2F7344();
  a1[1] = v2;
  v3 = sub_21A176C98(&qword_27CD01928);
  return sub_21A215298(a1 + *(v3 + 44));
}

uint64_t sub_21A218F88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A218FD0()
{
  result = qword_27CD01950;
  if (!qword_27CD01950)
  {
    sub_21A176D98(&qword_27CD01930);
    sub_21A1772F8(&qword_27CD01958, &qword_27CD01960);
    sub_21A1772F8(&qword_27CD01968, &qword_27CD01970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01950);
  }

  return result;
}

uint64_t sub_21A21910C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A219174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2191F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecipeCardQuickLinksView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21A219268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A2192C8()
{
  sub_21A21933C();
  if (v0 <= 0x3F)
  {
    sub_21A219384();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21A21933C()
{
  if (!qword_27CD019E0)
  {
    v0 = sub_21A13DF40();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD019E0);
    }
  }
}

void sub_21A219384()
{
  if (!qword_27CD019E8)
  {
    type metadata accessor for ShareableRecipe(255);
    sub_21A176D98(&qword_27CD019F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CD019E8);
    }
  }
}

void sub_21A21944C()
{
  sub_21A1AB70C(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RecipeCardQuickLinksView.QuickLink.Layout(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RecipeCardQuickLinksView.QuickLink.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RecipeCardQuickLinksView.QuickLink.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_21A219590(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A2195AC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_21A2195E0()
{
  result = qword_27CD01A18;
  if (!qword_27CD01A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01A18);
  }

  return result;
}

uint64_t sub_21A219634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v4 = *(a1 - 8);
  v39 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v33 = *(v6 + 16);
  v8 = v33;
  sub_21A2F70D4();
  swift_getWitnessTable();
  v9 = sub_21A2F7174();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  sub_21A176D98(&qword_27CD01CF8);
  v37 = sub_21A2F5AF4();
  sub_21A176D98(&qword_27CD01D00);
  v13 = sub_21A2F5AF4();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v38 = &v33 - v18;
  v43 = v8;
  v44 = v7;
  v19 = v7;
  v20 = v35;
  v45 = v35;
  sub_21A2F7344();
  sub_21A2F7164();
  v21 = v36;
  (*(v4 + 16))(v36, v20, a1);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v33;
  *(v23 + 24) = v19;
  (*(v4 + 32))(v23 + v22, v21, a1);
  WitnessTable = swift_getWitnessTable();
  v25 = v34;
  sub_21A219F90(sub_21A21DE48, v23, WitnessTable, v34);

  (*(v40 + 8))(v12, v9);
  v26 = sub_21A1772F8(&qword_27CD01D08, &qword_27CD01CF8);
  v48 = WitnessTable;
  v49 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_21A1772F8(&qword_27CD01D10, &qword_27CD01D00);
  v46 = v27;
  v47 = v28;
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_21A1BE5BC(v25, v13, v29);
  v31 = *(v41 + 8);
  v31(v25, v13);
  sub_21A1BE5BC(v30, v13, v29);
  return (v31)(v30, v13);
}

uint64_t sub_21A219AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for ShareableRecipe(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v32 = a2;
  v33 = a3;
  v11 = sub_21A2F70D4();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - v17;
  v19 = type metadata accessor for ExternalShareButton();
  v20 = (a1 + *(v19 + 36));
  v21 = v20[1];
  v31 = *v20;
  v40 = *(a1 + *(v19 + 44));
  sub_21A176C98(&qword_27CD01D40);
  sub_21A2F7024();
  v22 = v39;
  sub_21A219174(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareableRecipe);
  v23 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  v24[2] = v22;
  v24[3] = v25;
  v24[4] = v21;
  sub_21A21910C(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for ShareableRecipe);
  v36 = v32;
  v37 = v33;
  v38 = a1;
  v26 = v22;

  sub_21A2F7094();

  WitnessTable = swift_getWitnessTable();
  sub_21A1BE5BC(v14, v11, WitnessTable);
  v28 = *(v34 + 8);
  v28(v14, v11);
  sub_21A1BE5BC(v18, v11, WitnessTable);
  return (v28)(v18, v11);
}

void sub_21A219DB8(void *a1, void (*a2)(uint64_t, id), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(a4, v6);
  }
}

uint64_t sub_21A219E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExternalShareButton();
  sub_21A1BE5BC(a1 + *(v9 + 40), a2, a3);
  sub_21A1BE5BC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_21A219F1C(void *a1)
{
  type metadata accessor for ExternalShareButton();
  v2 = a1;
  sub_21A176C98(&qword_27CD01D40);
  return sub_21A2F7034();
}

uint64_t sub_21A219F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14[0] = a1;
  v14[1] = a4;
  sub_21A176D98(&qword_27CD01CF8);
  v6 = sub_21A2F5AF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v14 - v9;
  sub_21A2F7344();
  type metadata accessor for SourceViewReader(0);
  sub_21A218F88(&qword_27CD01D18, type metadata accessor for SourceViewReader);
  sub_21A2F6A64();
  v11 = swift_allocObject();
  *(v11 + 16) = v14[0];
  *(v11 + 24) = a2;
  v12 = sub_21A1772F8(&qword_27CD01D08, &qword_27CD01CF8);
  v14[2] = a3;
  v14[3] = v12;

  swift_getWitnessTable();
  sub_21A21DEFC();
  sub_21A21DF50();
  sub_21A2F6C34();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21A21A1E8()
{
  sub_21A141A6C(0, &qword_27CD01D38);

  return sub_21A2F55F4();
}

void sub_21A21A250(id *a1, void (*a2)(void))
{
  if (*a1)
  {
    v3 = *a1;
    a2();
  }
}

uint64_t sub_21A21A2B8@<X0>(void *a1@<X8>)
{
  sub_21A176C98(&qword_27CD01D48);
  sub_21A2F5604();
  result = sub_21A2F5604();
  *a1 = v3;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A21A374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A21E2F8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21A21A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A21E2F8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21A21A43C()
{
  sub_21A21E2F8();
  sub_21A2F60C4();
  __break(1u);
}

uint64_t sub_21A21A464@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v35 = sub_21A2F6354();
  v32 = *(v35 - 8);
  v1 = v32;
  MEMORY[0x28223BE20](v35, v2);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v29 - v6;
  v31 = &v29 - v6;
  v8 = sub_21A2F6334();
  v33 = *(v8 - 8);
  v9 = v33;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v29 - v15;
  sub_21A2F6344();
  sub_21A2F6364();
  v38 = 0;
  v17 = *(v9 + 16);
  v30 = v12;
  v17(v12, v16, v8);
  v37 = 0;
  v29 = *(v1 + 16);
  v18 = v34;
  v19 = v7;
  v20 = v35;
  v29(v34, v19, v35);
  v21 = v38;
  v22 = v36;
  *v36 = 0;
  *(v22 + 8) = v21;
  v23 = sub_21A176C98(&qword_27CD01CF0);
  v17(v22 + v23[12], v12, v8);
  v24 = v22 + v23[16];
  v25 = v37;
  *v24 = 0;
  v24[8] = v25;
  v29(v22 + v23[20], v18, v20);
  v26 = *(v32 + 8);
  v26(v31, v20);
  v27 = *(v33 + 8);
  v27(v16, v8);
  v26(v18, v20);
  return (v27)(v30, v8);
}

uint64_t sub_21A21A728@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A2F6004();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_21A176C98(&qword_27CD01CE8);
  return sub_21A21A464((a1 + *(v2 + 44)));
}

uint64_t (*sub_21A21A85C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A2F5544();
  return sub_21A21A8E4;
}

unint64_t sub_21A21A8EC()
{
  result = qword_27CD01A20;
  if (!qword_27CD01A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01A20);
  }

  return result;
}

uint64_t sub_21A21A940(uint64_t a1, int a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = sub_21A2F5894();
  v10 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v11);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F5934();
  v14 = sub_21A218F88(&qword_27CD01C48, MEMORY[0x277CDF7F8]);
  sub_21A2F7D04();
  result = sub_21A2F7D54();
  if (v75[0] != v76)
  {
    v16 = sub_21A2F7D24();
    v17 = MEMORY[0x277D84F90];
    v71 = a1;
    v70 = a2;
    if (v16)
    {
      v18 = v16;
      v76 = MEMORY[0x277D84F90];
      sub_21A25D874(0, v16 & ~(v16 >> 63), 0);
      v19 = v76;
      v20 = v14;
      v21 = v13;
      v22 = v20;
      result = sub_21A2F7D04();
      if (v18 < 0)
      {
        __break(1u);
        goto LABEL_48;
      }

      v23 = (v10 + 16);
      v24 = (v10 + 8);
      v25 = v21;
      v14 = v22;
      do
      {
        v26 = sub_21A2F7D84();
        v28 = v72;
        v27 = v73;
        (*v23)(v72);
        v26(v75, 0);
        sub_21A2F5BA4();
        LOBYTE(v75[0]) = v29 & 1;
        v74 = v30 & 1;
        sub_21A2F5874();
        v32 = v31;
        v34 = v33;
        (*v24)(v28, v27);
        v76 = v19;
        v35 = a6;
        v37 = *(v19 + 16);
        v36 = *(v19 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21A25D874((v36 > 1), v37 + 1, 1);
          v19 = v76;
        }

        *(v19 + 16) = v37 + 1;
        v38 = v19 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v34;
        sub_21A2F7D64();
        --v18;
        a6 = v35;
      }

      while (v18);
      a1 = v71;
      v17 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      v25 = v13;
    }

    v69 = v14;
    v39 = *(v19 + 16);
    if (v39)
    {
      v73 = v25;
      v40 = v17;
      v75[0] = v17;
      sub_21A25D894(0, v39, 0);
      v41 = v75[0];
      v42 = *(v75[0] + 16);
      v43 = 40;
      v44 = v39;
      do
      {
        v45 = *(v19 + v43);
        v75[0] = v41;
        v46 = *(v41 + 24);
        if (v42 >= v46 >> 1)
        {
          sub_21A25D894((v46 > 1), v42 + 1, 1);
          v41 = v75[0];
        }

        *(v41 + 16) = v42 + 1;
        *(v41 + 8 * v42 + 32) = v45;
        v43 += 16;
        ++v42;
        --v44;
      }

      while (v44);
      v75[0] = v40;
      sub_21A25D894(0, v39, 0);
      v47 = v75[0];
      v48 = *(v75[0] + 16);
      v49 = 32;
      a1 = v71;
      do
      {
        v50 = *(v19 + v49);
        v75[0] = v47;
        v51 = *(v47 + 24);
        if (v48 >= v51 >> 1)
        {
          sub_21A25D894((v51 > 1), v48 + 1, 1);
          v47 = v75[0];
        }

        *(v47 + 16) = v48 + 1;
        *(v47 + 8 * v48 + 32) = v50;
        v49 += 16;
        ++v48;
        --v39;
      }

      while (v39);
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
      v41 = MEMORY[0x277D84F90];
    }

    v52 = *(v47 + 16);
    v53 = 0.0;
    if ((v52 - 1) * a3 < 0.0)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = (v52 - 1) * a3;
    }

    if (v70)
    {
      sub_21A233674(v47);

      sub_21A2F7D04();
      sub_21A2F7D54();
      sub_21A2F7D44();
LABEL_39:
      sub_21A233674(v41);
    }

    if (v52)
    {
      if (v52 <= 3)
      {
        v55 = 0;
LABEL_32:
        v58 = v52 - v55;
        v59 = (v47 + 8 * v55 + 32);
        do
        {
          v60 = *v59++;
          v53 = v53 + v60;
          --v58;
        }

        while (v58);
        goto LABEL_34;
      }

      v55 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      v56 = (v47 + 48);
      v57 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v53 = v53 + *(v56 - 2) + *(v56 - 1) + *v56 + v56[1];
        v56 += 4;
        v57 -= 4;
      }

      while (v57);
      if (v52 != v55)
      {
        goto LABEL_32;
      }
    }

LABEL_34:

    sub_21A2F7D04();
    sub_21A2F7D54();
    result = sub_21A2F7D44();
    if (!__OFSUB__(result, 1))
    {
      v61 = 0.0;
      if (v54 + v53 <= *&a1)
      {
        goto LABEL_39;
      }

      v62 = *(v41 + 16);
      if (!v62)
      {
      }

      if (v62 > 3)
      {
        v63 = v62 & 0x7FFFFFFFFFFFFFFCLL;
        v64 = (v41 + 48);
        v65 = v62 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = v61 + *(v64 - 2) + *(v64 - 1) + *v64 + v64[1];
          v64 += 4;
          v65 -= 4;
        }

        while (v65);
        if (v62 == v63)
        {
        }
      }

      else
      {
        v63 = 0;
      }

      v66 = v62 - v63;
      v67 = (v41 + 8 * v63 + 32);
      do
      {
        v68 = *v67++;
        v61 = v61 + v68;
        --v66;
      }

      while (v66);
    }

LABEL_48:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21A21AFBC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A2F5544();
  return sub_21A21E358;
}

void sub_21A21B044(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_21A21B090()
{
  result = qword_27CD01A28;
  if (!qword_27CD01A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01A28);
  }

  return result;
}

id sub_21A21B100@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *a1 = result;
  return result;
}

uint64_t sub_21A21B13C(uint64_t a1)
{
  v2 = sub_21A2F5C74();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21A2F5D34();
}

unint64_t sub_21A21B204()
{
  result = qword_27CD01A68;
  if (!qword_27CD01A68)
  {
    sub_21A176D98(&qword_27CD01A38);
    sub_21A21B2BC();
    sub_21A1772F8(&qword_27CCFEF48, &qword_27CCFEF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01A68);
  }

  return result;
}

unint64_t sub_21A21B2BC()
{
  result = qword_27CD01A70;
  if (!qword_27CD01A70)
  {
    sub_21A176D98(&qword_27CD01A50);
    sub_21A176D98(&qword_27CD01A30);
    sub_21A2F5B94();
    sub_21A1772F8(&qword_27CD01A48, &qword_27CD01A30);
    sub_21A218F88(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD01A78, &qword_27CD01A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01A70);
  }

  return result;
}

unint64_t sub_21A21B434()
{
  result = qword_27CD01AE0;
  if (!qword_27CD01AE0)
  {
    sub_21A176D98(&qword_27CD01AD8);
    sub_21A21B4C0();
    sub_21A21B5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01AE0);
  }

  return result;
}

unint64_t sub_21A21B4C0()
{
  result = qword_27CD01AE8;
  if (!qword_27CD01AE8)
  {
    sub_21A176D98(&qword_27CD01AF0);
    sub_21A176D98(&qword_27CD01AF8);
    sub_21A21B5A4();
    sub_21A21BAE0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01AE8);
  }

  return result;
}

unint64_t sub_21A21B5A4()
{
  result = qword_27CD01B00;
  if (!qword_27CD01B00)
  {
    sub_21A176D98(&qword_27CD01AF8);
    sub_21A21B65C();
    sub_21A1772F8(&qword_27CCFE948, &qword_27CCFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B00);
  }

  return result;
}

unint64_t sub_21A21B65C()
{
  result = qword_27CD01B08;
  if (!qword_27CD01B08)
  {
    sub_21A176D98(&qword_27CD01B10);
    sub_21A21B714();
    sub_21A1772F8(&qword_27CCFE910, &qword_27CCFE918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B08);
  }

  return result;
}

unint64_t sub_21A21B714()
{
  result = qword_27CD01B18;
  if (!qword_27CD01B18)
  {
    sub_21A176D98(&qword_27CD01B20);
    sub_21A21B7CC();
    sub_21A1772F8(&qword_27CCFF9D8, &qword_27CCFF9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B18);
  }

  return result;
}

unint64_t sub_21A21B7CC()
{
  result = qword_27CD01B28;
  if (!qword_27CD01B28)
  {
    sub_21A176D98(&qword_27CD01B30);
    sub_21A21B884();
    sub_21A1772F8(&qword_27CD01B88, &qword_27CD01B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B28);
  }

  return result;
}

unint64_t sub_21A21B884()
{
  result = qword_27CD01B38;
  if (!qword_27CD01B38)
  {
    sub_21A176D98(&qword_27CD01B40);
    sub_21A21B910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B38);
  }

  return result;
}

unint64_t sub_21A21B910()
{
  result = qword_27CD01B48;
  if (!qword_27CD01B48)
  {
    sub_21A176D98(&qword_27CD01B50);
    sub_21A21B99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B48);
  }

  return result;
}

unint64_t sub_21A21B99C()
{
  result = qword_27CD01B58;
  if (!qword_27CD01B58)
  {
    sub_21A176D98(&qword_27CD01B60);
    sub_21A21BA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B58);
  }

  return result;
}

unint64_t sub_21A21BA28()
{
  result = qword_27CD01B68;
  if (!qword_27CD01B68)
  {
    sub_21A176D98(&qword_27CD01B70);
    sub_21A1772F8(&qword_27CD01B78, &qword_27CD01B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B68);
  }

  return result;
}

unint64_t sub_21A21BAE0()
{
  result = qword_27CD01B98;
  if (!qword_27CD01B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01B98);
  }

  return result;
}

unint64_t sub_21A21BB34()
{
  result = qword_27CD01BC0;
  if (!qword_27CD01BC0)
  {
    sub_21A176D98(&qword_27CD01AB8);
    sub_21A1772F8(&qword_27CD01BA8, &qword_27CD01A88);
    sub_21A1772F8(&qword_27CD01BB0, &qword_27CD01AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01BC0);
  }

  return result;
}

unint64_t sub_21A21BC14()
{
  result = qword_27CD01BD0;
  if (!qword_27CD01BD0)
  {
    sub_21A176D98(&qword_27CD01AC0);
    sub_21A1772F8(&qword_27CD01BB8, &qword_27CD01AB0);
    sub_21A21BB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01BD0);
  }

  return result;
}

unint64_t sub_21A21BCCC()
{
  result = qword_27CD01BD8;
  if (!qword_27CD01BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01BD8);
  }

  return result;
}

unint64_t sub_21A21BD7C()
{
  result = qword_27CD01C08;
  if (!qword_27CD01C08)
  {
    sub_21A176D98(&qword_27CD01BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01C08);
  }

  return result;
}

unint64_t sub_21A21BE00()
{
  result = qword_27CD01C10;
  if (!qword_27CD01C10)
  {
    sub_21A176D98(&qword_27CD01C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01C10);
  }

  return result;
}

void sub_21A21BE7C(void **a1, void (*a2)(void **__return_ptr))
{
  a2(&v8);
  v3 = v8;
  v4 = *a1;
  if (!*a1)
  {
    if (!v8)
    {
      return;
    }

LABEL_10:
    *a1 = v3;
    return;
  }

  if (!v8)
  {
    return;
  }

  sub_21A141A6C(0, &qword_27CD01D38);
  v5 = v4;
  v7 = v3;
  v6 = sub_21A2F7E74();

  if ((v6 & 1) == 0)
  {

    goto LABEL_10;
  }
}

uint64_t sub_21A21BF50(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v44 = a1;
  v45.i64[0] = a3;
  v43 = sub_21A2F5894();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5934();
  sub_21A218F88(&qword_27CD01C48, MEMORY[0x277CDF7F8]);
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() != 2)
  {
    sub_21A176C98(&qword_27CCFFF88);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v29 = sub_21A2F7D44();
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v30;
    *(v28 + 32) = v29;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to QuickLinkLayout: %ld recieved", v39);
  }

  v11 = sub_21A2F7D24();
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    v48 = MEMORY[0x277D84F90];
    sub_21A25D874(0, v11 & ~(v11 >> 63), 0);
    v12 = v48;
    result = sub_21A2F7D04();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v41 = (v8 + 16);
    v15 = (v8 + 8);
    v16 = a2 & 1;
    v40 = a4 & 1;
    do
    {
      v17 = sub_21A2F7D84();
      v18 = v42;
      v19 = v43;
      (*v41)(v42);
      v17(v47, 0);
      v47[0] = v16;
      v46 = v40;
      sub_21A2F5874();
      v21 = v20;
      v23 = v22;
      (*v15)(v18, v19);
      v48 = v12;
      v24 = a5;
      v26 = v12[1].u64[0];
      v25 = v12[1].u64[1];
      if (v26 >= v25 >> 1)
      {
        sub_21A25D874((v25 > 1), v26 + 1, 1);
        v12 = v48;
      }

      v12[1].i64[0] = v26 + 1;
      v27 = &v12[v26];
      v27[2].i64[0] = v21;
      v27[2].i64[1] = v23;
      sub_21A2F7D64();
      --v13;
      a5 = v24;
    }

    while (v13);
  }

  v31 = v12[1].i64[0];
  if (!v31)
  {
  }

  v32 = v12[2];
  v33 = v31 - 1;
  if (v33)
  {
    v34 = 3;
    v35 = *v12[2].i64;
    do
    {
      v36 = v12[v34];
      v37 = vdup_n_s32(v35 < *v36.i64);
      v38.i64[0] = v37.u32[0];
      v38.i64[1] = v37.u32[1];
      v32 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v38, 0x3FuLL)), v36, v32);
      if (v35 < *v36.i64)
      {
        v35 = *v12[v34].i64;
      }

      ++v34;
      --v33;
    }

    while (v33);
  }

  v45 = v32;
}

uint64_t sub_21A21C328()
{
  v0 = sub_21A2F5894();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14 - v7;
  sub_21A2F5934();
  sub_21A218F88(&qword_27CD01C48, MEMORY[0x277CDF7F8]);
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() == 2)
  {
    sub_21A2F5944();
    sub_21A2F5944();
    sub_21A2F7414();
    v15 = 0;
    LOBYTE(v14) = 0;
    sub_21A2F5884();
    sub_21A2F7414();
    v15 = 0;
    LOBYTE(v14) = 0;
    sub_21A2F5884();
    v9 = *(v1 + 8);
    v9(v4, v0);
    return (v9)(v8, v0);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFF88);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v12 = sub_21A2F7D44();
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to QuickLinkLayout: %ld recieved", v14);
  }
}

uint64_t sub_21A21C5F4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  *&v170 = a6;
  v175 = sub_21A176C98(&qword_27CD01C28);
  v13 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v14);
  v16 = (&v156 - v15);
  v17 = sub_21A176C98(&qword_27CD01C30);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v156 - v23);
  MEMORY[0x28223BE20](v25, v26);
  v166 = &v156 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v156 - v30;
  v32 = sub_21A2F5934();
  v159 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v33);
  v164 = (&v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_21A176C98(&qword_27CD01C38);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v158 = &v156 - v37;
  v163 = sub_21A176C98(&qword_27CD01C40);
  MEMORY[0x28223BE20](v163, v38);
  v171 = &v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v172 = (&v156 - v42);
  v177 = sub_21A2F5894();
  v157 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v43);
  v161 = &v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v165 = &v156 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v156 - v50;
  v52 = sub_21A218F88(&qword_27CD01C48, MEMORY[0x277CDF7F8]);
  sub_21A2F7D04();
  result = sub_21A2F7D54();
  if (v179[0] == v180)
  {
    return result;
  }

  v176 = v51;
  v168 = v16;
  v54 = sub_21A2F7D24();
  v55 = MEMORY[0x277D84F90];
  v162 = v24;
  v167 = v31;
  v156 = v13;
  if (v54)
  {
    v56 = v54;
    v180 = MEMORY[0x277D84F90];
    sub_21A25D874(0, v54 & ~(v54 >> 63), 0);
    v57 = v180;
    result = sub_21A2F7D04();
    if (v56 < 0)
    {
LABEL_62:
      __break(1u);
      return result;
    }

    v174 = v20;
    v58 = (v157 + 16);
    v59 = (v157 + 8);
    v60 = a1;
    do
    {
      v61 = sub_21A2F7D84();
      v62 = v176;
      v63 = v60;
      v64 = v177;
      (*v58)(v176);
      v61(v179, 0);
      LOBYTE(v179[0]) = 1;
      v178 = 1;
      sub_21A2F5874();
      v66 = v65;
      v68 = v67;
      (*v59)(v62, v64);
      v180 = v57;
      v69 = v32;
      v71 = *(v57 + 16);
      v70 = *(v57 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_21A25D874((v70 > 1), v71 + 1, 1);
        v57 = v180;
      }

      *(v57 + 16) = v71 + 1;
      v72 = v57 + 16 * v71;
      *(v72 + 32) = v66;
      *(v72 + 40) = v68;
      sub_21A2F7D64();
      --v56;
      v32 = v69;
      v60 = v63;
    }

    while (v56);
    v20 = v174;
    v24 = v162;
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
    v60 = a1;
  }

  v73 = *(v57 + 16);
  v173 = v52;
  v174 = v32;
  if (v73)
  {
    v74 = v55;
    v179[0] = v55;
    sub_21A25D894(0, v73, 0);
    v75 = v179[0];
    v76 = *(v179[0] + 16);
    v77 = 32;
    v78 = v73;
    do
    {
      v79 = *(v57 + v77);
      v179[0] = v75;
      v80 = *(v75 + 24);
      if (v76 >= v80 >> 1)
      {
        sub_21A25D894((v80 > 1), v76 + 1, 1);
        v75 = v179[0];
      }

      *(v75 + 16) = v76 + 1;
      *(v75 + 8 * v76 + 32) = v79;
      v77 += 16;
      ++v76;
      --v78;
    }

    while (v78);
    v169 = v75;
    v179[0] = v74;
    sub_21A25D894(0, v73, 0);
    v81 = v179[0];
    v82 = *(v179[0] + 16);
    v83 = 40;
    v24 = v162;
    do
    {
      v84 = *(v57 + v83);
      v179[0] = v81;
      v85 = *(v81 + 24);
      if (v82 >= v85 >> 1)
      {
        sub_21A25D894((v85 > 1), v82 + 1, 1);
        v81 = v179[0];
      }

      *(v81 + 16) = v82 + 1;
      *(v81 + 8 * v82 + 32) = v84;
      v83 += 16;
      ++v82;
      --v73;
    }

    while (v73);

    v32 = v174;
    v86 = v169;
  }

  else
  {

    v81 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
  }

  v87 = *(v86 + 16);
  v88 = (v87 - 1) * *&v170;
  v89 = 0.0;
  if (v88 < 0.0)
  {
    v88 = 0.0;
  }

  v90 = v172;
  if (v87)
  {
    if (v87 > 3)
    {
      v91 = v87 & 0x7FFFFFFFFFFFFFFCLL;
      v92 = (v86 + 48);
      v93 = v87 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v89 = v89 + *(v92 - 2) + *(v92 - 1) + *v92 + v92[1];
        v92 += 4;
        v93 -= 4;
      }

      while (v93);
      if (v87 == v91)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v91 = 0;
    }

    v94 = v87 - v91;
    v95 = (v86 + 8 * v91 + 32);
    do
    {
      v96 = *v95++;
      v89 = v89 + v96;
      --v94;
    }

    while (v94);
  }

LABEL_31:
  v97 = v89 + v88;
  v181.origin.x = a2;
  v181.origin.y = a3;
  v181.size.width = a4;
  v181.size.height = a5;
  if (CGRectGetWidth(v181) < v97)
  {

    v182.origin.x = a2;
    v182.origin.y = a3;
    v182.size.width = a4;
    v182.size.height = a5;
    MinY = CGRectGetMinY(v182);
    v99 = v159;
    v100 = v158;
    (*(v159 + 16))(v158, v60, v32);
    (*(v99 + 32))(v164, v100, v32);
    sub_21A218F88(&qword_27CD01C50, MEMORY[0x277CDF7F8]);
    sub_21A2F7AA4();
    v163 = *(v163 + 36);
    *&v90[v163] = 0;
    v101 = sub_21A176C98(qword_27CD01C58);
    v171 = 0;
    v102 = *(v101 + 36);
    v164 = (v157 + 16);
    v103 = (v157 + 32);
    v104 = (v156 + 56);
    v105 = (v156 + 48);
    v170 = v81 + 32;
    v169 = v157 + 8;
    v106 = v166;
    v160 = v81;
    v162 = (v156 + 48);
    while (1)
    {
      sub_21A2F7D54();
      if (*&v90[v102] == v179[0])
      {
        v107 = v175;
        (*v104)(v106, 1, 1, v175);
      }

      else
      {
        v108 = v104;
        v109 = v102;
        v110 = v90;
        v111 = sub_21A2F7D84();
        v112 = v103;
        v113 = v165;
        v114 = v177;
        (*v164)(v165);
        v111(v179, 0);
        v115 = v109;
        sub_21A2F7D64();
        v107 = v175;
        v116 = *(v175 + 48);
        v117 = v168;
        v118 = v171;
        *v168 = v171;
        v119 = v113;
        v103 = v112;
        result = (*v112)((v117 + v116), v119, v114);
        v120 = __OFADD__(v118, 1);
        v121 = v118 + 1;
        if (v120)
        {
          goto LABEL_60;
        }

        v171 = v121;
        *&v110[v163] = v121;
        v106 = v166;
        sub_21A149B18(v117, v166, &qword_27CD01C28);
        v104 = v108;
        (*v108)(v106, 0, 1, v107);
        v102 = v115;
        v81 = v160;
        v105 = v162;
      }

      v122 = v167;
      sub_21A149B18(v106, v167, &qword_27CD01C30);
      if ((*v105)(v122, 1, v107) == 1)
      {
        sub_21A1427A8(v172, &qword_27CD01C40);
      }

      v123 = *v122;
      result = (*v103)(v176, &v122[*(v107 + 48)], v177);
      if ((v123 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v123 >= *(v81 + 16))
      {
        goto LABEL_58;
      }

      v124 = *(v170 + 8 * v123);
      v183.origin.x = a2;
      v183.origin.y = a3;
      v183.size.width = a4;
      v183.size.height = a5;
      CGRectGetMinX(v183);
      v184.origin.x = a2;
      v184.origin.y = a3;
      v184.size.width = a4;
      v184.size.height = a5;
      CGRectGetWidth(v184);
      sub_21A2F7414();
      LOBYTE(v179[0]) = 0;
      LOBYTE(v180) = 0;
      v125 = v176;
      sub_21A2F5884();
      (*v169)(v125, v177);
      MinY = MinY + v124 + a7;
      v90 = v172;
    }

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
    goto LABEL_62;
  }

  v185.origin.x = a2;
  v185.origin.y = a3;
  v185.size.width = a4;
  v185.size.height = a5;
  v126 = CGRectGetWidth(v185) - v97;
  sub_21A2F7D04();
  sub_21A2F7D54();
  v127 = v126 / sub_21A2F7D44();
  v166 = sub_21A233674(v81);
  v129 = v128;

  v186.origin.x = a2;
  v186.origin.y = a3;
  v186.size.width = a4;
  v186.size.height = a5;
  MinX = CGRectGetMinX(v186);
  v131 = v159;
  v132 = v158;
  (*(v159 + 16))(v158, v60, v32);
  (*(v131 + 32))(v164, v132, v32);
  sub_21A218F88(&qword_27CD01C50, MEMORY[0x277CDF7F8]);
  v133 = v171;
  sub_21A2F7AA4();
  v159 = *(v163 + 36);
  *(v133 + v159) = 0;
  v134 = 0;
  v135 = *(sub_21A176C98(qword_27CD01C58) + 36);
  v160 = (v157 + 16);
  v172 = (v157 + 32);
  v167 = (v156 + 56);
  v136 = (v156 + 48);
  v169 = v86;
  v165 = (v86 + 32);
  v137 = (v129 & 1) == 0;
  v138 = v135;
  v139 = v176;
  v140 = v166;
  if (!v137)
  {
    v140 = 0;
  }

  v164 = v140;
  v163 = v157 + 8;
  v158 = (v156 + 48);
  while (1)
  {
    v141 = v171;
    sub_21A2F7D54();
    if (*(v141 + v138) == v179[0])
    {
      v142 = v175;
      (*v167)(v20, 1, 1, v175);
    }

    else
    {
      v143 = v20;
      v144 = sub_21A2F7D84();
      v166 = v134;
      v145 = v138;
      v146 = v141;
      v147 = v144;
      v148 = v161;
      v149 = v177;
      (*v160)(v161);
      v147(v179, 0);
      v150 = v145;
      v151 = v166;
      sub_21A2F7D64();
      v142 = v175;
      v152 = *(v175 + 48);
      v153 = v168;
      *v168 = v151;
      result = (*v172)(v153 + v152, v148, v149);
      v120 = __OFADD__(v151, 1);
      v134 = v151 + 1;
      if (v120)
      {
        goto LABEL_61;
      }

      *(v146 + v159) = v134;
      v20 = v143;
      sub_21A149B18(v153, v143, &qword_27CD01C28);
      (*v167)(v143, 0, 1, v142);
      v139 = v176;
      v24 = v162;
      v138 = v150;
      v136 = v158;
    }

    sub_21A149B18(v20, v24, &qword_27CD01C30);
    if ((*v136)(v24, 1, v142) == 1)
    {
      break;
    }

    v154 = *v24;
    result = (*v172)(v139, v24 + *(v142 + 48), v177);
    if ((v154 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

    if (v154 >= *(v169 + 16))
    {
      goto LABEL_59;
    }

    v155 = v127 + *&v165[8 * v154];
    v187.origin.x = a2;
    v187.origin.y = a3;
    v187.size.width = a4;
    v187.size.height = a5;
    CGRectGetMinY(v187);
    sub_21A2F7414();
    LOBYTE(v179[0]) = 0;
    LOBYTE(v180) = 0;
    sub_21A2F5884();
    (*v163)(v139, v177);
    MinX = MinX + v155 + *&v170;
  }

  sub_21A1427A8(v171, &qword_27CD01C40);
}

void sub_21A21D6F0()
{
  type metadata accessor for ShareableRecipe(319);
  if (v0 <= 0x3F)
  {
    sub_21A13DF40();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_21A21DD68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21A21D7A8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_21A2F4794() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((v12 + 40) & ~v12) + v13;
  v17 = v14 + 16;
  if (v15 >= a2)
  {
    goto LABEL_30;
  }

  v18 = ((*(v10 + 64) + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v15 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v15 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 >= v11)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v29 = *(v7 + 48);

      return v29((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
    }

    else
    {
      v28 = *(a1 + 1);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }

  else
  {
    v27 = *(v10 + 48);

    return v27((v17 + ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
  }
}

void sub_21A21DA14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21A2F4794() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v14 + 40) & ~v14) + v15;
  v19 = ((*(v12 + 64) + ((v16 + 16 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v22 = 0;
    v23 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v12 + 64) + ((v16 + 16 + ((v18 + 7) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v17 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 >= v13)
        {
          if (v11 >= a2)
          {
            if ((v10 & 0x80000000) != 0)
            {
              v30 = *(v9 + 56);

              v30((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14, a2);
            }

            else if ((a2 & 0x80000000) != 0)
            {
              *a1 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              *(a1 + 1) = (a2 - 1);
            }
          }

          else
          {
            if (v18 <= 3)
            {
              v27 = ~(-1 << (8 * v18));
            }

            else
            {
              v27 = -1;
            }

            if (v18)
            {
              v28 = v27 & (~v11 + a2);
              if (v18 <= 3)
              {
                v29 = v18;
              }

              else
              {
                v29 = 4;
              }

              bzero(a1, v18);
              if (v29 > 2)
              {
                if (v29 == 3)
                {
                  *a1 = v28;
                  a1[2] = BYTE2(v28);
                }

                else
                {
                  *a1 = v28;
                }
              }

              else if (v29 == 1)
              {
                *a1 = v28;
              }

              else
              {
                *a1 = v28;
              }
            }
          }
        }

        else
        {
          v26 = *(v12 + 56);

          v26((v16 + 16 + (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2, v13);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(v12 + 64) + ((v16 + 16 + ((v18 + 7) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (((*(v12 + 64) + ((v16 + 16 + ((v18 + 7) & 0xFFFFFFF8)) & ~v16) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v25 = ~v17 + a2;
    bzero(a1, v19);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *&a1[v19] = v24;
    }

    else
    {
      *&a1[v19] = v24;
    }
  }

  else if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_21A21DD68()
{
  if (!qword_27CD01CE0)
  {
    sub_21A176D98(&qword_27CD01BE0);
    v0 = sub_21A2F7054();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD01CE0);
    }
  }
}

uint64_t sub_21A21DE48(void *a1)
{
  type metadata accessor for ExternalShareButton();

  return sub_21A219F1C(a1);
}

unint64_t sub_21A21DEFC()
{
  result = qword_27CD01D20;
  if (!qword_27CD01D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01D20);
  }

  return result;
}

unint64_t sub_21A21DF50()
{
  result = qword_27CD01D28;
  if (!qword_27CD01D28)
  {
    sub_21A176D98(&qword_27CD01BE0);
    sub_21A21DFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01D28);
  }

  return result;
}

unint64_t sub_21A21DFD4()
{
  result = qword_27CD01D30;
  if (!qword_27CD01D30)
  {
    sub_21A141A6C(255, &qword_27CD01D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01D30);
  }

  return result;
}

void sub_21A21E03C()
{
  v1 = *(type metadata accessor for ShareableRecipe(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_21A219DB8(v2, v3, v4, v5);
}

void sub_21A21E0E8()
{
  sub_21A21E154();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A21E154()
{
  if (!qword_27CD01D60)
  {
    sub_21A141A6C(255, &qword_27CD01D38);
    v0 = sub_21A2F5614();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD01D60);
    }
  }
}

unint64_t sub_21A21E1E8()
{
  result = qword_27CD01D78;
  if (!qword_27CD01D78)
  {
    sub_21A176D98(&qword_27CD01D80);
    sub_21A21E2A0();
    sub_21A1772F8(&qword_27CD01D90, &qword_27CD01D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01D78);
  }

  return result;
}

unint64_t sub_21A21E2A0()
{
  result = qword_27CD01D88;
  if (!qword_27CD01D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01D88);
  }

  return result;
}

unint64_t sub_21A21E2F8()
{
  result = qword_27CD01DA0;
  if (!qword_27CD01DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01DA0);
  }

  return result;
}

uint64_t sub_21A21E378(char a1)
{
  result = 0x6574696C6167656DLL;
  switch(a1)
  {
    case 1:
      v3 = 1869375851;
      return v3 | 0x6574696C00000000;
    case 2:
      return 0x73726574696CLL;
    case 3:
      v3 = 1768121700;
      return v3 | 0x6574696C00000000;
    case 4:
      v4 = 1953391971;
      goto LABEL_18;
    case 5:
      v4 = 1819044205;
LABEL_18:
      result = v4 | 0x74696C6900000000;
      break;
    case 6:
      result = 0x6C694B6369627563;
      break;
    case 7:
      result = 0x74654D6369627563;
      break;
    case 8:
      result = 0x6365446369627563;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636E496369627563;
      break;
    case 12:
      result = 0x6565466369627563;
      break;
    case 13:
      result = 0x7261596369627563;
      break;
    case 14:
      result = 0x6C694D6369627563;
      break;
    case 15:
      result = 0x7465654665726361;
      break;
    case 16:
      result = 0x736C6568737562;
      break;
    case 17:
      result = 0x6E6F6F7073616574;
      break;
    case 18:
      result = 0x6F7073656C626174;
      break;
    case 19:
      result = 0x6E754F6469756C66;
      break;
    case 20:
      result = 1936749923;
      break;
    case 21:
      result = 0x73746E6970;
      break;
    case 22:
      result = 0x737472617571;
      break;
    case 23:
      result = 0x736E6F6C6C6167;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
    case 26:
      result = 0xD000000000000013;
      break;
    case 27:
    case 28:
    case 29:
      result = 0x6C61697265706D69;
      break;
    case 30:
      result = 0x754363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21A21E6B0(uint64_t a1)
{
  v2 = sub_21A221710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E6EC(uint64_t a1)
{
  v2 = sub_21A221710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E728(uint64_t a1)
{
  v2 = sub_21A2216BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E764(uint64_t a1)
{
  v2 = sub_21A2216BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E7A0(uint64_t a1)
{
  v2 = sub_21A221AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E7DC(uint64_t a1)
{
  v2 = sub_21A221AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A225B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A21E854(uint64_t a1)
{
  v2 = sub_21A2211D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E890(uint64_t a1)
{
  v2 = sub_21A2211D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E8CC(uint64_t a1)
{
  v2 = sub_21A221908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E908(uint64_t a1)
{
  v2 = sub_21A221908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E944(uint64_t a1)
{
  v2 = sub_21A22195C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E980(uint64_t a1)
{
  v2 = sub_21A22195C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21E9BC(uint64_t a1)
{
  v2 = sub_21A22180C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21E9F8(uint64_t a1)
{
  v2 = sub_21A22180C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EA34(uint64_t a1)
{
  v2 = sub_21A221860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EA70(uint64_t a1)
{
  v2 = sub_21A221860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EAAC(uint64_t a1)
{
  v2 = sub_21A221A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EAE8(uint64_t a1)
{
  v2 = sub_21A221A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EB24(uint64_t a1)
{
  v2 = sub_21A2219B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EB60(uint64_t a1)
{
  v2 = sub_21A2219B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EB9C(uint64_t a1)
{
  v2 = sub_21A221764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EBD8(uint64_t a1)
{
  v2 = sub_21A221764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EC14(uint64_t a1)
{
  v2 = sub_21A2218B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EC50(uint64_t a1)
{
  v2 = sub_21A2218B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EC8C(uint64_t a1)
{
  v2 = sub_21A2217B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21ECC8(uint64_t a1)
{
  v2 = sub_21A2217B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21ED04(uint64_t a1)
{
  v2 = sub_21A22156C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21ED40(uint64_t a1)
{
  v2 = sub_21A22156C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21ED7C(uint64_t a1)
{
  v2 = sub_21A221B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EDB8(uint64_t a1)
{
  v2 = sub_21A221B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EDF4(uint64_t a1)
{
  v2 = sub_21A2215C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EE30(uint64_t a1)
{
  v2 = sub_21A2215C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EE6C(uint64_t a1)
{
  v2 = sub_21A221470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EEA8(uint64_t a1)
{
  v2 = sub_21A221470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EEE4(uint64_t a1)
{
  v2 = sub_21A221374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EF20(uint64_t a1)
{
  v2 = sub_21A221374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EF5C(uint64_t a1)
{
  v2 = sub_21A221278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21EF98(uint64_t a1)
{
  v2 = sub_21A221278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21EFD4(uint64_t a1)
{
  v2 = sub_21A221320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F010(uint64_t a1)
{
  v2 = sub_21A221320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F04C(uint64_t a1)
{
  v2 = sub_21A2212CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F088(uint64_t a1)
{
  v2 = sub_21A2212CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F0C4(uint64_t a1)
{
  v2 = sub_21A2213C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F100(uint64_t a1)
{
  v2 = sub_21A2213C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F13C(uint64_t a1)
{
  v2 = sub_21A22141C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F178(uint64_t a1)
{
  v2 = sub_21A22141C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F1B4(uint64_t a1)
{
  v2 = sub_21A221BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F1F0(uint64_t a1)
{
  v2 = sub_21A221BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F22C(uint64_t a1)
{
  v2 = sub_21A221B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F268(uint64_t a1)
{
  v2 = sub_21A221B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F2A4(uint64_t a1)
{
  v2 = sub_21A221BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F2E0(uint64_t a1)
{
  v2 = sub_21A221BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F31C(uint64_t a1)
{
  v2 = sub_21A221224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F358(uint64_t a1)
{
  v2 = sub_21A221224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F394(uint64_t a1)
{
  v2 = sub_21A221A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F3D0(uint64_t a1)
{
  v2 = sub_21A221A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F40C(uint64_t a1)
{
  v2 = sub_21A221518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F448(uint64_t a1)
{
  v2 = sub_21A221518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F484(uint64_t a1)
{
  v2 = sub_21A2214C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F4C0(uint64_t a1)
{
  v2 = sub_21A2214C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F4FC(uint64_t a1)
{
  v2 = sub_21A221614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F538(uint64_t a1)
{
  v2 = sub_21A221614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A21F574(uint64_t a1)
{
  v2 = sub_21A221668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A21F5B0(uint64_t a1)
{
  v2 = sub_21A221668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VolumeUnit.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_21A176C98(&qword_27CD01DA8);
  v198 = *(v4 - 8);
  v199 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v197 = &v110 - v6;
  v7 = sub_21A176C98(&qword_27CD01DB0);
  v195 = *(v7 - 8);
  v196 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v194 = &v110 - v9;
  v10 = sub_21A176C98(&qword_27CD01DB8);
  v192 = *(v10 - 8);
  v193 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v191 = &v110 - v12;
  v13 = sub_21A176C98(&qword_27CD01DC0);
  v189 = *(v13 - 8);
  v190 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v188 = &v110 - v15;
  v16 = sub_21A176C98(&qword_27CD01DC8);
  v186 = *(v16 - 8);
  v187 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v185 = &v110 - v18;
  v19 = sub_21A176C98(&qword_27CD01DD0);
  v183 = *(v19 - 8);
  v184 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v182 = &v110 - v21;
  v181 = sub_21A176C98(&qword_27CD01DD8);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v22);
  v179 = &v110 - v23;
  v178 = sub_21A176C98(&qword_27CD01DE0);
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178, v24);
  v176 = &v110 - v25;
  v175 = sub_21A176C98(&qword_27CD01DE8);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v26);
  v173 = &v110 - v27;
  v172 = sub_21A176C98(&qword_27CD01DF0);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v28);
  v170 = &v110 - v29;
  v169 = sub_21A176C98(&qword_27CD01DF8);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v30);
  v167 = &v110 - v31;
  v166 = sub_21A176C98(&qword_27CD01E00);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v32);
  v164 = &v110 - v33;
  v163 = sub_21A176C98(&qword_27CD01E08);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v34);
  v161 = &v110 - v35;
  v160 = sub_21A176C98(&qword_27CD01E10);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v36);
  v158 = &v110 - v37;
  v157 = sub_21A176C98(&qword_27CD01E18);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v38);
  v155 = &v110 - v39;
  v154 = sub_21A176C98(&qword_27CD01E20);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v40);
  v152 = &v110 - v41;
  v151 = sub_21A176C98(&qword_27CD01E28);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v42);
  v149 = &v110 - v43;
  v148 = sub_21A176C98(&qword_27CD01E30);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v44);
  v146 = &v110 - v45;
  v145 = sub_21A176C98(&qword_27CD01E38);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v46);
  v143 = &v110 - v47;
  v142 = sub_21A176C98(&qword_27CD01E40);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v48);
  v140 = &v110 - v49;
  v139 = sub_21A176C98(&qword_27CD01E48);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v50);
  v137 = &v110 - v51;
  v136 = sub_21A176C98(&qword_27CD01E50);
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v52);
  v134 = &v110 - v53;
  v133 = sub_21A176C98(&qword_27CD01E58);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v54);
  v131 = &v110 - v55;
  v130 = sub_21A176C98(&qword_27CD01E60);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v56);
  v128 = &v110 - v57;
  v127 = sub_21A176C98(&qword_27CD01E68);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v58);
  v125 = &v110 - v59;
  v124 = sub_21A176C98(&qword_27CD01E70);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v60);
  v122 = &v110 - v61;
  v121 = sub_21A176C98(&qword_27CD01E78);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v62);
  v119 = &v110 - v63;
  v118 = sub_21A176C98(&qword_27CD01E80);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v64);
  v116 = &v110 - v65;
  v115 = sub_21A176C98(&qword_27CD01E88);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v66);
  v113 = &v110 - v67;
  v112 = sub_21A176C98(&qword_27CD01E90);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v68);
  v70 = &v110 - v69;
  v71 = sub_21A176C98(&qword_27CD01E98);
  v110 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v72);
  v74 = &v110 - v73;
  v201 = sub_21A176C98(&qword_27CD01EA0);
  v75 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v76);
  v78 = &v110 - v77;
  v79 = *v2;
  sub_21A142764(a1, a1[3]);
  sub_21A2211D0();
  v200 = v78;
  sub_21A2F84B4();
  v80 = (v75 + 8);
  switch(v79)
  {
    case 1:
      v202 = 1;
      sub_21A221BA8();
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v111 + 8))(v70, v112);
      return (*v80)(v82, v81);
    case 2:
      v202 = 2;
      sub_21A221B54();
      v93 = v113;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v114 + 8))(v93, v115);
      return (*v80)(v82, v81);
    case 3:
      v202 = 3;
      sub_21A221B00();
      v95 = v116;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v117 + 8))(v95, v118);
      return (*v80)(v82, v81);
    case 4:
      v202 = 4;
      sub_21A221AAC();
      v89 = v119;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v120 + 8))(v89, v121);
      return (*v80)(v82, v81);
    case 5:
      v202 = 5;
      sub_21A221A58();
      v99 = v122;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v123 + 8))(v99, v124);
      return (*v80)(v82, v81);
    case 6:
      v202 = 6;
      sub_21A221A04();
      v102 = v125;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v126 + 8))(v102, v127);
      return (*v80)(v82, v81);
    case 7:
      v202 = 7;
      sub_21A2219B0();
      v96 = v128;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v129 + 8))(v96, v130);
      return (*v80)(v82, v81);
    case 8:
      v202 = 8;
      sub_21A22195C();
      v105 = v131;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v132 + 8))(v105, v133);
      return (*v80)(v82, v81);
    case 9:
      v202 = 9;
      sub_21A221908();
      v91 = v134;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v135 + 8))(v91, v136);
      return (*v80)(v82, v81);
    case 10:
      v202 = 10;
      sub_21A2218B4();
      v104 = v137;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v138 + 8))(v104, v139);
      return (*v80)(v82, v81);
    case 11:
      v202 = 11;
      sub_21A221860();
      v88 = v140;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v141 + 8))(v88, v142);
      return (*v80)(v82, v81);
    case 12:
      v202 = 12;
      sub_21A22180C();
      v90 = v143;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v144 + 8))(v90, v145);
      return (*v80)(v82, v81);
    case 13:
      v202 = 13;
      sub_21A2217B8();
      v101 = v146;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v147 + 8))(v101, v148);
      return (*v80)(v82, v81);
    case 14:
      v202 = 14;
      sub_21A221764();
      v87 = v149;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v150 + 8))(v87, v151);
      return (*v80)(v82, v81);
    case 15:
      v202 = 15;
      sub_21A221710();
      v94 = v152;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v153 + 8))(v94, v154);
      return (*v80)(v82, v81);
    case 16:
      v202 = 16;
      sub_21A2216BC();
      v86 = v155;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v156 + 8))(v86, v157);
      return (*v80)(v82, v81);
    case 17:
      v202 = 17;
      sub_21A221668();
      v97 = v158;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v159 + 8))(v97, v160);
      return (*v80)(v82, v81);
    case 18:
      v202 = 18;
      sub_21A221614();
      v103 = v161;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v162 + 8))(v103, v163);
      return (*v80)(v82, v81);
    case 19:
      v202 = 19;
      sub_21A2215C0();
      v107 = v164;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v165 + 8))(v107, v166);
      return (*v80)(v82, v81);
    case 20:
      v202 = 20;
      sub_21A22156C();
      v98 = v167;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v168 + 8))(v98, v169);
      return (*v80)(v82, v81);
    case 21:
      v202 = 21;
      sub_21A221518();
      v100 = v170;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v171 + 8))(v100, v172);
      return (*v80)(v82, v81);
    case 22:
      v202 = 22;
      sub_21A2214C4();
      v106 = v173;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v174 + 8))(v106, v175);
      return (*v80)(v82, v81);
    case 23:
      v202 = 23;
      sub_21A221470();
      v108 = v176;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v177 + 8))(v108, v178);
      return (*v80)(v82, v81);
    case 24:
      v202 = 24;
      sub_21A22141C();
      v92 = v179;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v180 + 8))(v92, v181);
      return (*v80)(v82, v81);
    case 25:
      v202 = 25;
      sub_21A2213C8();
      v83 = v182;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v183;
      v84 = v184;
      goto LABEL_33;
    case 26:
      v202 = 26;
      sub_21A221374();
      v83 = v185;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v186;
      v84 = v187;
      goto LABEL_33;
    case 27:
      v202 = 27;
      sub_21A221320();
      v83 = v188;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v189;
      v84 = v190;
      goto LABEL_33;
    case 28:
      v202 = 28;
      sub_21A2212CC();
      v83 = v191;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v192;
      v84 = v193;
      goto LABEL_33;
    case 29:
      v202 = 29;
      sub_21A221278();
      v83 = v194;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v195;
      v84 = v196;
      goto LABEL_33;
    case 30:
      v202 = 30;
      sub_21A221224();
      v83 = v197;
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      v85 = v198;
      v84 = v199;
LABEL_33:
      (*(v85 + 8))(v83, v84);
      break;
    default:
      v202 = 0;
      sub_21A221BFC();
      v82 = v200;
      v81 = v201;
      sub_21A2F82A4();
      (*(v110 + 8))(v74, v71);
      break;
  }

  return (*v80)(v82, v81);
}

unint64_t sub_21A2211D0()
{
  result = qword_27CD01EA8;
  if (!qword_27CD01EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EA8);
  }

  return result;
}

unint64_t sub_21A221224()
{
  result = qword_27CD01EB0;
  if (!qword_27CD01EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EB0);
  }

  return result;
}

unint64_t sub_21A221278()
{
  result = qword_27CD01EB8;
  if (!qword_27CD01EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EB8);
  }

  return result;
}

unint64_t sub_21A2212CC()
{
  result = qword_27CD01EC0;
  if (!qword_27CD01EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EC0);
  }

  return result;
}

unint64_t sub_21A221320()
{
  result = qword_27CD01EC8;
  if (!qword_27CD01EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EC8);
  }

  return result;
}

unint64_t sub_21A221374()
{
  result = qword_27CD01ED0;
  if (!qword_27CD01ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01ED0);
  }

  return result;
}

unint64_t sub_21A2213C8()
{
  result = qword_27CD01ED8;
  if (!qword_27CD01ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01ED8);
  }

  return result;
}

unint64_t sub_21A22141C()
{
  result = qword_27CD01EE0;
  if (!qword_27CD01EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EE0);
  }

  return result;
}

unint64_t sub_21A221470()
{
  result = qword_27CD01EE8;
  if (!qword_27CD01EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EE8);
  }

  return result;
}

unint64_t sub_21A2214C4()
{
  result = qword_27CD01EF0;
  if (!qword_27CD01EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EF0);
  }

  return result;
}

unint64_t sub_21A221518()
{
  result = qword_27CD01EF8;
  if (!qword_27CD01EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01EF8);
  }

  return result;
}

unint64_t sub_21A22156C()
{
  result = qword_27CD01F00;
  if (!qword_27CD01F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F00);
  }

  return result;
}

unint64_t sub_21A2215C0()
{
  result = qword_27CD01F08;
  if (!qword_27CD01F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F08);
  }

  return result;
}

unint64_t sub_21A221614()
{
  result = qword_27CD01F10;
  if (!qword_27CD01F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F10);
  }

  return result;
}

unint64_t sub_21A221668()
{
  result = qword_27CD01F18;
  if (!qword_27CD01F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F18);
  }

  return result;
}

unint64_t sub_21A2216BC()
{
  result = qword_27CD01F20;
  if (!qword_27CD01F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F20);
  }

  return result;
}

unint64_t sub_21A221710()
{
  result = qword_27CD01F28;
  if (!qword_27CD01F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F28);
  }

  return result;
}

unint64_t sub_21A221764()
{
  result = qword_27CD01F30;
  if (!qword_27CD01F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F30);
  }

  return result;
}

unint64_t sub_21A2217B8()
{
  result = qword_27CD01F38;
  if (!qword_27CD01F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F38);
  }

  return result;
}

unint64_t sub_21A22180C()
{
  result = qword_27CD01F40;
  if (!qword_27CD01F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F40);
  }

  return result;
}

unint64_t sub_21A221860()
{
  result = qword_27CD01F48;
  if (!qword_27CD01F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F48);
  }

  return result;
}

unint64_t sub_21A2218B4()
{
  result = qword_27CD01F50;
  if (!qword_27CD01F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F50);
  }

  return result;
}

unint64_t sub_21A221908()
{
  result = qword_27CD01F58;
  if (!qword_27CD01F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F58);
  }

  return result;
}

unint64_t sub_21A22195C()
{
  result = qword_27CD01F60;
  if (!qword_27CD01F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F60);
  }

  return result;
}

unint64_t sub_21A2219B0()
{
  result = qword_27CD01F68;
  if (!qword_27CD01F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F68);
  }

  return result;
}

unint64_t sub_21A221A04()
{
  result = qword_27CD01F70;
  if (!qword_27CD01F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F70);
  }

  return result;
}

unint64_t sub_21A221A58()
{
  result = qword_27CD01F78;
  if (!qword_27CD01F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F78);
  }

  return result;
}

unint64_t sub_21A221AAC()
{
  result = qword_27CD01F80;
  if (!qword_27CD01F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F80);
  }

  return result;
}

unint64_t sub_21A221B00()
{
  result = qword_27CD01F88;
  if (!qword_27CD01F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F88);
  }

  return result;
}

unint64_t sub_21A221B54()
{
  result = qword_27CD01F90;
  if (!qword_27CD01F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F90);
  }

  return result;
}

unint64_t sub_21A221BA8()
{
  result = qword_27CD01F98;
  if (!qword_27CD01F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01F98);
  }

  return result;
}

unint64_t sub_21A221BFC()
{
  result = qword_27CD01FA0;
  if (!qword_27CD01FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01FA0);
  }

  return result;
}

uint64_t VolumeUnit.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t VolumeUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v249 = a2;
  v248 = sub_21A176C98(&qword_27CD01FA8);
  v218 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v3);
  v244 = v154 - v4;
  v217 = sub_21A176C98(&qword_27CD01FB0);
  v216 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v5);
  v243 = v154 - v6;
  v215 = sub_21A176C98(&qword_27CD01FB8);
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v7);
  v242 = v154 - v8;
  v213 = sub_21A176C98(&qword_27CD01FC0);
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v9);
  v241 = v154 - v10;
  v211 = sub_21A176C98(&qword_27CD01FC8);
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211, v11);
  v240 = v154 - v12;
  v209 = sub_21A176C98(&qword_27CD01FD0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v13);
  v239 = v154 - v14;
  v207 = sub_21A176C98(&qword_27CD01FD8);
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v15);
  v238 = v154 - v16;
  v205 = sub_21A176C98(&qword_27CD01FE0);
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v17);
  v237 = v154 - v18;
  v203 = sub_21A176C98(&qword_27CD01FE8);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203, v19);
  v236 = v154 - v20;
  v201 = sub_21A176C98(&qword_27CD01FF0);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v21);
  v235 = v154 - v22;
  v199 = sub_21A176C98(&qword_27CD01FF8);
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199, v23);
  v234 = v154 - v24;
  v197 = sub_21A176C98(&qword_27CD02000);
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v25);
  v233 = v154 - v26;
  v195 = sub_21A176C98(&qword_27CD02008);
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v27);
  v232 = v154 - v28;
  v193 = sub_21A176C98(&qword_27CD02010);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v29);
  v231 = v154 - v30;
  v191 = sub_21A176C98(&qword_27CD02018);
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v31);
  v230 = v154 - v32;
  v189 = sub_21A176C98(&qword_27CD02020);
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v33);
  v229 = v154 - v34;
  v187 = sub_21A176C98(&qword_27CD02028);
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v35);
  v228 = v154 - v36;
  v185 = sub_21A176C98(&qword_27CD02030);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v37);
  v227 = v154 - v38;
  v183 = sub_21A176C98(&qword_27CD02038);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v39);
  v226 = v154 - v40;
  v181 = sub_21A176C98(&qword_27CD02040);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v41);
  v225 = v154 - v42;
  v179 = sub_21A176C98(&qword_27CD02048);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v43);
  v224 = v154 - v44;
  v177 = sub_21A176C98(&qword_27CD02050);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v45);
  v247 = v154 - v46;
  v175 = sub_21A176C98(&qword_27CD02058);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v47);
  v246 = v154 - v48;
  v173 = sub_21A176C98(&qword_27CD02060);
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v49);
  v245 = v154 - v50;
  v171 = sub_21A176C98(&qword_27CD02068);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v51);
  v223 = v154 - v52;
  v169 = sub_21A176C98(&qword_27CD02070);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v53);
  v222 = v154 - v54;
  v167 = sub_21A176C98(&qword_27CD02078);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v55);
  v221 = v154 - v56;
  v165 = sub_21A176C98(&qword_27CD02080);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v57);
  v220 = v154 - v58;
  v163 = sub_21A176C98(&qword_27CD02088);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v59);
  v219 = v154 - v60;
  v161 = sub_21A176C98(&qword_27CD02090);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v61);
  v63 = v154 - v62;
  v64 = sub_21A176C98(&qword_27CD02098);
  v159 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v65);
  v67 = v154 - v66;
  v68 = sub_21A176C98(&qword_27CD020A0);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v70);
  v72 = v154 - v71;
  v73 = a1[3];
  v250 = a1;
  sub_21A142764(a1, v73);
  sub_21A2211D0();
  v74 = v251;
  sub_21A2F8494();
  if (v74)
  {
LABEL_8:
    v95 = v250;
    return sub_21A142808(v95);
  }

  v155 = v67;
  v154[1] = v64;
  v156 = v63;
  v76 = v245;
  v75 = v246;
  v77 = v247;
  v157 = 0;
  v79 = v248;
  v78 = v249;
  v251 = v69;
  v158 = v72;
  v80 = sub_21A2F8294();
  v81 = (2 * *(v80 + 16)) | 1;
  v252 = v80;
  v253 = v80 + 32;
  v254 = 0;
  v255 = v81;
  v82 = sub_21A20650C();
  if (v254 != v255 >> 1)
  {
LABEL_6:
    v90 = v68;
    v91 = sub_21A2F8064();
    swift_allocError();
    v93 = v92;
    sub_21A176C98(&qword_27CD012F0);
    *v93 = &type metadata for VolumeUnit;
    v94 = v158;
    sub_21A2F8204();
    sub_21A2F8054();
    (*(*(v91 - 8) + 104))(v93, *MEMORY[0x277D84160], v91);
    swift_willThrow();
    (*(v251 + 8))(v94, v90);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v83 = v82;
  switch(v82)
  {
    case 0:
      v256 = 0;
      sub_21A221BFC();
      v84 = v155;
      v85 = v158;
      v86 = v157;
      sub_21A2F81F4();
      if (v86)
      {
        goto LABEL_69;
      }

      v87 = *(v159 + 8);
      v88 = v84;
      v89 = &v186;
      goto LABEL_71;
    case 1:
      v256 = 1;
      sub_21A221BA8();
      v121 = v156;
      v85 = v158;
      v122 = v157;
      sub_21A2F81F4();
      if (v122)
      {
        goto LABEL_69;
      }

      v87 = *(v160 + 8);
      v88 = v121;
      v89 = &v193;
      goto LABEL_71;
    case 2:
      v256 = 2;
      sub_21A221B54();
      v114 = v219;
      v85 = v158;
      v115 = v157;
      sub_21A2F81F4();
      if (v115)
      {
        goto LABEL_69;
      }

      v87 = *(v162 + 8);
      v88 = v114;
      v89 = &v195;
      goto LABEL_71;
    case 3:
      v256 = 3;
      sub_21A221B00();
      v118 = v220;
      v85 = v158;
      v119 = v157;
      sub_21A2F81F4();
      if (v119)
      {
        goto LABEL_69;
      }

      v87 = *(v164 + 8);
      v88 = v118;
      v89 = &v197;
      goto LABEL_71;
    case 4:
      v256 = 4;
      sub_21A221AAC();
      v105 = v221;
      v85 = v158;
      v106 = v157;
      sub_21A2F81F4();
      if (v106)
      {
        goto LABEL_69;
      }

      v87 = *(v166 + 8);
      v88 = v105;
      v89 = &v199;
      goto LABEL_71;
    case 5:
      v256 = 5;
      sub_21A221A58();
      v127 = v222;
      v85 = v158;
      v128 = v157;
      sub_21A2F81F4();
      if (v128)
      {
        goto LABEL_69;
      }

      v87 = *(v168 + 8);
      v88 = v127;
      v89 = &v201;
      goto LABEL_71;
    case 6:
      v256 = 6;
      sub_21A221A04();
      v133 = v223;
      v85 = v158;
      v134 = v157;
      sub_21A2F81F4();
      if (v134)
      {
        goto LABEL_69;
      }

      v87 = *(v170 + 8);
      v88 = v133;
      v89 = &v203;
      goto LABEL_71;
    case 7:
      v256 = 7;
      sub_21A2219B0();
      v85 = v158;
      v120 = v157;
      sub_21A2F81F4();
      if (v120)
      {
        goto LABEL_69;
      }

      v87 = *(v172 + 8);
      v88 = v76;
      v89 = &v205;
      goto LABEL_71;
    case 8:
      v256 = 8;
      sub_21A22195C();
      v85 = v158;
      v139 = v157;
      sub_21A2F81F4();
      if (v139)
      {
        goto LABEL_69;
      }

      v87 = *(v174 + 8);
      v88 = v75;
      v89 = &v207;
      goto LABEL_71;
    case 9:
      v256 = 9;
      sub_21A221908();
      v85 = v158;
      v109 = v157;
      sub_21A2F81F4();
      if (v109)
      {
        goto LABEL_69;
      }

      v87 = *(v176 + 8);
      v88 = v77;
      v89 = &v209;
      goto LABEL_71;
    case 10:
      v256 = 10;
      sub_21A2218B4();
      v137 = v224;
      v85 = v158;
      v138 = v157;
      sub_21A2F81F4();
      if (v138)
      {
        goto LABEL_69;
      }

      v87 = *(v178 + 8);
      v88 = v137;
      v89 = &v211;
      goto LABEL_71;
    case 11:
      v256 = 11;
      sub_21A221860();
      v103 = v225;
      v85 = v158;
      v104 = v157;
      sub_21A2F81F4();
      if (v104)
      {
        goto LABEL_69;
      }

      v87 = *(v180 + 8);
      v88 = v103;
      v89 = &v213;
      goto LABEL_71;
    case 12:
      v256 = 12;
      sub_21A22180C();
      v107 = v226;
      v85 = v158;
      v108 = v157;
      sub_21A2F81F4();
      if (v108)
      {
        goto LABEL_69;
      }

      v87 = *(v182 + 8);
      v88 = v107;
      v89 = &v215;
      goto LABEL_71;
    case 13:
      v256 = 13;
      sub_21A2217B8();
      v131 = v227;
      v85 = v158;
      v132 = v157;
      sub_21A2F81F4();
      if (v132)
      {
        goto LABEL_69;
      }

      v87 = *(v184 + 8);
      v88 = v131;
      v89 = &v217;
      goto LABEL_71;
    case 14:
      v256 = 14;
      sub_21A221764();
      v101 = v228;
      v85 = v158;
      v102 = v157;
      sub_21A2F81F4();
      if (v102)
      {
        goto LABEL_69;
      }

      v87 = *(v186 + 8);
      v88 = v101;
      v89 = &v219;
      goto LABEL_71;
    case 15:
      v256 = 15;
      sub_21A221710();
      v116 = v229;
      v85 = v158;
      v117 = v157;
      sub_21A2F81F4();
      if (v117)
      {
        goto LABEL_69;
      }

      v87 = *(v188 + 8);
      v88 = v116;
      v89 = &v221;
      goto LABEL_71;
    case 16:
      v256 = 16;
      sub_21A2216BC();
      v99 = v230;
      v85 = v158;
      v100 = v157;
      sub_21A2F81F4();
      if (v100)
      {
        goto LABEL_69;
      }

      v87 = *(v190 + 8);
      v88 = v99;
      v89 = &v223;
      goto LABEL_71;
    case 17:
      v256 = 17;
      sub_21A221668();
      v123 = v231;
      v85 = v158;
      v124 = v157;
      sub_21A2F81F4();
      if (v124)
      {
        goto LABEL_69;
      }

      v87 = *(v192 + 8);
      v88 = v123;
      v89 = &v225;
      goto LABEL_71;
    case 18:
      v256 = 18;
      sub_21A221614();
      v135 = v232;
      v85 = v158;
      v136 = v157;
      sub_21A2F81F4();
      if (v136)
      {
        goto LABEL_69;
      }

      v87 = *(v194 + 8);
      v88 = v135;
      v89 = &v227;
      goto LABEL_71;
    case 19:
      v256 = 19;
      sub_21A2215C0();
      v144 = v233;
      v85 = v158;
      v145 = v157;
      sub_21A2F81F4();
      if (v145)
      {
        goto LABEL_69;
      }

      v87 = *(v196 + 8);
      v88 = v144;
      v89 = &v229;
      goto LABEL_71;
    case 20:
      v256 = 20;
      sub_21A22156C();
      v125 = v234;
      v85 = v158;
      v126 = v157;
      sub_21A2F81F4();
      if (v126)
      {
        goto LABEL_69;
      }

      v87 = *(v198 + 8);
      v88 = v125;
      v89 = &v231;
      goto LABEL_71;
    case 21:
      v256 = 21;
      sub_21A221518();
      v129 = v235;
      v85 = v158;
      v130 = v157;
      sub_21A2F81F4();
      if (v130)
      {
        goto LABEL_69;
      }

      v87 = *(v200 + 8);
      v88 = v129;
      v89 = &v233;
      goto LABEL_71;
    case 22:
      v256 = 22;
      sub_21A2214C4();
      v142 = v236;
      v85 = v158;
      v143 = v157;
      sub_21A2F81F4();
      if (v143)
      {
        goto LABEL_69;
      }

      v87 = *(v202 + 8);
      v88 = v142;
      v89 = &v235;
      goto LABEL_71;
    case 23:
      v256 = 23;
      sub_21A221470();
      v146 = v237;
      v85 = v158;
      v147 = v157;
      sub_21A2F81F4();
      if (v147)
      {
        goto LABEL_69;
      }

      v87 = *(v204 + 8);
      v88 = v146;
      v89 = &v237;
      goto LABEL_71;
    case 24:
      v256 = 24;
      sub_21A22141C();
      v112 = v238;
      v85 = v158;
      v113 = v157;
      sub_21A2F81F4();
      if (v113)
      {
        goto LABEL_69;
      }

      v87 = *(v206 + 8);
      v88 = v112;
      v89 = &v239;
      goto LABEL_71;
    case 25:
      v256 = 25;
      sub_21A2213C8();
      v110 = v239;
      v85 = v158;
      v111 = v157;
      sub_21A2F81F4();
      if (v111)
      {
        goto LABEL_69;
      }

      v87 = *(v208 + 8);
      v88 = v110;
      v89 = &v241;
      goto LABEL_71;
    case 26:
      v256 = 26;
      sub_21A221374();
      v152 = v240;
      v85 = v158;
      v153 = v157;
      sub_21A2F81F4();
      if (v153)
      {
        goto LABEL_69;
      }

      v87 = *(v210 + 8);
      v88 = v152;
      v89 = &v243;
      goto LABEL_71;
    case 27:
      v256 = 27;
      sub_21A221320();
      v97 = v241;
      v85 = v158;
      v98 = v157;
      sub_21A2F81F4();
      if (v98)
      {
        goto LABEL_69;
      }

      v87 = *(v212 + 8);
      v88 = v97;
      v89 = &v245;
      goto LABEL_71;
    case 28:
      v256 = 28;
      sub_21A2212CC();
      v148 = v242;
      v85 = v158;
      v149 = v157;
      sub_21A2F81F4();
      if (v149)
      {
        goto LABEL_69;
      }

      v87 = *(v214 + 8);
      v88 = v148;
      v89 = &v247;
      goto LABEL_71;
    case 29:
      v256 = 29;
      sub_21A221278();
      v150 = v243;
      v85 = v158;
      v151 = v157;
      sub_21A2F81F4();
      if (v151)
      {
        goto LABEL_69;
      }

      v87 = *(v216 + 8);
      v88 = v150;
      v89 = &v249;
LABEL_71:
      v87(v88, *(v89 - 32));
      goto LABEL_72;
    case 30:
      v256 = 30;
      sub_21A221224();
      v140 = v244;
      v85 = v158;
      v141 = v157;
      sub_21A2F81F4();
      if (v141)
      {
LABEL_69:
        (*(v251 + 8))(v85, v68);
        goto LABEL_7;
      }

      (*(v218 + 8))(v140, v79);
LABEL_72:
      (*(v251 + 8))(v85, v68);
      swift_unknownObjectRelease();
      v95 = v250;
      *v78 = v83;
      break;
    default:
      goto LABEL_6;
  }

  return sub_21A142808(v95);
}

unint64_t sub_21A223CD4()
{
  result = qword_27CD020A8;
  if (!qword_27CD020A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020A8);
  }

  return result;
}

uint64_t sub_21A223D68(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21A223DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A2240AC()
{
  result = qword_27CD020B0;
  if (!qword_27CD020B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020B0);
  }

  return result;
}

unint64_t sub_21A224104()
{
  result = qword_27CD020B8;
  if (!qword_27CD020B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020B8);
  }

  return result;
}

unint64_t sub_21A22415C()
{
  result = qword_27CD020C0;
  if (!qword_27CD020C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020C0);
  }

  return result;
}

unint64_t sub_21A2241B4()
{
  result = qword_27CD020C8;
  if (!qword_27CD020C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020C8);
  }

  return result;
}

unint64_t sub_21A22420C()
{
  result = qword_27CD020D0;
  if (!qword_27CD020D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020D0);
  }

  return result;
}

unint64_t sub_21A224264()
{
  result = qword_27CD020D8;
  if (!qword_27CD020D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020D8);
  }

  return result;
}

unint64_t sub_21A2242BC()
{
  result = qword_27CD020E0;
  if (!qword_27CD020E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020E0);
  }

  return result;
}

unint64_t sub_21A224314()
{
  result = qword_27CD020E8;
  if (!qword_27CD020E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020E8);
  }

  return result;
}

unint64_t sub_21A22436C()
{
  result = qword_27CD020F0;
  if (!qword_27CD020F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020F0);
  }

  return result;
}

unint64_t sub_21A2243C4()
{
  result = qword_27CD020F8;
  if (!qword_27CD020F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD020F8);
  }

  return result;
}

unint64_t sub_21A22441C()
{
  result = qword_27CD02100;
  if (!qword_27CD02100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02100);
  }

  return result;
}

unint64_t sub_21A224474()
{
  result = qword_27CD02108;
  if (!qword_27CD02108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02108);
  }

  return result;
}

unint64_t sub_21A2244CC()
{
  result = qword_27CD02110;
  if (!qword_27CD02110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02110);
  }

  return result;
}

unint64_t sub_21A224524()
{
  result = qword_27CD02118;
  if (!qword_27CD02118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02118);
  }

  return result;
}

unint64_t sub_21A22457C()
{
  result = qword_27CD02120;
  if (!qword_27CD02120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02120);
  }

  return result;
}

unint64_t sub_21A2245D4()
{
  result = qword_27CD02128;
  if (!qword_27CD02128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02128);
  }

  return result;
}

unint64_t sub_21A22462C()
{
  result = qword_27CD02130;
  if (!qword_27CD02130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02130);
  }

  return result;
}

unint64_t sub_21A224684()
{
  result = qword_27CD02138;
  if (!qword_27CD02138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02138);
  }

  return result;
}

unint64_t sub_21A2246DC()
{
  result = qword_27CD02140;
  if (!qword_27CD02140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02140);
  }

  return result;
}

unint64_t sub_21A224734()
{
  result = qword_27CD02148;
  if (!qword_27CD02148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02148);
  }

  return result;
}

unint64_t sub_21A22478C()
{
  result = qword_27CD02150;
  if (!qword_27CD02150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02150);
  }

  return result;
}

unint64_t sub_21A2247E4()
{
  result = qword_27CD02158;
  if (!qword_27CD02158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02158);
  }

  return result;
}

unint64_t sub_21A22483C()
{
  result = qword_27CD02160;
  if (!qword_27CD02160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02160);
  }

  return result;
}

unint64_t sub_21A224894()
{
  result = qword_27CD02168;
  if (!qword_27CD02168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02168);
  }

  return result;
}

unint64_t sub_21A2248EC()
{
  result = qword_27CD02170;
  if (!qword_27CD02170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02170);
  }

  return result;
}

unint64_t sub_21A224944()
{
  result = qword_27CD02178;
  if (!qword_27CD02178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02178);
  }

  return result;
}

unint64_t sub_21A22499C()
{
  result = qword_27CD02180;
  if (!qword_27CD02180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02180);
  }

  return result;
}

unint64_t sub_21A2249F4()
{
  result = qword_27CD02188;
  if (!qword_27CD02188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02188);
  }

  return result;
}

unint64_t sub_21A224A4C()
{
  result = qword_27CD02190;
  if (!qword_27CD02190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02190);
  }

  return result;
}

unint64_t sub_21A224AA4()
{
  result = qword_27CD02198;
  if (!qword_27CD02198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02198);
  }

  return result;
}

unint64_t sub_21A224AFC()
{
  result = qword_27CD021A0;
  if (!qword_27CD021A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021A0);
  }

  return result;
}

unint64_t sub_21A224B54()
{
  result = qword_27CD021A8;
  if (!qword_27CD021A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021A8);
  }

  return result;
}

unint64_t sub_21A224BAC()
{
  result = qword_27CD021B0;
  if (!qword_27CD021B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021B0);
  }

  return result;
}

unint64_t sub_21A224C04()
{
  result = qword_27CD021B8;
  if (!qword_27CD021B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021B8);
  }

  return result;
}

unint64_t sub_21A224C5C()
{
  result = qword_27CD021C0;
  if (!qword_27CD021C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021C0);
  }

  return result;
}

unint64_t sub_21A224CB4()
{
  result = qword_27CD021C8;
  if (!qword_27CD021C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021C8);
  }

  return result;
}

unint64_t sub_21A224D0C()
{
  result = qword_27CD021D0;
  if (!qword_27CD021D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021D0);
  }

  return result;
}

unint64_t sub_21A224D64()
{
  result = qword_27CD021D8;
  if (!qword_27CD021D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021D8);
  }

  return result;
}

unint64_t sub_21A224DBC()
{
  result = qword_27CD021E0;
  if (!qword_27CD021E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021E0);
  }

  return result;
}

unint64_t sub_21A224E14()
{
  result = qword_27CD021E8;
  if (!qword_27CD021E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021E8);
  }

  return result;
}

unint64_t sub_21A224E6C()
{
  result = qword_27CD021F0;
  if (!qword_27CD021F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021F0);
  }

  return result;
}

unint64_t sub_21A224EC4()
{
  result = qword_27CD021F8;
  if (!qword_27CD021F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD021F8);
  }

  return result;
}

unint64_t sub_21A224F1C()
{
  result = qword_27CD02200;
  if (!qword_27CD02200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02200);
  }

  return result;
}

unint64_t sub_21A224F74()
{
  result = qword_27CD02208;
  if (!qword_27CD02208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02208);
  }

  return result;
}

unint64_t sub_21A224FCC()
{
  result = qword_27CD02210;
  if (!qword_27CD02210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02210);
  }

  return result;
}

unint64_t sub_21A225024()
{
  result = qword_27CD02218;
  if (!qword_27CD02218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02218);
  }

  return result;
}

unint64_t sub_21A22507C()
{
  result = qword_27CD02220;
  if (!qword_27CD02220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02220);
  }

  return result;
}

unint64_t sub_21A2250D4()
{
  result = qword_27CD02228;
  if (!qword_27CD02228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02228);
  }

  return result;
}

unint64_t sub_21A22512C()
{
  result = qword_27CD02230;
  if (!qword_27CD02230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02230);
  }

  return result;
}

unint64_t sub_21A225184()
{
  result = qword_27CD02238;
  if (!qword_27CD02238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02238);
  }

  return result;
}

unint64_t sub_21A2251DC()
{
  result = qword_27CD02240;
  if (!qword_27CD02240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02240);
  }

  return result;
}

unint64_t sub_21A225234()
{
  result = qword_27CD02248;
  if (!qword_27CD02248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02248);
  }

  return result;
}

unint64_t sub_21A22528C()
{
  result = qword_27CD02250;
  if (!qword_27CD02250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02250);
  }

  return result;
}

unint64_t sub_21A2252E4()
{
  result = qword_27CD02258;
  if (!qword_27CD02258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02258);
  }

  return result;
}

unint64_t sub_21A22533C()
{
  result = qword_27CD02260;
  if (!qword_27CD02260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02260);
  }

  return result;
}

unint64_t sub_21A225394()
{
  result = qword_27CD02268;
  if (!qword_27CD02268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02268);
  }

  return result;
}

unint64_t sub_21A2253EC()
{
  result = qword_27CD02270;
  if (!qword_27CD02270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02270);
  }

  return result;
}

unint64_t sub_21A225444()
{
  result = qword_27CD02278;
  if (!qword_27CD02278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02278);
  }

  return result;
}

unint64_t sub_21A22549C()
{
  result = qword_27CD02280;
  if (!qword_27CD02280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02280);
  }

  return result;
}

unint64_t sub_21A2254F4()
{
  result = qword_27CD02288;
  if (!qword_27CD02288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02288);
  }

  return result;
}

unint64_t sub_21A22554C()
{
  result = qword_27CD02290;
  if (!qword_27CD02290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02290);
  }

  return result;
}

unint64_t sub_21A2255A4()
{
  result = qword_27CD02298;
  if (!qword_27CD02298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02298);
  }

  return result;
}

unint64_t sub_21A2255FC()
{
  result = qword_27CD022A0;
  if (!qword_27CD022A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022A0);
  }

  return result;
}

unint64_t sub_21A225654()
{
  result = qword_27CD022A8;
  if (!qword_27CD022A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022A8);
  }

  return result;
}

unint64_t sub_21A2256AC()
{
  result = qword_27CD022B0;
  if (!qword_27CD022B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022B0);
  }

  return result;
}

uint64_t sub_21A225700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21A2F4C84();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277CFCA78])
  {
    v11 = 0;
LABEL_63:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x277CFCA70])
  {
    v11 = 1;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB18])
  {
    v11 = 2;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA68])
  {
    v11 = 3;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA88])
  {
    v11 = 4;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAA8])
  {
    v11 = 5;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAD0])
  {
    v11 = 6;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA98])
  {
    v11 = 7;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAC8])
  {
    v11 = 8;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAE0])
  {
    v11 = 9;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAE8])
  {
    v11 = 10;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA90])
  {
    v11 = 11;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB40])
  {
    v11 = 12;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA60])
  {
    v11 = 13;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA58])
  {
    v11 = 14;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB38])
  {
    v11 = 15;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB28])
  {
    v11 = 16;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB48])
  {
    v11 = 17;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAB0])
  {
    v11 = 18;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAA0])
  {
    v11 = 19;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB08])
  {
    v11 = 20;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB10])
  {
    v11 = 21;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB20])
  {
    v11 = 22;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB30])
  {
    v11 = 23;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAF0])
  {
    v11 = 24;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCB00])
  {
    v11 = 25;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAF8])
  {
    v11 = 26;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAB8])
  {
    v11 = 27;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAC0])
  {
    v11 = 28;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCAD8])
  {
    v11 = 29;
    goto LABEL_63;
  }

  if (v10 == *MEMORY[0x277CFCA80])
  {
    v11 = 30;
    goto LABEL_63;
  }

  result = sub_21A2F8384();
  __break(1u);
  return result;
}

uint64_t sub_21A225B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696C6167656DLL && a2 == 0xEA00000000007372;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574696C6F6C696BLL && a2 == 0xEA00000000007372 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726574696CLL && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574696C69636564 && a2 == 0xEA00000000007372 || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696C69746E6563 && a2 == 0xEB00000000737265 || (sub_21A2F8394() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74696C696C6C696DLL && a2 == 0xEB00000000737265 || (sub_21A2F8394() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C694B6369627563 && a2 == 0xEF73726574656D6FLL || (sub_21A2F8394() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6369627563 && a2 == 0xEB00000000737265 || (sub_21A2F8394() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6365446369627563 && a2 == 0xEF73726574656D69 || (sub_21A2F8394() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A319880 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A3198A0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636E496369627563 && a2 == 0xEB00000000736568 || (sub_21A2F8394() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6565466369627563 && a2 == 0xE900000000000074 || (sub_21A2F8394() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7261596369627563 && a2 == 0xEA00000000007364 || (sub_21A2F8394() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C694D6369627563 && a2 == 0xEA00000000007365 || (sub_21A2F8394() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7465654665726361 && a2 == 0xE800000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736C6568737562 && a2 == 0xE700000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E6F6F7073616574 && a2 == 0xE900000000000073 || (sub_21A2F8394() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F7073656C626174 && a2 == 0xEB00000000736E6FLL || (sub_21A2F8394() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E754F6469756C66 && a2 == 0xEB00000000736563 || (sub_21A2F8394() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 1936749923 && a2 == 0xE400000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x73746E6970 && a2 == 0xE500000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x737472617571 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x736E6F6C6C6167 && a2 == 0xE700000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021A3198C0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A3198E0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A319900 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xED000073746E6950 || (sub_21A2F8394() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEE00737472617551 || (sub_21A2F8394() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEF736E6F6C6C6147 || (sub_21A2F8394() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x754363697274656DLL && a2 == 0xEA00000000007370)
  {

    return 30;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t RecipePublisher.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t RecipePublisher.name.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A226570()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_21A226598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

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

uint64_t sub_21A22666C(uint64_t a1)
{
  v2 = sub_21A226B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2266A8(uint64_t a1)
{
  v2 = sub_21A226B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipePublisher.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD022B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  sub_21A142764(a1, a1[3]);
  sub_21A226B5C();
  sub_21A2F84B4();
  v13 = 0;
  v9 = v11[3];
  sub_21A2F82B4();
  if (!v9)
  {
    v12 = 1;
    sub_21A2F82E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RecipePublisher.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD022C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A226B5C();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  v20 = 0;
  v10 = sub_21A2F8214();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_21A2F8244();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A142808(a1);
}

uint64_t _s10CookingKit15RecipePublisherV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_21A2F8394();
}

unint64_t sub_21A226B5C()
{
  result = qword_27CD022C0;
  if (!qword_27CD022C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022C0);
  }

  return result;
}

unint64_t sub_21A226BD4()
{
  result = qword_27CD022D0;
  if (!qword_27CD022D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022D0);
  }

  return result;
}

unint64_t sub_21A226C2C()
{
  result = qword_27CD022D8;
  if (!qword_27CD022D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022D8);
  }

  return result;
}

unint64_t sub_21A226C84()
{
  result = qword_27CD022E0;
  if (!qword_27CD022E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD022E0);
  }

  return result;
}

uint64_t sub_21A226CF0()
{
  if (*v0)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x746E6174736E6F63;
  }
}

uint64_t sub_21A226D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

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

uint64_t sub_21A226E00(uint64_t a1)
{
  v2 = sub_21A227218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A226E3C(uint64_t a1)
{
  v2 = sub_21A227218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A226E78(uint64_t a1)
{
  v2 = sub_21A2272C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A226EB4(uint64_t a1)
{
  v2 = sub_21A2272C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A226EF0(uint64_t a1)
{
  v2 = sub_21A22726C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A226F2C(uint64_t a1)
{
  v2 = sub_21A22726C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IngredientScalingBehavior.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD022E8);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v21 = &v19 - v5;
  v6 = sub_21A176C98(&qword_27CD022F0);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  v10 = sub_21A176C98(&qword_27CD022F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  sub_21A142764(a1, a1[3]);
  sub_21A227218();
  sub_21A2F84B4();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_21A22726C();
    v17 = v21;
    sub_21A2F82A4();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_21A2272C0();
    sub_21A2F82A4();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_21A227218()
{
  result = qword_27CD02300;
  if (!qword_27CD02300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02300);
  }

  return result;
}

unint64_t sub_21A22726C()
{
  result = qword_27CD02308;
  if (!qword_27CD02308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02308);
  }

  return result;
}

unint64_t sub_21A2272C0()
{
  result = qword_27CD02310;
  if (!qword_27CD02310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02310);
  }

  return result;
}

uint64_t IngredientScalingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t IngredientScalingBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = sub_21A176C98(&qword_27CD02318);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v7 = sub_21A176C98(&qword_27CD02320);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = sub_21A176C98(&qword_27CD02328);
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  sub_21A142764(a1, a1[3]);
  sub_21A227218();
  v15 = v34;
  sub_21A2F8494();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_21A2F8294();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_21A207C98();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_21A2F8064();
      swift_allocError();
      v25 = v24;
      sub_21A176C98(&qword_27CD012F0);
      *v25 = &type metadata for IngredientScalingBehavior;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_21A22726C();
        sub_21A2F81F4();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_21A2272C0();
        sub_21A2F81F4();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return sub_21A142808(v16);
}

unint64_t sub_21A227848()
{
  result = qword_27CD02330;
  if (!qword_27CD02330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02330);
  }

  return result;
}

unint64_t sub_21A227910()
{
  result = qword_27CD02338;
  if (!qword_27CD02338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02338);
  }

  return result;
}

unint64_t sub_21A227968()
{
  result = qword_27CD02340;
  if (!qword_27CD02340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02340);
  }

  return result;
}

unint64_t sub_21A2279C0()
{
  result = qword_27CD02348;
  if (!qword_27CD02348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02348);
  }

  return result;
}

unint64_t sub_21A227A18()
{
  result = qword_27CD02350;
  if (!qword_27CD02350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02350);
  }

  return result;
}

unint64_t sub_21A227A70()
{
  result = qword_27CD02358;
  if (!qword_27CD02358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02358);
  }

  return result;
}

unint64_t sub_21A227AC8()
{
  result = qword_27CD02360;
  if (!qword_27CD02360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02360);
  }

  return result;
}

unint64_t sub_21A227B20()
{
  result = qword_27CD02368;
  if (!qword_27CD02368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02368);
  }

  return result;
}

uint64_t ExternalRecipeHistoryProviderType.recipeHistory()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A20FDA4;

  return v7(20, a1, a2);
}

uint64_t dispatch thunk of ExternalRecipeHistoryProviderType.recipeHistory(limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A1C0AD0;

  return v9(a1, a2, a3);
}

uint64_t Dependencies.recipeCardViewSessionID.getter()
{
  sub_21A227E58();
  sub_21A227EAC();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A227E58()
{
  result = qword_27CD02388;
  if (!qword_27CD02388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02388);
  }

  return result;
}

unint64_t sub_21A227EAC()
{
  result = qword_27CD02390;
  if (!qword_27CD02390)
  {
    sub_21A176D98(&qword_27CCFF120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02390);
  }

  return result;
}

double sub_21A227F28@<D0>(_OWORD *a1@<X8>)
{
  sub_21A227E58();
  sub_21A227EAC();
  sub_21A2F7624();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21A227F8C()
{
  sub_21A227E58();
  sub_21A227EAC();
  sub_21A2F5434();
  return sub_21A2F7634();
}

uint64_t Dependencies.recipeCardViewSessionID.setter()
{
  sub_21A227E58();
  sub_21A227EAC();
  return sub_21A2F7634();
}

uint64_t Dependencies.recipeCardViewSessionIDStream.getter()
{
  sub_21A228090();

  return sub_21A2F7644();
}

unint64_t sub_21A228090()
{
  result = qword_27CD02398;
  if (!qword_27CD02398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02398);
  }

  return result;
}

uint64_t sub_21A228124(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD023A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  sub_21A2282A8(a1, &v11 - v8);
  sub_21A2282A8(v9, v5);
  sub_21A228090();
  sub_21A2F7654();
  return sub_21A228318(v9);
}

uint64_t Dependencies.recipeCardViewSessionIDStream.setter(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD023A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A2282A8(a1, &v6 - v4);
  sub_21A228090();
  sub_21A2F7654();
  return sub_21A228318(a1);
}

uint64_t sub_21A2282A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD023A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A228318(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD023A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Dependencies.recipeCardViewSessionIDStream.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(sub_21A176C98(&qword_27CD023A0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_21A228090();
  sub_21A2F7644();
  return sub_21A228498;
}

void sub_21A228498(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_21A2282A8((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_21A2282A8(v3[2], v3[1]);
    sub_21A2F7654();
    sub_21A228318(v6);
  }

  else
  {
    sub_21A2F7654();
  }

  sub_21A228318(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_21A228568()
{
  v0 = sub_21A176C98(&qword_27CD023A0);
  sub_21A177DCC(v0, qword_27CD02370);
  v1 = sub_21A177CBC(v0, qword_27CD02370);
  v2 = sub_21A176C98(&qword_27CD023B8);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_21A228614@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE828 != -1)
  {
    swift_once();
  }

  v2 = sub_21A176C98(&qword_27CD023A0);
  v3 = sub_21A177CBC(v2, qword_27CD02370);

  return sub_21A2282A8(v3, a1);
}

void (*Dependencies.recipeCardViewSessionID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_21A227E58();
  *(v4 + 48) = sub_21A227EAC();
  sub_21A2F7624();
  *v4 = *(v4 + 16);
  return sub_21A228740;
}

void sub_21A228740(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {
    sub_21A2F5434();
    sub_21A2F7634();
  }

  else
  {
    sub_21A2F7634();
  }

  free(v2);
}

uint64_t sub_21A2287F0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RecipeCardViewSessionIDSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A229418(&qword_27CD023B0);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A22887C()
{
  if (*(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_task))
  {

    sub_21A2F7CA4();
  }

  v1 = OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource__recipeCardViewSessionIDStream;
  v2 = sub_21A176C98(&qword_27CD023C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource___scope;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2289F0()
{
  v1 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v41 = &v36 - v3;
  v4 = sub_21A176C98(&qword_27CD023C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - v7;
  v9 = sub_21A176C98(&qword_27CD023A0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = sub_21A176C98(&qword_27CD023B8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v36 - v20;
  v40 = OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_task;
  if (*(v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_task))
  {

    sub_21A2F7CA4();
  }

  v22 = v0;
  (*(v5 + 16))(v8, v0 + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource__recipeCardViewSessionIDStream, v4, v19);
  sub_21A2F7594();
  (*(v5 + 8))(v8, v4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21A228318(v12);
  }

  v24 = *(v14 + 32);
  v37 = v21;
  v38 = v24;
  v25 = v21;
  v24(v21, v12, v13);
  v26 = sub_21A2F7C64();
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v39;
  (*(v14 + 16))(v39, v25, v13);
  sub_21A2F7C34();

  v29 = sub_21A2F7C24();
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = v22;
  v32 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v29;
  *(v33 + 24) = v34;
  v38(v33 + v30, v28, v13);
  *(v33 + v32) = v27;

  v35 = sub_21A199D08(0, 0, v41, &unk_21A308530, v33);
  (*(v14 + 8))(v37, v13);
  *(v31 + v40) = v35;
}

uint64_t sub_21A228E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_21A176C98(&qword_27CD023C8);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = sub_21A2F7C34();
  v5[11] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](sub_21A228F54, v8, v7);
}

uint64_t sub_21A228F54()
{
  sub_21A176C98(&qword_27CD023B8);
  sub_21A2F7C74();
  v1 = sub_21A2F7C24();
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21A229034;
  v3 = v0[7];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v1, v4, v3);
}

uint64_t sub_21A229034()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21A229178, v3, v2);
}

uint64_t sub_21A229178()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = (Strong + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_state);
      v5 = *(Strong + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_state + 8);
      if (v5)
      {
        v6 = *v4 == v2 && v5 == v1;
        if (v6 || (v7 = Strong, (sub_21A2F8394() & 1) != 0))
        {

LABEL_17:
          v10 = sub_21A2F7C24();
          v0[14] = v10;
          v11 = swift_task_alloc();
          v0[15] = v11;
          *v11 = v0;
          v11[1] = sub_21A229034;
          v12 = v0[7];
          v13 = MEMORY[0x277D85700];

          return MEMORY[0x2822003E8](v0 + 2, v10, v13, v12);
        }
      }

      else
      {
        v7 = Strong;
      }

      *v4 = v2;
      v4[1] = v1;

      v0[4] = v7;
      type metadata accessor for RecipeCardViewSessionIDSource();
      sub_21A229418(&qword_27CD023A8);
      sub_21A2F75C4();

      goto LABEL_17;
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_21A2293A4@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC10CookingKit29RecipeCardViewSessionIDSource_state);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A229418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeCardViewSessionIDSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A22945C(uint64_t a1)
{
  v4 = *(sub_21A176C98(&qword_27CD023B8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A228E50(a1, v6, v7, v1 + v5, v8);
}

uint64_t StepSection.title.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t StepSection.steps.getter()
{
  type metadata accessor for StepSection();

  return sub_21A2F5434();
}

uint64_t StepSection.ingredients.getter()
{
  type metadata accessor for StepSection();

  return sub_21A2F5434();
}

uint64_t StepSection.init(title:totalTime:steps:ingredients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for StepSection();
  v13 = v12[5];
  v14 = type metadata accessor for Duration();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = v12[7];
  *a6 = a1;
  *(a6 + 1) = a2;
  result = sub_21A22972C(a3, &a6[v13]);
  *&a6[v12[6]] = a4;
  *&a6[v15] = a5;
  return result;
}

uint64_t sub_21A22972C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2297A0()
{
  v1 = 0x656C746974;
  v2 = 0x7370657473;
  if (*v0 != 2)
  {
    v2 = 0x6569646572676E69;
  }

  if (*v0)
  {
    v1 = 0x6D69546C61746F74;
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

uint64_t sub_21A229820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A22CF74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A229848(uint64_t a1)
{
  v2 = sub_21A22CBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A229884(uint64_t a1)
{
  v2 = sub_21A22CBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StepSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD023D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A22CBDC();
  sub_21A2F84B4();
  LOBYTE(v13) = 0;
  sub_21A2F82B4();
  if (!v2)
  {
    v10 = type metadata accessor for StepSection();
    LOBYTE(v13) = 1;
    type metadata accessor for Duration();
    sub_21A22CD98(&qword_27CD023E0, type metadata accessor for Duration);
    sub_21A2F82D4();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_21A176C98(&qword_27CD023E8);
    sub_21A22CCFC(&qword_27CD023F0, &qword_27CD023F8);
    sub_21A2F8324();
    v13 = *(v3 + *(v10 + 28));
    HIBYTE(v12) = 3;
    sub_21A176C98(&qword_27CD02400);
    sub_21A22CC30(&qword_27CD02408, sub_21A22CCA8);
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StepSection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = sub_21A176C98(&qword_27CD02418);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for StepSection();
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v16;
  v17 = *(v16 + 20);
  v18 = type metadata accessor for Duration();
  v19 = *(*(v18 - 8) + 56);
  v33 = v17;
  v19(v15 + v17, 1, 1, v18);
  v20 = a1[3];
  v32 = a1;
  sub_21A142764(a1, v20);
  sub_21A22CBDC();
  sub_21A2F8494();
  if (v2)
  {
    v21 = v33;
    sub_21A142808(v32);

    return sub_21A1427A8(v15 + v21, &qword_27CCFF3D0);
  }

  else
  {
    LOBYTE(v35) = 0;
    *v15 = sub_21A2F8214();
    v15[1] = v22;
    LOBYTE(v35) = 1;
    sub_21A22CD98(&qword_27CD02420, type metadata accessor for Duration);
    sub_21A2F8234();
    v23 = v31;
    sub_21A22972C(v7, v15 + v33);
    sub_21A176C98(&qword_27CD023E8);
    v34 = 2;
    sub_21A22CCFC(&qword_27CD02428, &qword_27CD02430);
    sub_21A2F8284();
    v24 = v29;
    *(v15 + *(v23 + 24)) = v35;
    sub_21A176C98(&qword_27CD02400);
    v34 = 3;
    sub_21A22CC30(&qword_27CD02438, sub_21A22CDE0);
    sub_21A2F8234();
    v25 = *(v23 + 28);
    (*(v24 + 8))(v11, v30);
    *(v15 + v25) = v35;
    sub_21A22D1A4(v15, v28, type metadata accessor for StepSection);
    sub_21A142808(v32);
    return sub_21A22D0DC(v15, type metadata accessor for StepSection);
  }
}

uint64_t sub_21A22A0B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v369 = sub_21A2F4BE4();
  v329 = *(v369 - 8);
  MEMORY[0x28223BE20](v369, v4);
  v368 = &v320 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v367 = &v320 - v8;
  v400 = sub_21A2F4DA4();
  v356 = *(v400 - 8);
  MEMORY[0x28223BE20](v400, v9);
  v399 = &v320 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v398 = &v320 - v13;
  v14 = sub_21A2F4D64();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v388 = &v320 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = sub_21A2F4CD4();
  v322 = *(v402 - 8);
  MEMORY[0x28223BE20](v402, v17);
  v387 = &v320 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v386 = &v320 - v21;
  v22 = sub_21A176C98(&qword_27CD014C0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v358 = &v320 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v374 = &v320 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v392 = (&v320 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v405 = &v320 - v33;
  v411 = sub_21A2F4C24();
  v321 = *(v411 - 8);
  MEMORY[0x28223BE20](v411, v34);
  v410 = &v320 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_21A2F4F54();
  v401 = *(v409 - 8);
  MEMORY[0x28223BE20](v409, v36);
  v373 = &v320 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v372 = &v320 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v404 = &v320 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v403 = &v320 - v46;
  v382 = sub_21A2F4C74();
  v371 = *(v382 - 8);
  MEMORY[0x28223BE20](v382, v47);
  v359 = &v320 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v50);
  v354 = &v320 - v51;
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v320 - v54;
  MEMORY[0x28223BE20](v56, v57);
  v381 = &v320 - v58;
  v353 = sub_21A2F4FE4();
  v345 = *(v353 - 8);
  MEMORY[0x28223BE20](v353, v59);
  v370 = &v320 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v62);
  v352 = &v320 - v63;
  v351 = type metadata accessor for Step();
  v334 = *(v351 - 8);
  MEMORY[0x28223BE20](v351, v64);
  v355 = &v320 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v67);
  v335 = &v320 - v68;
  v346 = sub_21A2F4BF4();
  *&v408 = *(v346 - 8);
  MEMORY[0x28223BE20](v346, v69);
  v330 = &v320 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v72);
  v74 = &v320 - v73;
  v75 = sub_21A176C98(&qword_27CD02460);
  MEMORY[0x28223BE20](v75 - 8, v76);
  v344 = &v320 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78, v79);
  v343 = &v320 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v84 = &v320 - v83;
  MEMORY[0x28223BE20](v85, v86);
  v88 = &v320 - v87;
  v89 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v89 - 8, v90);
  v342 = &v320 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92, v93);
  *&v412 = &v320 - v94;
  v323 = type metadata accessor for StepSection();
  v95 = v323[5];
  v96 = type metadata accessor for Duration();
  v97 = *(v96 - 8);
  v98 = *(v97 + 56);
  v99 = v97 + 56;
  v407 = v95;
  v98(a2 + v95, 1, 1, v96);
  *a2 = sub_21A2F4D04();
  a2[1] = v100;
  v327 = a2;
  v348 = a1;
  sub_21A2F4D14();
  v101 = v408;
  v102 = v346;
  sub_21A183960(v88, v84, &qword_27CD02460);
  v103 = *(v101 + 48);
  v339 = v101 + 48;
  v338 = v103;
  v104 = v103(v84, 1, v102);
  v105 = v330;
  v328 = v74;
  v341 = v96;
  v340 = v98;
  if (v104 == 1)
  {
    sub_21A1427A8(v88, &qword_27CD02460);
    v106 = v412;
    v98(v412, 1, 1, v96);
  }

  else
  {
    v107 = v74;
    (*(v101 + 32))(v74, v84, v102);
    (*(v101 + 16))(v105, v74, v102);
    v106 = v412;
    sub_21A24F574(v105, v412);
    (*(v101 + 8))(v107, v102);
    sub_21A1427A8(v88, &qword_27CD02460);
  }

  v108 = v99;
  v109 = v101;
  sub_21A22972C(v106, v327 + v407);
  v110 = sub_21A2F4CF4();
  v111 = *(v110 + 16);
  v112 = v402;
  if (!v111)
  {
    goto LABEL_52;
  }

  v419 = MEMORY[0x277D84F90];
  result = sub_21A25D510(0, v111, 0);
  v114 = 0;
  v337 = v110 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
  v350 = v419;
  v336 = v345 + 16;
  v326 = (v109 + 32);
  v325 = (v109 + 16);
  v324 = (v109 + 8);
  v361 = v371 + 16;
  v391 = (v401 + 16);
  v406 = (v321 + 8);
  v390 = (v322 + 48);
  v385 = (v322 + 32);
  v384 = (v322 + 16);
  v383 = (v322 + 8);
  v389 = (v401 + 8);
  v394 = (v356 + 16);
  v393 = (v356 + 8);
  v360 = (v371 + 8);
  v366 = v329 + 16;
  v365 = (v329 + 8);
  v331 = (v345 + 8);
  v357 = v55;
  v347 = v108;
  v333 = v110;
  v332 = v111;
  while (1)
  {
    if (v114 >= *(v110 + 16))
    {
      goto LABEL_89;
    }

    v115 = *(v345 + 72);
    v349 = v114;
    v116 = *(v345 + 16);
    v117 = v352;
    v118 = v353;
    v116(v352, v337 + v115 * v114, v353);
    v119 = v370;
    v116(v370, v117, v118);
    v120 = v341;
    v121 = v340;
    v340(v355, 1, 1, v341);
    v122 = v121;
    v123 = v343;
    sub_21A2F4FD4();
    v124 = v344;
    sub_21A183960(v123, v344, &qword_27CD02460);
    v125 = v346;
    if (v338(v124, 1, v346) == 1)
    {
      sub_21A1427A8(v123, &qword_27CD02460);
      v126 = v342;
      v122(v342, 1, 1, v120);
    }

    else
    {
      v127 = v328;
      (*v326)(v328, v124, v125);
      v128 = v330;
      (*v325)(v330, v127, v125);
      v129 = v342;
      sub_21A24F574(v128, v342);
      v130 = v125;
      v126 = v129;
      (*v324)(v127, v130);
      sub_21A1427A8(v123, &qword_27CD02460);
    }

    sub_21A22972C(v126, v355);
    v131 = sub_21A2F4FB4();
    v132 = *(v131 + 16);
    if (v132)
    {
      break;
    }

    v206 = MEMORY[0x277D84F90];
LABEL_40:
    *(v355 + *(v351 + 20)) = v206;
    v207 = sub_21A2F4FC4();
    v208 = *(v207 + 16);
    if (v208)
    {
      v418 = MEMORY[0x277D84F90];
      sub_21A25D61C(0, v208, 0);
      v209 = v418;
      v210 = v207 + ((*(v329 + 80) + 32) & ~*(v329 + 80));
      v211 = *(v329 + 72);
      v212 = *(v329 + 16);
      do
      {
        v213 = v367;
        v214 = v369;
        v212(v367, v210, v369);
        v215 = v368;
        v212(v368, v213, v214);
        sub_21A208FA0(v215, &v415);
        (*v365)(v213, v214);
        v216 = v415;
        v217 = v416;
        v218 = v417;
        v418 = v209;
        v220 = *(v209 + 16);
        v219 = *(v209 + 24);
        if (v220 >= v219 >> 1)
        {
          v412 = v416;
          v408 = v417;
          sub_21A25D61C((v219 > 1), v220 + 1, 1);
          v218 = v408;
          v217 = v412;
          v209 = v418;
        }

        *(v209 + 16) = v220 + 1;
        v221 = v209 + 40 * v220;
        *(v221 + 32) = v216;
        *(v221 + 40) = v217;
        *(v221 + 56) = v218;
        v210 += v211;
        --v208;
      }

      while (v208);

      v222 = *v331;
      v223 = v353;
      (*v331)(v370, v353);
      v222(v352, v223);
      v55 = v357;
    }

    else
    {

      v224 = *v331;
      v225 = v119;
      v226 = v353;
      (*v331)(v225, v353);
      v224(v352, v226);
      v209 = MEMORY[0x277D84F90];
    }

    v227 = v355;
    *(v355 + *(v351 + 24)) = v209;
    v228 = v335;
    sub_21A22D13C(v227, v335, type metadata accessor for Step);
    v229 = v350;
    v419 = v350;
    v231 = *(v350 + 2);
    v230 = *(v350 + 3);
    v112 = v402;
    v232 = v332;
    if (v231 >= v230 >> 1)
    {
      sub_21A25D510(v230 > 1, v231 + 1, 1);
      v228 = v335;
      v229 = v419;
    }

    v233 = v349 + 1;
    *(v229 + 2) = v231 + 1;
    v234 = (*(v334 + 80) + 32) & ~*(v334 + 80);
    v350 = v229;
    v235 = v228;
    v114 = v233;
    result = sub_21A22D13C(v235, &v229[v234 + *(v334 + 72) * v231], type metadata accessor for Step);
    v110 = v333;
    if (v114 == v232)
    {

      v236 = v350;
      goto LABEL_53;
    }
  }

  v418 = MEMORY[0x277D84F90];
  v133 = v131;
  sub_21A25D574(0, v132, 0);
  result = v133;
  v134 = 0;
  v135 = v418;
  v364 = v133 + ((*(v371 + 80) + 32) & ~*(v371 + 80));
  v363 = v133;
  v362 = v132;
  while (1)
  {
    if (v134 >= *(result + 16))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return result;
    }

    v379 = v135;
    v136 = *(v371 + 72);
    v380 = v134;
    v137 = *(v371 + 16);
    v138 = v381;
    v139 = v382;
    v137(v381, v364 + v136 * v134, v382);
    v137(v55, v138, v139);
    v378 = sub_21A2F4C54();
    v377 = v140;
    v376 = sub_21A2F4C64();
    v375 = v141;
    v142 = sub_21A2F4C44();
    if (v142)
    {
      break;
    }

    *&v412 = 0;
LABEL_26:
    v176 = sub_21A2F4C34();
    if (v176)
    {
      v177 = *(v176 + 16);
      if (v177)
      {
        v415 = MEMORY[0x277D84F90];
        v178 = v176;
        sub_21A25D834(0, v177, 0);
        v179 = v415;
        v180 = (*(v356 + 80) + 32) & ~*(v356 + 80);
        v395 = v178;
        v181 = v178 + v180;
        v397 = *(v356 + 72);
        v396 = *(v356 + 16);
        do
        {
          v182 = v398;
          v183 = v400;
          v184 = v396;
          v396(v398, v181, v400);
          v185 = v399;
          v184(v399, v182, v183);
          v186 = v410;
          sub_21A2F4D94();
          *&v408 = sub_21A2F4C04();
          v407 = sub_21A2F4C14();
          (*v406)(v186, v411);
          v187 = sub_21A2F4D84();
          v189 = v188;
          v190 = *v393;
          (*v393)(v185, v183);
          v190(v182, v183);
          v415 = v179;
          v192 = *(v179 + 16);
          v191 = *(v179 + 24);
          if (v192 >= v191 >> 1)
          {
            sub_21A25D834((v191 > 1), v192 + 1, 1);
            v179 = v415;
          }

          *(v179 + 16) = v192 + 1;
          v193 = (v179 + 32 * v192);
          v193[4] = v187;
          v193[5] = v189;
          v194 = v407;
          v193[6] = v408;
          v193[7] = v194;
          v181 += v397;
          --v177;
        }

        while (v177);

        v195 = *v360;
        v55 = v357;
        v196 = v382;
        (*v360)(v357, v382);
        v195(v381, v196);
        v112 = v402;
      }

      else
      {

        v199 = *v360;
        v200 = v382;
        (*v360)(v55, v382);
        v199(v381, v200);
        v179 = MEMORY[0x277D84F90];
        v112 = v402;
      }
    }

    else
    {
      v197 = *v360;
      v198 = v382;
      (*v360)(v55, v382);
      v197(v381, v198);
      v179 = 0;
    }

    v135 = v379;
    v418 = v379;
    v202 = *(v379 + 16);
    v201 = *(v379 + 24);
    v203 = v380;
    if (v202 >= v201 >> 1)
    {
      sub_21A25D574((v201 > 1), v202 + 1, 1);
      v203 = v380;
      v135 = v418;
    }

    v134 = v203 + 1;
    *(v135 + 16) = v202 + 1;
    v204 = (v135 + 48 * v202);
    v204[4] = v378;
    v204[5] = v377;
    v204[6] = v376;
    v204[7] = v375;
    v204[8] = v412;
    v204[9] = v179;
    v119 = v370;
    result = v363;
    if (v134 == v362)
    {
      v205 = v135;

      v206 = v205;
      goto LABEL_40;
    }
  }

  v143 = *(v142 + 16);
  if (!v143)
  {

    *&v412 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v414 = MEMORY[0x277D84F90];
  v144 = v142;
  sub_21A25D854(0, v143, 0);
  v145 = v144;
  v146 = 0;
  v147 = v414;
  v395 = v144 + ((*(v401 + 80) + 32) & ~*(v401 + 80));
  v397 = v144;
  v396 = v143;
  while (v146 < *(v145 + 16))
  {
    *&v412 = v147;
    v148 = *(v401 + 16);
    v149 = v403;
    v150 = v409;
    v148(v403, v395 + *(v401 + 72) * v146, v409);
    v148(v404, v149, v150);
    v151 = v410;
    sub_21A2F4F44();
    v152 = sub_21A2F4C04();
    v407 = sub_21A2F4C14();
    (*v406)(v151, v411);
    v153 = v405;
    sub_21A2F4F34();
    v154 = v153;
    v155 = v392;
    sub_21A183960(v154, v392, &qword_27CD014C0);
    v156 = (*v390)(v155, 1, v112);
    *&v408 = v152;
    if (v156 == 1)
    {
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v162 = -1;
    }

    else
    {
      v163 = v386;
      (*v385)(v386, v155, v112);
      v164 = v387;
      (*v384)(v387, v163, v112);
      sub_21A2F4CC4();
      v161 = v165;
      v157 = sub_21A2F4CA4();
      v413 = v166 & 1;
      v167 = v388;
      sub_21A2F4CB4();
      sub_21A2534D0(v167, &v415);
      v168 = *v383;
      (*v383)(v164, v112);
      v159 = v415;
      v160 = v416;
      v169 = v112;
      v162 = BYTE8(v416);
      v158 = v413;
      v168(v163, v169);
    }

    sub_21A1427A8(v405, &qword_27CD014C0);
    v170 = *v389;
    v171 = v409;
    (*v389)(v404, v409);
    v170(v403, v171);
    sub_21A1A3798(0, 0, 0, 0, 0, 255);
    v147 = v412;
    v414 = v412;
    v173 = *(v412 + 16);
    v172 = *(v412 + 24);
    if (v173 >= v172 >> 1)
    {
      sub_21A25D854((v172 > 1), v173 + 1, 1);
      v147 = v414;
    }

    ++v146;
    *(v147 + 16) = v173 + 1;
    v174 = v147 + (v173 << 6);
    v175 = v407;
    *(v174 + 32) = v408;
    *(v174 + 40) = v175;
    *(v174 + 48) = v161;
    *(v174 + 56) = v157;
    *(v174 + 64) = v158;
    *(v174 + 72) = v159;
    *(v174 + 80) = v160;
    *(v174 + 88) = v162;
    v112 = v402;
    v145 = v397;
    if (v396 == v146)
    {
      *&v412 = v147;

      v55 = v357;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_52:

  v236 = MEMORY[0x277D84F90];
LABEL_53:
  *(v327 + v323[6]) = v236;
  v237 = v348;
  v238 = sub_21A2F4CE4();
  if (v238)
  {
    v239 = v238;
    v240 = *(v238 + 16);
    if (v240)
    {
      v419 = MEMORY[0x277D84F90];
      result = sub_21A25D574(0, v240, 0);
      v241 = 0;
      v379 = v239 + ((*(v371 + 80) + 32) & ~*(v371 + 80));
      v242 = v419;
      v378 = v371 + 16;
      v395 = v401 + 16;
      v406 = (v321 + 8);
      v394 = (v322 + 48);
      v392 = (v322 + 32);
      v391 = (v322 + 16);
      v390 = (v322 + 8);
      v393 = (v401 + 8);
      v397 = v356 + 16;
      v396 = (v356 + 8);
      v377 = (v371 + 8);
      v376 = v239;
      v375 = v240;
      while (1)
      {
        if (v241 >= *(v239 + 16))
        {
          goto LABEL_88;
        }

        v243 = *(v371 + 16);
        v244 = v354;
        v245 = v382;
        v243(v354, v379 + *(v371 + 72) * v241, v382);
        v246 = v359;
        v243(v359, v244, v245);
        v247 = v246;
        v389 = sub_21A2F4C54();
        v385 = v248;
        v384 = sub_21A2F4C64();
        v383 = v249;
        v250 = sub_21A2F4C44();
        if (v250)
        {
          v251 = *(v250 + 16);
          if (v251)
          {
            v380 = v241;
            v381 = v242;
            v418 = MEMORY[0x277D84F90];
            v252 = v250;
            sub_21A25D854(0, v251, 0);
            result = v252;
            v253 = 0;
            v254 = v418;
            v403 = (v252 + ((*(v401 + 80) + 32) & ~*(v401 + 80)));
            v405 = v252;
            v404 = v251;
            while (v253 < *(result + 16))
            {
              *&v412 = v254;
              v255 = *(v401 + 16);
              v256 = v372;
              v257 = v409;
              v255(v372, &v403[*(v401 + 72) * v253], v409);
              v255(v373, v256, v257);
              v258 = v410;
              sub_21A2F4F44();
              v259 = sub_21A2F4C04();
              v407 = sub_21A2F4C14();
              (*v406)(v258, v411);
              v260 = v374;
              sub_21A2F4F34();
              v261 = v260;
              v262 = v358;
              sub_21A183960(v261, v358, &qword_27CD014C0);
              v263 = (*v394)(v262, 1, v112);
              *&v408 = v259;
              if (v263 == 1)
              {
                v264 = 0;
                v265 = 0;
                v266 = 0;
                v267 = 0;
                v268 = 0;
                v269 = -1;
              }

              else
              {
                v270 = v386;
                (*v392)(v386, v262, v112);
                v271 = v387;
                (*v391)(v387, v270, v112);
                sub_21A2F4CC4();
                v268 = v272;
                v264 = sub_21A2F4CA4();
                LOBYTE(v414) = v273 & 1;
                v274 = v388;
                sub_21A2F4CB4();
                sub_21A2534D0(v274, &v415);
                v275 = *v390;
                (*v390)(v271, v112);
                v266 = v415;
                v267 = v416;
                v276 = v112;
                v269 = BYTE8(v416);
                v265 = v414;
                v275(v270, v276);
              }

              sub_21A1427A8(v374, &qword_27CD014C0);
              v277 = *v393;
              v278 = v409;
              (*v393)(v373, v409);
              v277(v372, v278);
              sub_21A1A3798(0, 0, 0, 0, 0, 255);
              v254 = v412;
              v418 = v412;
              v280 = *(v412 + 16);
              v279 = *(v412 + 24);
              if (v280 >= v279 >> 1)
              {
                sub_21A25D854((v279 > 1), v280 + 1, 1);
                v254 = v418;
              }

              ++v253;
              *(v254 + 16) = v280 + 1;
              v281 = v254 + (v280 << 6);
              v282 = v407;
              *(v281 + 32) = v408;
              *(v281 + 40) = v282;
              *(v281 + 48) = v268;
              *(v281 + 56) = v264;
              *(v281 + 64) = v265;
              *(v281 + 72) = v266;
              *(v281 + 80) = v267;
              *(v281 + 88) = v269;
              v112 = v402;
              v247 = v359;
              result = v405;
              if (v404 == v253)
              {
                *&v412 = v254;

                v239 = v376;
                v240 = v375;
                v242 = v381;
                v241 = v380;
                v283 = sub_21A2F4C34();
                if (v283)
                {
                  goto LABEL_70;
                }

                goto LABEL_77;
              }
            }

            goto LABEL_87;
          }

          *&v412 = MEMORY[0x277D84F90];
          v283 = sub_21A2F4C34();
          if (v283)
          {
LABEL_70:
            v284 = *(v283 + 16);
            if (v284)
            {
              v380 = v241;
              v381 = v242;
              v415 = MEMORY[0x277D84F90];
              v285 = v283;
              sub_21A25D834(0, v284, 0);
              v286 = v415;
              v287 = (*(v356 + 80) + 32) & ~*(v356 + 80);
              v403 = v285;
              v288 = &v285[v287];
              v405 = *(v356 + 72);
              v404 = *(v356 + 16);
              do
              {
                v289 = v398;
                v290 = v400;
                v291 = v404;
                (v404)(v398, v288, v400);
                v292 = v399;
                (v291)(v399, v289, v290);
                v293 = v410;
                sub_21A2F4D94();
                *&v408 = sub_21A2F4C04();
                v407 = sub_21A2F4C14();
                (*v406)(v293, v411);
                v294 = sub_21A2F4D84();
                v296 = v295;
                v297 = *v396;
                (*v396)(v292, v290);
                v297(v289, v290);
                v415 = v286;
                v299 = *(v286 + 16);
                v298 = *(v286 + 24);
                if (v299 >= v298 >> 1)
                {
                  sub_21A25D834((v298 > 1), v299 + 1, 1);
                  v286 = v415;
                }

                *(v286 + 16) = v299 + 1;
                v300 = (v286 + 32 * v299);
                v300[4] = v294;
                v300[5] = v296;
                v301 = v407;
                v300[6] = v408;
                v300[7] = v301;
                v288 += v405;
                --v284;
              }

              while (v284);

              v302 = *v377;
              v303 = v382;
              (*v377)(v359, v382);
              result = (v302)(v354, v303);
              v112 = v402;
              v239 = v376;
              v240 = v375;
              v242 = v381;
              v241 = v380;
            }

            else
            {

              v307 = v247;
              v308 = *v377;
              v309 = v382;
              (*v377)(v307, v382);
              result = (v308)(v354, v309);
              v286 = MEMORY[0x277D84F90];
              v112 = v402;
            }

            goto LABEL_79;
          }
        }

        else
        {
          *&v412 = 0;
          v283 = sub_21A2F4C34();
          if (v283)
          {
            goto LABEL_70;
          }
        }

LABEL_77:
        v304 = v247;
        v305 = *v377;
        v306 = v382;
        (*v377)(v304, v382);
        result = (v305)(v354, v306);
        v286 = 0;
LABEL_79:
        v419 = v242;
        v311 = *(v242 + 2);
        v310 = *(v242 + 3);
        v312 = v348;
        v313 = v412;
        if (v311 >= v310 >> 1)
        {
          result = sub_21A25D574((v310 > 1), v311 + 1, 1);
          v313 = v412;
          v312 = v348;
          v242 = v419;
        }

        ++v241;
        *(v242 + 2) = v311 + 1;
        v314 = &v242[48 * v311];
        v315 = v385;
        *(v314 + 4) = v389;
        *(v314 + 5) = v315;
        v316 = v383;
        *(v314 + 6) = v384;
        *(v314 + 7) = v316;
        *(v314 + 8) = v313;
        *(v314 + 9) = v286;
        if (v241 == v240)
        {
          v318 = sub_21A2F4D24();
          (*(*(v318 - 8) + 8))(v312, v318);

          goto LABEL_85;
        }
      }
    }

    v319 = sub_21A2F4D24();
    result = (*(*(v319 - 8) + 8))(v348, v319);
    v242 = MEMORY[0x277D84F90];
  }

  else
  {
    v317 = sub_21A2F4D24();
    result = (*(*(v317 - 8) + 8))(v237, v317);
    v242 = 0;
  }

LABEL_85:
  *(v327 + v323[7]) = v242;
  return result;
}