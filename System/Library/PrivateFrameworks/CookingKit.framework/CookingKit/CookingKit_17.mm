uint64_t sub_21A2D4C94()
{
  v14 = v0;
  v1 = *(v0 + 264);

  v2 = v1;
  v3 = sub_21A2F53C4();
  v4 = sub_21A2F7DD4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21A137000, v3, v4, "GroceriesLabelViewModel unable to add ingredients to grocery list due to error %@", v7, 0xCu);
    sub_21A1427A8(v8, &qword_27CD01020);
    MEMORY[0x21CED7BA0](v8, -1, -1);
    MEMORY[0x21CED7BA0](v7, -1, -1);
  }

  else
  {
  }

  v13 = 2;
  sub_21A2D5048(&v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21A2D4E18()
{
  swift_getKeyPath();
  v11 = v0;
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = qword_27CCFE7A0;
    sub_21A2F5434();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_21A2F53E4();
    sub_21A177CBC(v5, qword_27CD23C20);
    sub_21A2F5434();
    v6 = sub_21A2F53C4();
    v7 = sub_21A2F7DC4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      sub_21A2F5434();
      v10 = sub_21A25B5DC(v3, v2, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_21A137000, v6, v7, "GroceriesLabelViewModel tapped add more ingredients to grocery list for recipeID %s.", v8, 0xCu);
      sub_21A142808(v9);
      MEMORY[0x21CED7BA0](v9, -1, -1);
      MEMORY[0x21CED7BA0](v8, -1, -1);
    }

    v11 = v3;
    v12 = v2;
    v13 = 68;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -96;
    sub_21A14FB78();
    sub_21A2F75E4();
    return sub_21A18FAD4(v11, v12, v13, v14, v15, v16, v17);
  }

  return result;
}

uint64_t sub_21A2D5048(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v18 = v1;
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = *(v1 + 16);
    v6 = qword_27CCFE7A0;
    sub_21A2F5434();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_21A2F53E4();
    sub_21A177CBC(v7, qword_27CD23C20);
    sub_21A2F5434();
    v8 = sub_21A2F53C4();
    v9 = sub_21A2F7DC4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315394;
      sub_21A2F5434();
      v12 = sub_21A25B5DC(v5, v4, &v18);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      v13 = 0xE700000000000000;
      v14 = 0x73736563637573;
      if (v2 != 1)
      {
        v14 = 1818845542;
        v13 = 0xE400000000000000;
      }

      if (v2)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x657373696D736964;
      }

      if (v2)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE900000000000064;
      }

      v17 = sub_21A25B5DC(v15, v16, &v18);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_21A137000, v8, v9, "GroceriesLabelViewModel finished adding recipeID %s to grocery list with result: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v11, -1, -1);
      MEMORY[0x21CED7BA0](v10, -1, -1);
    }

    v18 = v5;
    v19 = v4;
    v20 = v2 | 0x80;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -96;
    sub_21A14FB78();
    sub_21A2F75E4();
    return sub_21A18FAD4(v18, v19, v20, v21, v22, v23, v24);
  }

  return result;
}

uint64_t sub_21A2D5308()
{

  v1 = OBJC_IVAR____TtC10CookingKit23GroceriesLabelViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit23GroceriesLabelViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2D541C()
{
  result = sub_21A2F7614();
  if (v1 <= 0x3F)
  {
    result = sub_21A2F50D4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21A2D553C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  MEMORY[0x21CED60A0]();
  sub_21A2F50C4();
  return v0;
}

void sub_21A2D55E0()
{
  type metadata accessor for GroceriesLabelViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A13F3C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A2D5664(uint64_t *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v4 = v1[3];
  v5 = *a1;
  v6 = a1[1];
  if (!v4)
  {
    if (!v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    sub_21A2F5434();

LABEL_9:
    v7 = v2[2];
    v8 = v2[3];
    sub_21A2F5434();
    sub_21A2F5434();
    LOBYTE(v7) = sub_21A18F608(v7, v8, v5, v6);

    if (v7)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v10);
      sub_21A2F5084();

      goto LABEL_13;
    }

    v2[2] = v5;
    v2[3] = v6;
    goto LABEL_12;
  }

  if ((v2[2] != v5 || v4 != v6) && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  swift_getKeyPath();
  sub_21A2F5094();

  v12 = v2[5];
  v13 = a1[2];
  v14 = a1[3];
  if (!v12)
  {
LABEL_19:
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15, v16);
    sub_21A2F5434();
    sub_21A2F5084();
  }

  if (v2[4] != v13 || v12 != v14)
  {
    result = sub_21A2F8394();
    if ((result & 1) == 0)
    {
      if (sub_21A2F8394())
      {
        v2[4] = v13;
        v2[5] = v14;
        sub_21A2F5434();
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_21A2D5998@<X0>(uint64_t *a1@<X8>)
{
  sub_21A2D5DDC(&qword_27CD030C8, type metadata accessor for GroceriesLabelViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A2D5A10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04BD0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for GroceriesLabelViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD04BD0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A2D5DDC(&qword_27CD04BD8, type metadata accessor for GroceriesLabelViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A2D6284(v5, v8, type metadata accessor for GroceriesLabelViewModelSource);
  }

  return result;
}

uint64_t sub_21A2D5B6C()
{
  v1 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for GroceriesLabelViewModelSource(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Recipe();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A2D5E24(v0, v8);
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A2D5E88(v8, type metadata accessor for GroceriesLabelViewModelSource);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_21A1427A8(v4, &qword_27CCFF058);
    return sub_21A2D3F68();
  }

  else
  {
    sub_21A2D6284(v4, v13, type metadata accessor for Recipe);
    sub_21A2D5664(v13);
    return sub_21A2D5E88(v13, type metadata accessor for Recipe);
  }
}

uint64_t sub_21A2D5DDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A2D5E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroceriesLabelViewModelSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2D5E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2D5EF8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v7 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_21A176C98(&qword_27CD004F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v29 - v18;
  sub_21A258084(a2, a3, &v29 - v18);
  v20 = sub_21A2F7C64();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_21A183960(v19, v15, &qword_27CD004F8);
  sub_21A2F7C34();
  v21 = a4;

  v22 = v30;
  sub_21A2F5434();
  v23 = sub_21A2F7C24();
  v24 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v23;
  v25[3] = v26;
  v27 = v29;
  v25[4] = v22;
  v25[5] = v27;
  v25[6] = a3;
  v25[7] = v21;
  sub_21A261B84(v15, v25 + v24);
  sub_21A199D08(0, 0, v10, &unk_21A315260, v25);

  return sub_21A1427A8(v19, &qword_27CD004F8);
}

uint64_t sub_21A2D6160(uint64_t a1)
{
  v4 = *(sub_21A176C98(&qword_27CD004F8) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21A145E2C;

  return sub_21A2B43D4(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_21A2D6284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2D62EC()
{
  sub_21A2F5104();
  swift_allocObject();
  result = sub_21A2F50E4();
  qword_27CD04BE0 = result;
  return result;
}

uint64_t static AppGroup.cooking.getter()
{
  if (qword_27CCFE8A0 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for InstructionSubStepPopOverContentView()
{
  result = qword_27CD04BE8;
  if (!qword_27CD04BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A2D6414()
{
  result = type metadata accessor for InstructionSubStepViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InstructionSubStepViewModel.PopOver(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_21A2D64B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_21A2F8424();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_21A2D655C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21A2F8434();
  sub_21A2F79A4();
  v6 = sub_21A2F8474();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21A2F8394() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21A2D6654(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21A2F8434();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  sub_21A2F79A4();
  v29 = v6;
  MEMORY[0x21CED6EE0](v6);
  v28 = v7;
  MEMORY[0x21CED6EE0](v7);
  v27 = v8;
  MEMORY[0x21CED6EE0](v8);
  v26 = v9;
  MEMORY[0x21CED6EE0](v9);
  v10 = sub_21A2F8474();
  v11 = a2 + 56;
  v12 = -1 << *(a2 + 32);
  v13 = v10 & ~v12;
  if (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(a2 + 48);
  while (1)
  {
    v16 = (v15 + 48 * v13);
    v18 = v16[2];
    v17 = v16[3];
    v20 = v16[4];
    v19 = v16[5];
    v21 = *v16 == v4 && v16[1] == v5;
    if (v21 || (sub_21A2F8394() & 1) != 0)
    {
      v22 = v18 == v29 && v17 == v28;
      v23 = v22 && v20 == v27;
      if (v23 && v19 == v26)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21A2D67D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2D7D54(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__startingTimers);
  return sub_21A2F5434();
}

uint64_t sub_21A2D68B0@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v68 = sub_21A2F5B74();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v2);
  v65 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InstructionSubStepPopOverContentView();
  v5 = v4 - 8;
  v63 = *(v4 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21A176C98(&qword_27CD04BF8);
  MEMORY[0x28223BE20](v79, v8);
  v66 = &v63 - v9;
  v80 = sub_21A176C98(&qword_27CD04C00);
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v10);
  v70 = &v63 - v11;
  v75 = sub_21A2F5294();
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v12);
  v74 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21A176C98(&qword_27CD04C08);
  MEMORY[0x28223BE20](v76, v14);
  v78 = &v63 - v15;
  v73 = sub_21A2F62C4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21A176C98(&qword_27CD04C10);
  v19 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v20);
  v22 = &v63 - v21;
  v23 = type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 28);
  v33 = v1;
  sub_21A2D794C(v1 + v32, v31, type metadata accessor for InstructionSubStepViewModel.PopOver);
  sub_21A2D79B4(&v31[*(v28 + 28)], v26, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *(v26 + 1);
    v88 = *v26;
    v89 = v34;
    v90 = *(v26 + 2);
    v35 = sub_21A176C98(&qword_27CD01068);
    v36 = v69;
    (*(v69 + 32))(v74, &v26[*(v35 + 48)], v75);
    sub_21A2F5244();
    v38 = v37;
    v39 = v64;
    sub_21A2D794C(v1, v64, type metadata accessor for InstructionSubStepPopOverContentView);
    v40 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v41 = swift_allocObject();
    sub_21A2D79B4(v39, v41 + v40, type metadata accessor for InstructionSubStepPopOverContentView);
    v42 = (v41 + ((v6 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    v43 = v89;
    *v42 = v88;
    v42[1] = v43;
    v42[2] = v90;
    v87 = 0;
    sub_21A2022B8(&v88, &v82);
    sub_21A2F7014();
    v84 = v38;
    v85 = sub_21A2D7A1C;
    v86 = v41;
    v44 = v65;
    sub_21A2F5B64();
    v45 = *v33;
    swift_getKeyPath();
    v87 = v45;
    sub_21A2D7D54(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5094();

    v46 = *(v45 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__startingTimers);
    sub_21A2F5434();
    v47 = sub_21A2D6654(&v88, v46);

    sub_21A192C5C(&v88);
    LOBYTE(v87) = v47 & 1;
    sub_21A2D7AB8();
    v48 = v66;
    sub_21A2F6BD4();
    (*(v67 + 8))(v44, v68);

    v49 = sub_21A2F6604();
    v50 = v79;
    v51 = v48 + *(v79 + 36);
    *v51 = v49;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 1;
    sub_21A2F62B4();
    v52 = sub_21A2D7B0C();
    v53 = v70;
    sub_21A2F6DC4();
    (*(v72 + 8))(v18, v73);
    sub_21A16BDD4(v48);
    v54 = v71;
    v55 = v80;
    (*(v71 + 16))(v78, v53, v80);
    swift_storeEnumTagMultiPayload();
    v56 = sub_21A2D7BD8();
    v82 = &type metadata for IngredientTextScrollView;
    v83 = v56;
    swift_getOpaqueTypeConformance2();
    v82 = v50;
    v83 = v52;
    swift_getOpaqueTypeConformance2();
    sub_21A2F6114();
    (*(v54 + 8))(v53, v55);
    return (*(v36 + 8))(v74, v75);
  }

  else
  {
    v58 = *v26;
    v59 = *(v26 + 1);
    v82 = 0;
    LOBYTE(v83) = 1;
    sub_21A176C98(&qword_27CD04C30);
    sub_21A2F7014();
    *(&v89 + 1) = v58;
    *&v90 = v59;
    *(&v90 + 1) = 0x4072C00000000000;
    sub_21A2F62B4();
    v60 = sub_21A2D7BD8();
    sub_21A2F6DC4();
    (*(v72 + 8))(v18, v73);

    v61 = v77;
    (*(v19 + 16))(v78, v22, v77);
    swift_storeEnumTagMultiPayload();
    *&v88 = &type metadata for IngredientTextScrollView;
    *(&v88 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v62 = sub_21A2D7B0C();
    *&v88 = v79;
    *(&v88 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    sub_21A2F6114();
    return (*(v19 + 8))(v22, v61);
  }
}

uint64_t sub_21A2D732C(uint64_t a1, _OWORD *a2, double a3)
{
  v38 = sub_21A2F74C4();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21A2F74E4();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InstructionSubStepPopOverContentView();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_21A2F7504();
  v35 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v32 - v20;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_21A2F73A4();
  sub_21A2F58E4();

  sub_21A2D7C7C();
  v22 = sub_21A2F7E24();
  sub_21A2F74F4();
  sub_21A2F7514();
  v34 = *(v14 + 8);
  v34(v17, v13);
  sub_21A2D794C(a1, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstructionSubStepPopOverContentView);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_21A2D79B4(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for InstructionSubStepPopOverContentView);
  v25 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = a2[1];
  *v25 = *a2;
  v25[1] = v26;
  v25[2] = a2[2];
  aBlock[4] = sub_21A2D7CC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21A2D78FC;
  aBlock[3] = &unk_282B36578;
  v27 = _Block_copy(aBlock);
  sub_21A2022B8(a2, v45);
  v28 = v36;
  sub_21A2F74D4();
  v45[0] = MEMORY[0x277D84F90];
  sub_21A2D7D54(&qword_27CD04C40, MEMORY[0x277D85198]);
  sub_21A176C98(&qword_27CD04C48);
  sub_21A1772F8(&qword_27CD04C50, &qword_27CD04C48);
  v29 = v37;
  v30 = v38;
  sub_21A2F7F34();
  MEMORY[0x21CED68B0](v21, v28, v29, v27);
  _Block_release(v27);

  (*(v41 + 8))(v29, v30);
  (*(v39 + 8))(v28, v40);
  v34(v21, v35);
}

uint64_t sub_21A2D7890()
{
  sub_21A2F73A4();
  sub_21A2F58E4();
}

uint64_t sub_21A2D78FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21A2D794C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2D79B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2D7A1C(double a1)
{
  v3 = *(type metadata accessor for InstructionSubStepPopOverContentView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21A2D732C(v1 + v4, v5, a1);
}

unint64_t sub_21A2D7AB8()
{
  result = qword_27CD04C18;
  if (!qword_27CD04C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C18);
  }

  return result;
}

unint64_t sub_21A2D7B0C()
{
  result = qword_27CD04C20;
  if (!qword_27CD04C20)
  {
    sub_21A176D98(&qword_27CD04BF8);
    sub_21A2D7AB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C20);
  }

  return result;
}

unint64_t sub_21A2D7BD8()
{
  result = qword_27CD04C28;
  if (!qword_27CD04C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C28);
  }

  return result;
}

uint64_t sub_21A2D7C2C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  return sub_21A1FC304(v5, v2);
}

unint64_t sub_21A2D7C7C()
{
  result = qword_27CD04C38;
  if (!qword_27CD04C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD04C38);
  }

  return result;
}

uint64_t sub_21A2D7CC8()
{
  type metadata accessor for InstructionSubStepPopOverContentView();

  return sub_21A2D7890();
}

uint64_t sub_21A2D7D54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A2D7D9C()
{
  v1 = *(v0 + 24);
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_21A1FCB14(v4);
}

uint64_t sub_21A2D7DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A2D7E30(uint64_t result, int a2, int a3)
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

unint64_t sub_21A2D7E8C()
{
  result = qword_27CD04C58;
  if (!qword_27CD04C58)
  {
    sub_21A176D98(&qword_27CD04C60);
    sub_21A2D7BD8();
    swift_getOpaqueTypeConformance2();
    sub_21A176D98(&qword_27CD04BF8);
    sub_21A2D7B0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C58);
  }

  return result;
}

double sub_21A2D7F98@<D0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v32 = sub_21A2F6164();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A176C98(&qword_27CD04C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  v34 = sub_21A176C98(&qword_27CD04C70);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v10);
  v12 = &v30 - v11;
  v30 = sub_21A176C98(&qword_27CD04C78);
  MEMORY[0x28223BE20](v30, v13);
  v15 = &v30 - v14;
  v35 = sub_21A176C98(&qword_27CD04C80);
  MEMORY[0x28223BE20](v35, v16);
  v18 = &v30 - v17;
  v36 = v1;
  v38 = v1;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD04C88);
  sub_21A2D86E8();
  sub_21A2F5634();
  sub_21A2F6154();
  v19 = sub_21A2F65E4();
  sub_21A2F65D4();
  sub_21A2F65D4();
  if (sub_21A2F65D4() != v19)
  {
    sub_21A2F65D4();
  }

  sub_21A1772F8(&qword_27CD04CA8, &qword_27CD04C68);
  sub_21A2F6CF4();
  (*(v31 + 8))(v4, v32);
  (*(v6 + 8))(v9, v5);
  v42 = *v36;
  *&v43 = *(v36 + 2);
  sub_21A176C98(&qword_27CD04CB0);
  sub_21A2F7024();
  sub_21A2F7344();
  sub_21A2F57C4();
  (*(v33 + 32))(v15, v12, v34);
  v20 = &v15[*(v30 + 36)];
  v21 = v40;
  *v20 = v39;
  *(v20 + 1) = v21;
  *(v20 + 2) = v41;
  sub_21A2F7344();
  sub_21A2F5C14();
  sub_21A149B18(v15, v18, &qword_27CD04C78);
  v22 = &v18[*(v35 + 36)];
  v23 = v47;
  *(v22 + 4) = v46;
  *(v22 + 5) = v23;
  *(v22 + 6) = v48;
  v24 = v43;
  *v22 = v42;
  *(v22 + 1) = v24;
  v25 = v45;
  *(v22 + 2) = v44;
  *(v22 + 3) = v25;
  v26 = sub_21A2F6664();
  v27 = v37;
  sub_21A149B18(v18, v37, &qword_27CD04C80);
  v28 = v27 + *(sub_21A176C98(&qword_27CD04CB8) + 36);
  *v28 = v26;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

uint64_t sub_21A2D8504@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *(a1 + 24);
  v16 = *(a1 + 24);
  sub_21A1834FC();
  sub_21A2F5434();
  v4 = sub_21A2F69B4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21A2F65F4();
  v8 &= 1u;
  v15[0] = v8;
  v15[24] = 1;
  v16 = *a1;
  v17 = *(a1 + 2);
  v12 = swift_allocObject();
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = 256;
  *(a2 + 40) = v11;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 1;
  *(a2 + 88) = sub_21A1A5EAC;
  *(a2 + 96) = 0;
  *(a2 + 104) = sub_21A2D882C;
  *(a2 + 112) = v12;
  sub_21A294420(&v18, v15);
  return sub_21A2D8834(&v16, v15);
}

unint64_t sub_21A2D86E8()
{
  result = qword_27CD04C90;
  if (!qword_27CD04C90)
  {
    sub_21A176D98(&qword_27CD04C88);
    sub_21A2D87A0();
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C90);
  }

  return result;
}

unint64_t sub_21A2D87A0()
{
  result = qword_27CD04C98;
  if (!qword_27CD04C98)
  {
    sub_21A176D98(&qword_27CD04CA0);
    sub_21A21BD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04C98);
  }

  return result;
}

uint64_t sub_21A2D8834(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A2D88A4()
{
  result = qword_27CD04CC0;
  if (!qword_27CD04CC0)
  {
    sub_21A176D98(&qword_27CD04CB8);
    sub_21A2D8930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04CC0);
  }

  return result;
}

unint64_t sub_21A2D8930()
{
  result = qword_27CD04CC8;
  if (!qword_27CD04CC8)
  {
    sub_21A176D98(&qword_27CD04C80);
    sub_21A2D89BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04CC8);
  }

  return result;
}

unint64_t sub_21A2D89BC()
{
  result = qword_27CD04CD0;
  if (!qword_27CD04CD0)
  {
    sub_21A176D98(&qword_27CD04C78);
    sub_21A176D98(&qword_27CD04C68);
    sub_21A1772F8(&qword_27CD04CA8, &qword_27CD04C68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04CD0);
  }

  return result;
}

uint64_t type metadata accessor for ImageResource()
{
  result = qword_27CD04CD8;
  if (!qword_27CD04CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21A2D8B04()
{
  result = sub_21A2F4794();
  if (v1 <= 0x3F)
  {
    result = sub_21A13DAA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A2D8BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECA8);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for RecipeCardExpandedExcerptView();
  v11 = (a5 + *(v10 + 20));
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + *(v10 + 24));
  *v12 = a3;
  v12[1] = a4;
  sub_21A2F5434();

  return sub_21A2F5434();
}

uint64_t sub_21A2D8C58()
{
  type metadata accessor for RecipeCardExpandedExcerptView();
  sub_21A2D8CD4();
  return sub_21A2F5B04();
}

unint64_t sub_21A2D8CD4()
{
  result = qword_27CD04CE8;
  if (!qword_27CD04CE8)
  {
    type metadata accessor for RecipeCardExpandedExcerptView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04CE8);
  }

  return result;
}

unint64_t sub_21A2D8D2C()
{
  result = qword_27CD04CF0;
  if (!qword_27CD04CF0)
  {
    sub_21A176D98(&qword_27CD04CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04CF0);
  }

  return result;
}

uint64_t RecipeURLProviderSource.init(source:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for RecipeSourceType();
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_21A2D8E80(a1, v7);
      v10 = *v7;
      v9 = v7[1];
      sub_21A2F5434();
      result = sub_21A2D8EE4(v7, type metadata accessor for ExternalRecipeSource);
      *a2 = v10;
      a2[1] = v9;
      return result;
    }
  }

  else
  {
    result = sub_21A2D8EE4(a1, type metadata accessor for RecipeSourceType);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_21A2D8E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipeSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2D8EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2D8F8C(uint64_t a1, uint64_t a2)
{
  sub_21A2F7FF4();

  MEMORY[0x21CED6480](a1, a2);
  sub_21A2F4774();
}

uint64_t dispatch thunk of DebugInfoProviderType.recipeData(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A2D9174;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21A2D9174(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_21A2D9280(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21A2F4494();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFF058);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Recipe();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A2D93D8, 0, 0);
}

uint64_t sub_21A2D93D8()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = v4[5];
  v8 = v4[6];
  sub_21A142764(v4 + 2, v7);
  v16[0] = v6;
  v16[1] = v5;
  v9 = *(v8 + 24);
  sub_21A2F5434();
  v9(v16, v7, v8);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A1A7394(v0[9]);
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  else
  {
    sub_21A1996D4(v0[9], v0[12]);
    sub_21A2F44D4();
    swift_allocObject();
    sub_21A2F44C4();
    sub_21A176C98(&qword_27CD04D00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21A2FEED0;
    sub_21A2F4484();
    sub_21A2F4474();
    v0[2] = v12;
    sub_21A2D9940(&qword_27CD04D08, MEMORY[0x277CC8718]);
    sub_21A176C98(&qword_27CD04D10);
    sub_21A2D98DC();
    sub_21A2F7F34();
    sub_21A2F44A4();
    sub_21A2D9940(&qword_27CCFF358, type metadata accessor for Recipe);
    v10 = sub_21A2F44B4();
    v11 = v13;
    sub_21A1DCF2C(v0[12]);
  }

  v14 = v0[1];

  return v14(v10, v11);
}

uint64_t sub_21A2D9724(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A2D97CC;

  return sub_21A2D9280(a1, a2);
}

uint64_t sub_21A2D97CC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t sub_21A2D98DC()
{
  result = qword_27CD04D18;
  if (!qword_27CD04D18)
  {
    sub_21A176D98(&qword_27CD04D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04D18);
  }

  return result;
}

uint64_t sub_21A2D9940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A2D9988()
{
  sub_21A2F5174();
  if ((sub_21A2F5164() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_27CCFE768 != -1)
  {
    swift_once();
  }

  v0 = qword_27CCFEA78;
  if (!qword_27CCFEA78)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_21A2F78A4();
  v2 = [v0 URLsForResourcesWithExtension:v1 subdirectory:0];

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21A2F4794();
  v3 = sub_21A2F7B24();

  return v3;
}

uint64_t sub_21A2D9A60@<X0>(uint64_t *a1@<X8>)
{
  sub_21A176C98(&qword_27CD04D20);
  result = sub_21A2F7714();
  *a1 = result;
  return result;
}

void sub_21A2D9A9C(void *a1)
{
  v2 = [a1 childViewControllers];
  sub_21A1D13A8();
  v3 = sub_21A2F7B24();

  if (v3 >> 62)
  {
    v4 = sub_21A2F8164();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    return;
  }

  v5 = sub_21A1AD720();
  if (!v5)
  {
    return;
  }

  v10 = v5;
  [a1 addChildViewController_];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v10 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  [v7 addSubview_];

  [v10 didMoveToParentViewController_];
}

id sub_21A2D9BF4()
{
  type metadata accessor for AdContainerViewController();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21A2D9C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2DA120();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21A2D9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2DA120();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21A2D9D00()
{
  sub_21A2DA120();
  sub_21A2F6534();
  __break(1u);
}

uint64_t type metadata accessor for RecipeAdView()
{
  result = qword_27CD04D28;
  if (!qword_27CD04D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A2D9F74()
{
  sub_21A2D9FE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A2D9FE0()
{
  if (!qword_27CD04D38)
  {
    type metadata accessor for RecipeAdViewModel(255);
    sub_21A2DA044();
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD04D38);
    }
  }
}

unint64_t sub_21A2DA044()
{
  result = qword_27CCFF8D0;
  if (!qword_27CCFF8D0)
  {
    type metadata accessor for RecipeAdViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF8D0);
  }

  return result;
}

unint64_t sub_21A2DA0C8()
{
  result = qword_27CD04D40;
  if (!qword_27CD04D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04D40);
  }

  return result;
}

unint64_t sub_21A2DA120()
{
  result = qword_27CD04D48;
  if (!qword_27CD04D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04D48);
  }

  return result;
}

uint64_t static CookingRoot.shared(assemblies:bundleAssemblies:)(uint64_t a1, uint64_t a2)
{
  if (qword_2811B81B8 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  v2 = qword_2811B81C0;
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock((v2 + 24));
  sub_21A2DA9C8((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));
  return v6;
}

uint64_t static CookingRoot.shared(container:)()
{
  if (qword_2811B81B8 != -1)
  {
    swift_once();
  }

  v0 = qword_2811B81C0;
  os_unfair_lock_lock((qword_2811B81C0 + 24));
  sub_21A2DA9B0((v0 + 16), &v2);
  os_unfair_lock_unlock((v0 + 24));
  return v2;
}

uint64_t sub_21A2DA314@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD03DA0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_21A176C98(&qword_27CD03DA8);
  swift_allocObject();
  *(v3 + 112) = sub_21A2F5334();
  a1[3] = v2;
  result = sub_21A2DA5D8(&qword_27CD03DB0, &qword_27CD03DA0);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_21A2DA3C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04D80);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_21A176C98(&qword_27CD04D88);
  swift_allocObject();
  *(v3 + 112) = sub_21A2F5334();
  a1[3] = v2;
  result = sub_21A2DA5D8(&qword_27CD04D90, &qword_27CD04D80);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_21A2DA49C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t CookingRoot.deinit()
{

  sub_21A142808(v0 + 24);
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit11CookingRoot__scope, &qword_27CD04D50);
  return v0;
}

uint64_t CookingRoot.__deallocating_deinit()
{

  sub_21A142808(v0 + 24);
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit11CookingRoot__scope, &qword_27CD04D50);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2DA5D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A2DA62C(uint64_t a1, void *a2)
{
  v21[0] = a1;
  v3 = sub_21A2F5364();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F51C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A176C98(&qword_27CCFFC50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A2FEED0;
  *(v13 + 56) = &type metadata for Assembly;
  *(v13 + 64) = sub_21A2DA95C();
  sub_21A176C98(&qword_27CCFF7C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A2FCD00;
  *(v14 + 56) = &type metadata for MiscAssembly;
  *(v14 + 64) = sub_21A139810();
  *(v14 + 96) = &type metadata for NowCookingAssembly;
  *(v14 + 104) = sub_21A139864();
  *(v14 + 136) = &type metadata for RecipeProcessingAssembly;
  *(v14 + 144) = sub_21A1398B8();
  *(v14 + 176) = &type metadata for RecipesAssembly;
  *(v14 + 184) = sub_21A13990C();
  *(v14 + 216) = &type metadata for TimersAssembly;
  *(v14 + 224) = sub_21A139960();
  *(v13 + 32) = v14;
  v15 = sub_21A2F52A4();
  v16 = objc_allocWithZone(v15);
  v17 = [v16 init];
  v18 = MEMORY[0x277D6CC58];
  *(v13 + 96) = v15;
  *(v13 + 104) = v18;
  *(v13 + 72) = v17;
  v21[1] = v13;
  sub_21A2C6FB0(a2);
  sub_21A2F51E4();
  swift_allocObject();
  sub_21A2F51D4();
  *v12 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  (*(v9 + 104))(v12, *MEMORY[0x277D6CB40], v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D6CF60], v3);
  sub_21A2F5394();
  swift_allocObject();
  v19 = sub_21A2F5374();
  type metadata accessor for CookingRoot();
  swift_allocObject();
  return sub_21A141FB8(v19);
}

unint64_t sub_21A2DA95C()
{
  result = qword_27CD04D98;
  if (!qword_27CD04D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04D98);
  }

  return result;
}

void HorizontalParallaxModel.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t HorizontalParallaxModel.init(isEnabled:offset:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

uint64_t static HorizontalParallaxModel.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21A2F5594();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A2DAAC4(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_21A2F5594();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A2DAAFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
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

uint64_t sub_21A2DAB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21A2DABA0()
{
  sub_21A179D28();
  sub_21A179D7C();

  return sub_21A2F7624();
}

double sub_21A2DABFC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_21A2DAC18@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for HorizontalParallaxModelSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A2DB474(&qword_27CD04DD0, type metadata accessor for HorizontalParallaxModelSource);
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

double sub_21A2DACB8()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD04DC8);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v17 - v6;
  (*(v3 + 16))(&v17 - v6, v1 + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource__observableHorizontalParallaxModel, v2, v5);
  sub_21A2F7594();
  (*(v3 + 8))(v7, v2);
  v8 = v18;
  if (v18)
  {
    swift_getKeyPath();
    v18 = v8;
    sub_21A2DB474(&qword_27CD04110, type metadata accessor for ObservableHorizontalParallaxModel);
    sub_21A2F5094();

    if (*(v8 + 16) != 2)
    {
      v9 = *(v8 + 56);
      v10 = v1 + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state;
      v11 = *(v8 + 24);
      v12 = *(v8 + 40);
      *v10 = *(v8 + 16);
      *(v10 + 8) = v11;
      *(v10 + 24) = v12;
      *(v10 + 40) = v9;
    }

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v8;

    sub_21A2F5074();
  }

  else
  {
    v16 = v1 + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state;
    *v16 = 2;
    result = 0.0;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
  }

  return result;
}

uint64_t sub_21A2DAF30()
{
  swift_getKeyPath();
  sub_21A2DB474(&qword_27CD04110, type metadata accessor for ObservableHorizontalParallaxModel);
  sub_21A2F5094();
}

uint64_t sub_21A2DAFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A2F7C34();
  v6[2] = a2;
  v6[3] = a3;
  return sub_21A139BC4(sub_21A2DB448, v6);
}

uint64_t sub_21A2DB048(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = (result + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state);
    v5 = *(result + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state);
    v6 = *(result + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state + 8);
    swift_getKeyPath();
    sub_21A2DB474(&qword_27CD04110, type metadata accessor for ObservableHorizontalParallaxModel);
    sub_21A2F5094();

    v7 = *(a2 + 16);
    if (v5 == 2)
    {
      if (v7 == 2)
      {
      }
    }

    else if (v7 != 2 && ((v5 ^ v7) & 1) == 0 && v6 == *(a2 + 24) && (sub_21A2F5594() & 1) != 0)
    {
    }

    swift_getKeyPath();
    sub_21A2F5094();

    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    *v4 = *(a2 + 16);
    v4[1] = v8;
    v4[2] = v9;
    type metadata accessor for HorizontalParallaxModelSource();
    sub_21A2DB474(&qword_27CD04DC0, type metadata accessor for HorizontalParallaxModelSource);
    sub_21A2F75C4();
  }

  return result;
}

uint64_t sub_21A2DB254()
{
  v1 = OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource__observableHorizontalParallaxModel;
  v4 = sub_21A176C98(&qword_27CD04DC8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_21A2DB344()
{
  if (!qword_27CD04DB0)
  {
    sub_21A176D98(&qword_27CD04DB8);
    v0 = sub_21A2F75A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD04DB0);
    }
  }
}

__n128 sub_21A2DB3A8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC10CookingKit29HorizontalParallaxModelSource_state;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = *(v2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21A2DB474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecipeTimeLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *v1;
    v5 = sub_21A2F5F34();
    v6 = sub_21A2F6F94();
    sub_21A2F5434();

    sub_21A176C88(v4, v3, 0);
    v7 = MEMORY[0x277D84F90];
    sub_21A2F5434();
    sub_21A1834EC(v4, v3, 0);

    v8 = 1;
    v9 = sub_21A2F67B4();
    KeyPath = swift_getKeyPath();
    result = sub_21A2F62A4();
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0;
    v7 = 0;
    KeyPath = 0;
    v9 = 0;
    result = 0;
    v8 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v9;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21A2DB5FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5DF4();
  *a1 = result;
  return result;
}

uint64_t sub_21A2DB670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21A2DB6CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21A2DB72C()
{
  result = qword_27CD04DD8;
  if (!qword_27CD04DD8)
  {
    sub_21A176D98(&qword_27CD04DE0);
    sub_21A2DB7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04DD8);
  }

  return result;
}

unint64_t sub_21A2DB7B0()
{
  result = qword_27CD04DE8;
  if (!qword_27CD04DE8)
  {
    sub_21A176D98(&qword_27CD04DF0);
    sub_21A2DB868();
    sub_21A1772F8(&qword_27CD00FF0, &qword_27CD00FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04DE8);
  }

  return result;
}

unint64_t sub_21A2DB868()
{
  result = qword_27CD04DF8;
  if (!qword_27CD04DF8)
  {
    sub_21A176D98(&qword_27CD04E00);
    sub_21A1772F8(&qword_27CD04E08, &qword_27CD04E10);
    sub_21A1772F8(&qword_27CCFE948, &qword_27CCFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04DF8);
  }

  return result;
}

uint64_t sub_21A2DB94C()
{
  v1 = v0;
  v2 = type metadata accessor for CookingSessionSource();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v17 - v9;
  v11 = sub_21A176C98(&qword_27CCFEB38);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v17 - v13;
  sub_21A2DBEA8(v1, v10);
  sub_21A176C98(&qword_27CD03E98);
  sub_21A2F7594();
  sub_21A2DBF0C(v10);
  v15 = v17[3];
  sub_21A2DBEA8(v1, v6);
  sub_21A176C98(&qword_27CCFF0E8);
  sub_21A2F7594();
  sub_21A2DBF0C(v6);
  sub_21A187DDC(v17[1], v17[2], v15, v14);

  return sub_21A2DBF68(v14, v1 + *(v3 + 32));
}

uint64_t Dependencies.cookingSession.getter()
{
  sub_21A179F18();
  sub_21A179F6C();

  return sub_21A2F7624();
}

uint64_t sub_21A2DBB58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CookingSession();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21A2DBBC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04E18);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for CookingSessionSource();
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A2DBCFC(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A152628(&qword_27CD04E20, type metadata accessor for CookingSessionSource);
    v8 = sub_21A156050(a1);
    return sub_21A2DBD64(v5, v8);
  }

  return result;
}

uint64_t sub_21A2DBCFC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A2DBD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2DBE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2DBEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2DBF0C(uint64_t a1)
{
  v2 = type metadata accessor for CookingSessionSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A2DBF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2DBFD8()
{
  sub_21A149EF4();
  sub_21A149F48();
  sub_21A2F7624();
  return v1;
}

void sub_21A2DC028()
{
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  sub_21A2F5434();
  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(v1 + 56) + ((v6 << 10) | (16 * v8));
    if (!*(v9 + 8))
    {
      v10 = *v9;

      sub_21A2F7CA4();
      sub_21A17FE30(v10, 0);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      sub_21A142808(v0 + 24);
      v11 = OBJC_IVAR____TtC10CookingKit18RecipeImagesSource__importedRecipes;
      v12 = sub_21A176C98(&qword_27CCFF060);
      (*(*(v12 - 8) + 8))(v0 + v11, v12);
      v13 = OBJC_IVAR____TtC10CookingKit18RecipeImagesSource___scope;
      v14 = sub_21A2F7614();
      (*(*(v14 - 8) + 8))(v0 + v13, v14);
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_21A2DC1E0()
{
  sub_21A2DC028();

  return swift_deallocClassInstance();
}

uint64_t sub_21A2DC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeSourceType();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2E01AC(a1, v11, type metadata accessor for RecipeSourceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A2E0144(v11, v7, type metadata accessor for ExternalRecipeSource);
      sub_21A183960(&v7[*(v4 + 28)], a2, &qword_27CCFEDC0);
      return sub_21A2E0214(v7, type metadata accessor for ExternalRecipeSource);
    }
  }

  else
  {
    sub_21A2E0214(v11, type metadata accessor for RecipeSourceType);
  }

  v14 = type metadata accessor for ImageAsset(0);
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

uint64_t sub_21A2DC418(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v65 = &v61 - v4;
  v5 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ImageAsset(0);
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v21 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v61 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v61 - v27;
  v29 = a1;
  sub_21A2E01AC(a1, &v61 - v27, type metadata accessor for ImageAsset);
  v66 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = v12;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A2E0144(v28, v12, type metadata accessor for WebImageAsset);
      v31 = sub_21A2F46A4();
      v32 = v12;
      v33 = v31;
      v35 = v34;
      v36 = type metadata accessor for WebImageAsset;
      v37 = v32;
    }

    else
    {
      sub_21A2E0144(v28, v8, type metadata accessor for LocalImageAsset);
      v33 = sub_21A2F46A4();
      v35 = v38;
      v36 = type metadata accessor for LocalImageAsset;
      v37 = v8;
    }
  }

  else
  {
    sub_21A2E0144(v28, v16, type metadata accessor for ExternalImageAsset);
    v33 = *v16;
    v35 = v16[1];
    sub_21A2F5434();
    v36 = type metadata accessor for ExternalImageAsset;
    v37 = v16;
  }

  sub_21A2E0214(v37, v36);
  if (*(*(v67 + 16) + 16))
  {
    sub_21A261F58(v33, v35);
    v40 = v39;

    if (v40)
    {
      return result;
    }
  }

  else
  {
  }

  v62 = v8;
  v42 = sub_21A2F7C64();
  v43 = v65;
  (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
  v44 = swift_allocObject();
  v45 = v67;
  swift_weakInit();
  sub_21A142AEC(v45 + 24, v68);
  sub_21A2E01AC(v29, v25, type metadata accessor for ImageAsset);
  v46 = (*(v64 + 80) + 72) & ~*(v64 + 80);
  v47 = (v18 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  sub_21A14274C(v68, v48 + 32);
  sub_21A2E0144(v25, v48 + v46, type metadata accessor for ImageAsset);
  *(v48 + v47) = v44;
  v49 = sub_21A2DD900(0, 0, v43, &unk_21A315E00, v48);
  sub_21A1427A8(v43, &qword_27CCFEB08);
  sub_21A2E01AC(v29, v21, type metadata accessor for ImageAsset);
  v50 = swift_getEnumCaseMultiPayload();
  if (v50)
  {
    if (v50 == 1)
    {
      v51 = v63;
      sub_21A2E0144(v21, v63, type metadata accessor for WebImageAsset);
      v52 = sub_21A2F46A4();
      v54 = v53;
      v55 = type metadata accessor for WebImageAsset;
    }

    else
    {
      v51 = v62;
      sub_21A2E0144(v21, v62, type metadata accessor for LocalImageAsset);
      v52 = sub_21A2F46A4();
      v54 = v58;
      v55 = type metadata accessor for LocalImageAsset;
    }

    v56 = v55;
    v57 = v51;
  }

  else
  {
    sub_21A2E0144(v21, v16, type metadata accessor for ExternalImageAsset);
    v52 = *v16;
    v54 = v16[1];
    sub_21A2F5434();
    v56 = type metadata accessor for ExternalImageAsset;
    v57 = v16;
  }

  sub_21A2E0214(v57, v56);
  v59 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v68[0] = *(v59 + 16);
  *(v59 + 16) = 0x8000000000000000;
  sub_21A2C65EC(v49, 0, v52, v54, isUniquelyReferenced_nonNull_native);

  *(v59 + 16) = *&v68[0];
  return result;
}

uint64_t sub_21A2DCA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(type metadata accessor for ImageAsset(0) - 8);
  v6[5] = v7;
  v6[6] = *(v7 + 64);
  v6[7] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFEB08);
  v6[8] = swift_task_alloc();
  type metadata accessor for ImageResource();
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A2DCB58, 0, 0);
}

uint64_t sub_21A2DCB58()
{
  v1 = v0[9];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  sub_21A142764(v2, v3);
  sub_21A244D84(v1);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_21A2DCC9C;
  v6 = v0[9];

  return v8(v6, v3, v4);
}

uint64_t sub_21A2DCC9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_21A2E0214(v4, type metadata accessor for ImageResource);
  if (v1)
  {
    v5 = sub_21A2DCFC4;
  }

  else
  {
    v5 = sub_21A2DCDE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A2DCDE4()
{
  Strong = swift_weakLoadStrong();
  v2 = v0[11];
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = sub_21A2F7C64();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_21A2E01AC(v8, v5, type metadata accessor for ImageAsset);
    sub_21A2F7C34();

    v10 = v2;
    v11 = sub_21A2F7C24();
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v11;
    v14[3] = v15;
    v14[4] = v3;
    sub_21A2E0144(v5, v14 + v12, type metadata accessor for ImageAsset);
    *(v14 + v13) = v10;
    sub_21A199D08(0, 0, v4, &unk_21A315E38, v14);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_21A2DCFC4()
{
  Strong = swift_weakLoadStrong();
  v2 = v0[12];
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = sub_21A2F7C64();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_21A2E01AC(v8, v5, type metadata accessor for ImageAsset);
    sub_21A2F7C34();

    v10 = v2;
    v11 = sub_21A2F7C24();
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v11;
    v14[3] = v15;
    v14[4] = v3;
    sub_21A2E0144(v5, v14 + v12, type metadata accessor for ImageAsset);
    *(v14 + v13) = v2;
    sub_21A199D08(0, 0, v4, &unk_21A315E28, v14);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_21A2DD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for LocalImageAsset(0);
  v6[6] = swift_task_alloc();
  type metadata accessor for WebImageAsset(0);
  v6[7] = swift_task_alloc();
  type metadata accessor for ExternalImageAsset(0);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for ImageAsset(0);
  v6[10] = swift_task_alloc();
  sub_21A2F7C34();
  v6[11] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A2DD2FC, v8, v7);
}

uint64_t sub_21A2DD2FC()
{
  v1 = v0[10];
  v2 = v0[4];

  sub_21A2E01AC(v2, v1, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[10];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = v0[7];
      sub_21A2E0144(v4, v5, type metadata accessor for WebImageAsset);
      v6 = sub_21A2F46A4();
      v8 = v7;
      v9 = type metadata accessor for WebImageAsset;
    }

    else
    {
      v5 = v0[6];
      sub_21A2E0144(v4, v5, type metadata accessor for LocalImageAsset);
      v6 = sub_21A2F46A4();
      v8 = v10;
      v9 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    v5 = v0[8];
    sub_21A2E0144(v4, v5, type metadata accessor for ExternalImageAsset);
    v6 = *v5;
    v8 = v5[1];
    sub_21A2F5434();
    v9 = type metadata accessor for ExternalImageAsset;
  }

  sub_21A2E0214(v5, v9);
  v11 = v0[5];
  v12 = v0[3];
  v13 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v12 + 16);
  *(v12 + 16) = 0x8000000000000000;
  sub_21A2C65EC(v11, 1, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v12 + 16) = v17;
  v0[2] = v12;
  type metadata accessor for RecipeImagesSource();
  sub_21A14A2A4(&qword_2811B7030);
  sub_21A2F75C4();

  v15 = v0[1];

  return v15();
}

uint64_t sub_21A2DD554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for LocalImageAsset(0);
  v6[6] = swift_task_alloc();
  type metadata accessor for WebImageAsset(0);
  v6[7] = swift_task_alloc();
  type metadata accessor for ExternalImageAsset(0);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for ImageAsset(0);
  v6[10] = swift_task_alloc();
  sub_21A2F7C34();
  v6[11] = sub_21A2F7C24();
  v8 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A2DD6A4, v8, v7);
}

uint64_t sub_21A2DD6A4()
{
  v1 = v0[10];
  v2 = v0[4];

  sub_21A2E01AC(v2, v1, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[10];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = v0[7];
      sub_21A2E0144(v4, v5, type metadata accessor for WebImageAsset);
      v6 = sub_21A2F46A4();
      v8 = v7;
      v9 = type metadata accessor for WebImageAsset;
    }

    else
    {
      v5 = v0[6];
      sub_21A2E0144(v4, v5, type metadata accessor for LocalImageAsset);
      v6 = sub_21A2F46A4();
      v8 = v10;
      v9 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    v5 = v0[8];
    sub_21A2E0144(v4, v5, type metadata accessor for ExternalImageAsset);
    v6 = *v5;
    v8 = v5[1];
    sub_21A2F5434();
    v9 = type metadata accessor for ExternalImageAsset;
  }

  sub_21A2E0214(v5, v9);
  v11 = v0[5];
  v12 = v0[3];
  v13 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v12 + 16);
  *(v12 + 16) = 0x8000000000000000;
  sub_21A2C65EC(v11, 2, v6, v8, isUniquelyReferenced_nonNull_native);

  *(v12 + 16) = v17;
  v0[2] = v12;
  type metadata accessor for RecipeImagesSource();
  sub_21A14A2A4(&qword_2811B7030);
  sub_21A2F75C4();

  v15 = v0[1];

  return v15();
}

uint64_t sub_21A2DD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_21A183960(a3, v26 - v11, &qword_27CCFEB08);
  v13 = sub_21A2F7C64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFEB08);
  }

  else
  {
    sub_21A2F7C54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A2F7BD4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A2F7964() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21A2DDBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21A2DDBFC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v149 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v107 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v110 = (63 - v5) >> 6;
  v125 = (a2 + 56);
  v8 = sub_21A2F5434();
  v9 = 0;
  v124 = v2;
  v108 = v4;
  v109 = v8;
LABEL_6:
  while (2)
  {
    if (!v7)
    {
      v11 = v9;
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= v110)
        {
          goto LABEL_127;
        }

        v7 = *(v4 + 8 * v10);
        ++v11;
        if (v7)
        {
          goto LABEL_12;
        }
      }

LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v10 = v9;
LABEL_12:
    v113 = v7;
    v111 = v10;
    v12 = *(v8 + 48) + 56 * (__clz(__rbit64(v7)) | (v10 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    v19 = *(v12 + 48);
    sub_21A2F8434();
    v121 = v18;
    v122 = v17;
    v118 = v16;
    v119 = v14;
    v123 = v15;
    v120 = v13;
    LODWORD(v117) = v19;
    if (v19)
    {
      MEMORY[0x21CED6EE0](1);
      sub_21A18BD3C();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v15);
      MEMORY[0x21CED6EE0](v16);
      MEMORY[0x21CED6EE0](v18);
      MEMORY[0x21CED6EE0](v17);
    }

    else
    {
      MEMORY[0x21CED6EE0](0);
      sub_21A18BD3C();
      sub_21A2F79A4();
    }

    v113 &= v113 - 1;
    v20 = sub_21A2F8474();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v125[v22 >> 6]) == 0)
    {
      sub_21A1997F4();
      v9 = v111;
      v7 = v113;
      v8 = v109;
      continue;
    }

    break;
  }

  v116 = ~v21;
  v25 = v121;
  v26 = v122;
  v27 = v118;
  while (1)
  {
    v28 = *(v2 + 48) + 56 * v22;
    v29 = *v28;
    v30 = *(v28 + 8);
    v32 = *(v28 + 16);
    v31 = *(v28 + 24);
    v33 = *(v28 + 32);
    v34 = *(v28 + 40);
    v35 = *(v28 + 48);
    v135[0] = *v28;
    v135[1] = v30;
    v135[2] = v32;
    v135[3] = v31;
    v135[4] = v33;
    v135[5] = v34;
    v136 = v35;
    v137 = v119;
    v138 = v120;
    v139 = v123;
    v140 = v27;
    v141 = v25;
    v142 = v26;
    v143 = v117;
    if (v35)
    {
      break;
    }

    if (v117)
    {
LABEL_37:
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A1427A8(v135, &qword_27CD04E48);
      goto LABEL_54;
    }

    v114 = v24;
    v115 = v23;
    if (v29 == v119 && v30 == v120)
    {
      v46 = v108;
      v146 = v107;
      v147 = v111;
      v148 = v113;
      v47 = v109;
      v144 = v109;
      v145 = v108;
      sub_21A2F5434();
      v48 = sub_21A1427A8(v135, &qword_27CD04E48);
      goto LABEL_62;
    }

    v112 = sub_21A2F8394();
    v27 = v118;
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1427A8(v135, &qword_27CD04E48);
    if (v112)
    {
      goto LABEL_61;
    }

LABEL_54:
    v22 = (v22 + 1) & v116;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if ((v125[v22 >> 6] & (1 << v22)) == 0)
    {
      sub_21A1997F4();
      v9 = v111;
      v2 = v124;
      v4 = v108;
      v8 = v109;
      v7 = v113;
      goto LABEL_6;
    }

    v2 = v124;
    v25 = v121;
    v26 = v122;
  }

  if ((v117 & 1) == 0)
  {
    goto LABEL_37;
  }

  v114 = v24;
  v115 = v23;
  v36 = v29 == v119 && v30 == v120;
  if (!v36)
  {
    v112 = sub_21A2F8394();
    v27 = v118;
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1427A8(v135, &qword_27CD04E48);
    if (v112)
    {
      v37 = v32 == v123 && v31 == v118;
      v38 = v37 && v33 == v121;
      if (v38 && v34 == v122)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_54;
  }

  v41 = v25;
  v42 = v26;
  sub_21A18BD3C();
  sub_21A18BD3C();
  sub_21A1427A8(v135, &qword_27CD04E48);
  v44 = v32 == v123 && v31 == v118 && v33 == v41;
  v27 = v118;
  if (!v44 || v34 != v42)
  {
    goto LABEL_54;
  }

LABEL_61:
  v46 = v108;
  v146 = v107;
  v147 = v111;
  v148 = v113;
  v47 = v109;
  v144 = v109;
  v145 = v108;
  v48 = sub_21A1997F4();
LABEL_62:
  v50 = v124;
  v51 = *(v124 + 32);
  v52 = v51 & 0x3F;
  v53 = ((1 << v51) + 63) >> 6;
  v103 = v53;
  if (v52 > 0xD)
  {
    v98 = v46;
    v99 = 8 * v53;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v100 = swift_slowAlloc();
      memcpy(v100, v125, v99);
      v101 = sub_21A2DEE48(v100, v103, v124, v22, &v144);

      MEMORY[0x21CED7BA0](v100, -1, -1);
      v107 = v146;
      v2 = v101;
      goto LABEL_127;
    }

    v46 = v98;
  }

  v104 = &v102;
  MEMORY[0x28223BE20](v48, v49);
  v55 = &v102 - ((v54 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v55, v125, v54);
  *&v55[8 * v115] &= ~v114;
  v105 = *(v50 + 16) - 1;
  v106 = v55;
  v56 = v113;
  v57 = v111;
  while (2)
  {
    v58 = v110;
LABEL_66:
    while (2)
    {
      if (!v56)
      {
        v60 = v57;
        while (1)
        {
          v59 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v59 >= v58)
          {
            if (v58 <= v57 + 1)
            {
              v96 = v57 + 1;
            }

            else
            {
              v96 = v58;
            }

            v111 = v96 - 1;
            v2 = sub_21A2DF6F8(v106, v103, v105, v50);
            goto LABEL_127;
          }

          v56 = *(v46 + 8 * v59);
          ++v60;
          if (v56)
          {
            goto LABEL_72;
          }
        }

        __break(1u);
        goto LABEL_130;
      }

      v59 = v57;
LABEL_72:
      v61 = v56;
      v111 = v59;
      v62 = *(v47 + 48) + 56 * (__clz(__rbit64(v56)) | (v59 << 6));
      v64 = *v62;
      v63 = *(v62 + 8);
      v66 = *(v62 + 16);
      v65 = *(v62 + 24);
      v68 = *(v62 + 32);
      v67 = *(v62 + 40);
      v69 = *(v62 + 48);
      sub_21A2F8434();
      v122 = v66;
      v123 = v67;
      v120 = v65;
      v121 = v68;
      v118 = v64;
      v119 = v63;
      LODWORD(v116) = v69;
      if (v69)
      {
        MEMORY[0x21CED6EE0](1);
        sub_21A18BD3C();
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v66);
        MEMORY[0x21CED6EE0](v65);
        MEMORY[0x21CED6EE0](v68);
        MEMORY[0x21CED6EE0](v67);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        sub_21A18BD3C();
        sub_21A2F79A4();
      }

      v113 = (v61 - 1) & v61;
      v70 = sub_21A2F8474();
      v71 = -1 << *(v50 + 32);
      v72 = v70 & ~v71;
      v73 = v72 >> 6;
      v74 = 1 << v72;
      v75 = v116;
      if (((1 << v72) & v125[v72 >> 6]) == 0)
      {
        sub_21A1997F4();
        v58 = v110;
        v57 = v111;
        v56 = v113;
        v46 = v108;
        v47 = v109;
        continue;
      }

      break;
    }

    v117 = ~v71;
LABEL_77:
    v76 = *(v50 + 48) + 56 * v72;
    v78 = *v76;
    v77 = *(v76 + 8);
    v79 = *(v76 + 16);
    v80 = *(v76 + 24);
    v82 = *(v76 + 32);
    v81 = *(v76 + 40);
    v83 = *(v76 + 48);
    v126[0] = *v76;
    v126[1] = v77;
    v126[2] = v79;
    v126[3] = v80;
    v126[4] = v82;
    v126[5] = v81;
    v127 = v83;
    v128 = v118;
    v129 = v119;
    v130 = v122;
    v131 = v120;
    v132 = v121;
    v133 = v123;
    v134 = v75;
    if (v83)
    {
      if (v75)
      {
        v114 = v74;
        v115 = v73;
        if (v78 == v118 && v77 == v119)
        {
          v89 = v120;
          v90 = v121;
          sub_21A18BD3C();
          sub_21A18BD3C();
          sub_21A1427A8(v126, &qword_27CD04E48);
          v93 = v79 == v122 && v80 == v89 && v82 == v90 && v81 == v123;
          v75 = v116;
          if (v93)
          {
            break;
          }
        }

        else
        {
          v112 = sub_21A2F8394();
          sub_21A18BD3C();
          sub_21A18BD3C();
          sub_21A1427A8(v126, &qword_27CD04E48);
          v75 = v116;
          if (v112)
          {
            v85 = v79 == v122 && v80 == v120;
            v86 = v85 && v82 == v121;
            if (v86 && v81 == v123)
            {
              break;
            }
          }
        }

        goto LABEL_114;
      }

LABEL_97:
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A1427A8(v126, &qword_27CD04E48);
      goto LABEL_114;
    }

    if (v75)
    {
      goto LABEL_97;
    }

    v114 = v74;
    v115 = v73;
    if (v78 == v118 && v77 == v119)
    {
      sub_21A2F5434();
      sub_21A1427A8(v126, &qword_27CD04E48);
      goto LABEL_119;
    }

    v112 = sub_21A2F8394();
    v75 = v116;
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1427A8(v126, &qword_27CD04E48);
    if ((v112 & 1) == 0)
    {
LABEL_114:
      v72 = (v72 + 1) & v117;
      v73 = v72 >> 6;
      v74 = 1 << v72;
      if ((v125[v72 >> 6] & (1 << v72)) == 0)
      {
        sub_21A1997F4();
        v57 = v111;
        v50 = v124;
        v46 = v108;
        v47 = v109;
        v56 = v113;
        continue;
      }

      v50 = v124;
      goto LABEL_77;
    }

    break;
  }

  sub_21A1997F4();
LABEL_119:
  v46 = v108;
  v47 = v109;
  v56 = v113;
  v94 = v114;
  v95 = v106[v115];
  v106[v115] = v95 & ~v114;
  v36 = (v95 & v94) == 0;
  v50 = v124;
  v58 = v110;
  v57 = v111;
  if (v36)
  {
    goto LABEL_66;
  }

  if (__OFSUB__(v105, 1))
  {
    __break(1u);
  }

  if (v105 != 1)
  {
    --v105;
    goto LABEL_66;
  }

LABEL_131:

  v2 = MEMORY[0x277D84FA0];
LABEL_127:
  sub_21A14B2F8();
  return v2;
}

uint64_t sub_21A2DE8D8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);
  v13 = sub_21A2F5434();
  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21A2F8434();
    sub_21A2F5434();
    sub_21A2F79A4();
    v23 = sub_21A2F8474();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21A2F8394() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21A2DF9E8(v59, v55, v57, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_21A2F8434();
            sub_21A2F5434();
            sub_21A2F79A4();
            v42 = sub_21A2F8474();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_21A2F8394() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_21A2DF4C0(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x21CED7BA0](v51, -1, -1);
    v58 = v64;
    v5 = v53;
LABEL_52:
    sub_21A14B2F8();
    return v5;
  }

  result = MEMORY[0x21CED7BA0](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21A2DEE48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v41 = result;
  v42 = a5;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v47 = a3 + 56;
LABEL_2:
  v40 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = *(*a5 + 48) + 56 * (__clz(__rbit64(v8)) | (v9 << 6));
      v13 = *v12;
      v55 = *(v12 + 8);
      v14 = *(v12 + 24);
      v56 = *(v12 + 16);
      v15 = *(v12 + 40);
      v53 = *(v12 + 32);
      v16 = *(v12 + 48);
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      sub_21A2F8434();
      v51 = v13;
      v52 = v15;
      v48 = v16;
      if (v16)
      {
        MEMORY[0x21CED6EE0](1);
        sub_21A18BD3C();
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v56);
        MEMORY[0x21CED6EE0](v14);
        MEMORY[0x21CED6EE0](v53);
        MEMORY[0x21CED6EE0](v15);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        sub_21A18BD3C();
        sub_21A2F79A4();
      }

      v17 = v14;
      v18 = sub_21A2F8474();
      v19 = -1 << *(a3 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v47 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:
        result = sub_21A1997F4();
        a5 = v42;
        continue;
      }

      v46 = ~v19;
      v50 = v17;
      while (1)
      {
        v23 = *(a3 + 48) + 56 * v20;
        v25 = *v23;
        v24 = *(v23 + 8);
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        v28 = *(v23 + 32);
        v54 = *(v23 + 40);
        if (*(v23 + 48))
        {
          if ((v48 & 1) == 0)
          {
            goto LABEL_15;
          }

          v45 = v22;
          if (v25 == v51 && v24 == v55)
          {
            sub_21A18BD3C();
            sub_21A18BD3C();
            sub_21A1997F4();
            sub_21A1997F4();
            if (v27 == v56 && v26 == v17 && v28 == v53 && v54 == v52)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v44 = sub_21A2F8394();
            sub_21A18BD3C();
            sub_21A18BD3C();
            sub_21A1997F4();
            sub_21A1997F4();
            if (v44)
            {
              v30 = v27 == v56 && v26 == v17;
              v31 = v30 && v28 == v53;
              if (v31 && v54 == v52)
              {
                goto LABEL_56;
              }
            }
          }
        }

        else
        {
          if (v48)
          {
LABEL_15:
            sub_21A18BD3C();
            sub_21A18BD3C();
            sub_21A1997F4();
            v17 = v50;
            sub_21A1997F4();
            goto LABEL_16;
          }

          v45 = v22;
          if (v25 == v51 && v24 == v55)
          {
            sub_21A2F5434();
            sub_21A1997F4();
LABEL_56:
            result = sub_21A1997F4();
            a5 = v42;
            v37 = v41[v21];
            v41[v21] = v37 & ~v45;
            if ((v37 & v45) != 0)
            {
              v6 = v40 - 1;
              if (__OFSUB__(v40, 1))
              {
LABEL_65:
                __break(1u);
                return result;
              }

              if (v40 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          v43 = sub_21A2F8394();
          sub_21A18BD3C();
          sub_21A18BD3C();
          sub_21A1997F4();
          v17 = v50;
          sub_21A1997F4();
          if (v43)
          {
            goto LABEL_56;
          }
        }

LABEL_16:
        v20 = (v20 + 1) & v46;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v47 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10 <= v7 + 1)
  {
    v38 = v7 + 1;
  }

  else
  {
    v38 = (a5[2] + 64) >> 6;
  }

  a5[3] = v38 - 1;
  a5[4] = 0;

  return sub_21A2DF6F8(v41, a2, v40, a3);
}

uint64_t sub_21A2DF4C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21A2DF9E8(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21A2F8434();
        sub_21A2F5434();
        sub_21A2F79A4();
        v19 = sub_21A2F8474();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21A2F8394() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21A2DF6F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_31:

    return v11;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_21A176C98(&qword_27CD04848);
  result = sub_21A2F7FC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  v37 = v4;
  v38 = result;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(v4 + 48) + 56 * (v14 | (v12 << 6));
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 40);
    v41 = *(v17 + 32);
    v42 = *(v17 + 24);
    v22 = *(v17 + 48);
    sub_21A2F8434();
    v43 = v21;
    v44 = v20;
    v40 = v19;
    if (v22)
    {
      MEMORY[0x21CED6EE0](1);
      sub_21A2F5434();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v20);
      v23 = v42;
      MEMORY[0x21CED6EE0](v42);
      MEMORY[0x21CED6EE0](v41);
      MEMORY[0x21CED6EE0](v21);
      v24 = v41;
    }

    else
    {
      MEMORY[0x21CED6EE0](0);
      sub_21A2F5434();
      sub_21A2F79A4();
      v24 = v41;
      v23 = v42;
    }

    result = sub_21A2F8474();
    v9 = v38;
    v25 = -1 << *(v38 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v25) >> 6;
      v29 = v43;
      v30 = v44;
      while (++v27 != v32 || (v31 & 1) == 0)
      {
        v33 = v27 == v32;
        if (v27 == v32)
        {
          v27 = 0;
        }

        v31 |= v33;
        v34 = *(v13 + 8 * v27);
        if (v34 != -1)
        {
          v28 = __clz(__rbit64(~v34)) + (v27 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_34;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    v29 = v43;
    v30 = v44;
LABEL_28:
    *(v13 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v35 = *(v38 + 48) + 56 * v28;
    *v35 = v40;
    *(v35 + 8) = v18;
    *(v35 + 16) = v30;
    *(v35 + 24) = v23;
    *(v35 + 32) = v24;
    *(v35 + 40) = v29;
    *(v35 + 48) = v22;
    ++*(v38 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v37;
    v10 = v39;
    if (!v5)
    {
LABEL_30:
      v11 = v9;
      goto LABEL_31;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_30;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_21A2DF9E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_21A176C98(&qword_27CD04840);
  result = sub_21A2F7FC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21A2F8434();
    sub_21A2F5434();
    sub_21A2F79A4();
    result = sub_21A2F8474();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21A2DFC0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_21A176C98(&qword_27CD04E38) + 48);
  v5 = *(sub_21A176C98(&qword_27CD034D8) + 48);
  v6 = a1[1];
  *a2 = *a1;
  a2[1] = v6;
  sub_21A2E01AC(a1 + v4, a2 + v5, type metadata accessor for ImageAsset);

  return sub_21A2F5434();
}

uint64_t sub_21A2DFCA4(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A2DCA2C(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t sub_21A2DFDC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A143DDC(a1, v4);
}

uint64_t sub_21A2DFE80(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21A146070;

  return sub_21A2DD554(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_21A2DFFB0(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21A146070;

  return sub_21A2DD1AC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_21A2E00E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2E0144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2E01AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2E0214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2E0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_21A1997F4();
  }

  return result;
}

uint64_t sub_21A2E029C()
{
  type metadata accessor for FrameState();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_21A176C98(&qword_27CD04E50);
  swift_allocObject();
  *(v0 + 48) = sub_21A2F5524();
  return v0;
}

uint64_t sub_21A2E0308()
{
  v25 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v26 = v0;
  v2 = v0 + *(v25 + 68);
  v4 = *v2;
  v3 = *(v2 + 8);
  v29 = v4;
  v30 = v3;
  sub_21A176C98(&qword_27CD04F10);
  sub_21A2F7024();
  v5 = 1 << *(v28 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v28 + 64);
  v8 = (v5 + 63) >> 6;
  sub_21A2F5434();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v29 = v10;
      sub_21A2F5434();
      sub_21A2E65FC(&v29);

      sub_21A2572E8(v29);

      v21 = v26 + *(v25 + 72);
      v23 = *v21;
      v22 = *(v21 + 8);
      v29 = v23;
      v30 = v22;
      sub_21A176C98(&qword_27CD04F08);
      return sub_21A2F7034();
    }

    v7 = *(v28 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      do
      {
LABEL_8:
        v12 = __clz(__rbit64(v7)) | (v9 << 6);
        v13 = *(v28 + 48) + 32 * v12;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 24);
        v17 = *(*(v28 + 56) + 8 * v12);
        v27 = *(v13 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21A1B86C0(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        v1 = (v19 + 1);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_21A1B86C0((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v1;
        v20 = &v10[40 * v19];
        *(v20 + 4) = v17;
        v7 &= v7 - 1;
        *(v20 + 5) = v14;
        *(v20 + 6) = v15;
        *(v20 + 7) = v27;
        v20[64] = v16;
      }

      while (v7);
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21A2E0558@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v3 = *(v2 - 8);
  v61 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8, v4);
  v69 = v5;
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21A176C98(&qword_27CD04EA0);
  MEMORY[0x28223BE20](v59, v7);
  v9 = &v56 - v8;
  v60 = sub_21A176C98(&qword_27CD04EA8);
  MEMORY[0x28223BE20](v60, v10);
  v12 = &v56 - v11;
  v13 = sub_21A176C98(&qword_27CD04EB0);
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v68 = &v56 - v16;
  *v9 = sub_21A2F6014();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = &v9[*(sub_21A176C98(&qword_27CD04EB8) + 44)];
  v66 = v1;
  sub_21A2E0D1C(v1, v17);
  type metadata accessor for CGRect(0);
  v67 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView;
  sub_21A2E7FAC(v1, v6, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v57 = *(v3 + 80);
  v18 = (v57 + 16) & ~v57;
  v19 = swift_allocObject();
  v65 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView;
  sub_21A2E8014(v6, v19 + v18, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  sub_21A1772F8(&qword_27CD04EC0, &qword_27CD04EA0);
  sub_21A2E8B28(&qword_27CD00CC8, type metadata accessor for CGRect);
  sub_21A2F6BF4();

  sub_21A1427A8(v9, &qword_27CD04EA0);
  v21 = v66;
  v20 = v67;
  sub_21A2E7FAC(v66, v6, v67);
  v22 = swift_allocObject();
  v23 = v65;
  sub_21A2E8014(v6, v22 + v18, v65);
  v24 = *(sub_21A176C98(&qword_27CD04EC8) + 36);
  v25 = v12;
  v58 = v12;
  v26 = &v12[v24];
  *v26 = sub_21A2E34C4;
  v26[1] = 0;
  v26[2] = sub_21A2E4608;
  v26[3] = v22;
  v27 = v21;
  sub_21A2E7FAC(v21, v6, v20);
  v28 = swift_allocObject();
  sub_21A2E8014(v6, v28 + v18, v23);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_21A2E4620;
  *(v29 + 24) = v28;
  v30 = v60;
  v31 = &v25[*(v60 + 36)];
  *v31 = sub_21A1A693C;
  *(v31 + 1) = v29;
  v32 = *v27;
  swift_getKeyPath();
  *&v74 = v32;
  sub_21A2E8B28(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v33 = *(v32 + 56);
  v34 = *(v32 + 64);
  v74 = *(v32 + 40);
  v75 = v33;
  v76 = v34;
  v35 = v67;
  sub_21A2E7FAC(v27, v6, v67);
  v36 = swift_allocObject();
  sub_21A2E8014(v6, v36 + v18, v23);
  v37 = sub_21A176C98(&qword_27CD00380);
  v38 = sub_21A2E6FAC();
  v39 = sub_21A2E8840(&qword_27CD00378, &qword_27CD00380, &unk_21A2FF810, sub_21A17A0F8);
  v40 = v58;
  sub_21A2F6E74();

  sub_21A1427A8(v40, &qword_27CD04EA8);
  v41 = v66;
  sub_21A1AC960(&v74);
  sub_21A2E7FAC(v41, v6, v35);
  v42 = swift_allocObject();
  sub_21A2E8014(v6, v42 + v18, v65);
  sub_21A176C98(&qword_27CD04E88);
  v70 = v30;
  v71 = v37;
  v72 = v38;
  v73 = v39;
  swift_getOpaqueTypeConformance2();
  sub_21A2E7208();
  v43 = v64;
  v44 = v62;
  v45 = v68;
  sub_21A2F6E74();

  sub_21A1427A8(&v74, &qword_27CD04E88);
  (*(v63 + 8))(v45, v44);
  LOBYTE(v27) = sub_21A2F6624();
  sub_21A2F55A4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v43 + *(sub_21A176C98(&qword_27CD04EF8) + 36);
  *v54 = v27;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;
  result = sub_21A176C98(&qword_27CD04F00);
  *(v43 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21A2E0D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_21A176C98(&qword_27CD04F18);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v87 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v85 = &v71[-v8];
  MEMORY[0x28223BE20](v9, v10);
  v86 = &v71[-v11];
  v12 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v78 = *(v12 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v76 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21A2F5654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v71[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v71[-v22];
  v83 = sub_21A176C98(&qword_27CD04F20) - 8;
  MEMORY[0x28223BE20](v83, v24);
  v81 = &v71[-v25];
  v82 = sub_21A176C98(&qword_27CD04F28) - 8;
  MEMORY[0x28223BE20](v82, v26);
  v84 = &v71[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v29);
  v79 = &v71[-v30];
  MEMORY[0x28223BE20](v31, v32);
  v80 = &v71[-v33];
  v75 = sub_21A2F5F24();
  LODWORD(v74) = *(a1 + 64);
  v109 = 0;
  sub_21A2E1684(a1, &v92);
  v103 = v93[5];
  v104 = v93[6];
  v105 = v93[7];
  v106 = v93[8];
  v99 = v93[1];
  v100 = v93[2];
  v101 = v93[3];
  v102 = v93[4];
  v97 = v92;
  v98 = v93[0];
  v107[6] = v93[5];
  v107[7] = v93[6];
  v107[8] = v93[7];
  v107[9] = v93[8];
  v107[2] = v93[1];
  v107[3] = v93[2];
  v107[4] = v93[3];
  v107[5] = v93[4];
  v107[0] = v92;
  v107[1] = v93[0];
  sub_21A183960(&v97, v91, &qword_27CD04F30);
  sub_21A1427A8(v107, &qword_27CD04F30);
  *&v108[103] = v103;
  *&v108[119] = v104;
  *&v108[135] = v105;
  *&v108[151] = v106;
  *&v108[39] = v99;
  *&v108[55] = v100;
  *&v108[71] = v101;
  *&v108[87] = v102;
  *&v108[7] = v97;
  *&v108[23] = v98;
  v72 = v109;
  v73 = sub_21A2F7344();
  v35 = v34;
  sub_21A1AC5F4(v23);
  (*(v16 + 104))(v19, *MEMORY[0x277CDF3C0], v15);
  v36 = sub_21A2F5644();
  v37 = *(v16 + 8);
  v37(v19, v15);
  v37(v23, v15);
  v38 = objc_opt_self();
  v39 = &selRef_systemBackgroundColor;
  if ((v36 & 1) == 0)
  {
    v39 = &selRef_secondarySystemBackgroundColor;
  }

  v40 = [v38 *v39];
  v41 = sub_21A2F6EF4();
  if (v74)
  {
    v42 = 0x404E000000000000;
  }

  else
  {
    v42 = 0x4044000000000000;
  }

  v74 = v42;
  v43 = v76;
  sub_21A2E7FAC(a1, v76, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v44 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v45 = swift_allocObject();
  sub_21A2E8014(v43, v45 + v44, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  *(&v93[7] + 1) = *&v108[112];
  *(&v93[8] + 1) = *&v108[128];
  *(&v93[9] + 1) = *&v108[144];
  *(&v93[3] + 1) = *&v108[48];
  *(&v93[4] + 1) = *&v108[64];
  *(&v93[5] + 1) = *&v108[80];
  *(&v93[6] + 1) = *&v108[96];
  *(v93 + 1) = *v108;
  *(&v93[1] + 1) = *&v108[16];
  *&v92 = v75;
  *(&v92 + 1) = v42;
  LOBYTE(v93[0]) = v72;
  *(&v93[2] + 1) = *&v108[32];
  *&v93[10] = *&v108[159];
  *(&v93[10] + 1) = v41;
  *&v94 = v73;
  *(&v94 + 1) = v35;
  *&v95 = sub_21A1A5EAC;
  *(&v95 + 1) = 0;
  *&v96 = sub_21A2E7374;
  *(&v96 + 1) = v45;
  v46 = *(a1 + 96);
  *&v91[0] = *(a1 + 88);
  *(&v91[0] + 1) = v46;
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  v47 = v89;
  v48 = *(a1 + 112);
  *&v91[0] = *(a1 + 104);
  *(&v91[0] + 1) = v48;
  sub_21A2F7024();
  if (v47 <= v89)
  {
    v47 = v89;
  }

  v91[12] = v94;
  v91[13] = v95;
  v91[14] = v96;
  v91[8] = v93[7];
  v91[9] = v93[8];
  v91[10] = v93[9];
  v91[11] = v93[10];
  v91[4] = v93[3];
  v91[5] = v93[4];
  v91[6] = v93[5];
  v91[7] = v93[6];
  v91[0] = v92;
  v91[1] = v93[0];
  v91[2] = v93[1];
  v91[3] = v93[2];
  v49 = swift_allocObject();
  *(v49 + 16) = 1;
  *(v49 + 24) = sub_21A193264;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0;
  *(v49 + 64) = 1;
  *(v49 + 72) = v47;
  *(v49 + 80) = 0;
  v50 = sub_21A176C98(&qword_27CD04F38);
  v51 = sub_21A176C98(&qword_27CD02A70);
  v52 = sub_21A2E7414();
  v53 = COERCE_DOUBLE(sub_21A176D98(&qword_27CCFF218));
  v54 = COERCE_DOUBLE(sub_21A2F5C84());
  v55 = sub_21A2E8B28(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v89 = v54;
  v90 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = v53;
  v90 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v81;
  MEMORY[0x21CED5600](sub_21A2E7410, v49, v50, v51, v52, v57);
  sub_21A1427A8(&v92, &qword_27CD04F38);

  *(v58 + *(v83 + 44)) = 0x4059000000000000;
  v59 = v79;
  sub_21A149B18(v58, v79, &qword_27CD04F20);
  *&v59[*(v82 + 44)] = 0x4059000000000000;
  v60 = v80;
  sub_21A149B18(v59, v80, &qword_27CD04F28);
  v61 = sub_21A2F5F24();
  v62 = v85;
  v63 = v74;
  *v85 = v61;
  *(v62 + 8) = v63;
  *(v62 + 16) = 0;
  v64 = sub_21A176C98(&qword_27CD04F78);
  sub_21A2E1D6C(a1, v62 + *(v64 + 44));
  v65 = v86;
  sub_21A149B18(v62, v86, &qword_27CD04F18);
  v66 = v84;
  sub_21A183960(v60, v84, &qword_27CD04F28);
  v67 = v87;
  sub_21A183960(v65, v87, &qword_27CD04F18);
  v68 = v88;
  sub_21A183960(v66, v88, &qword_27CD04F28);
  v69 = sub_21A176C98(&qword_27CD04F80);
  sub_21A183960(v67, v68 + *(v69 + 48), &qword_27CD04F18);
  sub_21A1427A8(v65, &qword_27CD04F18);
  sub_21A1427A8(v60, &qword_27CD04F28);
  sub_21A1427A8(v67, &qword_27CD04F18);
  return sub_21A1427A8(v66, &qword_27CD04F28);
}

uint64_t sub_21A2E1684@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  v3 = sub_21A2F5ED4();
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_21A2F7894();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_21A2F7884();
  sub_21A2F4A54();
  v11 = sub_21A2F7934();
  v55 = v12;
  v56 = v11;
  v13 = *a1;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  v80[0] = v13;
  v50 = sub_21A2E8B28(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  v51 = v14;
  sub_21A2F5094();

  v15 = *(v13 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader + 8);
  *&v54 = *(v13 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader);
  LODWORD(v52) = *(a1 + 64);
  v16 = a1 + *(type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0) + 60);
  v17 = *v16;
  v18 = *(v16 + 8);
  *(&v54 + 1) = v15;
  sub_21A2F5434();
  v49 = v18;
  if (v18 != 1)
  {
    sub_21A1B5814(v17, 0);
    sub_21A2F7DE4();
    v19 = sub_21A2F65B4();
    v47 = v6;
    v20 = v3;
    v21 = v19;
    sub_21A2F53B4();

    v3 = v20;
    v6 = v47;
    v22 = v48;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A2330F0(v17, 0);
    (*(v22 + 8))(v6, v20);
  }

  sub_21A2F7344();
  sub_21A2F57C4();
  sub_21A2F7884();
  sub_21A2F4A54();
  v52 = sub_21A2F7934();
  v24 = v23;
  swift_getKeyPath();
  v80[0] = v13;
  sub_21A2F5094();

  v25 = v13 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader;
  v27 = *(v13 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader);
  v26 = *(v25 + 8);
  if (v49)
  {
    sub_21A2F5434();
  }

  else
  {
    sub_21A1B5814(v17, 0);
    sub_21A2F5434();
    sub_21A2F7DE4();
    v28 = sub_21A2F65B4();
    v29 = v48;
    v30 = v3;
    v31 = v28;
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A2330F0(v17, 0);
    (*(v29 + 8))(v6, v30);
  }

  sub_21A2F7344();
  sub_21A2F57C4();
  v33 = v55;
  v32 = v56;
  *&v70[0] = v56;
  *(&v70[0] + 1) = v55;
  v34 = v54;
  v70[1] = v54;
  v70[2] = v85;
  v70[3] = v86;
  v70[4] = v87;
  v59 = v85;
  v60 = v86;
  v57 = v70[0];
  v58 = v54;
  v35 = v52;
  *&v71 = v52;
  *(&v71 + 1) = v24;
  *&v72 = v27;
  *(&v72 + 1) = v26;
  v37 = v68;
  v36 = v69;
  v74 = v68;
  v75 = v69;
  v38 = v67;
  v73 = v67;
  v61 = v87;
  v62 = v71;
  v65 = v68;
  v66 = v69;
  v63 = v72;
  v64 = v67;
  v39 = v54;
  v40 = v53;
  *v53 = v70[0];
  v40[1] = v39;
  v41 = v62;
  v40[4] = v61;
  v40[5] = v41;
  v42 = v60;
  v40[2] = v59;
  v40[3] = v42;
  v43 = v66;
  v40[8] = v65;
  v40[9] = v43;
  v44 = v64;
  v40[6] = v63;
  v40[7] = v44;
  v76[0] = v35;
  v76[1] = v24;
  v76[2] = v27;
  v76[3] = v26;
  v77 = v38;
  v78 = v37;
  v79 = v36;
  sub_21A183960(v70, v80, &qword_27CD05038);
  sub_21A183960(&v71, v80, &qword_27CD05038);
  sub_21A1427A8(v76, &qword_27CD05038);
  v80[0] = v32;
  v80[1] = v33;
  v81 = v34;
  v82 = v85;
  v83 = v86;
  v84 = v87;
  return sub_21A1427A8(v80, &qword_27CD05038);
}

uint64_t sub_21A2E1CD0(double *a1)
{
  v1 = *a1;
  sub_21A176C98(&qword_27CCFF4D8);
  result = sub_21A2F7024();
  if (v3 != v1)
  {
    return sub_21A2F7034();
  }

  return result;
}

uint64_t sub_21A2E1D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v141 = sub_21A176C98(&qword_27CD04F88);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v3);
  v139 = &v115 - v4;
  v138 = sub_21A176C98(&qword_27CD04F90);
  MEMORY[0x28223BE20](v138, v5);
  v145 = &v115 - v6;
  v142 = sub_21A176C98(&qword_27CD04F98);
  MEMORY[0x28223BE20](v142, v7);
  v147 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v144 = &v115 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v146 = &v115 - v14;
  v153 = sub_21A2F59E4();
  v154 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v15);
  v152 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v151 = &v115 - v19;
  v20 = sub_21A2F5ED4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_21A176C98(&qword_27CD04FA0);
  v132 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v25);
  v27 = &v115 - v26;
  v28 = sub_21A176C98(&qword_27CD04FA8);
  MEMORY[0x28223BE20](v28, v29);
  v149 = &v115 - v30;
  v123 = sub_21A176C98(&qword_27CD04FB0);
  MEMORY[0x28223BE20](v123, v31);
  v143 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v134 = &v115 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v150 = &v115 - v38;
  v155 = a1;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD04FB8);
  sub_21A2E75B8();
  sub_21A2F5634();
  v39 = *(a1 + 8);
  v40 = a1 + *(type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0) + 60);
  v41 = *v40;
  v133 = *(v40 + 8);
  v118 = v20;
  v117 = v21;
  v116 = v24;
  v135 = v41;
  if (v133 != 1)
  {

    sub_21A2F7DE4();
    v42 = v28;
    v43 = v20;
    v44 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A2330F0(v41, 0);
    v45 = v43;
    v28 = v42;
    (*(v21 + 8))(v24, v45);
  }

  v46 = *(a1 + 56);
  v137 = v39;
  v131 = v46;
  v47 = 0.0;
  sub_21A2F7344();
  sub_21A2F57C4();
  v48 = v149;
  (*(v132 + 32))(v149, v27, v136);
  v49 = (v48 + *(v28 + 36));
  v50 = v165;
  *v49 = v164;
  v49[1] = v50;
  v49[2] = v166;
  v51 = *(a1 + 96);
  v136 = *(a1 + 88);
  *&v167 = v136;
  v132 = v51;
  *(&v167 + 1) = v51;
  v52 = sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  v53 = v158;
  v54 = *(a1 + 104);
  v55 = *(a1 + 112);
  *&v167 = v54;
  v125 = v55;
  *(&v167 + 1) = v55;
  sub_21A2F7024();
  v56 = v158;
  v57 = *(a1 + 16);
  v58 = *(a1 + 72);
  v59 = *(a1 + 80);
  *&v167 = v58;
  *(&v167 + 1) = v59;
  sub_21A2F7024();
  if (v57 - *&v158 >= 0.0)
  {
    v47 = v57 - *&v158;
  }

  *&v167 = v58;
  v129 = v59;
  *(&v167 + 1) = v59;
  v130 = v52;
  sub_21A2F7024();
  v60 = v158;
  v61 = *(a1 + 120);
  v62 = *(a1 + 128);
  v63 = *(a1 + 136);
  v64 = type metadata accessor for FrameState();
  v65 = sub_21A2E8B28(&qword_27CD04E70, type metadata accessor for FrameState);
  v128 = v61;
  v127 = v62;
  v126 = v63;
  v124 = v64;
  v119 = v65;
  v66 = sub_21A2F5684();
  v67 = v134;
  v68 = &v134[*(v123 + 36)];
  *v68 = v53;
  *(v68 + 1) = v56;
  *(v68 + 2) = v47;
  *(v68 + 3) = v60;
  *(v68 + 4) = v57;
  *(v68 + 5) = v66;
  *(v68 + 6) = 0;
  *(v68 + 7) = 0;
  *(v68 + 8) = 0;
  v68[72] = -1;
  *(v68 + 10) = swift_getKeyPath();
  v68[120] = 0;
  LOBYTE(v158) = 0;

  sub_21A2F7014();
  v69 = *(&v167 + 1);
  v68[128] = v167;
  *(v68 + 17) = v69;
  v70 = type metadata accessor for SlidingPaneViewModifier(0);
  v71 = sub_21A1BEE14();
  v72 = v151;
  v123 = v71;
  sub_21A2F59A4();
  v73 = v154;
  v74 = *(v154 + 16);
  v75 = v153;
  v122 = v154 + 16;
  v121 = v74;
  v74(v152, v72, v153);
  sub_21A2F7014();
  v76 = *(v73 + 8);
  v154 = v73 + 8;
  v120 = v76;
  v76(v72, v75);
  v77 = &v68[*(v70 + 56)];
  type metadata accessor for CGRect(0);
  v158 = 0u;
  v159 = 0u;
  sub_21A2F7014();

  v78 = v169;
  v79 = v168;
  *v77 = v167;
  *(v77 + 1) = v79;
  *(v77 + 4) = v78;
  sub_21A149B18(v149, v67, &qword_27CD04FA8);
  v80 = sub_21A149B18(v67, v150, &qword_27CD04FB0);
  MEMORY[0x28223BE20](v80, v81);
  *(&v115 - 2) = a1;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD04FF0);
  sub_21A2E77A8();
  v82 = v139;
  sub_21A2F5634();
  if (!v133)
  {
    v83 = v135;

    sub_21A2F7DE4();
    v84 = sub_21A2F65B4();
    sub_21A2F53B4();

    v85 = v116;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A2330F0(v83, 0);
    (*(v117 + 8))(v85, v118);
  }

  v86 = 0.0;
  sub_21A2F7344();
  sub_21A2F57C4();
  v87 = v145;
  (*(v140 + 32))(v145, v82, v141);
  v88 = (v87 + *(v138 + 36));
  v89 = v168;
  *v88 = v167;
  v88[1] = v89;
  v88[2] = v169;
  *&v158 = v54;
  *(&v158 + 1) = v125;
  sub_21A2F7024();
  v90 = v156;
  *&v158 = v136;
  *(&v158 + 1) = v132;
  sub_21A2F7024();
  v91 = v156;
  *&v158 = v58;
  v92 = v129;
  *(&v158 + 1) = v129;
  sub_21A2F7024();
  if (v57 - *&v156 >= 0.0)
  {
    v86 = v57 - *&v156;
  }

  *&v158 = v58;
  *(&v158 + 1) = v92;
  sub_21A2F7024();
  v93 = v156;
  v94 = sub_21A2F5684();
  v95 = *(a1 + 160);
  v96 = *(a1 + 168);
  v97 = *(a1 + 176);
  v158 = *(a1 + 144);
  *&v159 = v95;
  BYTE8(v159) = v96;
  v160 = v97;
  sub_21A176C98(&qword_27CD05020);
  sub_21A2F7024();
  v98 = v162;
  v99 = v163;
  v100 = v144;
  v101 = &v144[*(v142 + 36)];
  *v101 = v90;
  *(v101 + 1) = v91;
  *(v101 + 2) = v86;
  *(v101 + 3) = v93;
  *(v101 + 4) = v57;
  *(v101 + 5) = v94;
  *(v101 + 3) = v161;
  *(v101 + 8) = v98;
  v101[72] = v99;
  *(v101 + 10) = swift_getKeyPath();
  v101[120] = 0;
  LOBYTE(v156) = 0;

  sub_21A2F7014();
  v102 = *(&v158 + 1);
  v101[128] = v158;
  *(v101 + 17) = v102;
  v103 = v151;
  sub_21A2F59A4();
  v104 = v153;
  v121(v152, v103, v153);
  sub_21A2F7014();
  v120(v103, v104);
  v105 = &v101[*(v70 + 56)];
  v157 = 0u;
  v156 = 0u;
  sub_21A2F7014();

  v106 = v160;
  v107 = v159;
  *v105 = v158;
  *(v105 + 1) = v107;
  *(v105 + 4) = v106;
  sub_21A149B18(v87, v100, &qword_27CD04F90);
  v108 = v146;
  sub_21A149B18(v100, v146, &qword_27CD04F98);
  v109 = v150;
  v110 = v143;
  sub_21A183960(v150, v143, &qword_27CD04FB0);
  v111 = v147;
  sub_21A183960(v108, v147, &qword_27CD04F98);
  v112 = v148;
  sub_21A183960(v110, v148, &qword_27CD04FB0);
  v113 = sub_21A176C98(&qword_27CD05028);
  sub_21A183960(v111, v112 + *(v113 + 48), &qword_27CD04F98);
  sub_21A1427A8(v108, &qword_27CD04F98);
  sub_21A1427A8(v109, &qword_27CD04FB0);
  sub_21A1427A8(v111, &qword_27CD04F98);
  return sub_21A1427A8(v110, &qword_27CD04FB0);
}

uint64_t sub_21A2E2D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_21A2E8B28(&qword_27CCFFA78, type metadata accessor for IngredientsViewModel);
  sub_21A2F7754();
  sub_21A2E7FAC(a1, v8, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21A2E8014(v8, v10 + v9, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21A2E79A0;
  *(v11 + 24) = v10;
  result = sub_21A176C98(&qword_27CD04FB8);
  v13 = (a2 + *(result + 36));
  *v13 = sub_21A2E8B8C;
  v13[1] = v11;
  return result;
}

uint64_t sub_21A2E2F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v20 = a2;
  v2 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_21A176C98(&qword_27CD05010);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - v7;
  *v8 = sub_21A2F6014();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = &v8[*(sub_21A176C98(&qword_27CD05030) + 44)];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 20) = 1;
  sub_21A1D4544();
  sub_21A2F55D4();
  v10 = type metadata accessor for InstructionsView();
  swift_getKeyPath();
  sub_21A2E8B28(&qword_27CCFFF70, type metadata accessor for InstructionsViewModel);
  sub_21A2F7754();
  v11 = &v9[*(v10 + 36)];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &v9[*(v10 + 40)];
  *v12 = swift_getKeyPath();
  sub_21A1772F8(&qword_27CD05018, &qword_27CD05010);
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 12) = 0;
  v13 = v20;
  sub_21A2F6C64();
  sub_21A1427A8(v8, &qword_27CD05010);
  sub_21A2E7FAC(v22, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_21A2E8014(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21A2E795C;
  *(v16 + 24) = v15;
  result = sub_21A176C98(&qword_27CD04FF0);
  v18 = (v13 + *(result + 36));
  *v18 = sub_21A2E7974;
  v18[1] = v16;
  return result;
}

uint64_t sub_21A2E32EC@<X0>(void *a1@<X8>)
{
  v2 = sub_21A2F6144();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6314();
  sub_21A2F5824();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = (*(v3 + 8))(v6, v2);
  *a1 = 0;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  return result;
}

uint64_t sub_21A2E33F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  type metadata accessor for FrameState();
  sub_21A2E8B28(&qword_27CD04E70, type metadata accessor for FrameState);
  v6 = sub_21A2F5684();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  sub_21A2F5514();
}

void sub_21A2E34C4(CGFloat *a1@<X8>)
{
  v2 = sub_21A2F6144();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0x6143657069636572;
  v15[1] = 0xEA00000000006472;
  sub_21A2F6324();
  sub_21A2F5824();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetMinY(v16);
}

uint64_t sub_21A2E3614()
{
  type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  sub_21A176C98(&qword_27CCFF4D8);
  return sub_21A2F7034();
}

uint64_t sub_21A2E368C(unint64_t a1)
{
  type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  sub_21A176C98(&qword_27CD04F10);
  sub_21A2F7024();
  v2 = sub_21A191B2C(a1, v4);

  if ((v2 & 1) == 0)
  {
    sub_21A2F5434();
    sub_21A2F7034();
    return sub_21A2E0308();
  }

  return result;
}

void sub_21A2E3754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21A2F6494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 24) & 1) == 0)
  {
    v15 = *a2;
    v36 = v6;
    v37 = v15;
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    v18 = (a3 + *(v10 + 68));
    v20 = *v18;
    v19 = v18[1];
    v39 = v20;
    v40 = v19;
    sub_21A176C98(&qword_27CD04F10);
    sub_21A2F7024();
    v21 = v38;
    if (*(*&v38 + 16) && (v22 = sub_21A25A7EC(v37, v16, v17, 1), (v23 & 1) != 0))
    {
      v24 = *(*(*&v21 + 56) + 8 * v22);

      v25 = (a3 + *(v10 + 76));
      v26 = *v25;
      v27 = v25[1];
      v39 = v26;
      v40 = v27;
      sub_21A176C98(&qword_27CCFF4D8);
      sub_21A2F7024();
      v28 = v24 + v38;
      v29 = sub_21A2F7384();
      v35[1] = v35;
      MEMORY[0x28223BE20](v29, v30);
      v35[-2] = a3;
      *&v35[-1] = v28;
      sub_21A2E7FAC(a3, v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
      v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_21A2E8014(v14, v33 + v31, type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView);
      v34 = (v33 + v32);
      *v34 = v37;
      v34[1] = v16;
      v34[2] = v17;
      sub_21A2F6484();
      sub_21A2F58D4();

      (*(v36 + 8))(v9, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_21A2E3AB0()
{
  v0 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A1BEE14();
  sub_21A2F5994();
  return sub_21A28BE98(v3);
}

uint64_t sub_21A2E3B60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21A2E8B28(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v8 = *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v8)
  {
    v13 = *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    sub_21A18FAD4(a2, a3, a4, v13, v8, 0, 4u);
  }

  v9 = v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  if (sub_21A1EAEB8(*(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep), *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 8), *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 16), *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24), a2, a3, a4, 0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    sub_21A2F5084();
  }

  else
  {
    *v9 = a2;
    *(v9 + 8) = a3;
    *(v9 + 16) = a4;
    *(v9 + 24) = 0;
    return sub_21A28C244();
  }
}

void sub_21A2E3D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for FrameState();
  sub_21A2E8B28(&qword_27CD04E70, type metadata accessor for FrameState);
  v4 = sub_21A2F5684();
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];

  v39.origin.x = v5;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v8;
  MinY = CGRectGetMinY(v39);
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  v10 = v38 - MinY;
  if (v38 - MinY <= 0.0)
  {
    return;
  }

  v11 = sub_21A2F5684();
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v11[5];

  v40.origin.x = v12;
  v40.origin.y = v13;
  v40.size.width = v14;
  v40.size.height = v15;
  if (v10 >= CGRectGetHeight(v40))
  {
    return;
  }

  type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  sub_21A176C98(&qword_27CD04F08);
  sub_21A2F7024();
  if (!*(*&v38 + 16))
  {
    goto LABEL_25;
  }

  v16 = *(*&v38 + 32);
  v18 = *(*&v38 + 40);
  v17 = *(*&v38 + 48);
  v19 = *(*&v38 + 56);
  v20 = *(*&v38 + 64);

  sub_21A2F7024();
  v21 = *(*&v38 + 16);
  if (v21 >= 2)
  {
    v22 = 0;
    v23 = 1;
    while (v23 < v21)
    {
      v24 = *&v38 + v22;
      v25 = *(*&v38 + v22 + 72);
      if (v16 <= v10 && v10 < v25)
      {
        goto LABEL_14;
      }

      ++v23;
      v20 = *(v24 + 104);
      v17 = *(v24 + 88);
      v19 = *(v24 + 96);
      v18 = *(v24 + 80);
      v22 += 40;
      v16 = v25;
      if (v21 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

LABEL_12:

  sub_21A2F7024();
  v27 = *(*&v38 + 16);
  if (!v27)
  {
LABEL_25:

    return;
  }

  v28 = *&v38 + 40 * v27;
  v18 = *v28;
  v17 = *(v28 + 8);
  v19 = *(v28 + 16);
  v20 = *(v28 + 24);
LABEL_14:

  if (v20 == 1)
  {
    v29 = *a3;
    swift_getKeyPath();
    sub_21A2E8B28(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    v30 = v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
    v31 = *(v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep);
    v32 = *(v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 8);
    v33 = *(v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 16);
    if ((*(v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24) & 1) != 0 || (v31 == v18 ? (v34 = v32 == v17) : (v34 = 0), v34 ? (v35 = v33 == v19) : (v35 = 0), !v35))
    {
      if (sub_21A1EAEB8(v31, v32, v33, *(v29 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24), v18, v17, v19, 0))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath, v37);
        sub_21A2F5084();
      }

      else
      {
        *v30 = v18;
        *(v30 + 8) = v17;
        *(v30 + 16) = v19;
        *(v30 + 24) = 0;
        sub_21A28C244();
      }
    }
  }
}

uint64_t sub_21A2E4134()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A2E419C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5504();
  *a1 = result;
  return result;
}

void sub_21A2E4234()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_21A2E7C38(319, &qword_27CCFF418, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21A2E44C0();
        if (v3 <= 0x3F)
        {
          sub_21A2E4554(319, &qword_27CD04E78, &qword_27CD04498, &unk_21A315F70, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21A2E7C88(319, &qword_27CCFF420, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21A2E7C38(319, &qword_27CD024C8, &type metadata for RecipeCardColumnConfig, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_21A2E4554(319, &qword_27CD04E80, &qword_27CD04E88, &unk_21A315F78, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_21A2E4554(319, &qword_27CD04E90, &qword_27CD044A0, &unk_21A312CF0, MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_21A2E4554(319, &qword_27CD04E98, &qword_27CD044A8, &unk_21A312CF8, MEMORY[0x277CE10B8]);
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

void sub_21A2E44C0()
{
  if (!qword_27CD04E68)
  {
    type metadata accessor for FrameState();
    sub_21A2E8B28(&qword_27CD04E70, type metadata accessor for FrameState);
    v0 = sub_21A2F5694();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD04E68);
    }
  }
}

void sub_21A2E4554(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21A2E4620(unint64_t a1)
{
  type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);

  return sub_21A2E368C(a1);
}

uint64_t sub_21A2E4690@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CD050A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v17 - v11;
  sub_21A2E4814(a1, &v17 - v11);
  v13 = *(v5 + 16);
  v13(v8, v12, v4);
  v13(a2, v8, v4);
  v14 = &a2[*(sub_21A176C98(&qword_27CD050B0) + 48)];
  *v14 = 0;
  v14[8] = 1;
  v15 = *(v5 + 8);
  v15(v12, v4);
  return (v15)(v8, v4);
}

uint64_t sub_21A2E4814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v137 = a1;
  v131 = a2;
  v132 = sub_21A2F6434();
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v4);
  v129 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CD009C0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v114 = &v107 - v8;
  v9 = type metadata accessor for SlidingPaneViewModifier(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v138 = v12;
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A176C98(&qword_27CD050B8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v107 - v16;
  v111 = sub_21A176C98(&qword_27CD050C0);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v18);
  v20 = &v107 - v19;
  v113 = sub_21A176C98(&qword_27CD050C8);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v21);
  v23 = &v107 - v22;
  v135 = sub_21A176C98(&qword_27CD050D0);
  MEMORY[0x28223BE20](v135, v24);
  v115 = &v107 - v25;
  v118 = sub_21A176C98(&qword_27CD050D8);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v26);
  v116 = &v107 - v27;
  v120 = sub_21A176C98(&qword_27CD050E0);
  MEMORY[0x28223BE20](v120, v28);
  v119 = &v107 - v29;
  v124 = sub_21A176C98(&qword_27CD050E8);
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v30);
  v121 = &v107 - v31;
  v126 = sub_21A176C98(&qword_27CD050F0);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v32);
  v136 = &v107 - v33;
  v128 = sub_21A176C98(&qword_27CD050F8);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v34);
  v125 = &v107 - v35;
  v36 = *v3;
  v37 = v3[2];
  v139 = v3;
  sub_21A2F7344();
  sub_21A2F57C4();
  v38 = sub_21A176C98(&qword_27CD05100);
  (*(*(v38 - 8) + 16))(v17, v137, v38);
  v39 = &v17[*(v14 + 36)];
  v40 = v146;
  v41 = v147;
  *v39 = v145;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  v133 = type metadata accessor for SlidingPaneViewModifier;
  v42 = v13;
  sub_21A2E7FAC(v139, v13, type metadata accessor for SlidingPaneViewModifier);
  v137 = *(v10 + 80);
  v43 = (v137 + 16) & ~v137;
  v44 = swift_allocObject();
  sub_21A2E8014(v13, v44 + v43, type metadata accessor for SlidingPaneViewModifier);
  v45 = sub_21A2E80FC();
  sub_21A2F6CA4();

  sub_21A1427A8(v17, &qword_27CD050B8);
  v107 = v9;
  sub_21A176C98(&qword_27CD05040);
  v46 = v114;
  sub_21A2F7044();
  *&v142 = v14;
  *(&v142 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v111;
  sub_21A2F6BA4();
  sub_21A1427A8(v46, &qword_27CD009C0);
  (*(v110 + 8))(v20, v47);
  *&v142 = *(*(v139 + 5) + 48);
  sub_21A176C98(&qword_27CD04E50);
  sub_21A1772F8(&qword_27CD05118, &qword_27CD04E50);
  v48 = sub_21A2F5534();
  v49 = v42;
  v50 = v42;
  v51 = v133;
  sub_21A2E7FAC(v139, v50, v133);
  v52 = swift_allocObject();
  v134 = type metadata accessor for SlidingPaneViewModifier;
  sub_21A2E8014(v49, v52 + v43, type metadata accessor for SlidingPaneViewModifier);
  v53 = v115;
  (*(v112 + 32))(v115, v23, v113);
  v54 = v135;
  *(v53 + *(v135 + 52)) = v48;
  v55 = (v53 + *(v54 + 56));
  *v55 = sub_21A2E8308;
  v55[1] = v52;
  v56 = v139 + *(v107 + 56);
  v57 = *(v56 + 4);
  v58 = *(v56 + 1);
  v142 = *v56;
  v143 = v58;
  v144 = v57;
  sub_21A176C98(&qword_27CD05120);
  sub_21A2F7024();
  v142 = v140;
  v143 = v141;
  v108 = v49;
  sub_21A2E7FAC(v139, v49, v51);
  v109 = v43;
  v59 = swift_allocObject();
  sub_21A2E8014(v49, v59 + v43, type metadata accessor for SlidingPaneViewModifier);
  type metadata accessor for CGRect(0);
  v61 = v60;
  v62 = sub_21A1772F8(&qword_27CD05128, &qword_27CD050D0);
  v63 = sub_21A2E8B28(&qword_27CD00CC8, type metadata accessor for CGRect);
  v64 = v116;
  v65 = v135;
  sub_21A2F6E74();

  sub_21A1427A8(v53, &qword_27CD050D0);
  v66 = v139[1];
  v67 = v139[3];
  if (v37 >= v66)
  {
    v68 = v36;
  }

  else
  {
    v68 = v37;
  }

  v69 = -(v66 - v68 - v67);
  v70 = swift_allocObject();
  *(v70 + 16) = v36 < v66;
  *(v70 + 24) = sub_21A193264;
  *(v70 + 32) = 0;
  *(v70 + 40) = 0;
  *(v70 + 48) = v67;
  *(v70 + 56) = v69;
  *(v70 + 64) = 0;
  *(v70 + 72) = 0;
  *(v70 + 80) = 1;
  v71 = sub_21A176C98(&qword_27CD02A70);
  *&v142 = v65;
  *(&v142 + 1) = v61;
  *&v143 = v62;
  *(&v143 + 1) = v63;
  v135 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_21A176D98(&qword_27CCFF218);
  v74 = sub_21A2F5C84();
  v75 = sub_21A2E8B28(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  *&v142 = v74;
  *(&v142 + 1) = v75;
  v76 = swift_getOpaqueTypeConformance2();
  *&v142 = v73;
  *(&v142 + 1) = v76;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = v119;
  v79 = v118;
  MEMORY[0x21CED5600](sub_21A2E8B70, v70, v118, v71, OpaqueTypeConformance2, v77);

  (*(v117 + 8))(v64, v79);
  v80 = v120;
  *(v78 + *(v120 + 36)) = 0x4059000000000000;
  sub_21A1AC960(&v142);
  v81 = v108;
  v82 = v133;
  sub_21A2E7FAC(v139, v108, v133);
  v83 = v109;
  v84 = swift_allocObject();
  sub_21A2E8014(v81, v84 + v83, v134);
  v118 = sub_21A176C98(&qword_27CD04E88);
  v85 = sub_21A2E8500();
  v86 = sub_21A2E7208();
  v87 = v121;
  sub_21A2F6E74();

  sub_21A1427A8(&v142, &qword_27CD04E88);
  sub_21A1427A8(v78, &qword_27CD050E0);
  v88 = *(v139 + 8);
  v89 = *(v139 + 72);
  v140 = *(v139 + 3);
  *&v141 = v88;
  BYTE8(v141) = v89;
  sub_21A2E7FAC(v139, v81, v82);
  v90 = swift_allocObject();
  sub_21A2E8014(v81, v90 + v83, v134);
  v91 = sub_21A176C98(&qword_27CD04498);
  *&v142 = v80;
  *(&v142 + 1) = v118;
  *&v143 = v85;
  *(&v143 + 1) = v86;
  v92 = v139;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_21A2E8840(&qword_27CD05138, &qword_27CD04498, &unk_21A315F70, sub_21A2675C4);
  v95 = v124;
  sub_21A2F6E74();

  (*(v122 + 8))(v87, v95);
  if (sub_21A2E5F6C())
  {
    v96 = *(v92 + 136);
    LOBYTE(v142) = *(v92 + 128);
    *(&v142 + 1) = v96;
    sub_21A176C98(&qword_27CD01740);
    sub_21A2F7024();
  }

  v97 = v129;
  v98 = v126;
  v99 = v125;
  *&v142 = v95;
  *(&v142 + 1) = v91;
  *&v143 = v93;
  *(&v143 + 1) = v94;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v136;
  sub_21A2F6B94();
  (*(v123 + 8))(v101, v98);
  sub_21A2F6154();
  sub_21A176C98(&qword_27CD00138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FEED0;
  v103 = sub_21A2F65E4();
  *(inited + 32) = v103;
  v104 = sub_21A2F65C4();
  *(inited + 33) = v104;
  sub_21A2F65D4();
  sub_21A2F65D4();
  if (sub_21A2F65D4() != v103)
  {
    sub_21A2F65D4();
  }

  sub_21A2F65D4();
  if (sub_21A2F65D4() != v104)
  {
    sub_21A2F65D4();
  }

  *&v142 = v98;
  *(&v142 + 1) = v100;
  swift_getOpaqueTypeConformance2();
  v105 = v128;
  sub_21A2F6C04();
  (*(v130 + 8))(v97, v132);
  return (*(v127 + 8))(v99, v105);
}

uint64_t sub_21A2E5A18(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    sub_21A176C98(&qword_27CD01740);
    return sub_21A2F7034();
  }

  return result;
}

uint64_t sub_21A2E5A88()
{
  type metadata accessor for SlidingPaneViewModifier(0);
  sub_21A176C98(&qword_27CD05120);
  return sub_21A2F7034();
}

void sub_21A2E5B00(uint64_t a1, CGFloat *a2, double *a3)
{
  v5 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = a3[2];
  if (v7 < *a3)
  {
    v8 = a3[1];
    if (v7 < v8 && *a3 < v8)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      v13 = a2[3];
      sub_21A176C98(&qword_27CD01740);
      sub_21A2F7024();
      if ((v14 & 1) == 0)
      {
        v15.origin.x = v10;
        v15.origin.y = v11;
        v15.size.width = v12;
        v15.size.height = v13;
        CGRectGetMinY(v15);
        type metadata accessor for SlidingPaneViewModifier(0);
        sub_21A176C98(&qword_27CD05040);
        sub_21A2F7024();
        sub_21A2F59C4();
        sub_21A2F7034();
      }
    }
  }
}

uint64_t sub_21A2E5C60()
{
  sub_21A2F73A4();
  sub_21A2F58E4();
}

uint64_t sub_21A2E5CCC()
{
  v0 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  type metadata accessor for SlidingPaneViewModifier(0);
  sub_21A176C98(&qword_27CD05040);
  sub_21A2F7024();
  sub_21A2F59C4();
  return sub_21A2F7034();
}

uint64_t sub_21A2E5D98(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24) != 255)
  {
    MEMORY[0x28223BE20](result, a2);
    sub_21A2F73A4();
    sub_21A2F58E4();
  }

  return result;
}

uint64_t sub_21A2E5E50()
{
  v0 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_21A2F7434();
  type metadata accessor for SlidingPaneViewModifier(0);
  sub_21A176C98(&qword_27CD05040);
  sub_21A2F7024();
  sub_21A1BEE14();
  sub_21A2F59D4();
  return sub_21A2F7034();
}

BOOL sub_21A2E5F6C()
{
  type metadata accessor for SlidingPaneViewModifier(0);
  sub_21A176C98(&qword_27CD05120);
  sub_21A2F7024();
  if (CGRectGetMinY(v2) > 0.0)
  {
    return 1;
  }

  sub_21A2F7024();
  return CGRectGetMaxY(v2) < *(v0 + 32);
}

uint64_t sub_21A2E6048(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD05090);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v8 - v4;
  *v5 = sub_21A2F6014();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_21A176C98(&qword_27CD05098);
  sub_21A2E4690(a1, &v5[*(v6 + 44)]);
  sub_21A2F6604();
  sub_21A1772F8(&qword_27CD050A0, &qword_27CD05090);
  sub_21A2F6B24();
  return sub_21A1427A8(v5, &qword_27CD05090);
}

void *sub_21A2E6174(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  if (v5 != 0.0 && *a1 != v5)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_21A2E61C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A2F6F14();
  result = sub_21A2F5814();
  v5 = 0.0;
  if (v4 > 0.0)
  {
    v5 = v4;
  }

  *a1 = v2;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_21A2E6210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A2F7344();
  v6 = v5;
  v7 = sub_21A176C98(&qword_27CD05080);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_21A176C98(&qword_27CD05088);
  v9 = (a2 + *(result + 36));
  *v9 = sub_21A2E61C4;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v6;
  return result;
}

uint64_t sub_21A2E62C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a5;
  v8 = sub_21A2F67D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SectionHeaderView();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21A176C98(&qword_27CD05140);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v37 - v20;
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = v38;
  *(v16 + 3) = a4;
  *(v16 + 4) = swift_getKeyPath();
  v16[40] = 0;
  *&v40 = 0x4034000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A90], v8);
  sub_21A1CD5C0();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F56D4();
  *&v40 = 0x402C000000000000;
  sub_21A2F56E4();
  sub_21A2F7354();
  sub_21A2F5C14();
  sub_21A2E8014(v16, v21, type metadata accessor for SectionHeaderView);
  v22 = &v21[*(v18 + 44)];
  v23 = v45;
  *(v22 + 4) = v44;
  *(v22 + 5) = v23;
  *(v22 + 6) = v46;
  v24 = v41;
  *v22 = v40;
  *(v22 + 1) = v24;
  v25 = v43;
  *(v22 + 2) = v42;
  *(v22 + 3) = v25;
  LOBYTE(v8) = sub_21A2F6614();
  sub_21A2F55A4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v39;
  sub_21A149B18(v21, v39, &qword_27CD05140);
  result = sub_21A176C98(&qword_27CD05148);
  v36 = v34 + *(result + 36);
  *v36 = v8;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_21A2E65FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21A1C73DC(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_21A2F8344();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 2);
          if (v14 >= *(v12 - 3))
          {
            break;
          }

          v15 = *(v12 + 5);
          v16 = v12[48];
          v17 = *(v12 + 24);
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 1) = v17;
          *v12 = v15;
          v12[8] = v16;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_21A176C98(&qword_27CD035C0);
      v7 = sub_21A2F7B74();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v21[0] = v7 + 32;
    v21[1] = v6;
    sub_21A2E6774(v21, v22, v23, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21A2E6774(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21A1C7168(v7);
      v7 = result;
    }

    v91 = (v7 + 16);
    v92 = *(v7 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v7 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_21A2E6D54((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6);
      v10 = (*a3 + 40 * v8);
      v12 = *v10;
      v11 = v10 + 5;
      v13 = v12;
      v14 = v8 + 2;
      while (v5 != v14)
      {
        v15 = *v11;
        v16 = v11[5];
        v11 += 5;
        ++v14;
        if (v9 < v13 == v16 >= v15)
        {
          v6 = v14 - 1;
          if (v9 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6 - 16;
        v18 = 40 * v8 + 32;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v29 + v18);
            v22 = *(v29 + v18 - 32);
            v23 = (v29 + v17);
            v24 = *(v21 - 1);
            v25 = *v21;
            v26 = *(v21 - 24);
            v27 = v23[1];
            v28 = *(v23 - 1);
            *(v21 - 2) = *(v23 - 3);
            *(v21 - 1) = v28;
            *v21 = v27;
            *(v23 - 3) = v22;
            *(v23 - 1) = v26;
            *v23 = v24;
            *(v23 + 8) = v25;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21A1B7214(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 16);
    v43 = *(v7 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_21A1B7214((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v45;
    v46 = v7 + 32;
    v47 = (v7 + 32 + 16 * v44);
    *v47 = v8;
    v47[1] = v6;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 32);
          v50 = *(v7 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v7 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v7 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_21A2E6D54((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v7 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v7 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v7 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v98;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 40 * v6 - 40;
  v32 = v8 - v6;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = v34 + 40;
    v36 = *(v34 + 40);
    if (v36 >= *v34)
    {
LABEL_29:
      ++v6;
      v31 += 40;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 64);
    v38 = *(v34 + 72);
    v39 = *(v34 + 48);
    v40 = *(v34 + 16);
    *v35 = *v34;
    *(v34 + 56) = v40;
    v41 = *(v34 + 32);
    *v34 = v36;
    *(v34 + 8) = v39;
    *(v34 + 24) = v37;
    *(v34 + 32) = v38;
    v34 -= 40;
    *(v35 + 32) = v41;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21A2E6D54(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 5 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 5;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 5;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v7[4] = v14[4];
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 5 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 5;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 5, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27 * 8);
  }

  return 1;
}

unint64_t sub_21A2E6FAC()
{
  result = qword_27CD04ED0;
  if (!qword_27CD04ED0)
  {
    sub_21A176D98(&qword_27CD04EA8);
    sub_21A2E7064();
    sub_21A1772F8(&qword_27CD04EE0, &qword_27CD04EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04ED0);
  }

  return result;
}

unint64_t sub_21A2E7064()
{
  result = qword_27CD04ED8;
  if (!qword_27CD04ED8)
  {
    sub_21A176D98(&qword_27CD04EC8);
    sub_21A176D98(&qword_27CD04EA0);
    type metadata accessor for CGRect(255);
    sub_21A1772F8(&qword_27CD04EC0, &qword_27CD04EA0);
    sub_21A2E8B28(&qword_27CD00CC8, type metadata accessor for CGRect);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04ED8);
  }

  return result;
}

unint64_t sub_21A2E7208()
{
  result = qword_27CD04EF0;
  if (!qword_27CD04EF0)
  {
    sub_21A176D98(&qword_27CD04E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04EF0);
  }

  return result;
}

uint64_t sub_21A2E72BC()
{
  v1 = *(type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  return sub_21A2E3B60((v0 + v2), v4, v5, v6);
}

uint64_t sub_21A2E738C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_21A2E7414()
{
  result = qword_27CD04F40;
  if (!qword_27CD04F40)
  {
    sub_21A176D98(&qword_27CD04F38);
    sub_21A2E74CC();
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04F40);
  }

  return result;
}

unint64_t sub_21A2E74CC()
{
  result = qword_27CD04F48;
  if (!qword_27CD04F48)
  {
    sub_21A176D98(&qword_27CD04F50);
    sub_21A1772F8(&qword_27CD04F58, &qword_27CD04F60);
    sub_21A1772F8(&qword_27CD04F68, &qword_27CD04F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04F48);
  }

  return result;
}

unint64_t sub_21A2E75B8()
{
  result = qword_27CD04FC0;
  if (!qword_27CD04FC0)
  {
    sub_21A176D98(&qword_27CD04FB8);
    sub_21A2E7670();
    sub_21A1772F8(&qword_27CD04FE0, &qword_27CD04FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04FC0);
  }

  return result;
}

unint64_t sub_21A2E7670()
{
  result = qword_27CD04FC8;
  if (!qword_27CD04FC8)
  {
    sub_21A176D98(&qword_27CD04FD0);
    sub_21A2E8B28(&qword_27CD00D20, type metadata accessor for IngredientsView);
    sub_21A2E772C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04FC8);
  }

  return result;
}

unint64_t sub_21A2E772C()
{
  result = qword_27CD04FD8;
  if (!qword_27CD04FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04FD8);
  }

  return result;
}

unint64_t sub_21A2E77A8()
{
  result = qword_27CD04FF8;
  if (!qword_27CD04FF8)
  {
    sub_21A176D98(&qword_27CD04FF0);
    sub_21A2E7860();
    sub_21A1772F8(&qword_27CD04FE0, &qword_27CD04FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04FF8);
  }

  return result;
}

unint64_t sub_21A2E7860()
{
  result = qword_27CD05000;
  if (!qword_27CD05000)
  {
    sub_21A176D98(&qword_27CD05008);
    sub_21A176D98(&qword_27CD05010);
    sub_21A1772F8(&qword_27CD05018, &qword_27CD05010);
    swift_getOpaqueTypeConformance2();
    sub_21A2E772C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05000);
  }

  return result;
}

uint64_t sub_21A2E79B8(uint64_t (*a1)(uint64_t, __n128), double a2)
{
  v4 = *(type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6.n128_f64[0] = a2;

  return a1(v5, v6);
}

void sub_21A2E7A64()
{
  type metadata accessor for FrameState();
  if (v0 <= 0x3F)
  {
    sub_21A2E7C38(319, &qword_27CD05058, &type metadata for RecipeScrollPosition, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21A2E4554(319, &qword_27CD04E80, &qword_27CD04E88, &unk_21A315F78, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21A2E7C38(319, &qword_27CD016D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21A2E7C88(319, &qword_27CD05060, MEMORY[0x277CDF8A8], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21A2E7C88(319, &qword_27CD05068, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
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

void sub_21A2E7C38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21A2E7C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21A2E7D1C()
{
  result = qword_27CD05070;
  if (!qword_27CD05070)
  {
    sub_21A176D98(&qword_27CD04F00);
    sub_21A2E7DD4();
    sub_21A1772F8(&qword_27CCFF7B0, &qword_27CCFF7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05070);
  }

  return result;
}

unint64_t sub_21A2E7DD4()
{
  result = qword_27CD05078;
  if (!qword_27CD05078)
  {
    sub_21A176D98(&qword_27CD04EF8);
    sub_21A176D98(&qword_27CD04EB0);
    sub_21A176D98(&qword_27CD04E88);
    sub_21A176D98(&qword_27CD04EA8);
    sub_21A176D98(&qword_27CD00380);
    sub_21A2E6FAC();
    sub_21A2E8840(&qword_27CD00378, &qword_27CD00380, &unk_21A2FF810, sub_21A17A0F8);
    swift_getOpaqueTypeConformance2();
    sub_21A2E7208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05078);
  }

  return result;
}

uint64_t sub_21A2E7FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2E8014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2E807C(uint64_t a1, char a2)
{
  type metadata accessor for SlidingPaneViewModifier(0);

  return sub_21A2E5A18(a1, a2);
}

unint64_t sub_21A2E80FC()
{
  result = qword_27CD05108;
  if (!qword_27CD05108)
  {
    sub_21A176D98(&qword_27CD050B8);
    sub_21A1772F8(&qword_27CD05110, &qword_27CD05100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05108);
  }

  return result;
}

uint64_t sub_21A2E81B4()
{
  v1 = type metadata accessor for SlidingPaneViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 120))
  {
    if (*(v2 + 104))
    {
      sub_21A142808(v2 + 80);
    }
  }

  else
  {
  }

  v3 = v2 + *(v1 + 52);
  v4 = sub_21A2F59E4();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_21A176C98(&qword_27CD05040);

  return swift_deallocObject();
}

uint64_t sub_21A2E8308()
{
  type metadata accessor for SlidingPaneViewModifier(0);

  return sub_21A2E5A88();
}

uint64_t sub_21A2E83A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_21A2E8468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

unint64_t sub_21A2E8500()
{
  result = qword_27CD05130;
  if (!qword_27CD05130)
  {
    sub_21A176D98(&qword_27CD050E0);
    sub_21A176D98(&qword_27CD050D8);
    sub_21A176D98(&qword_27CD02A70);
    sub_21A176D98(&qword_27CD050D0);
    type metadata accessor for CGRect(255);
    sub_21A1772F8(&qword_27CD05128, &qword_27CD050D0);
    sub_21A2E8B28(&qword_27CD00CC8, type metadata accessor for CGRect);
    swift_getOpaqueTypeConformance2();
    sub_21A176D98(&qword_27CCFF218);
    sub_21A2F5C84();
    sub_21A2E8B28(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD02A80, &qword_27CD02A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05130);
  }

  return result;
}

uint64_t sub_21A2E87A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_21A2E8840(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A2E88FC()
{
  result = qword_27CD05150;
  if (!qword_27CD05150)
  {
    sub_21A176D98(&qword_27CD05088);
    sub_21A1772F8(&qword_27CD05158, &qword_27CD05080);
    sub_21A1772F8(&qword_27CD05160, &qword_27CD05168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05150);
  }

  return result;
}

unint64_t sub_21A2E89E0()
{
  result = qword_27CD05170;
  if (!qword_27CD05170)
  {
    sub_21A176D98(&qword_27CD05148);
    sub_21A2E8A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05170);
  }

  return result;
}

unint64_t sub_21A2E8A6C()
{
  result = qword_27CD05178;
  if (!qword_27CD05178)
  {
    sub_21A176D98(&qword_27CD05140);
    sub_21A2E8B28(qword_27CD05180, type metadata accessor for SectionHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05178);
  }

  return result;
}

uint64_t sub_21A2E8B28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21A2E8B90()
{
  sub_21A2F71C4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21A19370C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A2E8C34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v40 = *(a3 + 16);
  v6 = *(v40 - 8);
  v7 = *(v6 + 84);
  v8 = *(v5 - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v8 + 84);
  v11 = *(sub_21A2F4794() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | 7;
  v14 = *(v11 + 64);
  v15 = ((((((((((v14 + ((v12 + 16) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v16 = ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 > v15)
  {
    v15 = v16;
  }

  v17 = v15 + 1;
  v18 = v15 + 1 + ((v12 + 16) & ~(v12 | 7));
  v19 = (v12 + 8) & ~v13;
  if (v10 <= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = v10;
  }

  v21 = *(v6 + 80);
  v22 = *(v8 + 80);
  v23 = v17 + v19;
  if (v23 <= v18)
  {
    v23 = v18;
  }

  v24 = 7;
  if (v23 > 7)
  {
    v24 = v23;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = ((v21 + 16) & ~v21) + *(v6 + 64) + v22;
  if (a2 <= v20)
  {
    goto LABEL_37;
  }

  v26 = v24 + ((*(v8 + 64) + v13 + (v25 & ~v22)) & ~v13) + 2;
  v27 = 8 * v26;
  if (v26 > 3)
  {
    goto LABEL_16;
  }

  v30 = ((a2 - v20 + ~(-1 << v27)) >> v27) + 1;
  if (HIWORD(v30))
  {
    v28 = *(a1 + v26);
    if (v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v30 <= 0xFF)
    {
      if (v30 < 2)
      {
        goto LABEL_37;
      }

LABEL_16:
      v28 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_37;
      }

LABEL_24:
      v31 = (v28 - 1) << v27;
      if (v26 > 3)
      {
        v31 = 0;
      }

      if (v26)
      {
        if (v26 <= 3)
        {
          v32 = v26;
        }

        else
        {
          v32 = 4;
        }

        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v33 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v33 = *a1;
          }
        }

        else if (v32 == 1)
        {
          v33 = *a1;
        }

        else
        {
          v33 = *a1;
        }
      }

      else
      {
        v33 = 0;
      }

      return v20 + (v33 | v31) + 1;
    }

    v28 = *(a1 + v26);
    if (*(a1 + v26))
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  if (v9 < v10)
  {
    v34 = *(v8 + 48);
    v35 = (a1 + v25) & ~v22;
    v36 = v10;
    v37 = v5;

    return v34(v35, v36, v37);
  }

  v38 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v34 = *(v6 + 48);
    v35 = (v38 + v21 + 8) & ~v21;
    v36 = v7;
    v37 = v40;

    return v34(v35, v36, v37);
  }

  v39 = *v38;
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  return (v39 + 1);
}

void sub_21A2E8FDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v45 = *(a4 + 16);
  v46 = *(a4 + 24);
  v7 = *(v45 - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  v9 = *(v46 - 8);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v9 + 84);
  v12 = *(sub_21A2F4794() - 8);
  v13 = *(v12 + 80);
  v14 = v13 | 7;
  v15 = *(v12 + 64);
  v16 = ((((((((((v15 + ((v13 + 16) & ~v13) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  v17 = ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 > v16)
  {
    v16 = v17;
  }

  v18 = v16 + 1;
  v19 = v16 + 1 + ((v13 + 16) & ~(v13 | 7));
  v20 = (v13 + 8) & ~v14;
  if (v11 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v11;
  }

  v22 = *(v7 + 80);
  v23 = ((v22 + 16) & ~v22) + *(v7 + 64);
  v24 = *(v9 + 80);
  v25 = (*(v9 + 64) + v14 + ((v23 + v24) & ~v24)) & ~v14;
  v26 = v18 + v20;
  if (v26 <= v19)
  {
    v26 = v19;
  }

  if (v26 <= 7)
  {
    v26 = 7;
  }

  v27 = v26 + v25 + 2;
  if (a3 <= v21)
  {
    v29 = 0;
    v28 = a1;
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v32 = ((a3 - v21 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v21 < a2)
  {
    v30 = ~v21 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v30 & ~(-1 << (8 * v27));
        bzero(v28, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v28 = v34;
            if (v29 > 1)
            {
LABEL_67:
              if (v29 == 2)
              {
                *&v28[v27] = v31;
              }

              else
              {
                *&v28[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *v28 = v30;
            if (v29 > 1)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_64;
        }

        *v28 = v34;
        v28[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      bzero(v28, v27);
      *v28 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_67;
      }
    }

LABEL_64:
    if (v29)
    {
      v28[v27] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&v28[v27] = 0;
  }

  else if (v29)
  {
    v28[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v10 < v11)
  {
    v35 = *(v9 + 56);
    v36 = &v28[v23 + v24] & ~v24;
    v37 = a2;
    v38 = v11;
    v39 = v46;

LABEL_43:
    v35(v36, v37, v38, v39);
    return;
  }

  if (v10 >= a2)
  {
    v43 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v35 = *(v47 + 56);
      v36 = (v43 + v22 + 8) & ~v22;
      v37 = a2;
      v38 = v8;
      v39 = v45;

      goto LABEL_43;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v44 = (a2 - 1);
    }

    *v43 = v44;
  }

  else
  {
    if (v23 <= 3)
    {
      v40 = ~(-1 << (8 * v23));
    }

    else
    {
      v40 = -1;
    }

    if (v23)
    {
      v41 = v40 & (~v10 + a2);
      if (v23 <= 3)
      {
        v42 = v23;
      }

      else
      {
        v42 = 4;
      }

      bzero(v28, v23);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          *v28 = v41;
          v28[2] = BYTE2(v41);
        }

        else
        {
          *v28 = v41;
        }
      }

      else if (v42 == 1)
      {
        *v28 = v41;
      }

      else
      {
        *v28 = v41;
      }
    }
  }
}

uint64_t sub_21A2E94E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a3;
  *&v119 = a1 + 24;
  *&v118 = a1 + 40;
  v116 = *(*(a1 + 16) - 8);
  MEMORY[0x28223BE20](a1, a2);
  v115 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v4;
  v111 = v4;
  v113 = *(v4 - 8);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v112 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176D98(&qword_27CD05208);
  type metadata accessor for CGRect(255);
  v109 = *(v5 + 32);
  v8 = type metadata accessor for SegmentPreferenceKey();
  WitnessTable = swift_getWitnessTable();
  v89 = WitnessTable;
  v90 = v8;
  sub_21A2F63F4();
  v10 = sub_21A2F5AF4();
  v11 = sub_21A1772F8(&qword_27CD05210, &qword_27CD05208);
  v12 = swift_getWitnessTable();
  v146 = v11;
  v147 = v12;
  v110 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v14 = sub_21A2ECB84();
  v139 = v10;
  v140 = &type metadata for SegmentButtonStyle;
  v141 = v13;
  v142 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_21A2F6574();
  v15 = sub_21A2F5AF4();
  v139 = v10;
  v140 = &type metadata for SegmentButtonStyle;
  v141 = v13;
  v142 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_21A2EDE04(&qword_27CCFF558, MEMORY[0x277CDE470]);
  v144 = OpaqueTypeConformance2;
  v145 = v17;
  v18 = swift_getWitnessTable();
  v139 = v15;
  v140 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_21A176D98(&qword_27CCFEF60);
  v139 = v15;
  v140 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
  v139 = OpaqueTypeMetadata2;
  v140 = v20;
  v141 = v21;
  v142 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v139 = OpaqueTypeMetadata2;
  v140 = v20;
  v141 = v21;
  v142 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_21A2F63D4();
  v26 = sub_21A2F7254();
  v27 = swift_getWitnessTable();
  v28 = sub_21A2EDE04(&qword_27CD05220, MEMORY[0x277CE12A8]);
  v139 = v25;
  v140 = v26;
  v141 = v23;
  v142 = v27;
  v143 = v28;
  sub_21A2F7224();
  v138 = v24;
  v86 = swift_getWitnessTable();
  v83 = sub_21A2F70F4();
  v97 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v29);
  v84 = &v82 - v30;
  v31 = sub_21A176D98(&qword_27CD05228);
  v91 = v31;
  v88 = sub_21A2ECBD8();
  v139 = v8;
  v140 = v31;
  v141 = WitnessTable;
  v142 = v88;
  v94 = sub_21A2F6564();
  v32 = sub_21A2F5AF4();
  v95 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v33);
  v85 = &v82 - v34;
  v93 = sub_21A2F5AF4();
  v100 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v35);
  v87 = &v82 - v36;
  sub_21A176D98(&qword_27CD05248);
  v98 = sub_21A2F5AF4();
  v106 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v37);
  v92 = &v82 - v38;
  v39 = v109;
  v101 = *(v109 + 8);
  v40 = v120;
  v105 = sub_21A2F5F84();
  v103 = sub_21A2F5AF4();
  v107 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v103);
  v96 = &v82 - v41;
  v102 = sub_21A2F5AF4();
  v108 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v42);
  v99 = &v82 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v104 = &v82 - v46;
  *&v47 = v40;
  *(&v47 + 1) = *v119;
  *&v48 = v39;
  *(&v48 + 1) = *v118;
  v118 = v48;
  v119 = v47;
  v125 = v47;
  v126 = v48;
  v49 = v121;
  v127 = v121;
  sub_21A2F5F34();
  v50 = v84;
  sub_21A2F70E4();
  v52 = v112;
  v51 = v113;
  v53 = v111;
  (*(v113 + 16))(v112, v49, v111);
  v54 = (*(v51 + 80) + 48) & ~*(v51 + 80);
  v55 = swift_allocObject();
  v56 = v118;
  *(v55 + 16) = v119;
  *(v55 + 32) = v56;
  (*(v51 + 32))(v55 + v54, v52, v53);
  sub_21A2F7344();
  v57 = v83;
  v58 = swift_getWitnessTable();
  v59 = v85;
  sub_21A2F6D74();

  (*(v97 + 8))(v50, v57);
  v60 = swift_getWitnessTable();
  v136 = v58;
  v137 = v60;
  v61 = swift_getWitnessTable();
  v62 = v87;
  sub_21A2F6E24();
  (*(v95 + 8))(v59, v32);
  v122 = v119;
  v123 = v118;
  v124 = v49;
  sub_21A2F7344();
  sub_21A176C98(&qword_27CD05250);
  v134 = v61;
  v135 = MEMORY[0x277CDF918];
  v63 = v93;
  v64 = swift_getWitnessTable();
  sub_21A2ECD8C();
  v65 = v92;
  sub_21A2F6A64();
  (*(v100 + 8))(v62, v63);
  sub_21A2F73A4();
  v66 = v120;
  v67 = sub_21A2F71C4();
  v68 = v115;
  MEMORY[0x21CED5C20](v67);
  v69 = sub_21A1772F8(&qword_27CD05280, &qword_27CD05248);
  v132 = v64;
  v133 = v69;
  v70 = v98;
  v71 = swift_getWitnessTable();
  v72 = v96;
  sub_21A2F6EA4();

  (*(v116 + 8))(v68, v66);
  (*(v106 + 8))(v65, v70);
  sub_21A2F6664();
  v73 = swift_getWitnessTable();
  v130 = v71;
  v131 = v73;
  v74 = v103;
  v75 = swift_getWitnessTable();
  v76 = v99;
  sub_21A2F6E34();
  (*(v107 + 8))(v72, v74);
  v128 = v75;
  v129 = MEMORY[0x277CDF918];
  v77 = v102;
  v78 = swift_getWitnessTable();
  v79 = v104;
  sub_21A1BE5BC(v76, v77, v78);
  v80 = *(v108 + 8);
  v80(v76, v77);
  sub_21A1BE5BC(v79, v77, v78);
  return (v80)(v79, v77);
}

uint64_t sub_21A2EA1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a1;
  v70 = a5;
  v71 = a6;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  v76 = a5;
  v63 = a4;
  v8 = type metadata accessor for RoundSegmentedPickerView();
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  v68 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v65 = &v57 - v11;
  Description = a3[-1].Description;
  MEMORY[0x28223BE20](v12, v13);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176D98(&qword_27CD05208);
  type metadata accessor for CGRect(255);
  type metadata accessor for SegmentPreferenceKey();
  swift_getWitnessTable();
  sub_21A2F63F4();
  v15 = sub_21A2F5AF4();
  v16 = sub_21A1772F8(&qword_27CD05210, &qword_27CD05208);
  WitnessTable = swift_getWitnessTable();
  v80 = v16;
  v81 = WitnessTable;
  v18 = swift_getWitnessTable();
  v19 = sub_21A2ECB84();
  v73 = v15;
  v74 = &type metadata for SegmentButtonStyle;
  v75 = v18;
  v76 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_21A2F6574();
  v20 = sub_21A2F5AF4();
  v73 = v15;
  v74 = &type metadata for SegmentButtonStyle;
  v75 = v18;
  v76 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_21A2EDE04(&qword_27CCFF558, MEMORY[0x277CDE470]);
  v78 = OpaqueTypeConformance2;
  v79 = v22;
  v23 = swift_getWitnessTable();
  v73 = v20;
  v74 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = sub_21A176D98(&qword_27CCFEF60);
  v73 = v20;
  v74 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
  v73 = OpaqueTypeMetadata2;
  v74 = v25;
  v75 = v26;
  v76 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v73 = OpaqueTypeMetadata2;
  v74 = v25;
  v75 = v26;
  v76 = v27;
  v61 = swift_getOpaqueTypeConformance2();
  v59 = v28;
  v29 = sub_21A2F63D4();
  v30 = sub_21A2F7254();
  v31 = swift_getWitnessTable();
  v32 = sub_21A2EDE04(&qword_27CD05220, MEMORY[0x277CE12A8]);
  v73 = v29;
  v74 = v30;
  v75 = v28;
  v76 = v31;
  v77 = v32;
  v33 = sub_21A2F7224();
  v60 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37, v38);
  v58 = &v57 - v40;
  v41 = v66;
  v42 = v69;
  v43 = v62;
  Description[2](v62, v69 + *(v66 + 52), a3, v39);
  v44 = v67;
  v45 = v65;
  v46 = v42;
  v47 = v41;
  (*(v67 + 16))(v65, v46, v41);
  v48 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = a2;
  *(v49 + 3) = a3;
  v50 = a3;
  v51 = v70;
  *(v49 + 4) = v63;
  *(v49 + 5) = v51;
  (*(v44 + 32))(&v49[v48], v45, v47);
  v52 = v61;
  MEMORY[0x21CED5C90](v43, sub_21A2ED664, v49, v59, v50, v61, v51);
  v72 = v52;
  v53 = swift_getWitnessTable();
  v54 = v58;
  sub_21A1BE5BC(v36, v33, v53);
  v55 = *(v60 + 8);
  v55(v36, v33);
  sub_21A1BE5BC(v54, v33, v53);
  return (v55)(v54, v33);
}

uint64_t sub_21A2EA87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v200 = a2;
  v163 = a7;
  v12 = sub_21A176C98(&qword_27CCFEF60);
  MEMORY[0x28223BE20](v12, v13);
  v198 = &v149 - v14;
  v15 = sub_21A2F5FD4();
  v196 = *(v15 - 8);
  v197 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v195 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = a3;
  v213 = a4;
  v202 = a4;
  v203 = a6;
  v214 = a5;
  v215 = a6;
  v206 = a5;
  v201 = type metadata accessor for RoundSegmentedPickerView();
  v176 = *(v201 - 8);
  v173 = *(v176 + 64);
  MEMORY[0x28223BE20](v201, v18);
  v174 = &v149 - v19;
  v20 = sub_21A176C98(&qword_27CD05208);
  v186 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v184 = &v149 - v22;
  type metadata accessor for CGRect(255);
  v24 = v23;
  v25 = type metadata accessor for SegmentPreferenceKey();
  WitnessTable = swift_getWitnessTable();
  v182 = v24;
  v179 = v25;
  v175 = WitnessTable;
  sub_21A2F63F4();
  v188 = v20;
  v27 = sub_21A2F5AF4();
  v181 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v177 = &v149 - v29;
  v30 = sub_21A1772F8(&qword_27CD05210, &qword_27CD05208);
  v31 = swift_getWitnessTable();
  v171 = v30;
  v210 = v30;
  v211 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_21A2ECB84();
  v212 = v27;
  v213 = &type metadata for SegmentButtonStyle;
  v214 = v32;
  v215 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v193 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v35);
  v192 = &v149 - v36;
  sub_21A2F6574();
  v194 = OpaqueTypeMetadata2;
  v37 = sub_21A2F5AF4();
  v189 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v38);
  v185 = &v149 - v39;
  v183 = v27;
  v212 = v27;
  v213 = &type metadata for SegmentButtonStyle;
  v172 = v32;
  v214 = v32;
  v215 = v33;
  v170 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_21A2EDE04(&qword_27CCFF558, MEMORY[0x277CDE470]);
  v180 = OpaqueTypeConformance2;
  v208 = OpaqueTypeConformance2;
  v209 = v41;
  v42 = swift_getWitnessTable();
  v212 = v37;
  v213 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v160 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v44);
  v187 = &v149 - v45;
  v191 = v37;
  v212 = v37;
  v213 = v42;
  v178 = v42;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
  v161 = v43;
  v212 = v43;
  v213 = v12;
  v162 = v12;
  v157 = v46;
  v214 = v46;
  v215 = v47;
  v156 = v47;
  v159 = swift_getOpaqueTypeMetadata2();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v48);
  v154 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v155 = &v149 - v52;
  v166 = *(a3 - 8);
  MEMORY[0x28223BE20](v53, v54);
  v150 = &v149 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v57 = sub_21A2F7EA4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v152 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v59);
  v165 = &v149 - v60;
  v61 = sub_21A2F5A34();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v149 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v57 - 8);
  MEMORY[0x28223BE20](v67, v68);
  v169 = &v149 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v71);
  v151 = &v149 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v149 - v75;
  v168 = v77;
  MEMORY[0x28223BE20](v78, v79);
  v81 = &v149 - v80;
  v190 = a1;
  sub_21A2F7244();
  sub_21A2F5A24();
  (*(v62 + 8))(v65, v61);
  v82 = v166;
  v83 = sub_21A2F71C4();
  MEMORY[0x21CED5C20](v83);
  v82[7](v76, 0, 1, v56);
  v153 = TupleTypeMetadata2;
  v84 = *(TupleTypeMetadata2 + 48);
  v85 = *(v66 + 16);
  v86 = v165;
  v205 = v81;
  v85(v165, v81, v57);
  v167 = v84;
  v87 = &v86[v84];
  v88 = v86;
  v89 = v57;
  v85(v87, v76, v57);
  v90 = v82;
  v91 = v82;
  v92 = v88;
  v93 = v91[6];
  v207 = v56;
  v94 = v93(v92, 1, v56);
  v204 = v66;
  v199 = v66 + 16;
  if (v94 == 1)
  {
    v95 = *(v66 + 8);
    v95(v76, v89);
    v96 = v89;
    v97 = v92;
    if (v93(&v92[v167], 1, v207) == 1)
    {
      v166 = v95;
      v95(v92, v89);
      LODWORD(v167) = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v149 = v76;
  v98 = v151;
  v85(v151, v92, v89);
  v99 = v167;
  v97 = v92;
  if (v93(&v92[v167], 1, v207) == 1)
  {
    v95 = *(v204 + 8);
    v95(v149, v89);
    v90[1](v98, v207);
    v96 = v89;
LABEL_6:
    v166 = v95;
    (*(v152 + 8))(v97, v153);
    LODWORD(v167) = 0;
    goto LABEL_8;
  }

  v100 = &v92[v99];
  v101 = v150;
  v102 = v85;
  v103 = v207;
  (v90[4])(v150, v100, v207);
  LODWORD(v167) = sub_21A2F7874();
  v104 = v90[1];
  v104(v101, v103);
  v105 = *(v204 + 8);
  v105(v149, v89);
  v106 = v103;
  v85 = v102;
  v104(v98, v106);
  v166 = v105;
  v105(v92, v89);
  v96 = v89;
LABEL_8:
  v164 = v85;
  v107 = v169;
  v85(v169, v205, v96);
  v108 = v176;
  v109 = v174;
  v110 = v201;
  (*(v176 + 16))(v174, v200, v201);
  v111 = v204;
  v112 = *(v204 + 80);
  v113 = (v112 + 48) & ~v112;
  v200 = v113 + v168;
  v168 = v112 | 7;
  v114 = (v200 + *(v108 + 80)) & ~*(v108 + 80);
  v115 = swift_allocObject();
  v116 = v202;
  *(v115 + 2) = v207;
  *(v115 + 3) = v116;
  v117 = v203;
  *(v115 + 4) = v206;
  *(v115 + 5) = v117;
  v173 = *(v111 + 32);
  v173(&v115[v113], v107, v96);
  v118 = (*(v108 + 32))(&v115[v114], v109, v110);
  MEMORY[0x28223BE20](v118, v119);
  sub_21A2F7264();
  v120 = v184;
  sub_21A2F7094();
  sub_21A2F7074();
  v164(v107, v205, v96);
  v121 = swift_allocObject();
  v122 = v202;
  *(v121 + 2) = v207;
  *(v121 + 3) = v122;
  v123 = v203;
  *(v121 + 4) = v206;
  *(v121 + 5) = v123;
  v173(&v121[v113], v107, v96);
  v124 = v177;
  v125 = v188;
  sub_21A2F6D84();

  (*(v186 + 8))(v120, v125);
  LOBYTE(v125) = v167;
  LOBYTE(v212) = v167 & 1;
  v126 = v192;
  v127 = v183;
  sub_21A2F6AD4();
  (*(v181 + 8))(v124, v127);
  if (v125)
  {
    sub_21A176C98(&qword_27CD02718);
    v128 = v196;
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_21A2FC020;
    sub_21A2F5F94();
    v212 = v129;
    sub_21A2EDE04(&qword_27CD02720, MEMORY[0x277CE01F0]);
    sub_21A176C98(&qword_27CD02728);
    sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
    v130 = v195;
    v131 = v197;
    sub_21A2F7F34();
  }

  else
  {
    v212 = MEMORY[0x277D84F90];
    sub_21A2EDE04(&qword_27CD02720, MEMORY[0x277CE01F0]);
    sub_21A176C98(&qword_27CD02728);
    sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
    v130 = v195;
    v131 = v197;
    sub_21A2F7F34();
    v128 = v196;
  }

  v132 = v185;
  v133 = v194;
  sub_21A2F6D14();
  (*(v128 + 8))(v130, v131);
  (*(v193 + 8))(v126, v133);
  v134 = v187;
  v135 = v191;
  sub_21A2F6DD4();
  (*(v189 + 8))(v132, v135);
  v136 = *MEMORY[0x277CDFA10];
  v137 = sub_21A2F5A64();
  v138 = v198;
  (*(*(v137 - 8) + 104))(v198, v136, v137);
  sub_21A2EDE04(&qword_27CCFEFA0, MEMORY[0x277CDFA28]);
  result = sub_21A2F7874();
  if (result)
  {
    v140 = v154;
    v141 = v161;
    v142 = v162;
    v143 = v157;
    v144 = v156;
    sub_21A2F6BC4();
    sub_21A1427A8(v138, &qword_27CCFEF60);
    (*(v160 + 8))(v134, v141);
    v166(v205, v96);
    v212 = v141;
    v213 = v142;
    v214 = v143;
    v215 = v144;
    v145 = swift_getOpaqueTypeConformance2();
    v146 = v155;
    v147 = v159;
    sub_21A1BE5BC(v140, v159, v145);
    v148 = *(v158 + 8);
    v148(v140, v147);
    sub_21A1BE5BC(v146, v147, v145);
    return (v148)(v146, v147);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A2EBD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a2;
  v11 = sub_21A2F7EA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v24 - v14;
  v16 = *(a3 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v19);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v21, v15, a3);
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v23 = type metadata accessor for RoundSegmentedPickerView();
  sub_21A2ED944(v21, v23);
  return (*(v16 + 8))(v21, a3);
}

uint64_t sub_21A2EBF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v7 = sub_21A2F7EA4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = v23 - v20;
  (*(v8 + 16))(v11, a3, v7, v19);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v21, v11, a4);
  (*(v12 + 16))(v16, v21, a4);
  v23[1] = a2;

  sub_21A176D98(&qword_27CD05288);
  sub_21A2F77A4();
  sub_21A2F77E4();
  return (*(v12 + 8))(v21, a4);
}

uint64_t sub_21A2EC190@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (**a6)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v31 = a6;
  v32 = a2;
  v29 = a3;
  v30 = a5;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v9 = type metadata accessor for RoundSegmentedPickerView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21A2F71C4();
  MEMORY[0x21CED5C20](v19);
  sub_21A176C98(&qword_27CD05288);
  sub_21A2F77D4();
  result = (*(v14 + 8))(v18, a2);
  v21 = v32;
  if (v32)
  {
    (*(v10 + 16))(v13, a1, v9);
    v22 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v23 = swift_allocObject();
    v25 = v29;
    v24 = v30;
    *(v23 + 2) = a2;
    *(v23 + 3) = v25;
    *(v23 + 4) = a4;
    *(v23 + 5) = v24;
    *(v23 + 6) = v21;
    result = (*(v10 + 32))(&v23[v22], v13, v9);
    v26 = sub_21A2ED5A4;
  }

  else
  {
    v26 = 0;
    v23 = 0;
  }

  v27 = v31;
  *v31 = v26;
  v27[1] = v23;
  return result;
}

uint64_t sub_21A2EC3D8@<X0>(uint64_t a1@<X2>, CGFloat a2@<X3>, CGFloat a3@<X4>, CGFloat a4@<X5>, CGFloat a5@<X6>, uint64_t a6@<X8>)
{
  v48.width = a4;
  v48.height = a5;
  v47.x = a2;
  v47.y = a3;
  v49 = a1;
  v51 = a6;
  v6 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - v12;
  v14 = sub_21A176C98(&qword_27CD05268);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_21A176C98(&qword_27CD05250);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v47 - v20;
  v50 = sub_21A176C98(&qword_27CD05290);
  MEMORY[0x28223BE20](v50, v22);
  v24 = &v47 - v23;
  type metadata accessor for CGRect(0);
  sub_21A2F5834();
  v25 = v52;
  v26 = v53;
  v27 = [objc_opt_self() secondarySystemFillColor];
  v28 = sub_21A2F6EF4();
  v52 = v47;
  v53 = v48;
  type metadata accessor for RoundSegmentedPickerView();
  sub_21A1AC424(v13);
  sub_21A19422C(v13, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v31 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v9 + *(v31 + 48), &qword_27CCFEDC0);
  }

  else
  {

    v30 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v9 + *(v30 + 64));
  }

  v32 = EnumCaseMultiPayload != 1;
  v33 = &v17[*(v14 + 36)];
  *v33 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v33 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = v32;
  *v17 = v28;
  *(v17 + 4) = 256;
  v34 = &v21[*(v18 + 36)];
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_21A2F5F64();
  (*(*(v36 - 8) + 104))(v34, v35, v36);
  *&v34[*(sub_21A176C98(&qword_27CD05278) + 36)] = 256;
  sub_21A149B18(v17, v21, &qword_27CD05268);
  sub_21A2F7344();
  sub_21A2F57C4();
  sub_21A149B18(v21, v24, &qword_27CD05250);
  v37 = &v24[*(v50 + 36)];
  v38 = v53;
  *v37 = v52;
  *(v37 + 1) = v38;
  *(v37 + 2) = v54;
  v38.width = v25.y;
  v39 = *&v25;
  height = v26.height;
  v40 = *&v26;
  MinX = CGRectGetMinX(*(&v38 - 8));
  v55.origin = v25;
  v55.size = v26;
  MinY = CGRectGetMinY(v55);
  v44 = v51;
  sub_21A149B18(v24, v51, &qword_27CD05290);
  result = sub_21A176C98(qword_27CD05298);
  v46 = (v44 + *(result + 36));
  *v46 = MinX;
  v46[1] = MinY;
  return result;
}

uint64_t sub_21A2EC874@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v33 - v15;
  v17 = sub_21A176C98(&qword_27CD05268);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - v19;
  v21 = [objc_opt_self() quaternarySystemFillColor];
  v33 = sub_21A2F6EF4();
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  type metadata accessor for RoundSegmentedPickerView();
  sub_21A1AC424(v16);
  sub_21A19422C(v16, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v24 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v12 + *(v24 + 48), &qword_27CCFEDC0);
  }

  else
  {

    v23 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v12 + *(v23 + 64));
  }

  v25 = EnumCaseMultiPayload != 1;
  v26 = &v20[*(v17 + 36)];
  *v26 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v26 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = v25;
  *v20 = v33;
  *(v20 + 4) = 256;
  v27 = sub_21A176C98(&qword_27CD05250);
  v28 = v34;
  v29 = v34 + *(v27 + 36);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_21A2F5F64();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  *(v29 + *(sub_21A176C98(&qword_27CD05278) + 36)) = 256;
  return sub_21A149B18(v20, v28, &qword_27CD05268);
}

unint64_t sub_21A2ECB84()
{
  result = qword_27CD05218;
  if (!qword_27CD05218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05218);
  }

  return result;
}

unint64_t sub_21A2ECBD8()
{
  result = qword_27CD05230;
  if (!qword_27CD05230)
  {
    sub_21A176D98(&qword_27CD05228);
    sub_21A1772F8(&qword_27CD05238, &qword_27CD05240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05230);
  }

  return result;
}

uint64_t sub_21A2ECCA0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for RoundSegmentedPickerView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_21A2EC190(v8, v3, v4, v5, v6, a1);
}

unint64_t sub_21A2ECD8C()
{
  result = qword_27CD05258;
  if (!qword_27CD05258)
  {
    sub_21A176D98(&qword_27CD05250);
    sub_21A2ECE44();
    sub_21A1772F8(&qword_27CD05270, &qword_27CD05278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05258);
  }

  return result;
}

unint64_t sub_21A2ECE44()
{
  result = qword_27CD05260;
  if (!qword_27CD05260)
  {
    sub_21A176D98(&qword_27CD05268);
    sub_21A1772F8(&qword_27CCFF758, &qword_27CCFF760);
    sub_21A2EDE04(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05260);
  }

  return result;
}

uint64_t sub_21A2ECF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176D98(&qword_27CD05288);
  swift_getTupleTypeMetadata2();
  v5 = sub_21A2F7B64();
  v6 = sub_21A288780(v5, a1, v4, a2);

  return v6;
}

uint64_t sub_21A2ECFB8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  sub_21A176C98(&qword_27CD05288);
  sub_21A2EDA40();
  if (sub_21A2F77C4() & 1) != 0 || (sub_21A2ECF2C(a4, a5), v7 = sub_21A2F77C4(), , (v7))
  {
  }

  else
  {
    sub_21A2F77A4();
    return sub_21A2F7784();
  }
}

uint64_t sub_21A2ED120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21A2ECF2C(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_21A2ED150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v4;
  v9 = a2;
  v10 = a3;
  return sub_21A2ECFB8(a1, sub_21A287698, &v6, v7, v4);
}

uint64_t sub_21A2ED198@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v58 = a2;
  v2 = sub_21A2F63A4();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21A176C98(&qword_27CD05328);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v54[-v9];
  v11 = sub_21A176C98(&qword_27CD05330);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v54[-v14];
  v16 = sub_21A176C98(&qword_27CD05338);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v54[-v19];
  v21 = sub_21A176C98(&qword_27CD05340);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v54[-v24];
  sub_21A2F63B4();
  v26 = objc_opt_self();
  v27 = &selRef_labelColor;
  if ((v55 & 1) == 0)
  {
    v27 = &selRef_secondaryLabelColor;
  }

  v28 = [v26 *v27];
  v29 = sub_21A2F6EF4();
  (*(v56 + 32))(v10, v5, v57);
  *&v10[*(v7 + 44)] = v29;
  v30 = &v15[*(v12 + 44)];
  *v30 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v30 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
  sub_21A149B18(v10, v15, &qword_27CD05328);
  sub_21A2F66A4();
  sub_21A2F6714();
  v31 = sub_21A2F6764();

  KeyPath = swift_getKeyPath();
  sub_21A149B18(v15, v20, &qword_27CD05330);
  v33 = &v20[*(v17 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  LOBYTE(KeyPath) = sub_21A2F6664();
  sub_21A2F55A4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_21A149B18(v20, v25, &qword_27CD05338);
  v42 = &v25[*(v22 + 44)];
  *v42 = KeyPath;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(KeyPath) = sub_21A2F65F4();
  sub_21A2F55A4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v58;
  sub_21A149B18(v25, v58, &qword_27CD05340);
  result = sub_21A176C98(&qword_27CD05348);
  v53 = v51 + *(result + 36);
  *v53 = KeyPath;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_21A2ED5A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for RoundSegmentedPickerView() - 8);
  v8 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return sub_21A2EC3D8(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_21A2ED664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for RoundSegmentedPickerView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_21A2EA87C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_21A2ED720()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_21A2F7EA4() - 8);
  v6 = *(v5 + 64);
  v7 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(type metadata accessor for RoundSegmentedPickerView() - 8);
  v9 = v0 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21A2EBD30(v0 + v7, v9, v1, v2, v3, v4);
}

uint64_t sub_21A2ED82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_21A2F7264();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_21A2ED898(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_21A2F7EA4() - 8);
  v7 = v2 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_21A2EBF30(a1, a2, v7, v5);
}

uint64_t sub_21A2ED944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_21A2F71C4();
  return sub_21A2F7194();
}

unint64_t sub_21A2EDA40()
{
  result = qword_27CD05320;
  if (!qword_27CD05320)
  {
    sub_21A176D98(&qword_27CD05288);
    sub_21A2EDE04(&qword_27CD00CC8, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05320);
  }

  return result;
}

uint64_t sub_21A2EDB24(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A2EDBA8()
{
  result = qword_27CD05360;
  if (!qword_27CD05360)
  {
    sub_21A176D98(&qword_27CD05338);
    sub_21A2EDC60();
    sub_21A1772F8(&qword_27CCFE948, &qword_27CCFE950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05360);
  }

  return result;
}

unint64_t sub_21A2EDC60()
{
  result = qword_27CD05368;
  if (!qword_27CD05368)
  {
    sub_21A176D98(&qword_27CD05330);
    sub_21A2EDD1C();
    sub_21A2EDE04(&qword_27CCFEFC8, type metadata accessor for RecipeLabelVibrancyViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05368);
  }

  return result;
}

unint64_t sub_21A2EDD1C()
{
  result = qword_27CD05370;
  if (!qword_27CD05370)
  {
    sub_21A176D98(&qword_27CD05328);
    sub_21A2EDE04(&qword_27CCFF830, MEMORY[0x277CDE278]);
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05370);
  }

  return result;
}

uint64_t sub_21A2EDE04(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21A2EDE4C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21A2F8164())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CED6AE0](j, a3);
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

uint64_t sub_21A2EDF60(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD053C8);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v22 - v5;
  v7 = sub_21A176C98(&qword_27CD053D0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v22 - v9;
  v30 = sub_21A176C98(&qword_27CD053D8);
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v29 = v15;
  v16 = *(v1 + 1);
  v22 = *(v1 + 2);
  v23 = v16;
  v17 = *(v1 + 48);
  sub_21A142764(a1, a1[3]);
  sub_21A2F083C();
  sub_21A2F84B4();
  if (v17)
  {
    LOBYTE(v31) = 1;
    sub_21A2F0890();
    v18 = v30;
    sub_21A2F82A4();
    v31 = v28;
    v32 = v29;
    v33 = v23;
    v34 = v22;
    sub_21A2F098C();
    v19 = v27;
    sub_21A2F8324();
    (*(v26 + 8))(v6, v19);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_21A2F0938();
    v18 = v30;
    sub_21A2F82A4();
    v31 = v28;
    v32 = v29;
    sub_21A1921B4();
    v20 = v25;
    sub_21A2F8324();
    (*(v24 + 8))(v10, v20);
  }

  return (*(v11 + 8))(v14, v18);
}

uint64_t sub_21A2EE290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_21A176C98(&qword_27CD05390);
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35[-v6];
  v8 = sub_21A176C98(&qword_27CD05398);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35[-v10];
  v12 = sub_21A176C98(&qword_27CD053A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v35[-v15];
  v17 = a1[3];
  v51 = a1;
  sub_21A142764(a1, v17);
  sub_21A2F083C();
  v18 = v42;
  sub_21A2F8494();
  if (!v18)
  {
    v42 = v13;
    v19 = v41;
    v20 = sub_21A2F8294();
    v21 = (2 * *(v20 + 16)) | 1;
    v47 = v20;
    v48 = v20 + 32;
    v49 = 0;
    v50 = v21;
    v22 = sub_21A207C98();
    v23 = v12;
    if (v22 == 2 || v49 != v50 >> 1)
    {
      v26 = sub_21A2F8064();
      swift_allocError();
      v28 = v27;
      sub_21A176C98(&qword_27CD012F0);
      *v28 = &type metadata for RecipeTimerKey;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v42 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = v16;
      v36 = v22;
      v24 = v42;
      if (v22)
      {
        LOBYTE(v43) = 1;
        sub_21A2F0890();
        v25 = v37;
        sub_21A2F81F4();
        sub_21A2F08E4();
        v30 = v39;
        sub_21A2F8284();
        (*(v40 + 8))(v7, v30);
        (*(v24 + 8))(v25, v23);
        swift_unknownObjectRelease();
        v31 = v43;
        v32 = v44;
        v33 = v45;
        v34 = v46;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_21A2F0938();
        sub_21A2F81F4();
        sub_21A1922B0();
        sub_21A2F8284();
        (*(v38 + 8))(v11, v8);
        (*(v24 + 8))(v37, v23);
        swift_unknownObjectRelease();
        v31 = v43;
        v32 = v44;
        v33 = 0uLL;
        v34 = 0uLL;
      }

      *v19 = v31;
      *(v19 + 8) = v32;
      *(v19 + 16) = v33;
      *(v19 + 32) = v34;
      *(v19 + 48) = v36 & 1;
    }
  }

  return sub_21A142808(v51);
}

uint64_t sub_21A2EE7EC()
{
  if (*v0)
  {
    return 1885697139;
  }

  else
  {
    return 0x657069636572;
  }
}

uint64_t sub_21A2EE81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657069636572 && a2 == 0xE600000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000)
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

uint64_t sub_21A2EE8F4(uint64_t a1)
{
  v2 = sub_21A2F083C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2EE930(uint64_t a1)
{
  v2 = sub_21A2F083C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2EE96C(uint64_t a1)
{
  v2 = sub_21A2F0938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2EE9A8(uint64_t a1)
{
  v2 = sub_21A2F0938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2EE9E4(uint64_t a1)
{
  v2 = sub_21A2F0890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2EEA20(uint64_t a1)
{
  v2 = sub_21A2F0890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2EEA5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  if (v5)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v2);
    MEMORY[0x21CED6EE0](v1);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }

  return sub_21A2F8474();
}

uint64_t sub_21A2EEB2C()
{
  if (*(v0 + 48))
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v2);
    return MEMORY[0x21CED6EE0](v1);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);

    return sub_21A2F79A4();
  }
}

uint64_t sub_21A2EEBF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  if (v5)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v2);
    MEMORY[0x21CED6EE0](v1);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }

  return sub_21A2F8474();
}

uint64_t sub_21A2EECF0(void *a1, uint64_t a2)
{

  *a1 = a2;

  return sub_21A2F5434();
}

uint64_t sub_21A2EED34()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_21A142808(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2EEF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_21A2EEFB0, 0, 0);
}

uint64_t sub_21A2EEFB0()
{
  v1 = *(v0 + 80);
  sub_21A142764((*(v0 + 72) + 16), *(*(v0 + 72) + 40));
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_21A2EF074;
  v6 = *(v0 + 88);

  return sub_21A202B3C(v0 + 16, v6);
}

uint64_t sub_21A2EF074()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A2EF168(uint64_t a1)
{
  v3 = sub_21A176C98(&qword_27CD003C8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v7;
  v19[2] = *(a1 + 32);
  v20 = *(a1 + 48);
  v8 = *(v1 + 64);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v8 + 24));
  if (*(v9 + 16) && (v10 = sub_21A25A2A0(v19), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for RecipeTimer();
    v15 = *(v14 - 8);
    sub_21A2F04AC(v13 + *(v15 + 72) * v12, v6);

    v16 = 1;
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  else
  {

    v17 = type metadata accessor for RecipeTimer();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v16 = 0;
  }

  sub_21A1D041C(v6);
  return v16;
}

uint64_t sub_21A2EF324(uint64_t a1, double a2)
{
  v5 = type metadata accessor for RecipeTimer();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v26 - v12;
  v14 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v14;
  v26[2] = *(a1 + 32);
  v27 = *(a1 + 48);
  v15 = *(v2 + 64);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v15 + 24));
  if (*(v16 + 16) && (v17 = sub_21A25A2A0(v26), (v18 & 1) != 0))
  {
    sub_21A2F04AC(*(v16 + 56) + *(v6 + 72) * v17, v10);

    sub_21A1D04B4(v10, v13);
    v19 = *(v5 + 20);
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = *(v2 + 56);
    v23 = swift_allocObject();
    v23[2] = sub_21A2F0510;
    v23[3] = v20;
    v23[4] = v22;
    v23[5] = v21;

    v24 = v22;

    sub_21A2EFBD0(&v13[v19], sub_21A2F0584, v23);

    sub_21A2F0590(v13);
  }

  else
  {
  }
}

uint64_t sub_21A2EF644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecipeTimer();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v28 - v15;
  v17 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v17;
  v28[2] = *(a1 + 32);
  v29 = *(a1 + 48);
  v18 = *(v4 + 64);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v18 + 24));
  if (*(v19 + 16) && (v20 = sub_21A25A2A0(v28), (v21 & 1) != 0))
  {
    sub_21A2F04AC(*(v19 + 56) + *(v9 + 72) * v20, v13);

    sub_21A1D04B4(v13, v16);
    v22 = *(v8 + 20);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = *(v4 + 56);
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = 0;
    v25[4] = v24;
    v25[5] = v23;
    v26 = v24;

    sub_21A2EFBD0(&v16[v22], a4, v25);

    sub_21A2F0590(v16);
  }

  else
  {
  }
}

uint64_t sub_21A2EF870(uint64_t a1)
{
  v3 = type metadata accessor for RecipeTimer();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v23 - v10;
  v12 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v12;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v13 = *(v1 + 64);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v13 + 24));
  if (*(v14 + 16) && (v15 = sub_21A25A2A0(v23), (v16 & 1) != 0))
  {
    sub_21A2F04AC(*(v14 + 56) + *(v4 + 72) * v15, v8);

    sub_21A1D04B4(v8, v11);
    v17 = *(v3 + 20);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *(v1 + 56);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    v21 = v19;

    sub_21A2EFBD0(&v11[v17], sub_21A2F0700, v20);

    sub_21A2F0590(v11);
  }

  else
  {
  }
}

void sub_21A2EFA84(void *a1, void *a2)
{
  v3 = [a1 timerByRestarting];
  v4 = [a2 updateTimer_];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_weakLoadStrong();
    swift_weakInit();

    v9[4] = sub_21A2F0708;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21A14EAC4;
    v9[3] = &unk_282B37308;
    v7 = _Block_copy(v9);

    v8 = [v5 addSuccessBlock_];
    _Block_release(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_21A2EFBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21A2F4A24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = [*(v3 + 56) timers];
  if (v11)
  {
    v12 = v11;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v15 = (v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = a2;
    v15[1] = a3;
    aBlock[4] = sub_21A2F05EC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21A14EAC4;
    aBlock[3] = &unk_282B371F0;
    v16 = _Block_copy(aBlock);

    v17 = [v12 addSuccessBlock_];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21A2EFF2C(id *a1)
{
  v2 = sub_21A2F4A24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 timerID];
  sub_21A2F49F4();

  v8 = _s10CookingKit12ContinuationV2eeoiySbACyxG_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_21A2F0038(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  a2();
  v6 = [a4 updateTimer_];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    swift_weakLoadStrong();
    swift_weakInit();

    v11[4] = sub_21A2F06AC;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_21A14EAC4;
    v11[3] = &unk_282B37218;
    v9 = _Block_copy(v11);

    v10 = [v7 addSuccessBlock_];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21A2F0178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v13 - v7;
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_21A2F7C64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_21A199D08(0, 0, v8, a4, v12);
  }

  return result;
}

uint64_t sub_21A2F027C()
{
  sub_21A2F0D3C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2F02C0(void *a1)
{

  MEMORY[0x21CED6590](v2);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21A2F7B54();
  }

  return sub_21A2F7B94();
}

uint64_t sub_21A2F0338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v10 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
LABEL_16:
    v5 = sub_21A2F8164();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v9 = a2;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CED6AE0](v6, v4);
          a2 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            a2 = v9;
            v7 = v10;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          a2 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_21A2F8084();
          sub_21A2F80C4();
          sub_21A2F80D4();
          sub_21A2F8094();
        }

        else
        {
        }

        ++v6;
        if (a2 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_18:

  *a1 = v7;
  *a2 = v7;
}

uint64_t sub_21A2F04AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTimer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21A2F0510(void *a1)
{
  v3 = *(v1 + 16);
  if ([a1 state] == 1)
  {
    [a1 setDuration_];
  }

  return [a1 setState_];
}

uint64_t sub_21A2F0590(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTimer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A2F05EC()
{
  sub_21A2F4A24();

  sub_21A2EFDD8();
}

uint64_t sub_21A2F0740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A14DA4C(a1, v4, v5, v6);
}

uint64_t sub_21A2F07F4()
{

  return swift_deallocObject();
}

unint64_t sub_21A2F083C()
{
  result = qword_27CD053A8;
  if (!qword_27CD053A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053A8);
  }

  return result;
}

unint64_t sub_21A2F0890()
{
  result = qword_27CD053B0;
  if (!qword_27CD053B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053B0);
  }

  return result;
}

unint64_t sub_21A2F08E4()
{
  result = qword_27CD053B8;
  if (!qword_27CD053B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053B8);
  }

  return result;
}

unint64_t sub_21A2F0938()
{
  result = qword_27CD053C0;
  if (!qword_27CD053C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053C0);
  }

  return result;
}

unint64_t sub_21A2F098C()
{
  result = qword_27CD053E0;
  if (!qword_27CD053E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053E0);
  }

  return result;
}

BOOL sub_21A2F09E0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  if (*(a1 + 48))
  {
    if (a2[6])
    {
      v17[0] = *a1;
      v17[1] = v2;
      v17[2] = v3;
      v17[3] = v4;
      v17[4] = v6;
      v17[5] = v5;
      v16[0] = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v12;
      v16[5] = v11;
      v13 = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v17, v16);
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A1997F4();
      sub_21A1997F4();
      return v13;
    }

LABEL_5:
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return 0;
  }

  if (a2[6])
  {
    goto LABEL_5;
  }

  if (*a1 == v8 && v2 == v7)
  {
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return 1;
  }

  else
  {
    v15 = sub_21A2F8394();
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return (v15 & 1) != 0;
  }
}

unint64_t sub_21A2F0D98()
{
  result = qword_27CD053E8;
  if (!qword_27CD053E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053E8);
  }

  return result;
}

unint64_t sub_21A2F0DF0()
{
  result = qword_27CD053F0;
  if (!qword_27CD053F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053F0);
  }

  return result;
}

unint64_t sub_21A2F0E48()
{
  result = qword_27CD053F8;
  if (!qword_27CD053F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD053F8);
  }

  return result;
}

unint64_t sub_21A2F0EA0()
{
  result = qword_27CD05400;
  if (!qword_27CD05400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05400);
  }

  return result;
}

unint64_t sub_21A2F0EF8()
{
  result = qword_27CD05408;
  if (!qword_27CD05408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05408);
  }

  return result;
}

unint64_t sub_21A2F0F50()
{
  result = qword_27CD05410;
  if (!qword_27CD05410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05410);
  }

  return result;
}

unint64_t sub_21A2F0FA8()
{
  result = qword_27CD05418;
  if (!qword_27CD05418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05418);
  }

  return result;
}

unint64_t sub_21A2F1000()
{
  result = qword_27CD05420;
  if (!qword_27CD05420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05420);
  }

  return result;
}

unint64_t sub_21A2F1058()
{
  result = qword_27CD05428;
  if (!qword_27CD05428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05428);
  }

  return result;
}

uint64_t Step.init(totalTime:ingredients:subSteps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Duration();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  sub_21A22972C(a1, a4);
  result = type metadata accessor for Step();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21A2F1164(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Step.ingredients.getter()
{
  type metadata accessor for Step();

  return sub_21A2F5434();
}

uint64_t Step.subSteps.getter()
{
  type metadata accessor for Step();

  return sub_21A2F5434();
}

uint64_t sub_21A2F1240()
{
  v1 = 0x6569646572676E69;
  if (*v0 != 1)
  {
    v1 = 0x7370657453627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69546C61746F74;
  }
}

uint64_t sub_21A2F12A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A2F2100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A2F12D0(uint64_t a1)
{
  v2 = sub_21A2F1D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2F130C(uint64_t a1)
{
  v2 = sub_21A2F1D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Step.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD05430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A2F1D2C();
  sub_21A2F84B4();
  LOBYTE(v13) = 0;
  type metadata accessor for Duration();
  sub_21A2F1E4C(&qword_27CD023E0);
  sub_21A2F82D4();
  if (!v2)
  {
    v10 = type metadata accessor for Step();
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_21A176C98(&qword_27CD02400);
    sub_21A2F1E90(&qword_27CD02408, sub_21A22CCA8);
    sub_21A2F8324();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_21A176C98(&qword_27CD03C98);
    sub_21A2F1D80(&qword_27CD05440, sub_21A2F1DF8);
    sub_21A2F8324();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Step.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - v6;
  v8 = sub_21A176C98(&qword_27CD05450);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v23 = type metadata accessor for Step();
  MEMORY[0x28223BE20](v23, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Duration();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_21A142764(a1, a1[3]);
  sub_21A2F1D2C();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    return sub_21A1427A8(v14, &qword_27CCFF3D0);
  }

  else
  {
    v16 = v21;
    LOBYTE(v25) = 0;
    sub_21A2F1E4C(&qword_27CD02420);
    sub_21A2F8234();
    sub_21A22972C(v7, v14);
    sub_21A176C98(&qword_27CD02400);
    v24 = 1;
    sub_21A2F1E90(&qword_27CD02438, sub_21A22CDE0);
    sub_21A2F8284();
    v17 = v23;
    *&v14[*(v23 + 20)] = v25;
    sub_21A176C98(&qword_27CD03C98);
    v24 = 2;
    sub_21A2F1D80(&qword_27CD05458, sub_21A2F1F08);
    sub_21A2F8284();
    (*(v16 + 8))(v11, v22);
    *&v14[*(v17 + 24)] = v25;
    sub_21A2F1F5C(v14, v20);
    sub_21A142808(a1);
    return sub_21A2F2224(v14, type metadata accessor for Step);
  }
}

uint64_t _s10CookingKit4StepV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_21A176C98(&qword_27CCFF3D8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_21A2F1164(a1, &v24 - v15);
  sub_21A2F1164(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_21A1427A8(v16, &qword_27CCFF3D0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_21A2F1164(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21A2F2224(v12, type metadata accessor for Duration);
LABEL_6:
    sub_21A1427A8(v16, &qword_27CCFF3D8);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  sub_21A251FFC(&v16[v18], v8);
  v20 = static Duration.== infix(_:_:)(v12, v8);
  sub_21A2F2224(v8, type metadata accessor for Duration);
  sub_21A2F2224(v12, type metadata accessor for Duration);
  sub_21A1427A8(v16, &qword_27CCFF3D0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for Step();
  if ((sub_21A19D640(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = sub_21A19E4F0(*(a1 + *(v21 + 24)), *(a2 + *(v21 + 24)));
  return v22 & 1;
}

unint64_t sub_21A2F1D2C()
{
  result = qword_27CD05438;
  if (!qword_27CD05438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05438);
  }

  return result;
}

uint64_t sub_21A2F1D80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD03C98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A2F1DF8()
{
  result = qword_27CD05448;
  if (!qword_27CD05448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05448);
  }

  return result;
}

uint64_t sub_21A2F1E4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Duration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A2F1E90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD02400);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A2F1F08()
{
  result = qword_27CD05460;
  if (!qword_27CD05460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05460);
  }

  return result;
}

uint64_t sub_21A2F1F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Step();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A2F1FFC()
{
  result = qword_27CD05468;
  if (!qword_27CD05468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05468);
  }

  return result;
}

unint64_t sub_21A2F2054()
{
  result = qword_27CD05470;
  if (!qword_27CD05470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05470);
  }

  return result;
}

unint64_t sub_21A2F20AC()
{
  result = qword_27CD05478;
  if (!qword_27CD05478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD05478);
  }

  return result;
}

uint64_t sub_21A2F2100(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657453627573 && a2 == 0xE800000000000000)
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

uint64_t sub_21A2F2224(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2F2284(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Recipe();
  v3[6] = swift_task_alloc();
  type metadata accessor for ImageResource();
  v3[7] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFEDC0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for ImageAsset(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A2F23E8, 0, 0);
}

uint64_t sub_21A2F23E8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_21A17FE58(v0[3] + *(v0[5] + 32), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A1BB548(v0[8]);
LABEL_8:
    sub_21A2F3024(v0[3], v0[2], type metadata accessor for Recipe);

    v15 = v0[1];

    return v15();
  }

  v4 = v0[11];
  v5 = v0[12];
  sub_21A2F2FBC(v0[8], v5, type metadata accessor for ImageAsset);
  sub_21A2F3024(v5, v4, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[11];
  if (!EnumCaseMultiPayload)
  {
    sub_21A2F308C(v0[12], type metadata accessor for ImageAsset);
    sub_21A2F308C(v7, type metadata accessor for ImageAsset);
    goto LABEL_8;
  }

  v8 = v0[7];
  v9 = v0[4];
  sub_21A2F308C(v0[11], type metadata accessor for ImageAsset);
  v10 = v9[5];
  v11 = v9[6];
  sub_21A142764(v9 + 2, v10);
  sub_21A244D84(v8);
  v16 = (*(v11 + 8) + **(v11 + 8));
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_21A2F26A4;
  v13 = v0[7];

  return v16(v13, v10, v11);
}

uint64_t sub_21A2F26A4(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[7];
  if (v1)
  {
    sub_21A2F308C(v5, type metadata accessor for ImageResource);
    v6 = sub_21A2F2970;
  }

  else
  {
    v4[15] = a1;
    sub_21A2F308C(v5, type metadata accessor for ImageResource);
    v6 = sub_21A2F2814;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21A2F2814()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 120);
  sub_21A20E258(v7);
  v9 = v8;
  v11 = v10;

  sub_21A2F2CD8(v1, v9, v11);
  sub_21A2F3024(v6, v5, type metadata accessor for Recipe);
  v12 = *(v4 + 32);
  sub_21A1BB548(v5 + v12);
  sub_21A2F2FBC(v1, v5 + v12, type metadata accessor for ImageAsset);
  (*(v3 + 56))(v5 + v12, 0, 1, v2);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A2F2970()
{
  v18 = v0;
  if (qword_27CCFE7D8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_21A2F53E4();
  sub_21A177CBC(v3, qword_27CD23CC8);
  sub_21A2F3024(v2, v1, type metadata accessor for Recipe);
  v4 = sub_21A2F53C4();
  v5 = sub_21A2F7DD4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[6];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = *v9;
    v13 = v9[1];
    sub_21A2F5434();
    sub_21A2F308C(v9, type metadata accessor for Recipe);
    v14 = sub_21A25B5DC(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21A137000, v4, v5, "Failed to load hero image for recipe: %{public}s", v10, 0xCu);
    sub_21A142808(v11);
    MEMORY[0x21CED7BA0](v11, -1, -1);
    MEMORY[0x21CED7BA0](v10, -1, -1);
  }

  else
  {

    sub_21A2F308C(v9, type metadata accessor for Recipe);
  }

  sub_21A2F308C(v8, type metadata accessor for ImageAsset);
  sub_21A2F3024(v0[3], v0[2], type metadata accessor for Recipe);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21A2F2BEC()
{
  sub_21A142808(v0 + 16);
  sub_21A142808(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_21A2F2C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A2F2284(a1, a2);
}

uint64_t sub_21A2F2CD8(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F3024(a1, v17, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21A2F308C(a1, type metadata accessor for ImageAsset);
      sub_21A2F2FBC(v17, v13, type metadata accessor for WebImageAsset);
      v19 = *(v10 + 20);
      v20 = *&v13[v19];
      v21 = a2;

      *&v13[v19] = a2;
      v22 = *(v10 + 24);
      v23 = *&v13[v22];
      v24 = a3;

      *&v13[v22] = a3;
      sub_21A2F3024(v13, a1, type metadata accessor for WebImageAsset);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for WebImageAsset;
      v26 = v13;
    }

    else
    {
      sub_21A2F308C(a1, type metadata accessor for ImageAsset);
      sub_21A2F2FBC(v17, v9, type metadata accessor for LocalImageAsset);
      v27 = *(v6 + 20);
      v28 = *&v9[v27];
      v29 = a2;

      *&v9[v27] = a2;
      v30 = *(v6 + 24);
      v31 = *&v9[v30];
      v32 = a3;

      *&v9[v30] = a3;
      sub_21A2F3024(v9, a1, type metadata accessor for LocalImageAsset);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for LocalImageAsset;
      v26 = v9;
    }
  }

  else
  {
    v25 = type metadata accessor for ImageAsset;
    v26 = v17;
  }

  return sub_21A2F308C(v26, v25);
}

uint64_t sub_21A2F2FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2F3024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2F308C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2F3108()
{
  sub_21A287C20();

  return sub_21A2F5EE4();
}

uint64_t sub_21A2F3150()
{
  v0 = sub_21A2F62D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A176C98(&qword_27CD054B8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - v7;
  v9 = sub_21A176C98(&qword_27CD054C0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - v19;
  sub_21A2F5DA4();
  (*(v1 + 104))(v17, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v17, 0, 1, v0);
  v21 = *(v5 + 56);
  sub_21A2F367C(v20, v8);
  sub_21A2F367C(v17, &v8[v21]);
  v22 = *(v1 + 48);
  if (v22(v8, 1, v0) != 1)
  {
    sub_21A2F367C(v8, v13);
    if (v22(&v8[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v8[v21], v0);
      sub_21A2F39D8(&qword_27CD054C8, MEMORY[0x277CE0570]);
      v23 = sub_21A2F7874();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_21A1427A8(v17, &qword_27CD054C0);
      sub_21A1427A8(v20, &qword_27CD054C0);
      v25(v13, v0);
      sub_21A1427A8(v8, &qword_27CD054C0);
      return v23 & 1;
    }

    sub_21A1427A8(v17, &qword_27CD054C0);
    sub_21A1427A8(v20, &qword_27CD054C0);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  sub_21A1427A8(v17, &qword_27CD054C0);
  sub_21A1427A8(v20, &qword_27CD054C0);
  if (v22(&v8[v21], 1, v0) != 1)
  {
LABEL_6:
    sub_21A1427A8(v8, &qword_27CD054B8);
    v23 = 0;
    return v23 & 1;
  }

  sub_21A1427A8(v8, &qword_27CD054C0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_21A2F35B0(void (*a1)(void))
{
  a1();
  sub_21A2F5EE4();
  return v2;
}

uint64_t sub_21A2F35F8()
{
  sub_21A2ADCD0();

  return sub_21A2F5EE4();
}

uint64_t sub_21A2F3640()
{
  sub_21A2ADDAC();
  sub_21A2F5EE4();
  return v1;
}

uint64_t sub_21A2F367C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD054C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2F373C()
{
  v0 = type metadata accessor for RecipeTheme();
  sub_21A177DCC(v0, qword_27CD054A0);
  v1 = sub_21A177CBC(v0, qword_27CD054A0);
  v2 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
  *v1 = 0;
  v3 = type metadata accessor for ImageAsset(0);
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21A2F3804@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE8A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecipeTheme();
  v3 = sub_21A177CBC(v2, qword_27CD054A0);

  return sub_21A2685F8(v3, a1);
}

uint64_t sub_21A2F387C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21A2F39D8(&qword_27CCFEB20, type metadata accessor for RecipeTheme);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21A2F3910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21A1CDF7C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21A2F3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21A298F08();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21A2F39D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Dependencies.recipeID.getter()
{
  sub_21A2F3B78();
  sub_21A2F3BCC();

  return sub_21A2F7624();
}

unint64_t sub_21A2F3B78()
{
  result = qword_27CD054D0;
  if (!qword_27CD054D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD054D0);
  }

  return result;
}

unint64_t sub_21A2F3BCC()
{
  result = qword_27CD054D8;
  if (!qword_27CD054D8)
  {
    sub_21A176D98(&qword_27CCFECC0);
    sub_21A13F91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD054D8);
  }

  return result;
}

double sub_21A2F3C50@<D0>(_OWORD *a1@<X8>)
{
  sub_21A2F3B78();
  sub_21A2F3BCC();
  sub_21A2F7624();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21A2F3CB4()
{
  sub_21A2F3B78();
  sub_21A2F3BCC();
  sub_21A2F5434();
  return sub_21A2F7634();
}

uint64_t Dependencies.recipeID.setter()
{
  sub_21A2F3B78();
  sub_21A2F3BCC();
  return sub_21A2F7634();
}

void (*Dependencies.recipeID.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_21A2F3B78();
  *(v4 + 48) = sub_21A2F3BCC();
  sub_21A2F7624();
  return sub_21A2F3E14;
}

void sub_21A2F3E14(uint64_t **a1, char a2)
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

uint64_t sub_21A2F3EF8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27CD23BA8 == -1)
  {
    if (qword_27CD23BB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_21A2F43D4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CD23BB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CD23BA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_21A2F43EC();
    a3 = v10;
    a4 = v9;
    v8 = dword_27CD23B90 < v11;
    if (dword_27CD23B90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CD23B94 > a3)
      {
        return 1;
      }

      if (dword_27CD23B94 >= a3)
      {
        return dword_27CD23B98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_27CD23B90 < a2;
  if (dword_27CD23B90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_21A2F408C(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CD23BB0;
  if (qword_27CD23BB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CD23BB0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CED7420](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_27CD23B90, &dword_27CD23B94, &dword_27CD23B98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}