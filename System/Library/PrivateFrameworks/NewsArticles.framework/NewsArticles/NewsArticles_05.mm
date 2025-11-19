uint64_t type metadata accessor for ReportConcernDetailViewController()
{
  result = qword_1EC9E2278;
  if (!qword_1EC9E2278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A11284()
{
  sub_1D7A13DF0(319, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D7A1135C()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_blueprintViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v7 setFrame_];
    v18 = sub_1D7D30D8C();
    v19 = sub_1D7A10E40();
    [v18 setRightBarButtonItem:v19 animated:0];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1D7D2811C();

    v22 = sub_1D7D3031C();

    [v0 setTitle_];

    [*&v0[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController____lazy_storage___sendButton] setEnabled_];
    v23 = [v0 traitCollection];
    sub_1D7A138B8();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D7A117DC()
{
  sub_1D7A13E44(0, &qword_1EC9E8690, MEMORY[0x1E69D87F8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v42 - v5;
  sub_1D7A13DF0(0, &qword_1EC9E22B8, sub_1D7A13800);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - v9;
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_1D7D283FC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  swift_beginAccess();
  sub_1D7A13514(v0 + v20, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v21 = &qword_1EC9E2288;
    v22 = MEMORY[0x1E6969C28];
    v23 = v14;
    return sub_1D7A13F3C(v23, v21, v22);
  }

  (*(v16 + 32))(v19, v14, v15);
  v48 = v0;
  sub_1D7D2B2DC();
  v56 = v49;
  sub_1D7A13E44(0, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
  sub_1D7A13EC8();
  sub_1D7D2AEEC();

  sub_1D7D2C76C();
  (*(v3 + 8))(v6, v2);
  sub_1D7A13800();
  v25 = v24;
  v26 = *(v24 - 8);
  if ((*(v26 + 48))(v10, 1, v24) == 1)
  {
    (*(v16 + 8))(v19, v15);
    v21 = &qword_1EC9E22B8;
    v22 = sub_1D7A13800;
    v23 = v10;
    return sub_1D7A13F3C(v23, v21, v22);
  }

  sub_1D7D29EEC();
  v28 = v49;
  v29 = v51;
  v45 = v50;
  v46 = v52;
  v30 = v53;
  v47 = v54;
  v31 = v55;
  (*(v26 + 8))(v10, v25);
  if (v31 == 1)
  {
    v32 = v45;
    v44 = v30;
    v33 = sub_1D7D30D8C();
    v34 = [v33 rightBarButtonItem];

    if (v34)
    {
      [v34 setEnabled_];
    }

    v35 = *(*(v48 + OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    v43 = v28;
    v49 = v28;
    v50 = v32;
    v37 = v32;
    v38 = v29;
    v51 = v29;
    v40 = v46;
    v39 = v47;
    v41 = v44;
    v52 = v46;
    v53 = v44;
    v54 = v47;
    (*(v35 + 56))(&v49, ObjectType, v35);
    (*(v16 + 8))(v19, v15);
    return sub_1D7A1385C(v43, v37, v38, v40, v41, v39, 1);
  }

  else
  {
    sub_1D7A1385C(v28, v45, v29, v46, v30, v47, 0);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_1D7A11D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v45 = a2;
  v6 = sub_1D7D283BC();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v44 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v39 - v19;
  v21 = sub_1D7D283FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v42 = a3;
  v23(v20, a3, v21);
  v24 = *(v22 + 56);
  v25 = 1;
  v24(v20, 0, 1, v21);
  v26 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  swift_beginAccess();
  sub_1D7A13780(v20, v4 + v26);
  swift_endAccess();
  v41 = v4;
  sub_1D7D2B2CC();
  v27 = sub_1D7D2AF0C();

  v28 = [v27 indexPathForSelectedRow];

  if (v28)
  {
    sub_1D7D283CC();

    v25 = 0;
  }

  v24(v13, v25, 1, v21);
  v29 = v44;
  sub_1D7A135F0(v13, v44);
  sub_1D7D2B2CC();
  v30 = sub_1D7D2AF0C();

  sub_1D7A13670(0, &qword_1EC9E1AB8, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D7D3B4D0;
  *(v31 + 32) = sub_1D7D283EC();
  v46 = v31;
  sub_1D7A13738(&qword_1EC9E2298, MEMORY[0x1E6969B50]);
  sub_1D7A13670(0, &qword_1EC9E22A0, MEMORY[0x1E69E62F8]);
  sub_1D7A136C4();
  sub_1D7D313AC();
  v32 = sub_1D7D283AC();
  (*(v43 + 8))(v9, v6);
  [v30 reloadSections:v32 withRowAnimation:5];

  sub_1D7A13800();
  v33 = v45;
  sub_1D7D29EEC();
  if (v52)
  {
    sub_1D7A1385C(v46, v47, v48, v49, v50, v51, 1);
    sub_1D7D2B2CC();
    v34 = sub_1D7D2AF0C();

    sub_1D7D30ADC();

    v35 = *(*(v41 + OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v35 + 48))(v33, v40, ObjectType, v35);
    v37 = sub_1D7A10E40();
    [v37 setEnabled_];
  }

  else
  {
    sub_1D7A1385C(v46, v47, v48, v49, v50, v51, 0);
  }

  return sub_1D7A13F3C(v29, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
}

uint64_t sub_1D7A12224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7D283BC();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D283FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13494();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v53 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v55 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v51 - v29;
  v31 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  swift_beginAccess();
  v32 = *(v9 + 16);
  v54 = a3;
  v32(v30, a3, v8);
  v52 = *(v9 + 56);
  v52(v30, 0, 1, v8);
  v33 = *(v13 + 56);
  sub_1D7A13514(v3 + v31, v16);
  sub_1D7A13514(v30, &v16[v33]);
  v34 = *(v9 + 48);
  if (v34(v16, 1, v8) != 1)
  {
    sub_1D7A13514(v16, v26);
    if (v34(&v16[v33], 1, v8) != 1)
    {
      v36 = v51;
      (*(v9 + 32))(v51, &v16[v33], v8);
      sub_1D7A13738(&qword_1EC9E22B0, MEMORY[0x1E6969C28]);
      v37 = sub_1D7D3030C();
      v38 = *(v9 + 8);
      v38(v36, v8);
      v39 = MEMORY[0x1E6969C28];
      sub_1D7A13F3C(v30, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
      v38(v26, v8);
      result = sub_1D7A13F3C(v16, &qword_1EC9E2288, v39);
      if ((v37 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1D7A13F3C(v30, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
    (*(v9 + 8))(v26, v8);
    return sub_1D7A13594(v16);
  }

  sub_1D7A13F3C(v30, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  if (v34(&v16[v33], 1, v8) != 1)
  {
    return sub_1D7A13594(v16);
  }

  sub_1D7A13F3C(v16, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
LABEL_8:
  sub_1D7D2B2CC();
  v40 = sub_1D7D2AF0C();

  v41 = [v40 indexPathForSelectedRow];

  if (v41)
  {
    v42 = v53;
    sub_1D7D283CC();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v53;
  }

  v52(v42, v43, 1, v8);
  v44 = v55;
  sub_1D7A135F0(v42, v55);
  sub_1D7D2B2CC();
  v45 = sub_1D7D2AF0C();

  sub_1D7A13670(0, &qword_1EC9E1AB8, MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7D3B4D0;
  *(v46 + 32) = sub_1D7D283EC();
  v59 = v46;
  sub_1D7A13738(&qword_1EC9E2298, MEMORY[0x1E6969B50]);
  sub_1D7A13670(0, &qword_1EC9E22A0, MEMORY[0x1E69E62F8]);
  sub_1D7A136C4();
  v47 = v56;
  v48 = v58;
  sub_1D7D313AC();
  v49 = sub_1D7D283AC();
  (*(v57 + 8))(v47, v48);
  [v45 reloadSections:v49 withRowAnimation:5];

  sub_1D7D2B2CC();
  v50 = sub_1D7D2AF0C();

  sub_1D7D30ADC();

  return sub_1D7A13F3C(v44, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
}

uint64_t sub_1D7A12914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7D2BE7C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v12 + 40))(ObjectType, v12);
  }

  if (result == *MEMORY[0x1E69D8608])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    return (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (result == *MEMORY[0x1E69D8628] || result == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x1E69D8638])
    {
      if (result == *MEMORY[0x1E69D8650])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

void sub_1D7A12B08()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    sub_1D7D3108C();
  }
}

uint64_t sub_1D7A12BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E20](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7A12C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D90](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D98](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7A12D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DC0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DC8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E00](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A12FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E10](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7A13060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB8](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D7A130C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D78](a1, ObjectType, a3);
}

uint64_t sub_1D7A13118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D68](a1, ObjectType, a3);
}

uint64_t sub_1D7A13168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D88](a1, ObjectType, a3);
}

uint64_t sub_1D7A131B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D60](a1, ObjectType, a3);
}

uint64_t sub_1D7A13208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D58](a1, ObjectType, a3);
}

uint64_t sub_1D7A13258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A132B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D80](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A13308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D70](a1, a2, ObjectType, a4);
}

uint64_t sub_1D7A13360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD8](a1, a2, ObjectType, a4);
}

unint64_t sub_1D7A133E8()
{
  result = qword_1EC9E26A0;
  if (!qword_1EC9E26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E26A0);
  }

  return result;
}

unint64_t sub_1D7A13440()
{
  result = qword_1EC9E6830;
  if (!qword_1EC9E6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6830);
  }

  return result;
}

void sub_1D7A13494()
{
  if (!qword_1EC9E2290)
  {
    sub_1D7A13DF0(255, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2290);
    }
  }
}

uint64_t sub_1D7A13514(uint64_t a1, uint64_t a2)
{
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A13594(uint64_t a1)
{
  sub_1D7A13494();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A135F0(uint64_t a1, uint64_t a2)
{
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7A13670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7A136C4()
{
  result = qword_1EC9E22A8;
  if (!qword_1EC9E22A8)
  {
    sub_1D7A13670(255, &qword_1EC9E22A0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E22A8);
  }

  return result;
}

uint64_t sub_1D7A13738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7A13780(uint64_t a1, uint64_t a2)
{
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D7A13800()
{
  if (!qword_1EC9E32F0)
  {
    sub_1D7A13440();
    v0 = sub_1D7D29F0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E32F0);
    }
  }
}

uint64_t sub_1D7A1385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_1D7A138B8()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    sub_1D7D2B2CC();
    v6 = sub_1D7D2AF0C();

    v7 = [v4 systemGroupedBackgroundColor];
    [v6 setBackgroundColor_];

    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_styler], *&v1[OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_styler + 24]);
    v8 = [v1 navigationItem];
    sub_1D7BECC24(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7A13A00(uint64_t a1)
{
  v3 = sub_1D7D283FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13494();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A13DF0(0, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  v21 = OBJC_IVAR____TtC12NewsArticles33ReportConcernDetailViewController_selectedItemIndexPath;
  swift_beginAccess();
  (*(v4 + 16))(v20, a1, v3);
  (*(v4 + 56))(v20, 0, 1, v3);
  v22 = *(v9 + 56);
  sub_1D7A13514(v1 + v21, v12);
  sub_1D7A13514(v20, &v12[v22]);
  v23 = *(v4 + 48);
  if (v23(v12, 1, v3) != 1)
  {
    sub_1D7A13514(v12, v16);
    if (v23(&v12[v22], 1, v3) != 1)
    {
      (*(v4 + 32))(v7, &v12[v22], v3);
      sub_1D7A13738(&qword_1EC9E22B0, MEMORY[0x1E6969C28]);
      v24 = sub_1D7D3030C();
      v25 = *(v4 + 8);
      v25(v7, v3);
      v26 = MEMORY[0x1E6969C28];
      sub_1D7A13F3C(v20, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
      v25(v16, v3);
      sub_1D7A13F3C(v12, &qword_1EC9E2288, v26);
      return v24 & 1;
    }

    sub_1D7A13F3C(v20, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
    (*(v4 + 8))(v16, v3);
    goto LABEL_6;
  }

  sub_1D7A13F3C(v20, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  if (v23(&v12[v22], 1, v3) != 1)
  {
LABEL_6:
    sub_1D7A13594(v12);
    v24 = 0;
    return v24 & 1;
  }

  sub_1D7A13F3C(v12, &qword_1EC9E2288, MEMORY[0x1E6969C28]);
  v24 = 1;
  return v24 & 1;
}

void sub_1D7A13DF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7A13E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ReportConcernDetailSectionDescriptor;
    v8[1] = &type metadata for ReportConcernDetailModel;
    v8[2] = sub_1D7A133E8();
    v8[3] = sub_1D7A13440();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7A13EC8()
{
  result = qword_1EC9E8000;
  if (!qword_1EC9E8000)
  {
    sub_1D7A13E44(255, &qword_1EC9E22C0, MEMORY[0x1E69D7A68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8000);
  }

  return result;
}

uint64_t sub_1D7A13F3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7A13DF0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_1D7A140A8()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_recipeArticleDrawerViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [v3 addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame_];
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v15 = result;
  [result setAutoresizingMask_];

  [v1 didMoveToParentViewController_];
  v16 = sub_1D7D30D8C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v19 = sub_1D7D3031C();

  [v16 setTitle_];

  v20 = sub_1D7D30D8C();
  [v20 setLargeTitleDisplayMode_];

  LODWORD(v20) = _UISolariumFeatureFlagEnabled();
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v20 target:v0 action:sel_dismissVC];
  v22 = sub_1D7D30D8C();
  v23 = v22;
  v24 = &selRef_setLeftBarButtonItem_;
  if (!v20)
  {
    v24 = &selRef_setRightBarButtonItem_;
  }

  [v22 *v24];

  sub_1D7A14490();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v26);
  sub_1D7A14880();

  sub_1D7D2840C();
}

void sub_1D7A14490()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = &v0[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_baseStyler];
    v5 = *&v0[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_baseStyler + 24];
    v6 = *&v0[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_baseStyler + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_baseStyler], v5);
    v7 = (*(v6 + 16))(v5, v6);
    [v3 setBackgroundColor_];

    v8 = *(v4 + 3);
    v9 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, v8);
    v10 = [v1 navigationItem];
    v11 = *(v4 + 3);
    v12 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, v11);
    v13 = (*(v12 + 16))(v11, v12);
    (*(v9 + 48))(v10, v13, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7A145F4(uint64_t *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v5 = *a1;
    v4 = a1[1];

    v6 = sub_1D7A82B6C(v5, v4);

    if (v6)
    {

      sub_1D7AD8EFC(v6);

      [v3 dismissViewControllerAnimated:1 completion:0];

      v3 = v6;
    }
  }
}

unint64_t sub_1D7A14880()
{
  result = qword_1EC9E22E8;
  if (!qword_1EC9E22E8)
  {
    type metadata accessor for RecipeArticleDrawerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E22E8);
  }

  return result;
}

id sub_1D7A148D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_1D799CC84(a1, &v4[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_baseStyler]);
  *&v4[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_model] = a2;
  *&v4[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_router] = a3;
  v16 = 0;
  sub_1D7A149E4();
  swift_retain_n();

  sub_1D7D2DA7C();
  v9 = *v15;
  *v15 = a2;
  *&v15[8] = v9;
  sub_1D7A14A3C();
  v11 = objc_allocWithZone(v10);
  *&v4[OBJC_IVAR____TtC12NewsArticles33RecipeArticleDrawerViewController_recipeArticleDrawerViewController] = sub_1D7D2D81C();
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1D7A149E4()
{
  if (!qword_1EC9E22F0)
  {
    sub_1D79FD4A0();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E22F0);
    }
  }
}

void sub_1D7A14A3C()
{
  if (!qword_1EC9E22F8)
  {
    sub_1D7A14A98();
    v0 = sub_1D7D2D82C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E22F8);
    }
  }
}

unint64_t sub_1D7A14A98()
{
  result = qword_1EC9E2300;
  if (!qword_1EC9E2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2300);
  }

  return result;
}

uint64_t sub_1D7A14AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v6);
  v3 = type metadata accessor for InterstitialAdModule();
  v4 = swift_allocObject();
  result = sub_1D799D69C(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &protocol witness table for InterstitialAdModule;
  *a2 = v4;
  return result;
}

uint64_t sub_1D7A14C64(void *a1, uint64_t a2, void (*a3)(void, uint64_t, void), uint64_t a4, void (*a5)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BFC00);
  result = sub_1D7D28D2C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0, a2, MEMORY[0x1E69B3F38]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0, a4, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (result)
  {
    a5(0);
    swift_allocObject();
    return sub_1D7D2D23C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A14E68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  swift_allocObject();
  return a5();
}

uint64_t sub_1D7A14EAC()
{
  sub_1D7A16A90(0, &qword_1EE0BC640, type metadata accessor for InterstitialAdViewController);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0BC410);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0BD168);
  sub_1D7D291EC();
  type metadata accessor for InterstitialAdRouter();
  sub_1D7D28ABC();

  sub_1D7A16988(0, &qword_1EE0BC638, type metadata accessor for InterstitialAdViewController);
  sub_1D7D291DC();

  sub_1D7D291EC();

  sub_1D7D291EC();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EE0BD160);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0BC6D0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0BCE28);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0BC580);
  sub_1D7D291EC();
}

uint64_t sub_1D7A15230(void *a1)
{
  sub_1D7A16A24(0, &qword_1EE0BD780, qword_1EE0C8C90, sub_1D7A16A90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v30 - v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A16A90(0, qword_1EE0C8C90, type metadata accessor for InterstitialAdModel.InterstitialAd);
  v7 = v6;
  sub_1D7D28D2C();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7997744();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BD160);
  result = sub_1D7D28D2C();
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BC410);
  result = sub_1D7D28CEC();
  v10 = v41;
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v12 = v39;
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79978F0(0, &qword_1EE0CBD10, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  v31 = v11;
  v32 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BB1D8);
  result = sub_1D7D28D2C();
  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BB1D0);
  result = sub_1D7D28D2C();
  if (v36)
  {
    sub_1D7A16A90(0, &qword_1EE0BC640, type metadata accessor for InterstitialAdViewController);
    v15 = v14;
    v16 = objc_allocWithZone(v14);
    v17 = MEMORY[0x1E69E7D40];
    *(v16 + *((*MEMORY[0x1E69E7D40] & *v16) + 0xA0)) = 0;
    v18 = v16 + *((*v17 & *v16) + 0xB8);
    *v18 = 0;
    v18[8] = 1;
    v19 = v16 + *((*v17 & *v16) + 0xC0);
    *v19 = 0u;
    *(v19 + 1) = 0u;
    v19[32] = 1;
    v20 = v5[1];
    v21 = (v16 + *((*v17 & *v16) + 0x60));
    *v21 = *v5;
    v21[1] = v20;
    *(v16 + *((*v17 & *v16) + 0x70)) = v9;
    sub_1D7A16B2C(v5, v16 + *((*v17 & *v16) + 0x68), qword_1EE0C8C90, sub_1D7A16A90);

    v22 = sub_1D7D2D26C();
    v23 = (v16 + *((*v17 & *v16) + 0x78));
    *v23 = v22;
    v23[1] = v24;
    sub_1D799CC84(v43, v16 + *((*v17 & *v16) + 0x80));
    v25 = (v16 + *((*v17 & *v16) + 0x88));
    v26 = v31;
    *v25 = v32;
    v25[1] = v26;
    v27 = (v16 + *((*v17 & *v16) + 0x90));
    v28 = v33;
    *v27 = v12;
    v27[1] = v28;
    *(v16 + *((*v17 & *v16) + 0x98)) = v13;
    sub_1D799CC84(v37, v16 + *((*v17 & *v16) + 0xA8));
    sub_1D799CC84(v35, v16 + *((*v17 & *v16) + 0xB0));
    v34.receiver = v16;
    v34.super_class = v15;
    v29 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);

    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1D7A16BAC(v5, qword_1EE0C8C90, sub_1D7A16A90);
    *(*(v29 + *((*v17 & *v29) + 0x88)) + 24) = &off_1F52B0FA8;
    swift_unknownObjectWeakAssign();
    return v29;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7A158D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BC6D0);
  result = sub_1D7D28D2C();
  v5 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BD168);
  result = sub_1D7D28CEC();
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BCE28);
  result = sub_1D7D28D2C();
  if (v14)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = sub_1D7A16818(v5, v6, *v10, &v13);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v12;
    a2[1] = &off_1F52A7F58;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A15B08(void *a1)
{
  sub_1D7A16A24(0, &qword_1EC9E2308, &qword_1EE0C8C80, sub_1D7A16988);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v30 - v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A16988(0, &qword_1EE0C8C80, type metadata accessor for InterstitialAdModel.InterstitialAd);
  v7 = v6;
  sub_1D7D28D2C();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79979B4();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BD160);
  result = sub_1D7D28D2C();
  if (!v44)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BC410);
  result = sub_1D7D28CEC();
  v10 = v41;
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v12 = v39;
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7997A88(0, &unk_1EE0CBD00, MEMORY[0x1E69B43B0]);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  v31 = v11;
  v32 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BB1D8);
  result = sub_1D7D28D2C();
  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BB1D0);
  result = sub_1D7D28D2C();
  if (v36)
  {
    sub_1D7A16988(0, &qword_1EE0BC638, type metadata accessor for InterstitialAdViewController);
    v15 = v14;
    v16 = objc_allocWithZone(v14);
    v17 = MEMORY[0x1E69E7D40];
    *(v16 + *((*MEMORY[0x1E69E7D40] & *v16) + 0xA0)) = 0;
    v18 = v16 + *((*v17 & *v16) + 0xB8);
    *v18 = 0;
    v18[8] = 1;
    v19 = v16 + *((*v17 & *v16) + 0xC0);
    *v19 = 0u;
    *(v19 + 1) = 0u;
    v19[32] = 1;
    v20 = v5[1];
    v21 = (v16 + *((*v17 & *v16) + 0x60));
    *v21 = *v5;
    v21[1] = v20;
    *(v16 + *((*v17 & *v16) + 0x70)) = v9;
    sub_1D7A16B2C(v5, v16 + *((*v17 & *v16) + 0x68), &qword_1EE0C8C80, sub_1D7A16988);

    v22 = sub_1D7D2D26C();
    v23 = (v16 + *((*v17 & *v16) + 0x78));
    *v23 = v22;
    v23[1] = v24;
    sub_1D799CC84(v43, v16 + *((*v17 & *v16) + 0x80));
    v25 = (v16 + *((*v17 & *v16) + 0x88));
    v26 = v31;
    *v25 = v32;
    v25[1] = v26;
    v27 = (v16 + *((*v17 & *v16) + 0x90));
    v28 = v33;
    *v27 = v12;
    v27[1] = v28;
    *(v16 + *((*v17 & *v16) + 0x98)) = v13;
    sub_1D799CC84(v37, v16 + *((*v17 & *v16) + 0xA8));
    sub_1D799CC84(v35, v16 + *((*v17 & *v16) + 0xB0));
    v34.receiver = v16;
    v34.super_class = v15;
    v29 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);

    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1D7A16BAC(v5, &qword_1EE0C8C80, sub_1D7A16988);
    *(*(v29 + *((*v17 & *v29) + 0x88)) + 24) = &off_1F52B0FA8;
    swift_unknownObjectWeakAssign();
    return v29;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7A161A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BC6D0);
  result = sub_1D7D28D2C();
  v5 = v17;
  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BD168);
  result = sub_1D7D28CEC();
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BCE28);
  result = sub_1D7D28D2C();
  if (v14)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v8 = MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = sub_1D7A16818(v5, v6, *v10, &v13);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v12;
    a2[1] = &off_1F52A7F58;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7A163C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for InterstitialAdRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D799D69C(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52A4B98;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7A1649C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t (*)()))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a4(0, a3, type metadata accessor for InterstitialAdViewController);
  v6 = sub_1D7D28D1C();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7A16554@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for InterstitialAdStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F52A09E8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A16608@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BC580);
  result = sub_1D7D28D2C();
  if (v5)
  {
    type metadata accessor for InterstitialAdInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    result = swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    *a2 = v4;
    a2[1] = &off_1F52AA628;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A166C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for InterstitialAdTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F529ED50;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A16748@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InterstitialAdDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_1F52A21E0;
  return result;
}

void *sub_1D7A16818(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for InterstitialAdRouter();
  v20[3] = v8;
  v20[4] = &off_1F52A4B98;
  v20[0] = a3;
  type metadata accessor for InterstitialAdEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
  v11 = MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v18 = v8;
  v19 = &off_1F52A4B98;
  *&v17 = v15;
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  v9[4] = a1;
  v9[5] = a2;
  sub_1D799D69C(&v17, (v9 + 6));
  sub_1D799D69C(a4, (v9 + 11));
  *(a1 + 24) = &off_1F52A7F50;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v9;
}

void sub_1D7A16988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2D3CC();
    v7 = sub_1D7997818(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7A16A24(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)()))
{
  if (!*a2)
  {
    a4(255, a3, type metadata accessor for InterstitialAdModel.InterstitialAd);
    v5 = sub_1D7D3130C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7A16A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2D39C();
    v7 = sub_1D7997818(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7A16B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t (*)()))
{
  v6 = a4(0, a3, type metadata accessor for InterstitialAdModel.InterstitialAd);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7A16BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t (*)()))
{
  v4 = a3(0, a2, type metadata accessor for InterstitialAdModel.InterstitialAd);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A16C28(uint64_t a1)
{
  type metadata accessor for EndOfArticleFeedPool();
  sub_1D7D294BC();
  v3 = sub_1D7D2934C();
  sub_1D7A18F14(0);
  sub_1D7D293BC();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;

  v5 = sub_1D7D2934C();
  sub_1D7D2F05C();
  sub_1D7D293BC();

  v6 = sub_1D7D2934C();
  sub_1D7A18F80(0);
  sub_1D7D293BC();

  v7 = sub_1D7D2934C();
  v8 = sub_1D7D2943C();

  return v8;
}

size_t sub_1D7A16E40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v7 = MEMORY[0x1E69E6720];
  sub_1D7A19B18(0, &unk_1EE0BF640, MEMORY[0x1E69B6380], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v98 = v82 - v10;
  sub_1D7A19B18(0, &qword_1EE0BF5C0, MEMORY[0x1E69B6570], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v91 = v82 - v13;
  sub_1D7A19B18(0, &qword_1EE0BF988, sub_1D7990AB0, v7);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v89 = v82 - v16;
  v17 = sub_1D7D2F6AC();
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v96 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A19B18(0, &unk_1EE0BFB00, MEMORY[0x1E69B40B8], v7);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v87 = v82 - v26;
  v27 = sub_1D7D2F31C();
  v93 = *(v27 - 8);
  v94 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v92 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D7D2FC7C();
  v106 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v30);
  v85 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D7D2FD3C();
  v101 = *(v32 - 8);
  v102 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v100 = v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D7D2EC6C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a1;
  v88 = a2;
  type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  v95 = a3;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  (*(v36 + 8))(v39, v35);
  v41 = v107;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    v43 = sub_1D7D3167C();
    if (v43 < v41)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43 < v107)
    {
LABEL_3:
      v44 = sub_1D7D2E4EC();
      sub_1D798F830(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
      swift_allocError();
      *v45 = v41;
      v45[1] = v43;
      (*(*(v44 - 8) + 104))(v45, *MEMORY[0x1E69B5AE0], v44);
      swift_willThrow();
      return v43;
    }
  }

  if (v41 < 0)
  {
    goto LABEL_51;
  }

  if (v42)
  {
    v49 = sub_1D7D3167C();
    result = sub_1D7D3167C();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (v49 >= v41)
    {
      v51 = v41;
    }

    else
    {
      v51 = v49;
    }

    if (v49 < 0)
    {
      v51 = v41;
    }

    if (v41)
    {
      v48 = v51;
    }

    else
    {
      v48 = 0;
    }

    v46 = sub_1D7D3167C();
  }

  else
  {
    v46 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46 >= v41)
    {
      v47 = v41;
    }

    else
    {
      v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v41)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }
  }

  if (v46 < v48)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((v40 & 0xC000000000000001) != 0 && v48)
  {
    sub_1D799621C();

    v52 = 0;
    do
    {
      v53 = v52 + 1;
      sub_1D7D3147C();
      v52 = v53;
    }

    while (v48 != v53);
  }

  else
  {
  }

  v84 = v17;
  if (v42)
  {

    v54 = sub_1D7D3168C();
    a3 = v55;
    v42 = v56;
    v48 = v57 >> 1;
  }

  else
  {
    v54 = v40 & 0xFFFFFFFFFFFFFF8;
    a3 = ((v40 & 0xFFFFFFFFFFFFFF8) + 32);
  }

  v17 = v48 - v42;
  if (__OFSUB__(v48, v42))
  {
    goto LABEL_53;
  }

  v83 = v23;
  v82[2] = v40;
  if (!v17)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v63 = MEMORY[0x1E69E7CC0];
    sub_1D7A191EC(MEMORY[0x1E69E7CC0], sub_1D7A19A10);
    sub_1D7A191EC(v63, sub_1D7A19998);
    sub_1D7A1945C(v63, &qword_1EE0BF418, MEMORY[0x1E69B6750], sub_1D7A19978, MEMORY[0x1E69B6750]);
    v64 = v100;
    sub_1D7D2FD2C();
    sub_1D7A19B18(0, &qword_1EE0BE8A0, MEMORY[0x1E69B66E0], MEMORY[0x1E69E6F90]);
    v65 = v101;
    v66 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D7D3B4D0;
    (*(v65 + 16))(v67 + v66, v64, v102);
    v68 = sub_1D7D2CE6C();
    (*(*(v68 - 8) + 56))(v87, 1, 1, v68);

    v106 = sub_1D7A191EC(v63, sub_1D7A19890);
    sub_1D7A191EC(v63, sub_1D7A19890);
    sub_1D7A19318(v63, sub_1D7A19854);
    sub_1D7A191EC(v63, sub_1D7A19818);
    sub_1D7A19318(v63, sub_1D7A197A8);
    sub_1D7A19318(v63, sub_1D7A196CC);
    sub_1D7A1945C(v63, &unk_1EE0BF408, MEMORY[0x1E69B6838], sub_1D7A19640, MEMORY[0x1E69B6838]);
    a3 = v92;
    sub_1D7D2F30C();
    v17 = __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_formatService), *(v88 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_formatService + 24));
    sub_1D798EEFC();
    v40 = v83;
    sub_1D7D2DF2C();
    v69 = OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_knobs;
    sub_1D7990AB0(0);
    v71 = v70;
    v72 = *(v70 - 8);
    v73 = v89;
    (*(v72 + 16))(v89, v90 + v69, v70);
    (*(v72 + 56))(v73, 0, 1, v71);
    v74 = sub_1D7D2FAFC();
    (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
    LOBYTE(v107) = 2;
    sub_1D798FB0C(0, &unk_1EE0BF580, type metadata accessor for EndOfArticleFeedServiceConfig, sub_1D7990AF8, MEMORY[0x1E69B65B8]);
    swift_allocObject();

    sub_1D7D2FB8C();
    v75 = sub_1D7D2F59C();
    (*(*(v75 - 8) + 56))(v98, 1, 1, v75);
    v76 = qword_1EE0CA130;
    *MEMORY[0x1E69B5080];
    v77 = v76 == -1;
    v23 = v84;
    if (v77)
    {
LABEL_46:
      qword_1EE0CA138;
      v78 = v96;
      sub_1D7D2F69C();
      v43 = v17;
      v79 = v99;
      v80 = sub_1D7D2F36C();
      if (!v79)
      {
        v43 = v80;
      }

      (*(v97 + 8))(v78, v23);
      (*(v93 + 8))(a3, v94);
      (*(v101 + 8))(v100, v102);
      v81 = sub_1D7D2F06C();
      (*(*(v81 - 8) + 8))(v40, v81);
      return v43;
    }

LABEL_54:
    swift_once();
    goto LABEL_46;
  }

  v107 = MEMORY[0x1E69E7CC0];
  result = sub_1D7A5BFDC(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v82[1] = v54;
    v58 = v107;
    v105 = *MEMORY[0x1E69B6698];
    v103 = v106 + 32;
    v104 = (v106 + 104);
    if (v48 <= v42)
    {
      v59 = v42;
    }

    else
    {
      v59 = v48;
    }

    v40 = v59 - v42;
    v23 = &a3[v42];
    v60 = v86;
    a3 = v85;
    while (v40)
    {
      *a3 = *v23;
      (*v104)(a3, v105, v60);
      v107 = v58;
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      swift_unknownObjectRetain();
      if (v61 >= v62 >> 1)
      {
        sub_1D7A5BFDC(v62 > 1, v61 + 1, 1);
        v58 = v107;
      }

      *(v58 + 16) = v61 + 1;
      (*(v106 + 32))(v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v61, a3, v60);
      --v40;
      ++v23;
      if (!--v17)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1D7A17D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7A18F80(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2F03C();
  if (v13 >> 62)
  {
    v16 = sub_1D7D3167C();

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = sub_1D7D2E4EC();
    sub_1D798F830(&qword_1EE0BF940, MEMORY[0x1E69B5AE8]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69B5AD0], v15);
    swift_willThrow();
    return v15;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7A17FD4(a1, a3, v12);
  sub_1D7A19A4C(v12, v8, type metadata accessor for RecommendedEndOfArticleFeedGroup);
  type metadata accessor for EndOfArticleFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1D7A19B18(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v15 = sub_1D7D2940C();
  sub_1D7A19C04(v12, type metadata accessor for RecommendedEndOfArticleFeedGroup);
  return v15;
}

uint64_t sub_1D7A17FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a2;
  v48 = a3;
  v4 = sub_1D7D2EC6C();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2836C();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v44 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A19B18(0, &qword_1EE0BF9B0, MEMORY[0x1E69B59D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v42 - v12;
  v14 = sub_1D7D2E73C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_1D7D2F05C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D7D2DE2C();
  v23 = *(v43 - 8);
  v25 = MEMORY[0x1EEE9AC00](v43, v24);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v25);
  sub_1D798EEFC();
  v28 = sub_1D7D2DF0C();
  v42[1] = v29;
  v42[2] = v28;
  sub_1D7D2DF1C();
  sub_1D7D2DF1C();
  sub_1D7990AB0(0);
  sub_1D7D2E35C();
  sub_1D7D2E34C();
  v30 = sub_1D7D2E1CC();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  sub_1D7D2DDDC();
  strcpy(v52, "recommended::");
  HIWORD(v52[1]) = -4864;
  v31 = v44;
  sub_1D7D2835C();
  v32 = sub_1D7D2834C();
  v34 = v33;
  (*(v45 + 8))(v31, v46);
  MEMORY[0x1DA70DE90](v32, v34);

  v35 = v52[0];
  v36 = v52[1];
  v37 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  v38 = v48;
  v39 = v43;
  (*(v23 + 16))(v48 + *(v37 + 20), v27, v43);
  type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  v40 = v47;
  sub_1D7D2E61C();
  sub_1D7D2E70C();
  (*(v49 + 8))(v40, v50);
  result = (*(v23 + 8))(v27, v39);
  *v38 = v35;
  v38[1] = v36;
  return result;
}

uint64_t sub_1D7A18530(uint64_t a1)
{
  sub_1D7A18F80(0);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7D30C4C();
  sub_1D79F3AB0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D798F168(0, &qword_1EE0BE7E0);
  sub_1D7D315DC();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_1D7D29AAC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1D7D3145C();
  MEMORY[0x1DA70DE90](0xD00000000000002BLL, 0x80000001D7D6A7A0);
  v14 = a1;
  sub_1D7D315DC();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_1D7A19B18(0, &qword_1EE0C0288, sub_1D7A18F80, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A18784()
{
  v1 = OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_config;
  sub_1D798EEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D7A19C04(v0 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_knobs, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter()
{
  result = qword_1EE0C1260;
  if (!qword_1EE0C1260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A188A8()
{
  sub_1D798EEFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7A1897C()
{
  sub_1D7A19B18(0, &qword_1EE0C0250, sub_1D79F0070, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7A18A20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_config;
  sub_1D798EEFC();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for EndOfArticleFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7A18AB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles39RecommendedEndOfArticleFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  a1[4] = sub_1D798F830(&qword_1EE0C16E8, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  a1[5] = sub_1D798F830(&unk_1EC9E23A0, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7A19A4C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs);
}

uint64_t sub_1D7A18B9C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A19B18(0, &qword_1EE0BE860, sub_1D7A19AB4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_1D798EEFC();
  v3 = sub_1D7D2DEFC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A19C04(inited + 32, sub_1D7A19AB4);
  sub_1D7A19B18(0, &qword_1EE0C03A8, type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
  a1[3] = v5;
  a1[4] = sub_1D7A19B7C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7A18D24(uint64_t a1)
{
  v2 = sub_1D798F830(&qword_1EE0C1280, type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter);

  return MEMORY[0x1EEE44678](a1, v2);
}

unint64_t sub_1D7A18FFC(uint64_t a1, uint64_t a2)
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  v4 = sub_1D7D31ABC();

  return sub_1D7A19074(a1, a2, v4);
}

unint64_t sub_1D7A19074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D7D3197C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D7A191EC(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D7D316BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D7A18FFC(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7A19318(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D7D316BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D7A18FFC(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7A1945C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void, double), uint64_t (*a5)(void))
{
  v31 = a5;
  v32 = a2;
  v33 = a3;
  sub_1D7A19914(0, a2, a3);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = (&v30 - v12);
  v14 = *(a1 + 16);
  if (v14)
  {
    a4(0, v11);
    v15 = sub_1D7D316BC();
    v16 = *(v8 + 48);
    v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v18 = *(v9 + 72);

    while (1)
    {
      sub_1D7A19660(v17, v13, v32, v33);
      v19 = *v13;
      v20 = v13[1];
      result = sub_1D7A18FFC(*v13, v20);
      if (v22)
      {
        break;
      }

      v23 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v15[6] + 16 * result);
      *v24 = v19;
      v24[1] = v20;
      v25 = v15[7];
      v26 = v31(0);
      result = (*(*(v26 - 8) + 32))(v25 + *(*(v26 - 8) + 72) * v23, v13 + v16, v26);
      v27 = v15[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_10;
      }

      v15[2] = v29;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D7A19660(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D7A19914(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7A19708(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7A19B18(255, a3, a4, a5);
    v6 = sub_1D7D316CC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7A198B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D316CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7A19914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7A199B8()
{
  if (!qword_1EC9E2380)
  {
    v0 = sub_1D7D309CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2380);
    }
  }
}

uint64_t sub_1D7A19A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A19AB4()
{
  if (!qword_1EE0BF3E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF3E0);
    }
  }
}

void sub_1D7A19B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7A19B7C()
{
  result = qword_1EE0C03B0;
  if (!qword_1EE0C03B0)
  {
    sub_1D7A19B18(255, &qword_1EE0C03A8, type metadata accessor for RecommendedEndOfArticleFeedGroupEmitter, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C03B0);
  }

  return result;
}

uint64_t sub_1D7A19C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BottomPaletteFeatureContext()
{
  result = qword_1EE0C52C8;
  if (!qword_1EE0C52C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A19CD8()
{
  result = type metadata accessor for ArticleViewerPage(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2ACCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7A19D6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v49 = a2;
  v5 = sub_1D7D2CF3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2CBAC();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v43 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = v43 - v20;
  v21 = sub_1D7D2D20C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = &unk_1F532C638;
  v26 = swift_dynamicCastObjCProtocolConditional();
  if (v26)
  {
    v27 = v26;
    v43[0] = v6;
    v44 = v5;
    v28 = OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_layoutEnvironment;
    swift_beginAccess();
    v29 = *(v22 + 16);
    v43[1] = a4;
    v29(v25, a4 + v28, v21);
    sub_1D7A1AD9C(v27, v25);
    (*(v22 + 8))(v25, v21);
    v30 = v49;
    v31 = [v49 componentState];
    type metadata accessor for AdComponentState();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v34 = v47;
      v33 = v48;
      v35 = *(v47 + 16);
      v35(v17, v32 + OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState, v48);
      swift_unknownObjectRelease();
      v36 = v46;
      v37 = v17;
      v38 = v33;
      (*(v34 + 32))(v46, v37, v33);
    }

    else
    {
      swift_unknownObjectRelease();
      v36 = v46;
      v34 = v47;
      v38 = v48;
      (*(v47 + 104))(v46, *MEMORY[0x1E69B3EC8], v48);
      v35 = *(v34 + 16);
    }

    v40 = v43[0];
    v35(v13, v36, v38);
    sub_1D7D2CF1C();
    v41 = v36;
    v42 = v44;
    (*(v40 + 104))(v9, *MEMORY[0x1E69B4168], v44);
    [v30 absoluteFrame];
    swift_beginAccess();
    sub_1D7D2D1EC();
    swift_endAccess();
    (*(v40 + 8))(v9, v42);
    return (*(v34 + 8))(v41, v38);
  }

  else
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E69B4170], v5);
    [v49 absoluteFrame];
    swift_beginAccess();
    sub_1D7D2D1EC();
    swift_endAccess();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t type metadata accessor for ArticleAdLayoutProcessor()
{
  result = qword_1EE0C6D50;
  if (!qword_1EE0C6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A1A40C()
{
  result = sub_1D7D2D20C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D7A1A4B4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{

  v9 = a5;
  v30 = a1;
  v10 = [a1 allComponents];
  sub_1D7A1AAEC();
  v11 = sub_1D7D3063C();

  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v13 = 0;
    v32 = v11 & 0xFFFFFFFFFFFFFF8;
    v33 = v11 & 0xC000000000000001;
    v31 = v11;
    v28 = v9;
    while (v33)
    {
      v14 = MEMORY[0x1DA70EF00](v13, v11);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }

LABEL_11:
      v16 = [v14 identifier];
      if (!v16)
      {
        sub_1D7D3034C();
        v16 = sub_1D7D3031C();
        v11 = v31;
      }

      v17 = [a2 componentBlueprintForComponentIdentifier:v16 includeChildren:1];

      if (v17)
      {
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          v19 = [v18 identifier];
          if (!v19)
          {
            sub_1D7D3034C();
            v19 = sub_1D7D3031C();
          }

          v20 = [v30 componentsForContainerComponentWithIdentifier_];

          v11 = v31;
          if (v20)
          {
            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (v21)
            {
              v22 = [v21 layoutBlueprint];
              if (v22)
              {
                v23 = v22;

                v24 = v9;
                v25 = a2;
                v26 = v24;
                sub_1D7A1A4B4(v20, v23, a3, a4, v24);

                v20 = v26;
                a2 = v25;
                v9 = v28;
              }

              v11 = v31;
            }
          }
        }

        sub_1D7A19D6C(v14, v17, a4, v9);
      }

      swift_unknownObjectRelease();
      ++v13;
      if (v15 == i)
      {
        goto LABEL_26;
      }
    }

    if (v13 >= *(v32 + 16))
    {
      goto LABEL_24;
    }

    v14 = *(v11 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v15 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_11;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
}

void sub_1D7A1A7AC(void *a1, void *a2)
{
  sub_1D7A1AA94();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2D20C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 components];
  if (v15)
  {
    v21 = v15;
    if ([a1 isComplete])
    {
      if (qword_1EE0CABE0 != -1)
      {
        swift_once();
      }

      sub_1D7D30C6C();
      sub_1D7D29AAC();
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_bannerAdRequesterFactory], *&v2[OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_bannerAdRequesterFactory + 24]);
      v16 = v2;
      v17 = sub_1D7CAA158(a1);
      sub_1D7D2D1FC();
      v18 = OBJC_IVAR____TtC12NewsArticles24ArticleAdLayoutProcessor_layoutEnvironment;
      swift_beginAccess();
      (*(v10 + 40))(&v2[v18], v14, v9);
      swift_endAccess();

      v19 = v2;
      sub_1D7A1A4B4(v21, a1, v19, v17, v19);

      (*(v10 + 16))(v8, &v16[v18], v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1D7D2D3FC();
    }

    else
    {
      v20 = v21;
    }
  }
}

void sub_1D7A1AA94()
{
  if (!qword_1EE0BFAA0)
  {
    sub_1D7D2D20C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFAA0);
    }
  }
}

unint64_t sub_1D7A1AAEC()
{
  result = qword_1EE0BF138;
  if (!qword_1EE0BF138)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF138);
  }

  return result;
}

uint64_t sub_1D7A1AC64(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v4 = 0;
  v5 = OBJC_IVAR____TtC12NewsArticles19ReadingListObserver_onSaveObservers;
  v6 = result + 32;
  v20 = result + 32;
  v21 = *(result + 16);
  while (1)
  {
    v7 = (v6 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    swift_beginAccess();
    v10 = *(v3 + v5);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = sub_1D7A18FFC(v9, v8);
      if (v13)
      {
        break;
      }
    }

    swift_endAccess();
LABEL_4:
    ++v4;

    if (v4 == v2)
    {
      return result;
    }
  }

  v14 = *(*(v10 + 56) + 8 * v12);
  swift_endAccess();
  v15 = *(v14 + 16);

  if (!v15)
  {
LABEL_11:

    v6 = v20;
    v2 = v21;
    goto LABEL_4;
  }

  v16 = 0;
  v17 = v14 + 40;
  while (v16 < *(v14 + 16))
  {
    ++v16;
    v18 = *(v17 - 8);

    v18(v19);

    v17 += 16;
    if (v15 == v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D7A1AD9C(void *a1, uint64_t a2)
{
  v174 = a2;
  sub_1D7A1CC80();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v154 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2CBDC();
  v156 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v158 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A1CCF4(0, &qword_1EE0BFB78, MEMORY[0x1E69B3F80]);
  v153 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v155 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v157 = &v144 - v15;
  v16 = sub_1D7D2D35C();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v176 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1D7D2D20C();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v19);
  v172 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1D7D2CFFC();
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v21);
  v170 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1D7D2CE2C();
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v23);
  v166 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A1CDB8();
  v167 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v168 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v178 = &v144 - v30;
  v162 = sub_1D7D2CCBC();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v31);
  v163 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D7D2D1DC();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v33);
  v177 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D7D2CABC();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v180 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D7D2CBAC();
  v181 = *(v39 - 8);
  v182 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v144 - v45;
  v47 = type metadata accessor for ArticleBannerAd();
  v49 = MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v183 = &v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  v52 = v2[15];
  v53 = a1;
  v54 = [a1 identifier];
  if (!v54)
  {
    sub_1D7D3034C();
    v54 = sub_1D7D3031C();
  }

  v179 = v52;
  v55 = [v52 componentBlueprintForComponentIdentifier:v54 includeChildren:1];

  if (v55)
  {
    v151 = v7;
    v149 = v36;
    v150 = v35;
    sub_1D799CC84((v51 + 3), v187);
    __swift_project_boxed_opaque_existential_1(v187, v187[3]);
    v56 = [a1 placementIdentifier];
    if (v56)
    {
      v57 = v56;
      sub_1D7D3034C();

      v58 = [v55 componentState];
      v59 = v183;
      sub_1D7CFAC50();
      v60 = v59;

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v187);
      sub_1D7D2D56C();
      v61 = *MEMORY[0x1E69B3EC8];
      v63 = v181;
      v62 = v182;
      v64 = *(v181 + 104);
      v148 = v181 + 104;
      v147 = v64;
      v64(v42, v61, v182);
      LOBYTE(v57) = MEMORY[0x1DA70A5F0](v46, v42);
      v67 = *(v63 + 8);
      v66 = v63 + 8;
      v65 = v67;
      v67(v42, v62);
      v67(v46, v62);
      if ((v57 & 1) == 0)
      {
        sub_1D7A1D180(v60, type metadata accessor for ArticleBannerAd);

        return;
      }

      v146 = v66;
      v145 = v65;
      v68 = v53;
      v69 = [v53 adType];
      v70 = v179;
      v71 = [v179 layoutOptions];
      v72 = [v71 columnLayout];

      sub_1D7A1C27C(v72, v55, v69, v180);
      v73 = v51;
      [v55 contentFrame];
      v74 = [v70 layoutOptions];
      [v74 viewportSize];

      sub_1D7D3100C();
      v76 = v75;
      v78 = v77;
      v152 = v68;
      v79 = [v68 placementIdentifier];
      if (v79)
      {
        v80 = v79;
        sub_1D7D3034C();

        v81 = v152;
        v82 = [v152 placementType];
        v83 = MEMORY[0x1E69B3F68];
        if (v82)
        {
          v83 = MEMORY[0x1E69B3F70];
        }

        (v161)[13](v163, *v83, v162);
        sub_1D7BA3A9C(v81, v76, v78);
        v84 = v177;
        sub_1D7D2D1BC();
        v85 = v73[11];
        v163 = v73[12];
        v162 = __swift_project_boxed_opaque_existential_1(v73 + 8, v85);
        sub_1D7D2D1CC();
        v161 = v55;
        [v55 absoluteFrame];
        v86 = v166;
        sub_1D7D2CE1C();
        (*(v164 + 16))(v172, v174, v165);
        v87 = [v70 layoutOptions];
        [v87 viewportSize];

        v88 = [v70 layoutOptions];
        [v88 viewportSize];

        v89 = [v70 rootLayoutBlueprint];
        [v89 blueprintSize];

        sub_1D7D2D34C();
        v90 = v170;
        sub_1D7D2CFEC();
        v91 = v178;
        sub_1D7D2D38C();
        (*(v173 + 8))(v90, v175);
        (*(v169 + 8))(v86, v171);
        v92 = v91;
        v93 = v168;
        sub_1D7A1CE58(v92, v168);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v95 = v151;
        if (EnumCaseMultiPayload != 1)
        {
          v117 = sub_1D7D2CA6C();
          MEMORY[0x1EEE9AC00](v117, v118);
          v116 = v180;
          v119 = v152;
          v120 = v157;
          sub_1D7D2CD4C();

          v121 = v155;
          sub_1D7A1CEDC(v120, v155);
          v122 = v119;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D7A1CF5C(v121);
            v123 = *MEMORY[0x1E69B3EA8];
            v124 = sub_1D7D2CB9C();
            (*(*(v124 - 8) + 104))(v46, v123, v124);
            v125 = v182;
            v147(v46, *MEMORY[0x1E69B3E98], v182);
            v126 = type metadata accessor for AdComponentState();
            v127 = objc_allocWithZone(v126);
            v128 = sub_1D7A7FF20(v46);
            v129 = &v127[OBJC_IVAR____TtC12NewsArticles16AdComponentState_identifier];
            *v129 = v128;
            v129[1] = v130;
            (*(v181 + 16))(&v127[OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState], v46, v125);
            v185.receiver = v127;
            v185.super_class = v126;
            v131 = objc_msgSendSuper2(&v185, sel_init);
            v145(v46, v125);
            v132 = [v122 identifier];
            v114 = v150;
            v133 = v183;
            if (!v132)
            {
              sub_1D7D3034C();
              v132 = sub_1D7D3031C();
            }

            [v179 invalidateState:v131 forComponentWithIdentifier:v132];

            sub_1D7A1CF5C(v120);
            sub_1D7A1D180(v178, sub_1D7A1CDB8);
            (*(v159 + 8))(v84, v160);
            sub_1D7A1D180(v133, type metadata accessor for ArticleBannerAd);
          }

          else
          {
            sub_1D7A1CFD4();

            v134 = v182;
            v147(v46, *MEMORY[0x1E69B3ED0], v182);
            v135 = type metadata accessor for AdComponentState();
            v136 = objc_allocWithZone(v135);
            v137 = sub_1D7A7FF20(v46);
            v138 = &v136[OBJC_IVAR____TtC12NewsArticles16AdComponentState_identifier];
            *v138 = v137;
            v138[1] = v139;
            (*(v181 + 16))(&v136[OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState], v46, v134);
            v184.receiver = v136;
            v184.super_class = v135;
            v140 = objc_msgSendSuper2(&v184, sel_init);
            v145(v46, v134);
            v141 = [v122 identifier];
            v114 = v150;
            v142 = v183;
            if (!v141)
            {
              sub_1D7D3034C();
              v141 = sub_1D7D3031C();
            }

            [v179 invalidateState:v140 forComponentWithIdentifier:v141];

            sub_1D7A1CF5C(v120);
            sub_1D7A1D180(v178, sub_1D7A1CDB8);
            (*(v159 + 8))(v84, v160);
            sub_1D7A1D180(v142, type metadata accessor for ArticleBannerAd);
            sub_1D7A1CCF4(0, &qword_1EE0BFA50, MEMORY[0x1E69B4438]);
            (*(*(v143 - 8) + 8))(v121, v143);
          }

          v115 = v149;
          goto LABEL_23;
        }

        v96 = v156;
        v97 = v158;
        (*(v156 + 32))(v158, v93, v151);
        sub_1D798C6A0(&qword_1EE0BFBC8, MEMORY[0x1E69B3F10]);
        v98 = swift_allocError();
        (*(v96 + 16))(v99, v97, v95);
        sub_1D7A1CCF4(0, &qword_1EE0BFA50, MEMORY[0x1E69B4438]);
        v101 = v154;
        (*(*(v100 - 8) + 56))(v154, 1, 1, v100);
        v102 = [v152 placementIdentifier];
        if (v102)
        {
          v103 = v102;
          sub_1D7D3034C();

          sub_1D7D2D4DC();

          sub_1D7A1D180(v101, sub_1D7A1CC80);

          v104 = *MEMORY[0x1E69B3EA8];
          v105 = sub_1D7D2CB9C();
          (*(*(v105 - 8) + 104))(v46, v104, v105);
          v106 = v182;
          v147(v46, *MEMORY[0x1E69B3E98], v182);
          v107 = type metadata accessor for AdComponentState();
          v108 = objc_allocWithZone(v107);
          v109 = sub_1D7A7FF20(v46);
          v110 = &v108[OBJC_IVAR____TtC12NewsArticles16AdComponentState_identifier];
          *v110 = v109;
          v110[1] = v111;
          (*(v181 + 16))(&v108[OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState], v46, v106);
          v186.receiver = v108;
          v186.super_class = v107;
          v112 = objc_msgSendSuper2(&v186, sel_init);
          v145(v46, v106);
          v113 = [v152 identifier];
          if (!v113)
          {
            sub_1D7D3034C();
            v113 = sub_1D7D3031C();
          }

          [v179 invalidateState:v112 forComponentWithIdentifier:v113];

          (*(v96 + 8))(v158, v95);
          sub_1D7A1D180(v178, sub_1D7A1CDB8);
          (*(v159 + 8))(v177, v160);
          sub_1D7A1D180(v183, type metadata accessor for ArticleBannerAd);
          v114 = v150;
          v115 = v149;
          v116 = v180;
LABEL_23:
          (*(v115 + 8))(v116, v114);
          return;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1D7A1C27C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v16 = MEMORY[0x1E69B3E28];
      }

      else
      {
        v16 = MEMORY[0x1E69B3E20];
      }

      goto LABEL_14;
    }

    if (a3 == 6)
    {
      v16 = MEMORY[0x1E69B3E18];
      goto LABEL_14;
    }

LABEL_13:
    v16 = MEMORY[0x1E69B3E10];
LABEL_14:
    v17 = *v16;
    v18 = sub_1D7D2CABC();
    v14 = *(*(v18 - 8) + 104);
    v13 = v18;
    v19 = a4;
    v20 = v17;
    goto LABEL_15;
  }

  if (a3 < 2)
  {
    goto LABEL_13;
  }

  if (a3 == 2)
  {
    v16 = MEMORY[0x1E69B3E08];
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_13;
  }

  [a1 constrainedViewportSize];
  v8 = v7;
  [a1 minimumViewportWidthForLooseLayout];
  if (v8 < v9)
  {
    goto LABEL_13;
  }

  [a2 columnRange];
  v11 = v10;
  v12 = [a1 numberOfColumns];
  v13 = sub_1D7D2CABC();
  v14 = *(*(v13 - 8) + 104);
  if ((v11 & 0x8000000000000000) != 0 || v11 != v12)
  {
    v15 = MEMORY[0x1E69B3E30];
  }

  else
  {
    v15 = MEMORY[0x1E69B3E10];
  }

  v20 = *v15;
  v19 = a4;
LABEL_15:

  return v14(v19, v20, v13);
}

uint64_t sub_1D7A1C420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a3;
  v20 = a4;
  v23 = a5;
  v7 = sub_1D7D2CABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D7D2CA6C();
  (*(v8 + 16))(v11, a2, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v13, v11, v7);
  v16 = v20;
  *(v15 + v14) = v19;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1D7D2D04C();
  sub_1D7D2D0EC();
  sub_1D7D2D1DC();
  sub_1D798C6A0(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
  swift_unknownObjectRetain();

  sub_1D7D2CF8C();
}

uint64_t sub_1D7A1C670(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  sub_1D7A1D128();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2CDCC();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2CE8C();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2CABC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7D2CCAC();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a2, v16, v24);
  sub_1D7D2CC9C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C6A0(&qword_1EE0BFB80, MEMORY[0x1E69B3F60]);
  sub_1D7D2CFDC();
  v27 = [v45 advertising];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 JSONRepresentation];

    if (v29)
    {
      v30 = sub_1D7D3028C();

      v31 = sub_1D7B6F220(v30);

      if (v31)
      {
        v32 = v41;
        sub_1D7D2CE7C();
        v33 = a1[3];
        v45 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v33);
        sub_1D798C6A0(&unk_1EC9E5A00, MEMORY[0x1E69B40E8]);
        v34 = v43;
        sub_1D7D2CFDC();
        (*(v42 + 8))(v32, v34);
      }
    }
  }

  v35 = [*(v46 + 112) documentController];
  v36 = [v35 metadata];

  sub_1D7AE5EA0(v36, v9);
  v37 = v47;
  if ((*(v47 + 48))(v9, 1, v10) == 1)
  {
    (*(v22 + 8))(v26, v21);
    return sub_1D7A1D180(v9, sub_1D7A1D128);
  }

  else
  {
    v39 = v44;
    (*(v37 + 32))(v44, v9, v10);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C6A0(&unk_1EE0BFB30, MEMORY[0x1E69B4058]);
    sub_1D7D2CFDC();
    (*(v37 + 8))(v39, v10);
    return (*(v22 + 8))(v26, v21);
  }
}

uint64_t sub_1D7A1CBF4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7A1CC80()
{
  if (!qword_1EE0BFA40)
  {
    sub_1D7A1CCF4(255, &qword_1EE0BFA50, MEMORY[0x1E69B4438]);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFA40);
    }
  }
}

void sub_1D7A1CCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D04C();
    v8[1] = sub_1D7D2D1DC();
    v8[2] = sub_1D798C6A0(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    v8[3] = MEMORY[0x1E69B42B0];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7A1CDB8()
{
  if (!qword_1EE0BE7C0)
  {
    sub_1D7D2CBDC();
    sub_1D798C6A0(&qword_1EE0BFBC8, MEMORY[0x1E69B3F10]);
    v0 = sub_1D7D31ACC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE7C0);
    }
  }
}

uint64_t sub_1D7A1CE58(uint64_t a1, uint64_t a2)
{
  sub_1D7A1CDB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A1CEDC(uint64_t a1, uint64_t a2)
{
  sub_1D7A1CCF4(0, &qword_1EE0BFB78, MEMORY[0x1E69B3F80]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A1CF5C(uint64_t a1)
{
  sub_1D7A1CCF4(0, &qword_1EE0BFB78, MEMORY[0x1E69B3F80]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A1CFD4()
{
  if (!qword_1EE0BFA60)
  {
    sub_1D7A1CCF4(255, &qword_1EE0BFA50, MEMORY[0x1E69B4438]);
    sub_1D7A1CCF4(255, &qword_1EE0CBD30, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BFA60);
    }
  }
}

uint64_t sub_1D7A1D080(void *a1)
{
  v3 = *(sub_1D7D2CABC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7A1C670(a1, v1 + v4, v6, v7);
}

void sub_1D7A1D128()
{
  if (!qword_1EE0BFB20)
  {
    sub_1D7D2CDCC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFB20);
    }
  }
}

uint64_t sub_1D7A1D180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7A1D1E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 153))
  {
    return 0;
  }

  v4 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  if ((sub_1D7D2F94C() & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1D7CC1CDC();
  if ((~v7 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  sub_1D7A1ECE4(v5, v6, v7);
  ArticleViewerPage.article.getter(v48);
  v49 = v48[0];
  v50 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  if (!*(&v48[0] + 1))
  {
    return 0;
  }

  v8 = v50;
  swift_unknownObjectRetain();
  sub_1D7A1ED38(&v49, &qword_1EE0C0600, &type metadata for Article);
  ArticleViewerPage.article.getter(&v40);
  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  if (!*(&v40 + 1) || (v9 = v45, swift_unknownObjectRetain(), sub_1D7A1ED38(&v44, &qword_1EE0C0600, &type metadata for Article), v10 = [v9 sourceChannel], swift_unknownObjectRelease(), !v10))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v11 = [v8 sourceChannel];
  if (!v11)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *(v4 + 96);
  v14 = [v8 identifier];
  if (!v14)
  {
    sub_1D7D3034C();
    v14 = sub_1D7D3031C();
  }

  v15 = [v13 isArticleOnReadingList_];

  if (v15)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_23:
    swift_unknownObjectRelease();
    return 1;
  }

  v17 = *(v4 + 88);
  v18 = [v17 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v19 = [v12 asSection];
    if (!v19 || (v20 = [v19 parentID], swift_unknownObjectRelease(), !v20))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_24;
    }
  }

  else
  {
    v20 = [v12 identifier];
  }

  v21 = sub_1D7D3034C();
  v23 = v22;

  v24 = [v18 purchasedTagIDs];
  v25 = sub_1D7D309AC();

  LOBYTE(v24) = sub_1D7D053C8(v21, v23, v25);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v24)
  {
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_24:
  v26 = [objc_msgSend(v17 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v26, v26 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  v27 = MEMORY[0x1E69E7CA0];
  if (!*(&v39 + 1))
  {
    sub_1D7A1ED38(&v40, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_32;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v28 = 0;
    v30 = 0;
    goto LABEL_33;
  }

  v28 = v37;
  v29 = [v37 integerValue];
  if (v29 == -1)
  {

LABEL_44:
    v33 = [objc_msgSend(v17 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v34 = [v12 identifier];
    if (!v34)
    {
      sub_1D7D3034C();
      v34 = sub_1D7D3031C();
    }

    v35 = [v33 containsTagID_];

    if ((v35 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  v30 = v29;
LABEL_33:
  if (objc_getAssociatedObject(v26, ~v30))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40 = v38;
  v41 = v39;
  if (!*(&v39 + 1))
  {
    sub_1D7A1ED38(&v40, &qword_1EE0BE7A0, v27 + 8);
LABEL_41:

    if ((v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v31 = v37;
  v32 = [v31 integerValue];

  if ((v32 ^ v30))
  {
    goto LABEL_44;
  }

LABEL_47:
  v36 = [v8 isPaid];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v36 ^ 1;
}

double sub_1D7A1D7DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v50 = a3;
  sub_1D7A1EDA8(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - v11;
  sub_1D7A1EE10(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = qword_1EE0C7EA0;
  v51 = off_1EE0C7EA8;
  sub_1D7A1EEC4(a1, v12, sub_1D7A1EDA8);
  sub_1D7A1EDDC(0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = 1;
  v21 = v19(v12, 1, v17);
  v22 = sub_1D7A1EDA8;
  if (v21 != 1)
  {
    sub_1D7A1EEC4(v12, v16, type metadata accessor for ArticleViewerRecipeFeatureContext);
    v20 = 0;
    v22 = sub_1D7A1EDDC;
  }

  v23 = v22;

  sub_1D7A1F0B8(v12, v23);
  v24 = type metadata accessor for ArticleViewerRecipeFeatureContext(0);
  (*(*(v24 - 8) + 56))(v16, v20, 1, v24);
  sub_1D7A1EEC4(a1, v8, sub_1D7A1EDA8);
  if (v19(v8, 1, v18) == 1)
  {
    sub_1D7A1F0B8(v8, sub_1D7A1EDA8);
    memset(v53, 0, sizeof(v53));
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
  }

  else
  {
    sub_1D79DA880(&v8[*(v18 + 28)], v53);
    sub_1D7A1F0B8(v8, sub_1D7A1EDDC);
  }

  sub_1D7A1F14C(0, &qword_1EE0C1B00, type metadata accessor for ArticleViewerRecipeFeatureContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  v26 = v25;
  v27 = (a1 + *(v25 + 32));
  v29 = *v27;
  v28 = v27[1];
  v30 = sub_1D7A1DC9C(v16, v53, *v27, v28);
  v32 = v31;
  v34 = v33;
  sub_1D7A1ED38(v53, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D7A1F0B8(v16, sub_1D7A1EE10);
  v35 = *(v26 + 28);
  v36 = v49;
  sub_1D79DA880(v49, v53);
  v37 = sub_1D7A1DC9C(a1 + v35, v53, v29, v28);
  v39 = v38;
  LOBYTE(v29) = v40;
  sub_1D7A1ED38(v53, &qword_1EE0C2DF0, &type metadata for ArticleViewerFeatureUpdateOptions);
  sub_1D79DA880(v36, v53);
  v41 = *(v3 + 24);
  v42 = v50;
  *(v50 + 24) = &type metadata for BarButtonItemArticleViewerFeatureTransition;
  *(v42 + 32) = &off_1F52A4FC8;
  v43 = swift_allocObject();
  *v42 = v43;
  v44 = v51;
  *(v43 + 16) = v48;
  *(v43 + 24) = v44;
  *(v43 + 32) = v30;
  *(v43 + 40) = v32;
  *(v43 + 48) = v34;
  *(v43 + 56) = v37;
  *(v43 + 64) = v39;
  *(v43 + 72) = v29;
  v45 = v54;
  sub_1D7A1EE44(v30);
  sub_1D7A1EE44(v37);
  *(v43 + 96) = sub_1D7C550C4(v45);
  *(v43 + 104) = v41;
  v46 = *&v61;

  BarButtonOrder.init(for:)(&v52, v46);
  sub_1D7A1EE84(v37);
  sub_1D7A1EE84(v30);
  sub_1D79DA8DC(v53);
  result = *&v52;
  *(v43 + 80) = v52;
  *(v42 + 40) = 0;
  return result;
}

uint64_t sub_1D7A1DC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v85 = sub_1D7D29EAC();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v5);
  v86 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2C93C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v84 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v91 = (v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = (v78 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v78 - v21);
  sub_1D7A1EE10(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ArticleViewerRecipeFeatureContext(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v31 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v78 - v34;
  sub_1D7A1EEC4(a1, v26, sub_1D7A1EE10);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v36 = sub_1D7A1EE10;
    v37 = v26;
LABEL_8:
    sub_1D7A1F0B8(v37, v36);
    return 0;
  }

  sub_1D7A1F050(v26, v35, type metadata accessor for ArticleViewerRecipeFeatureContext);
  sub_1D7A1EEC4(v35, v22, type metadata accessor for ArticleViewerRecipeFeatureContext.Page);
  v38 = v35;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v22[5];
    v97 = v22[4];
    v98 = v39;
    v40 = v22[3];
    v95 = v22[2];
    v96 = v40;
    v41 = v22[1];
    v93 = *v22;
    v94 = v41;
    v42 = *(&v97 + 1);
    v43 = *(&v98 + 1);
    v44 = v98;
    sub_1D7A1EF2C(*(&v97 + 1), v98, *(&v98 + 1));
    sub_1D7A1EF80(&v93);
  }

  else
  {
    v45 = v92;
    sub_1D7A1F050(v22, v92, type metadata accessor for ArticleViewerArticlePage);
    v46 = (v45 + *(v10 + 40));
    v42 = *v46;
    v44 = v46[1];
    v43 = v46[2];
    sub_1D7A1EF2C(*v46, v44, v43);
    sub_1D7A1F0B8(v45, type metadata accessor for ArticleViewerArticlePage);
  }

  if ((~v43 & 0xF000000000000007) == 0)
  {
    v36 = type metadata accessor for ArticleViewerRecipeFeatureContext;
    v37 = v38;
    goto LABEL_8;
  }

  v81 = v13;
  v78[3] = sub_1D7A1E820();
  v78[2] = type metadata accessor for RecipeArticleBarButtonItem();
  sub_1D7D301EC();
  v78[1] = sub_1D7D3013C();
  sub_1D7992EFC(0, &qword_1EE0BAF70);
  v82 = v38;
  sub_1D7A1EEC4(v38, v31, type metadata accessor for ArticleViewerRecipeFeatureContext);
  v48 = (*(v28 + 80) + 56) & ~*(v28 + 80);
  v49 = swift_allocObject();
  v49[2] = v42;
  v49[3] = v44;
  v50 = v87;
  v51 = v88;
  v49[4] = v43;
  v49[5] = v50;
  v49[6] = v51;
  sub_1D7A1F050(v31, v49 + v48, type metadata accessor for ArticleViewerRecipeFeatureContext);
  v80 = v42;
  v87 = v44;
  v79 = v43;
  sub_1D7A1EF2C(v42, v44, v43);

  sub_1D7D311EC();
  v52 = sub_1D7D30C9C();
  v53 = sub_1D7D3031C();

  [v52 setTitle_];

  v54 = sub_1D7D3031C();

  [v52 setIdentifier_];

  if (*(v90 + 16) == 1)
  {
    sub_1D7992EFC(0, &unk_1EC9E24C0);
    v55 = sub_1D7D30C0C();
    [v52 setMenuRepresentation_];
  }

  v56 = v82;
  v57 = v89;
  sub_1D7A1EEC4(v82, v89, type metadata accessor for ArticleViewerRecipeFeatureContext.Page);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v57[1];
    v93 = *v57;
    v94 = v58;
    v59 = v57[3];
    v95 = v57[2];
    v96 = v59;
    v60 = v57[5];
    v97 = v57[4];
    v98 = v60;
    v61 = v94;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7A1EF80(&v93);
  }

  else
  {
    v62 = v57;
    v63 = v92;
    sub_1D7A1F050(v62, v92, type metadata accessor for ArticleViewerArticlePage);
    v61 = *(v63 + 16);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7A1F0B8(v63, type metadata accessor for ArticleViewerArticlePage);
  }

  swift_unknownObjectRelease();

  v64 = [v61 sourceChannel];
  swift_unknownObjectRelease();
  if (v64)
  {
    swift_unknownObjectRelease();
    sub_1D7D2C8FC();
    sub_1D7D2C91C();
    sub_1D7A1F14C(0, &unk_1EC9E24A0, MEMORY[0x1E69D7660], MEMORY[0x1E69E6F90]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1D7D3C680;
    v66 = v52;
    v67 = v52;
    sub_1D7D29E9C();
    v56 = v82;
    sub_1D7D29E7C();
    sub_1D7D29E8C();
    *&v93 = v65;
    sub_1D7A1F1B0(&unk_1EC9E6E40, MEMORY[0x1E69D7660]);
    sub_1D7A1F118(0);
    sub_1D7A1F1B0(&qword_1EC9E6E50, sub_1D7A1F118);
    sub_1D7D313AC();
    sub_1D7D29EBC();
    swift_allocObject();
    v68 = sub_1D7D29E5C();
  }

  else
  {
    v66 = v52;
    v68 = 0;
  }

  v69 = v91;
  sub_1D7A1EEC4(v56, v91, type metadata accessor for ArticleViewerRecipeFeatureContext.Page);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = v69[1];
    v93 = *v69;
    v94 = v70;
    v71 = v69[3];
    v95 = v69[2];
    v96 = v71;
    v72 = v69[5];
    v97 = v69[4];
    v98 = v72;
    v73 = v94;

    v74 = v73;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7A1EF80(&v93);
  }

  else
  {
    v75 = v92;
    sub_1D7A1F050(v69, v92, type metadata accessor for ArticleViewerArticlePage);
    v76 = *(v75 + 16);

    v74 = v76;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7A1F0B8(v75, type metadata accessor for ArticleViewerArticlePage);
  }

  swift_unknownObjectRelease();

  sub_1D79995B8(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D7D3B4D0;
  *(v77 + 32) = v66;
  *(v77 + 40) = v68;

  sub_1D7A1ECE4(v80, v87, v79);
  sub_1D7A1F0B8(v82, type metadata accessor for ArticleViewerRecipeFeatureContext);
  return v74;
}

uint64_t sub_1D7A1E820()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

void sub_1D7A1E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a5;
  v11 = type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v36 - v25);
  if (a4 < 0)
  {
    if (!a2)
    {
      return;
    }

    sub_1D7A1EEC4(a7, v14, type metadata accessor for ArticleViewerRecipeFeatureContext.Page);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v14[3];
      v22[2] = v14[2];
      v22[3] = v30;
      v31 = v14[5];
      v22[4] = v14[4];
      v22[5] = v31;
      v32 = v14[1];
      *v22 = *v14;
      v22[1] = v32;
    }

    else
    {
      sub_1D7A1F050(v14, v22, type metadata accessor for ArticleViewerArticlePage);
    }

    type metadata accessor for ArticleViewerPage(0);
    swift_storeEnumTagMultiPayload();
    sub_1D7A1F1F8();
    *(v22 + *(v35 + 48)) = a2;
    swift_storeEnumTagMultiPayload();

    v26 = v22;
  }

  else
  {
    sub_1D7A1EEC4(a7, v18, type metadata accessor for ArticleViewerRecipeFeatureContext.Page);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v18[3];
      v26[2] = v18[2];
      v26[3] = v27;
      v28 = v18[5];
      v26[4] = v18[4];
      v26[5] = v28;
      v29 = v18[1];
      *v26 = *v18;
      v26[1] = v29;
    }

    else
    {
      sub_1D7A1F050(v18, v26, type metadata accessor for ArticleViewerArticlePage);
    }

    type metadata accessor for ArticleViewerPage(0);
    swift_storeEnumTagMultiPayload();
    sub_1D7A1F344();
    v34 = (v26 + *(v33 + 64));
    *(v26 + *(v33 + 48)) = a4;
    *v34 = a2;
    v34[1] = a3;
    swift_storeEnumTagMultiPayload();
  }

  v37(v26);
  sub_1D7A1F0B8(v26, type metadata accessor for ArticleViewerFeatureAction);
}

uint64_t sub_1D7A1EC34()
{

  sub_1D79AD740(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A1ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1D7A1ECF8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D7A1ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_1D7A1ED38(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D79995B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A1EE44(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D7A1EE84(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7A1EEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A1EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    return sub_1D7A1EF40(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D7A1EF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v3 = vars8;
  }
}

void sub_1D7A1EFD4(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewerRecipeFeatureContext(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_1D7A1E944(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D7A1F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A1F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A1F14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A1F1B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7A1F1F8()
{
  if (!qword_1EC9E2EF0)
  {
    type metadata accessor for ArticleViewerPage(255);
    sub_1D7A1F26C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2EF0);
    }
  }
}

void sub_1D7A1F26C()
{
  if (!qword_1EC9E24D0)
  {
    sub_1D7A1F2DC();
    sub_1D79AC5C4();
    v0 = sub_1D7D308EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E24D0);
    }
  }
}

void sub_1D7A1F2DC()
{
  if (!qword_1EE0BB0B0)
  {
    sub_1D7992EFC(255, &qword_1EE0BECC0);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB0B0);
    }
  }
}

void sub_1D7A1F344()
{
  if (!qword_1EC9E24E0)
  {
    type metadata accessor for ArticleViewerPage(255);
    sub_1D79AC4C8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC9E24E0);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D7A1F3EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D7A1F434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A1F4AC(void *a1)
{
  v3 = v1;
  sub_1D7A20FB4(0, &qword_1EC9E24E8, sub_1D7A1FE38, &type metadata for UserConcernData.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A1FE38();
  sub_1D7D31B1C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  sub_1D7A1FE8C();
  sub_1D7D318BC();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D7A1FEE0();
    sub_1D7A207DC(&qword_1EC9E2508, sub_1D7A1FF30);
    sub_1D7D318BC();
    LOBYTE(v13[0]) = 2;
    sub_1D7D3188C();
    LOBYTE(v13[0]) = 3;
    sub_1D7D3188C();
    LOBYTE(v13[0]) = 4;
    sub_1D7D3188C();
    LOBYTE(v13[0]) = 5;
    sub_1D7D3188C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7A1F74C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(void), uint64_t a8, void (*a9)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  sub_1D7A20FB4(0, a6, a7, a8, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v21 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a9(v16, v17, v18);
  sub_1D7D31B1C();
  v23 = 0;
  v19 = v21[3];
  sub_1D7D3188C();
  if (!v19)
  {
    v22 = 1;
    sub_1D7D3188C();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D7A1F8D4()
{
  v1 = *v0;
  v2 = 0x526E7265636E6F63;
  v3 = 0x644972657375;
  v4 = 0x6449746E65696C63;
  if (v1 != 4)
  {
    v4 = 0x664F6E6F69676572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x49746E65746E6F63;
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

uint64_t sub_1D7A1F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A1FF84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A1F9E0(uint64_t a1)
{
  v2 = sub_1D7A1FE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A1FA1C(uint64_t a1)
{
  v2 = sub_1D7A1FE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D7A1FA58@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7A2019C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1D7A1FAD0(uint64_t a1)
{
  v2 = sub_1D7A20F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A1FB0C(uint64_t a1)
{
  v2 = sub_1D7A20F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A1FBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D7A1FCD0(uint64_t a1)
{
  v2 = sub_1D7A20B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A1FD0C(uint64_t a1)
{
  v2 = sub_1D7A20B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A1FD98@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, uint64_t *a6@<X8>)
{
  result = sub_1D7A20904(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

unint64_t sub_1D7A1FE38()
{
  result = qword_1EC9E24F0;
  if (!qword_1EC9E24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E24F0);
  }

  return result;
}

unint64_t sub_1D7A1FE8C()
{
  result = qword_1EC9E24F8;
  if (!qword_1EC9E24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E24F8);
  }

  return result;
}

void sub_1D7A1FEE0()
{
  if (!qword_1EC9E2500)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2500);
    }
  }
}

unint64_t sub_1D7A1FF30()
{
  result = qword_1EC9E2510;
  if (!qword_1EC9E2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2510);
  }

  return result;
}

uint64_t sub_1D7A1FF84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x526E7265636E6F63 && a2 == 0xED00006E6F736165;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D7D6ABB0 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x664F6E6F69676572 && a2 == 0xEE006E696769724FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D7A2019C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7A20FB4(0, &qword_1EC9E2518, sub_1D7A1FE38, &type metadata for UserConcernData.CodingKeys, MEMORY[0x1E69E6F48]);
  v49 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A1FE38();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v48 = a2;
  LOBYTE(v50) = 0;
  sub_1D7A20788();
  sub_1D7D317DC();
  v11 = v58;
  v46 = v57;
  v12 = v59;
  v13 = v60;
  sub_1D7A1FEE0();
  LOBYTE(v50) = 1;
  sub_1D7A207DC(&qword_1EC9E2528, sub_1D7A20848);
  sub_1D7D317DC();
  v47 = v11;
  v41 = v12;
  v45 = v57;
  LOBYTE(v57) = 2;
  v14 = sub_1D7D317AC();
  v44 = v15;
  LOBYTE(v57) = 3;
  v40 = sub_1D7D317AC();
  v43 = v16;
  LOBYTE(v57) = 4;
  v39 = sub_1D7D317AC();
  v42 = v17;
  v70 = 5;
  v18 = sub_1D7D317AC();
  v19 = *(v10 + 8);
  v20 = v18;
  v36 = v21;
  v19(v9, v49);
  v37 = v13;
  v22 = v11;
  v23 = v46;
  *&v50 = v46;
  *(&v50 + 1) = v22;
  v24 = v14;
  v38 = v14;
  v25 = v41;
  *&v51 = v41;
  *(&v51 + 1) = v13;
  *&v52 = v45;
  *(&v52 + 1) = v24;
  v26 = v44;
  v27 = v40;
  *&v53 = v44;
  *(&v53 + 1) = v40;
  v28 = v43;
  *&v54 = v43;
  *(&v54 + 1) = v39;
  *&v55 = v42;
  *(&v55 + 1) = v20;
  v29 = v36;
  v56 = v36;
  sub_1D7A2089C(&v50, &v57);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v57 = v23;
  v58 = v47;
  v59 = v25;
  v60 = v37;
  v61 = v45;
  v62 = v38;
  v63 = v26;
  v64 = v27;
  v65 = v28;
  v66 = v39;
  v67 = v42;
  v68 = v20;
  v69 = v29;
  result = sub_1D7A208D4(&v57);
  v31 = v55;
  v32 = v48;
  *(v48 + 64) = v54;
  *(v32 + 80) = v31;
  *(v32 + 96) = v56;
  v33 = v51;
  *v32 = v50;
  *(v32 + 16) = v33;
  v34 = v53;
  *(v32 + 32) = v52;
  *(v32 + 48) = v34;
  return result;
}

unint64_t sub_1D7A20788()
{
  result = qword_1EC9E2520;
  if (!qword_1EC9E2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2520);
  }

  return result;
}

uint64_t sub_1D7A207DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7A1FEE0();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7A20848()
{
  result = qword_1EC9E2530;
  if (!qword_1EC9E2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2530);
  }

  return result;
}

uint64_t sub_1D7A20904(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1D7A20FB4(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  a5();
  sub_1D7D31AFC();
  if (!v5)
  {
    v14 = v17;
    v19 = 0;
    v13 = sub_1D7D317AC();
    v18 = 1;
    sub_1D7D317AC();
    (*(v14 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_1D7A20B04()
{
  result = qword_1EC9E2540;
  if (!qword_1EC9E2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2540);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserConcernData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserConcernData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D7A20CB8(uint64_t a1, int a2)
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

uint64_t sub_1D7A20D00(uint64_t result, int a2, int a3)
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

unint64_t sub_1D7A20D54()
{
  result = qword_1EC9E2550;
  if (!qword_1EC9E2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2550);
  }

  return result;
}

unint64_t sub_1D7A20DAC()
{
  result = qword_1EC9E2558;
  if (!qword_1EC9E2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2558);
  }

  return result;
}

unint64_t sub_1D7A20E04()
{
  result = qword_1EC9E2560;
  if (!qword_1EC9E2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2560);
  }

  return result;
}

unint64_t sub_1D7A20E5C()
{
  result = qword_1EC9E2568;
  if (!qword_1EC9E2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2568);
  }

  return result;
}

unint64_t sub_1D7A20EB4()
{
  result = qword_1EC9E2570;
  if (!qword_1EC9E2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2570);
  }

  return result;
}

unint64_t sub_1D7A20F0C()
{
  result = qword_1EC9E2578;
  if (!qword_1EC9E2578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2578);
  }

  return result;
}

unint64_t sub_1D7A20F60()
{
  result = qword_1EC9E2588;
  if (!qword_1EC9E2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2588);
  }

  return result;
}

void sub_1D7A20FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D7A21030()
{
  result = qword_1EC9E2598;
  if (!qword_1EC9E2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2598);
  }

  return result;
}

unint64_t sub_1D7A21088()
{
  result = qword_1EC9E25A0;
  if (!qword_1EC9E25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25A0);
  }

  return result;
}

unint64_t sub_1D7A210E0()
{
  result = qword_1EC9E25A8;
  if (!qword_1EC9E25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25A8);
  }

  return result;
}

uint64_t sub_1D7A21168()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A212C0(void *a1)
{
  v2 = v1;
  sub_1D7A26478(0, &qword_1EE0BEAB8, sub_1D7A260FC, &_s8SectionsV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v74 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A260FC();
  sub_1D7D31B1C();
  v10 = *(v2 + 176);
  v11 = *(v2 + 144);
  v212 = *(v2 + 160);
  v213 = v10;
  v12 = *(v2 + 176);
  v214 = *(v2 + 192);
  v13 = *(v2 + 112);
  v14 = *(v2 + 80);
  v208 = *(v2 + 96);
  v209 = v13;
  v15 = *(v2 + 112);
  v16 = *(v2 + 144);
  v210 = *(v2 + 128);
  v211 = v16;
  v17 = *(v2 + 48);
  v18 = *(v2 + 16);
  v204 = *(v2 + 32);
  v205 = v17;
  v19 = *(v2 + 48);
  v20 = *(v2 + 80);
  v206 = *(v2 + 64);
  v207 = v20;
  v21 = *(v2 + 16);
  v203[0] = *v2;
  v203[1] = v21;
  v151 = v212;
  v152 = v12;
  v153 = *(v2 + 192);
  v147 = v208;
  v148 = v15;
  v149 = v210;
  v150 = v11;
  v143 = v204;
  v144 = v19;
  v145 = v206;
  v146 = v14;
  v215 = *(v2 + 208);
  v154 = *(v2 + 208);
  v141 = v203[0];
  v142 = v18;
  v220 = 0;
  sub_1D7A2628C(v203, v139);
  sub_1D7A262C4();
  v22 = v74[1];
  sub_1D7D318BC();
  v139[10] = v151;
  v139[11] = v152;
  v139[12] = v153;
  v140 = v154;
  v139[6] = v147;
  v139[7] = v148;
  v139[8] = v149;
  v139[9] = v150;
  v139[2] = v143;
  v139[3] = v144;
  v139[4] = v145;
  v139[5] = v146;
  v139[0] = v141;
  v139[1] = v142;
  if (v22)
  {
    v23 = v139;
  }

  else
  {
    sub_1D7A261A4(v139);
    v24 = *(v2 + 392);
    v25 = *(v2 + 360);
    v199 = *(v2 + 376);
    v200 = v24;
    v26 = *(v2 + 392);
    v201 = *(v2 + 408);
    v27 = *(v2 + 328);
    v28 = *(v2 + 296);
    v195 = *(v2 + 312);
    v196 = v27;
    v29 = *(v2 + 328);
    v30 = *(v2 + 360);
    v197 = *(v2 + 344);
    v198 = v30;
    v31 = *(v2 + 264);
    v32 = *(v2 + 280);
    v194[2] = *(v2 + 248);
    v194[3] = v31;
    v33 = *(v2 + 264);
    v34 = *(v2 + 296);
    v194[4] = *(v2 + 280);
    v194[5] = v34;
    v35 = *(v2 + 232);
    v194[0] = *(v2 + 216);
    v194[1] = v35;
    v135 = v199;
    v136 = v26;
    v137 = *(v2 + 408);
    v131 = v195;
    v132 = v29;
    v133 = v197;
    v134 = v25;
    v127 = *(v2 + 248);
    v128 = v33;
    v202 = *(v2 + 424);
    v138 = *(v2 + 424);
    v129 = v32;
    v130 = v28;
    v36 = *(v2 + 232);
    v125 = *(v2 + 216);
    v126 = v36;
    v219 = 1;
    sub_1D7A2628C(v194, v123);
    sub_1D7D318BC();
    v123[10] = v135;
    v123[11] = v136;
    v123[12] = v137;
    v124 = v138;
    v123[6] = v131;
    v123[7] = v132;
    v123[8] = v133;
    v123[9] = v134;
    v123[2] = v127;
    v123[3] = v128;
    v123[4] = v129;
    v123[5] = v130;
    v123[0] = v125;
    v123[1] = v126;
    sub_1D7A261A4(v123);
    v38 = *(v2 + 608);
    v39 = *(v2 + 576);
    v190 = *(v2 + 592);
    v191 = v38;
    v40 = *(v2 + 608);
    v192 = *(v2 + 624);
    v41 = *(v2 + 544);
    v42 = *(v2 + 512);
    v186 = *(v2 + 528);
    v187 = v41;
    v43 = *(v2 + 544);
    v44 = *(v2 + 576);
    v188 = *(v2 + 560);
    v189 = v44;
    v45 = *(v2 + 480);
    v46 = *(v2 + 448);
    v182 = *(v2 + 464);
    v183 = v45;
    v47 = *(v2 + 480);
    v48 = *(v2 + 512);
    v184 = *(v2 + 496);
    v185 = v48;
    v49 = *(v2 + 448);
    v181[0] = *(v2 + 432);
    v181[1] = v49;
    v119 = v190;
    v120 = v40;
    v121 = *(v2 + 624);
    v115 = v186;
    v116 = v43;
    v117 = v188;
    v118 = v39;
    v111 = v182;
    v112 = v47;
    v113 = v184;
    v114 = v42;
    v193 = *(v2 + 640);
    v122 = *(v2 + 640);
    v109 = v181[0];
    v110 = v46;
    v218 = 2;
    sub_1D7A26318(v181, v107);
    sub_1D7D3186C();
    v107[10] = v119;
    v107[11] = v120;
    v107[12] = v121;
    v108 = v122;
    v107[6] = v115;
    v107[7] = v116;
    v107[8] = v117;
    v107[9] = v118;
    v107[2] = v111;
    v107[3] = v112;
    v107[4] = v113;
    v107[5] = v114;
    v107[0] = v109;
    v107[1] = v110;
    sub_1D7A252F8(v107, sub_1D7A261D4);
    v50 = *(v2 + 824);
    v51 = *(v2 + 792);
    v177 = *(v2 + 808);
    v178 = v50;
    v52 = *(v2 + 824);
    v179 = *(v2 + 840);
    v53 = *(v2 + 760);
    v54 = *(v2 + 728);
    v173 = *(v2 + 744);
    v174 = v53;
    v55 = *(v2 + 760);
    v56 = *(v2 + 792);
    v175 = *(v2 + 776);
    v176 = v56;
    v57 = *(v2 + 696);
    v58 = *(v2 + 664);
    v169 = *(v2 + 680);
    v170 = v57;
    v59 = *(v2 + 696);
    v60 = *(v2 + 728);
    v171 = *(v2 + 712);
    v172 = v60;
    v61 = *(v2 + 664);
    v168[0] = *(v2 + 648);
    v168[1] = v61;
    v103 = v177;
    v104 = v52;
    v105 = *(v2 + 840);
    v99 = v173;
    v100 = v55;
    v101 = v175;
    v102 = v51;
    v95 = v169;
    v96 = v59;
    v97 = v171;
    v98 = v54;
    v180 = *(v2 + 856);
    v106 = *(v2 + 856);
    v93 = v168[0];
    v94 = v58;
    v217 = 3;
    sub_1D7A26318(v168, v91);
    sub_1D7D3186C();
    v91[10] = v103;
    v91[11] = v104;
    v91[12] = v105;
    v92 = v106;
    v91[6] = v99;
    v91[7] = v100;
    v91[8] = v101;
    v91[9] = v102;
    v91[2] = v95;
    v91[3] = v96;
    v91[4] = v97;
    v91[5] = v98;
    v91[0] = v93;
    v91[1] = v94;
    sub_1D7A252F8(v91, sub_1D7A261D4);
    v62 = *(v2 + 1040);
    v63 = *(v2 + 1008);
    v164 = *(v2 + 1024);
    v165 = v62;
    v166 = *(v2 + 1056);
    v64 = *(v2 + 976);
    v65 = *(v2 + 944);
    v160 = *(v2 + 960);
    v161 = v64;
    v66 = *(v2 + 976);
    v67 = *(v2 + 1008);
    v162 = *(v2 + 992);
    v163 = v67;
    v68 = *(v2 + 912);
    v69 = *(v2 + 880);
    v156 = *(v2 + 896);
    v157 = v68;
    v70 = *(v2 + 912);
    v71 = *(v2 + 944);
    v158 = *(v2 + 928);
    v159 = v71;
    v72 = *(v2 + 880);
    v155[0] = *(v2 + 864);
    v155[1] = v72;
    v73 = *(v2 + 1040);
    v87 = *(v2 + 1024);
    v88 = v73;
    v89 = *(v2 + 1056);
    v83 = v160;
    v84 = v66;
    v85 = v162;
    v86 = v63;
    v79 = v156;
    v80 = v70;
    v81 = v158;
    v82 = v65;
    v167 = *(v2 + 1072);
    v90 = *(v2 + 1072);
    v77 = v155[0];
    v78 = v69;
    v216 = 4;
    sub_1D7A2628C(v155, v75);
    sub_1D7D318BC();
    v75[10] = v87;
    v75[11] = v88;
    v75[12] = v89;
    v76 = v90;
    v75[6] = v83;
    v75[7] = v84;
    v75[8] = v85;
    v75[9] = v86;
    v75[2] = v79;
    v75[3] = v80;
    v75[4] = v81;
    v75[5] = v82;
    v75[0] = v77;
    v75[1] = v78;
    v23 = v75;
  }

  sub_1D7A261A4(v23);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7A21C94()
{
  v1 = *v0;
  v2 = 0x7972616D697270;
  v3 = 0x7972616974726574;
  v4 = 0x616E726574617571;
  if (v1 != 3)
  {
    v4 = 0x6C63697472416E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7261646E6F636573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7A21D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A23D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A21D60(uint64_t a1)
{
  v2 = sub_1D7A260FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A21D9C(uint64_t a1)
{
  v2 = sub_1D7A260FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D7A21DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1D7A23610(a1, a2);
  if (!v3)
  {
    return memcpy(a3, __src, 0x431uLL);
  }

  return result;
}

uint64_t sub_1D7A21E3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656873696C627570;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x656873696C627570;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7A21EE4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A21F68()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A21FD8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A22058@<X0>(char *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D7A220B8(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x656873696C627570;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D7A221B4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A2229C()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7A22370()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7A22454@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A23F0C();
  *a1 = result;
  return result;
}

void sub_1D7A22484(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6D6F724665726F6DLL;
  v5 = 0xEA00000000006461;
  v6 = 0x65526F5465726F6DLL;
  v7 = 0xED00006575737349;
  v8 = 0x6D6F724665726F6DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D7D671C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646574616C6572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles26ArticleRecirculationConfigV12OptionalRuleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles26ArticleRecirculationConfigV14RuleCollectionOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles26ArticleRecirculationConfigV7SectionO09SpecifiedF0VSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles26ArticleRecirculationConfigV7SectionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D7A225F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 209))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7A2264C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 208) = 0;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1D7A226C8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 208) = 0;
    result = 0.0;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

uint64_t sub_1D7A22728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_1D7A22770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7A228A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v13[1] = a3;
  sub_1D7A26478(0, &qword_1EE0BAEB8, sub_1D7A26424, &_s7SectionO22GroupSizeConfigurationV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A26424();
  sub_1D7D31B1C();
  v16 = 0;
  sub_1D7D318AC();
  if (!v4)
  {
    v15 = 1;
    sub_1D7D318AC();
    v14 = 2;
    sub_1D7D318AC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7A22A5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6C6F43656C746974;
    if (a1 != 2)
    {
      v6 = 0x7361746F7571;
    }

    if (a1)
    {
      v5 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746C7561666564;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 0x6C6C6F43656C7572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7453726564616568;
    if (a1 != 4)
    {
      v3 = 0x546E6F6974636573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7A22B80(void *a1)
{
  v2 = v1;
  sub_1D7A26478(0, &qword_1EE0BEAC0, sub_1D7A252A4, &_s7SectionO16SpecifiedSectionV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A252A4();
  sub_1D7D31B1C();
  LOBYTE(v25) = 0;
  v10 = v38;
  sub_1D7D3188C();
  if (!v10)
  {
    LOBYTE(v25) = 1;
    sub_1D7D3188C();
    LOBYTE(v25) = 2;
    sub_1D7D3188C();
    *&v25 = *(v2 + 48);
    LOBYTE(v22[0]) = 3;
    sub_1D7A257EC(0, &qword_1EE0BF498);
    sub_1D7A258C4(&qword_1EE0BF490, sub_1D7A2594C);
    sub_1D7D3186C();
    LOBYTE(v25) = *(v2 + 56);
    LOBYTE(v22[0]) = 4;
    sub_1D7A259A0();
    sub_1D7D318BC();
    LOBYTE(v25) = *(v2 + 57);
    LOBYTE(v22[0]) = 5;
    sub_1D7A259F4();
    sub_1D7D3186C();
    v12 = *(v2 + 112);
    v13 = *(v2 + 144);
    v35 = *(v2 + 128);
    v36 = v13;
    v14 = *(v2 + 80);
    v32[0] = *(v2 + 64);
    v32[1] = v14;
    v15 = *(v2 + 112);
    v17 = *(v2 + 64);
    v16 = *(v2 + 80);
    v33 = *(v2 + 96);
    v34 = v15;
    v18 = *(v2 + 144);
    v29 = v35;
    v30 = v18;
    v25 = v17;
    v26 = v16;
    v37 = *(v2 + 160);
    v31 = *(v2 + 160);
    v27 = v33;
    v28 = v12;
    v24 = 6;
    sub_1D7A25A48(v32, v22);
    sub_1D7A25AA4();
    sub_1D7D318BC();
    v22[4] = v29;
    v22[5] = v30;
    v23 = v31;
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    sub_1D7A254C0(v22);
    v21[0] = *(v2 + 168);
    *(v21 + 9) = *(v2 + 177);
    v20 = 7;
    sub_1D7A25AF8();
    sub_1D7D3186C();
    *&v21[0] = *(v2 + 200);
    BYTE8(v21[0]) = *(v2 + 208);
    v20 = 8;
    sub_1D7A25B4C();
    sub_1D7D3186C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7A23004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7A2418C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7A2302C(uint64_t a1)
{
  v2 = sub_1D7A26424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A23068(uint64_t a1)
{
  v2 = sub_1D7A26424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7A230A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7A23F58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D7A23100()
{
  sub_1D7D31A8C();
  sub_1D7A21168();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7A23150()
{
  sub_1D7D31A8C();
  sub_1D7A21168();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7A23194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A242B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D7A231C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7A22A5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7A2320C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7A242B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D7A23240(uint64_t a1)
{
  v2 = sub_1D7A252A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7A2327C(uint64_t a1)
{
  v2 = sub_1D7A252A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7A232B8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7A24304(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_1D7A2335C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D31B0C();
  v2 = v1[11];
  v21 = v1[10];
  v22 = v2;
  v23 = v1[12];
  v24 = *(v1 + 208);
  v3 = v1[7];
  v17 = v1[6];
  v18 = v3;
  v4 = v1[9];
  v19 = v1[8];
  v20 = v4;
  v5 = v1[3];
  v13 = v1[2];
  v14 = v5;
  v6 = v1[5];
  v15 = v1[4];
  v16 = v6;
  v7 = v1[1];
  v11 = *v1;
  v12 = v7;
  if (sub_1D7A25774(&v11) == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_1D7A257EC(0, &qword_1EE0BF4C0);
    sub_1D7A25844();
LABEL_6:
    sub_1D7D319BC();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v25[10] = v21;
  v25[11] = v22;
  v25[12] = v23;
  v26 = v24;
  v25[6] = v17;
  v25[7] = v18;
  v25[8] = v19;
  v25[9] = v20;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  if (sub_1D79FC17C(v25) != 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_1D7A25798();
    goto LABEL_6;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  sub_1D7D319AC();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_1D7A2356C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7A24AE4(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

void *sub_1D7A23610(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v15 = v5;
  sub_1D7A26478(0, &qword_1EE0BEB40, sub_1D7A260FC, &_s8SectionsV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v16 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - v9;
  v11 = v4[3];
  v94 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v11);
  sub_1D7A260FC();
  sub_1D7D31AFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v12 = v7;
  v78 = 0;
  sub_1D7A26150();
  v13 = v16;
  sub_1D7D317DC();
  v93[10] = v89;
  v93[11] = v90;
  v93[12] = v91;
  LOBYTE(v93[13]) = v92;
  v93[6] = v85;
  v93[7] = v86;
  v93[8] = v87;
  v93[9] = v88;
  v93[2] = v81;
  v93[3] = v82;
  v93[4] = v83;
  v93[5] = v84;
  v93[0] = v79;
  v93[1] = v80;
  v63 = 1;
  sub_1D7D317DC();
  *(&v93[24] + 8) = v75;
  *(&v93[25] + 8) = v76;
  *(&v93[20] + 8) = v71;
  *(&v93[21] + 8) = v72;
  *(&v93[22] + 8) = v73;
  *(&v93[23] + 8) = v74;
  *(&v93[16] + 8) = v67;
  *(&v93[17] + 8) = v68;
  *(&v93[18] + 8) = v69;
  *(&v93[19] + 8) = v70;
  *(&v93[15] + 8) = v66;
  *(&v93[13] + 8) = v64;
  BYTE8(v93[26]) = v77;
  *(&v93[14] + 8) = v65;
  v48 = 4;
  sub_1D7D317DC();
  v93[64] = v59;
  v93[65] = v60;
  v93[66] = v61;
  LOBYTE(v93[67]) = v62;
  v93[60] = v55;
  v93[61] = v56;
  v93[62] = v57;
  v93[63] = v58;
  v93[56] = v51;
  v93[57] = v52;
  v93[58] = v53;
  v93[59] = v54;
  v93[54] = v49;
  v93[55] = v50;
  v33 = 2;
  sub_1D7D3178C();
  v93[37] = v44;
  v93[38] = v45;
  v93[39] = v46;
  LOBYTE(v93[40]) = v47;
  v93[33] = v40;
  v93[34] = v41;
  v93[35] = v42;
  v93[36] = v43;
  v93[29] = v36;
  v93[30] = v37;
  v93[31] = v38;
  v93[32] = v39;
  v93[27] = v34;
  v93[28] = v35;
  v18[1079] = 3;
  sub_1D7D3178C();
  (*(v12 + 8))(v10, v13);
  *(&v93[50] + 8) = v29;
  *(&v93[51] + 8) = v30;
  *(&v93[52] + 8) = v31;
  *(&v93[46] + 8) = v25;
  *(&v93[47] + 8) = v26;
  *(&v93[48] + 8) = v27;
  *(&v93[49] + 8) = v28;
  *(&v93[42] + 8) = v21;
  *(&v93[43] + 8) = v22;
  *(&v93[44] + 8) = v23;
  *(&v93[45] + 8) = v24;
  *(&v93[40] + 8) = v19;
  *(&v93[41] + 8) = v20;
  BYTE8(v93[53]) = v32;
  memcpy(v17, v93, 0x431uLL);
  sub_1D7A26224(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v94);
  memcpy(v18, v93, 0x431uLL);
  sub_1D7A2625C(v18);
  return memcpy(v15, v17, 0x431uLL);
}

uint64_t sub_1D7A23D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xE800000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616E726574617571 && a2 == 0xEA00000000007972 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C63697472416E69 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7D3197C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7A23F0C()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7A23F58(void *a1)
{
  sub_1D7A26478(0, &qword_1EE0BAEE8, sub_1D7A26424, &_s7SectionO22GroupSizeConfigurationV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D7A26424();
  sub_1D7D31AFC();
  if (!v1)
  {
    v16 = 0;
    v10 = sub_1D7D3176C();
    if (v11)
    {
      v9 = 3;
    }

    else
    {
      v9 = v10;
    }

    v15 = 1;
    v13[1] = sub_1D7D3176C();
    v14 = 2;
    sub_1D7D3176C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D7A2418C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D7D6ACB0 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D6ACD0 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D6ACF0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D7D3197C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D7A242B8()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

double sub_1D7A24304@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_1D7A26478(0, &qword_1EE0BEB50, sub_1D7A252A4, &_s7SectionO16SpecifiedSectionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39 - v8;
  v10 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D7A252A4();
  v51 = v9;
  sub_1D7D31AFC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v87);
    return result;
  }

  v11 = v6;
  LOBYTE(v59) = 0;
  v12 = v5;
  v14 = sub_1D7D317AC();
  v16 = v15;
  LOBYTE(v59) = 1;
  v17 = sub_1D7D317AC();
  v49 = v18;
  v19 = v17;
  LOBYTE(v59) = 2;
  *&v47 = sub_1D7D317AC();
  *(&v47 + 1) = v20;
  sub_1D7A257EC(0, &qword_1EE0BF498);
  LOBYTE(v52) = 3;
  sub_1D7A258C4(&qword_1EE0BF488, sub_1D7A25514);
  sub_1D7D3178C();
  v48 = v59;
  LOBYTE(v52) = 4;
  sub_1D7A25568();
  sub_1D7D317DC();
  v45 = v19;
  v21 = v16;
  v22 = v59;
  LOBYTE(v52) = 5;
  sub_1D7A255BC();
  sub_1D7D3178C();
  v46 = 0;
  v23 = v22;
  v24 = v59;
  v75 = 6;
  sub_1D7A25610();
  v25 = v46;
  sub_1D7D317DC();
  v46 = v25;
  if (v25)
  {
    (*(v11 + 8))(v51, v12);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v26 = 0;
  }

  else
  {
    *&v86[54] = v79;
    *&v86[70] = v80;
    *&v86[86] = v81;
    *&v86[6] = v76;
    *&v86[22] = v77;
    v86[102] = v82;
    *&v86[38] = v78;
    LOBYTE(v52) = 7;
    sub_1D7A25664();
    v27 = v46;
    sub_1D7D3178C();
    v46 = v27;
    if (!v27)
    {
      v43 = *(&v59 + 1);
      v44 = v59;
      v42 = v60;
      v84 = BYTE8(v60);
      v72 = 8;
      sub_1D7A256B8();
      v28 = v46;
      sub_1D7D3178C();
      v46 = v28;
      if (!v28)
      {
        (*(v11 + 8))(v51, v12);
        *(&v55[3] + 10) = *&v86[48];
        *(&v55[4] + 10) = *&v86[64];
        *(&v55[5] + 10) = *&v86[80];
        *(v55 + 10) = *v86;
        *(&v55[1] + 10) = *&v86[16];
        v41 = v73;
        v40 = v74;
        *&v52 = v14;
        *(&v52 + 1) = v21;
        v29 = v45;
        v30 = v49;
        *&v53 = v45;
        *(&v53 + 1) = v49;
        v31 = *(&v47 + 1);
        v54 = v47;
        *&v55[0] = v48;
        BYTE8(v55[0]) = v23;
        BYTE9(v55[0]) = v24;
        LODWORD(v51) = v24;
        *(&v55[6] + 9) = *&v86[95];
        *(&v55[2] + 10) = *&v86[32];
        *(&v55[7] + 1) = *v85;
        DWORD1(v55[7]) = *&v85[3];
        *(&v55[7] + 1) = v44;
        *&v56 = v43;
        *(&v56 + 1) = v42;
        v39 = v84;
        LOBYTE(v57) = v84;
        *(&v57 + 1) = *v83;
        DWORD1(v57) = *&v83[3];
        *(&v57 + 1) = v73;
        v58 = v74;
        sub_1D7A2570C(&v52, &v59);
        __swift_destroy_boxed_opaque_existential_1(v87);
        *&v62[29] = *&v86[48];
        *&v62[37] = *&v86[64];
        *v63 = *&v86[80];
        *&v62[5] = *v86;
        *&v62[13] = *&v86[16];
        *&v59 = v14;
        *(&v59 + 1) = v21;
        *&v60 = v29;
        *(&v60 + 1) = v30;
        *&v61 = v47;
        *(&v61 + 1) = v31;
        *v62 = v48;
        LOBYTE(v62[4]) = v23;
        HIBYTE(v62[4]) = v51;
        *&v63[15] = *&v86[95];
        *&v62[21] = *&v86[32];
        *v64 = *v85;
        *&v64[3] = *&v85[3];
        v65 = v44;
        v66 = v43;
        v67 = v42;
        v68 = v39;
        *v69 = *v83;
        *&v69[3] = *&v83[3];
        v70 = v41;
        v71 = v40;
        sub_1D7A25744(&v59);
        v32 = v56;
        v33 = v50;
        *(v50 + 160) = v55[7];
        *(v33 + 176) = v32;
        *(v33 + 192) = v57;
        *(v33 + 208) = v58;
        v34 = v55[4];
        *(v33 + 96) = v55[3];
        *(v33 + 112) = v34;
        v35 = v55[6];
        *(v33 + 128) = v55[5];
        *(v33 + 144) = v35;
        v36 = v55[0];
        *(v33 + 32) = v54;
        *(v33 + 48) = v36;
        v37 = v55[2];
        *(v33 + 64) = v55[1];
        *(v33 + 80) = v37;
        result = *&v52;
        v38 = v53;
        *v33 = v52;
        *(v33 + 16) = v38;
        return result;
      }
    }

    (*(v11 + 8))(v51, v12);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v26 = 1;
  }

  if (v26)
  {
    *&v62[8] = *&v86[70];
    *&v62[16] = *&v86[86];
    LOBYTE(v62[24]) = v86[102];
    v59 = *&v86[6];
    v60 = *&v86[22];
    v61 = *&v86[38];
    *v62 = *&v86[54];
    sub_1D7A254C0(&v59);
  }

  return result;
}

double sub_1D7A24AE4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D7A25214();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A26478(0, &qword_1EE0BEB50, sub_1D7A252A4, &_s7SectionO16SpecifiedSectionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A252A4();
  v13 = v103;
  sub_1D7D31AFC();
  if (v13)
  {

    (*(v9 + 56))(v6, 1, 1, v8);
    sub_1D7A252F8(v6, sub_1D7A25214);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D31AEC();
    sub_1D799D69C(&v73, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    v15 = sub_1D7D3198C();
    if (v15 == 0x64656C6261736964 && v16 == 0xE800000000000000)
    {
    }

    else
    {
      v20 = sub_1D7D3197C();

      if ((v20 & 1) == 0)
      {
        *&v73 = 0;
        *(&v73 + 1) = 0xE000000000000000;
        sub_1D7D3145C();
        MEMORY[0x1DA70DE90](0xD000000000000056, 0x80000001D7D6AC50);
        MEMORY[0x1DA70DE90](0x64656C6261736964, 0xE800000000000000);
        MEMORY[0x1DA70DE90](34, 0xE100000000000000);
        v17 = v73;
        sub_1D7A25414();
        swift_allocError();
        *v18 = v17;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(&v44);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return result;
      }
    }

    sub_1D7A25468(&v59);
    v83 = v69;
    v84 = v70;
    v85 = v71;
    v86 = v72;
    v79 = v65;
    v80 = v66;
    v81 = v67;
    v82 = v68;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v73 = v59;
    v74 = v60;
    nullsub_1(&v73);
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    (*(v9 + 56))(v6, 0, 1, v8);
    (*(v9 + 32))(v12, v6, v8);
    v14 = *(sub_1D7D317EC() + 16);

    if (v14)
    {
      sub_1D799CC84(a1, v58);
      sub_1D7A24304(v58, v87);
      v40 = v87[10];
      v41 = v87[11];
      v42 = v87[12];
      v43 = v88;
      v36 = v87[6];
      v37 = v87[7];
      v38 = v87[8];
      v39 = v87[9];
      v32 = v87[2];
      v33 = v87[3];
      v34 = v87[4];
      v35 = v87[5];
      v30 = v87[0];
      v31 = v87[1];
      (*(v9 + 8))(v12, v8);
      v54 = v40;
      v55 = v41;
      v56 = v42;
      v57 = v43;
      v50 = v36;
      v51 = v37;
      v52 = v38;
      v53 = v39;
      v46 = v32;
      v47 = v33;
      v48 = v34;
      v49 = v35;
      v44 = v30;
      v45 = v31;
      nullsub_1(&v44);
      v69 = v54;
      v70 = v55;
      v71 = v56;
      v72 = v57;
      v65 = v50;
      v66 = v51;
      v67 = v52;
      v68 = v53;
      v61 = v46;
      v62 = v47;
      v63 = v48;
      v64 = v49;
      v59 = v44;
      v60 = v45;
      nullsub_1(&v59);
      v83 = v69;
      v84 = v70;
      v85 = v71;
      v86 = v72;
      v79 = v65;
      v80 = v66;
      v81 = v67;
      v82 = v68;
      v75 = v61;
      v76 = v62;
      v77 = v63;
      v78 = v64;
      v73 = v59;
      v74 = v60;
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      sub_1D7A25490(&v73);
    }
  }

  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v98 = v82;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v94 = v78;
  v89 = v73;
  v90 = v74;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v100;
  v22 = v29;
  *(v29 + 160) = v99;
  *(v22 + 176) = v21;
  *(v22 + 192) = v101;
  *(v22 + 208) = v102;
  v23 = v96;
  *(v22 + 96) = v95;
  *(v22 + 112) = v23;
  v24 = v98;
  *(v22 + 128) = v97;
  *(v22 + 144) = v24;
  v25 = v92;
  *(v22 + 32) = v91;
  *(v22 + 48) = v25;
  v26 = v94;
  *(v22 + 64) = v93;
  *(v22 + 80) = v26;
  result = *&v89;
  v27 = v90;
  *v22 = v89;
  *(v22 + 16) = v27;
  return result;
}

void sub_1D7A25214()
{
  if (!qword_1EE0BEB48)
  {
    sub_1D7A26478(255, &qword_1EE0BEB50, sub_1D7A252A4, &_s7SectionO16SpecifiedSectionV10CodingKeysON, MEMORY[0x1E69E6F48]);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEB48);
    }
  }
}

unint64_t sub_1D7A252A4()
{
  result = qword_1EE0C5C80;
  if (!qword_1EE0C5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C80);
  }

  return result;
}

uint64_t sub_1D7A252F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A25358()
{
  if (!qword_1EC9E25B0)
  {
    sub_1D7A253B0();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E25B0);
    }
  }
}

unint64_t sub_1D7A253B0()
{
  result = qword_1EE0BE7E8;
  if (!qword_1EE0BE7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BE7E8);
  }

  return result;
}

unint64_t sub_1D7A25414()
{
  result = qword_1EC9E25B8;
  if (!qword_1EC9E25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25B8);
  }

  return result;
}

double sub_1D7A25468(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_1D7A25490(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1D7D3E800;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

unint64_t sub_1D7A25514()
{
  result = qword_1EE0C5D00;
  if (!qword_1EE0C5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D00);
  }

  return result;
}

unint64_t sub_1D7A25568()
{
  result = qword_1EE0C5C38;
  if (!qword_1EE0C5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C38);
  }

  return result;
}

unint64_t sub_1D7A255BC()
{
  result = qword_1EE0C5C50;
  if (!qword_1EE0C5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C50);
  }

  return result;
}

unint64_t sub_1D7A25610()
{
  result = qword_1EE0C5D28;
  if (!qword_1EE0C5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D28);
  }

  return result;
}

unint64_t sub_1D7A25664()
{
  result = qword_1EE0C5C28;
  if (!qword_1EE0C5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C28);
  }

  return result;
}

unint64_t sub_1D7A256B8()
{
  result = qword_1EE0C5CD8;
  if (!qword_1EE0C5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CD8);
  }

  return result;
}

uint64_t sub_1D7A25774(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

unint64_t sub_1D7A25798()
{
  result = qword_1EE0C5C68;
  if (!qword_1EE0C5C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C68);
  }

  return result;
}

void sub_1D7A257EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D302AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D7A25844()
{
  result = qword_1EE0BF4B8;
  if (!qword_1EE0BF4B8)
  {
    sub_1D7A257EC(255, &qword_1EE0BF4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF4B8);
  }

  return result;
}

uint64_t sub_1D7A258C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7A257EC(255, &qword_1EE0BF498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7A2594C()
{
  result = qword_1EE0C5D08;
  if (!qword_1EE0C5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D08);
  }

  return result;
}

unint64_t sub_1D7A259A0()
{
  result = qword_1EE0C5C48;
  if (!qword_1EE0C5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C48);
  }

  return result;
}

unint64_t sub_1D7A259F4()
{
  result = qword_1EE0C5C60;
  if (!qword_1EE0C5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C60);
  }

  return result;
}

unint64_t sub_1D7A25AA4()
{
  result = qword_1EE0C5D30;
  if (!qword_1EE0C5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D30);
  }

  return result;
}

unint64_t sub_1D7A25AF8()
{
  result = qword_1EE0C5C30;
  if (!qword_1EE0C5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C30);
  }

  return result;
}

unint64_t sub_1D7A25B4C()
{
  result = qword_1EE0C5CE0;
  if (!qword_1EE0C5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5CE0);
  }

  return result;
}

uint64_t _s7SectionO16SpecifiedSectionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7SectionO16SpecifiedSectionV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles26ArticleRecirculationConfigV7SectionOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7A25D2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 1073))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1D7A25D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 1064) = 0;
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
    *(result + 1072) = 0;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 1073) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 1073) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D7A25F48()
{
  result = qword_1EC9E25C0;
  if (!qword_1EC9E25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25C0);
  }

  return result;
}

unint64_t sub_1D7A25FA0()
{
  result = qword_1EC9E25C8;
  if (!qword_1EC9E25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25C8);
  }

  return result;
}

unint64_t sub_1D7A25FF8()
{
  result = qword_1EC9E25D0;
  if (!qword_1EC9E25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25D0);
  }

  return result;
}

unint64_t sub_1D7A26050()
{
  result = qword_1EE0C5C70;
  if (!qword_1EE0C5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C70);
  }

  return result;
}

unint64_t sub_1D7A260A8()
{
  result = qword_1EE0C5C78;
  if (!qword_1EE0C5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C78);
  }

  return result;
}

unint64_t sub_1D7A260FC()
{
  result = qword_1EE0C5C00;
  if (!qword_1EE0C5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C00);
  }

  return result;
}

unint64_t sub_1D7A26150()
{
  result = qword_1EE0C5C18;
  if (!qword_1EE0C5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C18);
  }

  return result;
}

void sub_1D7A261D4()
{
  if (!qword_1EE0C5C10)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C5C10);
    }
  }
}

unint64_t sub_1D7A262C4()
{
  result = qword_1EE0C5C20;
  if (!qword_1EE0C5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C20);
  }

  return result;
}

uint64_t sub_1D7A26318(uint64_t a1, uint64_t a2)
{
  sub_1D7A261D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7A2637C()
{
  result = qword_1EE0C5C40;
  if (!qword_1EE0C5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C40);
  }

  return result;
}

unint64_t sub_1D7A263D0()
{
  result = qword_1EE0C5C58;
  if (!qword_1EE0C5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C58);
  }

  return result;
}

unint64_t sub_1D7A26424()
{
  result = qword_1EE0BCB80;
  if (!qword_1EE0BCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB80);
  }

  return result;
}

void sub_1D7A26478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for EndOfArticleFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndOfArticleFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7A26644()
{
  result = qword_1EC9E25D8;
  if (!qword_1EC9E25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25D8);
  }

  return result;
}

unint64_t sub_1D7A2669C()
{
  result = qword_1EC9E25E0;
  if (!qword_1EC9E25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E25E0);
  }

  return result;
}

unint64_t sub_1D7A266F4()
{
  result = qword_1EE0BCB70;
  if (!qword_1EE0BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB70);
  }

  return result;
}

unint64_t sub_1D7A2674C()
{
  result = qword_1EE0BCB78;
  if (!qword_1EE0BCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB78);
  }

  return result;
}

unint64_t sub_1D7A267A4()
{
  result = qword_1EE0C5BF0;
  if (!qword_1EE0C5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5BF0);
  }

  return result;
}

unint64_t sub_1D7A267FC()
{
  result = qword_1EE0C5BF8;
  if (!qword_1EE0C5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5BF8);
  }

  return result;
}

uint64_t type metadata accessor for AnalyticsEvent()
{
  result = qword_1EE0CA4A8;
  if (!qword_1EE0CA4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7A26908(uint64_t a1, uint64_t a2)
{
  sub_1D7A269F8(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1D7A045FC(319, v2);
    if (v3 <= 0x3F)
    {
      sub_1D7A26AFC(319, v3);
      if (v4 <= 0x3F)
      {
        sub_1D7A26C18();
        if (v5 <= 0x3F)
        {
          sub_1D7A26C84();
          if (v6 <= 0x3F)
          {
            sub_1D7A26CF0();
            if (v7 <= 0x3F)
            {
              sub_1D79F6A88();
              if (v8 <= 0x3F)
              {
                sub_1D79F6B64();
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D7A269F8(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0C9538)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for AnalyticsTimedData();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0C9538);
    }
  }
}

void sub_1D7A26AFC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0C9548)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for AnalyticsTimedData();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0C9548);
    }
  }
}

void sub_1D7A26C18()
{
  if (!qword_1EE0C9540)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0C9540);
    }
  }
}

void sub_1D7A26C84()
{
  if (!qword_1EE0C9530)
  {
    type metadata accessor for AnalyticsTimedData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C9530);
    }
  }
}

void sub_1D7A26CF0()
{
  if (!qword_1EE0C9CF8[0])
  {
    v0 = type metadata accessor for AnalyticsLinkData();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0C9CF8);
    }
  }
}

unint64_t sub_1D7A26D5C()
{
  result = qword_1EC9E2600;
  if (!qword_1EC9E2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2600);
  }

  return result;
}

uint64_t sub_1D7A26E40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7A26E88()
{
  result = qword_1EC9E37F0;
  if (!qword_1EC9E37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E37F0);
  }

  return result;
}

void *sub_1D7A26F20()
{
  v0 = type metadata accessor for ReportConcernLayoutSectionDescriptor();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A27074();
  sub_1D7D2B04C();
  sub_1D7A27160();
  v4 = sub_1D7D30AEC();
  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D7D3031C();

    [v6 setText_];
  }

  else
  {
  }

  sub_1D7A271AC();
  v9 = *(v8 + 48);
  v10 = sub_1D7D2B15C();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);
  return v4;
}

void sub_1D7A27074()
{
  if (!qword_1EC9E25E8)
  {
    type metadata accessor for ReportConcernLayoutSectionDescriptor();
    type metadata accessor for ReportConcernLayoutModel();
    sub_1D7A26E40(&unk_1EC9E7CB0, type metadata accessor for ReportConcernLayoutSectionDescriptor);
    sub_1D7A26E40(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel);
    v0 = sub_1D7D2B07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E25E8);
    }
  }
}

unint64_t sub_1D7A27160()
{
  result = qword_1EC9E25F0;
  if (!qword_1EC9E25F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E25F0);
  }

  return result;
}

void sub_1D7A271AC()
{
  if (!qword_1EC9E2640)
  {
    sub_1D7D2B15C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2640);
    }
  }
}

uint64_t sub_1D7A27218(void (*a1)(void *__return_ptr, _BYTE *))
{
  v3 = v1;
  sub_1D7A2BA98(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  v4 = sub_1D7A2BB00();
  v5 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BF4C(0, v5 & ~(v5 >> 63), 0);
    v19 = v23;
    v7 = sub_1D7D309EC();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = v4;
        v11 = v3;
        v12 = v10;
        v13 = sub_1D7D30AAC();
        sub_1D79D7DA4(v14, v20);
        v13(v21, 0);
        a1(v22, v20);
        v7 = v20;
        if (v2)
        {
          goto LABEL_13;
        }

        sub_1D7A2BB90(v20);
        v15 = v19;
        v23 = v19;
        v17 = *(v19 + 16);
        v16 = *(v19 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D7A5BF4C((v16 > 1), v17 + 1, 1);
          v15 = v23;
        }

        *(v15 + 16) = v17 + 1;
        v19 = v15;
        sub_1D79D7CBC(v22, v15 + 104 * v17 + 32);
        v3 = v11;
        v4 = v12;
        v7 = sub_1D7D30A6C();
        if (v9 == v5)
        {
          return v19;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    sub_1D7A2BB90(v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A27430(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = v2;
  v35 = a1;
  v36 = a2;
  v5 = type metadata accessor for ArticleViewerPage(0);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  sub_1D7A2B8F8();
  v13 = v12;
  v14 = sub_1D7A2B98C(&qword_1EE0C00C0, sub_1D7A2B8F8);
  v15 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BF6C(0, v15 & ~(v15 >> 63), 0);
    v39 = v41;
    v17 = sub_1D7D309EC();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v38 = v3;
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v37 = i + 1;
        v19 = v14;
        v20 = v4;
        v21 = v13;
        v22 = v19;
        v23 = sub_1D7D30AAC();
        v24 = v34;
        sub_1D79F93E8(v25, v34);
        v23(v40, 0);
        v26 = v11;
        v27 = v38;
        v35(v24);
        v38 = v27;
        v17 = v24;
        if (v27)
        {
          goto LABEL_13;
        }

        sub_1D7A2B9D4(v24);
        v28 = v39;
        v41 = v39;
        v30 = *(v39 + 16);
        v29 = *(v39 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D7A5BF6C(v29 > 1, v30 + 1, 1);
          v28 = v41;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v39 = v28;
        v32 = v28 + v31 + *(v33 + 72) * v30;
        v11 = v26;
        sub_1D7A2BA30(v26, v32, type metadata accessor for ArticleViewerPage);
        v4 = v20;
        v13 = v21;
        v14 = v22;
        v17 = sub_1D7D30A6C();
        if (v37 == v15)
        {
          return v39;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    sub_1D7A2B9D4(v17);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A2770C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  sub_1D7A2AC04(0, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v25 - v8;
  sub_1D7A27074();
  v30 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D87F8];
  sub_1D7A2AC04(0, &qword_1EC9E2630, MEMORY[0x1E69D87F8]);
  sub_1D7A2AD3C(&qword_1EC9E2638, &qword_1EC9E2630, v13);
  v14 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C02C(0, v14 & ~(v14 >> 63), 0);
    v36 = v38;
    sub_1D7D309EC();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = v6;
      v17 = 0;
      v28 = (v16 + 16);
      v29 = (v16 + 8);
      v25[1] = v33 + 32;
      v26 = v14;
      v27 = v9;
      while (!__OFADD__(v17, 1))
      {
        v34 = v17 + 1;
        v18 = sub_1D7D30AAC();
        (*v28)(v9);
        v18(v37, 0);
        v31(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v19 = v9;
        v20 = v5;
        (*v29)(v19, v5);
        v21 = v36;
        v38 = v36;
        v23 = *(v36 + 16);
        v22 = *(v36 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7A5C02C(v22 > 1, v23 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v36 = v21;
        (*(v33 + 32))(v21 + v24 + *(v33 + 72) * v23, v35, v30);
        sub_1D7D30A6C();
        ++v17;
        v5 = v20;
        v9 = v27;
        if (v34 == v26)
        {
          return v36;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v29)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A27AD8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  sub_1D7A2BA98(0, &qword_1EC9E5940, sub_1D7A26E88, &type metadata for ReportConcernModel, MEMORY[0x1E69D76A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v25 - v8;
  sub_1D7A2ACA8();
  v30 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D7980];
  sub_1D7A2AC04(0, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
  sub_1D7A2AD3C(&qword_1EC9E2658, &unk_1EC9E2620, v13);
  v14 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C07C(0, v14 & ~(v14 >> 63), 0);
    v36 = v38;
    sub_1D7D309EC();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = v6;
      v17 = 0;
      v28 = (v16 + 16);
      v29 = (v16 + 8);
      v25[1] = v33 + 32;
      v26 = v14;
      v27 = v9;
      while (!__OFADD__(v17, 1))
      {
        v34 = v17 + 1;
        v18 = sub_1D7D30AAC();
        (*v28)(v9);
        v18(v37, 0);
        v31(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v19 = v9;
        v20 = v5;
        (*v29)(v19, v5);
        v21 = v36;
        v38 = v36;
        v23 = *(v36 + 16);
        v22 = *(v36 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7A5C07C(v22 > 1, v23 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v36 = v21;
        (*(v33 + 32))(v21 + v24 + *(v33 + 72) * v23, v35, v30);
        sub_1D7D30A6C();
        ++v17;
        v5 = v20;
        v9 = v27;
        if (v34 == v26)
        {
          return v36;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v29)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A27EC0(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_1D7A2AFB8();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v39 = &v30 - v13;
  sub_1D7A2B04C();
  v15 = v14;
  v16 = sub_1D7A2B98C(&qword_1EE0C0060, sub_1D7A2B04C);
  v17 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C0CC(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_1D7D309EC();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_1D7D30AAC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D7A5C0CC(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_1D7D30A6C();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A281FC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  sub_1D7A2B158(0, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v25 - v8;
  sub_1D7A2B1DC();
  v30 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D87F8];
  sub_1D7A2B158(0, &qword_1EC9E8690, MEMORY[0x1E69D87F8]);
  sub_1D7A2B2C8(&unk_1EC9E26D0, &qword_1EC9E8690, v13);
  v14 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C15C(0, v14 & ~(v14 >> 63), 0);
    v36 = v38;
    sub_1D7D309EC();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = v6;
      v17 = 0;
      v28 = (v16 + 16);
      v29 = (v16 + 8);
      v25[1] = v33 + 32;
      v26 = v14;
      v27 = v9;
      while (!__OFADD__(v17, 1))
      {
        v34 = v17 + 1;
        v18 = sub_1D7D30AAC();
        (*v28)(v9);
        v18(v37, 0);
        v31(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v19 = v9;
        v20 = v5;
        (*v29)(v19, v5);
        v21 = v36;
        v38 = v36;
        v23 = *(v36 + 16);
        v22 = *(v36 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7A5C15C(v22 > 1, v23 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v36 = v21;
        (*(v33 + 32))(v21 + v24 + *(v33 + 72) * v23, v35, v30);
        sub_1D7D30A6C();
        ++v17;
        v5 = v20;
        v9 = v27;
        if (v34 == v26)
        {
          return v36;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v29)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A285C8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  sub_1D7A2BA98(0, &qword_1EC9E32F0, sub_1D7A13440, &type metadata for ReportConcernDetailModel, MEMORY[0x1E69D76A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v25 - v8;
  sub_1D7A2B30C();
  v30 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v35 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D7980];
  sub_1D7A2B158(0, &qword_1EC9E32E0, MEMORY[0x1E69D7980]);
  sub_1D7A2B2C8(&qword_1EC9E26E8, &qword_1EC9E32E0, v13);
  v14 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C1AC(0, v14 & ~(v14 >> 63), 0);
    v36 = v38;
    sub_1D7D309EC();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = v6;
      v17 = 0;
      v28 = (v16 + 16);
      v29 = (v16 + 8);
      v25[1] = v33 + 32;
      v26 = v14;
      v27 = v9;
      while (!__OFADD__(v17, 1))
      {
        v34 = v17 + 1;
        v18 = sub_1D7D30AAC();
        (*v28)(v9);
        v18(v37, 0);
        v31(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v19 = v9;
        v20 = v5;
        (*v29)(v19, v5);
        v21 = v36;
        v38 = v36;
        v23 = *(v36 + 16);
        v22 = *(v36 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7A5C1AC(v22 > 1, v23 + 1, 1);
          v21 = v38;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v36 = v21;
        (*(v33 + 32))(v21 + v24 + *(v33 + 72) * v23, v35, v30);
        sub_1D7D30A6C();
        ++v17;
        v5 = v20;
        v9 = v27;
        if (v34 == v26)
        {
          return v36;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v29)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A289B0(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_1D7A2B3A0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B48C();
  v34 = v12;
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598();
  v16 = v15;
  v17 = sub_1D7A2B98C(&qword_1EC9E2718, sub_1D7A2B598);
  v18 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C5EC(0, v18 & ~(v18 >> 63), 0);
    v40 = v43;
    result = sub_1D7D309EC();
    if ((v18 & 0x8000000000000000) == 0)
    {
      v39 = v17;
      v20 = 0;
      v32 = (v8 + 16);
      v33 = (v8 + 8);
      v30[0] = v37 + 32;
      v30[1] = v16;
      v31 = v11;
      while (1)
      {
        v21 = v18;
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = sub_1D7D30AAC();
        (*v32)(v11);
        v23(v42, 0);
        v35(v11, v42);
        if (v4)
        {
          (*v33)(v11, v7);
        }

        v38 = 0;
        v24 = v5;
        (*v33)(v11, v7);
        v25 = v40;
        v43 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D7A5C5EC(v26 > 1, v27 + 1, 1);
          v25 = v43;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v41, v34);
        v5 = v24;
        result = sub_1D7D30A6C();
        ++v20;
        v29 = v22 == v21;
        v18 = v21;
        v11 = v31;
        v4 = v38;
        if (v29)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A28D44(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1D7A5C734(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;

    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D7A5C734((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A28E70(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_1D79ECCB8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B684();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B790();
  sub_1D7A2B98C(&qword_1EC9E2748, sub_1D7A2B790);
  v13 = sub_1D7D30A2C();
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C898(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_1D7D309EC();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_1D7D30AAC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D7A5C898(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_1D7D30A6C();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D7A29208(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v6 = type metadata accessor for TableOfContentsPDFCellViewLayout.Context();
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v48 = MEMORY[0x1E69E7CC0];
  sub_1D7A5C8E8(0, v10, 0);
  v11 = v48;
  v12 = (a3 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v12[3];
    v15 = v12[5];
    v45 = v12[4];
    v46 = v15;
    v16 = v12[5];
    v47 = v12[6];
    v17 = v12[1];
    v42[0] = *v12;
    v42[1] = v17;
    v18 = v12[3];
    v20 = *v12;
    v19 = v12[1];
    v43 = v12[2];
    v44 = v18;
    v39 = v45;
    v40 = v16;
    v41 = v12[6];
    v35 = v20;
    v36 = v19;
    v37 = v43;
    v38 = v14;
    sub_1D7A2B848(v42, &v28);
    v26(&v35);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    sub_1D7A2B8A4(&v28);
    v48 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D7A5C8E8(v21 > 1, v22 + 1, 1);
      v11 = v48;
    }

    *(v11 + 16) = v22 + 1;
    sub_1D7A2BA30(v9, v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TableOfContentsPDFCellViewLayout.Context);
    if (!i)
    {
      return v11;
    }

    v12 += 7;
  }

  v32 = v39;
  v33 = v40;
  v34 = v41;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  sub_1D7A2B8A4(&v28);

  __break(1u);
  return result;
}

uint64_t sub_1D7A29504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReportConcernLayoutSectionDescriptor();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A2AC04(0, &unk_1EC9E2620, MEMORY[0x1E69D7980]);
  sub_1D7D2A43C();
  if (v16)
  {
    if (qword_1EC9DFE10 != -1)
    {
      swift_once();
    }

    v9 = &qword_1ECA0BBE0;
  }

  else
  {
    if (qword_1EC9DFE08 != -1)
    {
      swift_once();
    }

    v9 = &qword_1ECA0BBD0;
  }

  v10 = *v9;

  *v8 = v10;
  v8[1] = v11;
  sub_1D7D2A43C();
  sub_1D7A2AD80(0, &qword_1EC9E2640);
  v12 = sub_1D7D2B14C();
  MEMORY[0x1EEE9AC00](v12, v13);
  *(&v15 - 2) = a2;
  *(&v15 - 1) = a3;
  sub_1D7A27AD8(sub_1D7A2AC88, (&v15 - 4));
  type metadata accessor for ReportConcernLayoutModel();
  sub_1D7A2B98C(&unk_1EC9E7CB0, type metadata accessor for ReportConcernLayoutSectionDescriptor);
  sub_1D7A2B98C(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel);
  return sub_1D7D2B03C();
}

uint64_t sub_1D7A297A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v121 = a1;
  v140 = a2;
  v116 = sub_1D7D2B15C();
  v114 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116, v2);
  v113 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for ReportConcernLayoutModel();
  MEMORY[0x1EEE9AC00](v139, v4);
  v6 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1D7D2F3FC();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v7);
  v134 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1D7A2ADEC(0, &unk_1EC9E2660, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v133 = v99 - v12;
  v128 = sub_1D7D2F41C();
  MEMORY[0x1EEE9AC00](v128, v13);
  v130 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D7D2F46C();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v15);
  v129 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D7D301FC();
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v17);
  v122 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7D2ECFC();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v120 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1D7D2EB4C();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v22);
  v119 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2ADEC(0, &unk_1EE0BF9F8, MEMORY[0x1E69B58F8], v9);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v112 = v99 - v26;
  sub_1D7A2ADEC(0, &unk_1EE0BF9D0, MEMORY[0x1E69B59B8], v9);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v111 = v99 - v29;
  sub_1D7A2ADEC(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], v9);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v110 = v99 - v32;
  v33 = sub_1D7D2ED3C();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v118 = v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D7D2F44C();
  v127 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v138 = v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D7D2F00C();
  v39 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v40);
  v108 = v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D7D288EC();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1D7D2889C();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v47);
  *&v141 = v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2BA98(0, &qword_1EC9E5940, sub_1D7A26E88, &type metadata for ReportConcernModel, MEMORY[0x1E69D76A0]);
  sub_1D7D29EEC();
  *&v149[25] = *&v147[9];
  v148 = v145;
  *v149 = v146;
  *&v149[16] = *v147;
  v137 = v145;
  if (v147[24])
  {
    v50 = *&v149[24];
    v49 = *&v149[32];
    v52 = *(&v148 + 1);
    v51 = *v149;
    v141 = *&v149[8];
    v53 = v113;
    sub_1D7D2B14C();
    sub_1D7A2AD80(0, &qword_1EC9E2670);
    v55 = *(v54 + 48);
    *v6 = v137;
    *(v6 + 1) = v52;
    *(v6 + 2) = v51;
    *(v6 + 24) = v141;
    *(v6 + 5) = v50;
    *(v6 + 6) = v49;
    v56 = v114;
    v57 = v116;
    (*(v114 + 16))(&v6[v55], v53, v116);
    swift_storeEnumTagMultiPayload();
    sub_1D7A2B98C(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel);
    sub_1D7D2ABAC();
    return (*(v56 + 8))(v53, v57);
  }

  else
  {
    v114 = v36;
    v116 = v6;
    sub_1D7D2AF9C();
    sub_1D7D3100C();
    v113 = v59;
    v107 = v60;
    sub_1D7D2AF9C();
    v106 = v61;
    v105 = v62;
    sub_1D7D2AFDC();
    v104 = v63;
    v103 = v64;
    sub_1D7D2AF7C();
    v102 = v65;
    v101 = v66;
    sub_1D7D2AFEC();
    v99[2] = v67;
    v99[1] = v68;
    sub_1D7D2AFCC();
    sub_1D7D2AF8C();
    sub_1D7D2AFBC();
    sub_1D7D2AFFC();
    sub_1D7D2AFAC();
    v69 = *MEMORY[0x1E69D7278];
    v70 = *(v43 + 104);
    v100 = v42;
    v70(v46, v69, v42);
    sub_1D7D2886C();
    __swift_project_boxed_opaque_existential_1((v121 + 16), *(v121 + 40));
    v71 = v108;
    v72 = v109;
    (*(v39 + 104))(v108, *MEMORY[0x1E69B6108], v109);
    sub_1D7D2887C();
    sub_1D7D2F54C();
    (*(v43 + 8))(v46, v100);
    (*(v39 + 8))(v71, v72);
    sub_1D7D2F0BC();
    sub_1D7D2F0AC();
    v73 = sub_1D7D2CB2C();
    (*(*(v73 - 8) + 56))(v110, 1, 1, v73);
    v74 = sub_1D7D2E11C();
    (*(*(v74 - 8) + 56))(v111, 1, 1, v74);
    v75 = sub_1D7D2DEAC();
    (*(*(v75 - 8) + 56))(v112, 1, 1, v75);
    (*(v115 + 104))(v119, *MEMORY[0x1E69B5E08], v117);
    swift_unknownObjectRetain();
    sub_1D7D2ECEC();
    v76 = v137;
    sub_1D7D2ECAC();
    sub_1D799CC84(v144, &v143);
    v142[3] = sub_1D7D2EF4C();
    v142[4] = MEMORY[0x1E69B60C8];
    __swift_allocate_boxed_opaque_existential_1(v142);
    sub_1D7D2EF3C();
    sub_1D7D2E87C();
    swift_allocObject();
    sub_1D7D2E85C();
    v77 = v123;
    v78 = v122;
    v79 = v125;
    (*(v123 + 104))(v122, *MEMORY[0x1E69B68A8], v125);
    sub_1D7D2E86C();

    (*(v77 + 8))(v78, v79);
    v80 = v138;
    sub_1D7D2F42C();
    v143 = MEMORY[0x1E69E7CC0];
    sub_1D7A2B98C(&unk_1EC9E3300, MEMORY[0x1E69B62A8]);
    sub_1D7A2ADEC(0, &unk_1EC9E2680, MEMORY[0x1E69B62A8], MEMORY[0x1E69E62F8]);
    sub_1D7A2AE50();
    sub_1D7D313AC();
    v81 = *MEMORY[0x1E69D7348];
    v82 = sub_1D7D2895C();
    v83 = *(v82 - 8);
    v84 = v133;
    (*(v83 + 104))(v133, v81, v82);
    (*(v83 + 56))(v84, 0, 1, v82);
    v85 = *MEMORY[0x1E69DDC70];
    v86 = v129;
    sub_1D7D2F45C();
    v87 = MEMORY[0x1DA70CE70](v80, v86, 16.0, 16.0, 16.0, -16.0);
    (*(v131 + 8))(v86, v132);
    v88 = v134;
    v133 = v87;
    v89 = v150;
    sub_1D7D289AC();
    v150 = v89;
    if (v89)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_1D7A2AED8();
      v91 = *(v90 + 48);
      v92 = *(v90 + 64);
      v93 = v116;
      *v116 = v76;
      v94 = v127;
      v95 = v138;
      v96 = v114;
      (*(v127 + 16))(&v93[v91], v138, v114);
      v97 = v135;
      v98 = v136;
      (*(v135 + 16))(&v93[v92], v88, v136);
      swift_storeEnumTagMultiPayload();
      sub_1D7A2B98C(&unk_1EC9E2610, type metadata accessor for ReportConcernLayoutModel);
      swift_unknownObjectRetain();
      sub_1D7D2ABAC();

      sub_1D7A2AF64(&v148);
      (*(v97 + 8))(v88, v98);
      (*(v94 + 8))(v95, v96);
      __swift_destroy_boxed_opaque_existential_1(v144);
      return (*(v124 + 8))(v141, v126);
    }
  }

  return result;
}