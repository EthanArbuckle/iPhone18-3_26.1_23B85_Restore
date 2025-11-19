id sub_24E2D76E8()
{
  OUTLINED_FUNCTION_13_58();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5B0);
  sub_24E347128();

  sub_24E2D62A8(v3);
  swift_getKeyPath();
  sub_24E347128();

  v0[OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_disabled] = (v2 & 1) == 0;
  sub_24E2D6358();
  return [v0 setNeedsLayout];
}

double sub_24E2D77C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_24DF95B98(a2, &v23 - v16, &unk_27F1E1CB0);
  sub_24DF95B98(a3, &v17[*(v14 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v18 = sub_24E3444F8();
  __swift_project_value_buffer(v18, qword_27F20B4E8);
  v19 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v21 = v20;

  (*(v9 + 8))(v13, v7);
  sub_24DF8BFF4(v17, &unk_27F1E1CA0);
  return v21;
}

double sub_24E2D79C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_24DF95B98(a1, v20 - v10, &unk_27F1E1CB0);
  sub_24DF95B98(a2, &v11[*(v8 + 56)], &unk_27F1E1CB0);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for PlayerCardTheme();
  v13 = *(__swift_project_value_buffer(v12, qword_27F20BF00) + 64);
  *a4 = v13;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 33) = 0u;
  *(a4 + 56) = -1;
  v14 = v13;
  v15 = [a3 traitCollection];
  sub_24E33670C(v15, v20);

  v16 = v20[1];
  *(a4 + 64) = v20[0];
  *(a4 + 80) = v16;
  *(a4 + 96) = v21;
  v17 = [a3 traitCollection];
  sub_24E33670C(v17, v22);

  sub_24DF8BFF4(v11, &unk_27F1E1CA0);
  result = *v22;
  v19 = v22[1];
  *(a4 + 104) = v22[0];
  *(a4 + 120) = v19;
  *(a4 + 136) = v23;
  return result;
}

void *sub_24E2D7BC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_textLabel);
  v2 = v1;
  return v1;
}

uint64_t sub_24E2D7BF0()
{
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_suggestionsChangedSubscription, &unk_27F1EA5A0);
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknameUpdatedSubscription, &qword_27F1E89B8);
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_accessoryAction);

  return sub_24E059AAC(v1);
}

id sub_24E2D7CA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknameFieldCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NicknameFieldCollectionViewCell()
{
  result = qword_280BE0680;
  if (!qword_280BE0680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2D7DF0()
{
  sub_24DFC2AD4(319, &unk_280BE0660, &qword_27F1EA508);
  if (v0 <= 0x3F)
  {
    sub_24DFC2AD4(319, &qword_280BE0670, &qword_27F1E89B0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24E2D7F64()
{
  swift_getWitnessTable();

  return sub_24E071EFC();
}

uint64_t sub_24E2D7FB8(void *a1)
{
  [a1 resignFirstResponder];
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  if (v3)
  {
    v4 = v3;
    v5 = sub_24E2D89B8(a1);
    sub_24E2EEFD4(v5, v6, 3);
  }

  return 1;
}

void sub_24E2D806C()
{
  OUTLINED_FUNCTION_13_58();
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  if (v2)
  {
    v3 = v2;
    sub_24E2D89B8(v1);
    sub_24E2EF6D4();
  }

  sub_24E2D80DC(v1);
}

void sub_24E2D80DC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  if (v2)
  {
    v4 = objc_opt_self();
    v10 = v2;
    v5 = [v4 activeKeyboard];
    if (v5)
    {
      v6 = v5;
      v7 = sub_24E2D89B8(a1);
      v9 = sub_24E2EEFA0(v7, v8);

      [v6 setReturnKeyEnabled_];
    }
  }
}

BOOL sub_24E2D821C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_24E2D89B8(a1);
  if (!v8)
  {
    return 1;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_24E3481F8();
  if (v13)
  {

    return 1;
  }

  sub_24E2D82D4(v11, v12, a4, a5, v9, v10);

  v15 = sub_24E347DD8();

  return v15 < 16;
}

uint64_t sub_24E2D82D4(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_24E3486B8();
  v12 = v11;

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  sub_24E3486B8();
  v14 = v13;

  if ((v14 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    result = sub_24E00FC14(a1, a5, a6);
    v18 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_41;
  }

  result = sub_24E347E48();
  v19 = result;
  v25 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v25 = 7;
  }

  v21 = v25 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    result = sub_24E00FC14(a2, a5, a6);
    v23 = result;
  }

  if ((v21 & 0xC) == v17)
  {
    result = sub_24E00FC14(v21, a5, a6);
    v21 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_15:
    v24 = (v21 >> 16) - (v23 >> 16);
LABEL_28:
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_24E347E18();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a4) & 0xF;
    }

    else
    {
      result = a3 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v19 + result;
    if (__OFADD__(v19, result))
    {
      __break(1u);
    }

    else
    {
      result = v26 + v24;
      if (!__OFADD__(v26, v24))
      {
        MEMORY[0x25303E8E0](result);
LABEL_35:
        sub_24E347E98();
        sub_24E2D8A18();
        sub_24E347DE8();

        sub_24E347DE8();
        sub_24E2D5594(a2, a5, a6);
        sub_24E347DE8();

        return 0;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v20 < v23 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_24E347E48();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_24E2D865C()
{
  OUTLINED_FUNCTION_13_58();
  sub_24E2D89B8(v2);
  if (v3)
  {
    v4 = sub_24E347DD8();

    if (!v4)
    {
      v5 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
      if (v5)
      {
        v6 = v5;
        sub_24E2D89B8(v1);
        sub_24E2EF6D4();
      }
    }
  }

  sub_24E2D80DC(v1);
}

void sub_24E2D8754()
{
  OUTLINED_FUNCTION_13_58();
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31NicknameFieldCollectionViewCell_nicknamePresenter);
  if (v2)
  {
    v3 = v2;
    v4 = sub_24E2D89B8(v1);
    sub_24E2EEFD4(v4, v5, 3);
  }

  sub_24E2D80DC(v1);
}

uint64_t sub_24E2D8830(uint64_t a1)
{
  result = sub_24E2D8970(&qword_27F1EA570, type metadata accessor for NicknameFieldCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2D8918(uint64_t a1)
{
  result = sub_24E2D8970(&unk_27F1EA580, type metadata accessor for NicknameFieldCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2D8970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2D89B8(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    sub_24E347CF8();
  }

  return OUTLINED_FUNCTION_19_1();
}

unint64_t sub_24E2D8A18()
{
  result = qword_27F1EA598;
  if (!qword_27F1EA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_144()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_125@<X0>(void *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X8>)
{
  if (a2)
  {
    a3 = v3;
  }

  return [a1 *a3];
}

uint64_t OUTLINED_FUNCTION_5_108()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_74()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_46(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_43(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_18_44()
{

  return [v0 (v1 + 3448)];
}

uint64_t ActivitySharingRepromptOverlayView.init(recipientName:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_24E346B78();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t ActivitySharingRepromptOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v53 = *v1;
  v54 = v3;
  v55 = v1[2];
  v52 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  OUTLINED_FUNCTION_1_145();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_0_180(v4, v5, v6, v7, v8, v9, v10, v11, v35, v37, v40, v43, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v12);
  OUTLINED_FUNCTION_1_145();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_180(v13, v14, v15, v16, v17, v18, v19, v20, v36, v38, v41, v44, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v21);
  sub_24E2D8F30(&v53, &v46);
  sub_24E2D8F30(&v53, &v46);
  v22 = type metadata accessor for ActivitySharingRepromptView();
  v23 = sub_24E2D92E0(&qword_27F1EA5F0, type metadata accessor for ActivitySharingRepromptView);
  v39 = MEMORY[0x277CE1410];
  v42 = v23;
  sub_24E346868();

  OUTLINED_FUNCTION_1_145();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_0_180(v24, v25, v26, v27, v28, v29, v30, v31, v22, v39, v42, v45, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v32);
  v33 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5F8) + 36));
  sub_24E345528();
  sub_24E2D8F30(&v53, &v46);
  result = sub_24E348078();
  *v33 = &unk_24E38C910;
  v33[1] = v24;
  return result;
}

void sub_24E2D8E3C(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];

  sub_24E2D8F30(a1, __dst);
  if (qword_27F1DDA80 != -1)
  {
    swift_once();
  }

  memcpy(__dst, xmmword_27F1E7C38, sizeof(__dst));
  ActivitySharingRepromptView.init(recipientName:layoutMetrics:continueHandler:)();
}

uint64_t sub_24E2D8FBC(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_24E348068();
  *(v1 + 40) = sub_24E348058();
  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E2D9054, v3, v2);
}

uint64_t sub_24E2D9054()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 32);
  *(v0 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E2D90EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24DF8CD84;

  return sub_24E2D8FBC(v0 + 16);
}

unint64_t sub_24E2D91B0()
{
  result = qword_27F1EA600;
  if (!qword_27F1EA600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1EA5F8);
    type metadata accessor for ActivitySharingRepromptView();
    sub_24E2D92E0(&qword_27F1EA5F0, type metadata accessor for ActivitySharingRepromptView);
    swift_getOpaqueTypeConformance2();
    sub_24E2D92E0(&qword_27F1DE1E0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA600);
  }

  return result;
}

uint64_t sub_24E2D92E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_30()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_1_145();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

__n128 OUTLINED_FUNCTION_0_180(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a23)
{
  a1[1] = a21;
  a1[2] = a22;
  result = a23;
  a1[3] = a23;
  return result;
}

id sub_24E2D93A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24E3444F8();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  *&v40[0] = *(a1 + 40);
  sub_24DFC21E4(*&v40[0]);
  sub_24E2DC550(v40);
  v13 = *&v2[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel];
  if (*(a1 + 72))
  {
    v14 = sub_24E347CB8();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText_];

  v15 = *&v3[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel];
  if (*(a1 + 88))
  {
    v16 = sub_24E347CB8();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  v17 = *&v3[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button];
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = sub_24E347CB8();
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19 forState:0];

  v20 = [v17 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setNumberOfLines_];
  }

  v22 = [v17 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setTextAlignment_];
  }

  [v17 setHidden_];
  v3[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_disabled] = (*(a1 + 128) & 1) == 0;
  sub_24E2DC22C();
  if (*(a1 + 56))
  {
    v24 = 0;
  }

  else
  {
    v25 = *(a1 + 48);
    if (qword_27F1DDC88 != -1)
    {
      OUTLINED_FUNCTION_11_54();
    }

    v26 = __swift_project_value_buffer(v6, qword_27F1EA658);
    (*(v8 + 16))(v12, v26, v6);
    v27 = sub_24DFC2020(v25);
    v28 = objc_allocWithZone(type metadata accessor for WordmarkView());
    v24 = sub_24E2DD0D4(v12, v27);
  }

  sub_24E2DC134(v24);
  sub_24DF9DEAC(a1 + 136, &v38, &qword_27F1DEE90);
  if (v39)
  {
    sub_24DE56CE8(&v38, v40);
    if (a2)
    {
      sub_24DE56CE8(v40, &v38);
      v29 = swift_allocObject();
      *(v29 + 16) = a2;
      sub_24DE56CE8(&v38, v29 + 24);
      v30 = &v3[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock];
      swift_beginAccess();
      v31 = *v30;
      *v30 = sub_24E2DE3E4;
      v30[1] = v29;

      v32 = v31;
      goto LABEL_27;
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_24DF8C95C(&v38, &qword_27F1DEE90);
  }

  v34 = *(a1 + 112);
  v33 = *(a1 + 120);
  v35 = &v3[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock];
  swift_beginAccess();
  if (v34)
  {
    v36 = *v35;
    *v35 = v34;
    v35[1] = v33;

    v32 = v36;
  }

  else
  {
    v32 = *v35;
    *v35 = 0;
    v35[1] = v33;
  }

LABEL_27:
  sub_24DE73FA0(v32);
  return [v3 setNeedsLayout];
}

void *sub_24E2D9794@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v35 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  sub_24DF88A8C(0, &qword_27F1DEE28);
  v43 = a1;
  v44[0] = *(a1 + 40);
  v37 = v44[0];
  sub_24DFC21E4(v44[0]);
  sub_24E2DC454(v44, v17);
  sub_24DFC2220(v44[0]);
  v18 = [a2 traitCollection];
  v42 = MEMORY[0x25303F0C0](v17, v18);

  (*(v13 + 8))(v17, v11);
  if (qword_27F1DE070 != -1)
  {
    OUTLINED_FUNCTION_10_65();
  }

  v19 = __swift_project_value_buffer(v11, qword_27F20BD50);
  v20 = [a2 traitCollection];
  v41 = MEMORY[0x25303F0C0](v19, v20);

  if (qword_27F1DDCB8 != -1)
  {
    OUTLINED_FUNCTION_9_67();
  }

  v21 = sub_24E3444F8();
  __swift_project_value_buffer(v21, qword_27F1EA738);
  sub_24E343F98();
  sub_24E344198();
  (*(v35 + 8))(v10, v39);
  v22 = sub_24E344788();
  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  v40 = sub_24E344768();
  sub_24E344778();
  if (qword_27F1DDCC0 != -1)
  {
    OUTLINED_FUNCTION_1_146();
  }

  sub_24E1EDD24(qword_27F20B548, v44);
  if (!v37)
  {
    if (qword_27F1DD608 != -1)
    {
      OUTLINED_FUNCTION_7_75();
    }

    v24 = qword_27F1DFB30;
    goto LABEL_17;
  }

  if (v37 == 1)
  {
    if (qword_27F1DD610 != -1)
    {
      OUTLINED_FUNCTION_8_83();
    }

    v24 = qword_27F1DFB38;
LABEL_17:
    v23 = v24;
    goto LABEL_18;
  }

  if (v37 != 2)
  {
    v23 = v37;
LABEL_18:
    sub_24DFC21E4(v37);
    [v23 size];
    OUTLINED_FUNCTION_7_10();
  }

  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  v38 = sub_24E344768();
  if ((*(v43 + 56) & 1) == 0)
  {
    v25 = sub_24DFC2020(*(v43 + 48));
    if (v25)
    {
      v26 = v25;
      [v25 size];
      OUTLINED_FUNCTION_7_10();
    }
  }

  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  v36 = sub_24E344768();

  v27 = v42;
  sub_24E344398();
  sub_24E3443A8();
  v28 = sub_24E344868();
  swift_allocObject();
  v29 = sub_24E344858();
  v30 = MEMORY[0x277D228F0];
  a3[58] = v28;
  a3[59] = v30;
  a3[55] = v29;

  v31 = v41;
  sub_24E344398();
  sub_24E3443A8();
  swift_allocObject();
  v32 = sub_24E344858();
  a3[63] = v28;
  a3[64] = MEMORY[0x277D228F0];
  a3[60] = v32;
  a3[68] = v22;
  v33 = MEMORY[0x277D228B0];
  a3[69] = MEMORY[0x277D228B0];

  a3[65] = v40;
  result = memcpy(a3, v44, 0x168uLL);
  a3[45] = v38;
  a3[48] = v22;
  a3[49] = v33;
  a3[50] = v36;
  a3[53] = v22;
  a3[54] = v33;
  return result;
}

void EmptyStateView.measurements(fitting:in:)()
{
  OUTLINED_FUNCTION_17_44();
  swift_getObjectType();
  OUTLINED_FUNCTION_15_0();

  sub_24E2DE0F8();
}

double sub_24E2D9D54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_44();
  sub_24E2D9794(v3, v4, v9);
  swift_getObjectType();
  OUTLINED_FUNCTION_15_0();
  sub_24E33A038(a2, v5);
  v7 = v6;
  sub_24E02629C(v9);
  return v7;
}

CGSize __swiftcall EmptyStateView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_17_44();
  v41 = v1;
  ObjectType = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_15_0();
  objc_msgSendSuper2(v3, v4, v2);
  if (qword_27F1DDCC0 != -1)
  {
    OUTLINED_FUNCTION_1_146();
  }

  sub_24E1EDD24(&unk_27F20B548, v22);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView);
  v6 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView);
  v8 = MEMORY[0x277D22A58];
  if (v7)
  {
    v9 = type metadata accessor for WordmarkView();
    v10 = MEMORY[0x277D22A58];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel);
  v33 = type metadata accessor for DynamicTypeLabel();
  v32 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel);
  v36 = v33;
  v37 = MEMORY[0x277D22A68];
  v34 = MEMORY[0x277D22A68];
  v35 = v12;
  v13 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);
  v39 = type metadata accessor for DynamicTypeButton();
  v40 = v8;
  v38 = v13;
  memcpy(__dst, v22, sizeof(__dst));
  v24 = v5;
  v25 = v6;
  v26 = v8;
  v27 = v7;
  v29 = 0;
  v28 = 0;
  v30 = v9;
  v31 = v10;
  v14 = v7;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v5;
  OUTLINED_FUNCTION_15_0();
  sub_24E2DDA7C();
  OUTLINED_FUNCTION_7_10();
  sub_24E02629C(__dst);
  v19 = OUTLINED_FUNCTION_1_16();
  result.height = v20;
  result.width = v19;
  return result;
}

void sub_24E2D9F80()
{
  qword_27F1EA620 = MEMORY[0x277D839F8];
  unk_27F1EA628 = MEMORY[0x277D22A30];
  qword_27F1EA608 = 0x4034000000000000;
}

uint64_t sub_24E2D9FA8()
{
  v0 = 16.0;
  result = GKIsXRUIIdiomShouldUsePadUI();
  if ((result & 1) == 0)
  {
    result = GKIsPadUIIdiom();
    if (result)
    {
      v0 = 16.0;
    }

    else
    {
      v0 = 0.0;
    }
  }

  qword_27F1EA648 = MEMORY[0x277D839F8];
  unk_27F1EA650 = MEMORY[0x277D22A30];
  qword_27F1EA630 = *&v0;
  return result;
}

uint64_t sub_24E2DA004()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1EA658);
  __swift_project_value_buffer(v4, qword_27F1EA658);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE068 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F1DE068 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F20BD38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2DA2B4()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_27F1EA688 = sub_24E3444F8();
  unk_27F1EA690 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1EA670);
  GKIsXRUIIdiomShouldUsePadUI();
  if (qword_27F1DE060 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, &unk_27F20BD20);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2DA488()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = GKIsXRUIIdiomShouldUsePadUI();
  if (result)
  {
    if (qword_27F1DE070 != -1)
    {
      swift_once();
    }

    v5 = sub_24E344158();
    v6 = __swift_project_value_buffer(v5, qword_27F20BD50);
    (*(*(v5 - 8) + 16))(v3, v6, v5);
    (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
    qword_27F1EA6B0 = sub_24E3444F8();
    unk_27F1EA6B8 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&qword_27F1EA698);
    v9[3] = v0;
    v9[4] = MEMORY[0x277D22628];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
    sub_24E344508();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    qword_27F1EA6B0 = MEMORY[0x277D839F8];
    unk_27F1EA6B8 = MEMORY[0x277D22A30];
    qword_27F1EA698 = 0;
  }

  return result;
}

uint64_t sub_24E2DA67C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_27F1EA6D8 = sub_24E3444F8();
  unk_27F1EA6E0 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1EA6C0);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE070 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F1DE070 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F20BD50);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2DA924()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_27F1EA700 = sub_24E3444F8();
  unk_27F1EA708 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1EA6E8);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE078 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F1DE078 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, &unk_27F20BD68);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2DABD0()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 200.0;
  if (result)
  {
    v1 = 124.0;
  }

  qword_27F1EA728 = MEMORY[0x277D839F8];
  unk_27F1EA730 = MEMORY[0x277D22A30];
  qword_27F1EA710 = *&v1;
  return result;
}

uint64_t sub_24E2DAC20()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1EA738);
  __swift_project_value_buffer(v4, qword_27F1EA738);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    if (qword_27F1DE030 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27F1DE030 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F20BC90);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2DAED0()
{
  if (qword_27F1DDC78 != -1)
  {
    swift_once();
  }

  sub_24DF89628(&qword_27F1EA608, v13);
  if (qword_27F1DDC98 != -1)
  {
    swift_once();
  }

  sub_24DF89628(&qword_27F1EA698, v12);
  if (qword_27F1DDC88 != -1)
  {
    OUTLINED_FUNCTION_11_54();
  }

  v0 = sub_24E3444F8();
  v1 = __swift_project_value_buffer(v0, qword_27F1EA658);
  v10 = v0;
  v11 = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_1, v1, v0);
  if (qword_27F1DDC90 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1EA670, v8);
  if (qword_27F1DDCA0 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1EA6C0, v7);
  if (qword_27F1DDCA8 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1EA6E8, v6);
  if (qword_27F1DDCB0 != -1)
  {
    swift_once();
  }

  sub_24DF89628(&qword_27F1EA710, v5);
  sub_24DF89628(&qword_27F1EA608, v4);
  if (qword_27F1DDC80 != -1)
  {
    swift_once();
  }

  sub_24DF89628(&qword_27F1EA630, &unk_27F20B688);
  sub_24DE56CE8(v13, &unk_27F20B548);
  sub_24DE56CE8(v12, &unk_27F20B570);
  sub_24DE56CE8(&v9, &unk_27F20B598);
  sub_24DE56CE8(v8, &unk_27F20B5C0);
  sub_24DE56CE8(v7, &unk_27F20B5E8);
  sub_24DE56CE8(v6, &unk_27F20B610);
  sub_24DE56CE8(v5, &unk_27F20B638);
  return sub_24DE56CE8(v4, &unk_27F20B660);
}

id sub_24E2DB204(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  sub_24E2D93A0(a1, a2);

  sub_24DFE22E0(a1);
  return v5;
}

id sub_24E2DB35C(void (*a1)(void))
{
  v2 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  a1();
  return sub_24E2DB204(v5, 0);
}

void sub_24E2DB3DC()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ObjectType = swift_getObjectType();
  v88 = sub_24E3444F8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v88 - v24;
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide] = 0;
  v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_disabled] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType] = 2;
  v26 = &v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView] = v27;
  if (qword_27F1DE068 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v16, qword_27F20BD38);
  v29 = *(v18 + 16);
  v29(v25, v28, v16);
  OUTLINED_FUNCTION_22_32();
  v30 = type metadata accessor for DynamicTypeLabel();
  v31 = objc_allocWithZone(v30);
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel] = OUTLINED_FUNCTION_12_57();
  if (qword_27F1DE070 != -1)
  {
    OUTLINED_FUNCTION_10_65();
  }

  v32 = __swift_project_value_buffer(v16, qword_27F20BD50);
  v29(v25, v32, v16);
  OUTLINED_FUNCTION_22_32();
  v33 = objc_allocWithZone(v30);
  *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel] = OUTLINED_FUNCTION_12_57();
  if (qword_27F1DE078 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v16, &unk_27F20BD68);
  v29(v22, v34, v16);
  if (qword_27F1DDCB8 != -1)
  {
    OUTLINED_FUNCTION_9_67();
  }

  v35 = v88;
  v36 = __swift_project_value_buffer(v88, qword_27F1EA738);
  v37 = objc_allocWithZone(type metadata accessor for RoundedTitledButton());
  (*(v11 + 16))(v15, v36, v35);
  *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button] = sub_24E039EA0(v22, v15, 0, 0, v37);
  v90.receiver = v1;
  v90.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v90, sel_initWithFrame_, v9, v7, v5, v3);
  [v38 setScrollEnabled_];
  [v38 setInsetsLayoutMarginsFromSafeArea_];
  [v38 setContentInsetAdjustmentBehavior_];
  [v38 setLayoutMargins_];
  v39 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView;
  v40 = *&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView];
  v41 = *&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType];
  if (!v41)
  {
    v46 = qword_27F1DD608;
    v47 = v40;
    if (v46 != -1)
    {
      OUTLINED_FUNCTION_7_75();
    }

    v43 = qword_27F1DFB30;
    goto LABEL_21;
  }

  if (v41 == 1)
  {
    v44 = qword_27F1DD610;
    v45 = v40;
    if (v44 != -1)
    {
      OUTLINED_FUNCTION_8_83();
    }

    v43 = qword_27F1DFB38;
LABEL_21:
    v42 = v43;
    goto LABEL_22;
  }

  if (v41 == 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = *&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType];
  }

  v43 = *&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView];
LABEL_22:
  v48 = v43;
  sub_24DFC21E4(v41);
  v49 = OUTLINED_FUNCTION_21_34();
  [v49 v50];

  v51 = *&v38[v39];
  v52 = objc_opt_self();
  v53 = v51;
  v54 = [v52 secondaryLabelColor];
  v55 = OUTLINED_FUNCTION_21_34();
  [v55 v56];

  ObjectType = v39;
  v57 = [*&v38[v39] layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for PlayerCardTheme();
  v59 = __swift_project_value_buffer(v58, qword_27F20BF00);
  if (*&v59[*(v58 + 56) + 8])
  {
    v60 = sub_24E347CB8();
  }

  else
  {
    v60 = 0;
  }

  [v57 setCompositingFilter_];

  swift_unknownObjectRelease();
  v61 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel;
  [*&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel] setTextAlignment_];
  v88 = v61;
  v62 = *&v38[v61];
  v63 = [v52 labelColor];
  [v62 setTextColor_];

  v64 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel;
  [*&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel] setTextAlignment_];
  v65 = *&v38[v64];
  v66 = [v52 secondaryLabelColor];
  [v65 setTextColor_];

  v67 = [*&v38[v64] layer];
  v68 = *MEMORY[0x277CDA5E8];
  [v67 setCompositingFilter_];

  sub_24E2DBD08();
  v69 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button;
  [*&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button] addTarget:v38 action:sel_didTapButton_ forControlEvents:0x2000];
  v70 = *&v38[v69];
  if (*v59 == 1)
  {
    v71 = qword_27F1DDDA8;
    v72 = v70;
    if (v71 != -1)
    {
      swift_once();
    }

    [v72 setBackgroundColor_];

    v73 = [*&v38[v69] layer];
    [v73 setCompositingFilter_];
  }

  else
  {
    *(v70 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) = 0;
    v74 = v70;
    sub_24E28D74C();

    v75 = *&v38[v69];
    v76 = [v52 systemBlueColor];
    v77 = OUTLINED_FUNCTION_21_34();
    [v77 v78];

    v79 = *&v38[v69];
    v80 = [v52 whiteColor];
    v81 = OUTLINED_FUNCTION_21_34();
    [v81 v82];

    v83 = *&v38[v69];
    v84 = [v52 whiteColor];
    v73 = [v84 colorWithAlphaComponent_];

    [v83 setTitleColor:v73 forStates:5];
  }

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_15_12();
  v85 = sub_24E2DBF9C();
  [v38 addLayoutGuide_];

  v86 = objc_opt_self();
  v87 = *&v38[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide];
  [v86 _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];

  OUTLINED_FUNCTION_12_37();
}

void sub_24E2DBD08()
{
  v1 = v0;
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PlayerCardTheme();
  v3 = __swift_project_value_buffer(v2, qword_27F20BF00);
  v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);
  if (*v3 == 1)
  {
    if (qword_27F1DDDA8 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor_];
    v5 = [v4 layer];
    [v5 setCompositingFilter_];
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12GameCenterUI17DynamicTypeButton_titleColorFollowsTintColor) = 0;
    sub_24E28D74C();
    v6 = objc_opt_self();
    v7 = [v6 systemBlueColor];
    [v4 setBackgroundColor_];

    v8 = [v6 whiteColor];
    [v4 setTitleColor:v8 forState:0];

    v9 = [v6 whiteColor];
    v5 = [v9 colorWithAlphaComponent_];

    [v4 setTitleColor:v5 forStates:5];
  }

  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_disabled) == 1)
  {
    v10 = [v4 backgroundColor];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 colorWithAlphaComponent_];
    }

    else
    {
      v12 = 0;
    }

    [v4 setBackgroundColor_];
  }
}

id sub_24E2DBF9C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide);
  }

  else
  {
    v4 = sub_24E2DC194(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_24E2DC024()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView____lazy_storage___focusGuide) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_disabled) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType) = 2;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E2DC0DC(id result)
{
  if (result)
  {
    result = [result removeFromSuperview];
  }

  if (*&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView])
  {

    return [v1 addSubview_];
  }

  return result;
}

void sub_24E2DC134(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView) = a1;
  v2 = a1;
  sub_24E2DC0DC(v3);
}

id sub_24E2DC194(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24E369990;
  v4 = *(a1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_24DFD7FD0(v3, v2);
  return v2;
}

id sub_24E2DC22C()
{
  sub_24E2DBD08();
  [v0 setUserInteractionEnabled_];
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button];

  return [v1 setNeedsDisplay];
}

id sub_24E2DC28C()
{
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView];
  v5 = OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType;
  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType];
  if (!v6)
  {
    if (qword_27F1DD608 != -1)
    {
      swift_once();
    }

    v8 = qword_27F1DFB30;
    goto LABEL_12;
  }

  if (v6 == 1)
  {
    if (qword_27F1DD610 != -1)
    {
      swift_once();
    }

    v8 = qword_27F1DFB38;
LABEL_12:
    v7 = v8;
    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType];
  }

LABEL_13:
  sub_24DFC21E4(v6);
  [v4 setImage_];

  v12 = *&v0[v5];
  sub_24DFC21E4(v12);
  sub_24E2DC454(&v12, v3);
  sub_24DFC2220(v12);
  v9 = sub_24E344158();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  sub_24E0AED24(v3);
  return [v0 setNeedsLayout];
}

uint64_t sub_24E2DC454@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 2)
  {
    if (qword_27F1DE060 != -1)
    {
      swift_once();
    }

    v3 = &unk_27F20BD20;
  }

  else
  {
    if (qword_27F1DE068 != -1)
    {
      swift_once();
    }

    v3 = qword_27F20BD38;
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

id sub_24E2DC550(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageType) = v2;
  sub_24DFC2220(v3);

  return sub_24E2DC28C();
}

uint64_t EmptyStateView.buttonActionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1);
  return v2;
}

uint64_t EmptyStateView.buttonActionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6);
}

uint64_t sub_24E2DC798@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DFA0D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4);
}

uint64_t sub_24E2DC838(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DFA0D28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_24DE56C38(v3);
  return sub_24DE73FA0(v8);
}

Swift::Void __swiftcall EmptyStateView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v25 = v4;
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v24 = v6 - v5;
  v46.receiver = v1;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  if (qword_27F1DDCC0 != -1)
  {
    OUTLINED_FUNCTION_1_146();
  }

  sub_24E1EDD24(qword_27F20B548, v27);
  v7 = *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView];
  v23 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView];
  if (v8)
  {
    v9 = type metadata accessor for WordmarkView();
    v10 = MEMORY[0x277D22A58];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel];
  v38 = type metadata accessor for DynamicTypeLabel();
  v37 = v11;
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel];
  v41 = v38;
  v42 = MEMORY[0x277D22A68];
  v39 = MEMORY[0x277D22A68];
  v40 = v12;
  v13 = *&v1[OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button];
  v44 = type metadata accessor for DynamicTypeButton();
  v45 = MEMORY[0x277D22A58];
  v43 = v13;
  memcpy(v28, v27, sizeof(v28));
  v29 = v7;
  v30 = v23;
  v31 = MEMORY[0x277D22A58];
  v32 = v8;
  v34 = 0;
  v33 = 0;
  v35 = v9;
  v36 = v10;
  v14 = v8;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v7;
  [v1 bounds];
  sub_24E338EA8(v1, v24, v19, v20, v21, v22);
  (*(v25 + 8))(v24, v26);
  [v17 _removeAllAnimations_];
  sub_24E02629C(v28);
}

uint64_t sub_24E2DCCB4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_24DE73FA0(v3);
  }

  return result;
}

uint64_t sub_24E2DCDA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_24DF8C95C(v6, &unk_27F1EAC90);
  }

  (*(v1 + 104))(v3, *MEMORY[0x277D21E18], v0);
  sub_24E3473B8();

  (*(v1 + 8))(v3, v0);
  return (*(*(v7 - 8) + 8))(v6, v7);
}

id EmptyStateView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24E2DD0D4(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_image;
  *&v2[OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_image] = 0;
  v6 = OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_referenceLineHeight;
  v9 = sub_24E3444F8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a1, v9);
  v11 = *&v2[v5];
  *&v2[v5] = a2;
  v12 = v7;
  v13 = a2;

  [v12 setImage_];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for WordmarkView();
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 addSubview_];

  (*(v10 + 8))(a1, v9);
  return v14;
}

void sub_24E2DD248()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_image) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_24E348AE8();
  __break(1u);
}

double sub_24E2DD300()
{
  v1 = v0;
  v2 = sub_24E348BC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E344128();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v18 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_image);
  if (!v14)
  {
    return *MEMORY[0x277D22A78];
  }

  [v14 size];
  sub_24E344138();
  (*(v7 + 32))(v13, v9, v6);
  sub_24E343F98();
  sub_24E3444F8();
  sub_24E344198();
  (*(v3 + 8))(v5, v2);
  sub_24E344108();
  v16 = v15;
  (*(v7 + 8))(v13, v6);
  return v16;
}

void *sub_24E2DD5BC()
{
  v1 = v0;
  v2 = sub_24E343FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E344128();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for WordmarkView();
  v36.receiver = v1;
  v36.super_class = v13;
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  result = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_image];
  if (result)
  {
    [result size];
    sub_24E344138();
    (*(v7 + 32))(v12, v9, v6);
    v35 = v6;
    sub_24E3444D8();
    v15 = [v1 traitCollection];
    v16 = sub_24E343FB8();

    (*(v3 + 8))(v5, v2);
    [v16 lineHeight];
    v18 = v17;
    sub_24E3444F8();
    sub_24E344188();
    v20 = v19;
    sub_24E344108();
    v22 = v21;
    v23 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_89031E6405F26A5C0C098E2073FB218A12WordmarkView_imageView];
    [v1 bounds];
    v25 = v24;
    v27 = v26;
    [v1 layoutMargins];
    v29 = v28;
    v37.origin.x = v30;
    v32 = v25 - v30 - v31;
    v37.size.height = v27 - v29 - v33;
    v37.origin.y = v29;
    v37.size.width = v32;
    [v23 setFrame_];

    return (*(v7 + 8))(v12, v35);
  }

  return result;
}

id sub_24E2DD96C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WordmarkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall EmptyStateView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v4 = EmptyStateView.sizeThatFits(_:)(toFit);
  height = v4.height;
  width = v4.width;
  v5 = 0.0;
  v6 = v4.height;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = height;
  result.var0 = width;
  return result;
}

void sub_24E2DDA7C()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  OUTLINED_FUNCTION_17_44();
  v2 = sub_24E344478();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E3444A8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  (*(v4 + 104))(v8, *MEMORY[0x277D22788], v2);
  sub_24E344488();
  sub_24DF89628(v1, &v34);
  v16 = sub_24E344838();
  v17 = MEMORY[0x277D228E0];
  v38 = v16;
  v39 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_24DF9DEAC((v1 + 45), &v34, &qword_27F1DEE30);
  if (v35)
  {
    sub_24DE56CE8(&v34, v37);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_108();
      OUTLINED_FUNCTION_6_45();
      OUTLINED_FUNCTION_16_47();
      v18();
      OUTLINED_FUNCTION_20_33();
      __swift_destroy_boxed_opaque_existential_1(&v34);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24DF8C95C(&v34, &qword_27F1DEE30);
  }

  sub_24DF9DEAC((v1 + 50), &v34, &qword_27F1DEE30);
  if (v35)
  {
    sub_24DE56CE8(&v34, v37);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_108();
      OUTLINED_FUNCTION_6_45();
      OUTLINED_FUNCTION_16_47();
      v19();
      OUTLINED_FUNCTION_20_33();
      __swift_destroy_boxed_opaque_existential_1(&v34);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24DF8C95C(&v34, &qword_27F1DEE30);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 55, v1[58]);
  v20 = sub_24E344058();
  v21 = MEMORY[0x277D226F0];
  if (v20)
  {
    sub_24DF9DEAC((v1 + 45), v37, &qword_27F1DEE30);
    if (v38)
    {
      OUTLINED_FUNCTION_3_126();
      v22 = sub_24E344098();
      __swift_destroy_boxed_opaque_existential_1(v37);
      if ((v22 & 1) == 0)
      {
        v23 = 10;
LABEL_17:
        sub_24DF89628(&v1[v23], v37);
        v24 = v1[58];
        v25 = v1[59];
        __swift_project_boxed_opaque_existential_1(v1 + 55, v24);
        v33[3] = v24;
        v33[4] = *(*(v25 + 8) + 8);
        __swift_allocate_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_16_47();
        v26();
        sub_24DF89628(v37, v32);
        v31[3] = sub_24E3442F8();
        v31[4] = v21;
        __swift_allocate_boxed_opaque_existential_1(v31);
        sub_24E3442E8();
        v35 = sub_24E344888();
        v36 = MEMORY[0x277D22900];
        __swift_allocate_boxed_opaque_existential_1(&v34);
        sub_24E344878();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_18;
      }
    }

    else
    {
      sub_24DF8C95C(v37, &qword_27F1DEE30);
    }

    v23 = 15;
    goto LABEL_17;
  }

LABEL_18:
  __swift_project_boxed_opaque_existential_1(v1 + 60, v1[63]);
  if (sub_24E344058())
  {
    v27 = v1[63];
    v28 = v1[64];
    __swift_project_boxed_opaque_existential_1(v1 + 60, v27);
    v35 = v27;
    v36 = *(*(v28 + 8) + 8);
    __swift_allocate_boxed_opaque_existential_1(&v34);
    OUTLINED_FUNCTION_6_45();
    OUTLINED_FUNCTION_16_47();
    v29();
    sub_24DF89628((v1 + 20), v33);
    v32[3] = sub_24E3442F8();
    v32[4] = v21;
    __swift_allocate_boxed_opaque_existential_1(v32);
    sub_24E3442E8();
    v38 = sub_24E344888();
    v39 = MEMORY[0x277D22900];
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_24E344878();
    sub_24E344498();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  sub_24DF9DEAC((v1 + 65), &v34, &qword_27F1DEE30);
  if (v35)
  {
    sub_24DE56CE8(&v34, v37);
    OUTLINED_FUNCTION_3_126();
    if ((sub_24E344098() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_126();
      if (sub_24E344058())
      {
        sub_24DF89628((v1 + 25), v33);
        v35 = v16;
        v36 = v17;
        __swift_allocate_boxed_opaque_existential_1(&v34);
        sub_24E344848();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(&v34);
        OUTLINED_FUNCTION_4_108();
        OUTLINED_FUNCTION_6_45();
        OUTLINED_FUNCTION_16_47();
        v30();
        OUTLINED_FUNCTION_20_33();
        __swift_destroy_boxed_opaque_existential_1(&v34);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_24DF8C95C(&v34, &qword_27F1DEE30);
  }

  sub_24DF89628((v1 + 35), &v34);
  v38 = v16;
  v39 = v17;
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_15_0();
  sub_24E344468();
  OUTLINED_FUNCTION_7_10();
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_12_37();
}

void sub_24E2DE0F8()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_17_44();
  if (qword_27F1DDCC0 != -1)
  {
    OUTLINED_FUNCTION_1_146();
  }

  sub_24E1EDD24(qword_27F20B548, __src);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView);
  v5 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView);
  v7 = MEMORY[0x277D22A58];
  if (v6)
  {
    v8 = type metadata accessor for WordmarkView();
    v9 = MEMORY[0x277D22A58];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel);
  v30 = type metadata accessor for DynamicTypeLabel();
  v29 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel);
  v33 = v30;
  v34 = MEMORY[0x277D22A68];
  v31 = MEMORY[0x277D22A68];
  v32 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);
  v36 = type metadata accessor for DynamicTypeButton();
  v37 = v7;
  v35 = v12;
  memcpy(__dst, __src, sizeof(__dst));
  v21 = v4;
  v22 = v5;
  v23 = v7;
  v24 = v6;
  v26 = 0;
  v25 = 0;
  v27 = v8;
  v28 = v9;
  v13 = v6;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v4;
  OUTLINED_FUNCTION_15_0();
  sub_24E33A038(v3, v18);
  OUTLINED_FUNCTION_7_10();
  sub_24E02629C(__dst);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_12_37();
}

uint64_t type metadata accessor for WordmarkView()
{
  result = qword_27F1EA7B0;
  if (!qword_27F1EA7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E2DE31C()
{
  result = sub_24E3444F8();
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

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_146()
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_4_108()
{
  v2 = *(v0 - 136);
  v1 = *(v0 - 128);
  __swift_project_boxed_opaque_existential_1((v0 - 160), v2);
  *(v0 - 176) = v2;
  *(v0 - 168) = *(v1 + 8);

  return __swift_allocate_boxed_opaque_existential_1((v0 - 200));
}

uint64_t OUTLINED_FUNCTION_7_75()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_83()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_54()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_12_57()
{

  return sub_24E0AEF24(v0, 0, 0, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_20_33()
{

  return sub_24E344498();
}

uint64_t OUTLINED_FUNCTION_22_32()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void sub_24E2DE5D8()
{
  OUTLINED_FUNCTION_13_44();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v50 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_11_55();
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  sub_24DF8BD90(v6, &v46 - v13, &unk_27F1E1CB0);
  sub_24DF8BD90(v4, &v14[*(v11 + 56)], &unk_27F1E1CB0);
  sub_24E1E0E74();
  sub_24DF8BD90(v14, v0, &unk_27F1E1CA0);
  v15 = *(v11 + 56);
  OUTLINED_FUNCTION_10_66();
  sub_24E2DFAE0();
  OUTLINED_FUNCTION_8_2();
  sub_24DF8BFF4(v0 + v15, &unk_27F1E1CB0);
  OUTLINED_FUNCTION_18_45();
  v16 = OUTLINED_FUNCTION_7_2();
  [v17 v18];
  sub_24DF8BD90(v14, v0, &unk_27F1E1CA0);
  v19 = *(v11 + 56);
  v20 = OUTLINED_FUNCTION_10_66();
  v24 = sub_24E2DEA24(v20, v21, v22, v23);
  sub_24DF8BFF4(v0 + v19, &unk_27F1E1CB0);
  OUTLINED_FUNCTION_18_45();
  v47 = v14;
  sub_24DF8BD90(v14, v0, &unk_27F1E1CA0);
  v25 = *(v11 + 56);
  v48 = v8;
  v49 = v2;
  OUTLINED_FUNCTION_10_66();
  sub_24E2DF464();
  v27 = v26;
  sub_24DF8BFF4(v0 + v25, &unk_27F1E1CB0);
  OUTLINED_FUNCTION_18_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  *(inited + 32) = v24;
  *(inited + 40) = v27;
  v51 = MEMORY[0x277D84F90];
  v29 = v24;
  v30 = v27;
  for (i = 0; i != 2; ++i)
  {
    v32 = *(inited + 8 * i + 32);
    if (v32)
    {
      v33 = v32;
      MEMORY[0x25303EA30]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
    }
  }

  swift_setDeallocating();
  sub_24DFD7EF0();
  sub_24DF88A8C(0, &qword_27F1DFD40);
  v34 = sub_24E347EE8();

  v35 = v50;
  [v50 setBoundarySupplementaryItems_];

  [v35 setSupplementariesFollowContentInsets_];
  v36 = objc_opt_self();
  type metadata accessor for SectionBackgroundView();
  sub_24DFEA80C();
  v37 = sub_24E347CB8();

  v38 = [v36 backgroundDecorationItemWithElementKind_];

  v39 = v38;
  sub_24E2DFE7C(v48, v24, v27, v49);
  OUTLINED_FUNCTION_8_2();

  v40 = OUTLINED_FUNCTION_7_2();
  [v41 v42];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24E369990;
  *(v43 + 32) = v39;
  sub_24DF88A8C(0, &qword_27F1E7690);
  v44 = v39;
  v45 = sub_24E347EE8();

  [v35 setDecorationItems_];

  sub_24DF8BFF4(v47, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_12_37();
}

id sub_24E2DEA24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v92 = a4;
  v90 = a3;
  v84 = sub_24E348BC8();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_23(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23(v82 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23(v82 - v13);
  v89 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_1();
  v87 = v15 - v16;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v17);
  v19 = v82 - v18;
  v93 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_23(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v82 - v28;
  OUTLINED_FUNCTION_24_22(a2, v82 - v28);
  OUTLINED_FUNCTION_24_22(v90, &v29[*(v22 + 48)]);
  v90 = v4;
  v30 = sub_24E1E0E74();
  v32 = v31;
  sub_24DF8BD90(v29, v26, &unk_27F1E1CA0);
  v85 = v22;
  v33 = (*(v32 + 24))(a1, v26, v26 + *(v22 + 48), v92, v30, v32);
  OUTLINED_FUNCTION_15_45();
  sub_24DF8BFF4(v34, v35);
  OUTLINED_FUNCTION_15_45();
  sub_24DF8BFF4(v36, v37);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v38 = v91;
  sub_24DF8BD90(v19, v91, &qword_27F1DF058);
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v19, v39);
  v40 = OUTLINED_FUNCTION_14_47();
  if (__swift_getEnumTagSinglePayload(v40, v41, v93) == 1)
  {
    sub_24DF8BFF4(v38, &qword_27F1DF058);
    if (v33 <= 0.0)
    {
      sub_24DF8BFF4(v29, &unk_27F1E1CA0);
      return 0;
    }

    else
    {
      sub_24DF88A8C(0, &qword_27F1DFD40);
      v42 = objc_opt_self();
      v43 = [v42 fractionalWidthDimension_];
      v44 = [v42 absoluteDimension_];
      objc_opt_self();
      OUTLINED_FUNCTION_22_33();
      v47 = [v45 v46];

      type metadata accessor for SectionHeaderPlaceholderView();
      sub_24DFEA80C();
      v48 = OUTLINED_FUNCTION_7_76();
      v51 = sub_24E0ADF80(v48, v49, v50, 1);
      sub_24DF8BFF4(v29, &unk_27F1E1CA0);
    }
  }

  else
  {
    v52 = v86;
    sub_24E2E13B8(v38, v86, type metadata accessor for HeaderData);
    sub_24DF8BD90(v29, v26, &unk_27F1E1CA0);
    v53 = v92;
    sub_24E2DFAE0();
    OUTLINED_FUNCTION_25_19();
    sub_24DF8BFF4(v54, v55);
    OUTLINED_FUNCTION_25_19();
    sub_24DF8BFF4(v56, v57);
    v58 = v88;
    sub_24DF8BD90(v52 + *(v93 + 68), v88, &qword_27F1DF050);
    v59 = sub_24E3444F8();
    v60 = OUTLINED_FUNCTION_14_47();
    if (__swift_getEnumTagSinglePayload(v60, v61, v59) == 1)
    {
      sub_24DF8BFF4(v58, &qword_27F1DF050);
    }

    else
    {
      v62 = [v53 traitCollection];
      v63 = v29;
      v64 = v82[1];
      sub_24E343F98();
      sub_24E3444C8();
      v33 = v65;

      v66 = v64;
      v29 = v63;
      (*(v83 + 8))(v66, v84);
      (*(*(v59 - 8) + 8))(v58, v59);
    }

    swift_getKeyPath();
    v67 = v87;
    sub_24E347128();

    v68 = *(v67 + *(v89 + 24));
    OUTLINED_FUNCTION_0_181();
    sub_24E2E1418(v67, v69);
    if (v68 == 1)
    {
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3();
      }

      v70 = type metadata accessor for PlayerCardTheme();
      __swift_project_value_buffer(v70, qword_27F20BF00);
      v71 = [v53 traitCollection];
      sub_24E336638();
    }

    v91 = *&v33;
    sub_24DF8BD90(v52 + *(v93 + 36), __src, &qword_27F1DEE88);
    if (__src[64] == 255)
    {
      sub_24DF8BFF4(__src, &qword_27F1DEE88);
    }

    else
    {
      memcpy(__dst, __src, 0x41uLL);
      v72 = [v53 traitCollection];
      sub_24E074088();

      sub_24DF9D524(__dst);
    }

    type metadata accessor for TitleHeaderView(0);
    swift_getObjectType();
    [objc_msgSend(v53 container)];
    swift_unknownObjectRelease();
    sub_24DFC1764();
    if (qword_27F1DDB90 != -1)
    {
      swift_once();
    }

    swift_getObjectType();
    sub_24E281B18();
    v74 = v73;
    swift_unknownObjectRelease();
    v75 = objc_opt_self();
    v76 = [v75 fractionalWidthDimension_];
    v77 = [v75 absoluteDimension_];
    v78 = [objc_opt_self() sizeWithWidthDimension:v76 heightDimension:v77];

    sub_24DF88A8C(0, &qword_27F1DFD40);
    v79 = sub_24E347CF8();
    v51 = sub_24E0ADF80(v78, v79, v80, 1);
    sub_24DF8BFF4(v29, &unk_27F1E1CA0);
    sub_24E2E1418(v52, type metadata accessor for HeaderData);
  }

  return v51;
}

void sub_24E2DF464()
{
  OUTLINED_FUNCTION_12_19();
  v73 = v1;
  v69 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6058);
  v8 = OUTLINED_FUNCTION_4_5(v7);
  MEMORY[0x28223BE20](v8);
  v72 = &v66 - v9;
  v71 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v68 = v11 - v12;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v70 = type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_14();
  v67 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  sub_24DF8BD90(v4, &v66 - v24, &unk_27F1E1CB0);
  sub_24DF8BD90(v69, &v25[*(v18 + 48)], &unk_27F1E1CB0);
  v69 = v0;
  v26 = sub_24E1E0E74();
  v28 = v27;
  OUTLINED_FUNCTION_15_45();
  sub_24DF8BD90(v29, v30, v31);
  v32 = *(v18 + 48);
  v33 = (*(v28 + 32))(v6, v22, v22 + v32, v73, v26, v28);
  sub_24DF8BFF4(v22 + v32, &unk_27F1E1CB0);
  sub_24DF8BFF4(v22, &unk_27F1E1CB0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();
  v35 = v71;
  v34 = v72;

  sub_24DF8BD90(&v15[*(v35 + 20)], v34, &qword_27F1E6058);
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v15, v36);
  v37 = OUTLINED_FUNCTION_14_47();
  if (__swift_getEnumTagSinglePayload(v37, v38, v70) == 1)
  {
    sub_24DF8BFF4(v34, &qword_27F1E6058);
    if (v33 > 0.0)
    {
      sub_24DF88A8C(0, &qword_27F1DFD40);
      v39 = objc_opt_self();
      v40 = [v39 fractionalWidthDimension_];
      v41 = [v39 absoluteDimension_];
      objc_opt_self();
      OUTLINED_FUNCTION_22_33();
      [v42 v43];

      type metadata accessor for SectionFooterPlaceholderView();
      sub_24DFEA80C();
      v44 = OUTLINED_FUNCTION_7_76();
      sub_24E0ADF80(v44, v45, v46, 5);
    }
  }

  else
  {
    v47 = v67;
    sub_24E2E13B8(v34, v67, type metadata accessor for FooterData);
    sub_24DF8BD90(v25, v22, &unk_27F1E1CA0);
    v48 = v73;
    sub_24E2DFAE0();
    OUTLINED_FUNCTION_9_68();
    sub_24DF8BFF4(v49, v50);
    OUTLINED_FUNCTION_9_68();
    sub_24DF8BFF4(v51, v52);
    swift_getKeyPath();
    v53 = v68;
    sub_24E347128();

    v54 = *(v53 + *(v35 + 24));
    OUTLINED_FUNCTION_0_181();
    sub_24E2E1418(v53, v55);
    if (v54 == 1)
    {
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3();
      }

      v56 = type metadata accessor for PlayerCardTheme();
      __swift_project_value_buffer(v56, qword_27F20BF00);
      v57 = [v48 traitCollection];
      sub_24E336638();
    }

    type metadata accessor for SectionFooterView();
    [objc_msgSend(v48 container)];
    swift_unknownObjectRelease();
    sub_24E2B1484();
    v59 = v58;
    sub_24DF88A8C(0, &qword_27F1DFD40);
    v60 = objc_opt_self();
    v61 = [v60 fractionalWidthDimension_];
    v62 = [v60 absoluteDimension_];
    [objc_opt_self() sizeWithWidthDimension:v61 heightDimension:v62];

    sub_24E347CF8();
    v63 = OUTLINED_FUNCTION_7_76();
    sub_24E0ADF80(v63, v64, v65, 5);
    sub_24E2E1418(v47, type metadata accessor for FooterData);
  }

  sub_24DF8BFF4(v25, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_11_18();
}

void sub_24E2DFAE0()
{
  OUTLINED_FUNCTION_12_19();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v28 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_12_58();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  sub_24DF8BD90(v5, &v26 - v12, &unk_27F1E1CB0);
  sub_24DF8BD90(v3, &v13[*(v9 + 48)], &unk_27F1E1CB0);
  sub_24E1E0E74();
  sub_24DF8BD90(v13, v0, &unk_27F1E1CA0);
  v27 = v9;
  v14 = *(v9 + 48);
  OUTLINED_FUNCTION_8_84();
  v15();
  sub_24DF8BFF4(v0 + v14, &unk_27F1E1CB0);
  sub_24DF8BFF4(v0, &unk_27F1E1CB0);
  swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  LODWORD(v3) = v8[*(v28 + 36)];
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v8, v16);
  if (v3 == 1)
  {
    sub_24DF8BD90(v13, v0, &unk_27F1E1CA0);
    v17 = *(v27 + 48);
    OUTLINED_FUNCTION_8_84();
    v18();
    OUTLINED_FUNCTION_25_26(v0 + v17);
    OUTLINED_FUNCTION_25_26(v0);
  }

  swift_getKeyPath();
  sub_24E347128();

  v19 = v8[*(v28 + 24)];
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v8, v20);
  if (v19)
  {
    sub_24DF8BFF4(v13, &unk_27F1E1CA0);
  }

  else
  {
    sub_24DF8BD90(v13, v0, &unk_27F1E1CA0);
    OUTLINED_FUNCTION_8_84();
    v21();
    sub_24DF8BFF4(v13, &unk_27F1E1CA0);
    OUTLINED_FUNCTION_25_19();
    sub_24DF8BFF4(v22, v23);
    OUTLINED_FUNCTION_25_19();
    sub_24DF8BFF4(v24, v25);
  }

  OUTLINED_FUNCTION_11_18();
}

double sub_24E2DFE7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = sub_24E2E0020(a1, a4);
  v7 = 0.0;
  if (a2)
  {
    v8 = [a2 layoutSize];
    v9 = [v8 heightDimension];

    LODWORD(v8) = [v9 isAbsolute];
    if (v8)
    {
      v10 = [a2 layoutSize];
      v11 = [v10 heightDimension];

      [v11 dimension];
      v7 = v12;
    }
  }

  if (a3)
  {
    v13 = [a3 layoutSize];
    v14 = [v13 heightDimension];

    LODWORD(v13) = [v14 isAbsolute];
    if (v13)
    {
      v15 = [a3 layoutSize];
      v16 = [v15 heightDimension];

      [v16 dimension];
    }
  }

  return v7;
}

double sub_24E2E0020(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_12_58();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v9 = v8[*(v4 + 36)];
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v8, v10);
  if (v9 == 1)
  {
    swift_getKeyPath();
    sub_24E347128();

    v11 = *(v2 + *(v4 + 44) + 32);
    OUTLINED_FUNCTION_0_181();
    sub_24E2E1418(v2, v12);
    if (v11 == 1)
    {
      if (qword_27F1DE118 != -1)
      {
        OUTLINED_FUNCTION_10_3();
      }

      v13 = type metadata accessor for PlayerCardTheme();
      __swift_project_value_buffer(v13, qword_27F20BF00);
      swift_getObjectType();
      v14 = [a2 traitCollection];
      OUTLINED_FUNCTION_25_19();
      sub_24E0D03A0(v15, v16);
    }
  }

  return 0.0;
}

void sub_24E2E0200()
{
  OUTLINED_FUNCTION_13_44();
  v54 = v1;
  v55 = v0;
  v58 = v2;
  v59 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v57 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_14();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = v7;
  v22 = v53 - v21;
  sub_24DF8BD90(v20, v53 - v21, &unk_27F1E1CB0);
  sub_24DF8BD90(v5, &v22[*(v14 + 48)], &unk_27F1E1CB0);
  v60 = v22;
  sub_24DF8BD90(v22, v18, &unk_27F1E1CA0);
  v23 = *(v14 + 48);
  v53[1] = v11;
  v55 = v9;
  v24 = v54;
  sub_24E1E0BCC();
  v26 = v25;
  v58 = v27;
  sub_24DF8BFF4(v18 + v23, &unk_27F1E1CB0);
  sub_24DF8BFF4(v18, &unk_27F1E1CB0);
  type metadata accessor for DetailCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v28 = v26;
    v29 = sub_24E3434A8() == 0;
    sub_24E212698(v29);
  }

  v59 = v26;
  v30 = v55;
  v31 = sub_24E1E0E74();
  v33 = v32;
  sub_24DF8BD90(v60, v18, &unk_27F1E1CA0);
  v34 = *(v14 + 48);
  v35 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
  v36 = v24;
  v37 = sub_24E12AAC0(v36);
  (*(v33 + 80))(v65, v30, v18, v18 + v34, v37, v31, v33);

  OUTLINED_FUNCTION_9_68();
  sub_24DF8BFF4(v38, v39);
  OUTLINED_FUNCTION_9_68();
  sub_24DF8BFF4(v40, v41);
  memcpy(v66, v65, 0x89uLL);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v42 = v56;
  sub_24E347128();

  v43 = *(v42 + *(v57 + 24));
  OUTLINED_FUNCTION_0_181();
  sub_24E2E1418(v42, v44);
  if (v43 != 1)
  {
    goto LABEL_7;
  }

  memcpy(v63, v66, 0x89uLL);
  if (qword_27F1DDB58 != -1)
  {
    swift_once();
  }

  memcpy(v64, &xmmword_27F20B258, 0x89uLL);
  memcpy(v62, &xmmword_27F20B258, 0x89uLL);
  sub_24E15063C(v64, &v61);
  v45 = sub_24E26C3C0(v63, v62);
  memcpy(v65, v62, 0x89uLL);
  sub_24E1505E8(v65);
  if ((v45 & 1) == 0)
  {
    v46 = qword_27F1DE118;
    v47 = v59;
    if (v46 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v48 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v48, qword_27F20BF00);
    v49 = [v36 traitCollection];
    sub_24E336638();
    OUTLINED_FUNCTION_8_2();

    v50 = OUTLINED_FUNCTION_7_2();
    [v51 v52];

    sub_24E1505E8(v66);
    sub_24DF8BFF4(v60, &unk_27F1E1CA0);
  }

  else
  {
LABEL_7:
    sub_24DF8BFF4(v60, &unk_27F1E1CA0);
    sub_24E1505E8(v66);
  }

  OUTLINED_FUNCTION_12_37();
}

uint64_t sub_24E2E068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v80 = a8;
  v78 = a2;
  v79 = a4;
  v76 = a7;
  v77 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  v17 = OUTLINED_FUNCTION_4_5(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_1();
  v75 = v18 - v19;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v20);
  v72 = &v71 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  v74 = v24 - v25;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_58();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_55();
  MEMORY[0x28223BE20](v28);
  v29 = a6;
  v31 = &v71 - v30;
  OUTLINED_FUNCTION_24_22(v29, &v71 - v30);
  OUTLINED_FUNCTION_24_22(v76, &v31[*(v22 + 48)]);
  sub_24DF8BD90(v31, v11, &unk_27F1E1CA0);
  sub_24E1E1634(a1, v78, a3, v79, a5, v11, v11 + *(v22 + 48), v80, a9, v77, v71, v72, v22, v74, v75, a9, a1, v78, v79, v80, v81, v82);
  OUTLINED_FUNCTION_15_45();
  sub_24DF8BFF4(v32, v33);
  OUTLINED_FUNCTION_15_45();
  sub_24DF8BFF4(v34, v35);
  if (qword_27F1DDCC8 != -1)
  {
    swift_once();
  }

  v36 = qword_27F1EA7C0;
  swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  if (sub_24E00D594(v84, v36))
  {
    sub_24DF8BD90(v31, v10, &unk_27F1E1CA0);
    v38 = v72;
    v39 = v73;
    v40 = v10 + *(v73 + 48);
    sub_24E2144A8(v10, v72);
    v41 = OUTLINED_FUNCTION_14_47();
    if (__swift_getEnumTagSinglePayload(v41, v42, v37) == 1)
    {
      sub_24DF8BFF4(v40, &unk_27F1E1CB0);
      v43 = 22;
      v40 = v38;
    }

    else
    {
      swift_getKeyPath();
      sub_24E347128();

      v43 = BYTE5(v82);
      (*(*(v37 - 8) + 8))(v38, v37);
    }

    sub_24DF8BFF4(v40, &unk_27F1E1CB0);
    v44 = v74;
    sub_24DF8BD90(v31, v74, &unk_27F1E1CA0);
    v45 = v75;
    sub_24E2144A8(v44 + *(v39 + 48), v75);
    v46 = OUTLINED_FUNCTION_14_47();
    v48 = v31;
    if (__swift_getEnumTagSinglePayload(v46, v47, v37) == 1)
    {
      sub_24DF8BFF4(v44, &unk_27F1E1CB0);
      v44 = v45;
    }

    else
    {
      swift_getKeyPath();
      sub_24E347128();

      (*(*(v37 - 8) + 8))(v45, v37);
    }

    sub_24DF8BFF4(v44, &unk_27F1E1CB0);
    v49 = sub_24E3434C8();
    v50 = sub_24E3434C8();
    swift_getKeyPath();
    sub_24E347128();

    v51 = *(v83 + 16);

    if (v51 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51;
    }

    v53 = v52 - 1;
    swift_getKeyPath();
    sub_24E347128();

    if (v49)
    {
      if (v50 == v53)
      {
        v54 = 12;
      }

      else
      {
        v54 = 0;
      }

      goto LABEL_25;
    }

    if (v50 != v53)
    {
      v54 = 3;
LABEL_25:
      v31 = v48;
      goto LABEL_26;
    }

    v55 = HIBYTE(v82) != 1 || v43 == 22;
    v31 = v48;
    if (v55)
    {
      goto LABEL_24;
    }

    v64 = sub_24E17A62C(v43);
    if (v64 != 0x616C506C6C616D73 || v65 != 0xEF64726143726579)
    {
      OUTLINED_FUNCTION_22_33();
      v67 = sub_24E348C08();

      if (v67)
      {
LABEL_42:
        v54 = 12;
        goto LABEL_26;
      }

      if (sub_24E17A62C(v43) != 0x65726F7453707061 || v68 != 0xEE0070756B636F4CLL)
      {
        OUTLINED_FUNCTION_22_33();
        v70 = sub_24E348C08();

        if (v70)
        {
          goto LABEL_42;
        }

LABEL_24:
        v54 = -1;
LABEL_26:
        v56 = v77;
        v57 = [v77 layer];
        [v57 setMaskedCorners_];

        v58 = [v56 layer];
        [v58 setMasksToBounds_];

        v59 = [v56 layer];
        if (qword_27F1DE118 != -1)
        {
          OUTLINED_FUNCTION_10_3();
        }

        v60 = type metadata accessor for PlayerCardTheme();
        __swift_project_value_buffer(v60, qword_27F20BF00);
        v61 = [v76 traitCollection];
        v62 = sub_24E336558();

        [v59 setCornerRadius_];
        return sub_24DF8BFF4(v31, &unk_27F1E1CA0);
      }
    }

    goto LABEL_42;
  }

  return sub_24DF8BFF4(v31, &unk_27F1E1CA0);
}

void sub_24E2E0D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_13_44();
  v99 = v25;
  v32 = v31;
  v34 = v33;
  v101 = v36;
  v102 = v35;
  v97 = v37;
  v39 = v38;
  v41 = v40;
  v100 = a25;
  v96 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_14();
  v95 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_11_55();
  MEMORY[0x28223BE20](v46);
  v48 = &v94 - v47;
  sub_24DF8BD90(v34, &v94 - v47, &unk_27F1E1CB0);
  v98 = v44;
  v49 = *(v44 + 48);
  v50 = v48;
  sub_24DF8BD90(v32, &v48[v49], &unk_27F1E1CB0);
  type metadata accessor for SectionBackgroundView();
  if (sub_24DFEA80C() == v41 && v51 == v39)
  {

LABEL_23:
    v56 = v102;
    if (swift_dynamicCastClass())
    {
      sub_24DF8BD90(v48, v26, &unk_27F1E1CA0);
      v64 = *(v98 + 48);
      v65 = v56;
      sub_24E1E14B0();
      OUTLINED_FUNCTION_25_26(v26 + v64);
      OUTLINED_FUNCTION_25_26(v26);
      memcpy(v104, v103, 0x89uLL);
      memcpy(v103, v104, 0x89uLL);
      sub_24E15039C(v103);

      sub_24E1505E8(v104);
LABEL_25:
      [v56 setNeedsLayout];
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v53 = OUTLINED_FUNCTION_23_31();

  if (v53)
  {
    goto LABEL_23;
  }

  type metadata accessor for SeparatorView();
  v55 = sub_24DFEA80C() == v41 && v54 == v39;
  v56 = v102;
  if (v55)
  {

    goto LABEL_28;
  }

  v57 = OUTLINED_FUNCTION_23_31();

  if (v57)
  {
LABEL_28:
    v66 = swift_dynamicCastClass();
    if (!v66)
    {
      goto LABEL_26;
    }

    v67 = v66;
    v96 = v56;
    v68 = sub_24E3434C8();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    v69 = v101;
    sub_24E347128();

    v70 = *(v104[0] + 16);

    if (v70 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70;
    }

    v72 = v68 == v71 - 1;
    v73 = sub_24E1E0E74();
    v75 = v74;
    sub_24DF8BD90(v48, v26, &unk_27F1E1CA0);
    v76 = *(v98 + 48);
    (*(v75 + 64))(v69, v26, v26 + v76, v100, v73, v75);
    OUTLINED_FUNCTION_8_2();
    sub_24DF8BFF4(v26 + v76, &unk_27F1E1CB0);
    sub_24DF8BFF4(v26, &unk_27F1E1CB0);
    v77 = &v67[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style];
    *v77 = v27;
    *(v77 + 1) = v28;
    *(v77 + 2) = v29;
    *(v77 + 3) = v30;
    v77[32] = 0;
    sub_24E1EE11C();
    [v67 setHidden_];

    goto LABEL_25;
  }

  if (sub_24E347CF8() == v41 && v58 == v39)
  {

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_9_68();
  v60 = sub_24E348C08();

  if (v60)
  {
LABEL_34:
    v78 = v101;
    v79 = sub_24E1E0E74();
    v81 = v80;
    sub_24DF8BD90(v48, v26, &unk_27F1E1CA0);
    (*(v81 + 72))(v78, v26, v26 + *(v98 + 48), v100, v79, v81);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_9_68();
    sub_24DF8BFF4(v82, v83);
    OUTLINED_FUNCTION_9_68();
    sub_24DF8BFF4(v84, v85);
LABEL_35:
    v86 = OUTLINED_FUNCTION_7_2();
    [v87 v88];
    goto LABEL_25;
  }

  if (sub_24E347CF8() == v41 && v61 == v39)
  {

LABEL_37:
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
    v89 = v95;
    sub_24E347128();

    v90 = *(v89 + v96[6]);
    OUTLINED_FUNCTION_0_181();
    sub_24E2E1418(v89, v91);
    if (v90 != 1)
    {
      [v56 setLayoutMargins_];
      goto LABEL_25;
    }

    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v92 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v92, qword_27F20BF00);
    v93 = [v100 traitCollection];
    sub_24E336638();
    OUTLINED_FUNCTION_8_2();

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_9_68();
  v63 = sub_24E348C08();

  if (v63)
  {
    goto LABEL_37;
  }

LABEL_26:
  sub_24DF8BFF4(v50, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_12_37();
}

uint64_t sub_24E2E13B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24E2E1418(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_45()
{

  return sub_24DF8BFF4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_23_31()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_24_22(uint64_t a1, uint64_t a2)
{

  return sub_24DF8BD90(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1)
{

  return sub_24DF8BFF4(a1, v1);
}

id sub_24E2E1614(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:a2];

  return v4;
}

void GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v105 = v2;
  v4 = v3;
  v108 = v5;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0);
  OUTLINED_FUNCTION_0_14();
  v103 = v7;
  v104 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_3();
  v102 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0);
  OUTLINED_FUNCTION_0_14();
  v100 = v11;
  v101 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v13);
  v14 = sub_24E3476F8();
  v15 = OUTLINED_FUNCTION_4_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v18);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v20);
  v92 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v91 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v24 - v23);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0);
  OUTLINED_FUNCTION_0_14();
  v95 = v25;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v88 - v27;
  v107 = sub_24E347638();
  OUTLINED_FUNCTION_0_14();
  v90 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_21_20();
  v106 = v34;
  v35 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_1();
  v41 = v40 - v39;
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_preferredLargeTitleDisplayMode] = 2;
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_bootstrapPresenter] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content] = 0;
  v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection] = 0;
  v42 = *v4;
  v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_isDeeplinked] = 0;
  if (v42 == 3)
  {
    if (qword_27F1DD8F0 != -1)
    {
      swift_once();
    }

    v42 = byte_27F20AFF8;
  }

  v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_theme] = v42;
  if (v42)
  {
    if (qword_27F1DD800 != -1)
    {
      swift_once();
    }

    v43 = &qword_27F20ADC8;
  }

  else
  {
    if (qword_27F1DD7F8 != -1)
    {
      swift_once();
    }

    v43 = &qword_27F20AD90;
  }

  v44 = v43[4];
  v45 = v43[5];
  v46 = v43[2];
  v47 = v43[3];
  v48 = *v43;
  v49 = v43[1];
  v50 = &v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_style];
  v51 = *(v43 + 48);
  *v50 = *v43;
  *(v50 + 1) = v49;
  *(v50 + 2) = v46;
  *(v50 + 3) = v47;
  *(v50 + 4) = v44;
  *(v50 + 5) = v45;
  v50[48] = v51;
  sub_24DFD7E3C(v48, v49, v46, v47, v44, v45, v51);
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v52 = qword_27F20B960;
  sub_24E3477D8();
  v89 = v52;
  sub_24E32EA08();
  v53 = sub_24E3477C8();
  sub_24E343C98();

  v54 = sub_24E343F78();
  v55 = sub_24E348248();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v53;
    v57 = v41;
    v58 = v37;
    v59 = v32;
    v60 = v28;
    v61 = v35;
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    sub_24E3477B8();
    *(v62 + 4) = v63;
    _os_log_impl(&dword_24DE53000, v54, v55, "Impressionable threshold returned to impressionTracker: %f", v62, 0xCu);
    v64 = v62;
    v35 = v61;
    v28 = v60;
    v32 = v59;
    v37 = v58;
    v41 = v57;
    v53 = v56;
    MEMORY[0x253040EE0](v64, -1, -1);
  }

  (*(v37 + 8))(v41, v35);
  sub_24E347628();
  v110[0] = v53;
  v110[1] = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0);
  v65 = v106;
  sub_24E3475B8();
  v95[1](v28, v96);

  v66 = v90;
  v67 = *(v90 + 8);
  v68 = v107;
  v96 = v90 + 8;
  v95 = v67;
  (v67)(v32, v107);
  (*(v91 + 16))(v93, v89 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v92);
  (*(v66 + 16))(v32, v65, v68);
  v69 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v69);
  sub_24E3476A8();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_pageMetricsPresenter] = sub_24E347658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810);
  swift_allocObject();
  v70 = v108;

  v110[0] = sub_24E347578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA830);
  swift_allocObject();
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810);
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_statePresenter] = sub_24E344898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA848);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_24E367D20;
  v72 = sub_24E2E7A5C(&qword_27F1EA850, type metadata accessor for GameLayerAchievementsPresenter);
  *(v71 + 32) = v70;
  *(v71 + 40) = v72;
  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters] = v71;
  v73 = objc_allocWithZone(MEMORY[0x277D752F0]);

  v74 = [v73 init];
  sub_24E347748();
  sub_24E3476E8();

  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_impressionsCalculator] = sub_24E347708();
  v111.receiver = v1;
  v111.super_class = ObjectType;
  ObjectType = v74;
  v75 = objc_msgSendSuper2(&v111, sel_initWithCollectionViewLayout_, v74);
  v76 = sub_24E3448A8();
  sub_24E2E7BBC(v76, v75, type metadata accessor for GameLayerAchievementsPresenter, &protocol witness table for GameLayerAchievementsPresenter, GameLayerAchievementsPresenter.pageTitle.getter, GameLayerAchievementsPresenter.pageSubtitle.getter);

  if (([objc_opt_self() isPreferences] & 1) == 0)
  {
    v77 = [v75 navigationItem];
    [v77 _setAutoScrollEdgeTransitionDistance_];

    v78 = [v75 navigationItem];
    [v78 _setManualScrollEdgeAppearanceEnabled_];
  }

  memset(v110, 0, sizeof(v110));
  v97 = *&v75[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_pageMetricsPresenter];
  v79 = v97;
  sub_24E09797C(v110, v109);
  v80 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v81 = v105;

  swift_retain_n();
  v82 = v75;
  swift_retain_n();
  v83 = v82;
  v84 = sub_24E190B5C(v75, v109, 0, v79, v53, MEMORY[0x277D221C0], v81);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28612AA40;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0);
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0);
  sub_24E347198();
  v85 = v99;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v109);
  (*(v100 + 8))(v85, v101);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_28612AA40;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00);
  sub_24E347198();
  v86 = v102;
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v109);
  (*(v103 + 8))(v86, v104);

  sub_24DFA9298(v110, &qword_27F1E1B70);
  (v95)(v106, v107);
  v87 = *&v83[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_bootstrapPresenter];
  *&v83[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_bootstrapPresenter] = v84;

  OUTLINED_FUNCTION_18();
}

void sub_24E2E2390()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_preferredLargeTitleDisplayMode) = 2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_bootstrapPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_isDeeplinked) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t GameLayerAchievementsViewController.theme.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_theme;
  OUTLINED_FUNCTION_30_13();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24E2E2494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_theme;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void GameLayerAchievementsViewController.theme.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_theme;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_24E2E2574();
}

void sub_24E2E2574()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_theme;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    if (qword_27F1DD800 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F20ADC8;
  }

  else
  {
    if (qword_27F1DD7F8 != -1)
    {
      swift_once();
    }

    v2 = &qword_27F20AD90;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *v2;
  v8 = v2[1];
  v9 = v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_style;
  v10 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_style);
  v11 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_style + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = *(v9 + 40);
  v16 = *(v2 + 48);
  *v9 = *v2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  v17 = *(v9 + 48);
  *(v9 + 48) = v16;
  sub_24DFD7E3C(v7, v8, v5, v6, v3, v4, v16);
  sub_24DFEC8B4(v10, v11, v12, v13, v14, v15, v17);
}

void (*GameLayerAchievementsViewController.theme.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24E2E2700;
}

void sub_24E2E2700(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E2E2574();
  }
}

uint64_t GameLayerAchievementsViewController.scrollDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection;
  OUTLINED_FUNCTION_30_13();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t GameLayerAchievementsViewController.scrollDirection.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection;
  OUTLINED_FUNCTION_30_13();
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t GameLayerAchievementsViewController.preferredFocusEnvironments.getter()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24E369990;
    *(v4 + 32) = v3;
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v7, sel_preferredFocusEnvironments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFF70);
    v4 = sub_24E347F08();
  }

  return v4;
}

void sub_24E2E296C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v45 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA880);
  OUTLINED_FUNCTION_0_14();
  v43 = v5;
  v44 = v4;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v41 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v14);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;

  sub_24E3448A8();
  sub_24E2059C4(v0[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_isDeeplinked], v17);

  v18 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  sub_24E347698();

  sub_24E3448A8();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_4_109();
  sub_24DFB4C28(v19, v20);
  sub_24E347198();
  v42 = ObjectType;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v10 + 8))(v13, v8);
  v21 = OUTLINED_FUNCTION_27_17();
  if (!v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = v21;
  static GameLayerComponents.registerCells(in:)(v21);

  if (!OUTLINED_FUNCTION_27_17())
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA890);

  v23 = sub_24E3445C8();
  v24 = OUTLINED_FUNCTION_27_17();
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = v24;
  v26 = type metadata accessor for SectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = *MEMORY[0x277D767D8];
  v46[0] = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA180);
  sub_24E347D48();
  v30 = sub_24E347CB8();

  [v25 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

  sub_24E347CF8();
  sub_24E344588();

  *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content] = v23;

  v31 = OUTLINED_FUNCTION_27_17();
  if (!v31)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v1 traitCollection];
  sub_24E2E3384(v23, v32, v33);

  v34 = *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v35 = *(v34 + 16);
  if (v35)
  {

    v36 = v34 + 40;
    do
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_7();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_17_5();
      sub_24E347828();
      swift_unknownObjectRelease();
      v36 += 16;
      --v35;
    }

    while (v35);
  }

  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8A0);
  OUTLINED_FUNCTION_4_109();
  sub_24DFB4C28(v37, v38);
  OUTLINED_FUNCTION_17_5();
  sub_24E347198();
  v39 = v41;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v43 + 8))(v39, v44);
  OUTLINED_FUNCTION_18();
}

void (*sub_24E2E2F2C(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2E7A08;
}

void sub_24E2E2F90(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E2E2FD0(&v2);
}

void sub_24E2E2FD0(void *a1)
{
  if (*a1 == 2)
  {
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsFocusUpdate];
    }
  }
}

uint64_t sub_24E2E3048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v35 = sub_24E3472B8();
  v11 = *(v35 - 8);
  v12 = MEMORY[0x28223BE20](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v12);
  sub_24DFB4C28(&qword_27F1EA1C0, &unk_27F1E1C00);
  sub_24E347298();
  sub_24E347288();
  v15 = sub_24E347CB8();

  v16 = sub_24E343488();
  v17 = [a4 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v16];

  swift_getObjectType();
  v18 = dynamic_cast_existential_1_unconditional(v17);
  v20 = v19;
  [a4 frame];
  v22 = v21;
  [a4 frame];
  if (v23 < v22)
  {
    v22 = v23;
  }

  ObjectType = swift_getObjectType();
  (*(v20 + 24))(v22 < 375.0, ObjectType, v20);
  [a4 frame];
  v26 = v25;
  v28 = v27;
  v29 = [a4 traitCollection];
  v30 = [objc_allocWithZone(type metadata accessor for PageGrid()) initWithSize:v29 traitCollection:{v26, v28}];

  v31 = *(v20 + 48);
  v32 = v30;
  v31(a1, v32, v36, v37, ObjectType, v20);

  (*(v11 + 8))(v14, v35);
  return v18;
}

void sub_24E2E3384(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_scrollDirection;
  swift_beginAccess();
  v8 = v4[v7];
  v9 = [a3 verticalSizeClass];
  v10 = [a3 preferredContentSizeCategory];
  v11 = [v4 presentingViewController];
  v12 = v11;
  if (v11)
  {
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  if (v8 == 2 || (!v8 ? (v14 = v9 == 1) : (v14 = 0), v14 ? (v15 = v12 == 0) : (v15 = 0), v15 && (sub_24E348458() & 1) == 0))
  {
    [v13 setScrollDirection_];
  }

  if (qword_27F1DDC38 != -1)
  {
    swift_once();
  }

  v16 = sub_24E3444F8();
  __swift_project_value_buffer(v16, qword_27F20B4B8);
  sub_24E3444E8();
  [v13 setInterSectionSpacing_];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v13;
  v19 = v13;

  v21 = sub_24E2C2B40(v20, v19, sub_24E2E7A54, v18);
  [a2 setCollectionViewLayout_];
  if ([v19 scrollDirection])
  {
    if (qword_27F1DDC58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_27F20B518);
    sub_24E3444E8();
    v23 = v22;
    [a2 safeAreaInsets];
    if (v24 != 0.0)
    {
      if (qword_27F1DDC28 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v16, qword_27F20B488);
    }

    sub_24E3444E8();
    [a2 setContentInset_];
  }

  else
  {
    if (qword_27F1DDC28 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_27F20B488);
    sub_24E3444E8();
    v27 = v26;
    [a2 safeAreaInsets];
    sub_24E3444E8();
    [a2 setContentInset_];
  }
}

uint64_t (*sub_24E2E3704(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2E7980;
}

uint64_t sub_24E2E3768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-1] - v7;
  sub_24DFBCE7C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DFA9298(v8, &unk_27F1EAC90);
  }

  v13[3] = type metadata accessor for AchievementDetailsAction();
  v13[4] = sub_24E2E7A5C(&qword_27F1E5950, type metadata accessor for AchievementDetailsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_24E2E79A4(a1, boxed_opaque_existential_1);
  (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v2);
  sub_24DFBCE7C();
  sub_24E3473B8();

  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return (*(*(v9 - 8) + 8))(v8, v9);
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewDidLoad()()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);

  v2 = OUTLINED_FUNCTION_28_20();
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 bounds];

  sub_24E3476D8();

  type metadata accessor for BackgroundView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v26[0] = OUTLINED_FUNCTION_14_48(OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_style);
  v26[1] = v5;
  v26[2] = v6;
  v26[3] = v7;
  v26[4] = v8;
  v26[5] = v9;
  v27 = v10;
  sub_24DFD7E3C(v26[0], v5, v6, v7, v8, v9, v10);
  sub_24DFEB8F4(v26);
  sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
  v11 = OUTLINED_FUNCTION_28_20();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 setBackgroundView_];

  v13 = OUTLINED_FUNCTION_28_20();
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor_];

  v16 = OUTLINED_FUNCTION_28_20();
  if (!v16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 setContentInsetAdjustmentBehavior_];

  v18 = [v1 navigationItem];
  [v18 setLargeTitleDisplayMode_];

  v19 = [v1 navigationItem];
  [v19 setBackButtonDisplayMode_];

  v20 = [v1 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 navigationBar];

    [v22 setBarStyle_];
  }

  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_bootstrapPresenter];
  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = v23;
  sub_24E19116C();

  sub_24E3476A8();
  OUTLINED_FUNCTION_7();

  sub_24E347888();

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v25 = [v1 navigationItem];
    [v25 setStyle_];
  }
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_16_48();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_25_27();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_3_4();
      sub_24E347848();
      swift_unknownObjectRelease();
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_24E3476A8();

  sub_24E3478A8();
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = OUTLINED_FUNCTION_16_48();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_25_27();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_3_4();
      sub_24E347838();
      swift_unknownObjectRelease();
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_24E011518();
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsFocusUpdate];
  }

  sub_24E347668();

  sub_24E347738();
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_24E347908();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, v4 & 1);
  v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_24E3478F8();
      sub_24E347868();
      swift_unknownObjectRelease();
      v10 = OUTLINED_FUNCTION_17_5();
      v11(v10);
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  sub_24E3478F8();
  sub_24E347678();

  v12 = OUTLINED_FUNCTION_17_5();
  v13(v12);
  OUTLINED_FUNCTION_18();
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = OUTLINED_FUNCTION_16_48();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_25_27();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_3_4();
      sub_24E347858();
      swift_unknownObjectRelease();
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_24E3476A8();

  sub_24E3478B8();

  sub_24E347738();
}

Swift::Void __swiftcall GameLayerAchievementsViewController.didReceiveMemoryWarning()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didReceiveMemoryWarning);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_childPresenters];
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 40;
    do
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_7();
      swift_unknownObjectRetain();
      sub_24E347878();
      swift_unknownObjectRelease();
      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

Swift::Void __swiftcall GameLayerAchievementsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA870);
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  OUTLINED_FUNCTION_24_0();
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v36 - v9;
  v11 = [v1 traitCollection];
  v12 = [v11 verticalSizeClass];

  if (!isa)
  {
    goto LABEL_10;
  }

  if (v12 != [(objc_class *)isa verticalSizeClass])
  {
    goto LABEL_10;
  }

  v13 = OUTLINED_FUNCTION_29_17();
  [v13 displayScale];
  v15 = v14;

  [(objc_class *)isa displayScale];
  if (v15 != v16)
  {
    goto LABEL_10;
  }

  v17 = OUTLINED_FUNCTION_29_17();
  v18 = [v17 layoutDirection];

  if (v18 != [(objc_class *)isa layoutDirection])
  {
    goto LABEL_10;
  }

  v19 = OUTLINED_FUNCTION_29_17();
  v20 = [v19 preferredContentSizeCategory];

  v21 = [(objc_class *)isa preferredContentSizeCategory];
  v36 = v20;
  v22 = sub_24E347CF8();
  v24 = v23;
  if (v22 == sub_24E347CF8() && v24 == v25)
  {
  }

  else
  {
    v27 = sub_24E348C08();

    if ((v27 & 1) == 0)
    {
LABEL_10:
      v28 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content;
      v29 = *&v2[OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content];
      if (!v29)
      {
        v40.receiver = v2;
        v40.super_class = ObjectType;
        objc_msgSendSuper2(&v40, sel_traitCollectionDidChange_, isa);
        return;
      }

      v30 = [v2 collectionView];
      if (v30)
      {
        v31 = v30;
        v32 = OUTLINED_FUNCTION_29_17();
        sub_24E2E3384(v29, v31, v32);

        if (*&v2[v28])
        {

          sub_24E3445B8();

          sub_24E344B88();
          sub_24E344B48();

          sub_24E3448A8();

          sub_24E346F78();

          (*(v6 + 8))(v10, v4);
          v39.receiver = v2;
          v39.super_class = ObjectType;
          objc_msgSendSuper2(&v39, sel_traitCollectionDidChange_, isa);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v33 = [v2 collectionView];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 collectionViewLayout];

    [v35 invalidateLayout];
    v38.receiver = v2;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, sel_traitCollectionDidChange_, isa);
    return;
  }

LABEL_20:
  __break(1u);
}

void GameLayerAchievementsViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = sub_24E2E49FC();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7 & 1;
  v11[4] = sub_24E2E7904;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24DFFFA1C;
  v11[3] = &block_descriptor_98;
  v10 = _Block_copy(v11);

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

id sub_24E2E49FC()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result contentOffset];
  v4 = v3;

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result safeAreaInsets];
  v7 = v6;

  if (v4 != -v7)
  {
    return 0;
  }

  result = [v0 collectionView];
  if (result)
  {
    v8 = result;
    [result contentOffset];
    v10 = v9;

    return (v10 == 0.0);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_24E2E4AE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_24E343518();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong collectionView];

    if (!v10)
    {
      __break(1u);
      goto LABEL_13;
    }

    [v10 reloadData];
  }

  if ((a3 & 1) == 0)
  {
    return;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v11 collectionView];

  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = [v13 numberOfItemsInSection_];

  if (v14 >= 1)
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 collectionView];

      if (v17)
      {
        MEMORY[0x25303A010](0, 0);
        v18 = sub_24E343488();
        (*(v5 + 8))(v7, v4);
        [v17 scrollToItemAtIndexPath:v18 atScrollPosition:8 animated:0];

        return;
      }

LABEL_14:
      __break(1u);
    }
  }
}

Swift::Void __swiftcall GameLayerAchievementsViewController.viewWillLayoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillLayoutSubviews);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 frame];

    sub_24E2E4E0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E2E4E0C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 largeTitleDisplayMode];

  if (v3 != 2)
  {
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      if (v6)
      {
        v7 = [v1 traitCollection];
        GKIsXRUIIdiomShouldUsePadUI();
        v8 = objc_allocWithZone(type metadata accessor for PageGrid());
        v16 = PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v7);
        v9 = [v1 navigationItem];
        if (qword_27F1DDC28 != -1)
        {
          swift_once();
        }

        v10 = sub_24E3444F8();
        __swift_project_value_buffer(v10, qword_27F20B488);
        sub_24E3444E8();
        v12 = v11;
        v13 = &v16[OBJC_IVAR___GameLayerPageGrid_centeringInsets];
        v14 = *&v16[OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8];
        sub_24E3444E8();
        [v9 setLargeTitleInsets_];

        [v6 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_24E2E5058(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v64 = a3;
  v58 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v59 = sub_24E3472B8();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong collectionView];

    if (v17)
    {
      v61 = v10;
      v62 = v12;
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v63 = v9;
        v60 = sub_24DFBCE7C();

        v20 = v17;
        v56 = [a5 scrollDirection];
        v21 = [v20 safeAreaLayoutGuide];
        [v21 layoutFrame];

        v22 = [v64 traitCollection];
        GKIsXRUIIdiomShouldUsePadUI();
        v23 = objc_allocWithZone(type metadata accessor for PageGrid());
        v24 = PageGrid.init(size:traitCollection:idealColumnSizeCategory:)(v22);
        swift_getKeyPath();
        v54 = v20;
        sub_24E347128();

        v25 = v68;
        v26 = __swift_project_boxed_opaque_existential_1(&aBlock, v68);
        v71[3] = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
        (*(*(v25 - 1) + 16))(boxed_opaque_existential_1, v26, v25);
        sub_24E3472A8();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        if (qword_27F1DD5D8 != -1)
        {
          swift_once();
        }

        v55 = a4;
        v28 = v8;
        v29 = sub_24E130ECC(v14, off_27F1DEF68);
        v53 = v14;
        if (v29)
        {
          v31 = v58;
          v32 = v60;
          v33 = v64;
          v34 = v56;
          v35 = (*(v30 + 40))(a1, v58, v60, v64, v56, v24);
          swift_getKeyPath();
          sub_24E347128();

          v36 = v68;
          v37 = v69;
          __swift_project_boxed_opaque_existential_1(&aBlock, v68);
          v38 = *(v37 + 1);
          v51 = v37;
          v39 = v54;
          v40 = v38(v35, a1, v31, v54, v32, v54, v33, v34, v24, v36, v51);

          (*(v57 + 8))(v53, v59);
          __swift_destroy_boxed_opaque_existential_1(&aBlock);

          v41 = swift_allocObject();
          swift_beginAccess();
          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v44 = v62;
          v43 = v63;
          (*(v63 + 16))(v62, a1, v28);
          v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
          v46 = (v61 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
          v47 = swift_allocObject();
          (*(v43 + 32))(v47 + v45, v44, v28);
          *(v47 + v46) = v41;
          v69 = sub_24E2E7AA4;
          v70 = v47;
          aBlock = MEMORY[0x277D85DD0];
          v66 = 1107296256;
          v67 = sub_24E288CBC;
          v68 = &block_descriptor_36_0;
          v48 = _Block_copy(&aBlock);

          [v40 setVisibleItemsInvalidationHandler_];
          _Block_release(v48);

          return v40;
        }

        aBlock = 0;
        v66 = 0xE000000000000000;
        sub_24E348998();

        aBlock = 0xD00000000000001CLL;
        v66 = 0x800000024E3AC870;
        sub_24E2E7A5C(&qword_27F1EA1B0, MEMORY[0x277D21D58]);
        v50 = sub_24E348BA8();
        MEMORY[0x25303E950](v50);
      }
    }
  }

  result = sub_24E348AE8();
  __break(1u);
  return result;
}

uint64_t sub_24E2E57DC(uint64_t a1, void *a2)
{
  v3 = sub_24E347478();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_24E3474B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  sub_24E347128();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_24DFA9298(v8, &qword_27F1E58A0);
  }

  (*(v10 + 32))(v12, v8, v9);
  [objc_msgSend(a2 container)];
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;

    sub_24E347498();
    sub_24E347728();

    (*(v16 + 8))(v5, v3);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t GameLayerAchievementsViewController.collectionView(_:willDisplay:forItemAt:)(uint64_t a1, void *a2, uint64_t a3)
{

  [a2 frame];
  v5 = OUTLINED_FUNCTION_3_4();
  sub_24E2E5B60(v5, v6, a3);
}

void sub_24E2E5B60(uint64_t a1, void *a2, uint64_t a3)
{
  v60 = a2;
  v66 = a1;
  sub_24E347478();
  OUTLINED_FUNCTION_0_14();
  v62 = v8;
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v61 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38();
  v64 = v13;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v69 = v18;
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38();
  v65 = v19;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_21_20();
  v68 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v22);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v72 = v27;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_3();
  v67 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E80);
  OUTLINED_FUNCTION_4_5(v30);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_16();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  OUTLINED_FUNCTION_0_14();
  v73 = v33;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_16_9();
  v35 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content;
  if (!*(v3 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content))
  {
    __break(1u);
    goto LABEL_20;
  }

  v71 = a3;
  sub_24E3445A8();

  OUTLINED_FUNCTION_17_4(v5, 1, v32);
  if (v44)
  {
    v36 = &qword_27F1E7E80;
    v37 = v5;
LABEL_12:
    sub_24DFA9298(v37, v36);
    return;
  }

  (*(v73 + 32))(v4, v5, v32);
  if (!*(v3 + v35))
  {
LABEL_20:
    __break(1u);
    return;
  }

  sub_24E344598();

  v38 = v26;
  OUTLINED_FUNCTION_17_4(v25, 1, v26);
  v39 = v70;
  v40 = v72;
  if (v44)
  {
    v41 = OUTLINED_FUNCTION_6_97();
    v42(v41);
    v36 = &unk_27F1E6C70;
    v37 = v25;
    goto LABEL_12;
  }

  v43 = v67;
  (*(v72 + 32))(v67, v25, v38);
  swift_getKeyPath();
  sub_24E347128();

  OUTLINED_FUNCTION_17_4(v16, 1, v39);
  if (v44)
  {
    (*(v40 + 8))(v43, v38);
    v45 = OUTLINED_FUNCTION_6_97();
    v46(v45);
    v36 = &qword_27F1E58A0;
    v37 = v16;
    goto LABEL_12;
  }

  v47 = *(v69 + 32);
  v47(v68, v16, v39);
  swift_getKeyPath();
  v48 = v64;
  sub_24E347128();

  OUTLINED_FUNCTION_17_4(v48, 1, v39);
  if (v49)
  {
    sub_24DFA9298(v48, &qword_27F1E58A0);

    v54 = v69;
  }

  else
  {
    v47(v65, v48, v39);
    v50 = [v60 collectionViewLayout];
    [v50 _contentFrameForSection_];

    v51 = v65;
    sub_24E3476C8();
    v52 = v61;
    sub_24E347498();
    v53 = sub_24E3476B8();
    (*(v62 + 8))(v52, v63);
    v54 = v69;
    (*(v69 + 8))(v51, v39);
    if (!v53)
    {
    }
  }

  v55 = v72;
  v56 = v68;
  sub_24E3476C8();

  (*(v54 + 8))(v56, v39);
  (*(v55 + 8))(v43, v38);
  v57 = OUTLINED_FUNCTION_6_97();
  v58(v57);
}

uint64_t GameLayerAchievementsViewController.collectionView(_:didEndDisplaying:forItemAt:)()
{

  sub_24E2E6374();
}

void sub_24E2E6374()
{
  OUTLINED_FUNCTION_32();
  v73 = v2;
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v80 = v4;
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24E347478();
  OUTLINED_FUNCTION_0_14();
  v69 = v9;
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v68 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v13 = OUTLINED_FUNCTION_4_5(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38();
  v71 = v14;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_20();
  v74 = v16;
  v76 = sub_24E3474B8();
  OUTLINED_FUNCTION_0_14();
  v72 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38();
  v67 = v19;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_21_20();
  v75 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v22);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v78 = v27;
  v79 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_3();
  v77 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7E80);
  OUTLINED_FUNCTION_4_5(v30);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v67 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);
  OUTLINED_FUNCTION_0_14();
  v82 = v35;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_16();
  v37 = OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content))
  {

    sub_24E3445A8();

    OUTLINED_FUNCTION_17_4(v33, 1, v34);
    if (v47)
    {
      v38 = &qword_27F1E7E80;
      v39 = v33;
      goto LABEL_12;
    }

    (*(v82 + 32))(v1, v33, v34);
    if (*(v0 + v37))
    {

      sub_24E344598();

      v40 = v79;
      OUTLINED_FUNCTION_17_4(v25, 1, v79);
      if (v47)
      {
        v41 = OUTLINED_FUNCTION_7_77();
        v42(v41);
        v38 = &unk_27F1E6C70;
        v39 = v25;
      }

      else
      {
        v43 = v77;
        v44 = v78;
        (*(v78 + 32))(v77, v25, v40);
        swift_getKeyPath();
        v45 = v74;
        sub_24E347128();

        v46 = v76;
        OUTLINED_FUNCTION_17_4(v45, 1, v76);
        if (!v47)
        {
          v56 = v72;
          v57 = *(v72 + 32);
          v57(v75, v45, v46);
          swift_getKeyPath();
          v58 = v71;
          sub_24E347128();

          OUTLINED_FUNCTION_17_4(v58, 1, v46);
          if (v59)
          {
            sub_24DFA9298(v58, &qword_27F1E58A0);

            v61 = v77;
            v60 = v78;
          }

          else
          {
            v62 = v67;
            v63 = OUTLINED_FUNCTION_17_5();
            (v57)(v63);
            v64 = v68;
            sub_24E347498();
            v65 = sub_24E3476B8();
            (*(v69 + 8))(v64, v70);
            (*(v56 + 8))(v62, v46);
            v61 = v77;
            if (!v65)
            {
            }

            v60 = v78;
          }

          v66 = v75;
          sub_24E347718();

          (*(v56 + 8))(v66, v46);
          (*(v60 + 8))(v61, v40);
          v55 = OUTLINED_FUNCTION_7_77();
LABEL_15:
          v54(v55, v53);
          OUTLINED_FUNCTION_18();
          return;
        }

        (*(v44 + 8))(v43, v40);
        v48 = OUTLINED_FUNCTION_7_77();
        v49(v48);
        v38 = &qword_27F1E58A0;
        v39 = v45;
      }

LABEL_12:
      sub_24DFA9298(v39, v38);
      sub_24E343C98();
      v50 = sub_24E343F78();
      v51 = sub_24E348238();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_24DE53000, v50, v51, "Unable to get item at index path", v52, 2u);
        MEMORY[0x253040EE0](v52, -1, -1);
      }

      v53 = v81;
      v54 = *(v80 + 8);
      v55 = v7;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void GameLayerAchievementsViewController.collectionView(_:didSelectItemAt:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0);
  OUTLINED_FUNCTION_0_14();
  v27 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_16_9();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = sub_24E343488();
  v28 = [v3 cellForItemAtIndexPath_];

  if (!v28)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v28))
  {
    v26 = v4;
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content))
    {
      v19 = v18;

      sub_24E344598();

      OUTLINED_FUNCTION_17_4(v10, 1, v11);
      if (v20)
      {

        sub_24DFA9298(v10, &unk_27F1E6C70);
      }

      else
      {
        (*(v13 + 32))(v16, v10, v11);
        ObjectType = swift_getObjectType();
        sub_24E3448B8();
        v24 = sub_24DFBCE7C();
        (*(v19 + 64))(v16, v1, v24, ObjectType, v19);

        (*(v27 + 8))(v1, v26);
        (*(v13 + 8))(v16, v11);
      }

LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void GameLayerAchievementsViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)()
{
  OUTLINED_FUNCTION_32();
  v28 = v0;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90);
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_9();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &ObjectType - v16;
  v18 = sub_24E343488();
  v19 = [v6 cellForItemAtIndexPath_];

  if (!v19)
  {
    goto LABEL_8;
  }

  v27 = v8;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v19))
  {

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  v26 = v20;
  if (*(v28 + OBJC_IVAR____TtC12GameCenterUI35GameLayerAchievementsViewController_content))
  {
    OUTLINED_FUNCTION_25_27();

    sub_24E344598();

    OUTLINED_FUNCTION_17_4(v2, 1, v12);
    if (v21)
    {

      sub_24DFA9298(v2, &unk_27F1E6C70);
    }

    else
    {
      (*(v14 + 32))(v17, v2, v12);
      ObjectType = swift_getObjectType();
      sub_24E3448C8();
      v22 = sub_24DFBCE7C();
      (*(v26 + 72))(v17, v1, v22, v4, ObjectType);

      v23 = OUTLINED_FUNCTION_17_5();
      v24(v23);
      (*(v14 + 8))(v17, v12);
    }

    goto LABEL_8;
  }

  __break(1u);
}

id _s12GameCenterUI0A31LayerAchievementsViewControllerC010collectionF0_48previewForDismissingContextMenuWithConfigurationSo17UITargetedPreviewCSgSo012UICollectionF0C_So09UIContextmO0CtF_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = [a2 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
    v12 = sub_24E343488();
    v13 = [a1 cellForItemAtIndexPath_];

    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor_];

      sub_24E2E7A10();
      v13 = sub_24E2E1614(v13, v14);
    }

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_24DFA9298(v6, &unk_27F1E6C80);
    return 0;
  }

  return v13;
}

Swift::Void __swiftcall GameLayerAchievementsViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{

  [(UIScrollView *)a1 bounds];
  sub_24E3476D8();
}

id GameLayerAchievementsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id GameLayerAchievementsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GameLayerAchievementsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E2E79A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E2E7A10()
{
  result = qword_27F1E6CE0;
  if (!qword_27F1E6CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E6CE0);
  }

  return result;
}

uint64_t sub_24E2E7A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2E7AA4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA190);

  return sub_24E2E57DC(a1, a2);
}

uint64_t sub_24E2E7BBC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v27 = a3(0);
  v28 = a4;
  v26[0] = a1;
  __swift_project_boxed_opaque_existential_1(v26, v27);

  v12 = (a5)(v11);
  sub_24DFF79C8(v12, v13, a2);
  v14 = [a2 navigationItem];
  v15 = a5();
  sub_24DFF79C8(v15, v16, v14);

  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v17 = [a2 navigationItem];
    [v17 setStyle_];

LABEL_5:
    v19 = [objc_allocWithZone(type metadata accessor for NavigationDoubleHeaderView()) initWithFrame_];
    v20 = a5();
    NavigationDoubleHeaderView.titleText.setter(v20, v21);
    v22 = a6();
    NavigationDoubleHeaderView.subtitleText.setter(v22, v23);
    v24 = [a2 navigationItem];
    [v24 setTitleView_];

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  a6();
  if (v18)
  {

    goto LABEL_5;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t OUTLINED_FUNCTION_16_48()
{

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_27_17()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_28_20()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_29_17()
{

  return [v0 (v1 + 1016)];
}

double sub_24E2E7E3C(double a1, uint64_t a2, void *a3)
{
  v58 = a3;
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v56 = v5;
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v55 = v7 - v6;
  sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v51[1] = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51[0] = v51 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (v51 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (v51 - v18);
  sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v53 = v21;
  v54 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v52 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  v29 = v51 - v28;
  if (qword_27F1DDCD0 != -1)
  {
    OUTLINED_FUNCTION_0_182();
    swift_once();
  }

  v30 = a1 - (*&qword_27F20B6B8 + *&qword_27F20B6C8);
  type metadata accessor for ActivityFeedSharedView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();
  __dst[0] = v60[0];
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_3_127();
  sub_24E2EAB1C(v31, v32);
  sub_24E347158();
  v33 = sub_24E092E74(v30, v29, v58);
  v35 = v34;
  (*(v26 + 8))(v29, v24);
  v61 = sub_24E3442D8();
  v62 = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v60);
  sub_24E3442B8();
  v36 = MEMORY[0x277D85048];
  v37 = MEMORY[0x277D225F8];
  *(v19 + 3) = MEMORY[0x277D85048];
  *(v19 + 4) = v37;
  *v19 = v33;
  v38 = *(v9 + 104);
  OUTLINED_FUNCTION_9_69();
  v38();
  v16[3] = v36;
  v16[4] = v37;
  *v16 = v35;
  OUTLINED_FUNCTION_9_69();
  v38();
  OUTLINED_FUNCTION_9_69();
  v38();
  OUTLINED_FUNCTION_9_69();
  v38();
  v39 = v52;
  sub_24E3449A8();
  v40 = v54;
  v61 = v54;
  v62 = MEMORY[0x277D22998];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  v42 = v53;
  (*(v53 + 16))(boxed_opaque_existential_1, v39, v40);
  v43 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v64 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v65 = MEMORY[0x277D22A38];
  v63 = v43;
  memcpy(__dst, &qword_27F20B6B0, 0x70uLL);
  memcpy(v66, &qword_27F20B6B0, sizeof(v66));
  sub_24E2EAA20(__dst, &v59);
  v44 = [v58 traitCollection];
  v45 = v55;
  sub_24E09DED4(v55);
  v46 = v57;
  sub_24E344A18();
  v48 = v47;

  (*(v56 + 8))(v45, v46);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v49 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v49, qword_27F20BF00);
  sub_24E2EAA58(v60);
  (*(v42 + 8))(v39, v40);
  return v48;
}

uint64_t sub_24E2E8414@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_sharedView);
  a1[3] = type metadata accessor for ActivityFeedSharedView();
  a1[4] = sub_24E2EAB1C(&qword_27F1E27A8, type metadata accessor for ActivityFeedSharedView);
  *a1 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementCardContainer);
  v5 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v6 = MEMORY[0x277D22A38];
  a1[8] = v5;
  a1[9] = v6;
  a1[5] = v4;
  v7 = qword_27F1DDCD0;
  v8 = v3;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27F20B6B0, sizeof(__dst));
  memcpy(a1 + 10, &qword_27F20B6B0, 0x70uLL);
  return sub_24E2EAA20(__dst, &v11);
}

void sub_24E2E8540()
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v1 = sub_24E2D4E50();
  v5 = 15.0;
  if (ShouldUsePadUI)
  {
    v5 = 25.0;
  }

  qword_27F20B6B0 = *&v1;
  qword_27F20B6B8 = v2;
  if (ShouldUsePadUI)
  {
    v6 = 180.0;
  }

  else
  {
    v6 = 150.0;
  }

  if (ShouldUsePadUI)
  {
    v7 = 290.0;
  }

  else
  {
    v7 = 245.0;
  }

  v8 = 60.0;
  if (ShouldUsePadUI)
  {
    v8 = 87.0;
    v9 = 74.0;
  }

  else
  {
    v9 = 55.0;
  }

  v10 = 20.0;
  if (ShouldUsePadUI)
  {
    v10 = 28.0;
  }

  v11 = &unk_2861106D0;
  if (ShouldUsePadUI)
  {
    v11 = &unk_286110670;
  }

  v12 = &unk_286110700;
  qword_27F20B6C0 = v3;
  qword_27F20B6C8 = v4;
  qword_27F20B6D0 = *&v5;
  qword_27F20B6D8 = *&v6;
  qword_27F20B6E0 = *&v7;
  unk_27F20B6E8 = *&v8;
  *&xmmword_27F20B6F0 = v9;
  *(&xmmword_27F20B6F0 + 1) = v10;
  if (ShouldUsePadUI)
  {
    v12 = &unk_2861106A0;
  }

  xmmword_27F20B700 = xmmword_24E38CC80;
  qword_27F20B710 = v11;
  qword_27F20B718 = v12;
}

uint64_t sub_24E2E8628(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &unk_27F1EA000;
  v12 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = &unk_27F1EA000;
  v14 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = &unk_27F1EA000;
  v16 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementCardContainer;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v17 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementConfettiView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_didHideOutOfBoundsCard] = 0;
  v18 = &v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_gameControllerSelectButtonDestination];
  *v18 = 0;
  *(v18 + 1) = 0;
  if (qword_27F1DE118 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_10_3();
  }

  v19 = type metadata accessor for PlayerCardTheme();
  if (*__swift_project_value_buffer(v19, qword_27F20BF00))
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24E38CC90;
  v69 = v20;
  if (qword_27F1DDB60 != -1)
  {
    swift_once();
  }

  sub_24DF89DB4(&xmmword_27F1E9198, &v67);
  v22 = type metadata accessor for AchievementCard();
  v23 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_2_124();
  *(v21 + 32) = v24;
  OUTLINED_FUNCTION_7_78(v24, v25, v26, v27);
  v28 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_2_124();
  *(v21 + 40) = v29;
  OUTLINED_FUNCTION_7_78(v29, v30, v31, v32);
  v33 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_2_124();
  *(v21 + 48) = v34;
  OUTLINED_FUNCTION_7_78(v34, v35, v36, v37);
  v38 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_2_124();
  *(v21 + 56) = v39;
  OUTLINED_FUNCTION_7_78(v39, v40, v41, v42);
  v43 = objc_allocWithZone(v22);
  OUTLINED_FUNCTION_2_124();
  *(v21 + 64) = v44;
  *&v5[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5E0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24E37B2E0;
  *(v45 + 32) = 0;
  if (qword_27F1DDCD0 != -1)
  {
    OUTLINED_FUNCTION_0_182();
    swift_once();
  }

  v46 = xmmword_27F20B6F0;
  v47 = -*&xmmword_27F20B6F0;
  *(v45 + 40) = xmmword_27F20B6F0;
  *(v45 + 48) = v47;
  *(v45 + 56) = v46;
  *(v45 + 64) = v47;
  *&v5[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackedCardMaskOffsetsX] = v45;
  v66.receiver = v5;
  v66.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4, v65);
  a4 = *MEMORY[0x277D768C8];
  a3 = *(MEMORY[0x277D768C8] + 8);
  a2 = *(MEMORY[0x277D768C8] + 16);
  a1 = *(MEMORY[0x277D768C8] + 24);
  v5 = v48;
  v49 = OUTLINED_FUNCTION_1_16();
  [v50 v51];
  v52 = v11[283];
  v53 = *&v5[v52];
  sub_24E2D4EB0(v53);

  [v5 addSubview_];
  [v5 addSubview_];
  v54 = v15[285];
  [*&v5[v54] setUserInteractionEnabled_];
  [*&v5[v54] setClipsToBounds_];
  [v5 addSubview_];
  v11 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards;
  result = sub_24DFD8654();
  v13 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v56 = 0;
    ObjectType = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementConfettiView;
    v65 = "AchievementConfetti";
    while (1)
    {
      if (v13 <= 0)
      {
        if ((v13 != 0) | v56 & 1)
        {

          return v5;
        }

        [*(ObjectType + v5) setContentMode_];
        v58 = *(ObjectType + v5);
        sub_24DF88A8C(0, &qword_280BE0110);
        v15 = v58;
        v59 = sub_24E011930(0xD000000000000013, 0x800000024E3B2090);
        [v15 setImage_];

        sub_24DFD8050(0xD000000000000030, v65 | 0x8000000000000000, *(ObjectType + v5));
        [*&v5[v54] addSubview_];
        v57 = 0;
        v56 = 1;
      }

      else
      {
        v57 = v13 - 1;
      }

      v60 = *(v11 + v5);
      if ((v60 & 0xC000000000000001) != 0)
      {

        v61 = MEMORY[0x25303F560](v13, v60);
      }

      else
      {
        if (v13 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v61 = *(v60 + 8 * v13 + 32);
      }

      v67 = v13;
      v62 = v61;
      v63 = sub_24E348BA8();
      v15 = v64;
      v67 = 0xD00000000000002CLL;
      v68 = 0x800000024E3B20F0;
      MEMORY[0x25303E950](v63);

      sub_24DFD8050(v67, v68, v62);

      if (GKIsXRUIIdiomShouldUsePadUI())
      {
        if (qword_27F1DDB70 != -1)
        {
          swift_once();
        }

        sub_24DF89DB4(&xmmword_27F1E93B8, &v67);
        sub_24E275DE4(&v67);
      }

      [*&v5[v54] addSubview_];

      v13 = v57;
    }
  }

  __break(1u);
  return result;
}

void sub_24E2E8C1C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_sharedView;
  type metadata accessor for ActivityFeedSharedView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementCardContainer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementConfettiView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_didHideOutOfBoundsCard) = 0;
  v5 = (v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_gameControllerSelectButtonDestination);
  *v5 = 0;
  v5[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2E8D40()
{
  if ((v0[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_didHideOutOfBoundsCard] & 1) == 0)
  {
    v1 = v0;
    v19 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_didHideOutOfBoundsCard;
    if (qword_27F1DDCD0 != -1)
    {
LABEL_45:
      swift_once();
    }

    v2 = *&qword_27F20B6D8 + *&xmmword_27F20B6F0 + *&xmmword_27F20B6F0;
    v3 = *&qword_27F20B6D8 + *&xmmword_27F20B6F0 * 4.0;
    [v1 bounds];
    v4 = CGRectGetWidth(v21) - *&qword_27F20B6B8 - *&qword_27F20B6C8;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards);
    v20 = MEMORY[0x277D84F90];
    v6 = sub_24DFD8654();
    for (i = 0; v6 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25303F560](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ([v8 isHidden])
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }
    }

    v18 = v1;
    v10 = sub_24DFD8654();
    v11 = 0;
    v12 = v20 < 0 || (v20 & 0x4000000000000000) != 0;
    v1 = v3 < v4;
    while (v10 != v11)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25303F560](v11, v20);
      }

      else
      {
        if (v11 >= *(v20 + 16))
        {
          goto LABEL_44;
        }

        v13 = *(v20 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_43;
      }

      v15 = v3 < v4;
      if (v11 - 3 >= 2)
      {
        if (v11 == 1)
        {
          if (v12)
          {
            v16 = sub_24E348878();
          }

          else
          {
            v16 = *(v20 + 16);
          }

          v15 = v2 < v4 || v16 == 2;
        }

        else
        {
          v15 = v11 != 2 || v2 < v4;
        }
      }

      [v14 setHidden_];

      ++v11;
    }

    *(v18 + v19) = 1;
  }
}

void sub_24E2E8FF0()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  sub_24E2E8414(v9);
  v8 = [v0 traitCollection];
  sub_24E09DED4(v7);
  sub_24E344A18();

  (*(v3 + 8))(v7, v1);
  sub_24E2EAA58(v9);
  OUTLINED_FUNCTION_1_16();
}

void sub_24E2E916C()
{
  i = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v61.receiver = i;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, sel_layoutSubviews);
  sub_24E2E8414(v60);
  [i bounds];
  v10 = [i traitCollection];
  sub_24E09DED4(v9);
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();

  (*(v5 + 8))(v9, v3);
  sub_24E2EAA58(v60);
  if (qword_27F1DDCD0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    [*(i + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementCardContainer) frame];
    v11 = OUTLINED_FUNCTION_1_16();
    [v12 v13];
    v53 = i;
    v14 = *(i + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards);
    *&v60[0].a = MEMORY[0x277D84F90];
    v15 = sub_24DFD8654();
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v18 = v14 & 0xFFFFFFFFFFFFFF8;
    while (v15 != v16)
    {
      if (v17)
      {
        v19 = MEMORY[0x25303F560](v16, v14);
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_43;
        }

        v19 = *(v14 + 8 * v16 + 32);
      }

      i = v19;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_42;
      }

      if ([v19 isHidden])
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        v18 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      ++v16;
    }

    a = v60[0].a;
    v21 = *&qword_27F20B6D8;
    v22 = *&qword_27F20B6E0;
    [v53 bounds];
    v23 = (CGRectGetWidth(v62) - *&qword_27F20B6B8 - *&qword_27F20B6C8) * 0.5;
    if (sub_24DFD8654() == 2)
    {
      break;
    }

    v54[0] = v23 + v21 * -0.5;
    v54[1] = 5.0;
    __asm { FMOV            V2.2D, #5.0 }

    v33 = vaddq_f64(xmmword_27F20B6F0, _Q2);
    _Q2.f64[0] = v54[0];
    *&v34 = *&vsubq_f64(_Q2, xmmword_27F20B6F0);
    *(&v34 + 1) = *&v33.f64[1];
    v55 = v34;
    v56 = vaddq_f64(_Q2, xmmword_27F20B6F0);
    v35 = vaddq_f64(xmmword_27F20B6F0, xmmword_27F20B6F0);
    v57 = v54[0] - v35.f64[0];
    v36 = vaddq_f64(v35, _Q2);
    v58 = v36.f64[1];
    v59 = v36;
    v37 = sub_24DFD8654();
    _VF = __OFSUB__(v37, 1);
    v38 = v37 - 1;
    if (_VF)
    {
      __break(1u);
      return;
    }

    v39 = 0;
    i = &selRef_setPosition_;
    while (v38 <= 0)
    {
      if ((v38 != 0) | v39 & 1)
      {
        goto LABEL_35;
      }

      v40 = 0;
      v39 = 1;
LABEL_29:
      v41 = &v54[2 * v38];
      v42 = *v41;
      v43 = v41[1];
      if (v17)
      {
        v44 = MEMORY[0x25303F560]();
      }

      else
      {
        if (v38 >= *(v18 + 16))
        {
          goto LABEL_41;
        }

        v44 = *(v14 + 32 + 8 * v38);
      }

      v45 = v44;
      [v44 setFrame_];
      CGAffineTransformMakeRotation(v60, 0.0);
      [v45 setTransform_];

      v38 = v40;
    }

    if (v38 <= 4)
    {
      v40 = v38 - 1;
      goto LABEL_29;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_0_182();
    swift_once();
  }

  v24 = -sub_24DFD8654();
  for (i = 4; v24 + i != 4; ++i)
  {
    v25 = i - 4;
    if ((*&a & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25303F560](i - 4, *&a);
    }

    else
    {
      if (v25 >= *(*&a + 16))
      {
        goto LABEL_45;
      }

      v26 = *(*&a + 8 * i);
    }

    v27 = v26;
    [v26 setBounds_];
    [v27 setCenter_];
    if (v25 >= *(qword_27F20B710 + 16))
    {
      goto LABEL_44;
    }

    CGAffineTransformMakeRotation(v60, *(qword_27F20B710 + 8 * i));
    [v27 setTransform_];
  }

LABEL_35:
  v46 = *&v53[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView];
  [v53 bounds];
  v48 = v47;
  v50 = v49;
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v52 = 16.0;
  if (ShouldUsePadUI)
  {
    v52 = 0.0;
  }

  [v46 setFrame_];
  sub_24E2D4EB0(v46);
  [v53 bounds];
  if (CGRectGetWidth(v63) != 0.0)
  {
    sub_24E2E8D40();
  }
}

void sub_24E2E9794(void *a1, __int128 *a2, double a3)
{
  v16 = a2[1];
  v17 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  if (qword_27F1DDCD0 != -1)
  {
    swift_once();
  }

  v8 = *&qword_27F20B6D8;
  v9 = *&qword_27F20B6E0;
  v10 = v7;
  [v10 setFrame_];
  v11 = objc_opt_self();
  v12 = [v11 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v8, v9, a3}];
  v18[0] = v17;
  v18[1] = v16;
  v19 = v5;
  v20 = v6;
  [v12 applyTransform_];
  v13 = [v11 bezierPathWithRect_];
  [v13 appendPath_];
  [v10 setFillRule_];
  v14 = [v13 CGPath];
  [v10 setPath_];

  v15 = [a1 layer];
  [v15 setMask_];
}

void sub_24E2E9998(void *a1, CGFloat a2)
{
  if (qword_27F1DDCD0 != -1)
  {
    swift_once();
  }

  v4 = *&qword_27F20B6D8;
  v5 = *&qword_27F20B6E0;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  *&v18.size.width = qword_27F20B6D8;
  *&v18.size.height = qword_27F20B6E0;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v4;
  v19.size.height = v5;
  CGRectGetMidY(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v4;
  v20.size.height = v5;
  CGRectGetMidX(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v4;
  v21.size.height = v5;
  MidY = CGRectGetMidY(v21);
  v17.a = 1.0;
  v17.b = 0.0;
  v17.c = 0.0;
  v17.d = 1.0;
  v17.tx = 0.0;
  v17.ty = 0.0;
  CGAffineTransformTranslate(&v16, &v17, MidX, MidY);
  v17 = v16;
  CGAffineTransformRotate(&v16, &v17, a2);
  tx = v16.tx;
  ty = v16.ty;
  v14 = *&v16.c;
  v15 = *&v16.a;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v4;
  v22.size.height = v5;
  v10 = CGRectGetMidX(v22);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v4;
  v23.size.height = v5;
  CGRectGetMidY(v23);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v4;
  v24.size.height = v5;
  CGRectGetMidX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v4;
  v25.size.height = v5;
  v11 = CGRectGetMidY(v25);
  *&v16.a = v15;
  *&v16.c = v14;
  v16.tx = tx;
  v16.ty = ty;
  CGAffineTransformTranslate(&v17, &v16, -v10, -v11);
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v13 = 19.0;
  if (ShouldUsePadUI)
  {
    v13 = 16.0;
  }

  sub_24E2E9794(a1, &v17, v13);
}

void sub_24E2E9B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v45 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  v56 = a1;
  sub_24E347128();

  a = v59.a;
  v50 = v4;
  v12 = *&v4[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards];
  v13 = sub_24DFD8654(v12);
  v14 = 0;
  v49 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackedCardMaskOffsetsX;
  v52 = v12;
  v53 = v12 & 0xC000000000000001;
  v51 = v12 & 0xFFFFFFFFFFFFFF8;
  v55 = -v13;
  v15 = 4;
  v16 = &unk_24E38CD10;
  while (1)
  {
    if (v55 + v15 == 4)
    {

      v34 = *&v50[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementConfettiView];
      swift_getKeyPath();
      sub_24E347128();

      [v34 setHidden_];
      sub_24E347148();
      v57 = v58.a;
      type metadata accessor for ActivityFeedBaseData();
      OUTLINED_FUNCTION_3_127();
      sub_24E2EAB1C(v35, v36);
      v37 = v44;
      sub_24E347158();
      sub_24E092F2C(v37, v46, v48);
      (*(v45 + 8))(v37, v47);
      swift_getKeyPath();
      OUTLINED_FUNCTION_5_109();
      sub_24E347128();

      if (*(*&v58.a + 16))
      {
        v38 = *(*&v58.a + 32);
        v39 = *(*&v58.a + 40);
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      v40 = v50;
      v41 = &v50[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_gameControllerSelectButtonDestination];
      *v41 = v38;
      *(v41 + 1) = v39;

      v42 = *&v40[OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView];
      swift_getKeyPath();
      sub_24E347128();

      *(v42 + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = LOBYTE(v58.a);
      sub_24DFEC5B4();
      sub_24E347148();
      *(*&v58.a + 97) = 0;

      [v40 setNeedsLayout];
      return;
    }

    v17 = v15 - 4;
    if (v53)
    {
      v18 = MEMORY[0x25303F560](v15 - 4, v52);
    }

    else
    {
      if (v17 >= *(v51 + 16))
      {
        goto LABEL_40;
      }

      v18 = *(v52 + 8 * v15);
    }

    v19 = v18;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v20 = v16;
    v21 = *(*&a + 16);
    switch(v15)
    {
      case 5:
        if (v21 <= 1)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      case 6:
        if (v21 > 2)
        {
          goto LABEL_14;
        }

        goto LABEL_12;
      case 7:
      case 8:
        if (v21 <= v17 || v21 <= 4)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      default:
        if (v21 <= v17)
        {
LABEL_12:
          [v18 setHidden_];
          v23 = type metadata accessor for Achievement();
          __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
          AchievementCard.model.setter(v11);
        }

        else
        {
LABEL_14:
          [v18 setHidden_];
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_109();
          sub_24E347128();

          v24 = v58.a;
          if (v17 >= *(*&v58.a + 16))
          {
            goto LABEL_41;
          }

          v25 = type metadata accessor for Achievement();
          sub_24E2EAAB8(*&v24 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * v17, v11);

          __swift_storeEnumTagSinglePayload(v11, 0, 1, v25);
          AchievementCard.model.setter(v11);
          if (GKIsXRUIIdiomShouldUsePadUI())
          {
            if (v21 == 2)
            {
              if (qword_27F1DDCD0 != -1)
              {
                OUTLINED_FUNCTION_0_182();
                swift_once();
              }

              if (v17 >= *(qword_27F20B718 + 16))
              {
                goto LABEL_43;
              }

              v26 = *(qword_27F20B718 + 8 * v15);
              if (v26 != 0.0)
              {
                sub_24E2E9998(v19, v26);
              }
            }

            else
            {
              v27 = *&v50[v49];
              if (v17 >= *(v27 + 16))
              {
                goto LABEL_44;
              }

              v28 = *(v27 + 8 * v15);
              if (v28 != 0.0)
              {
                v58.b = 0.0;
                v58.c = 0.0;
                v58.a = 1.0;
                v58.d = 1.0;
                v58.tx = 0.0;
                v58.ty = 0.0;
                CGAffineTransformTranslate(&v59, &v58, v28, -2.0);
                sub_24E2E9794(v19, &v59, 0.0);
              }
            }
          }
        }

        v16 = v20;
        swift_getKeyPath();
        OUTLINED_FUNCTION_5_109();
        sub_24E347128();

        v29 = *(*&v58.a + 16);

        if (v17 >= v29)
        {
          AchievementCard.tapHandler.setter(0, 0);
        }

        else
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_109();
          sub_24E347128();

          if (v17 >= *(*&v58.a + 16))
          {
            goto LABEL_42;
          }

          v31 = *(*&v58.a + v14 + 32);
          v30 = *(*&v58.a + v14 + 40);

          v32 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v33 = swift_allocObject();
          v33[2] = v32;
          v33[3] = v31;
          v16 = v20;
          v33[4] = v30;

          AchievementCard.tapHandler.setter(sub_24E2EAAAC, v33);
        }

        ++v15;
        v14 += 16;
        break;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_24E2EA2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_sharedView);

    sub_24E00E084(a2, a3, 1);
  }
}

uint64_t sub_24E2EA344()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_gameControllerSelectButtonDestination + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_gameControllerSelectButtonDestination);

    sub_24E00E084(v2, v1, 1);
  }

  return result;
}

uint64_t sub_24E2EA3C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0);
  OUTLINED_FUNCTION_24_0();
  *&v2 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v4 = &v17 - v3;
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_achievementConfettiView) setHidden_];
  v18 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_stackAchievementCards);
  result = sub_24DFD8654();
  if (!result)
  {
LABEL_8:
    v16 = v18;
    *(v18 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_didHideOutOfBoundsCard) = 0;
    sub_24E0931E8();
    *(*(v16 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
    return sub_24DFEC5B4();
  }

  v7 = result;
  if (result >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277CD9DE8];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      ++v8;
      v12 = type metadata accessor for Achievement();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
      AchievementCard.model.setter(v4);
      v13 = v11;
      [v13 setHidden_];
      v14 = [v13 layer];
      [v14 setMask_];

      v15 = [v13 layer];
      memcpy(__dst, v9, sizeof(__dst));
      [v15 setTransform_];
    }

    while (v7 != v8);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2EA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E27A0);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C8);
  sub_24E347148();
  v21 = v22;
  type metadata accessor for ActivityFeedBaseData();
  OUTLINED_FUNCTION_3_127();
  sub_24E2EAB1C(v16, v17);
  sub_24E347158();
  sub_24E093274(v15, a2, a3, a4, a5, v20);
  return (*(v12 + 8))(v15, v10);
}

id sub_24E2EA750(uint64_t a1, uint64_t a2)
{
  sub_24E0934B0(a1, a2);
  *(*(v2 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedAchievementView_contentBackgroundView) + OBJC_IVAR____TtC12GameCenterUI14BackgroundView_isHighlighted) = 0;
  return sub_24DFEC5B4();
}

uint64_t sub_24E2EAAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2EAB1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E2EAB64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_24E2EABA4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_124()
{

  AchievementCard.init(frame:metrics:theme:)();
}

uint64_t OUTLINED_FUNCTION_7_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v6 - 121) = v5;

  return sub_24DF89DB4(v4, va);
}

uint64_t sub_24E2EACF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = *(a1 + 48);
  v16 = *(v3 + OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_titleLabel);
  v17 = sub_24E347CB8();
  [v16 setText_];

  type metadata accessor for TemplateKey(0);
  sub_24E2EC20C();
  sub_24E347C28();
  v18 = sub_24E347BE8();

  v19 = [v15 makeURLWithSubstitutions_];

  if (v19)
  {
    sub_24E343238();

    v20 = sub_24E343288();
    v21 = 0;
  }

  else
  {
    v20 = sub_24E343288();
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v21, 1, v20);
  sub_24DF90BE4(v14);
  [v15 width];
  [v15 height];
  sub_24E344138();
  if (qword_27F1DDCE0 != -1)
  {
    OUTLINED_FUNCTION_3_128();
  }

  sub_24E344118();
  type metadata accessor for Artwork();
  v22 = [v15 URLTemplate];
  v23 = sub_24E347CF8();
  v25 = v24;

  *&v41 = v23;
  *(&v41 + 1) = v25;
  v39 = 25186;
  v40 = 0xE200000000000000;
  v26 = OUTLINED_FUNCTION_1_16();
  Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(v27, 0, v28, v29, v26, v30);
  v41 = xmmword_24E377130;
  v31 = OUTLINED_FUNCTION_1_16();
  v34 = sub_24E0ABE8C(v32, 0, v31, v33);

  v35 = *(v3 + OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_iconView);
  sub_24E220DD8([v15 decoration], &v41);
  sub_24E0D8DC8(&v41);
  if (*(a2 + qword_27F1EB198))
  {

    sub_24E0624A4(v34, 2, 1, v35);

    return (*(v7 + 8))(v11, v38);
  }

  else
  {
    (*(v7 + 8))(v11, v38);
  }
}

double sub_24E2EB0B4()
{
  v0 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  if (qword_27F1DDCE0 != -1)
  {
    OUTLINED_FUNCTION_3_128();
  }

  v7 = *&qword_27F1EA958;
  if (qword_27F1DDCF8 != -1)
  {
    swift_once();
  }

  v8 = *&qword_27F1EA998;
  if (qword_27F1DDD00 != -1)
  {
    OUTLINED_FUNCTION_1_147();
  }

  v9 = *&qword_27F1EA9A0;
  if (qword_27F1DDCF0 != -1)
  {
    swift_once();
  }

  v10 = sub_24E3444F8();
  __swift_project_value_buffer(v10, qword_27F1EA980);
  sub_24E343F98();
  sub_24E344198();
  (*(v2 + 8))(v6, v0);
  return v7 + v8 + v8 + v9 + v9;
}

uint64_t sub_24E2EB2A0()
{
  if (qword_27F1DDCE0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F1EA958;
  v1 = qword_27F1EA960;
  if (qword_27F1DDCF8 != -1)
  {
    swift_once();
  }

  v2 = qword_27F1EA998;
  if (qword_27F1DDCF0 != -1)
  {
    swift_once();
  }

  v3 = sub_24E3444F8();
  v4 = __swift_project_value_buffer(v3, qword_27F1EA980);
  qword_27F1EA948 = v3;
  unk_27F1EA950 = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(qword_27F1EA930);
  result = (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  qword_27F1EA918 = v0;
  unk_27F1EA920 = v1;
  qword_27F1EA928 = v2;
  return result;
}

uint64_t sub_24E2EB3E8()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 62.0;
  if (result)
  {
    v1 = 52.0;
  }

  qword_27F1EA958 = *&v1;
  qword_27F1EA960 = *&v1;
  return result;
}

uint64_t sub_24E2EB424()
{
  v0 = sub_24E344158();
  __swift_allocate_value_buffer(v0, qword_27F1EA968);
  v1 = __swift_project_value_buffer(v0, qword_27F1EA968);
  if (qword_27F1DE0C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_27F20BE40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24E2EB4EC()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1EA980);
  __swift_project_value_buffer(v4, qword_27F1EA980);
  if (qword_27F1DDCE8 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, qword_27F1EA968);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E2EB6C0()
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v1 = 8.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_27F1EA998 = *&v1;
  return result;
}

uint64_t sub_24E2EB6F0()
{
  result = GKIsXRUIIdiom();
  v1 = 0.0;
  v2 = 2.0;
  if (result)
  {
    v1 = 8.0;
  }

  else
  {
    v2 = 0.0;
  }

  qword_27F1EA9A0 = *&v2;
  qword_27F1EA9A8 = *&v1;
  return result;
}

char *sub_24E2EB72C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_iconView;
  type metadata accessor for ArtworkView();
  *&v4[v14] = sub_24E0D89D0();
  v15 = OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_titleLabel;
  if (qword_27F1DDCE8 != -1)
  {
    OUTLINED_FUNCTION_4_110();
    swift_once();
  }

  v16 = sub_24E344158();
  v17 = __swift_project_value_buffer(v16, qword_27F1EA968);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v16);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v15] = OUTLINED_FUNCTION_0_54(v13);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setClipsToBounds_];
  v20 = objc_opt_self();
  v21 = [v20 clearColor];
  [v19 setBackgroundColor_];

  [v19 addSubview_];
  v22 = OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_titleLabel;
  [v19 addSubview_];
  [*&v19[v22] setTextAlignment_];
  v23 = *&v19[v22];
  v24 = [v20 labelColor];
  [v23 setTextColor_];

  return v19;
}

void sub_24E2EB9E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_iconView;
  type metadata accessor for ArtworkView();
  *(v0 + v5) = sub_24E0D89D0();
  v6 = OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_titleLabel;
  if (qword_27F1DDCE8 != -1)
  {
    OUTLINED_FUNCTION_4_110();
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, qword_27F1EA968);
  (*(*(v7 - 8) + 16))(v4, v8, v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v9 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v6) = OUTLINED_FUNCTION_0_54(v4);
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E2EBB7C()
{
  v3 = v0;
  ObjectType = swift_getObjectType();
  v5 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  [v3 bounds];
  OUTLINED_FUNCTION_6_98();
  if (qword_27F1DDD00 != -1)
  {
    OUTLINED_FUNCTION_1_147();
  }

  v24.origin.x = OUTLINED_FUNCTION_1_16();
  v24.size.width = v1;
  v24.size.height = v2;
  CGRectInset(v24, v19, v20);
  OUTLINED_FUNCTION_6_98();
  sub_24E2EBD90(v22);
  sub_24E229A4C(v3);
  OUTLINED_FUNCTION_1_16();
  sub_24E344608();
  (*(v7 + 8))(v11, v5);
  sub_24E2EC7C8(v22);
  return (*(v14 + 8))(v18, v12);
}

id sub_24E2EBD90@<X0>(void *a1@<X8>)
{
  if (qword_27F1DDCD8 != -1)
  {
    swift_once();
  }

  sub_24E22A238(&qword_27F1EA918, a1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_iconView);
  v4 = type metadata accessor for ArtworkView();
  v5 = MEMORY[0x277D22A58];
  a1[11] = v4;
  a1[12] = v5;
  a1[8] = v3;
  v10 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17TitledAppIconView_titleLabel);
  v6 = type metadata accessor for DynamicTypeLabel();
  v7 = MEMORY[0x277D22A68];
  a1[16] = v6;
  a1[17] = v7;
  a1[13] = v10;
  v8 = v3;

  return v10;
}

uint64_t sub_24E2EBFB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_27F1DDCD8 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344788();
  swift_allocObject();
  v5 = sub_24E344768();
  sub_24E0885EC();
  if (qword_27F1DDCE8 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F1EA968);
  swift_getObjectType();
  sub_24E065D2C(v7, a1);
  sub_24E344398();
  sub_24E3443A8();
  v8 = sub_24E344868();
  swift_allocObject();
  v9 = sub_24E344858();
  result = sub_24E22A238(&qword_27F1EA918, a2);
  v11 = MEMORY[0x277D228B0];
  a2[11] = v4;
  a2[12] = v11;
  a2[8] = v5;
  v12 = MEMORY[0x277D228F0];
  a2[16] = v8;
  a2[17] = v12;
  a2[13] = v9;
  return result;
}

unint64_t sub_24E2EC20C()
{
  result = qword_27F1DE7E0;
  if (!qword_27F1DE7E0)
  {
    type metadata accessor for TemplateKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DE7E0);
  }

  return result;
}

double sub_24E2EC264(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_24E3446A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E2EBD90(v16);
  [a2 bounds];
  [a2 layoutMargins];
  sub_24E229A4C(a1);
  sub_24E3445F8();
  (*(v5 + 8))(v7, v4);
  sub_24E2EC688(a1);
  v9 = v8;
  if (qword_27F1DDD00 != -1)
  {
    swift_once();
  }

  v10 = v9 + *&qword_27F1EA9A0 + *&qword_27F1EA9A0;
  [a2 layoutMargins];
  v12 = v11;
  v14 = v13;
  sub_24E2EC7C8(v16);
  return v10 + v12 + v14;
}

double sub_24E2EC488(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  sub_24E2EBD90(v19);
  [a2 bounds];
  OUTLINED_FUNCTION_6_98();
  [a2 layoutMargins];
  sub_24E229A4C(a1);
  sub_24E3445F8();
  OUTLINED_FUNCTION_6_98();
  (*(v6 + 8))(v10, v4);
  sub_24E2EC688(a1);
  v12 = v11;
  if (qword_27F1DDD00 != -1)
  {
    OUTLINED_FUNCTION_1_147();
  }

  v13 = v12 + *&qword_27F1EA9A0 + *&qword_27F1EA9A0;
  [a2 layoutMargins];
  v15 = v14;
  v17 = v16;
  sub_24E2EC7C8(v19);
  return v13 + v15 + v17;
}

uint64_t sub_24E2EC688(void *a1)
{
  v2 = sub_24E3446A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E2EBFB4(a1, v7);
  sub_24E229A4C(a1);
  sub_24E3445F8();
  (*(v3 + 8))(v5, v2);
  return sub_24E2EC7C8(v7);
}

uint64_t OUTLINED_FUNCTION_1_147()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_128()
{

  return swift_once();
}

uint64_t sub_24E2EC87C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      if (qword_27F1DDD10 != -1)
      {
        OUTLINED_FUNCTION_2_125();
      }

      v1 = &qword_27F20B738;
      goto LABEL_13;
    case 1:
      if (qword_27F1DDD18 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F20B748;
LABEL_13:
      v2 = *v1;

      return v2;
    case 0:
      if (qword_27F1DDD20 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F20B758;
      goto LABEL_13;
  }

  result = sub_24E348C58();
  __break(1u);
  return result;
}

uint64_t sub_24E2EC98C(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  OUTLINED_FUNCTION_29();
  v55 = v3;
  v51 = sub_24E3447C8();
  OUTLINED_FUNCTION_0_14();
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v8;
  v9 = sub_24E344828();
  OUTLINED_FUNCTION_0_14();
  v54 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  sub_24E344728();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = sub_24E344748();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  if (*(v2 + 96) == 1)
  {
    v65 = &unk_28612ADE8;
    v66 = sub_24E2EDF10();
    OUTLINED_FUNCTION_40_5();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_6_99(v23);
    __swift_project_boxed_opaque_existential_1((v2 + 104), *(v2 + 128));
    sub_24E3440B8();
    sub_24DF89628(v2 + 16, v60);
    sub_24DF89628(v2 + 184, v58);
    sub_24DF89628(v2 + 56, v57);
    v24 = *(v13 + 104);
    OUTLINED_FUNCTION_14_49();
    v24();
    OUTLINED_FUNCTION_14_49();
    v24();
    OUTLINED_FUNCTION_5_110();
    OUTLINED_FUNCTION_28();
    sub_24E344718();
    return (*(v18 + 8))(v22, v16);
  }

  else
  {
    v48 = v16;
    v49 = v9;
    v67.origin.x = OUTLINED_FUNCTION_28();
    v26.n128_f64[0] = CGRectGetWidth(v67);
    v30 = CGSizeMake(v27, v28, v26, v29);
    v31 = sub_24E2ED6A0(v30);
    if ((GKIsXRUIIdiomShouldUsePadUI() & 1) != 0 || v31 >= v30 * 0.5)
    {
      v65 = &unk_28612ADE8;
      v66 = sub_24E2EDF10();
      OUTLINED_FUNCTION_40_5();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_6_99(v40);
      OUTLINED_FUNCTION_9_70();
      sub_24DF89628(v2 + 16, v60);
      v41 = *MEMORY[0x277D228C8];
      v42 = *(v50 + 104);
      v43 = v51;
      v42(v52, v41, v51);
      sub_24DF89628(v2 + 184, v58);
      sub_24DF89628(v2 + 56, v57);
      v42(v53, v41, v43);
      OUTLINED_FUNCTION_3_129();
      sub_24E344808();
      OUTLINED_FUNCTION_28();
      sub_24E3447E8();
      v44 = OUTLINED_FUNCTION_8_85();
      return v45(v44);
    }

    else
    {
      v65 = &unk_28612ADE8;
      v66 = sub_24E2EDF10();
      OUTLINED_FUNCTION_40_5();
      v32 = swift_allocObject();
      OUTLINED_FUNCTION_6_99(v32);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v47 = sub_24E3442F8();
      v60[3] = v47;
      v60[4] = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v60);
      sub_24E3442E8();
      sub_24DF89628(v2 + 184, v58);
      sub_24DF89628(v2 + 56, v57);
      v33 = *(v13 + 104);
      OUTLINED_FUNCTION_14_49();
      v33();
      OUTLINED_FUNCTION_14_49();
      v33();
      OUTLINED_FUNCTION_5_110();
      v34 = v48;
      v65 = v48;
      v66 = MEMORY[0x277D228A8];
      v35 = __swift_allocate_boxed_opaque_existential_1(&v64);
      (*(v18 + 16))(v35, v22, v34);
      OUTLINED_FUNCTION_9_70();
      sub_24DF89628(v2 + 16, v60);
      v36 = *(v50 + 104);
      v37 = v51;
      v36(v52, *MEMORY[0x277D228C0], v51);
      v59 = 0;
      memset(v58, 0, sizeof(v58));
      v57[3] = v47;
      v57[4] = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v57);
      sub_24E3442E8();
      v36(v53, *MEMORY[0x277D228C8], v37);
      OUTLINED_FUNCTION_3_129();
      sub_24E344808();
      OUTLINED_FUNCTION_28();
      sub_24E3447E8();
      v38 = OUTLINED_FUNCTION_8_85();
      v39(v38);
      return (*(v18 + 8))(v22, v34);
    }
  }
}

double sub_24E2ED024(double a1)
{
  v2 = v1;
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
  OUTLINED_FUNCTION_11_56();
  sub_24E3440E8();
  v13 = v12;
  if (*(v1 + 96) == 1)
  {
    sub_24DF89628(v1 + 144, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    OUTLINED_FUNCTION_11_56();
    sub_24E3440D8();
    sub_24E2EDEE0(v21);
    OUTLINED_FUNCTION_4_111((v1 + 16));
    OUTLINED_FUNCTION_4_111((v1 + 56));
  }

  else
  {
    OUTLINED_FUNCTION_11_56();
    v15 = sub_24E2ED6A0(v14);
    if ((GKIsXRUIIdiomShouldUsePadUI() & 1) != 0 || v15 >= a1 * 0.5)
    {
      sub_24DF89628(v1 + 144, v21);
      __swift_project_boxed_opaque_existential_1(v21, v22);
      OUTLINED_FUNCTION_15_46();
      sub_24E3440D8();
      v19 = v18;
      sub_24E2EDEE0(v21);
      sub_24E32DAB8(MEMORY[0x277D84F90], v11, v19, v13);
    }

    else
    {
      v16 = *(v1 + 40);
      v17 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_24E2548A0(v16, v17);
      sub_24E344198();
      (*(v6 + 8))(v10, v4);
      sub_24DF89628((v2 + 18), v21);
      __swift_project_boxed_opaque_existential_1(v21, v22);
      OUTLINED_FUNCTION_15_46();
      sub_24E3440D8();
      sub_24E2EDEE0(v21);
      OUTLINED_FUNCTION_4_111(v2 + 7);
    }
  }

  return a1;
}

double sub_24E2ED2E4(void *a1, double a2)
{
  if (qword_27F1DD5E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344788();
  swift_allocObject();
  v18 = sub_24E344768();
  if (qword_27F1DDD10 != -1)
  {
    OUTLINED_FUNCTION_2_125();
  }

  sub_24E0885EC();
  v5 = qword_27F1DDD08;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, qword_27F20B720);
  v8 = [a1 traitCollection];
  MEMORY[0x25303F0C0](v7, v8);

  sub_24E344398();
  sub_24E3443A8();
  v9 = sub_24E344868();
  swift_allocObject();
  v10 = sub_24E344858();
  if (qword_27F1DDD30 != -1)
  {
    swift_once();
  }

  v11 = qword_27F1DDD28;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27F20B768);
  v13 = [a1 traitCollection];
  MEMORY[0x25303F0C0](v12, v13);

  sub_24E344398();
  sub_24E3443A8();
  swift_allocObject();
  v19[0] = sub_24E344858();
  sub_24E3440D8();
  swift_allocObject();
  v14 = sub_24E344768();
  sub_24DFA0BB4(&qword_27F20A8E8, v19);
  v19[16] = v4;
  v19[13] = v18;
  v19[21] = v9;
  v19[22] = MEMORY[0x277D228F0];
  v19[17] = MEMORY[0x277D228B0];
  v19[18] = v10;
  v19[26] = v4;
  v19[27] = MEMORY[0x277D228B0];
  v19[23] = v14;
  sub_24E2ED024(a2 + -16.0 + -16.0);
  v16 = v15;

  sub_24DFA0C10(v19);
  return v16 + 14.0 + 14.0;
}

double sub_24E2ED6A0(double a1)
{
  v2 = v1;
  v4 = sub_24E348BC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 - *v1;
  v9 = v1[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  sub_24E2548A0(v9, v10);
  sub_24E344198();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v14 = v8 - v12;
  v15 = v2[10];
  v16 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v15);
  sub_24E2548A0(v15, v16);
  sub_24E344198();
  v18 = v17;
  v13(v7, v4);
  __swift_project_boxed_opaque_existential_1(v2 + 23, v2[26]);
  sub_24E3440E8();
  return v14 - v18 - v19;
}

uint64_t sub_24E2ED8D4()
{
  OUTLINED_FUNCTION_29();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_24E3440D8();
  v3.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMinX(v3);
  v4.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMidY(v4);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_28();
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_28();

  return sub_24E343FD8();
}

unint64_t GKAddFriendsLockupView.FriendState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E2EDA20()
{
  result = qword_27F1EA9C0;
  if (!qword_27F1EA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA9C0);
  }

  return result;
}

unint64_t sub_24E2EDA74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GKAddFriendsLockupView.FriendState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24E2EDAB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E2EDAF4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E2EDB80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_24E2EDBC0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_24E2EDC54()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20B738 = v3;
  unk_27F20B740 = v5;
}

void sub_24E2EDCEC()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20B748 = v3;
  unk_27F20B750 = v5;
}

void sub_24E2EDD84()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20B758 = v3;
  unk_27F20B760 = v5;
}

void sub_24E2EDE48()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20B780 = v3;
  *algn_27F20B788 = v5;
}

unint64_t sub_24E2EDF10()
{
  result = qword_27F1EA9C8;
  if (!qword_27F1EA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA9C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_125()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_111(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E344168();
}

uint64_t OUTLINED_FUNCTION_5_110()
{

  return sub_24E344738();
}

uint64_t OUTLINED_FUNCTION_6_99(uint64_t a1)
{
  *(v2 - 176) = a1;

  return sub_24DF89628(v1 + 144, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_9_70()
{
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));

  return sub_24E3440B8();
}

uint64_t sub_24E2EE0CC()
{
  result = [objc_opt_self() shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = result;
  v2 = [result isProfilePrivacyModificationRestricted];

  if (v2)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_4_112();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  v4 = [result isNearbyMultiplayerRestricted];

  if (v4)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_4_112();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = [result isFriendsSharingRestricted];

  if (v6)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_4_112();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = [result isAccountModificationRestricted];

  if (v8)
  {
    return 1;
  }

  result = OUTLINED_FUNCTION_4_112();
  if (result)
  {
    v10 = result;
    v9 = [result isGameCenterDisabled];

    return v9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *sub_24E2EE200(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_24E347458();
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = sub_24E347478();
  v9 = OUTLINED_FUNCTION_4_5(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_126();
  v15 = sub_24E3433A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  memcpy(v71, __src, sizeof(v71));
  v22 = 0;
  if (sub_24DF8BF80(v71) != 1)
  {
    v66 = __src;
    v23 = v71[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_24E367D20;
    v65 = v7;
    memcpy(v70, __dst, sizeof(v70));
    sub_24DF8BF98(v70, v69);
    v24 = sub_24E347CB8();
    v63 = v12;
    v25 = v24;
    v26 = GKGameCenterUIFrameworkBundle();
    v27 = GKGetLocalizedStringFromTableInBundle();
    v64 = v1;
    v28 = v27;

    v29 = sub_24E347CF8();
    v61 = v30;
    v62 = v29;

    memset(v69, 0, 64);
    v69[64] = -1;
    v31 = [v23 playerID];
    v32 = sub_24E347CF8();
    v58 = v33;
    v59 = v32;

    v57 = sub_24E347CF8();
    v35 = v34;
    v36 = v21;
    v37 = sub_24E347CF8();
    v38 = v16;
    v40 = v39;
    v68[3] = type metadata accessor for PrivacyAndSettingsAction();
    v68[4] = sub_24E2EEBA8(&qword_27F1E3238, type metadata accessor for PrivacyAndSettingsAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
    v42 = v35;
    v22 = v60;
    ActionMetrics.init(domain:eventType:)(v57, v42, v37, v40);
    v43 = v58;
    *boxed_opaque_existential_1 = v59;
    boxed_opaque_existential_1[1] = v43;
    sub_24E343398();
    (*(v38 + 16))(v18, v36, v15);
    sub_24E2EEBA8(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v38 + 8))(v36, v15);
    v44 = type metadata accessor for DetailData();
    v22[7] = v44;
    v22[8] = sub_24E2EEBA8(&qword_27F1DEE80, type metadata accessor for DetailData);
    v45 = __swift_allocate_boxed_opaque_existential_1(v22 + 4);
    *(v45 + 25) = 0u;
    v45[27] = 0;
    *(v45 + 23) = 0u;
    v46 = *(v44 + 56);
    v47 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v45 + v46, 1, 1, v47);
    v48 = v45 + *(v44 + 60);
    sub_24DF8BD34(v67, v45);
    *(v45 + 40) = 1;
    v50 = v61;
    v49 = v62;
    v45[6] = v62;
    v45[7] = v50;
    v45[9] = 0;
    v45[10] = 0;
    v45[8] = 0;
    sub_24DF8BD90(v69, (v45 + 11), &qword_27F1DEE88);
    v45[20] = 0;
    v45[21] = 0;
    *(v45 + 88) = 256;
    *v48 = 0;
    v48[8] = 0;

    sub_24DF8BDF0(v68, (v45 + 23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24E369E30;
    strcpy((v51 + 32), "impressionType");
    *(v51 + 47) = -18;
    v52 = MEMORY[0x277D837D0];
    *(v51 + 48) = 0x74656C63696863;
    *(v51 + 56) = 0xE700000000000000;
    *(v51 + 72) = v52;
    *(v51 + 80) = 0x6973736572706D69;
    v53 = MEMORY[0x277D83B88];
    *(v51 + 88) = 0xEF7865646E496E6FLL;
    *(v51 + 96) = 0;
    *(v51 + 120) = v53;
    *(v51 + 128) = 0x657079546469;
    *(v51 + 136) = 0xE600000000000000;
    *(v51 + 144) = 0x636974617473;
    *(v51 + 152) = 0xE600000000000000;
    *(v51 + 168) = v52;
    *(v51 + 176) = 1701667182;
    *(v51 + 216) = v52;
    *(v51 + 184) = 0xE400000000000000;
    *(v51 + 192) = v49;
    *(v51 + 200) = v50;

    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v54 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v54);
    v55 = v64;
    sub_24E347488();
    sub_24DF8BE60(v67);
    sub_24DF8BFF4(v69, &qword_27F1DEE88);
    sub_24DF8BFF4(v68, &qword_27F1DEE90);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v47);
    sub_24DF8BEB4(v55, v45 + v46);
    sub_24DF8BFF4(v66, &qword_27F1DEEA0);
  }

  return v22;
}

double sub_24E2EE8DC@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v4 = OUTLINED_FUNCTION_4_5(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_2_126();
  v6 = type metadata accessor for FooterData(v5);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = [objc_opt_self() linkWithBundleIdentifier_];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 flow];

    v14 = sub_24E028F3C(v13);
    v12 = v15;
  }

  else
  {
    v14 = 0;
  }

  v28 = v14;
  v29 = v12;
  v30 = &type metadata for PrivacyPolicyAction;
  v31 = sub_24DF9D364();
  v32 = 1;
  v16 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
  *v10 = v14;
  v10[1] = v12;
  sub_24DF8BBD0(&v28, (v10 + 3));
  sub_24DF8BD90(v1, v10 + *(v6 + 28), &qword_27F1DEE70);
  v17 = objc_opt_self();

  v18 = [v17 labelColor];
  sub_24DF8BFF4(v1, &qword_27F1DEE70);
  sub_24DF8BC2C(&v28);
  v10[2] = v18;
  v19 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  v20 = type metadata accessor for Shelf.Presentation(0);
  v21 = v20[5];
  sub_24E010BEC(v10, a1 + v21);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v6);
  v22 = a1 + v20[11];
  result = 0.0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  v24 = a1 + v20[12];
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = (a1 + v20[13]);
  v26 = (a1 + v20[14]);
  v27 = (a1 + v20[15]);
  *(a1 + v20[6]) = 1;
  *v25 = 0;
  v25[1] = 0;
  *v26 = 0;
  v26[1] = 0;
  *v27 = 0;
  v27[1] = 0;
  *(a1 + v20[7]) = 1;
  *(a1 + v20[8]) = 1;
  *(a1 + v20[9]) = 1;
  *(a1 + v20[10]) = 0;
  return result;
}

uint64_t sub_24E2EEBA8(unint64_t *a1, void (*a2)(uint64_t))
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

id OUTLINED_FUNCTION_4_112()
{

  return [v0 (v1 + 2605)];
}

id sub_24E2EEC1C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CEC2A0]);
  result = sub_24E25DD10(0xD000000000000028, 0x800000024E3B22B0);
  qword_27F20B790 = result;
  return result;
}

void sub_24E2EEC6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_24E347F08();

  v8 = a4;
  v6(v7, a3, a4);
}

id sub_24E2EED10(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_placeholder];
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;
  v11 = &v2[OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_onNicknameUpdated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA5D0);
  swift_allocObject();
  *&v2[v12] = sub_24E346F88();
  v13 = OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_onSuggestionsChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA5C0);
  swift_allocObject();
  *&v2[v13] = sub_24E346F88();
  *&v2[OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_objectGraph] = a1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NicknamePresenter();
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_24E2EEE60()
{
  sub_24DF88A8C(0, &qword_280BDFA90);
  v0 = sub_24E24F744();
  if (sub_24DFD8654(v0))
  {
    sub_24DFFA844(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x25303F560](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }

    v2 = v1;

    return v2;
  }

  else
  {

    v4 = [objc_opt_self() local];

    return v4;
  }
}

uint64_t sub_24E2EEF28()
{
  v0 = sub_24E2EEE60();
  v1 = [v0 displayNameWithOptions_];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_24E347CF8();

  return v2;
}

void sub_24E2EEFD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a2)
  {
    goto LABEL_12;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_12:
    v19 = sub_24E013444(5035);
    v21 = v20;
    v22 = (v3 + OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError);
    *v22 = v19;
    v22[1] = v20;

    v36 = v19;
    v37 = v21;
    sub_24E346F78();
LABEL_14:

    return;
  }

  if (!sub_24E2EEFA0(a1, a2))
  {
    v23 = sub_24E347CB8();
    v24 = GKGameCenterUIFrameworkBundle();
    v25 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24E36A270;
    v27 = sub_24DF88A8C(0, &qword_27F1E50D0);
    v28 = sub_24E3485F8();
    *(v26 + 56) = v27;
    v29 = sub_24E2EFB80();
    *(v26 + 64) = v29;
    *(v26 + 32) = v28;
    v30 = sub_24E3485F8();
    *(v26 + 96) = v27;
    *(v26 + 104) = v29;
    *(v26 + 72) = v30;
    v31 = sub_24E347D18();
    v33 = v32;

    v34 = (v4 + OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError);
    *v34 = v31;
    v34[1] = v33;

    v36 = v31;
    v37 = v33;
    sub_24E346F78();
    goto LABEL_14;
  }

  if (sub_24E2EEF28() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_24E348C08();

    if ((v11 & 1) == 0)
    {
      sub_24E346F78();
      v12 = objc_opt_self();
      v13 = sub_24E2EEE60();
      v14 = [v12 proxyForPlayer_];

      v15 = [v14 profileServicePrivate];
      v16 = sub_24E347CB8();
      OUTLINED_FUNCTION_21_2();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = sub_24E2EFBE8;
      v41 = v17;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_24E2EEC6C;
      v39 = &block_descriptor_14_1;
      v18 = _Block_copy(&v36);

      [v15 setPlayerNickname:v16 suggestionsCount:a3 handler:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();

      return;
    }
  }

  if (OUTLINED_FUNCTION_3_130(OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError))
  {
    *v35 = 0;
    v35[1] = 0;

    sub_24E346F78();
  }
}

void sub_24E2EF3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_24E2EF420(a1, a2, a3);
  }
}

void sub_24E2EF420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  sub_24E346F78();
  if (!(a3 | a2) || (v7 = sub_24E013444(a2), v9 = v8, v10 = &v3[OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError], *v10 = v7, v10[1] = v8, , , v27 = v7, v28 = v9, sub_24E346F78(), , !a2))
  {
    OUTLINED_FUNCTION_3_130(OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_localizedUpdateError);
    *v11 = 0;
    v11[1] = 0;

    v12 = [objc_opt_self() local];
    v13 = sub_24E2EEE60();
    [v12 updateFromLocalPlayer_];

    v14 = sub_24E2EEE60();
    v15 = [v14 avatarType];

    if (v15 == 1 || (v16 = sub_24E2EEE60(), v17 = [v16 avatarType], v16, !v17))
    {
      v18 = sub_24E2EEE60();
      [v18 clearInMemoryCachedAvatars];

      v19 = sub_24E2EEE60();
      v20 = [v19 internal];

      v21 = *&v4[OBJC_IVAR____TtC12GameCenterUI17NicknamePresenter_objectGraph];
      if (v21)
      {
        v22 = *(v21 + qword_27F1EB198);
      }

      else
      {
        v22 = 0;
      }

      sub_24E254098(v22);
    }

    v23 = sub_24E2EEE60();
    OUTLINED_FUNCTION_21_2();
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    v31 = sub_24E2EFB78;
    v32 = v24;
    OUTLINED_FUNCTION_1_35();
    v28 = 1107296256;
    v29 = sub_24E00B24C;
    v30 = &block_descriptor_10_4;
    v25 = _Block_copy(&v27);
    v26 = v4;

    [v23 deleteMonogramsWithHandler_];
    _Block_release(v25);
  }
}

uint64_t sub_24E2EF6D4()
{
  v0 = objc_opt_self();
  v1 = sub_24E2EEE60();
  v2 = [v0 proxyForPlayer_];

  v3 = [v2 profileServicePrivate];
  OUTLINED_FUNCTION_21_2();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_24E2EFB58;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_35();
  v7[1] = 1107296256;
  v7[2] = sub_24E2EF90C;
  v7[3] = &block_descriptor_99;
  v5 = _Block_copy(v7);

  [v3 getNicknameSuggestions:3 handler:v5];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E2EF7F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v3 = result;

    sub_24E346F78();
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v4 = result;

    sub_24E346F78();
  }
}

void sub_24E2EF90C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_24E347F08();

  v6 = a3;
  v4(v5, a3);
}

id sub_24E2EF9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknamePresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI17NicknamePresenterC11UpdateStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E2EFA98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E2EFAEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E2EFB80()
{
  result = qword_27F1EA9F8;
  if (!qword_27F1EA9F8)
  {
    sub_24DF88A8C(255, &qword_27F1E50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA9F8);
  }

  return result;
}

id sub_24E2EFCB8(uint64_t a1)
{
  result = sub_24DFD8654(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25303F560](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_24E348998();
    MEMORY[0x25303E950](0x206E6F6974636553, 0xED00002068746977);
    if (sub_24E078E40(v5))
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E03A8);
    sub_24E348AA8();
    MEMORY[0x25303E950](0xA2E736D65746920, 0xE800000000000000);
    MEMORY[0x25303E950](0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_24E2EFE4C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAB8);
  v6 = sub_24E347AD8();
  v7 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v1;

  sub_24DFC8700(0, 0, v5, &unk_24E38D250, v8);

  return v6;
}

uint64_t sub_24E2EFF78()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v0;
  v1[5] = v3;
  v1[6] = v2;
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v6;
  v7 = sub_24E343F88();
  v1[7] = v7;
  OUTLINED_FUNCTION_6_15(v7);
  v1[8] = v8;
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24E2F0054()
{
  sub_24E343CC8();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "Sending friend invitation via push...", v3, 2u);
    MEMORY[0x253040EE0](v3, -1, -1);
  }

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);

  (*(v5 + 8))(v4, v6);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = v12;
  *(v8 + 32) = v11;
  *(v8 + 48) = v7;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_24E2F01EC;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_23_32();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24E2F01EC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24E2F02F4()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E2F0350()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

void sub_24E2F03B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_28();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_15_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA30);
  v29 = sub_24E347AD8();
  v30 = [objc_opt_self() proxyForLocalPlayer];
  v31 = [v30 profileServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24E367D20;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 32) = v26;
  *(v32 + 40) = v25;

  v33 = sub_24E347EE8();

  OUTLINED_FUNCTION_5_30();
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = v26;
  v34[4] = v25;
  a13 = sub_24E2F7CDC;
  a14 = v34;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_1_148();
  a11 = v35;
  a12 = &block_descriptor_28_0;
  v36 = _Block_copy(&a9);

  [v31 getProfilesForPlayerIDs:v33 fetchOptions:v24 handler:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_24_23();
}

void sub_24E2F0550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_28();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;
  v30 = [objc_opt_self() proxyForLocalPlayer];
  v31 = [v30 friendServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E00E0);
  v32 = sub_24E347AD8();
  v33 = sub_24E2F1180();
  OUTLINED_FUNCTION_5_30();
  v34 = swift_allocObject();
  v34[2] = v27;
  v34[3] = v32;
  v34[4] = v29;
  a13 = sub_24E2F9EB0;
  a14 = v34;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_1_148();
  a11 = v35;
  a12 = &block_descriptor_84;
  v36 = _Block_copy(&a9);

  v37 = v29;

  [v31 getFriendsForPlayer:v33 withFilter:1 handler:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_24_23();
}

void sub_24E2F0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(uint64_t a1, void *a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_28();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *v24;
  v34 = [objc_opt_self() proxyForLocalPlayer];
  v35 = [v34 friendServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA68);
  v36 = sub_24E347AD8();
  OUTLINED_FUNCTION_5_30();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v28;
  *(v37 + 32) = v33;
  a13 = sub_24E2F9E24;
  a14 = v37;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_1_148();
  a11 = v38;
  a12 = &block_descriptor_63_2;
  v39 = _Block_copy(&a9);

  [v35 getFriendsForPlayer:v32 fetchOptions:v30 withFilter:v28 handler:v39];
  _Block_release(v39);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_24_23();
}

uint64_t sub_24E2F07F8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA78);
  v4 = sub_24E347AD8();
  sub_24E2F477C();
  OUTLINED_FUNCTION_5_30();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  v6 = a2;

  v7 = a1;
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4;
}

uint64_t sub_24E2F0914()
{
  OUTLINED_FUNCTION_15_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA98);
  v3 = sub_24E347AD8();
  v11[0] = 3;
  OUTLINED_FUNCTION_35_3();
  sub_24E2F57E0(v4, v5, v6, v2, v1, v7);
  OUTLINED_FUNCTION_16_4();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v3;
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  OUTLINED_FUNCTION_19_33();
  v9 = v0;
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v3;
}

uint64_t sub_24E2F0A38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    sub_24E347C08();
  }

  v5 = a3;
  v6 = OUTLINED_FUNCTION_2_34();
  v4(v6);
}

void sub_24E2F0AD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24E3431A8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_24E2F0B3C(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
  if (swift_dynamicCast())
  {
    v2 = v5;
  }

  else
  {
    swift_getErrorValue();
    v3 = a1;
    v2 = sub_24E348CA8();
  }

  return v2;
}

uint64_t sub_24E2F0C10(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA18);
  v2 = sub_24E347AD8();
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 gameServicePrivate];

  v5 = [a1 playerID];
  if (!v5)
  {
    sub_24E347CF8();
    v5 = sub_24E347CB8();
  }

  OUTLINED_FUNCTION_16_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  v10[4] = sub_24E2F7C68;
  v10[5] = v6;
  OUTLINED_FUNCTION_1_35();
  v10[1] = 1107296256;
  v10[2] = sub_24E2F46C0;
  v10[3] = &block_descriptor_100;
  v7 = _Block_copy(v10);

  v8 = a1;

  [v4 getGamesPlayedMetaData:v5 handler:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_24E2F0D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAA68);
  v0 = sub_24E347AD8();
  v1 = [objc_opt_self() daemonProxy];
  v2 = [v1 friendServicePrivate];

  v5[4] = sub_24E2F9F48;
  v5[5] = v0;
  OUTLINED_FUNCTION_1_35();
  v5[1] = 1107296256;
  v5[2] = sub_24E1C6B90;
  v5[3] = &block_descriptor_96_0;
  v3 = _Block_copy(v5);

  [v2 getCombinedFriendInvitationListWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  return v0;
}

id sub_24E2F0E9C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_2_34();
  v1 = sub_24E347CB8();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_24E2F0F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_28();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EAAA0);
  v32 = sub_24E347AD8();
  sub_24E2F477C();
  v33 = swift_allocObject();
  *(v33 + 16) = v27;
  *(v33 + 24) = v32;
  *(v33 + 32) = v31;
  *(v33 + 33) = v29;
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  OUTLINED_FUNCTION_19_33();
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_24_23();
}

uint64_t sub_24E2F1024()
{
  sub_24DF88A8C(0, &qword_27F1E50D0);
  result = sub_24E3485F8();
  qword_27F1EAA00 = result;
  return result;
}

id sub_24E2F1070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E3779D0;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  sub_24DF88A8C(0, &unk_27F1EAA50);
  sub_24E347CF8();
  *(v0 + 40) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 48) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 56) = sub_24E2F0E9C();
  sub_24E347CF8();
  *(v0 + 64) = sub_24E2F0E9C();
  sub_24E347CF8();
  result = sub_24E2F0E9C();
  *(v0 + 72) = result;
  qword_27F1EAA08 = v0;
  return result;
}

id sub_24E2F1180()
{
  v0 = [objc_opt_self() local];
  v1 = [v0 internal];

  return v1;
}

void sub_24E2F11E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_24DFD8654(a1))
  {
    sub_24DFFA844(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25303F560](0, a1);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    v9 = v8;
    sub_24E347AC8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFCD8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24E367D20;
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;
    sub_24E2F7C88();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 8) = 1;

    sub_24E347AB8();
  }
}

void sub_24E2F1314(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_24E343368();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = v33 - v18;
  if (a2)
  {
    sub_24E2F7C88();
    v20 = swift_allocError();
    *v21 = a2;
    *(v21 + 8) = 2;
    v22 = a2;
    v23 = a2;
    sub_24E347AB8();
  }

  else if (a4 == 2)
  {
    v35 = v17;
    v33[1] = a3;
    v39 = MEMORY[0x277D84F90];
    v24 = sub_24DFD8654(a1);
    v25 = 0;
    v37 = a1 & 0xC000000000000001;
    v38 = v24;
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = (v9 + 32);
    v26 = (v9 + 8);
    while (1)
    {
      if (v38 == v25)
      {
        a1 = v39;
        goto LABEL_20;
      }

      if (v37)
      {
        v27 = MEMORY[0x25303F560](v25, a1);
      }

      else
      {
        if (v25 >= *(v36 + 16))
        {
          goto LABEL_22;
        }

        v27 = *(a1 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v27 lastPlayedDate];
      if (v29 && (v30 = v29, v31 = v35, sub_24E343328(), v30, (*v34)(v19, v31, v8), sub_24E343358(), sub_24E3432D8(), v32 = *v26, (*v26)(v11, v8), sub_24E2F9E34(), LOBYTE(v30) = sub_24E347C88(), v32(v14, v8), v32(v19, v8), (v30 & 1) != 0))
      {
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      ++v25;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

LABEL_20:
    v39 = a1;
    sub_24E347AC8();
  }
}

uint64_t sub_24E2F16A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_24E347358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[1] = a4;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E369B70;
    v45 = MEMORY[0x277D837D0];
    v43 = 0xD000000000000027;
    v44 = 0x800000024E3B2490;
    sub_24E346FE8();
    sub_24DFA9298(&v43, &qword_27F1E0370);
    v13 = sub_24E2F1180();
    v14 = [v13 playerID];

    v15 = sub_24E347CF8();
    v17 = v16;

    v45 = MEMORY[0x277D837D0];
    v43 = v15;
    v44 = v17;
    sub_24E346FE8();
    sub_24DFA9298(&v43, &qword_27F1E0370);
    swift_getErrorValue();
    v18 = v41;
    v19 = v42;
    v45 = v42;
    v20 = __swift_allocate_boxed_opaque_existential_1(&v43);
    (*(*(v19 - 8) + 16))(v20, v18, v19);
    sub_24E346FE8();
    sub_24DFA9298(&v43, &qword_27F1E0370);
    (*(v10 + 104))(v12, *MEMORY[0x277D21DE8], v9);
    sub_24E0EF428();

    (*(v10 + 8))(v12, v9);
    LOBYTE(v43) = 0;
    return sub_24E347AC8();
  }

  result = sub_24DFD8654(a1);
  if (!result)
  {
    v39 = 0;
LABEL_20:
    LOBYTE(v43) = v39 & 1;
    return sub_24E347AC8();
  }

  v22 = result;
  if (result >= 1)
  {
    v39 = 0;
    v23 = 0;
    v40 = a1 & 0xC000000000000001;
    v24 = a1;
    while (1)
    {
      if (v40)
      {
        v25 = MEMORY[0x25303F560](v23, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 playerID];
      v28 = sub_24E347CF8();
      v30 = v29;

      v31 = a5;
      v32 = [a5 playerID];
      v33 = sub_24E347CF8();
      v35 = v34;

      if (v28 == v33 && v30 == v35)
      {
      }

      else
      {
        v37 = sub_24E348C08();

        if ((v37 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v39 = 1;
LABEL_17:
      ++v23;
      a5 = v31;
      a1 = v24;
      if (v22 == v23)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2F1AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAAF8);
  v0 = sub_24E347AD8();
  sub_24E2EFE4C();
  sub_24DF88A8C(0, &qword_27F1DFCD0);
  OUTLINED_FUNCTION_19_33();
  sub_24E348368();
  OUTLINED_FUNCTION_12_59();
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}