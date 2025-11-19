id sub_21A1AEA04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimultaneousLongPressGesture.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_21A1AEA68(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21A1AEA8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A1AEAD4(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

id sub_21A1AEB48@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for SimultaneousLongPressGesture.Coordinator()) init];
  *a1 = result;
  return result;
}

id sub_21A1AEB80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  sub_21A176C98(&qword_27CCFF948);
  sub_21A2F6594();
  [v0 setDelegate_];

  return v0;
}

id sub_21A1AEC08(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  [a1 setMinimumPressDuration_];
  [a1 setAllowableMovement_];
  v6 = sub_21A1AC81C(v3, v4) & 1;

  return [a1 setEnabled_];
}

uint64_t sub_21A1AEC9C(uint64_t a1, int a2)
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

uint64_t sub_21A1AECE4(uint64_t result, int a2, int a3)
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

uint64_t sub_21A1AED60@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a3;
  v35 = sub_21A176C98(&qword_27CCFEF60);
  MEMORY[0x28223BE20](v35, v5);
  v37 = &v32 - v6;
  v34 = sub_21A176C98(&qword_27CCFF9B0);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v9 = &v32 - v8;
  *&v45[0] = a1;
  *(&v45[0] + 1) = a2;
  sub_21A1834FC();
  sub_21A2F5434();
  v10 = sub_21A2F69B4();
  v12 = v11;
  v14 = v13;
  sub_21A2F67C4();
  v15 = sub_21A2F68E4();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21A1834EC(v10, v12, v14 & 1);
  v22 = v9;
  v23 = v37;

  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v44 = v19 & 1;
  v43 = 0;
  *&v38 = v15;
  *(&v38 + 1) = v17;
  LOBYTE(v39) = v19 & 1;
  *(&v39 + 1) = v21;
  *&v40 = KeyPath;
  BYTE8(v40) = 1;
  *&v41 = v25;
  *(&v41 + 1) = 2;
  v42 = 0;
  v26 = sub_21A176C98(&qword_27CCFF9B8);
  v27 = sub_21A1AF1C4();
  sub_21A2F6DD4();
  v45[2] = v40;
  v45[3] = v41;
  v46 = v42;
  v45[0] = v38;
  v45[1] = v39;
  sub_21A1427A8(v45, &qword_27CCFF9B8);
  v28 = *MEMORY[0x277CDFA10];
  v29 = sub_21A2F5A64();
  (*(*(v29 - 8) + 104))(v23, v28, v29);
  sub_21A1AF334();
  result = sub_21A2F7874();
  if (result)
  {
    *&v38 = v26;
    *(&v38 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
    v31 = v34;
    sub_21A2F6BC4();
    sub_21A1427A8(v23, &qword_27CCFEF60);
    return (*(v33 + 8))(v22, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A1AF10C@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A2F5E84();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21A1AF170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DB4();
  *a1 = result;
  return result;
}

unint64_t sub_21A1AF1C4()
{
  result = qword_27CCFF9C0;
  if (!qword_27CCFF9C0)
  {
    sub_21A176D98(&qword_27CCFF9B8);
    sub_21A1AF27C();
    sub_21A1772F8(&qword_27CCFF9E8, &qword_27CCFF9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF9C0);
  }

  return result;
}

unint64_t sub_21A1AF27C()
{
  result = qword_27CCFF9C8;
  if (!qword_27CCFF9C8)
  {
    sub_21A176D98(&qword_27CCFF9D0);
    sub_21A1772F8(&qword_27CCFF9D8, &qword_27CCFF9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF9C8);
  }

  return result;
}

unint64_t sub_21A1AF334()
{
  result = qword_27CCFEFA0;
  if (!qword_27CCFEFA0)
  {
    sub_21A2F5A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFEFA0);
  }

  return result;
}

uint64_t RecipeImportError.hashValue.getter()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  return sub_21A2F8474();
}

uint64_t sub_21A1AF424()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  return sub_21A2F8474();
}

uint64_t sub_21A1AF468()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  return sub_21A2F8474();
}

unint64_t sub_21A1AF4AC()
{
  result = qword_27CCFF9F8;
  if (!qword_27CCFF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF9F8);
  }

  return result;
}

unint64_t sub_21A1AF504()
{
  result = qword_27CCFFA00;
  if (!qword_27CCFFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFA00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecipeCardViewModel.FullScreenSheet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RecipeCardViewModel.FullScreenSheet(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_21A1AF660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v24 = MEMORY[0x277D84F90];
  sub_21A25D704(0, v10, 0);
  v11 = v24;
  v12 = (a1 + 72);
  while (1)
  {
    v13 = *(v12 - 4);
    v14 = *(v12 - 3);
    v15 = *(v12 - 2);
    v17 = *(v12 - 1);
    v16 = *v12;
    v23[0] = *(v12 - 5);
    v23[1] = v13;
    v23[2] = v14;
    v23[3] = v15;
    v23[4] = v17;
    v23[5] = v16;
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A1B2DF8(v23, v22, v9);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v24 = v11;
    v19 = *(v11 + 16);
    v18 = *(v11 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_21A25D704(v18 > 1, v19 + 1, 1);
      v11 = v24;
    }

    v12 += 6;
    *(v11 + 16) = v19 + 1;
    sub_21A1B4118(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, type metadata accessor for IngredientsViewModel.Ingredient);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1AF884()
{
  v1 = sub_21A2F4404();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_21A2F79A4();
  if (*(v0 + 24))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  sub_21A2F79A4();
  v10 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  sub_21A183960(v0 + *(v10 + 28), v9, &qword_27CCFF3E0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_21A2F8454();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_21A2F8454();
  sub_21A1B1714(&qword_27CCFFA28, MEMORY[0x277CB9F28]);
  sub_21A2F7804();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_21A1AFAB4()
{
  sub_21A2F8434();
  sub_21A1AF884();
  return sub_21A2F8474();
}

uint64_t sub_21A1AFAF8()
{
  sub_21A2F8434();
  sub_21A1AF884();
  return sub_21A2F8474();
}

uint64_t sub_21A1AFB38@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A1AFBE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1AFC90(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }
}

uint64_t sub_21A1AFDF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  return sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, a1, &qword_27CCFEA80);
}

uint64_t sub_21A1AFEB8(uint64_t a1)
{
  v3 = sub_21A2F4794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFFA80);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - v10;
  v12 = sub_21A176C98(&qword_27CCFEA80);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v31 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL;
  sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, &v29 - v18, &qword_27CCFEA80);
  v20 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFEA80);
  v32 = a1;
  sub_21A183960(a1, &v11[v20], &qword_27CCFEA80);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEA80);
    if (v21(&v11[v20], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFEA80);
      v22 = v32;
LABEL_9:
      sub_21A1B4088(v22, v1 + v31);
      return sub_21A1427A8(v22, &qword_27CCFEA80);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v16, &qword_27CCFEA80);
  if (v21(&v11[v20], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEA80);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CCFFA80);
    v22 = v32;
    goto LABEL_7;
  }

  v25 = v30;
  (*(v4 + 32))(v30, &v11[v20], v3);
  sub_21A1B1714(&qword_27CCFF320, MEMORY[0x277CC9260]);
  v26 = sub_21A2F7874();
  v27 = *(v4 + 8);
  v27(v25, v3);
  sub_21A1427A8(v19, &qword_27CCFEA80);
  v27(v16, v3);
  sub_21A1427A8(v11, &qword_27CCFEA80);
  v22 = v32;
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v24);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = v22;
  v33 = v1;
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v22, &qword_27CCFEA80);
}

uint64_t sub_21A1B03B8()
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  return *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement);
}

uint64_t sub_21A1B0460(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A1B058C()
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A1B0630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
  return sub_21A2F5434();
}

uint64_t sub_21A1B0748(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = sub_21A2F5434();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1B090C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  return *(v2 + *a2);
}

uint64_t sub_21A1B09C0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  *a3 = *(v5 + *a2);
  return result;
}

unsigned __int8 *sub_21A1B0A9C(unsigned __int8 *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *result;
  if (v5 == *(*a2 + *a5))
  {
    *(*a2 + *a5) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A1B0BA4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v2 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients;
  v3 = (*(*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients) + 16) & 1) + (*(*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients) + 16) >> 1);
  swift_getKeyPath();
  sub_21A2F5094();

  v4 = *(v0 + v2);
  v5 = *(v4 + 16);
  if (v5 < v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 == v3)
  {
    sub_21A2F5434();
  }

  else
  {
    v6 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) - 8);
    sub_21A1B39FC(v4, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, (2 * v3) | 1);
    v4 = v7;
  }

  swift_getKeyPath();
  sub_21A2F5094();

  v1 = *(v0 + v2);
  v5 = *(v1 + 16);
  if (v5 < v3)
  {
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_11:
    v9 = (2 * v5) | 1;
    v10 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) - 8);
    sub_21A1B39FC(v1, v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v3, v9);
    return v4;
  }

  sub_21A2F5434();
  return v4;
}

uint64_t sub_21A1B0DCC()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = v0;
  v7 = *(v0 + 16);
  v8 = *(v6 + 24);
  v9 = (v6 + 16);
  sub_21A2F5434();
  LOBYTE(v7) = sub_21A18F608(v7, v8, 0, 0);

  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    *(&v20 - 3) = 0;
    *(&v20 - 2) = 0;
    *(&v20 - 4) = v1;
    v21 = v1;
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
  }

  v12 = sub_21A2F4794();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_21A1AFEB8(v5);
  sub_21A1B0748(MEMORY[0x277D84F90], &OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients, sub_21A1A0708);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement))
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13, v14);
    *(&v20 - 2) = v1;
    *(&v20 - 8) = 0;
    v21 = v1;
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement) = 0;
  }

  result = sub_21A1B0748(MEMORY[0x277D84FA0], &OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs, sub_21A20106C);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isFocusable))
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16, v17);
    *(&v20 - 2) = v1;
    *(&v20 - 8) = 0;
    v21 = v1;
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isFocusable) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled))
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18, v19);
    *(&v20 - 2) = v1;
    *(&v20 - 8) = 0;
    v21 = v1;
    sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled) = 0;
  }

  return result;
}

uint64_t sub_21A1B12A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  sub_21A2F5094();

  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = *(v2 + 16);
    swift_getKeyPath();
    sub_21A2F5434();
    sub_21A2F5094();

    v8 = *(v2 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs);
    sub_21A2F5434();
    v9 = sub_21A2D655C(a1, a2, v8);

    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    return sub_21A18FAD4(v7, v6, a1, a2, v9 & 1, 0, 0x80u);
  }

  return result;
}

uint64_t sub_21A1B1434()
{

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, &qword_27CCFEA80);

  v1 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_21A1B15A8()
{
  sub_21A13F87C(319, &qword_2811B3C60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A13E48C(319, &qword_2811B8CC8, MEMORY[0x277CB9F28]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A1B1714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1B175C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL;
  v2 = sub_21A2F4794();
  v3 = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement) = 0;
  *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isFocusable) = 0;
  *(v0 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled) = 0;
  MEMORY[0x21CED60A0](v3);
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A1B1834()
{
  v0 = swift_allocObject();
  sub_21A1B175C();
  return v0;
}

uint64_t sub_21A1B186C()
{
  sub_21A1B3F64();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A1B18A8@<X0>(uint64_t *a1@<X8>)
{
  sub_21A1B1714(&qword_27CCFFA78, type metadata accessor for IngredientsViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A1B1920@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFFA68);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for IngredientsViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFFA68);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1B1714(&qword_27CCFFA70, type metadata accessor for IngredientsViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A1B4118(v5, v8, type metadata accessor for IngredientsViewModelSource);
  }

  return result;
}

uint64_t sub_21A1B1A7C()
{
  v1 = v0;
  v138 = sub_21A2F4794();
  v141 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v2);
  v127 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_21A176C98(&qword_27CCFFA80);
  MEMORY[0x28223BE20](v137, v4);
  v142 = &v126 - v5;
  v6 = sub_21A176C98(&qword_27CCFEA80);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v135 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v131 = &v126 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v126 - v14;
  v16 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v126 = (&v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for RecipeSourceType();
  v136 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v129 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v130 = &v126 - v24;
  v25 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v126 - v27;
  v29 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v126 - v31;
  v33 = type metadata accessor for IngredientsViewModelSource(0);
  v35 = MEMORY[0x28223BE20](v33, v34);
  v134 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v133 = &v126 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v139 = &v126 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v132 = &v126 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v146 = &v126 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v126 - v50;
  v52 = type metadata accessor for Recipe();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54);
  v56 = (&v126 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A1B4210(v1, v51, type metadata accessor for IngredientsViewModelSource);
  v144 = v33;
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A1B41B0(v51, type metadata accessor for IngredientsViewModelSource);
  v57 = *(v53 + 48);
  v143 = v52;
  if (v57(v32, 1, v52) == 1)
  {
    sub_21A1427A8(v32, &qword_27CCFF058);
    return sub_21A1B0DCC();
  }

  sub_21A1B4118(v32, v56, type metadata accessor for Recipe);
  v140 = v1;
  v59 = *v1;
  swift_getKeyPath();
  v60 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel___observationRegistrar;
  v150 = v59;
  v61 = sub_21A1B1714(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel);
  v145 = v60;
  v148 = v61;
  sub_21A2F5094();

  v62 = *(v59 + 24);
  v64 = *v56;
  v63 = v56[1];
  v147 = v56;
  v128 = v15;
  if (!v62)
  {
    v65 = v142;
    if (!v63)
    {

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v65 = v142;
  if (!v63)
  {
LABEL_9:
    sub_21A2F5434();

LABEL_10:
    v64 = *v147;
    v63 = v147[1];
    v66 = *(v59 + 16);
    v67 = *(v59 + 24);
    sub_21A2F5434();
    sub_21A2F5434();
    LOBYTE(v66) = sub_21A18F608(v66, v67, v64, v63);

    if (v66)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v69);
      *(&v126 - 4) = v59;
      *(&v126 - 3) = v64;
      *(&v126 - 2) = v63;
      v150 = v59;
      sub_21A2F5084();
    }

    else
    {
      *(v59 + 16) = v64;
      *(v59 + 24) = v63;
    }

    v65 = v142;
    goto LABEL_14;
  }

  if (*(v59 + 16) == v64 && v62 == v63)
  {
    v64 = *(v59 + 16);
    goto LABEL_14;
  }

  if ((sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  sub_21A183960(v147 + *(v143 + 48), v28, &qword_27CCFF040);
  if ((*(v136 + 48))(v28, 1, v19) == 1)
  {
    v70 = 0;
    v71 = 0;
    goto LABEL_24;
  }

  v72 = v130;
  sub_21A1B4118(v28, v130, type metadata accessor for RecipeSourceType);
  v73 = v129;
  sub_21A1B4210(v72, v129, type metadata accessor for RecipeSourceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21A1B41B0(v73, type metadata accessor for RecipeSourceType);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_22:
    v70 = 0;
    v71 = 0;
    goto LABEL_23;
  }

  v75 = v73;
  v76 = v126;
  sub_21A1B4118(v75, v126, type metadata accessor for ExternalRecipeSource);
  v70 = *v76;
  v71 = v76[1];
  sub_21A2F5434();
  sub_21A1B41B0(v76, type metadata accessor for ExternalRecipeSource);
LABEL_23:
  sub_21A1B41B0(v72, type metadata accessor for RecipeSourceType);
LABEL_24:
  v77 = (v140 + *(v144 + 44));
  v78 = v77[3];
  v79 = v77[4];
  sub_21A142764(v77, v78);
  v150 = v70;
  v151 = v71;
  v80 = v128;
  (*(v79 + 8))(v64, v63, &v150, v78, v79);

  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v81 = *(v137 + 48);
  sub_21A183960(v59 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, v65, &qword_27CCFEA80);
  sub_21A183960(v80, v65 + v81, &qword_27CCFEA80);
  v82 = *(v141 + 48);
  v83 = v138;
  if (v82(v65, 1, v138) != 1)
  {
    v142 = 0;
    v86 = v131;
    sub_21A183960(v65, v131, &qword_27CCFEA80);
    if (v82(v65 + v81, 1, v83) != 1)
    {
      v98 = v141;
      v99 = v65 + v81;
      v100 = v127;
      (*(v141 + 32))(v127, v99, v83);
      sub_21A1B1714(&qword_27CCFF320, MEMORY[0x277CC9260]);
      v101 = sub_21A2F7874();
      v102 = *(v98 + 8);
      v102(v100, v83);
      v102(v86, v83);
      v80 = v128;
      sub_21A1427A8(v65, &qword_27CCFEA80);
      v85 = v140;
      if (v101)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    (*(v141 + 8))(v86, v83);
    v85 = v140;
LABEL_29:
    sub_21A1427A8(v65, &qword_27CCFFA80);
LABEL_30:
    v87 = v135;
    sub_21A183960(v80, v135, &qword_27CCFEA80);
    sub_21A1AFEB8(v87);
    goto LABEL_31;
  }

  v84 = v82(v65 + v81, 1, v83);
  v85 = v140;
  if (v84 != 1)
  {
    goto LABEL_29;
  }

  sub_21A1427A8(v65, &qword_27CCFEA80);
LABEL_31:
  v88 = sub_21A1AF660(*(v147 + *(v143 + 68)), v85);
  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v89 = sub_21A2F5434();
  v90 = sub_21A1A0708(v89, v88);

  if (v90)
  {
  }

  else
  {
    sub_21A1B0748(v88, &OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients, sub_21A1A0708);
  }

  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v91 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement;
  v92 = *(v59 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement);
  v93 = v146;
  sub_21A1B4210(v85, v146, type metadata accessor for IngredientsViewModelSource);
  sub_21A176C98(&qword_27CCFFA40);
  sub_21A2F7594();
  sub_21A1B41B0(v93, type metadata accessor for IngredientsViewModelSource);
  if (v92 != v150)
  {
    v94 = v132;
    sub_21A1B4210(v85, v132, type metadata accessor for IngredientsViewModelSource);
    sub_21A2F7594();
    sub_21A1B41B0(v94, type metadata accessor for IngredientsViewModelSource);
    v95 = v150;
    if (v150 == *(v59 + v91))
    {
      *(v59 + v91) = v150;
    }

    else
    {
      v96 = swift_getKeyPath();
      MEMORY[0x28223BE20](v96, v97);
      *(&v126 - 2) = v59;
      *(&v126 - 8) = v95;
      v150 = v59;
      sub_21A2F5084();
    }
  }

  v103 = v139;
  sub_21A1B4210(v85, v139, type metadata accessor for IngredientsViewModelSource);
  sub_21A176C98(&qword_27CCFFA48);
  sub_21A2F7594();
  sub_21A1B41B0(v103, type metadata accessor for IngredientsViewModelSource);
  v104 = v150;
  if (*(v150 + 16) && (v105 = sub_21A261F58(*v147, v147[1]), (v106 & 1) != 0))
  {
    v107 = *(*(v104 + 56) + 8 * v105);
    sub_21A2F5434();
  }

  else
  {
    v107 = MEMORY[0x277D84FA0];
  }

  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v108 = sub_21A2F5434();
  v109 = sub_21A20106C(v108, v107);

  if (v109)
  {
  }

  else
  {
    sub_21A1B0748(v107, &OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__selectedIngredientIDs, sub_21A20106C);
  }

  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v110 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isFocusable;
  v111 = *(v59 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isFocusable);
  v112 = v146;
  sub_21A1B4210(v85, v146, type metadata accessor for IngredientsViewModelSource);
  sub_21A176C98(&qword_27CCFF118);
  sub_21A2F7594();
  sub_21A1B41B0(v112, type metadata accessor for IngredientsViewModelSource);
  if (v111 != v150)
  {
    v113 = v133;
    sub_21A1B4210(v85, v133, type metadata accessor for IngredientsViewModelSource);
    sub_21A2F7594();
    sub_21A1B41B0(v113, type metadata accessor for IngredientsViewModelSource);
    v114 = v150;
    if (v150 == *(v59 + v110))
    {
      *(v59 + v110) = v150;
    }

    else
    {
      v115 = swift_getKeyPath();
      MEMORY[0x28223BE20](v115, v116);
      *(&v126 - 2) = v59;
      *(&v126 - 8) = v114;
      v150 = v59;
      sub_21A2F5084();
    }
  }

  swift_getKeyPath();
  v150 = v59;
  sub_21A2F5094();

  v117 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled;
  v118 = *(v59 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__isGroceryListEnabled);
  v119 = v146;
  sub_21A1B4210(v85, v146, type metadata accessor for IngredientsViewModelSource);
  sub_21A176C98(&qword_27CCFFA50);
  sub_21A2F7594();
  sub_21A1B41B0(v119, type metadata accessor for IngredientsViewModelSource);
  v120 = v151;
  sub_21A18F700(v150, v151);
  if ((v118 ^ (v120 == 1)))
  {
    sub_21A1427A8(v80, &qword_27CCFEA80);
  }

  else
  {
    v121 = v134;
    sub_21A1B4210(v85, v134, type metadata accessor for IngredientsViewModelSource);
    sub_21A2F7594();
    sub_21A1B41B0(v121, type metadata accessor for IngredientsViewModelSource);
    v122 = v151;
    v123 = v151 != 1;
    sub_21A18F700(v150, v151);
    if ((v123 ^ *(v59 + v117)))
    {
      v124 = swift_getKeyPath();
      MEMORY[0x28223BE20](v124, v125);
      *(&v126 - 2) = v59;
      *(&v126 - 8) = v122 != 1;
      v149 = v59;
      sub_21A2F5084();

      sub_21A1427A8(v80, &qword_27CCFEA80);
    }

    else
    {
      sub_21A1427A8(v80, &qword_27CCFEA80);
      *(v59 + v117) = v122 != 1;
    }
  }

  return sub_21A1B41B0(v147, type metadata accessor for Recipe);
}

unint64_t sub_21A1B2DF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21A2F4524();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v94 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v90 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  v18 = (a2 + *(type metadata accessor for IngredientsViewModelSource(0) + 40));
  v19 = *v18;
  v98 = v13;
  v107 = v15;
  if (v19)
  {
    v97 = a3;
    v20 = v18[1];
    v21 = a1[5];
    v99 = v13;
    v100 = v14;
    v101 = v15;
    v102 = v16;
    v103 = v17;
    v104 = v21;
    v22 = *(v20 + 16);
    v23 = v14;
    sub_21A2F5434();
    v24 = v16;
    sub_21A2F5434();
    v25 = v20;
    a3 = v97;
    v22(&v99, v19, v25);
  }

  else
  {
    v26 = sub_21A2F4404();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v23 = v14;
    sub_21A2F5434();
    v24 = v16;
    sub_21A2F5434();
  }

  sub_21A176C98(&qword_27CCFFA90);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  result = (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  if (!v17 || !v17[2])
  {
    sub_21A1B373C(v98, v23, v107, v24, v12, a3);

    sub_21A1427A8(v12, &qword_27CCFF3E0);
  }

  v32 = v17[4];
  v33 = v17[5];
  v34 = v24;
  v35 = v107;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v36 = v107 & 0xFFFFFFFFFFFFLL;
  }

  v37 = (v36 << 16) | 7;
  v97 = v23;
  if ((v24 & 0x1000000000000000) != 0)
  {
    v91 = v107 & 0x800000000000000;
    v92 = v32;
    if ((v107 & 0x800000000000000) == 0)
    {
      v37 = (v36 << 16) | 0xB;
    }

    v23 = v24;
    v57 = v37;
    v58 = v33;
    v59 = sub_21A2F7A14();
    v32 = v92;
    v37 = v57;
    v34 = v23;
    if ((v60 & 1) == 0)
    {
      v33 = v58;
      v38 = v59;
      v39 = v91 >> 59;
LABEL_13:
      result = v38;
      if ((v38 & 0xC) == 4 << v39)
      {
        v61 = v38;
        v23 = v34;
        v91 = v37;
        v62 = v34;
        v63 = v38;
        v64 = v33;
        result = sub_21A25EC14(v61, v35, v62);
        v33 = v64;
        v38 = v63;
        v34 = v23;
        v93 = v27;
        if ((v23 & 0x1000000000000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v93 = v27;
        if ((v34 & 0x1000000000000000) == 0)
        {
LABEL_15:
          v40 = result >> 16;
          v41 = (result >> 16) + v33;
          if (__OFADD__(result >> 16, v33))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v33 < 0)
          {
            if (v40 < v36)
            {
              goto LABEL_31;
            }

            v23 = v33;
            if (v41 >= v36)
            {
              goto LABEL_31;
            }
          }

          else if (v36 < v40 || (v23 = v33, v36 >= v41))
          {
LABEL_31:
            if (v41 < 0)
            {
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            if (v36 < v41)
            {
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v56 = (v41 << 16) | 4;
LABEL_44:
            if (v56 >> 14 >= v38 >> 14)
            {
              sub_21A2F5434();
              v75 = sub_21A2F7A94();
              v91 = v76;
              v92 = v75;
              v90 = v77;
              v79 = v78;
              v99 = v35;
              v100 = v34;
              v105 = 0;
              v106 = 0xE000000000000000;
              sub_21A1B42DC();
              sub_21A2F7984();
              v105 = v99;
              v106 = v100;
              v80 = v94;
              sub_21A2F4504();
              sub_21A1834FC();
              v81 = sub_21A2F7EE4();
              v107 = v82;
              (*(v95 + 8))(v80, v96);

              v83 = MEMORY[0x21CED6410](v92, v91, v90, v79);
              v85 = v84;

              sub_21A1B4330(v12, a3 + *(v30 + 28));

              v86 = v97;
              *a3 = v98;
              a3[1] = v86;
              a3[2] = v83;
              a3[3] = v85;
              v87 = v107;
              a3[4] = v81;
              a3[5] = v87;
              return result;
            }

            __break(1u);
            goto LABEL_51;
          }

LABEL_40:
          v96 = v12;
          v66 = qword_27CCFE7C8;
          sub_21A2F5434();
          v30 = v34;
          if (v66 == -1)
          {
LABEL_41:
            v67 = sub_21A2F53E4();
            sub_21A177CBC(v67, qword_27CD23C98);
            v68 = v97;
            sub_21A2F5434();
            sub_21A2F5434();
            v69 = sub_21A2F53C4();
            v70 = sub_21A2F7DE4();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v99 = v72;
              *v71 = 136446978;
              v73 = v98;
              *(v71 + 4) = sub_21A25B5DC(v98, v68, &v99);
              *(v71 + 12) = 2048;
              *(v71 + 14) = v92;
              *(v71 + 22) = 2048;
              *(v71 + 24) = v23;
              *(v71 + 32) = 2082;
              v74 = v107;
              *(v71 + 34) = sub_21A25B5DC(v107, v30, &v99);
              _os_log_impl(&dword_21A137000, v69, v70, "Text range length out of bounds for recipe: %{public}s, textRange.start: %ld, textRange.length: %ld, step: %{public}s", v71, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x21CED7BA0](v72, -1, -1);
              MEMORY[0x21CED7BA0](v71, -1, -1);
            }

            else
            {

              v73 = v98;
              v74 = v107;
            }

            v88 = v74;
            v89 = v96;
            sub_21A1B373C(v73, v68, v88, v30, v96, a3);

            swift_bridgeObjectRelease_n();
            sub_21A1427A8(v89, &qword_27CCFF3E0);
          }

LABEL_49:
          swift_once();
          goto LABEL_41;
        }
      }

      v23 = v33;
      result = sub_21A2F7A14();
      if ((v65 & 1) == 0)
      {
        v56 = result;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

LABEL_22:
    v42 = v32;
    v96 = v12;
    v43 = v35;
    v44 = qword_27CCFE7C8;
    sub_21A2F5434();
    v45 = v34;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_21A2F53E4();
    sub_21A177CBC(v46, qword_27CD23C98);
    v47 = v97;
    sub_21A2F5434();
    sub_21A2F5434();
    v48 = sub_21A2F53C4();
    v49 = sub_21A2F7DE4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v93 = v27;
      v51 = v50;
      v52 = swift_slowAlloc();
      v99 = v52;
      *v51 = 136446722;
      v53 = v98;
      *(v51 + 4) = sub_21A25B5DC(v98, v97, &v99);
      *(v51 + 12) = 2048;
      *(v51 + 14) = v42;
      *(v51 + 22) = 2082;
      *(v51 + 24) = sub_21A25B5DC(v43, v45, &v99);
      _os_log_impl(&dword_21A137000, v48, v49, "Text range start out of bounds for recipe: %{public}s, textRange.start: %ld, step: %{public}s", v51, 0x20u);
      swift_arrayDestroy();
      v54 = v52;
      v47 = v97;
      MEMORY[0x21CED7BA0](v54, -1, -1);
      MEMORY[0x21CED7BA0](v51, -1, -1);
    }

    else
    {

      v53 = v98;
    }

    v55 = v96;
    sub_21A1B373C(v53, v47, v43, v45, v96, a3);

    swift_bridgeObjectRelease_n();
    sub_21A1427A8(v55, &qword_27CCFF3E0);
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    if (v36 >= v32)
    {
      v92 = v32;
      v38 = (v32 << 16) | 4;
      LOBYTE(v39) = 1;
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  if (!v36)
  {
    goto LABEL_22;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_21A1B373C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v27 = a4;
  v28 = a5;
  v29 = a1;
  v9 = sub_21A2F4524();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A176C98(&qword_27CCFFA90);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v26 - v16;
  v18 = swift_projectBox();
  sub_21A183960(v18, v17, &qword_27CCFFA90);
  v19 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return sub_21A1B4118(v17, a6, type metadata accessor for IngredientsViewModel.Ingredient);
  }

  sub_21A1427A8(v17, &qword_27CCFFA90);
  v30 = a3;
  v31 = v27;
  v21 = a2;
  sub_21A2F5434();
  sub_21A2F4504();
  sub_21A1834FC();
  v22 = sub_21A2F7EE4();
  v24 = v23;
  (*(v10 + 8))(v13, v9);
  sub_21A183960(v28, a6 + *(v19 + 28), &qword_27CCFF3E0);
  *a6 = v29;
  a6[1] = v21;
  a6[2] = 0;
  a6[3] = 0;
  a6[4] = v22;
  a6[5] = v24;
  sub_21A1427A8(v18, &qword_27CCFFA90);
  sub_21A1B4210(a6, v18, type metadata accessor for IngredientsViewModel.Ingredient);
  return (*(v20 + 56))(v18, 0, 1, v19);
}

void sub_21A1B39FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_21A176C98(&qword_27CCFFA88);
      v7 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for IngredientsViewModel.Ingredient(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

BOOL sub_21A1B3B9C(void *a1, void *a2)
{
  v4 = sub_21A2F4404();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_21A176C98(&qword_27CCFF3E8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v27 = v8;
  v19 = *(type metadata accessor for IngredientsViewModel.Ingredient(0) + 28);
  v20 = *(v13 + 48);
  sub_21A183960(a1 + v19, v16, &qword_27CCFF3E0);
  sub_21A183960(a2 + v19, &v16[v20], &qword_27CCFF3E0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_21A1427A8(v16, &qword_27CCFF3E0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_21A183960(v16, v12, &qword_27CCFF3E0);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_19:
    sub_21A1427A8(v16, &qword_27CCFF3E8);
    return 0;
  }

  v23 = v27;
  (*(v5 + 32))(v27, &v16[v20], v4);
  sub_21A1B1714(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
  v24 = sub_21A2F7874();
  v25 = *(v5 + 8);
  v25(v23, v4);
  v25(v12, v4);
  sub_21A1427A8(v16, &qword_27CCFF3E0);
  return (v24 & 1) != 0;
}

unint64_t sub_21A1B3F64()
{
  result = qword_27CCFFA30;
  if (!qword_27CCFFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFA30);
  }

  return result;
}

uint64_t sub_21A1B4088(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEA80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1B4118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1B41B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1B4210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1B4298(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
  sub_21A2F5434();
}

unint64_t sub_21A1B42DC()
{
  result = qword_27CCFFA98;
  if (!qword_27CCFFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFA98);
  }

  return result;
}

uint64_t sub_21A1B4330(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1B43FC()
{
  sub_21A17A14C();
  sub_21A17A1A0();
  sub_21A2F7624();
  return v1;
}

uint64_t type metadata accessor for SetupUserDidScrollTriggerModifier()
{
  result = qword_27CCFFAA8;
  if (!qword_27CCFFAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1B4540()
{
  sub_21A1B45AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A1B45AC()
{
  if (!qword_27CCFFAB8)
  {
    type metadata accessor for UserDidScrollTrigger();
    v0 = sub_21A2F73E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFFAB8);
    }
  }
}

uint64_t sub_21A1B461C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserDidScrollTrigger();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_21A1B4654@<X0>(void *a1@<X8>)
{
  sub_21A1B47D0();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1B46A4()
{
  sub_21A1B47D0();

  return sub_21A2F5EF4();
}

uint64_t sub_21A1B4704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFFAA0);
  sub_21A2F73D4();
  v5 = sub_21A176C98(&qword_27CCFFAC0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_21A176C98(&qword_27CCFFAC8);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v8;
  return result;
}

unint64_t sub_21A1B47D0()
{
  result = qword_27CCFFAD0;
  if (!qword_27CCFFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFAD0);
  }

  return result;
}

unint64_t sub_21A1B4824()
{
  result = qword_27CCFFAD8;
  if (!qword_27CCFFAD8)
  {
    sub_21A176D98(&qword_27CCFFAC8);
    sub_21A1772F8(&qword_27CCFFAE0, &qword_27CCFFAC0);
    sub_21A1772F8(&qword_27CCFFAE8, &qword_27CCFFAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFAD8);
  }

  return result;
}

uint64_t type metadata accessor for RecipeCardTitleView()
{
  result = qword_27CCFFAF8;
  if (!qword_27CCFFAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1B497C()
{
  sub_21A1B4A08();
  if (v0 <= 0x3F)
  {
    sub_21A19370C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A1B4A08()
{
  if (!qword_27CCFF428)
  {
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFF428);
    }
  }
}

__n128 sub_21A1B4A58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21A1B4A6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21A1B4AB4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21A1B4B10(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_21A1B5874(v7, v8) & 1;
}

__n128 sub_21A1B4B74@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_21A176C98(&qword_27CCFFB08);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  *v6 = sub_21A2F6014();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_21A176C98(&qword_27CCFFB10);
  sub_21A1B4CD0(v1, &v6[*(v7 + 44)]);
  sub_21A2F7354();
  sub_21A2F5C14();
  sub_21A149B18(v6, a1, &qword_27CCFFB08);
  v8 = a1 + *(sub_21A176C98(&qword_27CCFFB18) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_21A1B4CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v112 = sub_21A2F6774();
  v103 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v3);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A2F5ED4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFFB20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v109 = &v97 - v12;
  v13 = sub_21A176C98(&qword_27CCFFB28);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v107 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v113 = &v97 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v106 = &v97 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v97 - v24;
  v26 = *(type metadata accessor for RecipeCardTitleView() + 24);
  KeyPath = a1;
  v27 = *(a1 + v26 + 8);
  v111 = v10;
  v110 = a1 + v26;
  v114 = v25;
  v105 = v9;
  if (v27)
  {
    sub_21A2F5434();
    sub_21A2F66A4();
    v99 = v5;
    sub_21A2F6724();
    sub_21A2F6764();
    v98 = v6;

    v28 = sub_21A2F68E4();
    v30 = v29;
    v32 = v31;

    v33 = [objc_opt_self() secondaryLabelColor];
    v120[0] = sub_21A2F6EF4();
    v34 = sub_21A2F68A4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = v32 & 1;
    v42 = v109;
    sub_21A1834EC(v28, v30, v41);

    v43 = &v42[*(v9 + 36)];
    *v43 = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFEEA0);
    swift_storeEnumTagMultiPayload();
    *(v43 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
    *v42 = v34;
    *(v42 + 1) = v36;
    v6 = v98;
    v42[16] = v38 & 1;
    *(v42 + 3) = v40;
    v44 = v42;
    v5 = v99;
    v45 = v114;
    sub_21A149B18(v44, v114, &qword_27CCFFB20);
    v104 = *(v111 + 56);
    v104(v45, 0, 1, v9);
  }

  else
  {
    v104 = *(v10 + 56);
    v104(v25, 1, 1, v9);
  }

  v46 = *KeyPath;
  v47 = *(KeyPath + 8);
  sub_21A2F5434();
  if (v47 == 1)
  {
    if ((v46 & 1) == 0)
    {
LABEL_6:
      sub_21A2F6684();
      goto LABEL_9;
    }
  }

  else
  {
    sub_21A1B5814(v46, 0);
    sub_21A2F7DE4();
    v48 = sub_21A2F65B4();
    sub_21A2F53B4();

    v49 = v100;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v46, 0);
    (*(v6 + 8))(v49, v5);
    if (LOBYTE(v120[0]) != 1)
    {
      goto LABEL_6;
    }
  }

  sub_21A2F66D4();
LABEL_9:
  v50 = v103;
  v51 = v102;
  v52 = v112;
  (*(v103 + 104))(v102, *MEMORY[0x277CE0A10], v112);
  sub_21A2F6794();

  (*(v50 + 8))(v51, v52);
  v53 = sub_21A2F68E4();
  v55 = v54;
  LOBYTE(v52) = v56;

  sub_21A2F66F4();
  v57 = sub_21A2F6814();
  v59 = v58;
  v61 = v60;
  sub_21A1834EC(v53, v55, v52 & 1);

  LODWORD(v120[0]) = sub_21A2F6284();
  v103 = sub_21A2F68A4();
  v102 = v62;
  LOBYTE(v55) = v63;
  v112 = v64;
  sub_21A1834EC(v57, v59, v61 & 1);

  KeyPath = swift_getKeyPath();
  v100 = swift_getKeyPath();
  LODWORD(v99) = v55 & 1;
  v132 = v55 & 1;
  if (*(v110 + 40))
  {
    sub_21A2F5434();
    sub_21A2F66A4();
    sub_21A2F6724();
    sub_21A2F6764();

    v65 = sub_21A2F68E4();
    v67 = v66;
    v69 = v68;

    v70 = [objc_opt_self() secondaryLabelColor];
    v120[0] = sub_21A2F6EF4();
    v71 = sub_21A2F68A4();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_21A1834EC(v65, v67, v69 & 1);

    v78 = v105;
    v79 = v109;
    v80 = &v109[*(v105 + 36)];
    *v80 = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFEEA0);
    swift_storeEnumTagMultiPayload();
    *(v80 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
    *v79 = v71;
    *(v79 + 8) = v73;
    *(v79 + 16) = v75 & 1;
    *(v79 + 24) = v77;
    v81 = v106;
    sub_21A149B18(v79, v106, &qword_27CCFFB20);
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v106;
    v78 = v105;
  }

  v104(v81, v82, 1, v78);
  v83 = v113;
  sub_21A183960(v114, v113, &qword_27CCFFB28);
  v84 = v107;
  sub_21A183960(v81, v107, &qword_27CCFFB28);
  v85 = v83;
  v86 = v108;
  sub_21A183960(v85, v108, &qword_27CCFFB28);
  v87 = sub_21A176C98(&qword_27CCFFB30);
  v88 = v86 + *(v87 + 48);
  v89 = v103;
  *&v115 = v103;
  v90 = v102;
  *(&v115 + 1) = v102;
  v91 = v99;
  LOBYTE(v116) = v99;
  *(&v116 + 1) = *v131;
  DWORD1(v116) = *&v131[3];
  v92 = KeyPath;
  *(&v116 + 1) = v112;
  *&v117 = KeyPath;
  BYTE8(v117) = 1;
  HIDWORD(v117) = *&v130[3];
  *(&v117 + 9) = *v130;
  v93 = v100;
  *&v118 = v100;
  *(&v118 + 1) = 0x3FE6666666666666;
  v119 = 256;
  *(v88 + 64) = 256;
  v94 = v116;
  *v88 = v115;
  *(v88 + 16) = v94;
  v95 = v118;
  *(v88 + 32) = v117;
  *(v88 + 48) = v95;
  sub_21A183960(v84, v86 + *(v87 + 64), &qword_27CCFFB28);
  sub_21A183960(&v115, v120, &qword_27CCFFB38);
  sub_21A1427A8(v81, &qword_27CCFFB28);
  sub_21A1427A8(v114, &qword_27CCFFB28);
  sub_21A1427A8(v84, &qword_27CCFFB28);
  v120[0] = v89;
  v120[1] = v90;
  v121 = v91;
  *v122 = *v131;
  *&v122[3] = *&v131[3];
  v123 = v112;
  v124 = v92;
  v125 = 1;
  *v126 = *v130;
  *&v126[3] = *&v130[3];
  v127 = v93;
  v128 = 0x3FE6666666666666;
  v129 = 256;
  sub_21A1427A8(v120, &qword_27CCFFB38);
  return sub_21A1427A8(v113, &qword_27CCFFB28);
}

uint64_t sub_21A1B5814(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21A1B5820@<X0>(void *a1@<X8>)
{
  result = sub_21A2F5D84();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1B5874(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v7 || (sub_21A2F8394() & 1) != 0)
  {
    v8 = a1[5];
    v9 = a2[5];
    if (v8)
    {
      if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_21A2F8394() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_21A1B5934()
{
  result = qword_27CCFFB40;
  if (!qword_27CCFFB40)
  {
    sub_21A176D98(&qword_27CCFFB18);
    sub_21A1B59C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB40);
  }

  return result;
}

unint64_t sub_21A1B59C0()
{
  result = qword_27CCFFB48;
  if (!qword_27CCFFB48)
  {
    sub_21A176D98(&qword_27CCFFB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB48);
  }

  return result;
}

CookingKit::StepIndex __swiftcall StepIndex.init(sectionIndex:stepIndex:subStepIndex:)(Swift::Int sectionIndex, Swift::Int stepIndex, Swift::Int subStepIndex)
{
  *v3 = sectionIndex;
  v3[1] = stepIndex;
  v3[2] = subStepIndex;
  result.subStep = subStepIndex;
  result.step = stepIndex;
  result.section = sectionIndex;
  return result;
}

double static StepIndex.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE7F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27CCFFB60;
  result = *&xmmword_27CCFFB50;
  *a1 = xmmword_27CCFFB50;
  *(a1 + 16) = v1;
  return result;
}

uint64_t sub_21A1B5AFC()
{
  v1 = 1885697139;
  if (*v0 != 1)
  {
    v1 = 0x70657453627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

uint64_t sub_21A1B5B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A1B940C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A1B5B78(uint64_t a1)
{
  v2 = sub_21A1B5DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A1B5BB4(uint64_t a1)
{
  v2 = sub_21A1B5DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StepIndex.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CCFFB68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *(v1 + 8);
  v11[0] = *(v1 + 16);
  v11[1] = v9;
  sub_21A142764(a1, a1[3]);
  sub_21A1B5DA0();
  sub_21A2F84B4();
  v14 = 0;
  sub_21A2F8314();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = 1;
  sub_21A2F8314();
  v12 = 2;
  sub_21A2F8314();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21A1B5DA0()
{
  result = qword_27CCFFB70;
  if (!qword_27CCFFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB70);
  }

  return result;
}

uint64_t StepIndex.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x21CED6EE0](*v0);
  MEMORY[0x21CED6EE0](v1);
  return MEMORY[0x21CED6EE0](v2);
}

uint64_t StepIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  return sub_21A2F8474();
}

uint64_t StepIndex.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CCFFB78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A1B5DA0();
  sub_21A2F8494();
  if (!v2)
  {
    v18 = 0;
    v10 = sub_21A2F8274();
    v17 = 1;
    v15 = sub_21A2F8274();
    v16 = 2;
    v12 = sub_21A2F8274();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v12;
  }

  return sub_21A142808(a1);
}

uint64_t sub_21A1B60A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  return sub_21A2F8474();
}

uint64_t sub_21A1B6110()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x21CED6EE0](*v0);
  MEMORY[0x21CED6EE0](v1);
  return MEMORY[0x21CED6EE0](v2);
}

uint64_t sub_21A1B6158()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  return sub_21A2F8474();
}

uint64_t StepIndex.description.getter()
{
  sub_21A2F7FF4();

  v0 = sub_21A2F8354();
  MEMORY[0x21CED6480](v0);

  MEMORY[0x21CED6480](46, 0xE100000000000000);
  v1 = sub_21A2F8354();
  MEMORY[0x21CED6480](v1);

  MEMORY[0x21CED6480](46, 0xE100000000000000);
  v2 = sub_21A2F8354();
  MEMORY[0x21CED6480](v2);

  return 0x65646E4970657453;
}

uint64_t StepIndex.entityIdentifierString.getter()
{
  v3 = sub_21A2F8354();
  MEMORY[0x21CED6480](46, 0xE100000000000000);
  v0 = sub_21A2F8354();
  MEMORY[0x21CED6480](v0);

  MEMORY[0x21CED6480](46, 0xE100000000000000);
  v1 = sub_21A2F8354();
  MEMORY[0x21CED6480](v1);

  return v3;
}

uint64_t static StepIndex.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  sub_21A1834FC();
  result = sub_21A2F7ED4();
  v4 = *(result + 16);
  if (!v4)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_76:

    v42 = *(v7 + 2);
    if (v42 == 3)
    {
      v43 = *(v7 + 4);
      v44 = *(v7 + 5);
      v45 = *(v7 + 6);
    }

    else
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    v46 = v42 != 3;

    *a3 = v43;
    *(a3 + 8) = v44;
    *(a3 + 16) = v45;
    *(a3 + 24) = v46;
    return result;
  }

  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  while (v5 < *(result + 16))
  {
    v8 = (v6 + 16 * v5);
    v9 = *v8;
    v10 = v8[1];
    ++v5;
    v11 = HIBYTE(v10) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      goto LABEL_66;
    }

    if ((v10 & 0x1000000000000000) == 0)
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        v48 = v9;
        v49 = v10 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (!v11)
          {
            goto LABEL_81;
          }

          if (--v11)
          {
            v16 = 0;
            v27 = &v48 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (!v11)
          {
            goto LABEL_83;
          }

          if (--v11)
          {
            v16 = 0;
            v20 = &v48 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v11)
        {
          v16 = 0;
          v32 = &v48;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            v32 = (v32 + 1);
            if (!--v11)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v41 = result;
          v11 = sub_21A2F8074();
          result = v41;
        }

        v14 = *v11;
        if (v14 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_84;
          }

          v23 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (!v11)
            {
              goto LABEL_65;
            }

            v24 = (v11 + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v23)
              {
LABEL_56:
                LOBYTE(v11) = 0;
                goto LABEL_65;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_82;
          }

          v15 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (v11)
            {
              v17 = (v11 + 1);
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_64;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_64;
                }

                v16 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  goto LABEL_64;
                }

                ++v17;
                if (!--v15)
                {
                  goto LABEL_56;
                }
              }
            }

LABEL_65:
            if ((v11 & 1) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_64;
          }

          v16 = 0;
          if (!v11)
          {
            goto LABEL_65;
          }

          while (1)
          {
            v30 = *v11 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v11;
            if (!--v12)
            {
              goto LABEL_56;
            }
          }
        }
      }

LABEL_64:
      v16 = 0;
      LOBYTE(v11) = 1;
      goto LABEL_65;
    }

    v35 = result;
    sub_21A2F5434();
    v16 = sub_21A1B87D0(v9, v10, 10);
    v37 = v36;

    result = v35;
    if ((v37 & 1) == 0)
    {
LABEL_69:
      v38 = result;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21A1B76B0(0, *(v7 + 2) + 1, 1, v7);
      }

      v40 = *(v7 + 2);
      v39 = *(v7 + 3);
      if (v40 >= v39 >> 1)
      {
        v7 = sub_21A1B76B0((v39 > 1), v40 + 1, 1, v7);
      }

      result = v38;
      *(v7 + 2) = v40 + 1;
      *&v7[8 * v40 + 32] = v16;
    }

LABEL_66:
    if (v5 == v4)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

char *sub_21A1B6970(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B6A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B6B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B6CA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B6DC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_21A1B6ED0(void *result, int64_t a2, char a3, void *a4)
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
    sub_21A176C98(&qword_27CCFFC10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21A176C98(&qword_27CCFFC18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B7004(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B7110(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21A1B7214(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21A1B7340(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B7460(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_21A1B757C(void *result, int64_t a2, char a3, void *a4)
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
    sub_21A176C98(&qword_27CCFFBB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21A176C98(&qword_27CCFFBB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B76B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFF0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_21A1B77DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_21A176C98(&qword_27CCFFC98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21A176C98(&qword_27CCFFCA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B7910(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B7A50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_21A176C98(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_21A1B7B8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFCB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B7CB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFCD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A1B7DE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFCC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_21A1B7EEC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_21A176C98(&qword_27CCFFC60);
  v10 = *(sub_21A176C98(&qword_27CCFFC68) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21A176C98(&qword_27CCFFC68) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21A1B80DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_21A176C98(&qword_27CCFFC38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21A176C98(&qword_27CCFFC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A1B822C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A1B8374(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_21A176C98(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_21A176C98(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_21A1B84E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_21A176C98(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21A1B86C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unsigned __int8 *sub_21A1B87D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_21A2F5434();
  result = sub_21A2F7A84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21A1B9014();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21A2F8074();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for StepIndex(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StepIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StepIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StepIndex.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StepIndex.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A1B8F10()
{
  result = qword_27CCFFB80;
  if (!qword_27CCFFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB80);
  }

  return result;
}

unint64_t sub_21A1B8F68()
{
  result = qword_27CCFFB88;
  if (!qword_27CCFFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB88);
  }

  return result;
}

unint64_t sub_21A1B8FC0()
{
  result = qword_27CCFFB90;
  if (!qword_27CCFFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFB90);
  }

  return result;
}

uint64_t sub_21A1B9014()
{
  v0 = sub_21A2F7A94();
  v4 = sub_21A1B9094(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21A1B9094(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21A2F7EB4();
    if (!v9 || (v10 = v9, v11 = sub_21A25BA1C(v9, 0), v12 = sub_21A1B91EC(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_21A2F5434(), , v12 == v10))
    {
      v13 = sub_21A2F7994();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21A2F7994();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21A2F8074();
LABEL_4:

  return sub_21A2F7994();
}

unint64_t sub_21A1B91EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21A25EC14(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21A2F7A34();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21A2F8074();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21A25EC14(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21A2F7A04();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21A1B940C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70657453627573 && a2 == 0xE700000000000000)
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

uint64_t sub_21A1B9528(void *a1)
{
  v3 = sub_21A176C98(&qword_27CCFFD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  sub_21A142764(a1, a1[3]);
  sub_21A1BA764();
  sub_21A2F84B4();
  v9[15] = 0;
  type metadata accessor for CookingSession();
  sub_21A1BA880(&qword_27CCFFD38, type metadata accessor for CookingSession);
  sub_21A2F8324();
  if (!v1)
  {
    type metadata accessor for PersistentCookingSessions.Entry();
    v9[14] = 1;
    sub_21A2F49B4();
    sub_21A1BA880(&qword_27CCFF188, MEMORY[0x277CC9578]);
    sub_21A2F8324();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21A1B9728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_21A2F49B4();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CookingSession();
  MEMORY[0x28223BE20](v29, v7);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21A176C98(&qword_27CCFFD18);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PersistentCookingSessions.Entry();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A142764(a1, a1[3]);
  sub_21A1BA764();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  v24 = a1;
  v16 = v15;
  v18 = v27;
  v17 = v28;
  v33 = 0;
  sub_21A1BA880(&qword_27CCFFD28, type metadata accessor for CookingSession);
  v19 = v30;
  sub_21A2F8284();
  sub_21A1BA7B8(v19, v16, type metadata accessor for CookingSession);
  v32 = 1;
  sub_21A1BA880(&qword_27CCFF1B0, MEMORY[0x277CC9578]);
  v20 = v6;
  v21 = v17;
  v22 = v31;
  sub_21A2F8284();
  (*(v18 + 8))(v11, v22);
  (*(v25 + 32))(v16 + *(v12 + 20), v20, v21);
  sub_21A1BA364(v16, v26, type metadata accessor for PersistentCookingSessions.Entry);
  sub_21A142808(v24);
  return sub_21A1BA820(v16, type metadata accessor for PersistentCookingSessions.Entry);
}

uint64_t sub_21A1B9B18()
{
  if (*v0)
  {
    return 0x4164657461647075;
  }

  else
  {
    return 0x6E6F6973736573;
  }
}

uint64_t sub_21A1B9B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
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

uint64_t sub_21A1B9C48(uint64_t a1)
{
  v2 = sub_21A1BA764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A1B9C84(uint64_t a1)
{
  v2 = sub_21A1BA764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A1B9CF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_21A2F4AB4();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A2F49B4();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v36 - v15;
  v17 = type metadata accessor for PersistentCookingSessions.Entry();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v26 = &v36 - v25;
  v27 = a1[1];
  if (v27 && *(a2 + 16) && (v36 = v24, v28 = sub_21A261F58(*a1, v27), (v29 & 1) != 0))
  {
    sub_21A1BA364(*(a2 + 56) + *(v18 + 72) * v28, v21, type metadata accessor for PersistentCookingSessions.Entry);
    sub_21A1BA7B8(v21, v26, type metadata accessor for PersistentCookingSessions.Entry);
    sub_21A2F4974();
    sub_21A2F4A94();
    sub_21A2F4834();
    (*(v37 + 8))(v8, v5);
    v30 = *(v38 + 8);
    v30(v12, v9);
    sub_21A1BA880(&qword_27CCFF338, MEMORY[0x277CC9578]);
    v31 = sub_21A2F7844();
    v30(v16, v9);
    if (v31)
    {
      v32 = v39;
      sub_21A1BA364(v26, v39, type metadata accessor for CookingSession);
      v33 = 0;
    }

    else
    {
      v33 = 1;
      v32 = v39;
    }

    sub_21A1BA820(v26, type metadata accessor for PersistentCookingSessions.Entry);
  }

  else
  {
    v33 = 1;
    v32 = v39;
  }

  v34 = type metadata accessor for CookingSession();
  return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
}

uint64_t sub_21A1BA0A8(void *a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFCD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  sub_21A142764(a1, a1[3]);
  sub_21A1BA404();
  sub_21A2F84B4();
  v10[1] = a2;
  sub_21A176C98(&qword_27CCFFCE8);
  sub_21A1BA458();
  sub_21A2F8324();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1BA21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t sub_21A1BA2A4(uint64_t a1)
{
  v2 = sub_21A1BA404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A1BA2E0(uint64_t a1)
{
  v2 = sub_21A1BA404();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21A1BA31C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21A1BA514(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21A1BA364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1BA404()
{
  result = qword_27CCFFCE0;
  if (!qword_27CCFFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFCE0);
  }

  return result;
}

unint64_t sub_21A1BA458()
{
  result = qword_27CCFFCF0;
  if (!qword_27CCFFCF0)
  {
    sub_21A176D98(&qword_27CCFFCE8);
    sub_21A1921B4();
    sub_21A1BA880(&qword_27CCFFCF8, type metadata accessor for PersistentCookingSessions.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFCF0);
  }

  return result;
}

void *sub_21A1BA514(void *a1)
{
  v3 = sub_21A176C98(&qword_27CCFFD00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  sub_21A1537BC(MEMORY[0x277D84F90]);

  v8 = sub_21A142764(a1, a1[3]);
  sub_21A1BA404();
  sub_21A2F8494();
  if (v1)
  {
    sub_21A142808(a1);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFCE8);
    sub_21A1BA6A8();
    sub_21A2F8284();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_21A142808(a1);
  }

  return v8;
}

unint64_t sub_21A1BA6A8()
{
  result = qword_27CCFFD08;
  if (!qword_27CCFFD08)
  {
    sub_21A176D98(&qword_27CCFFCE8);
    sub_21A1922B0();
    sub_21A1BA880(&qword_27CCFFD10, type metadata accessor for PersistentCookingSessions.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD08);
  }

  return result;
}

unint64_t sub_21A1BA764()
{
  result = qword_27CCFFD20;
  if (!qword_27CCFFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD20);
  }

  return result;
}

uint64_t sub_21A1BA7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1BA820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1BA880(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A1BA8EC()
{
  result = qword_27CCFFD40;
  if (!qword_27CCFFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD40);
  }

  return result;
}

unint64_t sub_21A1BA944()
{
  result = qword_27CCFFD48;
  if (!qword_27CCFFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD48);
  }

  return result;
}

unint64_t sub_21A1BA99C()
{
  result = qword_27CCFFD50;
  if (!qword_27CCFFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD50);
  }

  return result;
}

unint64_t sub_21A1BA9F4()
{
  result = qword_27CCFFD58;
  if (!qword_27CCFFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD58);
  }

  return result;
}

unint64_t sub_21A1BAA4C()
{
  result = qword_27CCFFD60;
  if (!qword_27CCFFD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD60);
  }

  return result;
}

unint64_t sub_21A1BAAA4()
{
  result = qword_27CCFFD68;
  if (!qword_27CCFFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD68);
  }

  return result;
}

uint64_t sub_21A1BAB20(uint64_t a1)
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

uint64_t sub_21A1BAB3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21A1BAB84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for PlatterBackgroundView()
{
  result = qword_27CCFFD70;
  if (!qword_27CCFFD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1BAC48()
{
  sub_21A1AB70C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21A1AB70C(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A1BAD38@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for RecipeTheme();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36[-v8];
  v10 = sub_21A2F73B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_21A176C98(&qword_27CCFFD80);
  MEMORY[0x28223BE20](v40, v15);
  v17 = &v36[-v16];
  v39 = sub_21A2F6F14();
  v38 = sub_21A1BB084();
  v37 = sub_21A2F6604();
  v18 = type metadata accessor for PlatterBackgroundView();
  sub_21A1AC424(v9);
  sub_21A19422C(v9, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v20 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1BB548(v6 + *(v20 + 48));
LABEL_5:
    v22 = MEMORY[0x277CE13D8];
    goto LABEL_6;
  }

  v21 = sub_21A176C98(&qword_27CCFEEA8);
  sub_21A183894(v6 + *(v21 + 64));
  if ((*(v1 + *(v18 + 24)) & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = MEMORY[0x277CE13B8];
LABEL_6:
  (*(v11 + 104))(v14, *v22, v10);
  (*(v11 + 32))(&v17[*(v40 + 36)], v14, v10);
  v23 = v38;
  *v17 = v39;
  *(v17 + 1) = v23;
  v17[16] = v37;
  v24 = sub_21A176C98(&qword_27CCFFD88);
  v25 = v41;
  v26 = (v41 + *(v24 + 36));
  v27 = *(sub_21A2F5BC4() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_21A2F5F64();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #16.0 }

  *v26 = _Q0;
  *&v26[*(sub_21A176C98(&qword_27CCFEF18) + 36)] = 256;
  return sub_21A1BB5B0(v17, v25);
}

uint64_t sub_21A1BB084()
{
  v1 = v0;
  v2 = sub_21A2F5654();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for RecipeTheme();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = v43 - v17;
  v19 = type metadata accessor for PlatterBackgroundView();
  sub_21A1AC424(v18);
  sub_21A19422C(v18, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1BB548(v15 + *(v21 + 48));
  }

  else
  {

    v22 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v15 + *(v22 + 64));
    if (*(v1 + *(v19 + 24)))
    {
      sub_21A2F6F24();
      goto LABEL_15;
    }
  }

  v23 = (v3 + 88);
  if (*(v1 + *(v19 + 28)) == 1)
  {
    sub_21A1AC5F4(v10);
    v24 = (*v23)(v10, v2);
    if (v24 == *MEMORY[0x277CDF3D0])
    {
      v25 = *(v1 + *(v19 + 24));
      v26 = objc_opt_self();
      if (v25 != 1)
      {
        v36 = [v26 tertiarySystemFillColor];
        v33 = sub_21A2F6EF4();
        goto LABEL_16;
      }

      v27 = [v26 quaternarySystemFillColor];
      sub_21A2F6EF4();
    }

    else
    {
      if (v24 != *MEMORY[0x277CDF3C0])
      {
        v37 = [objc_opt_self() quaternarySystemFillColor];
        v33 = sub_21A2F6EF4();
        v38 = *(v3 + 8);

        v38(v10, v2);
        goto LABEL_24;
      }

      v32 = [objc_opt_self() quaternarySystemFillColor];
      sub_21A2F6EF4();
    }

LABEL_15:
    v33 = sub_21A2F6F44();

LABEL_16:

    goto LABEL_24;
  }

  sub_21A1AC5F4(v7);
  v28 = (*v23)(v7, v2);
  if (v28 == *MEMORY[0x277CDF3D0])
  {
    v29 = *(v1 + *(v19 + 24));
    v30 = objc_opt_self();
    v31 = &selRef_tertiarySystemFillColor;
    if (!v29)
    {
      v31 = &selRef_tertiarySystemBackgroundColor;
    }
  }

  else
  {
    if (v28 != *MEMORY[0x277CDF3C0])
    {
      v39 = [objc_opt_self() tertiarySystemBackgroundColor];
      v33 = sub_21A2F6EF4();
      v40 = *(v3 + 8);

      v40(v7, v2);
      goto LABEL_24;
    }

    v34 = *(v1 + *(v19 + 24));
    v30 = objc_opt_self();
    v31 = &selRef_tertiarySystemFillColor;
    if (!v34)
    {
      v31 = &selRef_secondarySystemBackgroundColor;
    }
  }

  v35 = [v30 *v31];
  v33 = sub_21A2F6EF4();

LABEL_24:
  v43[1] = v33;
  v41 = sub_21A2F57D4();

  return v41;
}

uint64_t sub_21A1BB548(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1BB5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFD80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A1BB620()
{
  result = qword_27CCFFD90;
  if (!qword_27CCFFD90)
  {
    sub_21A176D98(&qword_27CCFFD88);
    sub_21A1BB6D8();
    sub_21A1772F8(&qword_27CCFEF10, &qword_27CCFEF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD90);
  }

  return result;
}

unint64_t sub_21A1BB6D8()
{
  result = qword_27CCFFD98;
  if (!qword_27CCFFD98)
  {
    sub_21A176D98(&qword_27CCFFD80);
    sub_21A1BB764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFD98);
  }

  return result;
}

unint64_t sub_21A1BB764()
{
  result = qword_27CCFFDA0;
  if (!qword_27CCFFDA0)
  {
    sub_21A176D98(&qword_27CCFFDA8);
    sub_21A1772F8(&qword_27CCFFDB0, qword_27CCFFDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFDA0);
  }

  return result;
}

uint64_t sub_21A1BB854(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F6104();
  MEMORY[0x28223BE20](v4, v5);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21A2F6114();
}

uint64_t sub_21A1BB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21A2F6104();
  MEMORY[0x28223BE20](v5, v6);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21A2F6114();
}

unint64_t sub_21A1BBA44@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1BE570(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  *a2 = v4;
  return sub_21A17F220(v4);
}

void sub_21A1BBAF8(unint64_t *a1)
{
  v1 = *a1;
  sub_21A17F220(*a1);
  sub_21A17ED40(v1);
}

uint64_t RecipeImageView.init(imageAsset:loadingView:fallbackView:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  sub_21A17FE58(a1, a4);
  v7 = type metadata accessor for RecipeImageView();
  v11 = a2(v7, v8, v9, v10);
  a3(v11);
  return sub_21A1BB548(a1);
}

uint64_t RecipeImageView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v87 = a3;
  v79 = *(*(a1 + 24) - 8);
  v4 = MEMORY[0x28223BE20](a1, a2);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(*(v4 + 16) - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  v9 = *(v7 + 32);
  v70 = v10;
  *&v11 = v10;
  v82 = v12;
  *(&v11 + 1) = v12;
  v75 = v9;
  v92 = v9;
  v91 = v11;
  v13 = type metadata accessor for RecipeImageContentView();
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v77 = &v69 - v15;
  v16 = sub_21A176D98(&qword_27CCFEDC0);
  WitnessTable = swift_getWitnessTable();
  v88 = v13;
  v89 = WitnessTable;
  *&v91 = v13;
  *(&v91 + 1) = v16;
  *&v92 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v74 = &v69 - v25;
  v86 = v16;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v73 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v69 - v30;
  v32 = type metadata accessor for ImageAsset(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_21A2F7EA4();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v83 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v84 = &v69 - v43;
  sub_21A17FE58(v3, v31);
  v44 = *(v33 + 48);
  v71 = v32;
  if (v44(v31, 1, v32) == 1)
  {
    sub_21A1BB548(v31);
    v45 = 1;
    v46 = v88;
    v47 = v85;
    v48 = v83;
  }

  else
  {
    v69 = v36;
    sub_21A1BC3A0(v31, v36);
    v49 = v80;
    v50 = v72;
    v51 = v70;
    (*(v76 + 16))(v72, v3 + *(v80 + 52), v70);
    v52 = v3 + *(v49 + 56);
    v53 = v78;
    v54 = v82;
    (*(v79 + 16))(v78, v52, v82);
    v80 = v38;
    v55 = OpaqueTypeMetadata2;
    v56 = v77;
    sub_21A1BC404(v50, v53, v51, v54, v77);
    swift_getKeyPath();
    v57 = v69;
    v58 = v73;
    sub_21A1BC674(v69, v73);
    (*(v33 + 56))(v58, 0, 1, v71);
    v59 = v88;
    sub_21A2F6A24();

    sub_21A1BB548(v58);
    (*(v81 + 8))(v56, v59);
    sub_21A183894(v57);
    v60 = v85;
    v61 = *(v85 + 16);
    v62 = v74;
    v61(v74, v22, v55);
    v63 = *(v60 + 8);
    v63(v22, v55);
    v61(v22, v62, v55);
    OpaqueTypeMetadata2 = v55;
    v38 = v80;
    v63(v62, OpaqueTypeMetadata2);
    v64 = v83;
    (*(v60 + 32))(v83, v22, OpaqueTypeMetadata2);
    v45 = 0;
    v46 = v88;
    v47 = v60;
    v48 = v64;
  }

  (*(v47 + 56))(v48, v45, 1, OpaqueTypeMetadata2);
  v65 = *(v38 + 16);
  v66 = v84;
  v65(v84, v48, v37);
  v67 = *(v38 + 8);
  v67(v48, v37);
  *&v91 = v46;
  *(&v91 + 1) = v86;
  *&v92 = v89;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v65(v87, v66, v37);
  return (v67)(v66, v37);
}

uint64_t sub_21A1BC3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1BC404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  sub_21A1BE570(&qword_27CCFEDF8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F7754();
  v10 = type metadata accessor for RecipeImageContentView();
  (*(*(a3 - 8) + 32))(a5 + *(v10 + 52), a1, a3);
  return (*(*(a4 - 8) + 32))(a5 + *(v10 + 56), a2, a4);
}

uint64_t sub_21A1BC538()
{
  sub_21A1BE468();
  sub_21A1BE4BC();
  return sub_21A2F7624();
}

uint64_t sub_21A1BC58C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEDC0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A17FE58(a1, &v11 - v8);
  sub_21A17FE58(v9, v6);
  sub_21A1BE468();
  sub_21A1BE4BC();
  sub_21A2F7634();
  return sub_21A1BB548(v9);
}

uint64_t sub_21A1BC674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1BC70C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_21A2F4794() - 8);
  v7 = *(v6 + 64);
  v8 = ((((((((((v7 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a3 + 24);
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v14 + 80);
  if (v13 <= v15)
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0xFC)
  {
    v19 = 252;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v10 + v16 + 1;
  v21 = *(*(*(a3 + 16) - 8) + 64) + v17;
  if (a2 <= v19)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + (v20 & ~v16)) & ~v17) + *(*(v11 - 8) + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v19 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v18 > 0xFC)
      {
        v32 = (a1 + v20) & ~v16;
        if (v13 == v19)
        {
          v33 = *(v12 + 48);

          return v33(v32);
        }

        else
        {
          v34 = *(v14 + 48);
          v35 = (v21 + v32) & ~v17;

          return v34(v35, v15, v11);
        }
      }

      else
      {
        v30 = *(a1 + v10);
        if (v30 >= 3)
        {
          v31 = (v30 ^ 0xFF) + 1;
        }

        else
        {
          v31 = 0;
        }

        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v19 + (v29 | v27) + 1;
}

void sub_21A1BCA30(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21A2F4794() - 8);
  v9 = *(v8 + 64);
  v10 = ((((((((((v9 + ((*(v8 + 80) + 16) & ~*(v8 + 80)) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a4 + 24);
  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v13 - 8);
  v17 = *(v16 + 84);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = *(v14 + 84);
  }

  if (v21 <= 0xFC)
  {
    v22 = 252;
  }

  else
  {
    v22 = v21;
  }

  v23 = v12 + 1;
  v24 = v12 + 1 + v18;
  v25 = v19 + v20;
  v26 = ((v19 + v20 + (v24 & ~v18)) & ~v20) + *(*(v13 - 8) + 64);
  if (a3 <= v22)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v22 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v22 < a2)
  {
    v28 = ~v22 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_65:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v27)
  {
    goto LABEL_36;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v21 > 0xFC)
  {
    v33 = &a1[v24] & ~v18;
    if (v15 == v22)
    {
      v34 = *(v14 + 56);

      v34(v33, a2);
    }

    else
    {
      v38 = *(v16 + 56);
      v39 = (v25 + v33) & ~v20;

      v38(v39, a2, v17, v13);
    }
  }

  else if (a2 > 0xFC)
  {
    if (v23 <= 3)
    {
      v35 = ~(-1 << (8 * v23));
    }

    else
    {
      v35 = -1;
    }

    if (v12 != -1)
    {
      v36 = v35 & (a2 - 253);
      if (v23 <= 3)
      {
        v37 = v12 + 1;
      }

      else
      {
        v37 = 4;
      }

      bzero(a1, v23);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          *a1 = v36;
          a1[2] = BYTE2(v36);
        }

        else
        {
          *a1 = v36;
        }
      }

      else if (v37 == 1)
      {
        *a1 = v36;
      }

      else
      {
        *a1 = v36;
      }
    }
  }

  else
  {
    a1[v12] = ~a2;
  }
}

uint64_t sub_21A1BCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21A1BCF0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_21A176C98(qword_27CCFFE40) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(*(a3 + 16) - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + v16;
  if (a2 <= v19)
  {
    goto LABEL_31;
  }

  v21 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_30:
      if (v19)
      {
LABEL_31:
        if (v8 == v19)
        {
          v28 = *(v7 + 48);

          return v28(a1);
        }

        else
        {
          v30 = (a1 + v20) & ~v16;
          if (v11 == v19)
          {
            v31 = *(v10 + 48);

            return v31(v30, v11);
          }

          else
          {
            v32 = *(v13 + 48);
            v33 = (v30 + v17 + v18) & ~v18;

            return v32(v33, v14, v9);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_30;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v19 + (v27 | v25) + 1;
}

void sub_21A1BD204(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21A176C98(qword_27CCFFE40) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_53:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v31 = *(v9 + 56);

    v31(a1, a2);
  }

  else
  {
    v32 = &a1[v23] & ~v19;
    if (v14 == v22)
    {
      v33 = *(v13 + 56);

      v33(v32, a2, v14);
    }

    else
    {
      v34 = *(v16 + 56);
      v35 = (v32 + v20 + v21) & ~v21;

      v34(v35, a2, v17, v11);
    }
  }
}

void sub_21A1BD590()
{
  if (!qword_27CCFFEC8)
  {
    type metadata accessor for RecipeImageViewModel(255);
    sub_21A1BE570(&qword_27CCFEDF8, type metadata accessor for RecipeImageViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFFEC8);
    }
  }
}

uint64_t sub_21A1BD670@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  sub_21A176D98(&qword_27CCFFED0);
  v30 = a1[2];
  sub_21A2F6124();
  v29 = a1[3];
  sub_21A2F6124();
  v42 = a1[4];
  v3 = v42;
  v43 = sub_21A1BE23C();
  WitnessTable = swift_getWitnessTable();
  v5 = a1[5];
  v40 = WitnessTable;
  v41 = v5;
  swift_getWitnessTable();
  v6 = sub_21A2F7174();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  sub_21A176D98(&qword_27CCFFEF8);
  v10 = sub_21A2F5AF4();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v28 - v17;
  *&v19 = v30;
  *(&v19 + 1) = v29;
  *&v20 = v3;
  *(&v20 + 1) = v5;
  v34 = v19;
  v35 = v20;
  v36 = v31;
  sub_21A2F7344();
  sub_21A2F7164();
  sub_21A2F73A4();
  sub_21A176C98(qword_27CCFFE40);
  v21 = sub_21A2F7714();
  swift_getKeyPath();
  v39 = v21;
  sub_21A1BE570(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  v22 = *(v21 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  sub_21A17F220(v22);

  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_21A1BE3B0();
  sub_21A2F6EA4();

  sub_21A17F200(v22);
  (*(v32 + 8))(v9, v6);
  v24 = sub_21A1BE404();
  v37 = v23;
  v38 = v24;
  swift_getWitnessTable();
  v25 = *(v11 + 16);
  v25(v18, v15, v10);
  v26 = *(v11 + 8);
  v26(v15, v10);
  v25(v33, v18, v10);
  return (v26)(v18, v10);
}

uint64_t sub_21A1BDA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a4;
  v75 = a5;
  v76 = a6;
  v66 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v65 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v64 = v61 - v12;
  v63 = sub_21A2F6FA4();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v13);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_21A176D98(&qword_27CCFFED0);
  v16 = sub_21A2F6124();
  v70 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v67 = v61 - v19;
  v20 = *(a2 - 8);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v61 - v26;
  v28 = a3;
  v29 = sub_21A2F6124();
  v72 = *(v29 - 8);
  v73 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v71 = v61 - v31;
  sub_21A176C98(qword_27CCFFE40);
  v69 = a1;
  v32 = sub_21A2F7714();
  swift_getKeyPath();
  v87 = v32;
  sub_21A1BE570(&qword_27CCFEDB8, type metadata accessor for RecipeImageViewModel);
  sub_21A2F5094();

  v33 = *(v32 + OBJC_IVAR____TtC10CookingKit20RecipeImageViewModel__phase);
  sub_21A17F220(v33);

  if (v33 >> 62)
  {
    if (v33 >> 62 == 1)
    {
      sub_21A17F200(v33);
      v87 = a2;
      v88 = v28;
      v35 = v74;
      v34 = v75;
      v89 = v74;
      v90 = v75;
      v36 = type metadata accessor for RecipeImageContentView();
      v37 = v66;
      v38 = *(v66 + 16);
      v39 = v64;
      v38(v64, v69 + *(v36 + 56), v28);
      v40 = v65;
      v38(v65, v39, v28);
      v41 = sub_21A1BE23C();
      v85 = v35;
      v86 = v41;
      swift_getWitnessTable();
      v42 = v71;
      sub_21A1BB94C(v40, v16, v28);
      v43 = *(v37 + 8);
      v43(v40, v28);
      v43(v39, v28);
    }

    else
    {
      v87 = a2;
      v88 = v28;
      v61[1] = v28;
      v35 = v74;
      v34 = v75;
      v89 = v74;
      v90 = v75;
      v49 = type metadata accessor for RecipeImageContentView();
      v50 = *(v20 + 16);
      v50(v27, v69 + *(v49 + 52), a2);
      v50(v24, v27, a2);
      v51 = sub_21A1BE23C();
      v52 = v67;
      sub_21A1BB854(v24, a2);
      v77 = v35;
      v78 = v51;
      swift_getWitnessTable();
      v53 = v71;
      sub_21A1BB854(v52, v16);
      (*(v70 + 8))(v52, v16);
      v54 = *(v20 + 8);
      v54(v24, a2);
      v55 = a2;
      v42 = v53;
      v54(v27, v55);
    }
  }

  else
  {
    v44 = v62;
    v45 = v63;
    (*(v62 + 104))(v15, *MEMORY[0x277CE0FE0], v63);
    v46 = sub_21A2F6FD4();
    (*(v44 + 8))(v15, v45);
    v87 = v46;
    v88 = 0;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = 257;
    v47 = sub_21A1BE23C();

    v48 = v67;
    v35 = v74;
    sub_21A1BB94C(&v87, a2, v68);
    v79 = v35;
    v80 = v47;
    swift_getWitnessTable();
    v42 = v71;
    v34 = v75;
    sub_21A1BB854(v48, v16);
    sub_21A17F200(v33);

    (*(v70 + 8))(v48, v16);
  }

  v56 = v76;
  v58 = v72;
  v57 = v73;
  v59 = sub_21A1BE23C();
  v83 = v35;
  v84 = v59;
  WitnessTable = swift_getWitnessTable();
  v82 = v34;
  swift_getWitnessTable();
  (*(v58 + 16))(v56, v42, v57);
  return (*(v58 + 8))(v42, v57);
}

unint64_t sub_21A1BE23C()
{
  result = qword_27CCFFED8;
  if (!qword_27CCFFED8)
  {
    sub_21A176D98(&qword_27CCFFED0);
    sub_21A1BE2C8();
    sub_21A1BE34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFED8);
  }

  return result;
}

unint64_t sub_21A1BE2C8()
{
  result = qword_27CCFFEE0;
  if (!qword_27CCFFEE0)
  {
    sub_21A176D98(&qword_27CCFFEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFEE0);
  }

  return result;
}

unint64_t sub_21A1BE34C()
{
  result = qword_27CCFFEF0;
  if (!qword_27CCFFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFEF0);
  }

  return result;
}

unint64_t sub_21A1BE3B0()
{
  result = qword_27CCFFF00;
  if (!qword_27CCFFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF00);
  }

  return result;
}

unint64_t sub_21A1BE404()
{
  result = qword_27CCFFF08;
  if (!qword_27CCFFF08)
  {
    sub_21A176D98(&qword_27CCFFEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF08);
  }

  return result;
}

unint64_t sub_21A1BE468()
{
  result = qword_27CCFFF10;
  if (!qword_27CCFFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF10);
  }

  return result;
}

unint64_t sub_21A1BE4BC()
{
  result = qword_27CCFFF18;
  if (!qword_27CCFFF18)
  {
    sub_21A176D98(&qword_27CCFEDC0);
    sub_21A1BE570(&qword_27CCFFF20, type metadata accessor for ImageAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF18);
  }

  return result;
}

uint64_t sub_21A1BE570(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_21A1BE5D0@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_21A1BE5F0()
{
  swift_getKeyPath();
  sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A1BE694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 16);
  return sub_21A2F5434();
}

uint64_t sub_21A1BE76C(uint64_t a1)
{
  v3 = sub_21A2F5434();
  v4 = sub_21A1A0CBC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1BE8C0()
{
  swift_getKeyPath();
  sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  return *(v0 + 24);
}

uint64_t sub_21A1BE960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21A1BEA30(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A1BEB40()
{

  v1 = OBJC_IVAR____TtC10CookingKit21InstructionsViewModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21A1BEC34()
{
  sub_21A13F990(319, &qword_27CCFFF38, &type metadata for InstructionsViewModel.Instruction.SubStep, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_21A1BECF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A1BECF4()
{
  if (!qword_2811B8CC8)
  {
    sub_21A2F4404();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B8CC8);
    }
  }
}

__n128 sub_21A1BED4C(uint64_t a1, uint64_t a2)
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

uint64_t sub_21A1BED68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A1BEDB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_21A1BEE14()
{
  result = qword_27CCFFF40;
  if (!qword_27CCFFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF40);
  }

  return result;
}

uint64_t sub_21A1BEEB0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A1BEF04()
{
  sub_21A1C04F4();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A1BEF40@<X0>(uint64_t *a1@<X8>)
{
  sub_21A1C04AC(&qword_27CCFFF70, type metadata accessor for InstructionsViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A1BEFB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFFF60);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for InstructionsViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFFF60);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1C04AC(&qword_27CCFFF68, type metadata accessor for InstructionsViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A1C05D8(v5, v8, type metadata accessor for InstructionsViewModelSource);
  }

  return result;
}

uint64_t sub_21A1BF114()
{
  v1 = v0;
  v62 = sub_21A176C98(&qword_27CCFFF78);
  MEMORY[0x28223BE20](v62, v2);
  v4 = (&v57 - v3);
  v5 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v57 - v7;
  v9 = type metadata accessor for InstructionsViewModelSource(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v60 = &v57 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for Recipe();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A1C0640(v0, v19, type metadata accessor for InstructionsViewModelSource);
  v61 = v9;
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A1C06A8(v19, type metadata accessor for InstructionsViewModelSource);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    sub_21A1427A8(v8, &qword_27CCFF058);
    v25 = *v0;
    result = sub_21A1BE76C(MEMORY[0x277D84F90]);
    if (*(v25 + 24))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v28);
      *(&v57 - 2) = v25;
      *(&v57 - 8) = 0;
      v63 = v25;
      sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
      sub_21A2F5084();
    }

    else
    {
      *(v25 + 24) = 0;
    }

    return result;
  }

  v58 = v13;
  result = sub_21A1C05D8(v8, v24, type metadata accessor for Recipe);
  v29 = *(v20 + 72);
  v59 = v24;
  v30 = *&v24[v29];
  v31 = *(v30 + 16);
  if (!v31)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_24:
    v47 = v1;
    v48 = *v1;
    swift_getKeyPath();
    v63 = v48;
    sub_21A1C04AC(&qword_27CCFFF48, type metadata accessor for InstructionsViewModel);
    sub_21A2F5094();

    v49 = sub_21A2F5434();
    v50 = sub_21A1A0CBC(v49, v33);

    if (v50)
    {
    }

    else
    {
      sub_21A1BE76C(v33);
    }

    v51 = v58;
    swift_getKeyPath();
    v63 = v48;
    sub_21A2F5094();

    v52 = *(v48 + 24);
    v53 = v60;
    sub_21A1C0640(v47, v60, type metadata accessor for InstructionsViewModelSource);
    sub_21A176C98(&qword_27CCFFA40);
    sub_21A2F7594();
    sub_21A1C06A8(v53, type metadata accessor for InstructionsViewModelSource);
    if (v52 != v63)
    {
      sub_21A1C0640(v47, v51, type metadata accessor for InstructionsViewModelSource);
      sub_21A2F7594();
      sub_21A1C06A8(v51, type metadata accessor for InstructionsViewModelSource);
      v54 = v63;
      if (v63 == *(v48 + 24))
      {
        *(v48 + 24) = v63;
      }

      else
      {
        v55 = swift_getKeyPath();
        MEMORY[0x28223BE20](v55, v56);
        *(&v57 - 2) = v48;
        *(&v57 - 8) = v54;
        v63 = v48;
        sub_21A2F5084();
      }
    }

    return sub_21A1C06A8(v59, type metadata accessor for Recipe);
  }

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v32 < *(v30 + 16))
  {
    v34 = *(type metadata accessor for StepSection() - 8);
    v35 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32;
    v36 = *(v62 + 48);
    *v4 = v32;
    sub_21A1C0640(v35, v4 + v36, type metadata accessor for StepSection);
    v37 = sub_21A1BF908(v32, v4 + v36, v1);
    result = sub_21A1427A8(v4, &qword_27CCFFF78);
    v38 = *(v37 + 16);
    v39 = v33[2];
    v40 = v39 + v38;
    if (__OFADD__(v39, v38))
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v40 <= v33[3] >> 1)
    {
      if (*(v37 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v42 = v39 + v38;
      }

      else
      {
        v42 = v39;
      }

      v33 = sub_21A1B77B4(isUniquelyReferenced_nonNull_native, v42, 1, v33);
      if (*(v37 + 16))
      {
LABEL_18:
        v43 = (v33[3] >> 1) - v33[2];
        result = type metadata accessor for InstructionsViewModel.Instruction(0);
        if (v43 < v38)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v44 = v33[2];
          v45 = __OFADD__(v44, v38);
          v46 = v44 + v38;
          if (v45)
          {
            goto LABEL_37;
          }

          v33[2] = v46;
        }

        goto LABEL_7;
      }
    }

    if (v38)
    {
      goto LABEL_35;
    }

LABEL_7:
    if (v31 == ++v32)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21A1BF908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v80 = &v61 - v8;
  v9 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v76 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A2F7894();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21A176C98(&qword_27CCFFF80);
  v16 = MEMORY[0x28223BE20](v74, v15);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v19);
  v73 = &v61 - v20;
  v21 = type metadata accessor for InstructionsViewModel.Instruction(0);
  v71 = *(v21 - 8);
  v72 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(a2 + *(type metadata accessor for StepSection() + 24));
  v26 = *(v25 + 16);
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    return v27;
  }

  v82 = MEMORY[0x277D84F90];
  v67 = v26;
  sub_21A25D7AC(0, v26, 0);
  v70 = *(v25 + 16);
  v28 = type metadata accessor for Step();
  v65 = *(v28 - 8);
  v66 = v28;
  v64 = v25 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v27 = v82;
  result = type metadata accessor for InstructionsViewModelSource(0);
  v30 = 0;
  v63 = (a3 + *(result + 28));
  v62 = xmmword_21A2FC020;
  v68 = v25;
  v69 = v18;
  v77 = v24;
  while (v30 != v70)
  {
    if (v30 >= *(v25 + 16))
    {
      goto LABEL_29;
    }

    v79 = v27;
    v32 = v73;
    v31 = v74;
    v33 = *(v74 + 48);
    sub_21A1C0640(v64 + *(v65 + 72) * v30, &v73[v33], type metadata accessor for Step);
    *v18 = v30;
    v34 = v18 + *(v31 + 48);
    sub_21A1C05D8(&v32[v33], v34, type metadata accessor for Step);
    sub_21A2F7884();
    sub_21A2F4A54();
    sub_21A2F7934();
    sub_21A176C98(&qword_27CCFFF88);
    v35 = swift_allocObject();
    *(v35 + 16) = v62;
    *(v35 + 56) = MEMORY[0x277D83B88];
    *(v35 + 64) = MEMORY[0x277D83C10];
    v78 = v30 + 1;
    *(v35 + 32) = v30 + 1;
    v36 = sub_21A2F7904();
    v38 = v37;

    v39 = *(*(v34 + *(v66 + 24)) + 16);
    if (v39)
    {
      v40 = 0;
      v41 = MEMORY[0x277D84F90];
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_21A1B7460(0, *(v41 + 2) + 1, 1, v41);
        }

        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        if (v43 >= v42 >> 1)
        {
          v41 = sub_21A1B7460((v42 > 1), v43 + 1, 1, v41);
        }

        *(v41 + 2) = v43 + 1;
        v44 = &v41[24 * v43];
        *(v44 + 5) = v30;
        *(v44 + 6) = v40;
        *(v44 + 4) = a1;
        ++v40;
      }

      while (v39 != v40);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    if (*v63)
    {
      v45 = v63[1];
      v81[0] = a1;
      v81[1] = v30;
      v81[2] = 0;
      (*(v45 + 24))(v81);
    }

    else
    {
      v46 = sub_21A2F4404();
      (*(*(v46 - 8) + 56))(v80, 1, 1, v46);
    }

    v47 = v77;
    *v77 = v36;
    *(v47 + 8) = v38;
    v48 = *(v41 + 2);
    if (v48)
    {
      v81[0] = MEMORY[0x277D84F90];
      sub_21A25D78C(0, v48, 0);
      v49 = v81[0];
      v50 = *(v81[0] + 16);
      v51 = 56 * v50 + 80;
      v52 = v41 + 48;
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v81[0] = v49;
        v55 = *(v49 + 24);
        v56 = v50 + 1;
        if (v50 >= v55 >> 1)
        {
          v61 = v53;
          sub_21A25D78C((v55 > 1), v50 + 1, 1);
          v53 = v61;
          v49 = v81[0];
        }

        *(v49 + 16) = v56;
        *&v57 = v54;
        *(&v57 + 1) = v53;
        v58 = (v49 + v51);
        *(v58 - 3) = v53;
        *(v58 - 2) = v57;
        *(v49 + v51 - 16) = *(&v53 + 1);
        *(v58 - 1) = v54;
        *v58 = 2;
        v51 += 56;
        v52 += 3;
        v50 = v56;
        --v48;
      }

      while (v48);

      v47 = v77;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    *(v47 + 16) = v49;
    *(v47 + 24) = a1;
    *(v47 + 32) = v30;
    *(v47 + 40) = 0;
    *(v47 + 48) = 1;
    sub_21A1B4330(v80, v47 + *(v72 + 28));
    v18 = v69;
    sub_21A1427A8(v69, &qword_27CCFFF80);
    v27 = v79;
    v82 = v79;
    v60 = *(v79 + 16);
    v59 = *(v79 + 24);
    if (v60 >= v59 >> 1)
    {
      sub_21A25D7AC(v59 > 1, v60 + 1, 1);
      v27 = v82;
    }

    *(v27 + 16) = v60 + 1;
    result = sub_21A1C05D8(v47, v27 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v60, type metadata accessor for InstructionsViewModel.Instruction);
    v30 = v78;
    v25 = v68;
    if (v78 == v67)
    {
      return v27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_21A1C0034(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  v7 = *(a2 + 48);
  v8 = *(a2 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v14 = *(a1 + 24);
  v15 = v10;
  v16 = v9;
  v11 = *(a2 + 24);
  v12 = v8;
  v13 = v7;
  return sub_21A267618(&v14, &v11);
}

BOOL sub_21A1C00BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4404();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_21A176C98(&qword_27CCFF3E8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  if ((sub_21A19E838(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v30 = *(a1 + 24);
  v31 = v17;
  v32 = v18;
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v27 = *(a2 + 24);
  v28 = v19;
  v29 = v20;
  if (!sub_21A267618(&v30, &v27))
  {
    return 0;
  }

  v21 = *(type metadata accessor for InstructionsViewModel.Instruction(0) + 28);
  v22 = *(v13 + 48);
  sub_21A1C043C(a1 + v21, v16);
  sub_21A1C043C(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_21A1427A8(v16, &qword_27CCFF3E0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_21A1C043C(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_21A1427A8(v16, &qword_27CCFF3E8);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_21A1C04AC(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
  v25 = sub_21A2F7874();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_21A1427A8(v16, &qword_27CCFF3E0);
  return (v25 & 1) != 0;
}

uint64_t sub_21A1C043C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1C04AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A1C04F4()
{
  result = qword_27CCFFF50;
  if (!qword_27CCFFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF50);
  }

  return result;
}

uint64_t sub_21A1C05D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1C0640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1C06A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1C0708()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_21A2F5434();
}

uint64_t Dependencies.isPreviewing.getter()
{
  sub_21A1C07A4();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A1C07A4()
{
  result = qword_27CCFFF90;
  if (!qword_27CCFFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF90);
  }

  return result;
}

uint64_t sub_21A1C07F8@<X0>(_BYTE *a1@<X8>)
{
  sub_21A1C07A4();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t (*Dependencies.isPreviewing.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_21A1C07A4();
  sub_21A2F7624();
  *(a1 + 16) = *(a1 + 17);
  return sub_21A1C0958;
}

uint64_t dispatch thunk of ExternalRecipeHydratorType.hydrate(recipeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A1C0AD0;

  return v9(a1, a2, a3);
}

uint64_t sub_21A1C0AD0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21A1C0C0C()
{
  sub_21A1C0C94();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21A1C0C94()
{
  result = qword_27CCFFF98;
  if (!qword_27CCFFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFF98);
  }

  return result;
}

unint64_t sub_21A1C0CFC()
{
  result = qword_27CCFFFA0;
  if (!qword_27CCFFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFFFA0);
  }

  return result;
}

uint64_t sub_21A1C0D50()
{
  ReferencedIngredientsSource = type metadata accessor for FirstReferencedIngredientsSource();
  MEMORY[0x28223BE20](ReferencedIngredientsSource, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = sub_21A25F87C(MEMORY[0x277D84F90]);
  v45 = v0;
  sub_21A1C1640(v0, v4, type metadata accessor for FirstReferencedIngredientsSource);
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A1C15E0(v4, type metadata accessor for FirstReferencedIngredientsSource);
  v10 = type metadata accessor for Recipe();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_21A1427A8(v8, &qword_27CCFF058);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = *&v8[*(v10 + 72)];
    sub_21A2F5434();
    sub_21A1C15E0(v8, type metadata accessor for Recipe);
  }

  v12 = sub_21A1C1180(v11);

  v48 = *(v12 + 16);
  if (!v48)
  {
LABEL_28:

    v42 = v45;

    *v42 = v9;
    return result;
  }

  v13 = 0;
  v46 = v12;
  v47 = v12 + 32;
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_32;
    }

    v14 = (v47 + (v13 << 6));
    v15 = v14[7];
    v16 = *(v15 + 16);
    if (v16)
    {
      break;
    }

LABEL_7:
    if (++v13 == v48)
    {
      goto LABEL_28;
    }
  }

  v49 = v13;
  v17 = *v14;
  v51 = v14[1];
  v52 = v17;
  v50 = v14[2];
  sub_21A2F5434();
  v18 = 0;
  v19 = (v15 + 40);
  while (v18 < *(v15 + 16))
  {
    v23 = *v19;
    if (!*v19)
    {
      goto LABEL_12;
    }

    v24 = *(v19 - 1);
    v25 = v9[2];
    sub_21A2F5434();
    if (v25)
    {
      sub_21A25A4C4(v24, v23);
      if (v26)
      {

        goto LABEL_12;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v9;
    v28 = sub_21A25A4C4(v24, v23);
    v30 = v9[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_30;
    }

    v34 = v29;
    if (v9[3] < v33)
    {
      sub_21A26E2D4(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_21A25A4C4(v24, v23);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v34)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v41 = v28;
    sub_21A2B7F0C();
    v28 = v41;
    if (v34)
    {
LABEL_11:
      v20 = v28;

      v9 = v53;
      v21 = (v53[7] + 24 * v20);
      v22 = v51;
      *v21 = v52;
      v21[1] = v22;
      v21[2] = v50;
      goto LABEL_12;
    }

LABEL_24:
    v9 = v53;
    v53[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v9[6] + 16 * v28);
    *v36 = v24;
    v36[1] = v23;
    v37 = (v9[7] + 24 * v28);
    v38 = v51;
    *v37 = v52;
    v37[1] = v38;
    v37[2] = v50;
    v39 = v9[2];
    v32 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v32)
    {
      goto LABEL_31;
    }

    v9[2] = v40;
LABEL_12:
    ++v18;
    v19 += 4;
    if (v16 == v18)
    {

      v12 = v46;
      v13 = v49;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t sub_21A1C1180(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFFF78);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v14 - v4);
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(type metadata accessor for StepSection() - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v12 = *(v2 + 48);
      *v5 = v8;
      sub_21A1C1640(v10, v5 + v12, type metadata accessor for StepSection);
      v13 = sub_21A22C500(v8, v5 + v12);
      sub_21A1427A8(v5, &qword_27CCFFF78);
      sub_21A2C6C78(v13);
      v10 += v11;
      ++v8;
    }

    while (v7 != v8);
    return v15;
  }

  return result;
}

uint64_t Dependencies.firstReferencedIngredients.getter()
{
  sub_21A17A020();
  sub_21A17A074();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A1C1378@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21A25F87C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_21A1C13A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFFFA8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  ReferencedIngredientsSource = type metadata accessor for FirstReferencedIngredientsSource();
  sub_21A2F7694();
  if ((*(*(ReferencedIngredientsSource - 8) + 48))(v5, 1, ReferencedIngredientsSource) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFFFA8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = ReferencedIngredientsSource;
    *(a1 + 32) = sub_21A1C159C(&qword_27CCFFFB0);
    v8 = sub_21A156050(a1);
    return sub_21A1C14DC(v5, v8);
  }

  return result;
}

uint64_t sub_21A1C14DC(uint64_t a1, uint64_t a2)
{
  ReferencedIngredientsSource = type metadata accessor for FirstReferencedIngredientsSource();
  (*(*(ReferencedIngredientsSource - 8) + 32))(a2, a1, ReferencedIngredientsSource);
  return a2;
}

uint64_t sub_21A1C159C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstReferencedIngredientsSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A1C15E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A1C1640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1C16A8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC10CookingKit11TimerTagger_tokenizer;
  *(v3 + v6) = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v7 = OBJC_IVAR____TtC10CookingKit11TimerTagger_formatter;
  *(v3 + v7) = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v8 = OBJC_IVAR____TtC10CookingKit11TimerTagger_spellOutFormatter;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v9 setNumberStyle_];
  *(v3 + v8) = v9;
  sub_21A1C743C(a1, v3 + OBJC_IVAR____TtC10CookingKit11TimerTagger_languagePack, type metadata accessor for LanguagePack);
  *(v3 + OBJC_IVAR____TtC10CookingKit11TimerTagger_tokenizationBehavior) = a2 & 1;
  v10 = *(v3 + OBJC_IVAR____TtC10CookingKit11TimerTagger_formatter);
  v11 = sub_21A2F4A44();
  [v10 setLocale_];

  v12 = *(v3 + OBJC_IVAR____TtC10CookingKit11TimerTagger_spellOutFormatter);
  v13 = sub_21A2F4A44();
  [v12 setLocale_];

  sub_21A1C74A4(a1, type metadata accessor for LanguagePack);
  return v3;
}

uint64_t sub_21A1C181C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21A176C98(&qword_27CCFF388);
  v3[5] = swift_task_alloc();
  v4 = sub_21A2F5294();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for Duration();
  v3[10] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFF3A8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for CountdownTimer();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFFFF0);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for InTextCountdownTimer();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A1C1A88, 0, 0);
}

void *sub_21A1C1A88()
{
  v53 = v0;
  v1 = v0[4];
  sub_21A2F7954();
  if (*(v1 + OBJC_IVAR____TtC10CookingKit11TimerTagger_tokenizationBehavior))
  {
    v2 = sub_21A1C5318();
  }

  else
  {
    v2 = sub_21A1C515C();
  }

  v3 = v2;

  v50 = *(v3 + 16);
  if (!v50)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_16:

    v52 = v6;
    sub_21A2F5434();
    sub_21A1C5E6C(&v52);

    result = v52;
    v51 = v52[2];
    if (!v51)
    {
      v45 = MEMORY[0x277D84F90];
LABEL_33:

      v41 = v0[1];

      return v41(v45);
    }

    v15 = 0;
    v16 = v0[7];
    v48 = (v0[13] + 48);
    v43 = (v16 + 32);
    v44 = v0[12];
    v45 = MEMORY[0x277D84F90];
    v47 = v0[17];
    v49 = v0[16];
    v17 = &qword_27CCFF3A8;
    v18 = &unk_21A2FC4F0;
    v42 = (v16 + 8);
    while (1)
    {
      if (v15 >= result[2])
      {
        goto LABEL_37;
      }

      v19 = v17;
      v20 = v0[19];
      v21 = v18;
      v23 = v0[11];
      v22 = v0[12];
      v24 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v25 = *(v47 + 72);
      v26 = result;
      sub_21A1C743C(result + v24 + v25 * v15, v20, type metadata accessor for InTextCountdownTimer);
      v27 = v20 + *(v49 + 20);
      v17 = v19;
      sub_21A183960(v27, v23, v19);
      if ((*v48)(v23, 1, v22) == 1)
      {
        sub_21A1427A8(v0[11], v19);
        v18 = v21;
      }

      else
      {
        v28 = v0[14];
        v29 = v0[10];
        sub_21A1C734C(v0[11], v28, type metadata accessor for CountdownTimer);
        sub_21A1C743C(v28 + *(v44 + 20), v29, type metadata accessor for Duration);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = v0[5];
          sub_21A149B18(v0[10], v30, &qword_27CCFF388);
          sub_21A2F5244();
          v32 = v31;
          sub_21A1427A8(v30, &qword_27CCFF388);
        }

        else
        {
          v33 = v0[8];
          v34 = v0[6];
          (*v43)(v33, v0[10], v34);
          sub_21A2F5244();
          v32 = v35;
          (*v42)(v33, v34);
        }

        v18 = v21;
        sub_21A1C74A4(v0[14], type metadata accessor for CountdownTimer);
        v17 = v19;
        if (v32 >= 5.0)
        {
          sub_21A1C734C(v0[19], v0[18], type metadata accessor for InTextCountdownTimer);
          v36 = v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21A25D65C(0, v45[2] + 1, 1);
            v36 = v52;
          }

          v39 = v36[2];
          v38 = v36[3];
          if (v39 >= v38 >> 1)
          {
            sub_21A25D65C(v38 > 1, v39 + 1, 1);
            v36 = v52;
          }

          v40 = v0[18];
          v36[2] = v39 + 1;
          v45 = v36;
          sub_21A1C734C(v40, v36 + v24 + v39 * v25, type metadata accessor for InTextCountdownTimer);
          v17 = v19;
          v18 = v21;
          goto LABEL_20;
        }
      }

      sub_21A1C74A4(v0[19], type metadata accessor for InTextCountdownTimer);
LABEL_20:
      ++v15;
      result = v26;
      if (v51 == v15)
      {
        goto LABEL_33;
      }
    }
  }

  v5 = 0;
  v46 = v0[17];
  v6 = MEMORY[0x277D84F90];
  while (v5 < *(v3 + 16))
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[3];
    v10 = v0[2];
    v11 = sub_21A2F5434();
    sub_21A1C20C8(v11, v10, v9, v8);

    if ((*(v46 + 48))(v8, 1, v7) == 1)
    {
      result = sub_21A1427A8(v0[15], &qword_27CCFFFF0);
    }

    else
    {
      sub_21A1C734C(v0[15], v0[20], type metadata accessor for InTextCountdownTimer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21A1B7318(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_21A1B7318(v12 > 1, v13 + 1, 1, v6);
      }

      v14 = v0[20];
      v6[2] = v13 + 1;
      result = sub_21A1C734C(v14, v6 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v13, type metadata accessor for InTextCountdownTimer);
    }

    if (v50 == ++v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}