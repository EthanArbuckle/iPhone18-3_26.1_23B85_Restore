uint64_t sub_243A628F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = sub_243AC2A58();
  v6[9] = sub_243AC2A48();
  v6[10] = sub_243AC2A48();
  v10 = sub_243AC2A28();
  v6[11] = v10;
  v6[12] = v9;

  return MEMORY[0x2822009F8](sub_243A629E4, v10, v9);
}

uint64_t sub_243A629E4()
{
  v1 = v0[8];
  v2 = sub_243AC2A48();
  v0[13] = v2;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_243A62ACC;
  v5 = v0[7];
  v6 = v0[5];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v5, v2, v7, 0xD000000000000011, 0x8000000243ACD350, sub_243A62188, 0, v6);
}

uint64_t sub_243A62ACC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_243A62C10, v5, v4);
}

uint64_t sub_243A62C10()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v5 = sub_243AC2A28();
  v0[15] = v5;
  v0[16] = v4;

  return MEMORY[0x2822009F8](sub_243A62C94, v5, v4);
}

uint64_t sub_243A62C94()
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14D8);
  sub_243A63E08(v2, v1);
  v4 = sub_243AC1448();
  v5 = sub_243AC2B38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = sub_243AC2438();
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
    sub_243A2251C(v7, &unk_27ED995A0, qword_243AC6D10);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_243A1B000, v4, v5, "Preparing to load recommendationsUI. JetPipelineAvailable: %{BOOL}d", v8, 8u);
    MEMORY[0x245D47D20](v8, -1, -1);
  }

  else
  {
    sub_243A2251C(*(v0 + 48), &unk_27ED995A0, qword_243AC6D10);
  }

  return MEMORY[0x2822009F8](sub_243A62E54, 0, 0);
}

uint64_t sub_243A62E54()
{
  v1 = *(v0 + 64);
  *(v0 + 136) = sub_243AC2A48();
  v3 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A62EE0, v3, v2);
}

uint64_t sub_243A62EE0()
{
  v1 = v0[17];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_243A62FF4(v4, v3, v2);
  v6 = v0[15];
  v7 = v0[16];

  return MEMORY[0x2822009F8](sub_243A62F68, v6, v7);
}

uint64_t sub_243A62F68()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];

  sub_243A2251C(v3, &unk_27ED995A0, qword_243AC6D10);

  v4 = v0[1];

  return v4();
}

void sub_243A62FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v81 - v10;
  v12 = type metadata accessor for RecommendationsList();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();

  v17 = sub_243A762E4(a1, a2, 0, inited);
  v18 = *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler];
  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = v17;

  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v21 = [objc_opt_self() systemBackgroundColor];
  [v20 setBackgroundColor_];

  sub_243A63E08(a3, v15 + v12[5]);
  type metadata accessor for RecommendationsController();
  sub_243A63E78();

  *v15 = sub_243AC1828();
  v15[1] = v22;
  v23 = (v15 + v12[6]);
  *v23 = nullsub_1;
  v23[1] = 0;
  v24 = (v15 + v12[7]);
  *v24 = nullsub_1;
  v24[1] = 0;
  v25 = (v15 + v12[8]);
  *v25 = nullsub_1;
  v25[1] = 0;
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995B0, &unk_243AC6A70));
  v27 = sub_243AC1AC8();
  [v4 addChildViewController_];
  v28 = [v27 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v29 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  v30 = [v4 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  v32 = [v27 view];

  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v31 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_243AC6A20;
  v34 = [v27 view];

  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = [v34 topAnchor];

  v36 = [v4 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v33 + 32) = v39;
  v40 = [v27 view];

  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = [v40 leadingAnchor];

  v42 = [v4 view];
  if (!v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v33 + 40) = v45;
  v46 = [v27 view];

  if (!v46)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v47 = [v46 bottomAnchor];

  v48 = [v4 view];
  if (!v48)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = v48;
  v82 = v11;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v33 + 48) = v51;
  v52 = [v27 view];

  if (!v52)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = [v52 trailingAnchor];

  v54 = [v4 view];
  if (!v54)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 trailingAnchor];

  v58 = [v53 constraintEqualToAnchor_];
  *(v33 + 56) = v58;
  sub_243A2CFF0(0, &qword_27ED995C0, 0x277CCAAD0);
  v59 = sub_243AC2978();

  [v56 activateConstraints_];

  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v61 = sub_243AC1AD8();
  v63 = (v62 + v12[6]);
  v64 = v63[1];
  *v63 = sub_243A63F08;
  v63[1] = v60;

  v61(v83, 0);

  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v66 = sub_243AC1AD8();
  v68 = (v67 + v12[7]);
  v69 = v68[1];
  *v68 = sub_243A63F10;
  v68[1] = v65;

  v66(v83, 0);

  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v71 = sub_243AC1AD8();
  v73 = (v72 + v12[8]);
  v74 = v73[1];
  *v73 = sub_243A63F18;
  v73[1] = v70;

  v71(v83, 0);

  [v27 didMoveToParentViewController_];
  v75 = *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];
  if (v75)
  {
    v76 = *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];

    sub_243A35794();
    sub_243A35030(0, 0);
    v77 = *(v75 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
    v78 = sub_243AC2A98();
    v79 = v82;
    (*(*(v78 - 8) + 56))(v82, 1, 1, v78);
    v80 = swift_allocObject();
    v80[2] = 0;
    v80[3] = 0;
    v80[4] = v77;
    swift_retain_n();
    sub_243A3306C(0, 0, v79, &unk_243AC6A80, v80);
  }

  else
  {
  }
}

void sub_243A638A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_243A61F9C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_243A63938(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler))
    {
      v6 = *(Strong + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler);

      v7 = v5;
      sub_243A83E5C(a1, a2, v5);

      v5 = v7;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);
    v5 = sub_243AC1448();
    v9 = sub_243AC2B58();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243A1B000, v5, v9, "Self is unavailable. Bailing", v10, 2u);
      MEMORY[0x245D47D20](v10, -1, -1);
    }
  }
}

void sub_243A63A98(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController);
    v4 = Strong;

    if (v3)
    {
      v5 = 0;
      sub_243A3C118(a1, &v5);
    }
  }
}

id sub_243A63B24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_mailAccountProvider] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_activeRecommendation] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = 0;
  if (a2)
  {
    v5 = sub_243AC2818();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RecommendationsViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_243A63C4C(void *a1)
{
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_mailAccountProvider] = 0;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = 0;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = 0;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_activeRecommendation] = 0;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = 0;
  *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecommendationsViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_243A63D24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A63E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A63E78()
{
  result = qword_27ED98FB0;
  if (!qword_27ED98FB0)
  {
    type metadata accessor for RecommendationsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98FB0);
  }

  return result;
}

uint64_t sub_243A63ED0()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A63F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A23CBC(a1, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A64018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A41BA0(a1, v4, v5, v6);
}

uint64_t sub_243A640CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A6411C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A628F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A641E8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0) - 8) + 80);

  return sub_243A624FC(a1);
}

uint64_t objectdestroy_36Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A642F8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0) - 8) + 80);

  return sub_243A626E4(a1);
}

uint64_t sub_243A643A0()
{
  v1 = v0;
  v2 = sub_243AC1528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, v1, v2);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == *MEMORY[0x277D232A0])
  {
    (*(v3 + 96))(v6, v2);
    v2 = *(*v6 + 16);
    v9 = *(*v6 + 24);

    return v2;
  }

  if (v8 == *MEMORY[0x277D23248])
  {
    (*(v3 + 96))(v6, v2);
    v22 = *(*v6 + 16);
    v2 = sub_243AC2EB8();

    return v2;
  }

  if (v8 == *MEMORY[0x277D23288])
  {
    (*(v3 + 96))(v6, v2);
    v10 = *(*v6 + 16);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_243AC2AC8();

    return v22;
  }

  if (v8 == *MEMORY[0x277D23258])
  {
    (*(v3 + 96))(v6, v2);
    v11 = *(*v6 + 16);
    v22 = 0;
    v23 = 0xE000000000000000;
    if (v11)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v11)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x245D46C90](v12, v13);

    return v22;
  }

  if (v8 == *MEMORY[0x277D23278] || v8 == *MEMORY[0x277D23270])
  {
    (*(v3 + 8))(v6, v2);
    type metadata accessor for DecodableStateError();
    sub_243A64EBC();
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v7(v16, v1, v2);
    *&v16[v17] = MEMORY[0x277D837D0];
    swift_willThrow();
  }

  else
  {
    type metadata accessor for DecodableStateError();
    sub_243A64EBC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v7(v19, v1, v2);
    *&v19[v20] = MEMORY[0x277D837D0];
    swift_willThrow();
    (*(v3 + 8))(v6, v2);
  }

  return v2;
}

uint64_t sub_243A64778@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_243AC1528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v68 = *(v7 + 16);
  v68(&v58 - v15, v4, v6);
  v17 = (*(v7 + 88))(v16, v6);
  if (v17 == *MEMORY[0x277D232A0])
  {
    (*(v7 + 96))(v16, v6);
    v18 = *(*v16 + 16);
    v19 = *(*v16 + 24);
    a1[3] = MEMORY[0x277D837D0];

    *a1 = v18;
    a1[1] = v19;
    return result;
  }

  if (v17 == *MEMORY[0x277D23248])
  {
    (*(v7 + 96))(v16, v6);
    v21 = *(*v16 + 16);
    a1[3] = MEMORY[0x277D83B88];

    *a1 = v21;
    return result;
  }

  if (v17 == *MEMORY[0x277D23288])
  {
    (*(v7 + 96))(v16, v6);
    v22 = *(*v16 + 16);
    a1[3] = MEMORY[0x277D839F8];

    *a1 = v22;
    return result;
  }

  if (v17 == *MEMORY[0x277D23258])
  {
    (*(v7 + 96))(v16, v6);
    v23 = *(*v16 + 16);
    a1[3] = MEMORY[0x277D839B0];

    *a1 = v23;
    return result;
  }

  v24 = *MEMORY[0x277D23278];
  v62 = a1;
  if (v17 == v24)
  {
    (*(v7 + 96))(v16, v6);
    v25 = *v16;
    v26 = *(v25 + 16);
    v27 = *(v26 + 16);
    v28 = MEMORY[0x277D84F90];
    if (!v27)
    {
LABEL_34:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A30, &unk_243AC4840);
      v57 = v62;
      v62[3] = v56;

      *v57 = v28;
      return result;
    }

    v61 = v25;
    v69 = MEMORY[0x277D84F90];

    v63 = v27;
    sub_243A64F34(0, v27, 0);
    v29 = 0;
    v28 = v69;
    v30 = *(v7 + 80);
    v64 = v26;
    v65 = v26 + ((v30 + 32) & ~v30);
    v66 = (v7 + 8);
    while (v29 < *(v26 + 16))
    {
      v31 = (v68)(v14, v65 + *(v7 + 72) * v29, v6);
      sub_243A64778(v70, v31);
      if (v3)
      {
        (*v66)(v14, v6);
      }

      v67 = 0;
      (*v66)(v14, v6);
      v69 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_243A64F34((v32 > 1), v33 + 1, 1);
        v28 = v69;
      }

      ++v29;
      *(v28 + 16) = v33 + 1;
      sub_243A21C48(v70, (v28 + 32 * v33 + 32));
      v26 = v64;
      v3 = v67;
      if (v63 == v29)
      {

        goto LABEL_34;
      }
    }

    goto LABEL_37;
  }

  if (v17 != *MEMORY[0x277D23270])
  {
LABEL_39:
    result = sub_243AC2ED8();
    __break(1u);
    return result;
  }

  (*(v7 + 96))(v16, v6);
  v58 = *v16;
  v34 = *(v58 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v35 = sub_243AC2E08();
  v36 = *(v34 + 64);
  v60 = v34 + 64;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v59 = (v37 + 63) >> 6;
  v63 = (v7 + 8);
  v40 = v35;
  v61 = v35 + 64;
  v65 = v34;

  v41 = 0;
  v64 = v40;
  if (!v39)
  {
LABEL_23:
    v43 = v41;
    while (1)
    {
      v41 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v41 >= v59)
      {

        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A28, &qword_243AC4838);

        *a1 = v40;
        return result;
      }

      v44 = *(v60 + 8 * v41);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v66 = ((v44 - 1) & v44);
        v67 = v3;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  while (1)
  {
    v42 = __clz(__rbit64(v39));
    v66 = ((v39 - 1) & v39);
    v67 = v3;
LABEL_28:
    v45 = v42 | (v41 << 6);
    v46 = (*(v65 + 48) + 16 * v45);
    v47 = *v46;
    v48 = v46[1];
    v68(v11, *(v65 + 56) + *(v7 + 72) * v45, v6);

    v50 = v67;
    sub_243A64778(v70, v49);
    if (v50)
    {
      break;
    }

    (*v63)(v11, v6);
    *(v61 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v51 = v64;
    v52 = (*(v64 + 48) + 16 * v45);
    *v52 = v47;
    v52[1] = v48;
    v40 = v51;
    sub_243A21C48(v70, (*(v51 + 56) + 32 * v45));
    v53 = *(v40 + 16);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_38;
    }

    *(v40 + 16) = v55;
    v3 = 0;
    a1 = v62;
    v39 = v66;
    if (!v66)
    {
      goto LABEL_23;
    }
  }

  (*v63)(v11, v6);
}

uint64_t type metadata accessor for DecodableStateError()
{
  result = qword_27ED995F8;
  if (!qword_27ED995F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A64EBC()
{
  result = qword_27ED98D50;
  if (!qword_27ED98D50)
  {
    type metadata accessor for DecodableStateError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D50);
  }

  return result;
}

char *sub_243A64F14(char *a1, int64_t a2, char a3)
{
  result = sub_243A64FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F34(char *a1, int64_t a2, char a3)
{
  result = sub_243A65100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_243A64F54(size_t a1, int64_t a2, char a3)
{
  result = sub_243A65358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F74(char *a1, int64_t a2, char a3)
{
  result = sub_243A65530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F94(char *a1, int64_t a2, char a3)
{
  result = sub_243A65624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64FB4(char *a1, int64_t a2, char a3)
{
  result = sub_243A6590C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_243A64FD4(void *a1, int64_t a2, char a3)
{
  result = sub_243A65A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_243A65100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_243A65210(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995D8, &unk_243AC6B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F80, &qword_243AC5528);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_243A65358(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995F0, &qword_243AC6B38);
  v10 = *(sub_243AC1528() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_243AC1528() - 8);
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

char *sub_243A65530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E0, &unk_243AC6B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_243A65624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E8, &qword_243AC6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_243A65730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243A657A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_243A65838(uint64_t a1)
{
  sub_243A2E7D8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_243AC1528();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

char *sub_243A6590C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99618, &qword_243AC6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243A65A34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99608, &qword_243AC6BB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99610, &qword_243AC6BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243A65B7C@<X0>(uint64_t a1@<X8>)
{
  sub_243A65CBC(a1);
  if (sub_243AC22F8())
  {
  }

  else
  {
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243AC2308();
  }

  v1 = sub_243AC22E8();
  v3 = MEMORY[0x277D837D0];
  if (*v2)
  {
    v9 = MEMORY[0x277D837D0];
    v7 = 0xD000000000000011;
    v8 = 0x8000000243ACD400;
    sub_243A887CC(&v7, 0x644965676170, 0xE600000000000000);
  }

  v1(v10, 0);
  v4 = sub_243AC22E8();
  if (*v5)
  {
    v9 = v3;
    v7 = 0x6C61646F4DLL;
    v8 = 0xE500000000000000;
    sub_243A887CC(&v7, 0x6570795465676170, 0xE800000000000000);
  }

  return v4(v10, 0);
}

uint64_t sub_243A65CBC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_243AC24B8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_243AC2378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243AC22D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99620, &qword_243AC6BD0);
  v12 = *(sub_243AC2328() - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v58 = *(v12 + 72);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_243AC5F30;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC00, &qword_243AC6BD8);
  inited = swift_initStackObject();
  v66 = xmmword_243AC51B0;
  *(inited + 16) = xmmword_243AC51B0;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  sub_243AC2368();
  v15 = sub_243AC2358();
  v17 = v16;
  v55 = v5;
  v18 = *(v5 + 8);
  v65 = v4;
  v63 = v5 + 8;
  v57 = v18;
  v18(v8, v4);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  sub_243A2E2B4(inited);
  swift_setDeallocating();
  sub_243A6653C(inited + 32);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99628, &qword_243AC6BE0);
  v20 = sub_243AC26B8();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = *(v21 + 72);
  v54 = *(v21 + 80);
  v56 = v19;
  v51 = v22 + 3 * v23;
  v24 = swift_allocObject();
  v50 = xmmword_243AC4AC0;
  *(v24 + 16) = xmmword_243AC4AC0;
  if (qword_27ED988F8 != -1)
  {
    swift_once();
  }

  v49 = "eHelper";
  v46 = v22;
  v61 = v64 + v13;
  v45 = __swift_project_value_buffer(v20, qword_27EDA1438);
  v52 = v21;
  v44 = *(v21 + 16);
  v41 = v20;
  v44(v24 + v22, v45, v20);
  v42 = v23;
  sub_243AC2698();
  v43 = 2 * v23;
  sub_243AC26A8();
  sub_243A665A4(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_243AC22C8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99630, &qword_243AC6BE8);
  v47 = *(v55 + 72);
  v55 = *(v55 + 80);
  v25 = (v55 + 32) & ~v55;
  v26 = swift_allocObject();
  *(v26 + 16) = v66;
  sub_243AC2368();
  sub_243A668C4(v26);
  swift_setDeallocating();
  v27 = v65;
  v28 = v57;
  v57((v26 + v25), v65);
  swift_deallocClassInstance();
  sub_243AC2318();
  v29 = swift_initStackObject();
  *(v29 + 16) = v66;
  *(v29 + 32) = 0x707954746E657665;
  *(v29 + 40) = 0xE900000000000065;
  sub_243AC2348();
  v30 = sub_243AC2358();
  v32 = v31;
  v28(v8, v27);
  *(v29 + 72) = MEMORY[0x277D837D0];
  *(v29 + 48) = v30;
  *(v29 + 56) = v32;
  v53 = sub_243A2E2B4(v29);
  swift_setDeallocating();
  sub_243A6653C(v29 + 32);
  v33 = swift_allocObject();
  *(v33 + 16) = v50;
  v34 = v46;
  v35 = v41;
  v44(v33 + v46, v45, v41);
  sub_243AC2698();
  sub_243AC26A8();
  v36 = sub_243A665A4(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = swift_allocObject();
  *(v37 + 16) = v66;
  sub_243AC26A8();
  sub_243A66BE4(v37, v36);
  swift_setDeallocating();
  (*(v52 + 8))(v37 + v34, v35);
  swift_deallocClassInstance();
  sub_243AC22C8();
  v38 = swift_allocObject();
  *(v38 + 16) = v66;
  sub_243AC2348();
  sub_243A668C4(v38);
  swift_setDeallocating();
  v28((v38 + v25), v65);
  swift_deallocClassInstance();
  sub_243AC2318();
  sub_243AC24A8();
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  return sub_243AC2338();
}

uint64_t sub_243A6653C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED9AC10, &qword_243AC4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A665A4(uint64_t a1)
{
  v2 = sub_243AC26B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
    v10 = sub_243AC2CE8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_243A66D44(&qword_27ED99278, MEMORY[0x277D22320]);
      v18 = sub_243AC27F8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_243A66D44(&qword_27ED99280, MEMORY[0x277D22320]);
          v25 = sub_243AC2808();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243A668C4(uint64_t a1)
{
  v2 = sub_243AC2378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99638, &unk_243AC6BF0);
    v10 = sub_243AC2CE8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_243A66D44(&qword_27ED99640, MEMORY[0x277D21BE0]);
      v18 = sub_243AC27F8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_243A66D44(&qword_27ED99648, MEMORY[0x277D21BE0]);
          v25 = sub_243AC2808();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_243A66BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC26B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_243A58784(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_243A66D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_243A66DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_243A66E10(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_243A66E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[14];

  sub_243AC24C8();
  v12 = v1[15];

  sub_243AC24A8();
  v13 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243A2E2B4(v13);
  sub_243AC24E8();
  v14 = sub_243AC24F8();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

unint64_t sub_243A67030()
{
  result = qword_27ED99650;
  if (!qword_27ED99650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99650);
  }

  return result;
}

uint64_t sub_243A67084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99658, &qword_243AC6D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A670F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *v1;
  v7 = v1[1];

  sub_243AC24C8();
  v9 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v9);
  sub_243A2E2B4(v9);
  sub_243AC24E8();
  v10 = sub_243AC24F8();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t sub_243A67264@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_243AC24B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_243AC24D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_243AC24C8();
  v6 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v6);
  sub_243A2E2B4(v6);
  sub_243AC24E8();
  v7 = sub_243AC24F8();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_243A673D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_243AC24B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_243AC24D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_243AC24C8();
  v9 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v9);
  sub_243A2E2B4(v9);
  sub_243AC24E8();
  v10 = sub_243AC24F8();
  return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
}

uint64_t sub_243A67558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
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

    return (v10 + 1);
  }
}

uint64_t sub_243A67634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MetricsModifier()
{
  result = qword_27ED99660;
  if (!qword_27ED99660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A67744()
{
  sub_243A677C8();
  if (v0 <= 0x3F)
  {
    sub_243A67820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_243A677C8()
{
  if (!qword_27ED99670)
  {
    sub_243AC2438();
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99670);
    }
  }
}

void sub_243A67820()
{
  if (!qword_27ED99678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99680, &qword_243AC6D48);
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99678);
    }
  }
}

uint64_t sub_243A678A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a1;
  v118 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99688, &qword_243AC6DA0);
  v4 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v6 = &v88 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99690, &qword_243AC6DA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v114 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99698, &unk_243AC6DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A0, &unk_243AC95E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = &v88 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A8, &qword_243AC6DC0);
  v101 = *(v102 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v18 = &v88 - v17;
  v103 = sub_243AC2588();
  v100 = *(v103 - 8);
  v19 = *(v100 + 64);
  v20 = MEMORY[0x28223BE20](v103);
  v98 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v88 - v22;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996B0, &qword_243AC6DC8);
  v99 = *(v117 - 8);
  v24 = *(v99 + 64);
  MEMORY[0x28223BE20](v117);
  v26 = &v88 - v25;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996B8, &qword_243AC6DD0);
  v105 = *(v119 - 8);
  v27 = *(v105 + 64);
  MEMORY[0x28223BE20](v119);
  v104 = &v88 - v28;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996C0, &qword_243AC6DD8);
  v108 = *(v120 - 8);
  v29 = *(v108 + 64);
  MEMORY[0x28223BE20](v120);
  v106 = &v88 - v30;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996C8, &qword_243AC6DE0);
  v109 = *(v121 - 8);
  v31 = *(v109 + 64);
  MEMORY[0x28223BE20](v121);
  v107 = &v88 - v32;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D0, &qword_243AC6DE8);
  v111 = *(v122 - 8);
  v33 = *(v111 + 64);
  MEMORY[0x28223BE20](v122);
  v110 = &v88 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v88 - v37;
  v39 = sub_243AC2438();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v3;
  sub_243A63E08(v3, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_243A2251C(v38, &unk_27ED995A0, qword_243AC6D10);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D8, &qword_243AC6DF0);
    (*(*(v45 - 8) + 16))(v6, v115, v45);
    swift_storeEnumTagMultiPayload();
    v46 = sub_243A68654();
    *&v124 = v45;
    *(&v124 + 1) = v46;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v124 = v117;
    *(&v124 + 1) = OpaqueTypeConformance2;
    v48 = swift_getOpaqueTypeConformance2();
    *&v124 = v119;
    *(&v124 + 1) = v48;
    v49 = swift_getOpaqueTypeConformance2();
    *&v124 = v120;
    *(&v124 + 1) = v49;
    v50 = swift_getOpaqueTypeConformance2();
    *&v124 = v121;
    *(&v124 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    return sub_243AC1AE8();
  }

  else
  {
    v97 = v40;
    v52 = *(v40 + 32);
    v93 = v43;
    v96 = v39;
    v52(v43, v38, v39);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996D8, &qword_243AC6DF0);
    v54 = sub_243A68654();
    v55 = v26;
    v56 = v99;
    v94 = v53;
    v57 = v54;
    v95 = v54;
    sub_243AC1DF8();
    v58 = v98;
    sub_243AC2578();
    v59 = (v44 + *(type metadata accessor for MetricsModifier() + 20));
    v92 = *v59;
    v115 = v6;
    v61 = v59[1];
    v60 = v59[2];
    v91 = v61;
    v90 = v60;
    *&v124 = v92;
    *(&v124 + 1) = v61;
    v125 = v60;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996E8, &qword_243AC6DF8);
    sub_243AC2068();
    v88 = v123;
    v124 = v123;
    sub_243AC2568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99680, &qword_243AC6D48);
    sub_243AC2558();
    (*(v101 + 8))(v18, v102);
    swift_unknownObjectRelease();
    v62 = *(v100 + 8);
    v63 = v58;
    v64 = v103;
    v62(v63, v103);
    *&v124 = v53;
    *(&v124 + 1) = v57;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v104;
    v67 = v117;
    sub_243AC1DE8();
    v62(v23, v64);
    (*(v56 + 8))(v55, v67);
    v68 = v112;
    sub_243A65B7C(v112);
    v69 = sub_243AC2388();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    *&v124 = v92;
    *(&v124 + 1) = v91;
    v125 = v90;
    sub_243AC2068();
    v70 = sub_243AC1398();
    v71 = v113;
    (*(*(v70 - 8) + 56))(v113, 1, 1, v70);
    *&v124 = v67;
    *(&v124 + 1) = v65;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = v106;
    v74 = v93;
    v75 = v119;
    sub_243AC1DA8();
    swift_unknownObjectRelease();
    sub_243A2251C(v71, &qword_27ED99698, &unk_243AC6DB0);
    sub_243A2251C(v68, &qword_27ED996A0, &unk_243AC95E0);
    (*(v105 + 8))(v66, v75);
    v76 = *MEMORY[0x277D7EB50];
    v77 = sub_243AC1388();
    v78 = *(v77 - 8);
    v79 = v114;
    (*(v78 + 104))(v114, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    *&v124 = v75;
    *(&v124 + 1) = v72;
    v80 = swift_getOpaqueTypeConformance2();
    v81 = v107;
    v82 = v120;
    sub_243AC1DB8();
    sub_243A2251C(v79, &qword_27ED99690, &qword_243AC6DA8);
    (*(v108 + 8))(v73, v82);
    *&v124 = v82;
    *(&v124 + 1) = v80;
    v83 = swift_getOpaqueTypeConformance2();
    v84 = v110;
    v85 = v121;
    sub_243AC1D98();
    (*(v109 + 8))(v81, v85);
    v86 = v111;
    v87 = v122;
    (*(v111 + 16))(v115, v84, v122);
    swift_storeEnumTagMultiPayload();
    *&v124 = v85;
    *(&v124 + 1) = v83;
    swift_getOpaqueTypeConformance2();
    sub_243AC1AE8();
    (*(v86 + 8))(v84, v87);
    return (*(v97 + 8))(v74, v96);
  }
}

unint64_t sub_243A68654()
{
  result = qword_27ED996E0;
  if (!qword_27ED996E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996D8, &qword_243AC6DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED996E0);
  }

  return result;
}

unint64_t sub_243A686BC()
{
  result = qword_27ED996F0;
  if (!qword_27ED996F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996F8, qword_243AC6E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996C8, &qword_243AC6DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996C0, &qword_243AC6DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996B8, &qword_243AC6DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996B0, &qword_243AC6DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED996D8, &qword_243AC6DF0);
    sub_243A68654();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED996F0);
  }

  return result;
}

uint64_t sub_243A688AC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_243A6890C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_243A689A0()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 168);
  v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v6 = v5;
  *(v1 + 152) = v5;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setCachePolicy_];
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_243A68AFC;
  v8 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99700, &unk_243AC6E50);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_243A2A88C;
  *(v1 + 104) = &block_descriptor_4;
  *(v1 + 112) = v8;
  [v6 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243A68AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_243A68DD8;
  }

  else
  {
    v3 = sub_243A68C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A68C0C()
{
  v1 = *(v0 + 144);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14D8);
  v3 = v1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = [v3 members];
    sub_243A69008();
    v8 = sub_243AC2998();

    if (v8 >> 62)
    {
      v9 = sub_243AC2DF8();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_243A1B000, v4, v5, "User has a family circle with %ld members.", v6, 0xCu);
    MEMORY[0x245D47D20](v6, -1, -1);
    v10 = *(v0 + 152);
  }

  else
  {

    v4 = v3;
    v10 = v3;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_243A68DD8()
{
  v1 = v0[20];
  swift_willThrow();
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14D8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[19];
  v8 = v0[20];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to fetch family circle %@", v10, 0xCu);
    sub_243A68FA0(v11);
    MEMORY[0x245D47D20](v11, -1, -1);
    MEMORY[0x245D47D20](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_243A68FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98BF8, &unk_243AC6150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243A69008()
{
  result = qword_27ED98C18;
  if (!qword_27ED98C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED98C18);
  }

  return result;
}

uint64_t sub_243A69054()
{
  v0 = sub_243AC1298();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243AC1288();
  v5 = sub_243AC1278();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27EDA1428 = v5;
  unk_27EDA1430 = v7;
  return result;
}

uint64_t sub_243A6914C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A6996C)(a1, a2);
}

uint64_t sub_243A69200@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22348];
  v3 = sub_243AC26C8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_243A692F4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0x655364756F6C4369, 0xEE0073676E697474);
}

uint64_t sub_243A69374()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_243AC2858();

    sub_243AC2888();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  if (has_internal_ui)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x72656D6F74737563;
  }
}

uint64_t sub_243A6946C()
{
  *(v0 + 16) = sub_243A69374();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 24) = v2;
  sub_243A21C48((v0 + 16), (v0 + 48));
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 48), 0x7542746E65696C63, 0xEF65707954646C69, isUniquelyReferenced_nonNull_native);
  if (qword_27ED988F0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EDA1428;
  v6 = unk_27EDA1430;
  *(v0 + 104) = v1;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  sub_243A21C48((v0 + 80), (v0 + 112));

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 112), 0x496E6F6973736573, 0xE900000000000064, v7);
  *(v0 + 168) = MEMORY[0x277D839B0];
  *(v0 + 144) = 1;
  sub_243A21C48((v0 + 144), (v0 + 176));
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 176), 0xD000000000000017, 0x8000000243ACD490, v8);
  *(v0 + 272) = v3;
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_243A6967C;

  return sub_243A68980(0);
}

uint64_t sub_243A6967C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_243A6977C, 0, 0);
}

uint64_t sub_243A6977C()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    if (sub_243AC2B88())
    {
      v2 = 0xE900000000000072;
      v3 = 0x6573616863727550;
    }

    else
    {
      v4 = sub_243AC2B98();
      if (v4 >> 62)
      {
        v5 = sub_243AC2DF8();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v5 <= 0)
      {
        v3 = 0x7564697669646E49;
      }

      else
      {
        v3 = 0x7265626D654DLL;
      }

      if (v5 <= 0)
      {
        v2 = 0xEA00000000006C61;
      }

      else
      {
        v2 = 0xE600000000000000;
      }
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  v6 = *(v0 + 272);
  *(v0 + 232) = MEMORY[0x277D837D0];
  *(v0 + 208) = v3;
  *(v0 + 216) = v2;
  sub_243A21C48((v0 + 208), (v0 + 240));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_243A8B544((v0 + 240), 0xD00000000000001BLL, 0x8000000243ACD4B0, isUniquelyReferenced_nonNull_native);
  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_243A6996C(uint64_t a1)
{
  *(v1 + 176) = a1;
  v2 = swift_task_alloc();
  *(v1 + 184) = v2;
  *v2 = v1;
  v2[1] = sub_243A69A10;

  return sub_243A69450();
}

uint64_t sub_243A69A10(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_243A69B44, 0, 0);
  }
}

void sub_243A69B44()
{
  v1 = 0;
  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v26 = *(v0 + 192);
  v7 = -1;
  v8 = -1 << *(v26 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v27 = *(v0 + 176);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_12:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_243A20058(*(v26 + 56) + 32 * v15, v0 + 112);
      *(v0 + 64) = v18;
      *(v0 + 72) = v17;
      sub_243A21C48((v0 + 112), (v0 + 80));

      v13 = v11;
LABEL_13:
      v19 = *(v0 + 80);
      *(v0 + 16) = *(v0 + 64);
      *(v0 + 32) = v19;
      *(v0 + 48) = *(v0 + 96);
      if (!*(v0 + 24))
      {
        v23 = *(v0 + 192);

        v24 = *(v0 + 8);
        goto LABEL_20;
      }

      v1 = v13;
      v20 = *(v0 + 176);
      v28 = v2;
      v21 = *(v0 + 16);
      sub_243A21C48((v0 + 32), (v0 + 144));
      v22 = *(v27 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v20, *(v27 + 24));
      v2 = v28;
      sub_243AC2548();
      if (v28)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 144));

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v25 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));

    v24 = *(v0 + 8);
LABEL_20:

    v24();
  }

  else
  {
LABEL_5:
    if (v10 <= v1 + 1)
    {
      v12 = v1 + 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v9 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_13;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_243A69DAC()
{
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v0 = sub_243AC1468();
  __swift_project_value_buffer(v0, qword_27EDA14C0);
  v1 = sub_243AC1448();
  v2 = sub_243AC2B78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_243A1B000, v1, v2, "Adding time sensitive metrics.", v3, 2u);
    MEMORY[0x245D47D20](v3, -1, -1);
  }
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

uint64_t sub_243A69EA0(uint64_t a1, int a2)
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

uint64_t sub_243A69EE8(uint64_t result, int a2, int a3)
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

uint64_t sub_243A69F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_243A69F68, 0, 0);
}

uint64_t sub_243A69F68()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[2] = v2;
  v5 = v1[5];
  v6 = *(MEMORY[0x277D21E38] + 4);

  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = sub_243A6AF44();
  *v7 = v0;
  v7[1] = sub_243A6A06C;
  v9 = v0[3];

  return MEMORY[0x28217F4B0](v9, v0 + 2, v5, &type metadata for LintIntent, v8, v3, v4);
}

uint64_t sub_243A6A06C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(v4 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_243A6A1BC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_243A6A1D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - v5;
  sub_243A6A374(v1, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v13[2];
  *(v7 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99708, &qword_243AC6FC0);

  v9 = sub_243AC27B8();
  v10 = sub_243AC2A98();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_243AC6FB8;
  v11[5] = v7;
  v11[6] = v9;

  sub_243A6A940(0, 0, v6, &unk_243AC6FD0, v11);

  return v9;
}

uint64_t sub_243A6A3AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A6A3F4(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A69F44(a1, v1 + 16, v4);
}

uint64_t sub_243A6A4A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_243AC2538();
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_243A6A600;

  return v15(v11);
}

uint64_t sub_243A6A600()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_243A6A7A4;
  }

  else
  {
    v3 = sub_243A6A714;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A6A714()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_243AC27A8();
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_243A6A7A4()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_243AC2798();

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_243A6A81C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A6A864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A1FEA8;

  return sub_243A6A4A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A6A940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_243A47650(a3, v25 - v11);
  v13 = sub_243AC2A98();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_243A6ABFC(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_243AC2A88();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_243AC2A28();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_243AC2888() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_243A6ABFC(a3);

    return v23;
  }

LABEL_8:
  sub_243A6ABFC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243A6ABFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A6AC64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A6AD5C;

  return v7(a1);
}

uint64_t sub_243A6AD5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_243A6AE54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A33068;

  return sub_243A6AC64(a1, v5);
}

uint64_t sub_243A6AF0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_243A6AF44()
{
  result = qword_27ED99710;
  if (!qword_27ED99710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99710);
  }

  return result;
}

void sub_243A6AF9C()
{
  v0 = sub_243AC2818();
  v1 = sub_243AC2818();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  qword_27EDA1468 = v2;
}

uint64_t sub_243A6B074@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v86 = a3;
  v85 = sub_243AC2418();
  v84 = *(v85 - 8);
  v4 = *(v84 + 64);
  v5 = MEMORY[0x28223BE20](v85);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v78 - v7;
  v8 = sub_243AC25E8();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v8);
  v96 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99718, &qword_243AC7038);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v78 - v13;
  v15 = sub_243AC2708();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v15);
  v89 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_243AC2648();
  v80 = *(v81 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_243AC2748();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v94 = &v78 - v27;
  MEMORY[0x28223BE20](v26);
  v88 = &v78 - v28;
  v87 = *a1;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v29 = sub_243AC1468();
  __swift_project_value_buffer(v29, qword_27EDA14D8);
  v30 = sub_243AC1448();
  v31 = sub_243AC2B78();
  v32 = os_log_type_enabled(v30, v31);
  v95 = v20;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v98[0] = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v30, v31, "%{public}s Injecting bag", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245D47D20](v34, -1, -1);
    MEMORY[0x245D47D20](v33, -1, -1);
  }

  sub_243AC23E8();
  sub_243AC2758();
  v35 = sub_243AC1448();
  v36 = sub_243AC2B78();
  v37 = v22;
  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v98[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v35, v36, "%{public}s Initializing aggregator", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x245D47D20](v39, -1, -1);
    MEMORY[0x245D47D20](v38, -1, -1);
  }

  sub_243AC2638();
  v99 = &type metadata for FieldsProvider;
  v100 = sub_243A6C654();
  v98[0] = v78;
  v40 = qword_27ED988F8;
  v41 = v78;
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_243AC26B8();
  __swift_project_value_buffer(v42, qword_27EDA1438);
  sub_243AC2618();
  __swift_destroy_boxed_opaque_existential_1(v98);
  v43 = sub_243AC1448();
  v44 = sub_243AC2B78();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v98[0] = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v43, v44, "%{public}s Initializing bag", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x245D47D20](v46, -1, -1);
    MEMORY[0x245D47D20](v45, -1, -1);
  }

  if (qword_27ED98908 != -1)
  {
    swift_once();
  }

  v47 = qword_27EDA1468;
  sub_243AC2718();
  v48 = sub_243AC1448();
  v49 = sub_243AC2B78();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v98[0] = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v48, v49, "%{public}s Initializing identifier provider", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x245D47D20](v51, -1, -1);
    MEMORY[0x245D47D20](v50, -1, -1);
  }

  v52 = [objc_opt_self() ams_sharedAccountStore];
  v99 = sub_243A6C6A8();
  v100 = MEMORY[0x277D225B8];
  v98[0] = v52;
  v53 = *(v37 + 16);
  v53(v14, v94, v21);
  (*(v37 + 56))(v14, 0, 1, v21);
  v54 = [objc_opt_self() currentProcess];
  sub_243AC26F8();
  sub_243AC26E8();
  v55 = v89;
  sub_243AC26D8();
  v56 = v91;
  v99 = v91;
  v100 = MEMORY[0x277D22368];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
  (*(v90 + 16))(boxed_opaque_existential_1, v55, v56);
  if (qword_27ED98900 != -1)
  {
    swift_once();
  }

  v58 = sub_243AC2688();
  __swift_project_value_buffer(v58, qword_27EDA1450);
  sub_243AC2628();
  __swift_destroy_boxed_opaque_existential_1(v98);
  v59 = sub_243AC1448();
  v60 = sub_243AC2B78();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v98[0] = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v59, v60, "%{public}s Initializing dispatcher", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x245D47D20](v62, -1, -1);
    MEMORY[0x245D47D20](v61, -1, -1);
  }

  sub_243AC25D8();
  sub_243A6C6F4();
  sub_243AC25C8();
  v63 = sub_243AC1448();
  v64 = sub_243AC2B78();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v98[0] = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v98);
    _os_log_impl(&dword_243A1B000, v63, v64, "%{public}s Initializing linter", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x245D47D20](v66, -1, -1);
    MEMORY[0x245D47D20](v65, -1, -1);
  }

  v67 = v93;
  v99 = v93;
  v100 = MEMORY[0x277D22188];
  v68 = __swift_allocate_boxed_opaque_existential_1(v98);
  (*(v92 + 16))(v68, v96, v67);
  v101 = v87;

  v69 = sub_243AC1448();
  v70 = sub_243AC2B78();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v97[0] = v72;
    *v71 = 136446210;
    *(v71 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v97);
    _os_log_impl(&dword_243A1B000, v69, v70, "%{public}s Finish - returning pipeline.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x245D47D20](v72, -1, -1);
    MEMORY[0x245D47D20](v71, -1, -1);
  }

  v73 = v95;
  v74 = v88;
  v53(v79, v88, v21);
  v97[3] = &type metadata for IntentMetricsEventLinter;
  v97[4] = sub_243A6C748();
  v97[0] = swift_allocObject();
  sub_243A6A374(v98, v97[0] + 16);
  v75 = v83;
  sub_243AC2408();
  sub_243AC23F8();
  (*(v84 + 8))(v75, v85);
  sub_243AC2428();
  (*(v92 + 8))(v96, v93);
  (*(v90 + 8))(v89, v91);
  v76 = *(v37 + 8);
  v76(v94, v21);
  (*(v80 + 8))(v73, v81);
  v76(v74, v21);
  return sub_243A6C7DC(v98);
}

id JetAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JetAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id JetAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A6BECC(void *a1)
{
  v2 = sub_243AC21F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243AC2738();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_243AC2218();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14D8);
  v13 = sub_243AC1448();
  v14 = sub_243AC2B78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v2;
    v16 = a1;
    v17 = v15;
    v18 = swift_slowAlloc();
    v34[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v34);
    _os_log_impl(&dword_243A1B000, v13, v14, "%{public}s Fetching bootstrap", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245D47D20](v18, -1, -1);
    v19 = v17;
    a1 = v16;
    v2 = v30;
    MEMORY[0x245D47D20](v19, -1, -1);
  }

  sub_243AC2728();
  v20 = [objc_opt_self() currentProcess];
  (*(v3 + 104))(v6, *MEMORY[0x277D21A90], v2);
  v21 = v31;
  sub_243AC21E8();
  v22 = sub_243AC1448();
  v23 = sub_243AC2B78();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_243AB73D8(0xD000000000000016, 0x8000000243ACD500, v34);
    _os_log_impl(&dword_243A1B000, v22, v23, "%{public}s Starting bootstrap.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x245D47D20](v25, -1, -1);
    MEMORY[0x245D47D20](v24, -1, -1);
  }

  sub_243AC2208();
  *(swift_allocObject() + 16) = a1;
  v34[3] = sub_243AC2518();
  v34[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v34);
  v26 = a1;
  sub_243AC2508();
  sub_243AC2438();
  v27 = sub_243AC2768();

  (*(v32 + 8))(v21, v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v27;
}

uint64_t _s21CloudRecommendationUI12JetAnalyticsC5start7account0D6Engine7PromiseCyAF15MetricsPipelineVGSo9ACAccountC_tFZ_0(void *a1)
{
  v1 = qword_27EDA1470;
  if (qword_27EDA1470)
  {
  }

  else
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14D8);
    v4 = sub_243AC1448();
    v5 = sub_243AC2B78();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243A1B000, v4, v5, "Initializing JetAnalytics pipeline.", v6, 2u);
      MEMORY[0x245D47D20](v6, -1, -1);
    }

    v1 = sub_243A6BECC(a1);
    qword_27EDA1470 = v1;
  }

  return v1;
}

uint64_t _s21CloudRecommendationUI12JetAnalyticsC7preload7accountySo9ACAccountC_tFZ_0(void *a1)
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14D8);
  v3 = a1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_243A1B000, v4, v5, "Preloading JetAnalytics for account %@.", v6, 0xCu);
    sub_243A68FA0(v7);
    MEMORY[0x245D47D20](v7, -1, -1);
    MEMORY[0x245D47D20](v6, -1, -1);
  }

  _s21CloudRecommendationUI12JetAnalyticsC5start7account0D6Engine7PromiseCyAF15MetricsPipelineVGSo9ACAccountC_tFZ_0(v3);
}

uint64_t sub_243A6C600()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A6C654()
{
  result = qword_27ED99720;
  if (!qword_27ED99720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99720);
  }

  return result;
}

unint64_t sub_243A6C6A8()
{
  result = qword_27ED99728;
  if (!qword_27ED99728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99728);
  }

  return result;
}

unint64_t sub_243A6C6F4()
{
  result = qword_27ED99730;
  if (!qword_27ED99730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99730);
  }

  return result;
}

unint64_t sub_243A6C748()
{
  result = qword_27ED99738;
  if (!qword_27ED99738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99738);
  }

  return result;
}

uint64_t sub_243A6C79C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_243A6C830(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A28, &qword_243AC4838);
    v5 = [v2 valueWithObject:sub_243AC2F18() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_243AC2BF8();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_243A6C990()
{
  result = qword_27ED99740;
  if (!qword_27ED99740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99740);
  }

  return result;
}

uint64_t sub_243A6CA04(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_243A6CA24, 0, 0);
}

uint64_t sub_243A6CA24()
{
  v1 = *(*(v0 + 88) + 16);

  if (v1)
  {
    v2 = sub_243A2DDC0(0x6D6954746E657665, 0xE900000000000065);
    if (v3)
    {
      sub_243A20058(*(*(v0 + 88) + 56) + 32 * v2, v0 + 16);
      v4 = MEMORY[0x277D839F8];
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 88);
        v6 = trunc(*(v0 + 48) / 3600000.0) * 3600000.0;
        *(v0 + 40) = v4;
        *(v0 + 16) = v6;
        sub_243A21C48((v0 + 16), (v0 + 48));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_243A8B544((v0 + 48), 0x6D6954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v8 = *(v0 + 88);
      }
    }
  }

  v9 = *(v0 + 80);

  sub_243AC2528();
  v10 = sub_243AC2538();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_243A6CBE8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return sub_243A6CA04(a1, v4);
}

uint64_t EmailDownloadLink.performAction(with:localStore:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A33068;

  return (sub_243A6EDA0)(a1);
}

uint64_t sub_243A6CD34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a8;
  *(v8 + 80) = v26;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 48) = a5;
  *(v8 + 288) = a4;
  v9 = sub_243AC1528();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D58, qword_243AC74A0) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v14 = sub_243AC1328();
  *(v8 + 144) = v14;
  v15 = *(v14 - 8);
  *(v8 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v17 = sub_243AC1058();
  *(v8 + 168) = v17;
  v18 = *(v17 - 8);
  *(v8 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v21 = sub_243AC1208();
  *(v8 + 200) = v21;
  v22 = *(v21 - 8);
  *(v8 + 208) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A6CFF4, 0, 0);
}

uint64_t sub_243A6CFF4()
{
  v91 = v0;
  if (*(v0 + 288) != 1)
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_243AC11E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_243A2251C(*(v0 + 192), &qword_27ED98D68, &qword_243AC67E0);
LABEL_4:
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 160);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v87 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  v20 = *(v0 + 64);
  (*(*(v0 + 208) + 32))(v17, *(v0 + 192), *(v0 + 200));
  sub_243AC1318();
  CELiftUIDataSource.request(for:timeZone:)(v17, v19, v18);
  v22 = *(v0 + 184);
  v23 = *(v0 + 136);
  v24 = *(v0 + 72);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  sub_243AC1008();
  sub_243A224B4(v24 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, v23, &qword_27ED98D60, &unk_243AC4FF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v23, 1, v25);
  if (v27 == 1)
  {
    sub_243A2251C(*(v0 + 136), &qword_27ED98D60, &unk_243AC4FF0);
LABEL_11:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v46 = *(v0 + 80);
    sub_243A32BC0(&qword_27ED98AA0, &qword_27ED98A68, &unk_243ACA3A0);
    sub_243AC14D8();
    v85 = *(v0 + 128);
    v83 = *(v0 + 120);
    v50 = *(v0 + 96);
    (*(v26 + 8))(*(v0 + 136), v25);
    v51 = 0;
    v52 = *(v0 + 32);
    v53 = *(v52 + 64);
    v81 = v52 + 64;
    v54 = -1;
    v84 = *(v0 + 32);
    v55 = -1 << *(v84 + 32);
    if (-v55 < 64)
    {
      v54 = ~(-1 << -v55);
    }

    v56 = v54 & v53;
    v80 = (63 - v55) >> 6;
    v82 = v50;
    v86 = (v50 + 8);
    v89 = (v50 + 32);
    while (v56)
    {
      v57 = v51;
LABEL_31:
      v61 = *(v0 + 112);
      v60 = *(v0 + 120);
      v62 = *(v0 + 88);
      v63 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v64 = v63 | (v57 << 6);
      v65 = (*(v84 + 48) + 16 * v64);
      v66 = *v65;
      v67 = v65[1];
      (*(v82 + 16))(v61, *(v84 + 56) + *(v82 + 72) * v64, v62);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      v69 = *(v68 + 48);
      *v60 = v66;
      *(v83 + 8) = v67;
      (*(v82 + 32))(&v60[v69], v61, v62);
      (*(*(v68 - 8) + 56))(v60, 0, 1, v68);

      v59 = v57;
LABEL_32:
      v70 = *(v0 + 128);
      sub_243A22814(*(v0 + 120), v70, &qword_27ED98D58, qword_243AC74A0);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
      {

        goto LABEL_11;
      }

      v72 = *(v0 + 128);
      v73 = *v72;
      v74 = *(v85 + 8);
      (*v89)(*(v0 + 104), &v72[*(v71 + 48)], *(v0 + 88));
      sub_243A643A0();
      v75 = *(v0 + 184);
      v76 = *(v0 + 104);
      v77 = *(v0 + 88);
      sub_243AC1048();

      (*v86)(v76, v77);
      v51 = v59;
    }

    if (v80 <= v51 + 1)
    {
      v58 = v51 + 1;
    }

    else
    {
      v58 = v80;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v57 >= v80)
      {
        v78 = *(v0 + 120);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
        (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
        v56 = 0;
        goto LABEL_32;
      }

      v56 = *(v81 + 8 * v57);
      ++v51;
      if (v56)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_12:
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v32 = sub_243AC1468();
  *(v0 + 240) = __swift_project_value_buffer(v32, qword_27EDA14A8);
  v33 = *(v31 + 16);
  *(v0 + 248) = v33;
  *(v0 + 256) = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v28, v29, v30);
  v34 = sub_243AC1448();
  v35 = sub_243AC2B78();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 224);
  v38 = *(v0 + 200);
  v39 = *(v0 + 208);
  if (v36)
  {
    v40 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v90 = v88;
    *v40 = 136315138;
    sub_243A6FD6C(&qword_27ED98D70, MEMORY[0x277CC9260]);
    v41 = sub_243AC2EB8();
    v43 = v42;
    v44 = *(v39 + 8);
    v44(v37, v38);
    v45 = sub_243AB73D8(v41, v43, &v90);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_243A1B000, v34, v35, "Sending email link with: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x245D47D20](v88, -1, -1);
    MEMORY[0x245D47D20](v40, -1, -1);
  }

  else
  {

    v44 = *(v39 + 8);
    v44(v37, v38);
  }

  *(v0 + 264) = v44;
  v47 = swift_task_alloc();
  *(v0 + 272) = v47;
  *v47 = v0;
  v47[1] = sub_243A6D9B0;
  v48 = *(v0 + 184);
  v49 = *(v0 + 64);

  return CELiftUIDataSource.data(for:)(v48);
}

uint64_t sub_243A6D9B0(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 272);
  v9 = *v3;
  *(*v3 + 280) = v2;

  if (v2)
  {
    v7 = sub_243A6DAE0;
  }

  else
  {
    sub_243A200C8(a1, a2);
    v7 = sub_243A30694;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_243A6DAE0()
{
  v46 = v0;
  *(v0 + 40) = *(v0 + 280);
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
  sub_243AC2DE8();
  v42 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2(v5, v3, v6);

  v8 = sub_243AC1448();
  LOBYTE(v4) = sub_243AC2B78();

  v41 = v4;
  v9 = os_log_type_enabled(v8, v4);
  v10 = *(v0 + 264);
  v11 = *(v0 + 232);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v43 = *(v0 + 184);
  v16 = *(v0 + 168);
  if (v9)
  {
    v39 = *(v0 + 280);
    log = v8;
    v17 = *(v0 + 200);
    v18 = swift_slowAlloc();
    v40 = v16;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v18 = 136315394;
    sub_243A6FD6C(&qword_27ED98D70, MEMORY[0x277CC9260]);
    v19 = sub_243AC2EB8();
    v38 = v11;
    v21 = v20;
    v10(v12, v17);
    v22 = sub_243AB73D8(v19, v21, &v45);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = sub_243AB73D8(v42, v7, &v45);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_243A1B000, log, v41, "Email link network request failed with url: %s | Error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v37, -1, -1);
    MEMORY[0x245D47D20](v18, -1, -1);

    (*(v15 + 8))(v43, v40);
    v10(v38, v17);
  }

  else
  {

    v10(v12, v14);
    (*(v15 + 8))(v43, v16);
    v10(v11, v14);
  }

  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v26 = *(v0 + 216);
  v28 = *(v0 + 184);
  v27 = *(v0 + 192);
  v29 = *(v0 + 160);
  v31 = *(v0 + 128);
  v30 = *(v0 + 136);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v44 = *(v0 + 104);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_243A6DE94()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A6DF64()
{
  *v0;
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A6E020()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A6E0EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A6FBD8();
  *a2 = result;
  return result;
}

void sub_243A6E11C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x73746E756F636361;
  v4 = 0xE700000000000000;
  v5 = 0x73726564616568;
  if (*v1 != 2)
  {
    v5 = 0x6E694C6C69616D65;
    v4 = 0xEC0000004C52556BLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000243ACBA40;
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

unint64_t sub_243A6E1A8()
{
  v1 = 0x73746E756F636361;
  v2 = 0x73726564616568;
  if (*v0 != 2)
  {
    v2 = 0x6E694C6C69616D65;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_243A6E230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A6FBD8();
  *a1 = result;
  return result;
}

uint64_t sub_243A6E258(uint64_t a1)
{
  v2 = sub_243A6F7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A6E294(uint64_t a1)
{
  v2 = sub_243A6F7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailDownloadLink.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  EmailDownloadLink.init(from:)(a1);
  return v5;
}

uint64_t *EmailDownloadLink.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v47 = v2;
  v48 = v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v36 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v42 = *(v44 - 8);
  v12 = *(v42 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = v36 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99750, &qword_243AC7208);
  v17 = *(v43 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v43);
  v20 = v36 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A6F7EC();
  v46 = v20;
  v22 = v47;
  sub_243AC2FE8();
  if (v22)
  {
    v32 = *(*v1 + 48);
    v33 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v35 = a1;
  }

  else
  {
    v37 = v11;
    v38 = v17;
    v47 = a1;
    v52 = 0;
    sub_243A227C0(&qword_27ED98DB0, &qword_27ED98D40, &qword_243AC7200);
    v23 = v44;
    v24 = v43;
    sub_243AC2E88();
    v25 = *(v42 + 32);
    v36[1] = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
    v26 = v25;
    v25(v1 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts, v45, v23);
    v51 = 1;
    sub_243AC2E88();
    v26(v1 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v15, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v50 = 2;
    sub_243A227C0(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
    v27 = v37;
    v28 = v46;
    sub_243AC2E78();
    sub_243A22814(v27, v3 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
    v49 = 3;
    sub_243A227C0(&qword_27ED99760, &qword_27ED99748, &unk_243AC71F0);
    v29 = v40;
    v30 = v41;
    sub_243AC2E88();
    v31 = v47;
    (*(v38 + 8))(v28, v24);
    (*(v39 + 32))(v3 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL, v29, v30);
    v35 = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v3;
}

uint64_t EmailDownloadLink.deinit()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t EmailDownloadLink.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_accounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_isAccountSelected, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_headers, &qword_27ED98D60, &unk_243AC4FF0);
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI17EmailDownloadLink_emailLinkURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_243A6EB70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A6EDA0)(a1);
}

uint64_t *sub_243A6ED48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = EmailDownloadLink.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_243A6EDA0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_243AC1528();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v6 = *(v5 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A6EEBC, 0, 0);
}

void sub_243A6EEBC()
{
  v96 = v0;
  v1 = [objc_opt_self() defaultStore];
  if (!v1)
  {
    __break(1u);
    goto LABEL_43;
  }

  v2 = v1;
  v3 = [v1 aa_primaryAppleAccount];

  if (!v3)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = type metadata accessor for CELiftUIDataSource();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
  *&v7[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = v3;
  *(v0 + 48) = v7;
  *(v0 + 56) = v6;
  v8 = objc_msgSendSuper2((v0 + 48), sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  sub_243A32BC0(&qword_27ED98D48, &qword_27ED98D18, &unk_243AC4ED0);
  sub_243AC14D8();
  v82 = v8;
  v9 = *(v0 + 80);
  v10 = *(v9 + 16);
  if (v10)
  {
    v79 = *(v0 + 80);
    v11 = *(v0 + 136);
    v13 = *(v11 + 16);
    v11 += 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = (v11 - 8);
    v16 = MEMORY[0x277D84F90];
    v89 = v13;
    v86 = *(v11 + 56);
    do
    {
      v17 = *(v0 + 160);
      v12(v17, v14, *(v0 + 128));
      static AccountEmailAddress.create(with:)(v17, v94);
      (*v15)(*(v0 + 160), *(v0 + 128));
      v18 = v94[0];
      v92 = v94[1];
      v19 = v94[2];
      v20 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_243AA0428(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_243AA0428((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v23 = &v16[32 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v92;
      *(v23 + 6) = v19;
      v23[56] = v20;
      v12 = v89;
      v14 += v86;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  v24 = *(v0 + 96);
  v25 = *(v0 + 104);

  sub_243AC14D8();
  v26 = *(v0 + 88);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v0 + 136);
    v31 = *(v28 + 16);
    v30 = v28 + 16;
    v29 = v31;
    v80 = *(v0 + 88);
    v32 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v33 = *(v30 + 56);
    v87 = *MEMORY[0x277D23258];
    v90 = (v30 - 8);
    v93 = MEMORY[0x277D84F90];
    v85 = v0;
    do
    {
      v40 = *(v0 + 144);
      v41 = *(v0 + 152);
      v42 = *(v0 + 128);
      v29(v41, v32, v42);
      v29(v40, v41, v42);
      v43 = (*(v30 + 72))(v40, v42);
      v44 = *v90;
      v45 = v0;
      v46 = *(v0 + 152);
      v47 = *(v45 + 144);
      v48 = *(v45 + 128);
      if (v43 == v87)
      {
        v44(v46, v48);
        (*(v30 + 80))(v47, v48);
        v49 = *(*v47 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_243AA020C(0, *(v93 + 2) + 1, 1, v93);
        }

        v0 = v85;
        v51 = *(v93 + 2);
        v50 = *(v93 + 3);
        if (v51 >= v50 >> 1)
        {
          v93 = sub_243AA020C((v50 > 1), v51 + 1, 1, v93);
        }

        *(v93 + 2) = v51 + 1;
        v93[v51 + 32] = v49;
      }

      else
      {
        v83 = *v90;
        v44(v47, v48);
        type metadata accessor for DecodableStateError();
        sub_243A6FD6C(&qword_27ED98D50, type metadata accessor for DecodableStateError);
        v34 = swift_allocError();
        v36 = v35;
        v37 = v33;
        v38 = v27;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
        v29(v36, v46, v48);
        *(v36 + v39) = MEMORY[0x277D839B0];
        v27 = v38;
        v33 = v37;
        swift_willThrow();
        v83(v46, v48);

        v0 = v85;
      }

      v32 += v33;
      --v27;
    }

    while (v27);
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v52 = *(v0 + 96);
  v53 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99748, &unk_243AC71F0);
  sub_243AC14D8();
  v88 = *(v0 + 72);
  v54 = *(v93 + 2);
  if (v54)
  {
    v84 = *(v0 + 64);
    v55 = v93 + 32;
    v77 = sub_243AC2A98();
    v56 = *(v77 - 8);
    v81 = *(v56 + 56);
    v78 = (v56 + 48);
    v76 = (v56 + 8);
    do
    {
      v91 = v54;
      v57 = *(v0 + 112);
      v58 = *(v0 + 120);
      v60 = *(v0 + 96);
      v59 = *(v0 + 104);
      v61 = *v55;
      v81(v58, 1, 1, v77);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      *(v62 + 24) = 0;
      *(v62 + 32) = v61;
      *(v62 + 40) = v84;
      *(v62 + 48) = v88;
      *(v62 + 56) = v82;
      *(v62 + 64) = v59;
      *(v62 + 72) = v60;
      sub_243A224B4(v58, v57, &qword_27ED98998, &qword_243AC4FD0);
      LODWORD(v57) = (*v78)(v57, 1, v77);

      v63 = v82;

      v64 = *(v0 + 112);
      if (v57 == 1)
      {
        sub_243A2251C(*(v0 + 112), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*v76)(v64, v77);
      }

      v66 = *(v62 + 16);
      v65 = *(v62 + 24);
      swift_unknownObjectRetain();

      if (v66)
      {
        swift_getObjectType();
        v67 = sub_243AC2A28();
        v69 = v68;
        swift_unknownObjectRelease();
      }

      else
      {
        v67 = 0;
        v69 = 0;
      }

      sub_243A2251C(*(v0 + 120), &qword_27ED98998, &qword_243AC4FD0);
      if (v69 | v67)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v67;
        *(v0 + 40) = v69;
      }

      swift_task_create();

      ++v55;
      v54 = v91 - 1;
    }

    while (v91 != 1);
  }

  v70 = *(v0 + 152);
  v71 = *(v0 + 160);
  v72 = *(v0 + 144);
  v74 = *(v0 + 112);
  v73 = *(v0 + 120);

  v75 = *(v0 + 8);

  v75();
}

unint64_t sub_243A6F7EC()
{
  result = qword_27ED99758;
  if (!qword_27ED99758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99758);
  }

  return result;
}

uint64_t type metadata accessor for EmailDownloadLink()
{
  result = qword_27ED99778;
  if (!qword_27ED99778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A6F924()
{
  sub_243A31978();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_243A31A9C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_243A6FA68();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A6FA68()
{
  if (!qword_27ED99788)
  {
    v0 = sub_243AC14E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED99788);
    }
  }
}

unint64_t sub_243A6FAD4()
{
  result = qword_27ED99790;
  if (!qword_27ED99790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99790);
  }

  return result;
}

unint64_t sub_243A6FB2C()
{
  result = qword_27ED99798;
  if (!qword_27ED99798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99798);
  }

  return result;
}

unint64_t sub_243A6FB84()
{
  result = qword_27ED997A0;
  if (!qword_27ED997A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED997A0);
  }

  return result;
}

uint64_t sub_243A6FBD8()
{
  v0 = sub_243AC2E58();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243A6FC24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243A6FC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_243A1FEA8;

  return sub_243A6CD34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_243A6FD6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_243A6FDB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = &selRef_URL2x;
  if (v6 != 2)
  {
    v8 = &selRef_URL1x;
  }

  if (v6 >= 3)
  {
    v9 = &selRef_URL3x;
  }

  else
  {
    v9 = v8;
  }

  v10 = [a1 *v9];
  sub_243AC11D8();

  v11 = sub_243AC1208();
  v12 = *(*(v11 - 8) + 56);

  v12(a2, 0, 1, v11);
}

uint64_t sub_243A6FF00(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = [objc_opt_self() systemBrownColor];
      goto LABEL_29;
    case 2:
      v1 = [objc_opt_self() systemGreenColor];
      goto LABEL_29;
    case 3:
      v1 = [objc_opt_self() systemIndigoColor];
      goto LABEL_29;
    case 4:
      v1 = [objc_opt_self() systemOrangeColor];
      goto LABEL_29;
    case 5:
      v1 = [objc_opt_self() systemPinkColor];
      goto LABEL_29;
    case 6:
      v1 = [objc_opt_self() systemPurpleColor];
      goto LABEL_29;
    case 7:
      v1 = [objc_opt_self() systemRedColor];
      goto LABEL_29;
    case 8:
      v1 = [objc_opt_self() systemTealColor];
      goto LABEL_29;
    case 9:
      v1 = [objc_opt_self() systemMintColor];
      goto LABEL_29;
    case 10:
      v1 = [objc_opt_self() systemYellowColor];
      goto LABEL_29;
    case 11:
      v1 = [objc_opt_self() systemGrayColor];
      goto LABEL_29;
    case 12:
      v1 = [objc_opt_self() systemGray2Color];
      goto LABEL_29;
    case 13:
      v1 = [objc_opt_self() systemGray3Color];
      goto LABEL_29;
    case 14:
      v1 = [objc_opt_self() systemGray4Color];
      goto LABEL_29;
    case 15:
      v1 = [objc_opt_self() systemGray5Color];
      goto LABEL_29;
    case 16:
      v1 = [objc_opt_self() systemGray6Color];
      goto LABEL_29;
    case 17:

      return sub_243AC1F88();
    case 18:
      v1 = [objc_opt_self() systemCyanColor];
      goto LABEL_29;
    case 19:
      v1 = [objc_opt_self() darkGrayColor];
      goto LABEL_29;
    case 20:
      v1 = [objc_opt_self() lightGrayColor];
      goto LABEL_29;
    case 21:
      v1 = [objc_opt_self() magentaColor];
      goto LABEL_29;
    case 22:

      return MEMORY[0x282133480]();
    case 23:

      return sub_243AC1FD8();
    default:
      v1 = [objc_opt_self() systemBlueColor];
LABEL_29:
      v3 = v1;

      return sub_243AC1F78();
  }
}

uint64_t sub_243A70290(unsigned __int8 a1)
{
  if (a1 > 0x16u)
  {
    return 11;
  }

  else
  {
    return *&asc_243AC74D0[8 * a1];
  }
}

uint64_t sub_243A70330@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_243A70360(uint64_t a1, unint64_t a2)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    v6 = sub_243AC2818();
    v7 = [v5 applicationIsInstalled_];

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);

    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_243AB73D8(a1, a2, &v13);
      *(v11 + 12) = 1024;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_243A1B000, v9, v10, "Bundle ID %s is installed: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A7051C()
{
  v0 = sub_243AC2EF8();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t CERefreshCacheAction.performAction(with:localStore:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243A33068;

  return sub_243A70B64();
}

uint64_t sub_243A70610(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

void *CERefreshCacheAction.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2[2] = result;
    v4 = sub_243AC1408();
    v5 = sub_243AC13F8();
    v6 = MEMORY[0x277CFB0F8];
    v2[6] = v4;
    v2[7] = v6;
    v2[3] = v5;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CERefreshCacheAction.init(from:)(uint64_t *a1)
{
  v2 = v1;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v1 + 16) = result;
    v5 = sub_243AC1408();
    v6 = sub_243AC13F8();
    v8 = v5;
    v9 = MEMORY[0x277CFB0F8];
    *&v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_243A71060(&v7, v2 + 24);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CERefreshCacheAction.__allocating_init(accountStore:recommendationsFetcher:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_243A71060(a2, v4 + 24);
  return v4;
}

uint64_t CERefreshCacheAction.init(accountStore:recommendationsFetcher:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_243A71060(a2, v2 + 24);
  return v2;
}

uint64_t CERefreshCacheAction.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_243A70904()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A70B64();
}

id sub_243A70AA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v4 + 16) = result;
    v6 = sub_243AC1408();
    v7 = sub_243AC13F8();
    v9 = v6;
    v10 = MEMORY[0x277CFB0F8];
    *&v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = sub_243A71060(&v8, v4 + 24);
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A70B84()
{
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  v0[20] = __swift_project_value_buffer(v1, qword_27EDA14A8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243A1B000, v2, v3, "ClearCacheAction: performing action", v4, 2u);
    MEMORY[0x245D47D20](v4, -1, -1);
  }

  v5 = v0[19];

  v6 = *(v5 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243A70D60;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED997B8, qword_243AC76C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243A70610;
  v0[13] = &block_descriptor_5;
  v0[14] = v7;
  [v6 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A70D60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_243A70F78;
  }

  else
  {
    v3 = sub_243A70E70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A70E70()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    v3 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    sub_243AC1418();
  }

  else
  {
    v4 = v0[20];
    v1 = sub_243AC1448();
    v5 = sub_243AC2B58();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243A1B000, v1, v5, "ClearCacheAction: no account available", v6, 2u);
      MEMORY[0x245D47D20](v6, -1, -1);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_243A70F78()
{
  v1 = v0[21];
  swift_willThrow();

  v2 = v0[20];
  v3 = sub_243AC1448();
  v4 = sub_243AC2B58();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_243A1B000, v3, v4, "ClearCacheAction: no account available", v5, 2u);
    MEMORY[0x245D47D20](v5, -1, -1);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_243A71060(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_243A71158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CERefreshCacheAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243A711C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation) = a1;

  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 buildRecommendationFlowControllerWithAction_];
  if (v9)
  {
    v21 = v9;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v10 = sub_243AC1468();
    __swift_project_value_buffer(v10, qword_27EDA14A8);
    v11 = v8;
    v12 = sub_243AC1448();
    v13 = sub_243AC2B48();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = [v11 identifier];
      v17 = sub_243AC2858();
      v19 = v18;

      v20 = sub_243AB73D8(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_243A1B000, v12, v13, "Presenting native modal flow for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D47D20](v15, -1, -1);
      MEMORY[0x245D47D20](v14, -1, -1);
    }

    [v21 setCloudRecommendationsDelegate_];
    [*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_presenter) presentViewController:v21 animated:1 completion:0];
  }
}

void sub_243A71408(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  if (v2)
  {
    v8 = v2;
    [a1 integerValue];
    v4 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate);
      swift_unknownObjectRetain();
      v6 = [a1 integerValue];
      v7 = *(v4 + 16);
      v9 = *(v4 + 136);
      sub_243A3CF58(v8, v6, &v9);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_243A71540()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_activeRecommendation);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24NativeModalActionHandler_delegate);
    if (v2)
    {
      v3 = *(v2 + 16);
      v5 = *(v2 + 136);
      v4 = v1;
      swift_unknownObjectRetain();
      sub_243A3C96C(v4, &v5);
      swift_unknownObjectRelease();
    }
  }
}

id sub_243A71638()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A71700(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_243A71860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationFlowControllerRepresentable.FlowControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A7190C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_243AC2178();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_243AC21A8();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A4C4D4();
  v14 = sub_243AC2BC8();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_243A71C34;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);

  v17 = a3;
  v18 = a1;

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A71CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A71D00();
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_243A71BEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_243A71C34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [*(v0 + 32) integerValue];
  v4 = 3;
  sub_243A3CF58(v2, v3, &v4);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243A71CA8()
{
  result = qword_27ED99860;
  if (!qword_27ED99860)
  {
    sub_243AC2178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99860);
  }

  return result;
}

unint64_t sub_243A71D00()
{
  result = qword_27ED99870;
  if (!qword_27ED99870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98F90, &qword_243AC5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99870);
  }

  return result;
}

uint64_t sub_243A71D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_243A71DAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_243A71E00()
{
  result = qword_27ED99878;
  if (!qword_27ED99878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99878);
  }

  return result;
}

id sub_243A71E54()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() buildRecommendationFlowControllerWithAction_];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        [v6 setCloudRecommendationsDelegate_];
      }

      return v5;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277D75D28]);

  return [v8 init];
}

uint64_t sub_243A71F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243A7207C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243A71FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243A7207C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243A72054()
{
  sub_243A7207C();
  sub_243AC1BF8();
  __break(1u);
}

unint64_t sub_243A7207C()
{
  result = qword_27ED99880;
  if (!qword_27ED99880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99880);
  }

  return result;
}

unint64_t sub_243A720D0(uint64_t a1)
{
  v2 = sub_243AC1528();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v48 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v47 = &v41 - v9;
  v53 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
    v10 = sub_243AC2E28();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v53 + 64;
  v12 = 1 << *(v53 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v53 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = v52 + 16;
  v45 = v52 + 32;
  v42 = v10 + 8;

  v17 = 0;
  v44 = v11;
  v43 = v15;
  while (v14)
  {
    v21 = v17;
LABEL_14:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = v22 | (v21 << 6);
    v24 = v52;
    v25 = (*(v53 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v49;
    v29 = v47;
    v30 = v51;
    (*(v52 + 16))(&v47[*(v49 + 48)], *(v53 + 56) + *(v52 + 72) * v23, v51);
    *v29 = v27;
    v29[1] = v26;
    v31 = v48;
    sub_243A22814(v29, v48, &qword_27ED98D78, &qword_243AC5000);
    v32 = *(v28 + 48);
    v34 = *v31;
    v33 = v31[1];
    (*(v24 + 32))(v50, v31 + v32, v30);

    swift_dynamicCast();
    sub_243A21C48(&v54, v56);
    sub_243A21C48(v56, v57);
    sub_243A21C48(v57, &v55);
    result = sub_243A2DDC0(v34, v33);
    v35 = result;
    if (v36)
    {
      v18 = (v10[6] + 16 * result);
      v19 = v18[1];
      *v18 = v34;
      v18[1] = v33;

      v20 = (v10[7] + 32 * v35);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_243A21C48(&v55, v20);
    }

    else
    {
      if (v10[2] >= v10[3])
      {
        goto LABEL_20;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v10[6] + 16 * result);
      *v37 = v34;
      v37[1] = v33;
      result = sub_243A21C48(&v55, (v10[7] + 32 * result));
      v38 = v10[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v10[2] = v40;
    }

    v17 = v21;
    v11 = v44;
    v15 = v43;
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v17;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_243A724E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998A8, &qword_243AC79B8);
    v2 = sub_243AC2E28();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_243A20058(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_243A21C48(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_243A21C48(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_243A21C48(v32, v33);
    v17 = *(v2 + 40);
    result = sub_243AC2C98();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_243A21C48(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A727B8()
{
  sub_243AC2FB8();
  sub_243AC28A8();
  return sub_243AC2FD8();
}

uint64_t sub_243A72824()
{
  sub_243AC2FB8();
  sub_243AC28A8();
  return sub_243AC2FD8();
}

uint64_t sub_243A72874@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243AC2E58();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_243A728FC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_243AC2E58();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_243A72960(uint64_t a1)
{
  v2 = sub_243A73738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A7299C(uint64_t a1)
{
  v2 = sub_243A73738();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243A729D8(uint64_t *a1)
{
  v19 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v18 = &v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998B0, &qword_243AC79F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v1[2] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A73738();
  sub_243AC2FE8();
  if (v2)
  {

    v14 = *(*v1 + 12);
    v15 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    sub_243A7378C();
    v13 = v18;
    sub_243AC2E78();
    (*(v8 + 8))(v11, v7);
    sub_243A22814(v13, v1 + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_243A72C40()
{
  sub_243A7363C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CancelAction()
{
  result = qword_27ED99888;
  if (!qword_27ED99888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A72D00()
{
  sub_243A31A9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_243A72D9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A730F8)(a1);
}

uint64_t sub_243A72E4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243A73010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_243A729D8(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_243A730F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_243AC1528();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A731F0, 0, 0);
}

uint64_t sub_243A731F0()
{
  v1 = v0[12];
  sub_243A735CC(v0[8] + OBJC_IVAR____TtC21CloudRecommendationUI12CancelAction_userInfo, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_243A7363C(v0[12]);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_22:
      v31 = v0[11];
      v30 = v0[12];

      v32 = v0[1];

      return v32();
    }

LABEL_3:
    v6 = v5;
LABEL_4:
    sub_243A1FBF8();

    goto LABEL_22;
  }

  v7 = v0[7];
  sub_243A22438();
  sub_243AC14D8();
  v8 = v0[10];
  (*(v3 + 8))(v0[12], v2);
  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  result = sub_243AC2E08();
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 64);
  v36 = result;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v35 = v8;
  v34 = (v8 + 8);
  v33 = result + 64;
  if ((v15 & v13) == 0)
  {
LABEL_11:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v12 >= v17)
      {
        break;
      }

      v20 = *(v9 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v29 = v0[8];

    v5 = *(v29 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      v6 = v5;
      sub_243A724E8(v11);

      goto LABEL_4;
    }

    goto LABEL_3;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_16:
    v21 = v18 | (v12 << 6);
    v22 = (*(v9 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v35 + 16))(v0[11], *(v9 + 56) + *(v35 + 72) * v21, v0[9]);

    sub_243A64778(v0 + 2);
    (*v34)(v0[11], v0[9]);
    *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v25 = (v36[6] + 16 * v21);
    *v25 = v23;
    v25[1] = v24;
    v11 = v36;
    result = sub_243A21C48(v0 + 1, (v36[7] + 32 * v21));
    v26 = v36[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v36[2] = v28;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A735CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A7363C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243A736AC(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 16);
  *(v1 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_243A736F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243A73738()
{
  result = qword_27ED998B8;
  if (!qword_27ED998B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998B8);
  }

  return result;
}

unint64_t sub_243A7378C()
{
  result = qword_27ED98AC0;
  if (!qword_27ED98AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A38, qword_243AC7210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CancelAction.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CancelAction.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_243A738D4()
{
  result = qword_27ED998C0;
  if (!qword_27ED998C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998C0);
  }

  return result;
}

unint64_t sub_243A7392C()
{
  result = qword_27ED998C8;
  if (!qword_27ED998C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998C8);
  }

  return result;
}

unint64_t sub_243A73984()
{
  result = qword_27ED998D0;
  if (!qword_27ED998D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED998D0);
  }

  return result;
}

uint64_t sub_243A739D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243AC2E58();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_243A73A2C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_243AC2E58();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_243A73A84(uint64_t a1)
{
  v2 = sub_243A74734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A73AC0(uint64_t a1)
{
  v2 = sub_243A74734();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243A73AFC(uint64_t *a1)
{
  v19 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v18 = &v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED998F8, &qword_243AC7CB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v1[2] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A74734();
  sub_243AC2FE8();
  if (v2)
  {

    v14 = *(*v1 + 12);
    v15 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    sub_243A7378C();
    v13 = v18;
    sub_243AC2E78();
    (*(v8 + 8))(v11, v7);
    sub_243A74788(v13, v1 + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_243A73D54()
{
  sub_243A7363C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinishAction()
{
  result = qword_27ED998D8;
  if (!qword_27ED998D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A73E14()
{
  sub_243A31A9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_243A73EB0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243A7420C)(a1);
}

uint64_t sub_243A73F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243A74124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_243A73AFC(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_243A7420C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_243AC1528();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A74304, 0, 0);
}

uint64_t sub_243A74304()
{
  v1 = v0[12];
  sub_243A735CC(v0[8] + OBJC_IVAR____TtC21CloudRecommendationUI12FinishAction_userInfo, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_243A7363C(v0[12]);
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_22:
      v33 = v0[11];
      v32 = v0[12];

      v34 = v0[1];

      return v34();
    }

LABEL_3:
    v6 = v5;
    v7 = 0;
LABEL_4:
    sub_243A1EED8(v7);

    goto LABEL_22;
  }

  v8 = v0[7];
  sub_243A22438();
  sub_243AC14D8();
  v9 = v0[10];
  (*(v3 + 8))(v0[12], v2);
  v10 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  result = sub_243AC2E08();
  v12 = result;
  v13 = 0;
  v14 = *(v10 + 64);
  v38 = result;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v37 = v9;
  v36 = (v9 + 8);
  v35 = result + 64;
  if ((v16 & v14) == 0)
  {
LABEL_11:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v13 >= v18)
      {
        break;
      }

      v21 = *(v10 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    v30 = v0[8];

    v5 = *(v30 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }

    if (v12)
    {
      v6 = v5;
      v31 = sub_243A724E8(v12);

      v7 = v31;
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_16:
    v22 = v19 | (v13 << 6);
    v23 = (*(v10 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    (*(v37 + 16))(v0[11], *(v10 + 56) + *(v37 + 72) * v22, v0[9]);

    sub_243A64778(v0 + 2);
    (*v36)(v0[11], v0[9]);
    *(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v26 = (v38[6] + 16 * v22);
    *v26 = v24;
    v26[1] = v25;
    v12 = v38;
    result = sub_243A21C48(v0 + 1, (v38[7] + 32 * v22));
    v27 = v38[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      break;
    }

    v38[2] = v29;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_243A746EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243A74734()
{
  result = qword_27ED99900;
  if (!qword_27ED99900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99900);
  }

  return result;
}

uint64_t sub_243A74788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A7480C()
{
  result = qword_27ED99908;
  if (!qword_27ED99908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99908);
  }

  return result;
}

unint64_t sub_243A74864()
{
  result = qword_27ED99910;
  if (!qword_27ED99910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99910);
  }

  return result;
}

unint64_t sub_243A748BC()
{
  result = qword_27ED99918;
  if (!qword_27ED99918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99918);
  }

  return result;
}

uint64_t sub_243A74910(void *a1, void *a2)
{
  v3 = v2;
  v69 = a2;
  v5 = sub_243AC1208();
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v66 - v10;
  v11 = sub_243AC1108();
  v67 = *(v11 - 8);
  v12 = *(v67 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter;
  if (!*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter))
  {
    v18 = [objc_allocWithZone(CERemoteUIPresenter) initWithAccount:*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account) presenter:*(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_presenter)];
    v19 = *(v3 + v17);
    *(v3 + v17) = v18;
  }

  v20 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation);
  *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation) = a1;
  v21 = a1;

  v22 = *(v3 + v17);
  if (v22)
  {
    [v22 setDelegate_];
  }

  v70 = v11;
  v23 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_account);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC4AC0;
  v25 = *MEMORY[0x277CB8960];
  *(inited + 32) = sub_243AC2858();
  *(inited + 40) = v26;
  v27 = *MEMORY[0x277CB8920];
  *(inited + 48) = sub_243AC2858();
  *(inited + 56) = v28;
  v29 = *MEMORY[0x277CB8980];
  *(inited + 64) = sub_243AC2858();
  *(inited + 72) = v30;
  sub_243A9CBC8(v23, inited);
  v32 = v31;
  swift_setDeallocating();
  v33 = *(inited + 16);
  swift_arrayDestroy();
  v34 = *(v3 + v17);
  if (v34)
  {
    type metadata accessor for Dataclass(0);
    sub_243A750D8();
    v35 = v34;
    v36 = sub_243AC2AD8();
    [v35 setDataclasses_];
  }

  v68 = v17;
  v73 = v5;
  v37 = *(v32 + 16);

  v75 = v37;
  sub_243AC2EB8();
  sub_243AC10D8();

  v38 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_context);
  v75 = 0;
  v76 = 0xE000000000000000;
  v39 = 0x74756F6B61657262;
  v40 = 0xEA00000000006C61;
  v41 = 0x75747865746E6F63;
  if (v38 != 3)
  {
    v41 = 0xD000000000000012;
    v40 = 0x8000000243ACBCD0;
  }

  if (v38 == 2)
  {
    v40 = 0xE800000000000000;
  }

  else
  {
    v39 = v41;
  }

  v42 = 0xE400000000000000;
  v43 = 1852399981;
  if (v38)
  {
    v43 = 0x6574656C706D6F63;
    v42 = 0xE900000000000064;
  }

  if (v38 <= 1)
  {
    v44 = v43;
  }

  else
  {
    v44 = v39;
  }

  if (v38 <= 1)
  {
    v45 = v42;
  }

  else
  {
    v45 = v40;
  }

  v46 = v16;
  MEMORY[0x245D46C90](v44, v45);

  v47 = v74;
  sub_243AC10D8();

  v48 = [v69 actionURL];
  sub_243AC11D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999D0, &qword_243AC7E50);
  v49 = v67;
  v50 = *(v67 + 72);
  v51 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_243AC5F30;
  v53 = v52 + v51;
  v54 = v49;
  v55 = *(v49 + 16);
  v69 = v46;
  v56 = v46;
  v57 = v70;
  v55(v53, v56, v70);
  v55(v53 + v50, v47, v57);
  v58 = v71;
  sub_243AC11F8();

  v59 = v73;
  v60 = *(v72 + 8);
  v60(v9, v73);
  v61 = *(v3 + v68);
  if (v61)
  {
    v62 = v61;
    v63 = sub_243AC11C8();
    [v62 beginRUIFlowWithURL_];
  }

  v60(v58, v59);
  v64 = *(v54 + 8);
  v64(v74, v57);
  return (v64)(v69, v57);
}

id sub_243A74FF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TurnOnAppsActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_243A750D8()
{
  result = qword_27ED98A08;
  if (!qword_27ED98A08)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98A08);
  }

  return result;
}

void sub_243A75130(void *a1, const char *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_activeRecommendation);
  if (v3)
  {
    if (!a1)
    {
      v19 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_delegate);
      if (v19)
      {
        v20 = *(v19 + 16);
        LOBYTE(v24) = *(v19 + 136);
        v21 = v3;
        swift_unknownObjectRetain();
        sub_243A3CF58(v21, 0, &v24);
        swift_unknownObjectRelease();
      }

      v22 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter);
      *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23TurnOnAppsActionHandler_remoteUIPresenter) = 0;
      goto LABEL_16;
    }

    v6 = qword_27ED98910;
    v23 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14A8);
    v8 = a1;
    v9 = sub_243AC1448();
    v10 = sub_243AC2B58();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_243AC2F58();
      v15 = sub_243AB73D8(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_243A1B000, v9, v10, a2, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v16 = sub_243AC1468();
    __swift_project_value_buffer(v16, qword_27EDA14A8);
    v23 = sub_243AC1448();
    v17 = sub_243AC2B58();
    if (os_log_type_enabled(v23, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_243A1B000, v23, v17, "Active recommendation unavailable, bailing.", v18, 2u);
      MEMORY[0x245D47D20](v18, -1, -1);
    }
  }

  v22 = v23;
LABEL_16:
}

void RecommendationBreakout.init(controller:account:presenter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_243AC2058();
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  swift_unknownObjectWeakInit();
  type metadata accessor for RecommendationsController();
  sub_243A76918(&qword_27ED98FB0, type metadata accessor for RecommendationsController);

  *a4 = sub_243AC1828();
  *(a4 + 8) = v8;
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  *(a4 + 16) = sub_243A762E4(a1, a2, 2, inited);
  swift_unknownObjectWeakAssign();
}

uint64_t RecommendationBreakout.body.getter()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v4[6] = v4[0];
  sub_243A76448(v0, v4);
  v2 = swift_allocObject();
  sub_243A76484(v4, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999E0, &qword_243AC7EB0);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0);
  sub_243A764C4();
  sub_243A76918(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel);
  return sub_243AC20F8();
}

uint64_t sub_243A756BC(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999F8, &qword_243AC7EB8);
  sub_243A76884(&qword_27ED999F0, &qword_27ED999F8, &qword_243AC7EB8, sub_243A76580);
  return sub_243AC2118();
}

uint64_t sub_243A75764(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v5[6] = v5[0];
  sub_243A76448(a2, v5);
  v3 = swift_allocObject();
  sub_243A76484(v5, v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A08, &unk_243AC7EC0);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0);
  sub_243A76580();
  sub_243A76918(&qword_27ED991A8, sub_243A4FEC4);
  return sub_243AC20F8();
}

uint64_t sub_243A75900@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A18, &qword_243AC7ED8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A40, &qword_243AC8010);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99138, &unk_243AC5E20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - v16;
  v18 = *a1;
  if ([v18 completed])
  {
    sub_243A76448(a2, v46);
    v19 = swift_allocObject();
    sub_243A76484(v46, v19 + 16);
    v42 = v18;
    sub_243A4FEC4();
    v20 = v18;
    sub_243AC2058();
    v21 = v45;
    *v17 = v44;
    *(v17 + 1) = v21;
    *(v17 + 4) = 16777217;
    LOBYTE(v42) = 0;
    sub_243AC2058();
    v22 = v45;
    v17[24] = v44;
    *(v17 + 4) = v22;
    *(v17 + 5) = sub_243A76BB0;
    *(v17 + 6) = v19;
    *(v17 + 7) = nullsub_1;
    *(v17 + 8) = 0;
    v23 = *(type metadata accessor for Card() + 48);
    *&v17[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    v24 = &v17[*(v14 + 36)];
    *v24 = xmmword_243AC5D40;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v24[32] = 0;
    sub_243A224B4(v17, v13, &qword_27ED99138, &unk_243AC5E20);
    swift_storeEnumTagMultiPayload();
    sub_243A4FA94();
    sub_243A7660C();
    sub_243AC1AE8();
    v25 = v17;
    v26 = &qword_27ED99138;
    v27 = &unk_243AC5E20;
  }

  else
  {
    sub_243A76448(a2, v46);
    v28 = swift_allocObject();
    v40[2] = a3;
    v29 = v28;
    sub_243A76484(v46, v28 + 16);
    sub_243A76448(a2, &v44);
    v30 = swift_allocObject();
    sub_243A76484(&v44, v30 + 16);
    *(v30 + 64) = v18;
    v41 = v18;
    sub_243A4FEC4();
    v40[1] = v10;
    v31 = v18;
    sub_243AC2058();
    v32 = v43;
    *v9 = v42;
    *(v9 + 1) = v32;
    *(v9 + 4) = 0x1000000;
    LOBYTE(v41) = 0;
    sub_243AC2058();
    v33 = v43;
    v9[24] = v42;
    *(v9 + 4) = v33;
    *(v9 + 5) = sub_243A76960;
    *(v9 + 6) = v29;
    *(v9 + 7) = sub_243A76980;
    *(v9 + 8) = v30;
    v34 = *(type metadata accessor for Card() + 48);
    *&v9[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
    swift_storeEnumTagMultiPayload();
    sub_243A76448(a2, v46);
    v35 = swift_allocObject();
    sub_243A76484(v46, v35 + 16);
    *(v35 + 64) = v31;
    v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A28, &qword_243AC7EE0) + 36)];
    *v36 = sub_243A76A1C;
    v36[1] = v35;
    v36[2] = 0;
    v36[3] = 0;
    v37 = &v9[*(v6 + 36)];
    *v37 = xmmword_243AC5D40;
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    v37[32] = 0;
    sub_243A224B4(v9, v13, &qword_27ED99A18, &qword_243AC7ED8);
    swift_storeEnumTagMultiPayload();
    sub_243A4FA94();
    sub_243A7660C();
    v38 = v31;
    sub_243AC1AE8();
    v25 = v9;
    v26 = &qword_27ED99A18;
    v27 = &qword_243AC7ED8;
  }

  return sub_243A2251C(v25, v26, v27);
}

void sub_243A75E10(void *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_243A83E5C(a1, a2, Strong);
  }
}

uint64_t sub_243A75E90(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(a1 + 8);
  v9 = [a2 identifier];
  v10 = sub_243AC2858();
  v12 = v11;

  v13 = sub_243AC2A98();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  *(v14 + 48) = v12;
  *(v14 + 56) = 2;

  sub_243A3306C(0, 0, v7, &unk_243AC87F0, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC51A0;
  *(inited + 32) = a2;
  HIBYTE(v19) = 2;
  v16 = a2;
  sub_243A3C784(inited, &v19 + 7);
  swift_setDeallocating();
  v17 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_243A76050()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v4[6] = v4[0];
  sub_243A76448(v0, v4);
  v2 = swift_allocObject();
  sub_243A76484(v4, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED999E0, &qword_243AC7EB0);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0);
  sub_243A764C4();
  sub_243A76918(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel);
  return sub_243AC20F8();
}

uint64_t sub_243A761E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A76268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A762E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = *a4;
  v17[3] = v7;
  v17[4] = &off_2856BC228;
  v17[0] = a4;
  type metadata accessor for ActionsController();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17[-1] - v11);
  (*(v13 + 16))(&v17[-1] - v11);
  v14 = *v12;
  *(v8 + 56) = v7;
  *(v8 + 64) = &off_2856BC228;
  *(v8 + 24) = a2;
  *(v8 + 32) = v14;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 16) = a1;
  *(v8 + 136) = a3;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v8;
}

unint64_t sub_243A764C4()
{
  result = qword_27ED999E8;
  if (!qword_27ED999E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED999E0, &qword_243AC7EB0);
    sub_243A76884(&qword_27ED999F0, &qword_27ED999F8, &qword_243AC7EB8, sub_243A76580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED999E8);
  }

  return result;
}

unint64_t sub_243A76580()
{
  result = qword_27ED99A00;
  if (!qword_27ED99A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A08, &unk_243AC7EC0);
    sub_243A4FA94();
    sub_243A7660C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A00);
  }

  return result;
}

unint64_t sub_243A7660C()
{
  result = qword_27ED99A10;
  if (!qword_27ED99A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A18, &qword_243AC7ED8);
    sub_243A766C4();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A10);
  }

  return result;
}

unint64_t sub_243A766C4()
{
  result = qword_27ED99A20;
  if (!qword_27ED99A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99A28, &qword_243AC7EE0);
    sub_243A76918(&qword_27ED99148, type metadata accessor for Card);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A20);
  }

  return result;
}

uint64_t sub_243A7679C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243A767E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_243A76884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243A76918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A76980()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v4 = 2;
  return sub_243A3C118(v1, &v4);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  MEMORY[0x245D47DE0](v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  MEMORY[0x245D47DE0](v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_243A76A78()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A76AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A1FEA8;

  return sub_243A40910(a1, v4, v5, v6, v7, v8, v9);
}

id RecommendationAnalytics.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_243A7A32C(a1);

  return v4;
}

uint64_t RecommendationsViewContext.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852399981;
  v3 = 0x74756F6B61657262;
  v4 = 0x75747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656C706D6F63;
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

unint64_t sub_243A76C94(unsigned __int8 a1)
{
  v1 = 0xD000000000000028;
  if (a1 > 5u)
  {
    v5 = 0xD000000000000022;
    v6 = 0xD00000000000002DLL;
    if (a1 != 10)
    {
      v6 = 0xD00000000000002CLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000022;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v1 = v5;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000026;
    if (a1 != 3)
    {
      v2 = 0xD000000000000028;
    }

    v3 = 0xD000000000000032;
    if (a1 == 1)
    {
      v3 = 0xD000000000000024;
    }

    if (!a1)
    {
      v3 = 0xD000000000000020;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_243A76DDC()
{
  v1 = *v0;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v1 - 1);
  return sub_243AC2FD8();
}

uint64_t sub_243A76E54()
{
  v1 = *v0;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v1 - 1);
  return sub_243AC2FD8();
}

uint64_t sub_243A76E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A7AB90(*a1);
  *a2 = result;
  return result;
}

CloudRecommendationUI::RecommendationsViewContext_optional __swiftcall RecommendationsViewContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_243AC2E58();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243A76F3C()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A77024()
{
  *v0;
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A770F8()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

void sub_243A771E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852399981;
  v5 = 0xE800000000000000;
  v6 = 0x74756F6B61657262;
  v7 = 0xEA00000000006C61;
  v8 = 0x75747865746E6F63;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000243ACBCD0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE900000000000064;
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

uint64_t sub_243A7728C(void *a1, void *a2)
{
  sub_243AC2D08();

  strcpy(v13, "totalStorage: ");
  v4 = [a1 description];
  v5 = sub_243AC2858();
  v7 = v6;

  MEMORY[0x245D46C90](v5, v7);

  MEMORY[0x245D46C90](0x6F74536465737520, 0xEE00203A65676172);
  v8 = [a2 description];
  v9 = sub_243AC2858();
  v11 = v10;

  MEMORY[0x245D46C90](v9, v11);

  return v13[0];
}

id RecommendationAnalytics.init(account:)(void *a1)
{
  v2 = sub_243A7A32C(a1);

  return v2;
}

uint64_t sub_243A7741C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED992A0, qword_243AC63F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  [a2 doubleValue];
  v13 = objc_opt_self();
  v14 = [v13 bytes];
  sub_243A2CFF0(0, &qword_27ED992A8, 0x277CCAE18);
  sub_243AC1068();
  v15 = [v13 gibibytes];
  sub_243AC1088();

  sub_243AC1078();
  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_totalStorageInGB) = v16;
  v17 = sub_243A7ABA4(a1, a2);
  sub_243AC1078();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v10, v5);
  result = (v20)(v12, v5);
  if (v17 <= 50)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (v17 <= 50)
  {
    v23 = 3;
  }

  else
  {
    v23 = 4;
  }

  if (v19 >= 6.0 || v19 < 0.0)
  {
    v22 = v23;
  }

  *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType) = v22;
  return result;
}

unint64_t sub_243A77640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD0, &unk_243AC58D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC8060;
  *(inited + 32) = 0x70756B636162;
  *(inited + 40) = 0xE600000000000000;
  v2 = OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account;
  [*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account) isEnabledForDataclass_];
  *(inited + 48) = sub_243AC2A08();
  *(inited + 56) = 0x6576697264;
  *(inited + 64) = 0xE500000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 72) = sub_243AC2A08();
  *(inited + 80) = 0x6D726F6665657266;
  *(inited + 88) = 0xE800000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 96) = sub_243AC2A08();
  *(inited + 104) = 1819304809;
  *(inited + 112) = 0xE400000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 120) = sub_243AC2A08();
  *(inited + 128) = 0x736567617373656DLL;
  *(inited + 136) = 0xE800000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 144) = sub_243AC2A08();
  *(inited + 152) = 0x7365746F6ELL;
  *(inited + 160) = 0xE500000000000000;
  [*(v0 + v2) isEnabledForDataclass_];
  *(inited + 168) = sub_243AC2A08();
  *(inited + 176) = 0x6570795472657375;
  *(inited + 184) = 0xE800000000000000;
  v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType);
  *(inited + 192) = sub_243AC2B08();
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x8000000243ACD910;
  v4 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_totalStorageInGB);
  *(inited + 216) = sub_243AC2AB8();
  v5 = sub_243A2E9D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98FD8, &unk_243AC82C0);
  swift_arrayDestroy();
  return v5;
}

void sub_243A77888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_storageDataController);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_243A7B21C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A77C44;
  aBlock[3] = &block_descriptor_103;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [v13 fetchCloudStorageInfo:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_243A77A58(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = qword_27ED98918;
    v5 = a1;
    v6 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14C0);
    v8 = v5;
    v9 = v6;
    v10 = sub_243AC1448();
    v11 = sub_243AC2B48();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v13 = v21;
      *v12 = 136315138;
      v14 = v8;
      v15 = v9;
      v16 = sub_243A7728C(v14, v15);
      v18 = v17;

      v19 = sub_243AB73D8(v16, v18, &v21);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_243A1B000, v10, v11, "Fetched storage info %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  return sub_243AC2A38();
}

void sub_243A77C44(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_243A77CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 384) = a6;
  *(v6 + 272) = a4;
  *(v6 + 280) = a5;
  return MEMORY[0x2822009F8](sub_243A77CF4, 0, 0);
}

uint64_t sub_243A77CF4()
{
  v16 = v0;
  v1 = v0[34];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v0[37] = sub_243A77640();
    v4 = swift_task_alloc();
    v0[38] = v4;
    *(v4 + 16) = v3;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[39] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99A98, &qword_243AC82F8);
    *v6 = v0;
    v6[1] = sub_243A77F7C;

    return MEMORY[0x2822007B8](v0 + 30, 0, 0, 0xD000000000000012, 0x8000000243ACD9B0, sub_243A7AE88, v4, v7);
  }

  else
  {
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14C0);
    v9 = sub_243AC1448();
    v10 = sub_243AC2B48();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, &v15);
      _os_log_impl(&dword_243A1B000, v9, v10, "%s Self unavailable bailing.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_243A77F7C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_243A78094, 0, 0);
}

uint64_t sub_243A78094()
{
  v40 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  v3 = *(v0 + 280);
  if (v1)
  {
    v4 = *(*(v0 + 288) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType);
    sub_243A7ABA4(v2, v1);
    sub_243A7741C(v2, v1);
    if (*(v3 + 16))
    {
      v5 = *(v0 + 280);
      v6 = sub_243A2DDC0(0x696669746E656469, 0xEA00000000007265);
      if (v7)
      {
        v8 = *(*(*(v0 + 280) + 56) + 8 * v6);
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v39[0] = 0;
          v39[1] = 0;
          v9 = v8;
          sub_243AC2848();
        }
      }
    }

    v33 = *(v0 + 296);
    v34 = sub_243AC2B08();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_243A8B530(v34, 0xD000000000000015, 0x8000000243ACD9F0, isUniquelyReferenced_nonNull_native);
    *(v0 + 336) = v33;
    v36 = objc_opt_self();
    v37 = sub_243AC2818();
    *(v0 + 344) = v37;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 256;
    *(v0 + 24) = sub_243A78744;
    v38 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AA8, &unk_243AC8300);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A2A88C;
    *(v0 + 104) = &block_descriptor_96;
    *(v0 + 112) = v38;
    [v36 requestFeatureWithId:v37 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v10;
    sub_243A7AE90(v3, sub_243A7A2E0, 0, v12, v39);

    v13 = v39[0];
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v14 = sub_243AC1468();
    __swift_project_value_buffer(v14, qword_27EDA14C0);

    v15 = sub_243AC1448();
    v16 = sub_243AC2B78();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 384);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v39);
      *(v18 + 12) = 2080;
      v20 = sub_243A76C94(v17);
      v22 = sub_243AB73D8(v20, v21, v39);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
      v23 = sub_243AC27E8();
      v25 = sub_243AB73D8(v23, v24, v39);

      *(v18 + 24) = v25;
      _os_log_impl(&dword_243A1B000, v15, v16, "%s Sending Event %s with payload: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v19, -1, -1);
      MEMORY[0x245D47D20](v18, -1, -1);
    }

    v26 = *(v0 + 288);
    sub_243A76C94(*(v0 + 384));
    v27 = sub_243AC2818();

    v28 = swift_allocObject();
    *(v28 + 16) = v13;
    *(v0 + 176) = sub_243A7B150;
    *(v0 + 184) = v28;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_243A79670;
    *(v0 + 168) = &block_descriptor_7;
    v29 = _Block_copy((v0 + 144));
    v30 = *(v0 + 184);

    AnalyticsSendEventLazy();

    _Block_release(v29);
    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_243A78744()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_243A79188;
  }

  else
  {
    v3 = sub_243A78854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A78854()
{
  v30 = v0;
  v1 = v0[43];
  v2 = v0[32];
  v0[45] = v2;

  if ([v2 canUse])
  {
    v0[46] = *(v0[36] + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_recommendationFilter);

    v3 = swift_task_alloc();
    v0[47] = v3;
    *v3 = v0;
    v3[1] = sub_243A78C90;

    return sub_243A28A14();
  }

  else
  {
    v6 = v0[40];
    v5 = v0[41];

    v7 = v0[42];
    v8 = v0[35];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = v7;
    sub_243A7AE90(v8, sub_243A7A2E0, 0, isUniquelyReferenced_nonNull_native, v29);

    v10 = v29[0];
    if (qword_27ED98918 != -1)
    {
      swift_once();
    }

    v11 = sub_243AC1468();
    __swift_project_value_buffer(v11, qword_27EDA14C0);

    v12 = sub_243AC1448();
    v13 = sub_243AC2B78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 384);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29[0] = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v29);
      *(v15 + 12) = 2080;
      v17 = sub_243A76C94(v14);
      v19 = sub_243AB73D8(v17, v18, v29);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
      v20 = sub_243AC27E8();
      v22 = sub_243AB73D8(v20, v21, v29);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_243A1B000, v12, v13, "%s Sending Event %s with payload: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v16, -1, -1);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

    v23 = v0[36];
    sub_243A76C94(*(v0 + 384));
    v24 = sub_243AC2818();

    v25 = swift_allocObject();
    *(v25 + 16) = v10;
    v0[22] = sub_243A7B150;
    v0[23] = v25;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_243A79670;
    v0[21] = &block_descriptor_7;
    v26 = _Block_copy(v0 + 18);
    v27 = v0[23];

    AnalyticsSendEventLazy();

    _Block_release(v26);
    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_243A78C90(char a1)
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 385) = a1;

  return MEMORY[0x2822009F8](sub_243A78DB0, 0, 0);
}

uint64_t sub_243A78DB0()
{
  v31 = v0;
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = *(v0 + 385) == 0;
  v6 = sub_243AC2A08();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v2;
  sub_243A8B530(v6, 0x5265746176697270, 0xEC00000079616C65, isUniquelyReferenced_nonNull_native);

  v8 = v0[35];

  v9 = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v2;
  sub_243A7AE90(v8, sub_243A7A2E0, 0, v9, v30);

  v10 = v30[0];
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v11 = sub_243AC1468();
  __swift_project_value_buffer(v11, qword_27EDA14C0);

  v12 = sub_243AC1448();
  v13 = sub_243AC2B78();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 384);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v30);
    *(v15 + 12) = 2080;
    v17 = sub_243A76C94(v14);
    v19 = sub_243AB73D8(v17, v18, v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v20 = sub_243AC27E8();
    v22 = sub_243AB73D8(v20, v21, v30);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_243A1B000, v12, v13, "%s Sending Event %s with payload: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v16, -1, -1);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  v23 = v0[36];
  sub_243A76C94(*(v0 + 384));
  v24 = sub_243AC2818();

  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  v0[22] = sub_243A7B150;
  v0[23] = v25;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_243A79670;
  v0[21] = &block_descriptor_7;
  v26 = _Block_copy(v0 + 18);
  v27 = v0[23];

  AnalyticsSendEventLazy();

  _Block_release(v26);
  v28 = v0[1];

  return v28();
}

uint64_t sub_243A79188()
{
  v47 = v0;
  v1 = v0[43];
  v2 = v0[44];
  swift_willThrow();

  v3 = 0x27ED98000uLL;
  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v4 = v0[44];
  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14C0);
  v6 = v4;
  v7 = sub_243AC1448();
  v8 = sub_243AC2B58();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[40];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v45 = v5;
    v46[0] = swift_slowAlloc();
    v14 = v46[0];
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[29];
    v18 = sub_243AC2F58();
    v20 = sub_243AB73D8(v18, v19, v46);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_243A1B000, v7, v8, "Unable to fetch Private Relay status. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v21 = v14;
    v5 = v45;
    MEMORY[0x245D47D20](v21, -1, -1);
    v22 = v13;
    v3 = 0x27ED98000;
    MEMORY[0x245D47D20](v22, -1, -1);
  }

  else
  {
  }

  v23 = v0[42];
  v24 = v0[35];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v23;
  sub_243A7AE90(v24, sub_243A7A2E0, 0, isUniquelyReferenced_nonNull_native, v46);

  v26 = v46[0];
  if (*(v3 + 2328) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27EDA14C0);

  v27 = sub_243AC1448();
  v28 = sub_243AC2B78();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 384);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46[0] = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACD990, v46);
    *(v30 + 12) = 2080;
    v32 = sub_243A76C94(v29);
    v34 = sub_243AB73D8(v32, v33, v46);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2080;
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v35 = sub_243AC27E8();
    v37 = sub_243AB73D8(v35, v36, v46);

    *(v30 + 24) = v37;
    _os_log_impl(&dword_243A1B000, v27, v28, "%s Sending Event %s with payload: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v31, -1, -1);
    MEMORY[0x245D47D20](v30, -1, -1);
  }

  v38 = v0[36];
  sub_243A76C94(*(v0 + 384));
  v39 = sub_243AC2818();

  v40 = swift_allocObject();
  *(v40 + 16) = v26;
  v0[22] = sub_243A7B150;
  v0[23] = v40;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_243A79670;
  v0[21] = &block_descriptor_7;
  v41 = _Block_copy(v0 + 18);
  v42 = v0[23];

  AnalyticsSendEventLazy();

  _Block_release(v41);
  v43 = v0[1];

  return v43();
}

id sub_243A79670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_243A2CFF0(0, &qword_27ED99AA0, 0x277D82BB8);
    v5 = sub_243AC27C8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_243A7970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_243A47650(a3, v27 - v11);
  v13 = sub_243AC2A98();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_243A6ABFC(v12);
  }

  else
  {
    sub_243AC2A88();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_243AC2A28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_243AC2888() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_243A79A60(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v10 = sub_243AC2A98();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v9;
  *(v12 + 48) = a2;
  sub_243A7970C(0, 0, v8, a3, v12);

  return sub_243A6ABFC(v8);
}

void sub_243A79BD4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = a1;
  v13 = sub_243A2E9D8(MEMORY[0x277D84F90]);
  sub_243AC2A68();
  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  *(v16 + 40) = v13;
  *(v16 + 48) = a4;
  sub_243A7970C(0, 0, v11, a5, v16);

  sub_243A6ABFC(v11);
}

uint64_t sub_243A79D30(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 40) = a2;
  *(v4 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_243A79D5C, 0, 0);
}

uint64_t sub_243A79D5C()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker);
  *(v0 + 64) = v1;

  return MEMORY[0x2822009F8](sub_243A79DDC, v1, 0);
}

uint64_t sub_243A79DDC()
{
  v8 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  if (v1 < 4)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    swift_beginAccess();

    sub_243A585B0(&v7, v4, v3);
    swift_endAccess();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243A79F3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 144) = *a3;
  return MEMORY[0x2822009F8](sub_243A79F68, 0, 0);
}

uint64_t sub_243A79F68()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker);
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_243A79FE8, v1, 0);
}

uint64_t sub_243A79FE8()
{
  v1 = *(v0 + 144);
  if (v1 <= 1)
  {
    v6 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    if (*(v0 + 144))
    {
      swift_beginAccess();
      v5 = *(v6 + 112);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v6 + 120);
    }
  }

  else if (v1 == 2)
  {
    v7 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    swift_beginAccess();
    v5 = *(v7 + 128);
  }

  else
  {
    if (v1 != 3)
    {
      v8 = *(v0 + 136);

      v9 = 0;
      goto LABEL_11;
    }

    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    swift_beginAccess();
    v5 = *(v2 + 136);
  }

  v9 = sub_243A57A40(v4, v3, v5);

LABEL_11:
  v10 = *(v0 + 8);

  return v10(v9 & 1);
}

uint64_t sub_243A7A134()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations);
  v2 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations) = MEMORY[0x277D84FA0];

  v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations);
  *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations) = v2;
}

id RecommendationAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecommendationAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243A7A2E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_243A7A32C(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_totalStorageInGB] = 0xBFF0000000000000;
  v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_userType] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenCompletedRecommendations] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_seenRecommendations] = v4;
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_displayedTracker;
  type metadata accessor for RecommendationsDisplayTracker();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = v4;
  v6[15] = v4;
  v6[16] = v4;
  v6[17] = v4;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_account] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CFB208]);
  v8 = a1;
  v9 = [v7 initWithAccount_];
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_storageDataController] = v9;
  type metadata accessor for RecommendationFilter();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI23RecommendationAnalytics_recommendationFilter] = sub_243A23C4C(v8);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for RecommendationAnalytics();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_243A7A460()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A7A4C4()
{
  result = qword_27ED99A60;
  if (!qword_27ED99A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A60);
  }

  return result;
}

uint64_t dispatch thunk of RecommendationAnalytics.trackDisplayedRecommendation(viewContext:recommendationIndentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x1D0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_243A1FEA8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of RecommendationAnalytics.displayedRecommendation(recommendationIdentifier:viewContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_243A7A8A8;

  return v12(a1, a2, a3);
}

uint64_t sub_243A7A8A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_243A7A9E4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_243A7AA78(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_243A7AB3C()
{
  result = qword_27ED99A90;
  if (!qword_27ED99A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99A90);
  }

  return result;
}

uint64_t sub_243A7AB90(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

id sub_243A7ABA4(void *a1, void *a2)
{
  [a1 floatValue];
  if ((~v4 & 0x7F800000) != 0 || (v4 & 0x7FFFFF) == 0)
  {
    [a2 floatValue];
    if ((~v6 & 0x7F800000) != 0 || (v6 & 0x7FFFFF) == 0)
    {
      [a1 floatValue];
      v9 = v8;
      result = [a2 floatValue];
      v12 = (v9 / v11) * 100.0;
      if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v12 > -9.2234e18)
      {
        if (v12 < 9.2234e18)
        {
          return v12;
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }
  }

  if (qword_27ED98918 != -1)
  {
    swift_once();
  }

  v13 = sub_243AC1468();
  __swift_project_value_buffer(v13, qword_27EDA14C0);
  v14 = sub_243AC1448();
  v15 = sub_243AC2B58();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_243A1B000, v14, v15, "Storage values are invalid.", v16, 2u);
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  return 0;
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_243A7AD98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A7ADD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A1FEA8;

  return sub_243A6AC64(a1, v5);
}

uint64_t sub_243A7AE90(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_243A2DDC0(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_243A8BB08();
      }
    }

    else
    {
      v31 = v50;
      sub_243A8A51C(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_243A2DDC0(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_243A48354();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_243AC2F38();
  __break(1u);
  return result;
}

uint64_t sub_243A7B118()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_243A20058(a2 + 32, a1 + 32);
}

uint64_t sub_243A7B188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A7B21C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99AB0, &qword_243AC8310) - 8) + 80);

  return sub_243A77A58(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243A7B2B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_243A7B2FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}