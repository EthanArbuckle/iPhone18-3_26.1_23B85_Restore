void sub_190B964A8()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ChatBotActionButton();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___CKChatBotActionButton_iconView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MidY = CGRectGetMidY(v20);
    v9 = v2;
    [v9 bounds];
    v12 = MidY + v11 * -0.5;
    if (v0[OBJC_IVAR___CKChatBotActionButton_showTitle] == 1)
    {
      [v0 bounds];
      v13 = CGRectGetWidth(v21);
      [v9 bounds];
      v15 = v13 - v14 + -10.0;
      [v9 bounds];
    }

    else
    {
      v15 = MidX + v10 * -0.5;
    }

    [v9 setFrame_];
  }

  v16 = *&v0[OBJC_IVAR___CKChatBotActionButton_blurView];
  if (v16)
  {
    v17 = v16;
    [v0 bounds];
    [v17 setFrame_];
  }
}

double sub_190B9666C(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR___CKChatBotActionButton_iconView];
  if (v5)
  {
    [v5 frame];
    Width = CGRectGetWidth(v20);
  }

  else
  {
    Width = 0.0;
  }

  v7 = [v2 titleForState_];
  if (v7)
  {
    v8 = v7;
    v9 = [v2 titleLabel];
    if (v9 && (v10 = v9, v11 = [v9 font], v10, v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5AC30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD1D90;
      v13 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      *(inited + 64) = sub_1902188FC(0, &qword_1EAD46540);
      *(inited + 40) = v11;
      v14 = v13;
      v15 = v11;
      sub_190821998(inited);
      swift_setDeallocating();
      sub_190B96F1C(inited + 32);
      v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      type metadata accessor for Key(0);
      sub_19082B370();
      v17 = sub_190D56D60();

      v18 = [v16 initWithString:v8 attributes:v17];

      [v18 boundingRectWithSize:3 options:0 context:{a1 + -12.0 - Width + -24.0 + -10.0, a2}];
    }

    else
    {
    }
  }

  return a1;
}

id ChatBotActionButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ChatBotActionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChatBotActionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ChatBotActionButtonBackgroundStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_190B96A60(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v34 = a4;
  v33 = a2;
  v8 = sub_190D57F40();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_190D57E10();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D57E80();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_190D57FB0();
  v17 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a5[OBJC_IVAR___CKChatBotActionButton_iconView] = 0;
  v27[1] = OBJC_IVAR___CKChatBotActionButton_delegate;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR___CKChatBotActionButton_actionList] = a1;
  switch(a3)
  {
    case 2:
      sub_190D57F70();
      v22 = [objc_opt_self() effectWithStyle_];
      v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

      goto LABEL_7;
    case 1:
      sub_190D57F90();
      v20 = [objc_opt_self() systemGray5Color];
      sub_190D57EF0();
      v21 = 0;
LABEL_7:
      *&a5[OBJC_IVAR___CKChatBotActionButton_blurView] = v21;
      (*(v14 + 104))(v16, *MEMORY[0x1E69DC540], v13);
      sub_190D57E90();
      v23 = [objc_opt_self() labelColor];
      sub_190D57F00();
      sub_190D57E60();
      (*(v10 + 104))(v12, *MEMORY[0x1E69DC510], v28);
      sub_190D57E20();
      (*(v31 + 104))(v30, *MEMORY[0x1E69DC558], v32);
      sub_190D57E00();
      swift_unknownObjectWeakAssign();
      a5[OBJC_IVAR___CKChatBotActionButton_showTitle] = v34 & 1;
      v24 = type metadata accessor for ChatBotActionButton();
      v35.receiver = a5;
      v35.super_class = v24;
      v25 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_190B954B0(v19);

      (*(v17 + 8))(v19, v29);
      return v25;
    case 0:
      sub_190D57F50();
      v21 = 0;
      goto LABEL_7;
  }

  v36 = a3;
  sub_190D52690();
  result = sub_190D58790();
  __break(1u);
  return result;
}

uint64_t sub_190B96F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190B96F88()
{
  result = qword_1EAD5E978;
  if (!qword_1EAD5E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E978);
  }

  return result;
}

uint64_t sub_190B97054()
{
  sub_1908F1DEC(*(v0 + 16));
  sub_19081E484();
  return sub_190D555F0();
}

uint64_t sub_190B97098()
{
  v0 = objc_opt_self();
  v1 = sub_190D56ED0();
  v2 = [v0 ckImageNamed_];

  if (v2)
  {
    return sub_190D55E90();
  }

  else
  {
    return 0;
  }
}

id sub_190B97128()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190B97210()
{
  v0 = sub_190D53830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle();
  if (result)
  {
    v5 = result;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_190D56F10();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    sub_19081E484();
    sub_190D53800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590);
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD1D90;
    (*(v1 + 32))(v13 + v12, v3, v0);
    v14 = sub_190B43788(v13);
    swift_setDeallocating();
    (*(v1 + 8))(v13 + v12, v0);
    swift_deallocClassInstance();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12VerifyButtonVMa()
{
  result = qword_1EAD5E990;
  if (!qword_1EAD5E990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190B974B4()
{
  _s9ViewModelCMa_5();
  if (v0 <= 0x3F)
  {
    _s10StyleGuideVMa_0();
    if (v1 <= 0x3F)
    {
      sub_1908CB188();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_190B9756C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = _s12VerifyButtonVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9A0);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - v11;
  sub_190B97C04(v2, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v30 = v5;
  v14 = swift_allocObject();
  sub_190B97C68(v6, v14 + v13);
  v32 = v2;
  sub_190D56030();
  v28 = v3;
  v15 = v2 + *(v3 + 20);
  v16 = *(v15 + *(_s10StyleGuideVMa_0() + 24));
  KeyPath = swift_getKeyPath();
  if (v16)
  {
    v33 = v16;
    sub_190D50920();
    v16 = sub_190D53C70();
  }

  (*(v8 + 16))(v12, v10, v7);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9A8) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  (*(v8 + 8))(v10, v7);
  v19 = [*(*v2 + 16) hasKnownParticipants] ^ 1;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = &v12[*(v29 + 36)];
  *v22 = v20;
  v22[1] = sub_1908D9D28;
  v22[2] = v21;
  v23 = v2 + *(v28 + 24);
  v24 = *v23;
  v25 = *(v23 + 8);
  v34 = v24;
  v35 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FF0();
  sub_190B97C04(v2, v6);
  v26 = swift_allocObject();
  sub_190B97C68(v6, v26 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9B0);
  sub_190B97ED4();
  sub_190B98070();
  sub_190D55B80();

  return sub_190B980FC(v12);
}

uint64_t sub_190B979AC()
{
  _s12VerifyButtonVMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

uint64_t sub_190B97A20@<X0>(uint64_t a1@<X8>)
{
  sub_190A4B524();
  sub_19081E484();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  sub_190D55360();
  v7 = sub_190D555B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_19081E474(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_190B97AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = v3;
  LOBYTE(v3) = sub_190D552D0();
  result = sub_190D54240();
  *a2 = v5;
  *(a2 + 8) = sub_190B98164;
  *(a2 + 16) = v4;
  *(a2 + 24) = result;
  *(a2 + 32) = v3;
  return result;
}

void sub_190B97B7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = [*(Strong + 16) chat];
    [v1 fetchKTStatus];
  }
}

uint64_t sub_190B97C04(uint64_t a1, uint64_t a2)
{
  v4 = _s12VerifyButtonVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B97C68(uint64_t a1, uint64_t a2)
{
  v4 = _s12VerifyButtonVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B97CCC()
{
  _s12VerifyButtonVMa();

  return sub_190B979AC();
}

uint64_t objectdestroyTm_36()
{
  v1 = (_s12VerifyButtonVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(_s10StyleGuideVMa_0() + 20);
  v7 = sub_190D565E0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190B97E64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s12VerifyButtonVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_190B97AF8(v4, a1);
}

unint64_t sub_190B97ED4()
{
  result = qword_1EAD5E9B8;
  if (!qword_1EAD5E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9A0);
    sub_190B97F8C();
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E9B8);
  }

  return result;
}

unint64_t sub_190B97F8C()
{
  result = qword_1EAD5E9C0;
  if (!qword_1EAD5E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9A8);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E9C0);
  }

  return result;
}

unint64_t sub_190B98070()
{
  result = qword_1EAD5E9C8;
  if (!qword_1EAD5E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
    sub_190AE20D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5E9C8);
  }

  return result;
}

uint64_t sub_190B980FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190B9816C()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD5E9D0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190B981B0()
{
  if (qword_1EAD51E78 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD5E9D0;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD5E9D8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190B98238(void *a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController) = 0;
  *(v2 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingContactVerificationUI) = 0;
  sub_190D51C50();
  v4 = a1;
  sub_190D51C50();
  *(v2 + 16) = v4;
  v5 = *&v4[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];
  sub_190D50920();
  v6 = v5;
  v7 = [v6 chat];
  [v7 fetchKTStatus];

  sub_190CEB87C();

  return v2;
}

uint64_t sub_190B98308(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190B98420()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  v4 = *&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
  v5 = v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8];

  if ((v5 & 1) == 0 && v4 == 15)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v6 = *(v1 + 16);
  swift_getKeyPath();
  v7 = v6;
  sub_190D51C20();

  v8 = *&v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
  v9 = v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8];

  if ((v9 & 1) == 0 && v8 == 16)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v10 = *(v1 + 16);
  v11 = sub_190CEE160();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v12 = *(v1 + 16);
  swift_getKeyPath();
  v13 = v12;
  sub_190D51C20();

  v14 = *&v13[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

  return (v14 >> 11) & 1;
}

uint64_t sub_190B98740()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel__isPresentingClearAlertController);
}

uint64_t sub_190B987F8()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  return 0;
}

uint64_t sub_190B98894@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  *a1 = 0;
  return result;
}

uint64_t sub_190B98938()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v2 = sub_190C68E5C();

  return v2;
}

void sub_190B98A60()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  v4 = *&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v5 = *(v4 + 16);

  swift_getKeyPath();
  if (v5 < 2)
  {
    sub_190D51C20();

    v8 = *(v1 + 16);
    swift_getKeyPath();
    v9 = v8;
    sub_190D51C20();

    v10 = *&v9[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
    sub_190D52690();

    v11 = *(v10 + 16);

    if (v11 == 1)
    {
      swift_getKeyPath();
      sub_190D51C20();

      v12 = *(v1 + 16);
      swift_getKeyPath();
      v13 = v12;
      sub_190D51C20();

      v14 = *&v13[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
      sub_190D52690();

      if (!*(v14 + 16))
      {
LABEL_19:

        return;
      }

      v15 = *(v14 + 32);

      v16 = [v15 entity];

      if (!v16)
      {
        __break(1u);
        goto LABEL_26;
      }

      v17 = [v16 defaultIMHandle];

      if (!v17)
      {
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DD55F0;
      *(inited + 32) = v17;
      v19 = v17;
      v20 = sub_190C15BE4(inited, 0);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (*(v20 + 2))
      {
        sub_190D52690();

        return;
      }
    }

    else
    {
      if (qword_1EAD51A70 != -1)
      {
        swift_once();
      }

      v21 = sub_190D53040();
      __swift_project_value_buffer(v21, qword_1EAD9DC38);
      v19 = sub_190D53020();
      v22 = sub_190D576C0();
      if (os_log_type_enabled(v19, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_19020E000, v19, v22, "There are no handles in the chat", v23, 2u);
        MEMORY[0x193AF7A40](v23, -1, -1);
      }
    }

    return;
  }

  sub_190D51C20();

  v6 = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) displayName];
  if (v6)
  {
    v7 = v6;
    sub_190D56F10();

    return;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v24 = *(v1 + 16);
  swift_getKeyPath();
  v25 = v24;
  sub_190D51C20();

  v26 = *&v25[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  if (!*(v26 + 16))
  {
    goto LABEL_19;
  }

  v27 = *(v26 + 32);

  v28 = [v27 entity];

  if (!v28)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v29 = [v28 defaultIMHandle];

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_190DD55F0;
    *(v30 + 32) = v29;
    v31 = v29;
    v32 = sub_190C15BE4(v30, 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (*(v32 + 2))
    {
      v41 = v31;
      v33 = *(v32 + 4);
      v34 = *(v32 + 5);
      sub_190D52690();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_190DD1DA0;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_19081EA10();
      *(v35 + 32) = v33;
      *(v35 + 40) = v34;
      swift_getKeyPath();
      sub_190D51C20();

      v36 = *(v1 + 16);
      swift_getKeyPath();
      v37 = v36;
      sub_190D51C20();

      v38 = *&v37[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
      sub_190D52690();

      v39 = *(v38 + 16);

      v40 = MEMORY[0x1E69E65A8];
      *(v35 + 96) = MEMORY[0x1E69E6530];
      *(v35 + 104) = v40;
      *(v35 + 72) = v39 - 1;
      sub_1908E9FA4();
    }

    else
    {
    }
  }
}

id sub_190B99250()
{
  v1 = v0;
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D51210();

    swift_getKeyPath();
    sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v5 = *(v1 + 16);
    swift_getKeyPath();
    sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    v6 = v5;
    sub_190D51C20();

    v7 = *&v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
    v8 = v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8];

    if ((v8 & 1) != 0 || v7 != 4)
    {
      swift_getKeyPath();
      sub_190D51C20();

      v9 = *(v1 + 16);
      swift_getKeyPath();
      v10 = v9;
      sub_190D51C20();

      v11 = *&v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
      v12 = v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8];

      if ((v12 & 1) != 0 || v11 != 18)
      {
        return v4;
      }
    }

    result = CKFrameworkBundle();
    if (result)
    {
      v13 = result;
      v4 = sub_190D51210();

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

uint64_t sub_190B99530()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = *&v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v4 = *(v3 + 16);

  return v4;
}

id sub_190B996D8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  v4 = v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (sub_190B99530() >= 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_190DD1DA0;
          swift_getKeyPath();
          sub_190D51C20();

          swift_getKeyPath();
          sub_190D51C20();

          v8 = *(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
          v9 = sub_190C68E5C();

          if (v9)
          {
            if (v9 >> 62)
            {
              v10 = sub_190D581C0();
            }

            else
            {
              v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v10 = 0;
          }

          v13 = MEMORY[0x1E69E6530];
          v14 = MEMORY[0x1E69E65A8];
          *(v7 + 56) = MEMORY[0x1E69E6530];
          *(v7 + 64) = v14;
          *(v7 + 32) = v10;
          v15 = sub_190B99530();
          *(v7 + 96) = v13;
          *(v7 + 104) = v14;
          *(v7 + 72) = v15;
          v11 = sub_1908E9FA4();

          return v11;
        }

        result = CKFrameworkBundle();
        if (result)
        {
          v6 = result;
          goto LABEL_31;
        }

        goto LABEL_40;
      }

      result = CKFrameworkBundle();
      if (result)
      {
        v6 = result;
        goto LABEL_31;
      }

      goto LABEL_37;
    }

    if (v4)
    {
      v12 = sub_190B99530();
      result = CKFrameworkBundle();
      v6 = result;
      if (v12 != 1)
      {
        if (result)
        {
          goto LABEL_31;
        }

        goto LABEL_41;
      }

      if (result)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

    result = CKFrameworkBundle();
    if (result)
    {
LABEL_30:
      v6 = result;
      goto LABEL_31;
    }

    __break(1u);
  }

  if ((v4 - 6) < 2)
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v6 = result;
LABEL_31:
      v11 = sub_190D51210();

      return v11;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v4 != 4)
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v6 = result;
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  if (CKIsRunningInMacCatalyst())
  {
    return 0;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_190B99C40()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  if (v3 > 3)
  {
    return 0xD00000000000001DLL;
  }

  if ((v3 - 2) < 2)
  {
    return 0;
  }

  if (v3)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

id sub_190B99E2C()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  if ((v3 - 4) < 4 || (v3 - 1) >= 3)
  {
    return sub_190D55D40();
  }

  if (qword_1EAD51E80 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD5E9D8 secondaryLabelColor];
  if (result)
  {
    return sub_190D55CE0();
  }

  __break(1u);
  return result;
}

void sub_190B9A034()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector_])
    {
      [Strong detailsControllerWantsToPresentReportToAppleUI_];
    }

    swift_unknownObjectRelease();
  }
}

BOOL sub_190B9A1A4()
{
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD5EA10, _s9ViewModelCMa_0);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190B9A56C(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState];

  return (v3 - 4) < 0xFFFFFFFD;
}

uint64_t sub_190B9A340()
{
  v1 = OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190B9A3A8()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection9ViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_0()
{
  result = qword_1EAD5EA00;
  if (!qword_1EAD5EA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B9A4D0()
{
  result = sub_190D51C60();
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

uint64_t sub_190B9A56C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_190B9A634()
{
  v1 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKLinkPreviewTextAttachment.init(delegate:configuration:)(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_viewProvider] = 0;
  v4 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_embeddedLinkView;
  type metadata accessor for CKEmbeddedRichLinkView();
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v6 = result;
    v7 = &v2[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_preferredSize];
    [result entryViewLinkViewSize];
    v9 = v8;
    v11 = v10;

    *v7 = v9;
    v7[1] = v11;
    v2[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated] = 1;
    *&v2[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier] = 0x3FF0000000000000;
    swift_unknownObjectWeakAssign();
    *&v2[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_configuration] = a2;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for CKLinkPreviewTextAttachment();
    v12 = a2;
    v13 = objc_msgSendSuper2(&v14, sel_initWithData_ofType_, 0, 0);
    [v13 setAllowsTextAttachmentView_];
    sub_190B9A8AC();

    swift_unknownObjectRelease();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190B9A8AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_embeddedLinkView);
  *&v9[OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_delegate + 8] = &off_1F041C088;
  swift_unknownObjectWeakAssign();
  [v9 setUserInteractionEnabled_];
  [v9 setClipsToBounds_];
  v10 = *(v1 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_configuration);
  v11 = [v10 url];
  if (v11)
  {
    v12 = v11;
    sub_190D515B0();

    v13 = [v10 pluginPayload];
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v14 = OBJC_IVAR____TtC7ChatKit22CKEmbeddedRichLinkView_url;
    swift_beginAccess();
    sub_190B9C1D4(v4, &v9[v14]);
    swift_endAccess();
    sub_190AF4AE8(v8, v13);

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_1EAD46240 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9D778);
    v19 = sub_190D53020();
    v16 = sub_190D576A0();
    if (os_log_type_enabled(v19, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v19, v16, "Configured an embedded rich link view, but had no URL – this should not be possible! Programming error.", v17, 2u);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }

    v18 = v19;
  }
}

void sub_190B9AC60(uint64_t a1, uint64_t a2, id a3)
{
  v7 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_viewProvider;
  v8 = *(v3 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_viewProvider);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(v9 location)];
    swift_unknownObjectRelease();

    if (!v10)
    {
      return;
    }
  }

  if (a3)
  {
    v11 = *(v3 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_embeddedLinkView);
    v12 = [a3 textLayoutManager];
    v13 = type metadata accessor for CKLinkPreviewTextAttachmentViewProvider();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider_previousTextContainerSize];
    *v15 = 0;
    *(v15 + 1) = 0;
    *&v14[OBJC_IVAR____TtC7ChatKit39CKLinkPreviewTextAttachmentViewProvider_providedView] = v11;
    v20.receiver = v14;
    v20.super_class = v13;
    v16 = v11;
    v17 = objc_msgSendSuper2(&v20, sel_initWithTextAttachment_parentView_textLayoutManager_location_, v3, a1, v12, a2);
    [v17 setTracksTextAttachmentViewBounds_];

    v18 = *(v3 + v7);
    *(v3 + v7) = v17;
    v19 = v17;
  }

  else
  {
    __break(1u);
  }
}

id sub_190B9AF54(void *a1)
{
  v2 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated;
  if ((v1[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated] & 1) == 0)
  {
    return swift_beginAccess();
  }

  v4 = *&v1[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_embeddedLinkView];
  [v1 maxWidthForEmbeddedRichLinkView_];
  v6 = v5;
  v7 = objc_opt_self();
  result = [v7 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  [result extensionBalloonMaximumHeight];
  v11 = v10;

  [v4 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  result = [v7 sharedBehaviors];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = result;
  [result balloonMaskTailWidth];
  v18 = v17;

  v19 = v13 - v18;
  v20 = 1.0;
  if (a1)
  {
    [a1 size];
    v22 = v21 + -20.0;
    if (v22 < v19)
    {
      v20 = v22 / v19;
    }
  }

  v23 = &v1[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_preferredSize];
  *v23 = v19;
  *(v23 + 1) = v15;
  v24 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier;
  result = swift_beginAccess();
  *&v1[v24] = v20;
  v1[v2] = 0;
  return result;
}

id CKLinkPreviewTextAttachment.__allocating_init(data:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v6 = sub_190D51660();
    sub_19029064C(a1, a2);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_190D56ED0();

LABEL_6:
  v10 = [objc_allocWithZone(v4) initWithData:v6 ofType:v7];

  return v10;
}

id CKLinkPreviewTextAttachment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKLinkPreviewTextAttachment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_190B9B3D0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result linkPreviewTextAttachmentDidUpdateTextAttachmentSize_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_190B9B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_190B9B650(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190B9B7C8(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_configuration];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    sub_190D56F10();
    v6 = sub_190D56ED0();
  }

  return v6;
}

uint64_t sub_190B9B85C(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_configuration) *a1];
  v3 = sub_190D56F10();

  return v3;
}

void sub_190B9B8BC()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_viewProvider) = 0;
  v1 = OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_embeddedLinkView;
  type metadata accessor for CKEmbeddedRichLinkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_opt_self() sharedBehaviors];
  if (!v2)
  {
    __break(1u);
  }

  v3 = (v0 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_preferredSize);
  v4 = v2;
  [v2 entryViewLinkViewSize];
  v6 = v5;
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
  *(v0 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated) = 1;
  *(v0 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_downscaleMultiplier) = 0x3FF0000000000000;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_190B9B9E0()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_preferredSize];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_preferredSize + 8];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v4 = swift_allocObject();
  v4[3] = 0.0;
  v4[4] = 0.0;
  *(v4 + 2) = v0;
  v4[5] = v1;
  v4[6] = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_190B9C1AC;
  *(v5 + 24) = v4;
  v10[4] = sub_190233AFC;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_190233A24;
  v10[3] = &block_descriptor_37_1;
  v6 = _Block_copy(v10);
  v7 = v0;
  sub_190D50920();

  v8 = [v3 imageWithActions_];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_190B9BC24(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D778);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "CKLinkPreviewTextAttachment was notified of interaction event.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result linkPreviewTextAttachment:v2 didSelectInteractionType:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190B9BD60(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD46240 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D778);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "CKLinkPreviewTextAttachment was notified that linkMetadata has finished loading.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_configuration);

  return [v8 setPluginPayload_];
}

uint64_t sub_190B9BE70()
{
  v1 = sub_190D56770();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC7ChatKit27CKLinkPreviewTextAttachment_isAttachmentSizeInvalidated] = 1;
  sub_1908E9B68();
  v9 = sub_190D57870();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_190B9C1A4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_96;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_190B9C104()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong maxWidthForLinkPreviewTextAttachment_];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = [objc_opt_self() sharedBehaviors];
    if (v2)
    {
      v3 = v2;
      [v2 entryViewLinkViewSize];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_190B9C1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190B9C25C()
{
  sub_190D58870();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 32))(v1, v2);
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B9C2EC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 32))(v1, v2);
  sub_190D56FC0();
}

uint64_t sub_190B9C370()
{
  sub_190D58870();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 32))(v1, v2);
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190B9C3FC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_190D58760();
  }

  return v12 & 1;
}

unint64_t sub_190B9C4DC()
{
  result = qword_1EAD5EAC0;
  if (!qword_1EAD5EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EAC0);
  }

  return result;
}

uint64_t sub_190B9C530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a1;
  v135 = a2;
  v134 = sub_190D511C0();
  v131 = *(v134 - 8);
  v2 = MEMORY[0x1EEE9AC00](v134);
  v129 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v130 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v128 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v92 - v8;
  v96 = type metadata accessor for ConversationEntity();
  MEMORY[0x1EEE9AC00](v96);
  v126 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v92 - v13;
  v14 = sub_190D51440();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_190D51460();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB0);
  v117 = "_DISPLAY_REPRESENTATION";
  sub_190D56E50();
  sub_190D51980();
  v25 = *MEMORY[0x1E6968DF0];
  v26 = *(v15 + 104);
  v133 = v14;
  v26(v17, v25, v14);
  sub_190D51470();
  v124 = sub_190D507C0();
  v27 = v135;
  v135[2] = v124;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB98);
  v114 = "ERTY_TITLE_CONVERSATION_GUID";
  sub_190D56E50();
  sub_190D51980();
  v29 = v14;
  v30 = v15 + 104;
  v26(v17, v25, v29);
  sub_190D51470();
  v111 = sub_190233640(&qword_1EAD5EBA0, &qword_1EAD5EB30);
  v118 = v28;
  v121 = sub_190D50760();
  v27[3] = v121;
  v109 = "ERTY_TITLE_PARTICIPANTS";
  v110 = 0xD000000000000035;
  sub_190D56E50();
  sub_190D51980();
  v31 = v133;
  v26(v17, v25, v133);
  sub_190D51470();
  v120 = sub_190D507C0();
  v27[4] = v120;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBA8);
  v106 = "ERTY_TITLE_GROUP_NAME";
  sub_190D56E50();
  sub_190D51980();
  v26(v17, v25, v31);
  sub_190D51470();
  v115 = v32;
  v119 = sub_190D507C0();
  v27[5] = v119;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBB0);
  v104 = "ERTY_TITLE_DISPLAY_NAME";
  sub_190D56E50();
  sub_190D51980();
  v26(v17, v25, v31);
  sub_190D51470();
  v112 = v33;
  v116 = sub_190D50780();
  v27[6] = v116;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FC8);
  v101 = "ERTY_TITLE_PREVIEW_TEXT";
  v102 = 0xD000000000000034;
  sub_190D56E50();
  sub_190D51980();
  v132 = v25;
  v125 = v30;
  v122 = v26;
  v26(v17, v25, v31);
  v92 = v20;
  v93 = v17;
  sub_190D51470();
  v97 = v24;
  v35 = v96;
  v108 = v34;
  v113 = sub_190D507D0();
  v27[7] = v113;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBB8);
  v99 = sub_1908251E0();
  v100 = v36;
  v107 = sub_190D50730();
  v27[8] = v107;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBC0);
  v103 = sub_190D507B0();
  v27[9] = v103;
  v37 = v27 + *(v35 + 52);
  v38 = sub_190D50B50();
  v39 = *(*(v38 - 8) + 56);
  v105 = v37;
  v39(v37, 1, 1, v38);
  v39(v137, 1, 1, v38);
  if (qword_1EAD46290 != -1)
  {
    swift_once();
  }

  v40 = sub_190D53040();
  __swift_project_value_buffer(v40, qword_1EAD9D7D8);
  v41 = sub_190D53020();
  v42 = sub_190D57690();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_19020E000, v41, v42, "Attempting to render avatar image for ConversationEntity.", v43, 2u);
    MEMORY[0x193AF7A40](v43, -1, -1);
  }

  v123 = [v138 renderedAvatarImageWithSize_];
  v44 = UIImagePNGRepresentation(v123);
  if (v44)
  {
    v45 = v44;
    sub_190D51670();

    v46 = sub_190D53020();
    v47 = sub_190D57690();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_19020E000, v46, v47, "Setting avatar image for ConversationEntity.", v48, 2u);
      MEMORY[0x193AF7A40](v48, -1, -1);
    }

    v49 = v95;
    sub_190D50B40();
    v50 = v137;
    sub_19022EEA4(v137, &qword_1EAD55080);
    v39(v49, 0, 1, v38);
    sub_190A0DB48(v49, v50);
  }

  v51 = [v138 uniqueIdentifier];
  v95 = sub_190D56F10();
  v94 = v52;

  v53 = v126;
  sub_19022FD14(v137, &v126[*(v35 + 52)], &qword_1EAD55080);
  sub_190D56E50();
  sub_190D51980();
  v54 = v93;
  v55 = v133;
  v56 = v122;
  v122(v93, v132, v133);
  sub_190D51470();
  v117 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v57 = v132;
  v56(v54, v132, v55);
  sub_190D51470();
  v118 = sub_190D50760();
  sub_190D56E50();
  sub_190D51980();
  v56(v54, v57, v55);
  sub_190D51470();
  v136 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v56(v54, v57, v55);
  sub_190D51470();
  v115 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v56(v54, v57, v55);
  sub_190D51470();
  v114 = sub_190D50780();
  sub_190D56E50();
  sub_190D51980();
  v56(v54, v57, v55);
  sub_190D51470();
  v58 = sub_190D507D0();
  v59 = sub_190D50730();
  v60 = sub_190D507B0();

  v61 = v94;
  *v53 = v95;
  v53[1] = v61;
  v62 = v118;
  v53[2] = v117;
  v53[3] = v62;
  v63 = v115;
  v53[4] = v136;
  v53[5] = v63;
  v53[6] = v114;
  v53[7] = v58;
  v53[8] = v59;
  v53[9] = v60;

  sub_19022EEA4(v105, &qword_1EAD55080);
  sub_19082FC20(v53, v135);
  v64 = [v138 chat];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 guid];

    v67 = sub_190D56F10();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v70 = v127;
  v139 = v67;
  v140 = v69;
  sub_190D50700();
  v71 = v138;
  LOBYTE(v139) = [v138 hasUnreadMessages];
  sub_190D50700();
  v72 = MEMORY[0x1E69E7CD0];
  v139 = MEMORY[0x1E69E7CD0];
  if ([v71 isMuted])
  {
    sub_1908A9DD4();
    v72 = v139;
  }

  v139 = v72;
  sub_190D50700();
  v73 = [v138 displayName];
  if (v73)
  {
    v74 = v73;
    v75 = sub_190D56F10();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v139 = v75;
  v140 = v77;
  sub_190D50700();
  v78 = [v138 displayName];
  if (v78)
  {
    v79 = v130;
LABEL_20:
    v80 = v78;
    v81 = sub_190D56F10();
    v83 = v82;

    goto LABEL_21;
  }

  v78 = [v138 name];
  v79 = v130;
  if (v78)
  {
    goto LABEL_20;
  }

  v81 = 0;
  v83 = 0xE000000000000000;
LABEL_21:
  v139 = v81;
  v140 = v83;
  sub_190D50700();
  v84 = [v138 date];
  if (v84)
  {
    v85 = v84;
    sub_190D517E0();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  v87 = v131;
  v88 = sub_190D51840();
  (*(*(v88 - 8) + 56))(v70, v86, 1, v88);
  sub_19022FD14(v70, v128, &unk_1EAD5E5D0);
  sub_190D50700();
  sub_19022EEA4(v70, &unk_1EAD5E5D0);
  v89 = [v138 previewText];
  if (v89)
  {
    v90 = v89;
    sub_190D51200();
    (*(v87 + 16))(v129, v79, v134);
    sub_190D50700();
  }

  else
  {
    sub_190D511A0();
    (*(v87 + 16))(v129, v79, v134);
    sub_190D50700();
  }

  (*(v87 + 8))(v79, v134);
  return sub_19022EEA4(v137, &qword_1EAD55080);
}

uint64_t ConversationEntity.description.getter()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000021, 0x8000000190E77860);
  MEMORY[0x193AF28B0](*v0, v0[1]);
  MEMORY[0x193AF28B0](0xD000000000000013, 0x8000000190E77890);
  sub_190D506F0();
  if (v5)
  {
    v1 = v4;
  }

  else
  {
    v1 = 7104878;
  }

  if (v5)
  {
    v2 = v5;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x193AF28B0](v1, v2);

  MEMORY[0x193AF28B0](15904, 0xE200000000000000);
  return 0;
}

uint64_t sub_190B9D8E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD5EAC8);
  __swift_project_value_buffer(v10, qword_1EAD5EAC8);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t static ConversationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51E88 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD5EAC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ConversationEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v18 - v3;
  v4 = sub_190D511B0();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D511C0();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_190D51460();
  v19 = *(v13 - 8);
  v20 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  sub_190D56E90();
  sub_190D56E80();
  v18 = v1;
  sub_190D506F0();
  sub_190D56E70();

  sub_190D56E80();
  sub_190D51450();
  sub_190D56E90();
  sub_190D56E80();
  sub_190D506F0();
  v26 = MEMORY[0x1E69E7CC0];
  sub_190BA063C(&qword_1EAD54E70, MEMORY[0x1E69686F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E78);
  sub_190233640(&qword_1EAD54E80, &qword_1EAD54E78);
  sub_190D58170();
  sub_190D56E60();
  (*(v23 + 8))(v6, v4);
  (*(v21 + 8))(v9, v22);
  sub_190D56E80();
  sub_190D51450();
  (*(v19 + 56))(v12, 0, 1, v20);
  v16 = type metadata accessor for ConversationEntity();
  sub_19022FD14(v18 + *(v16 + 52), v24, &qword_1EAD55080);
  return sub_190D50B70();
}

uint64_t type metadata accessor for ConversationEntity()
{
  result = qword_1EAD45D40;
  if (!qword_1EAD45D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190B9E15C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB88);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB90);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  __swift_allocate_value_buffer(v5, qword_1EAD5EAE0);
  __swift_project_value_buffer(v5, qword_1EAD5EAE0);
  type metadata accessor for ConversationEntity();
  sub_190BA063C(&qword_1EAD45D90, type metadata accessor for ConversationEntity);
  sub_190D50C60();
  sub_190D50C50();
  (*(v1 + 104))(v3, *MEMORY[0x1E695A4D8], v0);
  sub_190D50C30();
  (*(v1 + 8))(v3, v0);
  sub_190D50C50();
  return sub_190D50C70();
}

uint64_t static ConversationEntity.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51E90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  v3 = __swift_project_value_buffer(v2, qword_1EAD5EAE0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ConversationEntity.urlRepresentation.setter(uint64_t a1)
{
  if (qword_1EAD51E90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  v3 = __swift_project_value_buffer(v2, qword_1EAD5EAE0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ConversationEntity.urlRepresentation.modify())()
{
  if (qword_1EAD51E90 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  __swift_project_value_buffer(v0, qword_1EAD5EAE0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_190B9E5F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51E90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  v3 = __swift_project_value_buffer(v2, qword_1EAD5EAE0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_190B9E6C4(uint64_t a1)
{
  if (qword_1EAD51E90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EAF8);
  v3 = __swift_project_value_buffer(v2, qword_1EAD5EAE0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ConversationEntity.id.getter()
{
  v1 = *v0;
  sub_190D52690();
  return v1;
}

uint64_t ConversationEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_190B9E9B0()
{
  sub_190BA063C(&qword_1EAD5EB68, type metadata accessor for ConversationEntity);
  v1 = sub_190D50C00();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_190B9EAC8(uint64_t a1)
{
  v2 = sub_190BA063C(&qword_1EAD45D90, type metadata accessor for ConversationEntity);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_190B9EB90(uint64_t a1)
{
  v2 = sub_190BA063C(&qword_1EAD45D60, type metadata accessor for ConversationEntity);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_190B9EC1C()
{
  result = qword_1EAD5EB18;
  if (!qword_1EAD5EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EB18);
  }

  return result;
}

uint64_t sub_190B9EC70()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E350);
  __swift_project_value_buffer(v6, qword_1EAD9E350);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190B9EE58()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E368);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E368);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190B9EF04(uint64_t a1)
{
  v2 = type metadata accessor for ConversationEntity();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190830594(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190D50820();
  return sub_1908305F8(a1);
}

void (*sub_190B9EF94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D50800();
  return sub_19090C0F8;
}

uint64_t sub_190B9F008(uint64_t a1, uint64_t a2)
{
  v4 = sub_190BA0594();
  v5 = sub_190BA063C(&qword_1EAD5EB68, type metadata accessor for ConversationEntity);

  return MEMORY[0x1EEDB3C88](a1, v4, a2, v5);
}

unint64_t sub_190B9F0A4()
{
  result = qword_1EAD459B8;
  if (!qword_1EAD459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD459B8);
  }

  return result;
}

unint64_t sub_190B9F0FC()
{
  result = qword_1EAD459C8;
  if (!qword_1EAD459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD459C8);
  }

  return result;
}

unint64_t sub_190B9F154()
{
  result = qword_1EAD5EB20;
  if (!qword_1EAD5EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EB20);
  }

  return result;
}

uint64_t sub_190B9F1FC(uint64_t a1)
{
  v2 = sub_190BA0594();

  return MEMORY[0x1EEDB2E78](a1, v2);
}

uint64_t sub_190B9F270@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_190B9F318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB78);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB80);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190B9F4B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_190BA0594();
  v6 = sub_190BA05E8();
  v7 = sub_190BA063C(&qword_1EAD5EB68, type metadata accessor for ConversationEntity);
  *v4 = v2;
  v4[1] = sub_190B9F5B0;

  return MEMORY[0x1EEDB3C90](a2, v5, v6, v7);
}

uint64_t sub_190B9F5B0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_190B9F6B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190B9FF34();
  *a1 = result;
  return result;
}

uint64_t sub_190B9F6E0(uint64_t a1)
{
  v2 = sub_1909D5058();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_190B9F744()
{
  sub_190B9FB54(319, &qword_1EAD46360, &qword_1EAD53C50, &unk_190DE54D0, sub_190B9F938);
  if (v0 <= 0x3F)
  {
    sub_190B9F9BC();
    if (v1 <= 0x3F)
    {
      sub_190B9FAF4(319, &qword_1EAD46368, sub_1908990A4);
      if (v2 <= 0x3F)
      {
        sub_190B9FA60();
        if (v3 <= 0x3F)
        {
          sub_190B9FAF4(319, &qword_1EAD46358, sub_1909D5304);
          if (v4 <= 0x3F)
          {
            sub_190B9FB54(319, &qword_1EAD46350, &qword_1EAD5EB38, &unk_190DF7BC8, sub_190B9FBC4);
            if (v5 <= 0x3F)
            {
              sub_190B9FB54(319, &qword_1EAD46370, &unk_1EAD5E5D0, &unk_190DE0210, sub_190B9FC48);
              if (v6 <= 0x3F)
              {
                sub_190B9FCFC();
                if (v7 <= 0x3F)
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

unint64_t sub_190B9F938()
{
  result = qword_1EAD45180;
  if (!qword_1EAD45180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53C50);
    sub_1908990A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45180);
  }

  return result;
}

void sub_190B9F9BC()
{
  if (!qword_1EAD5EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EB30);
    sub_190233640(&qword_1EAD46338, &qword_1EAD5EB30);
    v0 = sub_190D507F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5EB28);
    }
  }
}

void sub_190B9FA60()
{
  if (!qword_1EAD46378)
  {
    sub_190D511C0();
    sub_190BA063C(&unk_1EAD46310, MEMORY[0x1E6968848]);
    v0 = sub_190D507F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46378);
    }
  }
}

void sub_190B9FAF4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_190D507F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190B9FB54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    a5();
    v7 = sub_190D507F0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_190B9FBC4()
{
  result = qword_1EAD45108;
  if (!qword_1EAD45108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5EB38);
    sub_190825038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45108);
  }

  return result;
}

unint64_t sub_190B9FC48()
{
  result = qword_1EAD462E0;
  if (!qword_1EAD462E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5E5D0);
    sub_190BA063C(&qword_1EAD462F8, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD462E0);
  }

  return result;
}

void sub_190B9FCFC()
{
  if (!qword_1EAD46348)
  {
    sub_190D50B50();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46348);
    }
  }
}

uint64_t sub_190B9FD64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_190B9FE10;

  return sub_190830654(a2);
}

uint64_t sub_190B9FE10(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_190B9FF10, 0, 0);
}

uint64_t sub_190B9FF34()
{
  v0 = sub_190D50C80();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = v28 - v9;
  v10 = sub_190D51440();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v28[0] = sub_190D51460();
  v16 = *(v28[0] - 8);
  MEMORY[0x1EEE9AC00](v28[0]);
  v28[1] = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v28[2] = v28 - v19;
  v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB50);
  sub_190D56E50();
  sub_190D51980();
  v20 = *MEMORY[0x1E6968DF0];
  v21 = *(v11 + 104);
  v21(v13, v20, v10);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v21(v13, v20, v10);
  v22 = v35;
  sub_190D51470();
  (*(v16 + 56))(v22, 0, 1, v28[0]);
  v23 = type metadata accessor for ConversationEntity();
  (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  sub_190D56E50();
  *v13 = sub_190ADD800();
  v21(v13, *MEMORY[0x1E6968E00], v10);
  sub_190D51980();
  sub_190D51470();
  v24 = v30;
  sub_190D505A0();
  v25 = sub_190D50590();
  v26 = *(*(v25 - 8) + 56);
  v26(v24, 0, 1, v25);
  v26(v31, 1, 1, v25);
  (*(v33 + 104))(v32, *MEMORY[0x1E695A500], v34);
  sub_190BA063C(&qword_1EAD45D90, type metadata accessor for ConversationEntity);
  return sub_190D50890();
}

unint64_t sub_190BA0594()
{
  result = qword_1EAD5EB58;
  if (!qword_1EAD5EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EB58);
  }

  return result;
}

unint64_t sub_190BA05E8()
{
  result = qword_1EAD5EB60;
  if (!qword_1EAD5EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EB60);
  }

  return result;
}

uint64_t sub_190BA063C(unint64_t *a1, void (*a2)(uint64_t))
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

void SendMenuViewController.updateScrollViewEdgeEffects(forCell:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = [objc_opt_self() sharedFeatureFlags];
  v7 = [v6 isPopoverSendMenuEnabled];

  if ((v7 & 1) == 0)
  {
    v8 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
    swift_beginAccess();
    sub_190866DA0(v1 + v8, v5);
    v9 = sub_190D518A0();
    LODWORD(v8) = (*(*(v9 - 8) + 48))(v5, 1, v9);
    sub_19022EEA4(v5, &unk_1EAD58460);
    if (v8 == 1)
    {
      v10 = sub_19097C1B4();
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [a1 center];
      SendMenuViewController.calculatePercentEdgeEffected(forCenterPoint:inCollectionViewBounds:)(v19, v20, v12, v14, v16, v18);
      v22 = v21 * 5.0;
      v23 = v21 * -0.3;
      v24 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
      swift_beginAccess();
      *&a1[v24] = v22;
      v25 = 0.0;
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      v27 = 0.0;
      if (!IsReduceTransparencyEnabled)
      {
        v28 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
        swift_beginAccess();
        v27 = *&a1[v28];
        if (v27 <= *&a1[v24])
        {
          v27 = *&a1[v24];
        }
      }

      v29 = v23 + 1.0;
      sub_190A18960(v27);
      v30 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
      swift_beginAccess();
      *&a1[v30] = v22;
      if (!UIAccessibilityIsReduceTransparencyEnabled())
      {
        v31 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
        swift_beginAccess();
        if (*&a1[v31] > *&a1[v30])
        {
          v25 = *&a1[v31];
        }

        else
        {
          v25 = *&a1[v30];
        }
      }

      sub_190A18960(v25);
      v32 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
      swift_beginAccess();
      *&a1[v32] = v29;
      v33 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
      swift_beginAccess();
      v34 = *&a1[v33];
      v35 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
      swift_beginAccess();
      v36 = *&a1[v35];
      if (v34 >= v29)
      {
        v37 = v29;
      }

      else
      {
        v37 = v34;
      }

      if (v36 >= v37)
      {
        v36 = v37;
      }

      [*&a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel] setAlpha_];
      v38 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
      swift_beginAccess();
      *&a1[v38] = v29;
      v39 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
      swift_beginAccess();
      v40 = *&a1[v39];
      if (v40 >= v29)
      {
        v40 = v29;
      }

      if (*&a1[v35] >= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = *&a1[v35];
      }

      [*&a1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView] setAlpha_];
      v42 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
      swift_beginAccess();
      v44 = *&a1[v42];
      if (v44)
      {
        *&v43 = v41;
        [v44 setOpacity_];
      }
    }
  }
}

void SendMenuViewController.collectionView(_:didSelectItemAt:)(void *a1)
{
  v2 = sub_190D51BB0();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_19097C3AC();
  sub_190D533E0();

  if (v7)
  {
    sub_190A02D1C(v6, v7, &v4);

    if (v5)
    {
      sub_19029058C(&v4, &v6);
      sub_19097FCD4(&v6);
      __swift_destroy_boxed_opaque_existential_0(&v6);
    }

    else
    {
      sub_19022EEA4(&v4, &qword_1EAD5A050);
    }
  }
}

Swift::Void __swiftcall SendMenuViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isPopoverSendMenuEnabled];

  if ((v2 & 1) == 0)
  {

    SendMenuViewController.updateVisibleCellsForScrollPosition()();
  }
}

Swift::Void __swiftcall SendMenuViewController.updateVisibleCellsForScrollPosition()()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPopoverSendMenuEnabled];

  if (v1)
  {
    return;
  }

  v2 = sub_19097C1B4();
  v3 = [v2 visibleCells];
  sub_190BA12F4();
  v4 = sub_190D57180();

  if (v4 >> 62)
  {
    v5 = sub_190D581C0();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x193AF3B90](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        type metadata accessor for SendMenuCollectionViewCell();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          SendMenuViewController.updateScrollViewEdgeEffects(forCell:)(v9);
        }
      }
    }
  }
}

uint64_t sub_190BA0EF0()
{
  v0 = sub_19097C3AC();
  sub_190D533E0();

  if (!v8)
  {
    goto LABEL_5;
  }

  sub_190A02D1C(v7, v8, &v5);

  if (!v6)
  {
    sub_19022EEA4(&v5, &qword_1EAD5A050);
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  sub_19029058C(&v5, &v7);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1(&v7, v9);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(&v7);
  return v3 & 1;
}

uint64_t sub_190BA0FDC(void *a1)
{
  v2 = sub_190D51C00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v6 = a1;
  v7 = sub_190BA0EF0();

  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void SendMenuViewController.calculatePercentEdgeEffected(forCenterPoint:inCollectionViewBounds:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = [objc_opt_self() sharedFeatureFlags];
  v12 = [v11 isPopoverSendMenuEnabled];

  if ((v12 & 1) == 0)
  {
    v13 = [*&v6[OBJC_IVAR___CKSendMenuViewController_presentationContext] presentationStyle];
    if (v13 == 1)
    {
      v14 = [objc_opt_self() sharedBehaviors];
      if (v14)
      {
        v15 = v14;
        [v14 sendMenuCollectionViewBottomContentInset];

LABEL_8:
        v18.origin.x = a3;
        v18.origin.y = a4;
        v18.size.width = a5;
        v18.size.height = a6;
        CGRectGetMinY(v18);
        v19.origin.x = a3;
        v19.origin.y = a4;
        v19.size.width = a5;
        v19.size.height = a6;
        CGRectGetMaxY(v19);
        return;
      }

      __break(1u);
    }

    else
    {
      if (v13)
      {
LABEL_12:
        sub_190D58510();
        __break(1u);
        return;
      }

      v16 = [v6 view];
      if (v16)
      {
        v17 = v16;
        [v16 safeAreaInsets];

        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }
}

unint64_t sub_190BA12F4()
{
  result = qword_1EAD44FF0;
  if (!qword_1EAD44FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44FF0);
  }

  return result;
}

uint64_t sub_190BA134C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_190BA1398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

void (*sub_190BA1420(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

unint64_t sub_190BA14AC()
{
  result = qword_1EAD5EBC8;
  if (!qword_1EAD5EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EBC8);
  }

  return result;
}

uint64_t sub_190BA1500(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v72 = a4;
  v75 = a3;
  v76 = a1;
  v73 = a6;
  v7 = ~a6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD0);
  v8 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v65 = &v65 - v9;
  v80 = sub_190D53DD0();
  v10 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v65 - v17);
  v78 = sub_190D53ED0();
  v19 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - v27;
  v29 = 0.0;
  v31 = v30;
  if (v7)
  {
    v32 = *&v75;
    v33 = *&a5;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v32 = 0.0;
    v33 = 0.0;
  }

  v34 = v78;
  (*(v19 + 16))(v24, v76, v78, v26);
  (*(v19 + 32))(v21, v24, v34);
  sub_1908553A8(&qword_1EAD54820);
  sub_190D57130();
  v68 = *(v31 + 36);
  *&v28[v68] = 0;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810) + 36);
  sub_1908553A8(&qword_1EAD54818);
  v76 = 0;
  v69 = (v10 + 16);
  v36 = (v10 + 32);
  v74 = (v8 + 48);
  v75 = (v8 + 56);
  v37 = v35;
  v38 = (v10 + 8);
  v39 = 0.0;
  v40 = v65;
  v41 = v28;
  v67 = v18;
  v66 = v38;
  while (1)
  {
    sub_190D57530();
    if (*(v41 + v37) == v82[0])
    {
      v43 = 1;
      v44 = v79;
      v45 = v77;
      goto LABEL_11;
    }

    v46 = sub_190D57560();
    v47 = v70;
    v48 = v80;
    (*v69)(v70);
    v46(v82, 0);
    v49 = v37;
    sub_190D57540();
    v44 = v79;
    v50 = *(v79 + 48);
    v51 = v76;
    *v40 = v76;
    result = (*v36)(&v40[v50], v47, v48);
    v53 = __OFADD__(v51, 1);
    v54 = v51 + 1;
    if (v53)
    {
      break;
    }

    v76 = v54;
    *(v41 + v68) = v54;
    v45 = v77;
    sub_19081E40C(v40, v77, &qword_1EAD5EBD0);
    v43 = 0;
    v37 = v49;
    v18 = v67;
    v38 = v66;
LABEL_11:
    (*v75)(v45, v43, 1, v44);
    sub_19081E40C(v45, v18, &qword_1EAD5EBD8);
    if ((*v74)(v18, 1, v44) == 1)
    {
      return sub_190BA22D0(v41);
    }

    v55 = *v18;
    v56 = v18 + *(v44 + 48);
    v57 = v71;
    v58 = v80;
    (*v36)(v71, v56, v80);
    sub_190D543A0();
    LOBYTE(v82[0]) = v59 & 1;
    v81 = v60 & 1;
    sub_190D53DB0();
    v62 = v61;
    v64 = v63;
    (*v38)(v57, v58);
    if (v64 > v29)
    {
      v29 = v64;
    }

    if ((v73 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (v55 == v72)
    {
      v39 = v33 + v39;
      v42 = 0.0;
      if (v72 > 0)
      {
LABEL_6:
        v39 = v39 + v42;
      }
    }

    else if (v55 < v72)
    {
LABEL_5:
      v39 = v39 + v62;
      v42 = v32;
      if (v55 >= 1)
      {
        goto LABEL_6;
      }
    }

    else if (v55 > 0)
    {
      v39 = v39 + 0.0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190BA1BD0(uint64_t (**a1)(char *, char *, uint64_t), double a2, uint64_t a3, void (**a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, int a7)
{
  v69 = *&a6;
  v61 = a5;
  v68 = a4;
  v72 = a1;
  v66 = a7;
  LODWORD(v71) = ~a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v73 = sub_190D53DD0();
  v62 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v58 - v18);
  v20 = sub_190D53ED0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v58 - v29;
  if (v71)
  {
    v31 = *&v68;
    v32 = v69;
  }

  else
  {
    v61 = 0;
    v66 = 0;
    v31 = 0.0;
    v32 = 0.0;
  }

  (*(v21 + 16))(v26, v72, v20, v28);
  (*(v21 + 32))(v23, v26, v20);
  sub_1908553A8(&qword_1EAD54820);
  sub_190D57130();
  v58 = *(v27 + 36);
  *&v30[v58] = 0;
  v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810) + 36);
  v33 = sub_1908553A8(&qword_1EAD54818);
  v69 = 0.0;
  v59 = (v62 + 2);
  v72 = (v62 + 4);
  v67 = (v9 + 48);
  v68 = (v9 + 56);
  v34 = v33;
  ++v62;
  v64 = v20;
  v63 = v19;
  while (1)
  {
    while (1)
    {
      sub_190D57530();
      if (*&v30[v71] == v75[0])
      {
        v35 = 1;
        v36 = v70;
      }

      else
      {
        v37 = sub_190D57560();
        v38 = v60;
        v39 = v73;
        (*v59)(v60);
        v37(v75, 0);
        sub_190D57540();
        v40 = *(v8 + 48);
        v41 = v69;
        *v11 = v69;
        result = (*v72)(&v11[v40], v38, v39);
        if (__OFADD__(*&v41, 1))
        {
          goto LABEL_19;
        }

        *&v69 = *&v41 + 1;
        *&v30[v58] = *&v41 + 1;
        v36 = v70;
        sub_19081E40C(v11, v70, &qword_1EAD5EBD0);
        v35 = 0;
      }

      (*v68)(v36, v35, 1, v8);
      sub_19081E40C(v36, v19, &qword_1EAD5EBD8);
      if ((*v67)(v19, 1, v8) == 1)
      {
        return sub_190BA22D0(v30);
      }

      v43 = *v19;
      v44 = v65;
      (*v72)(v65, v19 + *(v8 + 48), v73);
      sub_190D543A0();
      LOBYTE(v75[0]) = v45 & 1;
      v74 = v46 & 1;
      sub_190D53DB0();
      v48 = v47;
      sub_190D543A0();
      v50 = v49;
      v51 = v34;
      v52 = v11;
      v53 = v8;
      v55 = v54;
      sub_190D56660();
      LOBYTE(v75[0]) = v50 & 1;
      v56 = v55 & 1;
      v8 = v53;
      v11 = v52;
      v34 = v51;
      v74 = v56;
      sub_190D53DC0();
      v19 = v63;
      result = (*v62)(v44, v73);
      if (v66)
      {
        break;
      }

LABEL_5:
      a2 = a2 + v31 + v48;
    }

    v57 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v57 == v61)
    {
      a2 = v32 + a2;
    }

    else if (v61 >= v57)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_190BA22D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CollapsableLayout.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CollapsableLayout.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_190BA23EC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) chat];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_190BA25D8;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_190840E6C;
    v9[3] = &block_descriptor_97;
    v5 = _Block_copy(v9);

    v6 = [v3 ktClearWarningAlertControllerForChat:v2 confirmationHandler:v5];
    _Block_release(v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong presentViewController:v6 animated:1 completion:0];
    }
  }
}

void sub_190BA2550()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_190BA2600()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_190BA2728;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBF0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_190843AB8;
  v0[21] = &block_descriptor_3_3;
  v0[22] = v2;
  [v1 reportToAppleViewControllerWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190BA2728()
{

  return MEMORY[0x1EEE6DFA0](sub_190BA2808, 0, 0);
}

uint64_t sub_190BA2808()
{
  v1 = v0[26];
  v0[28] = v1;
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[29] = Strong;
    if (Strong)
    {
      v3 = Strong;
      v0[10] = v0;
      v0[11] = sub_190BA2994;
      v4 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_19088DB28;
      v0[21] = &block_descriptor_6_10;
      v0[22] = v4;
      [v3 presentViewController:v1 animated:1 completion:v0 + 18];

      return MEMORY[0x1EEE6DEC8](v0 + 10);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_190BA2994()
{

  return MEMORY[0x1EEE6DFA0](sub_190BA2A74, 0, 0);
}

uint64_t sub_190BA2A74()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190BA2AF8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D670);
  __swift_project_value_buffer(v0, qword_1EAD9D670);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190BA2B60()
{
  v7 = sub_190D57860();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D57840();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_190D567A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1902188FC(0, &qword_1EAD46670);
  sub_190D56790();
  v8 = MEMORY[0x1E69E7CC0];
  sub_190BA3E70(&qword_1EAD45058, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC08);
  sub_190BA3EB8(&qword_1EAD45128, &qword_1EAD5EC08);
  sub_190D58170();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_190D57890();
  qword_1EAD450D8 = result;
  return result;
}

void sub_190BA2DC0()
{
  v0 = sub_190D56ED0();
  v1 = sub_190D56ED0();
  v2 = PPSCreateTelemetryIdentifier();

  qword_1EAD450E0 = v2;
}

uint64_t static CKPowerLog.sendTranscriptVisibilityChangedEvent(_:event:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = sub_190D56770();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_190D567A0();
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D51840();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD450D0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EAD450D8;
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 2) = v22;
  *(v16 + 3) = v17;
  *(v16 + 4) = a3;
  (*(v12 + 32))(&v16[v15], v14, v11);
  aBlock[4] = sub_190BA36D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_98;
  v18 = _Block_copy(aBlock);
  sub_190D52690();
  sub_190D56790();
  v25 = MEMORY[0x1E69E7CC0];
  sub_190BA3E70(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190BA3EB8(&qword_1EAD46730, &unk_1EAD546A0);
  sub_190D58170();
  MEMORY[0x193AF3110](0, v10, v7, v18);
  _Block_release(v18);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);
}

void sub_190BA3208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAD450E8 != -1)
  {
    swift_once();
  }

  if (qword_1EAD450E0)
  {
    if (a2)
    {
      v5 = 0x756F72676B636162;
    }

    else
    {
      v5 = 0x756F726765726F66;
    }

    if (qword_1EAD46188 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D670);
    sub_190D52690();
    v7 = sub_190D53020();
    v8 = sub_190D576C0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29[0] = v10;
      *v9 = 136315138;
      v11 = sub_19021D9F8(v5, 0xEA0000000000646ELL, v29);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_19020E000, v7, v8, "CKPowerLog: Logging transcript visibility changed to %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    else
    {
    }

    if (a3)
    {
      if (*(a3 + 16))
      {
        v12 = sub_19022DCEC(0x614E726574736F70, 0xEA0000000000656DLL);
        if (v13)
        {
          sub_19021834C(*(a3 + 56) + 32 * v12, v29);
          if (swift_dynamicCast())
          {
            sub_190D52690();
            v14 = sub_190D53020();
            v15 = sub_190D576C0();

            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              log = v14;
              v17 = swift_slowAlloc();
              v29[0] = v17;
              *v16 = 136315138;
              v18 = sub_19021D9F8(v27, v28, v29);

              *(v16 + 4) = v18;
              _os_log_impl(&dword_19020E000, log, v15, "CKPowerLog: Logging poster change to %s", v16, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v17);
              MEMORY[0x193AF7A40](v17, -1, -1);
              MEMORY[0x193AF7A40](v16, -1, -1);
            }

            else
            {
            }
          }
        }
      }
    }

    sub_190D517C0();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1DA0;
    strcpy((inited + 32), "timestampValue");
    *(inited + 47) = -18;
    v22 = MEMORY[0x1E69E63B0];
    *(inited + 48) = v20;
    *(inited + 72) = v22;
    *(inited + 80) = 0x746E657665;
    *(inited + 120) = MEMORY[0x1E69E6530];
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = a2 != 0;
    v23 = sub_190820FDC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DF00);
    swift_arrayDestroy();
    if (a3)
    {
      sub_190D52690();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29[0] = v23;
      sub_190BA3ACC(a3, sub_190BA3930, 0, isUniquelyReferenced_nonNull_native, v29);

      v23 = v29[0];
    }

    sub_190A8EC70(v23);

    v25 = sub_190D56D60();

    PPSSendTelemetry();
  }
}

void sub_190BA36D0()
{
  sub_190D51840();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_190BA3208(v1, v2, v3);
}

CKPowerLog __swiftcall CKPowerLog.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_190BA3930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_19021834C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return sub_190D52690();
}

uint64_t sub_190BA397C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_19021834C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_190824530(v21, &v23);
    result = sub_190D52690();
    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_190BA3E08(v21);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_190BA3ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;
  sub_190D52690();
  sub_190D50920();
  sub_190BA397C(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_190824530(v47, v45);
  v14 = *a5;
  result = sub_19022DCEC(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_190B62AD0(v20, a4 & 1);
    result = sub_19022DCEC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_190D587C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_190B67DE8();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_19021834C(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0(v25 + v24);
    sub_190824530(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_190824530(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_190BA397C(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_190824530(v47, v45);
        v34 = *a5;
        result = sub_19022DCEC(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_190B62AD0(v38, 1);
          result = sub_19022DCEC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_19021834C(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0(v33 + v32);
          sub_190824530(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_190824530(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_190BA397C(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_190219C78();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_190BA3E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190BA3E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190BA3EB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_190BA3F0C()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v2 = sub_190822BC4(v0);
  v3 = sub_190822BC4(v0);
  LOBYTE(xmmword_1EAD9E380) = 0;
  result = 0.0;
  *(&xmmword_1EAD9E380 + 8) = 0u;
  *&algn_1EAD9E390[8] = 0u;
  qword_1EAD9E3A8 = v1;
  *&xmmword_1EAD9E3B0 = v2;
  *(&xmmword_1EAD9E3B0 + 8) = 0u;
  *(&xmmword_1EAD9E3C0 + 8) = 0u;
  *(&xmmword_1EAD9E3D0 + 8) = 0u;
  *(&xmmword_1EAD9E3E0 + 8) = 0u;
  *(&xmmword_1EAD9E3F0 + 8) = 0u;
  *(&xmmword_1EAD9E400 + 8) = 0u;
  qword_1EAD9E418 = v3;
  qword_1EAD9E420 = 0;
  return result;
}

void sub_190BA3F90(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = v4;
  v12 = sub_190D52E90();
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_63;
  }

  v7[2] = v17;
  v18 = v7[4];
  v16 = __OFADD__(v18, a1);
  v19 = v18 + a1;
  if (v16)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v83 = a1;
  v7[4] = v19;
  v20 = v7[5];
  v82 = v7[6];
  v6 = sub_190BAC150(a4, a3 & 1);
  v5 = v21;
  if (sub_190D56F10() == v6 && v22 == v5)
  {

    goto LABEL_10;
  }

  v80 = a4;
  v24 = sub_190D58760();

  if (v24)
  {
LABEL_10:

    v25 = sub_190D56F10();
    if (*(v20 + 16))
    {
      v12 = v26;
      v5 = sub_19022DCEC(v25, v26);
      v14 = v27;

      if (v14)
      {
        v28 = *(*(v20 + 56) + 8 * v5);
        v29 = v28 + v83;
        if (!__OFADD__(v28, v83))
        {
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_23;
      }

      v29 = v83;
    }

    else
    {

      v29 = v83;
    }

LABEL_33:
    v39 = sub_190D56F10();
    v41 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = v7[5];
    sub_190C1C7B8(v29, v39, v41, isUniquelyReferenced_nonNull_native);

    v7[5] = v84;
    return;
  }

  if (sub_190D56F10() == v6 && v30 == v5)
  {
LABEL_23:

    goto LABEL_24;
  }

  v32 = sub_190D58760();

  if (v32)
  {
LABEL_24:

    v33 = sub_190D56F10();
    if (*(v20 + 16))
    {
      v12 = v34;
      v5 = sub_19022DCEC(v33, v34);
      v14 = v35;

      v36 = v83;
      if (v14)
      {
        v37 = *(*(v20 + 56) + 8 * v5);
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {

      v37 = 0;
      v36 = v83;
    }

    v29 = v37 + v36;
    if (!__OFADD__(v37, v36))
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

  if (sub_190D56F10() == v6 && v38 == v5)
  {

    goto LABEL_36;
  }

  v43 = sub_190D58760();

  if (v43)
  {
LABEL_36:
    v44 = v83;

    if (sub_190BA46A8(a2, v44))
    {
      return;
    }

    v45 = v7[5];
    v46 = sub_190D56F10();
    if (*(v45 + 16))
    {
      v12 = v47;
      v5 = sub_19022DCEC(v46, v47);
      v14 = v48;

      if (v14)
      {
        v49 = *(*(v45 + 56) + 8 * v5);
        goto LABEL_45;
      }
    }

    else
    {
    }

    v49 = 0;
LABEL_45:
    v29 = v49 + v44;
    if (!__OFADD__(v49, v44))
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

  if (sub_190D56F10() == v6 && v50 == v5)
  {
  }

  else
  {
    v51 = sub_190D58760();

    if ((v51 & 1) == 0)
    {
      if (qword_1EAD51F80 == -1)
      {
        goto LABEL_59;
      }

      goto LABEL_67;
    }
  }

  v52 = v83;

  v53 = sub_190D56F10();
  if (*(v20 + 16))
  {
    v12 = v54;
    v55 = sub_19022DCEC(v53, v54);
    v14 = v56;

    if (v14)
    {
      v57 = *(*(v20 + 56) + 8 * v55);
      goto LABEL_53;
    }
  }

  else
  {
  }

  v57 = 0;
LABEL_53:
  v5 = v57 + v52;
  if (__OFADD__(v57, v52))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_59:
    v68 = sub_190D53040();
    __swift_project_value_buffer(v68, qword_1EAD9E510);
    v69 = v81;
    (*(v81 + 16))(v14, v80, v12);
    sub_190D52690();
    v70 = sub_190D53020();
    v71 = sub_190D576A0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84 = v73;
      *v72 = 136315394;
      v74 = sub_19021D9F8(v6, v5, &v84);

      *(v72 + 4) = v74;
      *(v72 + 12) = 2080;
      sub_190BAD1F8(&qword_1EAD5EC30);
      v75 = sub_190D58720();
      v77 = v76;
      (*(v69 + 8))(v14, v12);
      v78 = sub_19021D9F8(v75, v77, &v84);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_19020E000, v70, v71, "Unknown IMAttachmentClass: %s for UTType: %s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v73, -1, -1);
      MEMORY[0x193AF7A40](v72, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v14, v12);
    }

    return;
  }

  v58 = sub_190D56F10();
  v60 = v59;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v7[5];
  sub_190C1C7B8(v5, v58, v60, v61);

  v7[5] = v84;
  v62 = v82;
  v63 = v80;
  if (*(v82 + 16) && (v64 = sub_190875BAC(v80), (v65 & 1) != 0) && (v66 = *(*(v62 + 56) + 8 * v64), v16 = __OFADD__(v66, v52), v52 += v66, v16))
  {
    __break(1u);
  }

  else
  {
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v7[6];
    sub_190C1CA28(v52, v63, v67);
    v7[6] = v84;
  }
}

uint64_t sub_190BA46A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D515C0();
  v11 = v10;
  v12 = sub_190D56ED0();
  v13 = &selRef_chatItemsChanged_;
  v14 = [v12 im_isLivePhoto];

  if (!v14)
  {
    goto LABEL_19;
  }

  v62 = v6;
  v63 = v8;
  v64 = v5;
  v65 = v14;
  v15 = v3[5];
  v14 = *MEMORY[0x1E69A5D88];
  v16 = sub_190D56F10();
  if (*(v15 + 16))
  {
    v5 = v17;
    v18 = sub_19022DCEC(v16, v17);
    v6 = v19;

    if (v6)
    {
      v20 = *(*(v15 + 56) + 8 * v18);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_7:
  v21 = v20 + a2;
  if (__OFADD__(v20, a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = sub_190D56F10();
  v6 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v3[5];
  sub_190C1C7B8(v21, v5, v6, isUniquelyReferenced_nonNull_native);

  v3[5] = v66;
  v24 = v3[14];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3[14] = v26;
  v27 = v3[16];
  v25 = __OFADD__(v27, a2);
  v28 = v27 + a2;
  if (v25)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_15:
    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD9E510);
    sub_190D52690();
    sub_190D52690();
    v35 = sub_190D53020();
    v36 = sub_190D576A0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v5;
      v38 = v21;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66 = v40;
      *v39 = 136315394;
      v41 = sub_19021D9F8(v38, a2, &v66);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2080;
      v42 = sub_19021D9F8(v9, v11, &v66);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_19020E000, v35, v36, "Found a purgeable image counterpart '%s' to a non-purgeable live photo video: '%s'", v39, 0x16u);
      swift_arrayDestroy();
      v43 = v40;
      v14 = v65;
      MEMORY[0x193AF7A40](v43, -1, -1);
      MEMORY[0x193AF7A40](v39, -1, -1);

      (*(v6 + 8))(v37, v64);
    }

    else
    {

      (*(v6 + 8))(v5, v13);
    }

    return v14;
  }

  v3[16] = v28;
  v29 = sub_190D56ED0();
  v30 = [v29 im_livePhotoImagePath];

  if (!v30)
  {

    return v65;
  }

  v21 = sub_190D56F10();
  a2 = v31;
  v32 = [v30 im_isLivePhoto];

  v14 = v65;
  if (!v32)
  {

LABEL_19:

    return v14;
  }

  v5 = v63;
  sub_190D51550();
  v33 = sub_190D514E0();
  if (v33 == 2 || (v33 & 1) != 0)
  {
    v13 = v64;
    v6 = v62;
    if (qword_1EAD51F80 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

  v45 = v21;

  v46 = sub_190D51510();
  v47 = v64;
  v48 = v62;
  if (v49)
  {
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v50 = sub_190D53040();
    __swift_project_value_buffer(v50, qword_1EAD9E510);
    sub_190D52690();
    v51 = sub_190D53020();
    v52 = sub_190D576A0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66 = v54;
      *v53 = 136315138;
      v55 = sub_19021D9F8(v45, a2, &v66);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_19020E000, v51, v52, "Failed to get live photo image size from url: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x193AF7A40](v54, -1, -1);
      MEMORY[0x193AF7A40](v53, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v63, v47);
    return v14;
  }

  v56 = v46;
  (*(v62 + 8))(v5, v64);

  if (v56 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v57 = v3[17];
  v25 = __OFADD__(v57, v56);
  v58 = v57 + v56;
  if (v25)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v3[17] = v58;
  v59 = v3[13];
  v25 = __OFADD__(v59, 1);
  v60 = v59 + 1;
  if (!v25)
  {
    v3[13] = v60;
    return v14;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_190BA4CA4()
{
  *(v0 + 24) = sub_190B93088(0x179A7B0001) + 1024000000;
  *(v0 + 32) = sub_190B93088(0x179A7B0001) + 1024000000;
  v1 = *(v0 + 40);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v36 = *(v0 + 40);
  sub_190D52690();
  v9 = 0;
  v35 = v0;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (*(v36 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v13;
    v15 = v13[1];
    v38 = 0;
    sub_190D52690();
    while (1)
    {
      MEMORY[0x193AF7A60](&v38, 8);
      if (0x179A7B0001 * v38 >= 0x739A0749BLL)
      {
        break;
      }

      v38 = 0;
    }

    v37 = (v38 * 0x179A7B0001uLL) >> 64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 40);
    v38 = v17;
    v18 = v14;
    v19 = v14;
    v20 = v15;
    v21 = sub_19022DCEC(v19, v15);
    v23 = v17[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v17[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v21;
        sub_190B6893C();
        v21 = v33;
      }
    }

    else
    {
      sub_190B63ED8(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_19022DCEC(v18, v20);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }
    }

    v7 &= v7 - 1;
    v29 = v37 + 1024000000;
    if (v27)
    {
      v10 = v21;

      v11 = v38;
      *(*(v38 + 56) + 8 * v10) = v29;
    }

    else
    {
      v11 = v38;
      *(v38 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (v11[6] + 16 * v21);
      *v30 = v18;
      v30[1] = v20;
      *(v11[7] + 8 * v21) = v29;
      v31 = v11[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v11[2] = v32;
    }

    v0 = v35;
    *(v35 + 40) = v11;
    v9 = v12;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *v0 = 1;
      return result;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

unint64_t sub_190BA4F40(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x626D617263537369;
    v4 = 0xD000000000000015;
    v5 = 0xD00000000000001DLL;
    if (a1 == 3)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7u)
  {
    v6 = 0xD000000000000011;
    if (a1 != 9)
    {
      v6 = 0xD00000000000002ELL;
    }

    if (a1 == 8)
    {
      return 0xD000000000000019;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    if (a1 != 6)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_190BA50B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190BACF90();
  sub_190D58900();
  LOBYTE(v12) = 0;
  sub_190D586C0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_190D586F0();
    LOBYTE(v12) = 2;
    sub_190D586F0();
    LOBYTE(v12) = 3;
    sub_190D586F0();
    LOBYTE(v12) = 4;
    sub_190D586F0();
    *&v12 = *(v3 + 40);
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC48);
    sub_190BAD0E0(&qword_1EAD5EC78);
    sub_190D586E0();
    *&v12 = *(v3 + 48);
    v15 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC20);
    sub_190BAD150();
    sub_190D586E0();
    v9 = *(v3 + 72);
    v12 = *(v3 + 56);
    v13 = v9;
    v14 = *(v3 + 88);
    v15 = 7;
    sub_190BAD23C();
    sub_190D586E0();
    v10 = *(v3 + 120);
    v12 = *(v3 + 104);
    v13 = v10;
    v14 = *(v3 + 136);
    v15 = 8;
    sub_190D586E0();
    *&v12 = *(v3 + 152);
    v15 = 9;
    sub_190D586E0();
    LOBYTE(v12) = 10;
    sub_190D586F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_190BA5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_190BAC48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_190BA549C(uint64_t a1)
{
  v2 = sub_190BACF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190BA54D8(uint64_t a1)
{
  v2 = sub_190BACF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_190BA5514@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_190BAC7F8(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

void *sub_190BA55A4(void *result, void *a2)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result[1];
  v3 = a2[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a2[2];
  v7 = result[2];
  v4 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a2[3];
  v10 = result[3];
  v4 = __OFADD__(v10, v9);
  v11 = v10 + v9;
  if (v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = a2[4];
  v13 = result[4];
  v4 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = a2[5];
  v16 = result[5];
  v4 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v4)
  {
    *result += *a2;
    result[1] = v5;
    result[2] = v8;
    result[3] = v11;
    result[4] = v14;
    result[5] = v17;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_190BA562C(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result[1];
  v3 = a2[1];
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a2[2];
  v7 = result[2];
  v4 = __OFSUB__(v7, v6);
  v8 = v7 - v6;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a2[3];
  v10 = result[3];
  v4 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = a2[4];
  v13 = result[4];
  v4 = __OFSUB__(v13, v12);
  v14 = v13 - v12;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = a2[5];
  v16 = result[5];
  v4 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (!v4)
  {
    *result -= *a2;
    result[1] = v5;
    result[2] = v8;
    result[3] = v11;
    result[4] = v14;
    result[5] = v17;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_190BA56B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51EB0 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_1EAD9E3F0;
  v13[8] = xmmword_1EAD9E400;
  v13[9] = unk_1EAD9E410;
  v2 = xmmword_1EAD9E3B0;
  v3 = xmmword_1EAD9E3C0;
  v13[4] = xmmword_1EAD9E3C0;
  v13[5] = xmmword_1EAD9E3D0;
  v4 = xmmword_1EAD9E3D0;
  v5 = xmmword_1EAD9E3E0;
  v13[6] = xmmword_1EAD9E3E0;
  v13[7] = xmmword_1EAD9E3F0;
  v13[0] = xmmword_1EAD9E380;
  v13[1] = *algn_1EAD9E390;
  v7 = xmmword_1EAD9E380;
  v6 = *algn_1EAD9E390;
  v8 = unk_1EAD9E3A0;
  v13[2] = unk_1EAD9E3A0;
  v13[3] = xmmword_1EAD9E3B0;
  v9 = unk_1EAD9E410;
  *(a1 + 128) = xmmword_1EAD9E400;
  *(a1 + 144) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v1;
  *a1 = v7;
  *(a1 + 16) = v6;
  v14 = qword_1EAD9E420;
  *(a1 + 160) = qword_1EAD9E420;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  return sub_190B6A9C4(v13, v12);
}

__n128 sub_190BA57DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, _OWORD *, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 144);
  v22[8] = *(a1 + 128);
  v22[9] = v5;
  v23 = *(a1 + 160);
  v6 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v6;
  v7 = *(a1 + 112);
  v22[6] = *(a1 + 96);
  v22[7] = v7;
  v8 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v8;
  v9 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v9;
  v10 = *(a2 + 144);
  v24[8] = *(a2 + 128);
  v24[9] = v10;
  v25 = *(a2 + 160);
  v11 = *(a2 + 80);
  v24[4] = *(a2 + 64);
  v24[5] = v11;
  v12 = *(a2 + 112);
  v24[6] = *(a2 + 96);
  v24[7] = v12;
  v13 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v13;
  v14 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v14;
  a3(v20, v22, v24);
  v15 = v20[9];
  *(a4 + 128) = v20[8];
  *(a4 + 144) = v15;
  *(a4 + 160) = v21;
  v16 = v20[5];
  *(a4 + 64) = v20[4];
  *(a4 + 80) = v16;
  v17 = v20[7];
  *(a4 + 96) = v20[6];
  *(a4 + 112) = v17;
  v18 = v20[1];
  *a4 = v20[0];
  *(a4 + 16) = v18;
  result = v20[3];
  *(a4 + 32) = v20[2];
  *(a4 + 48) = result;
  return result;
}

__n128 sub_190BA58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, _OWORD *, _OWORD *))
{
  v6 = *(a2 + 144);
  v25[8] = *(a2 + 128);
  v25[9] = v6;
  v26 = *(a2 + 160);
  v7 = *(a2 + 80);
  v25[4] = *(a2 + 64);
  v25[5] = v7;
  v8 = *(a2 + 112);
  v25[6] = *(a2 + 96);
  v25[7] = v8;
  v9 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v9;
  v10 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v10;
  v11 = *(a1 + 144);
  v23[8] = *(a1 + 128);
  v23[9] = v11;
  v24 = *(a1 + 160);
  v12 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v12;
  v13 = *(a1 + 112);
  v23[6] = *(a1 + 96);
  v23[7] = v13;
  v14 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v14;
  v15 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v15;
  a5(v21, v23, v25);
  sub_190BAACD4(v23);
  v16 = v21[9];
  *(a1 + 128) = v21[8];
  *(a1 + 144) = v16;
  *(a1 + 160) = v22;
  v17 = v21[5];
  *(a1 + 64) = v21[4];
  *(a1 + 80) = v17;
  v18 = v21[7];
  *(a1 + 96) = v21[6];
  *(a1 + 112) = v18;
  v19 = v21[1];
  *a1 = v21[0];
  *(a1 + 16) = v19;
  result = v21[3];
  *(a1 + 32) = v21[2];
  *(a1 + 48) = result;
  return result;
}

BOOL sub_190BA59C4(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v14 = a1[10].i64[0];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v16 = a2[10].i64[0];
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_190BA9B78(v13, v15);
}

uint64_t sub_190BA5A58()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000014, 0x8000000190E77CB0);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v1, v2);

  result = MEMORY[0x193AF28B0](0xD000000000000014, 0x8000000190E77CD0);
  v4 = *(v0 + 24);
  if (__OFADD__(v4, *(v0 + 32)))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_190D58720();
  MEMORY[0x193AF28B0](v5);

  MEMORY[0x193AF28B0](0xD00000000000001FLL, 0x8000000190E77CF0);
  v6 = sub_190D58720();
  MEMORY[0x193AF28B0](v6);

  MEMORY[0x193AF28B0](0xD000000000000028, 0x8000000190E77D10);
  v7 = sub_190D58720();
  MEMORY[0x193AF28B0](v7);

  MEMORY[0x193AF28B0](0xD000000000000033, 0x8000000190E77D40);
  v8 = *(v0 + 160);
  v9 = sub_190D58720();
  MEMORY[0x193AF28B0](v9);

  result = MEMORY[0x193AF28B0](0xD00000000000003CLL, 0x8000000190E77D80);
  if (__OFSUB__(v4, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_190D58720();
  MEMORY[0x193AF28B0](v10);

  result = MEMORY[0x193AF28B0](0xD000000000000011, 0x8000000190E77DC0);
  if (!__OFADD__(*(v0 + 8), *(v0 + 16)))
  {
    v11 = sub_190D58720();
    MEMORY[0x193AF28B0](v11);

    MEMORY[0x193AF28B0](0xD000000000000016, 0x8000000190E77DE0);
    v12 = sub_190D58720();
    MEMORY[0x193AF28B0](v12);

    MEMORY[0x193AF28B0](0xD00000000000001ALL, 0x8000000190E77E00);
    v13 = sub_190D58720();
    MEMORY[0x193AF28B0](v13);

    MEMORY[0x193AF28B0](0xD000000000000019, 0x8000000190E77E20);
    v14 = sub_190BA84C4();
    MEMORY[0x193AF28B0](v14);

    MEMORY[0x193AF28B0](0xD00000000000001CLL, 0x8000000190E77E40);
    v15 = sub_190BA84C4();
    MEMORY[0x193AF28B0](v15);

    MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E77E60);
    v16 = sub_190D58720();
    MEMORY[0x193AF28B0](v16);

    MEMORY[0x193AF28B0](0xD00000000000001ALL, 0x8000000190E77E90);
    v17 = sub_190D58720();
    MEMORY[0x193AF28B0](v17);

    MEMORY[0x193AF28B0](0xD00000000000001FLL, 0x8000000190E77EB0);
    v18 = sub_190D56DA0();
    MEMORY[0x193AF28B0](v18);

    return 0;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_190BA5EF8(uint64_t a1)
{
  v296 = sub_190D52E90();
  v292 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v293 = &v280 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v290 = &v280 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v302 = &v280 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v287 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v286 = &v280 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v294 = (&v280 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v291 = &v280 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v280 - v16;
  v18 = sub_190D515F0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v280 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v280 - v23;
  sub_19022FD14(a1, v17, &unk_1EAD55F20);
  p_name = &OBJC_PROTOCOL___UIVideoEditorControllerDelegatePrivate.name;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_19084CF50(v17);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    if (qword_1EAD51F80 != -1)
    {
      swift_once();
    }

    v26 = sub_190D53040();
    __swift_project_value_buffer(v26, qword_1EAD9E510);
    (*(v19 + 16))(v21, v24, v18);
    v27 = sub_190D53020();
    v28 = sub_190D57680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      *&v305[0] = v301;
      *v29 = 136315138;
      v30 = sub_190D515C0();
      v32 = v31;
      v33 = *(v19 + 8);
      v33(v21, v18);
      v34 = sub_19021D9F8(v30, v32, v305);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_19020E000, v27, v28, "%s", v29, 0xCu);
      v35 = v301;
      __swift_destroy_boxed_opaque_existential_0(v301);
      MEMORY[0x193AF7A40](v35, -1, -1);
      v36 = v29;
      p_name = (&OBJC_PROTOCOL___UIVideoEditorControllerDelegatePrivate + 8);
      MEMORY[0x193AF7A40](v36, -1, -1);

      v33(v24, v18);
    }

    else
    {

      v37 = *(v19 + 8);
      v37(v21, v18);
      v37(v24, v18);
    }
  }

  v38 = v297;
  v39 = (v297->isa & 1) == 0;
  v40 = 0x61726353202D3C20;
  if ((v297->isa & 1) == 0)
  {
    v40 = 0;
  }

  v285 = v40;
  if (v39)
  {
    v41 = 0xE000000000000000;
  }

  else
  {
    v41 = 0xEE002164656C626DLL;
  }

  if (p_name[496] != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v42 = sub_190D53040();
    v43 = __swift_project_value_buffer(v42, qword_1EAD9E510);
    sub_190B6A9C4(v38, v305);
    sub_190B6A9C4(v38, v305);
    v298 = v43;
    v44 = sub_190D53020();
    v45 = sub_190D57680();
    if (os_log_type_enabled(v44, v45))
    {
      break;
    }

    sub_190BAACD4(v38);
    sub_190BAACD4(v38);
LABEL_18:

    sub_190B6A9C4(v38, v305);
    sub_190B6A9C4(v38, v305);
    v55 = sub_190D53020();
    v56 = sub_190D57680();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v303[0] = v58;
      *v57 = 136315394;
      *&v305[0] = 0xD000000000000012;
      *(&v305[0] + 1) = 0x8000000190E78020;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v59 = sub_190D58100();
      v61 = sub_19021D9F8(v59, v60, v303);

      *(v57 + 4) = v61;
      v38 = v297;
      *(v57 + 12) = 2048;
      sub_190BAACD4(v38);
      *(v57 + 14) = v38[1];
      sub_190BAACD4(v38);
      _os_log_impl(&dword_19020E000, v55, v56, "      %s %lld", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x193AF7A40](v58, -1, -1);
      MEMORY[0x193AF7A40](v57, -1, -1);
    }

    else
    {
      sub_190BAACD4(v38);
      sub_190BAACD4(v38);
    }

    sub_190B6A9C4(v38, v305);
    sub_190B6A9C4(v38, v305);
    v62 = sub_190D53020();
    v63 = sub_190D57680();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v303[0] = v65;
      *v64 = 136315394;
      *&v305[0] = 0xD000000000000016;
      *(&v305[0] + 1) = 0x8000000190E78000;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v66 = sub_190D58100();
      v68 = sub_19021D9F8(v66, v67, v303);

      *(v64 + 4) = v68;
      v38 = v297;
      *(v64 + 12) = 2048;
      sub_190BAACD4(v38);
      *(v64 + 14) = v38[2];
      sub_190BAACD4(v38);
      _os_log_impl(&dword_19020E000, v62, v63, "      %s %lld", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x193AF7A40](v65, -1, -1);
      MEMORY[0x193AF7A40](v64, -1, -1);
    }

    else
    {
      sub_190BAACD4(v38);
      sub_190BAACD4(v38);
    }

    sub_190B6A9C4(v38, v305);
    v69 = sub_190D53020();
    v70 = sub_190D57680();
    sub_190BAACD4(v38);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v303[0] = v72;
      *v71 = 136315394;
      *&v305[0] = 0xD000000000000012;
      *(&v305[0] + 1) = 0x8000000190E77FE0;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v73 = sub_190D58100();
      v75 = sub_19021D9F8(v73, v74, v303);

      *(v71 + 4) = v75;
      v76 = v297;
      *(v71 + 12) = 2080;
      v77 = *(v76 + 24);
      v78 = *(v76 + 32);
      if (__OFADD__(v77, v78))
      {
        goto LABEL_101;
      }

      v79 = sub_190C3287C(v77 + v78);
      v81 = sub_19021D9F8(v79, v80, v303);

      *(v71 + 14) = v81;
      v38 = v297;
      _os_log_impl(&dword_19020E000, v69, v70, "    %s %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v72, -1, -1);
      MEMORY[0x193AF7A40](v71, -1, -1);
    }

    sub_190B6A9C4(v38, v305);
    sub_190D52690();
    v82 = sub_190D53020();
    v83 = sub_190D57680();
    sub_190BAACD4(v38);

    v84 = os_log_type_enabled(v82, v83);
    v301 = v41;
    if (v84)
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v303[0] = v86;
      *v85 = 136315650;
      *&v305[0] = 0xD00000000000001BLL;
      *(&v305[0] + 1) = 0x8000000190E77FC0;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v87 = sub_190D58100();
      v89 = sub_19021D9F8(v87, v88, v303);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      v90 = sub_190C3287C(v297[3].isa);
      v92 = sub_19021D9F8(v90, v91, v303);

      *(v85 + 14) = v92;
      v38 = v297;
      *(v85 + 22) = 2080;
      *(v85 + 24) = sub_19021D9F8(v285, v301, v303);
      _os_log_impl(&dword_19020E000, v82, v83, "      %s %s%s", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v86, -1, -1);
      MEMORY[0x193AF7A40](v85, -1, -1);
    }

    sub_190B6A9C4(v38, v305);
    sub_190D52690();
    v93 = sub_190D53020();
    v94 = sub_190D57680();
    sub_190BAACD4(v38);

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v303[0] = v96;
      *v95 = 136315650;
      *&v305[0] = 0xD00000000000001ELL;
      *(&v305[0] + 1) = 0x8000000190E77FA0;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v97 = sub_190D58100();
      v99 = sub_19021D9F8(v97, v98, v303);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      v100 = sub_190C3287C(v297[4].isa);
      v102 = sub_19021D9F8(v100, v101, v303);

      *(v95 + 14) = v102;
      v38 = v297;
      *(v95 + 22) = 2080;
      *(v95 + 24) = sub_19021D9F8(v285, v301, v303);
      _os_log_impl(&dword_19020E000, v93, v94, "      %s %s%s", v95, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v96, -1, -1);
      MEMORY[0x193AF7A40](v95, -1, -1);
    }

    sub_190B6A9C4(v38, v305);
    v103 = sub_190D53020();
    v104 = sub_190D57680();
    sub_190BAACD4(v38);
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v303[0] = v106;
      *v105 = 136315394;
      *&v305[0] = 0xD00000000000002FLL;
      *(&v305[0] + 1) = 0x8000000190E77F70;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v107 = sub_190D58100();
      v109 = sub_19021D9F8(v107, v108, v303);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2080;
      v110 = sub_190C3287C(v297[20].isa);
      v112 = sub_19021D9F8(v110, v111, v303);

      *(v105 + 14) = v112;
      v38 = v297;
      _os_log_impl(&dword_19020E000, v103, v104, "      %s %s", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v106, -1, -1);
      MEMORY[0x193AF7A40](v105, -1, -1);
    }

    sub_190B6A9C4(v38, v305);
    v113 = sub_190D53020();
    v114 = sub_190D57680();
    sub_190BAACD4(v38);
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v303[0] = v116;
      *v115 = 136315394;
      *&v305[0] = 0xD000000000000038;
      *(&v305[0] + 1) = 0x8000000190E77F30;
      *&v306 = 32;
      *(&v306 + 1) = 0xE100000000000000;
      sub_19081E484();
      v117 = sub_190D58100();
      v119 = sub_19021D9F8(v117, v118, v303);

      *(v115 + 4) = v119;
      v120 = v297;
      *(v115 + 12) = 2080;
      v121 = *(v120 + 24);
      v122 = *(v120 + 160);
      if (__OFSUB__(v121, v122))
      {
        goto LABEL_102;
      }

      v123 = sub_190C3287C(v121 - v122);
      v125 = sub_19021D9F8(v123, v124, v303);

      *(v115 + 14) = v125;
      v38 = v297;
      _os_log_impl(&dword_19020E000, v113, v114, "      %s %s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v116, -1, -1);
      MEMORY[0x193AF7A40](v115, -1, -1);
    }

    v126 = sub_190D53020();
    v127 = sub_190D57680();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_19020E000, v126, v127, "    nonPurgableFileTypeToSizeMap:", v128, 2u);
      MEMORY[0x193AF7A40](v128, -1, -1);
    }

    isa = v38[5].isa;
    v131 = *(isa + 8);
    v41 = isa + 64;
    v130 = v131;
    v132 = 1 << *(v38[5].isa + 32);
    v133 = -1;
    if (v132 < 64)
    {
      v133 = ~(-1 << v132);
    }

    v134 = v133 & v130;
    v135 = (v132 + 63) >> 6;
    v295 = v38[5].isa;
    sub_190D52690();
    v136 = 0;
    *&v137 = 136315650;
    v284 = v137;
    while (1)
    {
      v138 = v296;
      if (!v134)
      {
        break;
      }

      v139 = v136;
LABEL_47:
      v140 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v141 = v140 | (v139 << 6);
      v142 = (*(v295 + 6) + 16 * v141);
      v144 = *v142;
      v143 = v142[1];
      v299 = *(*(v295 + 7) + 8 * v141);
      sub_190B6A9C4(v38, v305);
      v145 = v301;
      sub_190D52690();
      sub_190D52690();
      v146 = sub_190D53020();
      v147 = sub_190D57680();
      v148 = v38;
      v149 = v147;
      v150 = v148;
      sub_190BAACD4(v148);

      LODWORD(v300) = v149;
      if (os_log_type_enabled(v146, v149))
      {
        v151 = swift_slowAlloc();
        *&v289 = swift_slowAlloc();
        v303[0] = v289;
        *v151 = v284;
        *&v305[0] = v144;
        *(&v305[0] + 1) = v143;
        *&v306 = 32;
        *(&v306 + 1) = 0xE100000000000000;
        sub_19081E484();
        v288 = v146;
        v152 = sub_190D58100();
        v154 = v153;

        v155 = sub_19021D9F8(v152, v154, v303);

        *(v151 + 4) = v155;
        *(v151 + 12) = 2080;
        v156 = objc_opt_self();
        v157 = v299;
        v158 = [v156 stringFromByteCount:v299 countStyle:0];
        v159 = sub_190D56F10();
        v161 = v160;

        *&v305[0] = v159;
        *(&v305[0] + 1) = v161;
        MEMORY[0x193AF28B0](10272, 0xE200000000000000);
        *&v306 = v157;
        v162 = sub_190D58720();
        MEMORY[0x193AF28B0](v162);

        MEMORY[0x193AF28B0](0x29736574796220, 0xE700000000000000);
        v163 = sub_19021D9F8(*&v305[0], *(&v305[0] + 1), v303);

        *(v151 + 14) = v163;
        *(v151 + 22) = 2080;
        *(v151 + 24) = sub_19021D9F8(v285, v145, v303);
        v164 = v288;
        _os_log_impl(&dword_19020E000, v288, v300, "      %s %s%s", v151, 0x20u);
        v165 = v289;
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v165, -1, -1);
        v166 = v151;
        v38 = v297;
        MEMORY[0x193AF7A40](v166, -1, -1);

        v136 = v139;
      }

      else
      {

        v136 = v139;
        v38 = v150;
      }
    }

    while (1)
    {
      v139 = v136 + 1;
      if (__OFADD__(v136, 1))
      {
        break;
      }

      if (v139 >= v135)
      {

        v167 = sub_190D53020();
        v168 = sub_190D57680();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_19020E000, v167, v168, "    otherNonPurgeableUTITypes:", v169, 2u);
          MEMORY[0x193AF7A40](v169, -1, -1);
        }

        v170 = v38[6].isa;
        v171 = *(v170 + 64);
        *&v284 = v170 + 64;
        v172 = 1 << *(v170 + 32);
        v173 = -1;
        if (v172 < 64)
        {
          v173 = ~(-1 << v172);
        }

        v174 = v173 & v171;
        v283 = (v172 + 63) >> 6;
        v301 = (v292 + 16);
        v300 = (v292 + 32);
        v175 = (v292 + 8);
        v285 = v170;
        sub_190D52690();
        v176 = 0;
        *&v177 = 136315394;
        v289 = v177;
        v299 = v175;
        while (1)
        {
          v38 = v294;
          if (!v174)
          {
            break;
          }

          v178 = v176;
LABEL_65:
          v180 = __clz(__rbit64(v174));
          v174 &= v174 - 1;
          v181 = v180 | (v178 << 6);
          v182 = v285;
          v183 = v292;
          v184 = v302;
          (*(v292 + 16))(v302, *(v285 + 48) + *(v292 + 72) * v181, v138);
          v185 = *(*(v182 + 56) + 8 * v181);
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
          v187 = *(v186 + 48);
          v188 = *(v183 + 32);
          v189 = v138;
          v188(v38, v184, v138);
          *(&v38->isa + v187) = v185;
          (*(*(v186 - 8) + 56))(v38, 0, 1, v186);
          v41 = v178;
LABEL_66:
          v190 = v291;
          sub_190BAAD04(v38, v291);
          v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
          v192 = *(v191 - 8);
          v193 = v192[6].isa;
          if ((v193)(v190, 1, v191) == 1)
          {
            v290 = v193;

            v215 = sub_190D53020();
            v216 = sub_190D57680();
            if (os_log_type_enabled(v215, v216))
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&dword_19020E000, v215, v216, "    purgeableUTITypes:", v41, 2u);
              MEMORY[0x193AF7A40](v41, -1, -1);
            }

            v217 = v297[19].isa;
            v218 = *(v217 + 64);
            v282 = v217 + 64;
            v219 = 1 << *(v217 + 32);
            v220 = -1;
            if (v219 < 64)
            {
              v220 = ~(-1 << v219);
            }

            v221 = v220 & v218;
            v281 = (v219 + 63) >> 6;
            v288 = v192 + 7;
            v283 = v217;
            sub_190D52690();
            v222 = 0;
            v223 = v293;
            while (v221)
            {
              v224 = v222;
              v225 = v296;
LABEL_86:
              v228 = __clz(__rbit64(v221));
              v221 &= v221 - 1;
              v229 = v228 | (v224 << 6);
              v230 = v283;
              v231 = v292;
              v232 = v302;
              (*(v292 + 16))(v302, *(v283 + 48) + *(v292 + 72) * v229, v225);
              v233 = *(*(v230 + 56) + 8 * v229);
              v234 = *(v191 + 48);
              v235 = *(v231 + 32);
              v236 = v287;
              v235(v287, v232, v225);
              v237 = 0;
              *(v236 + v234) = v233;
              v227 = v224;
              v223 = v293;
LABEL_87:
              (v288->isa)(v236, v237, 1, v191);
              v238 = v286;
              sub_190BAAD04(v236, v286);
              if ((v290)(v238, 1, v191) == 1)
              {

                v257 = v297;
                sub_190B6A9C4(v297, v305);
                v258 = sub_190D53020();
                v259 = sub_190D57680();
                sub_190BAACD4(v257);
                if (os_log_type_enabled(v258, v259))
                {
                  v260 = swift_slowAlloc();
                  v261 = swift_slowAlloc();
                  v303[0] = v261;
                  *v260 = v289;
                  *&v305[0] = 0xD000000000000017;
                  *(&v305[0] + 1) = 0x8000000190E77F10;
                  *&v306 = 32;
                  *(&v306 + 1) = 0xE100000000000000;
                  sub_19081E484();
                  v262 = sub_190D58100();
                  v264 = sub_19021D9F8(v262, v263, v303);

                  *(v260 + 4) = v264;
                  *(v260 + 12) = 2080;
                  v265 = *(v257 + 72);
                  v306 = *(v257 + 56);
                  v307 = v265;
                  v308 = *(v257 + 88);
                  v266 = sub_190BA84C4();
                  v268 = sub_19021D9F8(v266, v267, v303);

                  *(v260 + 14) = v268;
                  _os_log_impl(&dword_19020E000, v258, v259, "    %s %s", v260, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x193AF7A40](v261, -1, -1);
                  MEMORY[0x193AF7A40](v260, -1, -1);
                }

                sub_190B6A9C4(v257, v305);
                v269 = sub_190D53020();
                v270 = sub_190D57680();
                sub_190BAACD4(v257);
                if (os_log_type_enabled(v269, v270))
                {
                  v271 = swift_slowAlloc();
                  v272 = swift_slowAlloc();
                  v304 = v272;
                  *v271 = v289;
                  *&v305[0] = 0xD00000000000001ALL;
                  *(&v305[0] + 1) = 0x8000000190E77EF0;
                  v303[0] = 32;
                  v303[1] = 0xE100000000000000;
                  sub_19081E484();
                  v273 = sub_190D58100();
                  v275 = sub_19021D9F8(v273, v274, &v304);

                  *(v271 + 4) = v275;
                  *(v271 + 12) = 2080;
                  v276 = *(v257 + 120);
                  v305[0] = *(v257 + 104);
                  v305[1] = v276;
                  v305[2] = *(v257 + 136);
                  v277 = sub_190BA84C4();
                  v279 = sub_19021D9F8(v277, v278, &v304);

                  *(v271 + 14) = v279;
                  _os_log_impl(&dword_19020E000, v269, v270, "    %s %s", v271, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x193AF7A40](v272, -1, -1);
                  MEMORY[0x193AF7A40](v271, -1, -1);
                }

                return;
              }

              v295 = v227;
              v291 = *(v238 + *(v191 + 48));
              (*v301)(v223, v238, v225);
              v38 = v302;
              (*v300)(v302, v238, v225);
              v239 = v297;
              sub_190B6A9C4(v297, v305);
              v41 = sub_190D53020();
              v240 = sub_190D57680();
              sub_190BAACD4(v239);
              v241 = *v299;
              (*v299)(v38, v225);
              v294 = v41;
              if (os_log_type_enabled(v41, v240))
              {
                v242 = swift_slowAlloc();
                LODWORD(v284) = v240;
                v243 = v242;
                v285 = swift_slowAlloc();
                v303[0] = v285;
                *v243 = v289;
                *&v305[0] = sub_190D52E00();
                *(&v305[0] + 1) = v244;
                *&v306 = 32;
                *(&v306 + 1) = 0xE100000000000000;
                sub_19081E484();
                v245 = sub_190D58100();
                v247 = v246;
                v241(v293, v225);

                v248 = sub_19021D9F8(v245, v247, v303);

                *(v243 + 4) = v248;
                *(v243 + 12) = 2080;
                v249 = objc_opt_self();
                v250 = v291;
                v251 = [v249 stringFromByteCount:v291 countStyle:0];
                v252 = sub_190D56F10();
                v38 = v253;

                *&v305[0] = v252;
                *(&v305[0] + 1) = v38;
                MEMORY[0x193AF28B0](10272, 0xE200000000000000);
                *&v306 = v250;
                v254 = sub_190D58720();
                MEMORY[0x193AF28B0](v254);

                MEMORY[0x193AF28B0](0x29736574796220, 0xE700000000000000);
                v41 = sub_19021D9F8(*&v305[0], *(&v305[0] + 1), v303);

                *(v243 + 14) = v41;
                v223 = v293;
                v255 = v294;
                _os_log_impl(&dword_19020E000, v294, v284, "      %s %s", v243, 0x16u);
                v256 = v285;
                swift_arrayDestroy();
                MEMORY[0x193AF7A40](v256, -1, -1);
                MEMORY[0x193AF7A40](v243, -1, -1);
              }

              else
              {

                v241(v223, v225);
              }

              v222 = v295;
            }

            if (v281 <= (v222 + 1))
            {
              v226 = (v222 + 1);
            }

            else
            {
              v226 = v281;
            }

            v227 = (v226 - 1);
            v225 = v296;
            while (1)
            {
              v224 = (v222 + 1);
              if (__OFADD__(v222, 1))
              {
                goto LABEL_97;
              }

              if (v224 >= v281)
              {
                v221 = 0;
                v237 = 1;
                v236 = v287;
                goto LABEL_87;
              }

              v221 = *(v282 + 8 * v224);
              ++v222;
              if (v221)
              {
                goto LABEL_86;
              }
            }
          }

          v295 = v41;
          v194 = *(v190 + *(v191 + 48));
          v195 = v290;
          v138 = v189;
          (*v301)(v290, v190, v189);
          v196 = v302;
          (*v300)(v302, v190, v189);
          v197 = v297;
          sub_190B6A9C4(v297, v305);
          v198 = sub_190D53020();
          v199 = sub_190D57680();
          sub_190BAACD4(v197);
          v200 = *v299;
          (*v299)(v196, v138);
          if (os_log_type_enabled(v198, v199))
          {
            v201 = swift_slowAlloc();
            v288 = swift_slowAlloc();
            v303[0] = v288;
            *v201 = v289;
            *&v305[0] = sub_190D52E00();
            *(&v305[0] + 1) = v202;
            *&v306 = 32;
            *(&v306 + 1) = 0xE100000000000000;
            sub_19081E484();
            v203 = sub_190D58100();
            v205 = v204;
            v200(v195, v296);

            v206 = sub_19021D9F8(v203, v205, v303);

            *(v201 + 4) = v206;
            *(v201 + 12) = 2080;
            v207 = [objc_opt_self() stringFromByteCount:v194 countStyle:0];
            v208 = sub_190D56F10();
            v210 = v209;

            *&v305[0] = v208;
            *(&v305[0] + 1) = v210;
            v138 = v296;
            MEMORY[0x193AF28B0](10272, 0xE200000000000000);
            *&v306 = v194;
            v211 = sub_190D58720();
            MEMORY[0x193AF28B0](v211);

            MEMORY[0x193AF28B0](0x29736574796220, 0xE700000000000000);
            v212 = sub_19021D9F8(*&v305[0], *(&v305[0] + 1), v303);

            *(v201 + 14) = v212;
            _os_log_impl(&dword_19020E000, v198, v199, "      %s %s", v201, 0x16u);
            v213 = v288;
            swift_arrayDestroy();
            MEMORY[0x193AF7A40](v213, -1, -1);
            MEMORY[0x193AF7A40](v201, -1, -1);
          }

          else
          {

            v200(v195, v138);
          }

          v176 = v295;
        }

        if (v283 <= (v176 + 1))
        {
          v179 = (v176 + 1);
        }

        else
        {
          v179 = v283;
        }

        v41 = (v179 - 1);
        while (1)
        {
          v178 = (v176 + 1);
          if (__OFADD__(v176, 1))
          {
            break;
          }

          if (v178 >= v283)
          {
            v189 = v138;
            v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
            (*(*(v214 - 8) + 56))(v38, 1, 1, v214);
            v174 = 0;
            goto LABEL_66;
          }

          v174 = *(v284 + 8 * v178);
          ++v176;
          if (v174)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_97:
        __break(1u);
        break;
      }

      v134 = *&v41[8 * v139];
      ++v136;
      if (v134)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_99:
    swift_once();
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v303[0] = v47;
  *v46 = 136315394;
  *&v305[0] = 0x6C69466C61746F74;
  *(&v305[0] + 1) = 0xEF3A746E756F4365;
  *&v306 = 32;
  *(&v306 + 1) = 0xE100000000000000;
  sub_19081E484();
  v48 = sub_190D58100();
  v50 = sub_19021D9F8(v48, v49, v303);

  *(v46 + 4) = v50;
  v38 = v297;
  *(v46 + 12) = 2048;
  sub_190BAACD4(v38);
  v51 = v38[1].isa;
  v52 = v38[2].isa;
  v53 = __OFADD__(v51, v52);
  v54 = v52 + v51;
  if (!v53)
  {
    *(v46 + 14) = v54;
    sub_190BAACD4(v38);
    _os_log_impl(&dword_19020E000, v44, v45, "    %s %lld", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x193AF7A40](v47, -1, -1);
    MEMORY[0x193AF7A40](v46, -1, -1);
    goto LABEL_18;
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

unint64_t sub_190BA8470()
{
  result = qword_1EAD5EC10;
  if (!qword_1EAD5EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5EC10);
  }

  return result;
}

uint64_t sub_190BA84C4()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD00000000000001ALL, 0x8000000190E77ED0);
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](0x436F65646976202CLL, 0xED00003D746E756FLL);
  v2 = sub_190D58720();
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](0x656C646E7562202CLL, 0xEE003D746E756F43);
  v3 = sub_190D58720();
  MEMORY[0x193AF28B0](v3);

  MEMORY[0x193AF28B0](0x736F65646976202CLL, 0xED00003D657A6953);
  v4 = sub_190C3287C(v0[3]);
  MEMORY[0x193AF28B0](v4);

  MEMORY[0x193AF28B0](0x736F746F6870202CLL, 0xED00003D657A6953);
  v5 = sub_190C3287C(v0[4]);
  MEMORY[0x193AF28B0](v5);

  MEMORY[0x193AF28B0](0x656C646E7562202CLL, 0xED00003D657A6953);
  v6 = sub_190C3287C(v0[5]);
  MEMORY[0x193AF28B0](v6);

  return 0;
}

uint64_t sub_190BA86D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5ECC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_190BAD99C();
  sub_190D58900();
  v8[15] = 0;
  sub_190D586F0();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_190D586F0();
  v8[13] = 2;
  sub_190D586F0();
  v8[12] = 3;
  sub_190D586F0();
  v8[11] = 4;
  sub_190D586F0();
  v8[10] = 5;
  sub_190D586F0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190BA88D0()
{
  v1 = *v0;
  v2 = 0x756F436F746F6870;
  v3 = 0x6953736F65646976;
  v4 = 0x6953736F746F6870;
  if (v1 != 4)
  {
    v4 = 0x6953656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x756F436F65646976;
  if (v1 != 1)
  {
    v5 = 0x6F43656C646E7562;
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

uint64_t sub_190BA8984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_190BAD550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_190BA89B8(uint64_t a1)
{
  v2 = sub_190BAD99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_190BA89F4(uint64_t a1)
{
  v2 = sub_190BAD99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_190BA8A30@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_190BAD760(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_190BA8A8C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *sub_190BA8A9C@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result[5];
  v17 = a2[5];
  v5 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (!v5)
  {
    *a3 = *result + *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    a3[5] = v18;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_190BA8B24(void *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_190BA55A4(a1, v4);
}

void *sub_190BA8B58@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFSUB__(v7, v8);
  v9 = v7 - v8;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFSUB__(v13, v14);
  v15 = v13 - v14;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result[5];
  v17 = a2[5];
  v5 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (!v5)
  {
    *a3 = *result - *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    a3[5] = v18;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_190BA8BE0(void *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_190BA562C(a1, v4);
}

BOOL sub_190BA8C18(_OWORD *a1, __int128 *a2)
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
  return sub_190BA9B0C(v7, v8);
}

uint64_t sub_190BA8C60(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];
    sub_190D52690();
    sub_190D52690();
    v20 = sub_19022DCEC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_190D58760();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190BA8E04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    sub_190D52690();
    v17 = sub_19022DCEC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_190BA8F38(uint64_t a1, uint64_t a2)
{
  v54 = sub_190D52E90();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v44 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v47 = v10;
    v13 = 0;
    v45 = a1;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v20 = (v17 + 63) >> 6;
    v44[0] = v15;
    v44[1] = v49 + 16;
    v51 = v44 - v9;
    v52 = (v49 + 32);
    v46 = (v49 + 8);
    while (v19)
    {
      v53 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
      v26 = v45;
      v27 = v48;
      v28 = v49;
      v29 = v54;
      (*(v49 + 16))(v48, *(v45 + 48) + *(v49 + 72) * v21, v54, v11);
      v30 = *(*(v26 + 56) + 8 * v21);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v34 = v47;
      v33(v47, v27, v29);
      *(v34 + v32) = v30;
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
      v12 = v51;
LABEL_17:
      sub_190BAAD04(v34, v12);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
      if ((*(*(v35 - 8) + 48))(v12, 1, v35) != 1)
      {
        v36 = *(v35 + 48);
        v37 = v50;
        v38 = v54;
        (*v52)(v50, v12, v54);
        v39 = *&v12[v36];
        v40 = sub_190875BAC(v37);
        LOBYTE(v36) = v41;
        (*v46)(v37, v38);
        if (v36)
        {
          v42 = *(*(a2 + 56) + 8 * v40) == v39;
          v12 = v51;
          v19 = v53;
          if (v42)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v20 <= v13 + 1)
    {
      v22 = v13 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
        v34 = v47;
        (*(*(v43 - 8) + 56))(v47, 1, 1, v43);
        v53 = 0;
        v13 = v23;
        goto LABEL_17;
      }

      v25 = *(v44[0] + 8 * v24);
      ++v13;
      if (v25)
      {
        v53 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v13 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_190BA9388(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(a1 + 48) + 40 * v12;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      v17 = *(*(a1 + 56) + 8 * v12);
      v18 = *(v13 + 32);
      v25[0] = *v13;
      v25[1] = v14;
      v25[2] = v15;
      v25[3] = v16;
      v26 = v18;
      sub_1908B81B0(v25[0], v14, v15, v16, v18);
      v19 = v17;
      v20 = sub_190875D94(v25);
      v22 = v21;
      sub_190BAC2F0(v25);
      if ((v22 & 1) == 0)
      {

        return;
      }

      sub_190BAC344();
      v23 = *(*(a2 + 56) + 8 * v20);
      v24 = sub_190D57D90();

      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_190BA9510(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_190BA9558(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_190824530(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_190BA95C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_190824530(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_190BA9640(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_190BA9690(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ConversationEntity();
  result = sub_19082FC20(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_190BA9728(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_190BA9780(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2 & 1;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

_OWORD *sub_190BA97C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_190824530(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_190BA9830(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_190D52E90();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_190BA98E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_190BA9930(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_190D515F0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 168 * a1;
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = *(a3 + 80);
  *(v11 + 64) = *(a3 + 64);
  *(v11 + 80) = v13;
  v14 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v14;
  *(v11 + 160) = *(a3 + 160);
  v15 = *(a3 + 144);
  *(v11 + 128) = *(a3 + 128);
  *(v11 + 144) = v15;
  v16 = *(a3 + 112);
  *(v11 + 96) = *(a3 + 96);
  *(v11 + 112) = v16;
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_190BA9A1C(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_190BA9A6C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_190BA9AB0(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = a3[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a3[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

BOOL sub_190BA9B78(int64x2_t *a1, int64x2_t *a2)
{
  if (((a1->u8[0] ^ a2->u8[0]) & 1) != 0 || a1->i64[1] != a2->i64[1] || a1[1].i64[0] != a2[1].i64[0] || a1[1].i64[1] != a2[1].i64[1] || a1[2].i64[0] != a2[2].i64[0])
  {
    return 0;
  }

  if ((sub_190BA8E04(a1[2].i64[1], a2[2].i64[1]) & 1) == 0)
  {
    return 0;
  }

  sub_190BA8F38(a1[3].i64[0], a2[3].i64[0]);
  if ((v4 & 1) == 0 || a1[3].i64[1] != a2[3].i64[1])
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(a1[4], a2[4]), vceqq_s64(a1[5], a2[5])))) & 1) != 0 && a1[6].i64[0] == a2[6].i64[0])
  {
    if (a1[6].i64[1] != a2[6].i64[1])
    {
      return 0;
    }

    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(a1[7], a2[7]), vceqq_s64(a1[8], a2[8])))) & 1) != 0 && a1[9].i64[0] == a2[9].i64[0])
    {
      sub_190BA8F38(a1[9].i64[1], a2[9].i64[1]);
      if (v6)
      {
        return a1[10].i64[0] == a2[10].i64[0];
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_190BA9CD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v273 = sub_190D52E90();
  v269 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v7 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v230 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v230 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v265 = (&v230 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v268 = &v230 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC18);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v259 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v260 = &v230 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v230 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v267 = &v230 - v26;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 160);
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  v33 = *(a1 + 56);
  v32 = *(a1 + 64);
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  v37 = *(a1 + 88);
  v36 = *(a1 + 96);
  v39 = *(a1 + 104);
  v38 = *(a1 + 112);
  v41 = *(a1 + 120);
  v40 = *(a1 + 128);
  v43 = *(a1 + 136);
  v42 = *(a1 + 144);
  v287[0] = *(a1 + 1);
  *(v287 + 3) = *(a1 + 4);
  v44 = a2[4];
  v45 = __OFSUB__(v31, v44);
  v46 = v31 - v44;
  if (v45)
  {
    goto LABEL_113;
  }

  v47 = a2[3];
  v45 = __OFSUB__(v30, v47);
  v48 = v30 - v47;
  if (v45)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v49 = a2[20];
  v45 = __OFSUB__(v29, v49);
  v50 = v29 - v49;
  if (v45)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v51 = a2[2];
  v45 = __OFSUB__(v28, v51);
  v52 = v28 - v51;
  if (v45)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v53 = a2[1];
  v54 = v27 - v53;
  if (__OFSUB__(v27, v53))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v55 = a2[13];
  v56 = v39 - v55;
  if (__OFSUB__(v39, v55))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v57 = a2[14];
  v45 = __OFSUB__(v38, v57);
  v58 = v38 - v57;
  if (v45)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v59 = a2[15];
  v45 = __OFSUB__(v41, v59);
  v60 = v41 - v59;
  if (v45)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v61 = a2[16];
  v45 = __OFSUB__(v40, v61);
  v62 = v40 - v61;
  if (v45)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v63 = a2[17];
  v45 = __OFSUB__(v43, v63);
  v64 = v43 - v63;
  if (v45)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v65 = a2[18];
  v45 = __OFSUB__(v42, v65);
  v66 = v42 - v65;
  if (v45)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v67 = a2[7];
  v45 = __OFSUB__(v33, v67);
  v68 = v33 - v67;
  if (v45)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v69 = a2[8];
  v45 = __OFSUB__(v32, v69);
  v70 = v32 - v69;
  if (v45)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v71 = a2[9];
  v45 = __OFSUB__(v35, v71);
  v72 = v35 - v71;
  if (v45)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v73 = a2[10];
  v45 = __OFSUB__(v34, v73);
  v74 = v34 - v73;
  if (v45)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v75 = a2[11];
  v45 = __OFSUB__(v37, v75);
  v76 = v37 - v75;
  if (v45)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v77 = a2[12];
  v45 = __OFSUB__(v36, v77);
  v78 = v36 - v77;
  if (v45)
  {
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
    goto LABEL_134;
  }

  v79 = *(a1 + 48);
  v252 = *(a1 + 40);
  v253 = v7;
  v256 = *(a1 + 152);
  v257 = v13;
  v80 = *a1;
  v258 = v10;
  v250 = v50;
  v251 = a3;
  v248 = v48;
  v249 = v46;
  v246 = v52;
  v247 = v56;
  v244 = v54;
  v245 = v58;
  v242 = v62;
  v243 = v60;
  v240 = v66;
  v241 = v64;
  v238 = v70;
  v239 = v68;
  v236 = v74;
  v237 = v72;
  v234 = v78;
  v235 = v76;
  v266 = v24;
  if (v80)
  {
    v81 = 1;
  }

  else
  {
    v81 = *a2;
  }

  v233 = v81;
  v254 = a2;
  v255 = a1;
  v288 = a2[6];
  v83 = v288 + 64;
  v82 = *(v288 + 64);
  v262 = v288;
  v84 = 1 << *(v288 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v82;
  sub_190B6A9C4(a1, v286);
  sub_19022FD14(&v288, v286, &qword_1EAD5EC20);
  v87 = 0;
  v88 = (v84 + 63) >> 6;
  v272 = v269 + 32;
  v270 = (v269 + 16);
  v271 = (v269 + 8);
  v264 = v83;
  v261 = v88;
  while (1)
  {
    v263 = v79;
    while (1)
    {
      if (v86)
      {
        v89 = v87;
LABEL_36:
        v92 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v93 = v92 | (v89 << 6);
        v94 = v262;
        v96 = v268;
        v95 = v269;
        v97 = v273;
        (*(v269 + 16))(v268, *(v262 + 48) + *(v269 + 72) * v93, v273);
        v98 = *(*(v94 + 56) + 8 * v93);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
        v100 = *(v99 + 48);
        v101 = *(v95 + 32);
        v102 = v266;
        v101(v266, v96, v97);
        *(v102 + v100) = v98;
        (*(*(v99 - 8) + 56))(v102, 0, 1, v99);
        v79 = v263;
        v88 = v261;
      }

      else
      {
        if (v88 <= v87 + 1)
        {
          v90 = v87 + 1;
        }

        else
        {
          v90 = v88;
        }

        v91 = v90 - 1;
        while (1)
        {
          v89 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (v89 >= v88)
          {
            break;
          }

          v86 = *(v83 + 8 * v89);
          ++v87;
          if (v86)
          {
            v87 = v89;
            goto LABEL_36;
          }
        }

        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
        v102 = v266;
        (*(*(v111 - 8) + 56))(v266, 1, 1, v111);
        v86 = 0;
        v87 = v91;
      }

      v103 = v267;
      sub_190BAAD04(v102, v267);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
      v105 = *(v104 - 8);
      v106 = *(v105 + 48);
      if (v106(v103, 1, v104) == 1)
      {

        v137 = v254[19];
        v138 = *(v137 + 64);
        v267 = v137 + 64;
        v139 = 1 << *(v137 + 32);
        v140 = -1;
        if (v139 < 64)
        {
          v140 = ~(-1 << v139);
        }

        v141 = v140 & v138;
        v142 = *(v255 + 152);
        v265 = (v105 + 56);
        v266 = (v139 + 63) >> 6;
        v262 = v137;
        sub_190D52690();
        v143 = 0;
        v145 = v258;
        v144 = v259;
        v257 = (v105 + 48);
        v261 = v106;
        v146 = v260;
        v148 = v266;
        v147 = v267;
        if (!v141)
        {
          goto LABEL_60;
        }

LABEL_59:
        v149 = v143;
LABEL_68:
        v152 = __clz(__rbit64(v141));
        v141 &= v141 - 1;
        v153 = v152 | (v149 << 6);
        v154 = v262;
        v155 = v268;
        v156 = v269;
        v157 = v273;
        (*(v269 + 16))(v268, *(v262 + 48) + *(v269 + 72) * v153, v273);
        v158 = *(*(v154 + 56) + 8 * v153);
        v159 = *(v104 + 48);
        v160 = *(v156 + 32);
        v144 = v259;
        v160(v259, v155, v157);
        v161 = 0;
        *(v144 + v159) = v158;
        v145 = v258;
        v146 = v260;
        v106 = v261;
        while (1)
        {
          (*v265)(v144, v161, 1, v104);
          sub_190BAAD04(v144, v146);
          if (v106(v146, 1, v104) == 1)
          {
            break;
          }

          v264 = *(v146 + *(v104 + 48));
          (*v272)(v145, v146, v273);
          if (*(v142 + 16) && (v162 = sub_190875BAC(v145), (v163 & 1) != 0))
          {
            v232 = v104;
            v164 = *(*(v142 + 56) + 8 * v162);
            v165 = *v270;
            v166 = v253;
            v167 = v145;
            (*v270)(v253, v145, v273);
            v168 = v164 - v264;
            if (__OFSUB__(v164, v264))
            {
              goto LABEL_132;
            }

            v169 = v256;
            LODWORD(v264) = swift_isUniquelyReferenced_nonNull_native();
            v286[0] = v169;
            v170 = sub_190875BAC(v166);
            v172 = *(v169 + 16);
            v173 = (v171 & 1) == 0;
            v45 = __OFADD__(v172, v173);
            v174 = v172 + v173;
            if (v45)
            {
              goto LABEL_133;
            }

            v231 = v168;
            if (*(v169 + 24) >= v174)
            {
              v145 = v167;
              if ((v264 & 1) == 0)
              {
                v189 = v165;
                v190 = v170;
                v191 = v171;
                sub_190B68C28();
                v171 = v191;
                v170 = v190;
                v165 = v189;
              }
            }

            else
            {
              v175 = v171;
              sub_190B64454(v174, v264);
              v170 = sub_190875BAC(v253);
              if ((v175 & 1) != (v176 & 1))
              {
                goto LABEL_139;
              }

              v171 = v175;
              v145 = v167;
            }

            v177 = v286[0];
            v256 = v286[0];
            if (v171)
            {
              *(*(v286[0] + 56) + 8 * v170) = v231;
              v178 = *v271;
              v179 = v273;
              (*v271)(v253, v273);
              v178(v145, v179);
              v142 = v177;
            }

            else
            {
              *(v286[0] + 8 * (v170 >> 6) + 64) |= 1 << v170;
              v180 = v269;
              v181 = v170;
              v182 = *(v177 + 48) + *(v269 + 72) * v170;
              v183 = v165;
              v184 = v253;
              v185 = v273;
              v183(v182, v253, v273);
              *(*(v256 + 56) + 8 * v181) = v231;
              v186 = *(v180 + 8);
              v186(v184, v185);
              v186(v145, v185);
              v142 = v256;
              v187 = *(v256 + 16);
              v45 = __OFADD__(v187, 1);
              v188 = v187 + 1;
              if (v45)
              {
                goto LABEL_135;
              }

              *(v256 + 16) = v188;
              v144 = v259;
            }

            v146 = v260;
            v106 = v261;
            v104 = v232;
            v148 = v266;
            v147 = v267;
            if (v141)
            {
              goto LABEL_59;
            }
          }

          else
          {
            (*v271)(v145, v273);
            v148 = v266;
            v147 = v267;
            if (v141)
            {
              goto LABEL_59;
            }
          }

LABEL_60:
          if (v148 <= v143 + 1)
          {
            v150 = v143 + 1;
          }

          else
          {
            v150 = v148;
          }

          v151 = v150 - 1;
          while (1)
          {
            v149 = v143 + 1;
            if (__OFADD__(v143, 1))
            {
              goto LABEL_111;
            }

            if (v149 >= v148)
            {
              break;
            }

            v141 = *(v147 + 8 * v149);
            ++v143;
            if (v141)
            {
              v143 = v149;
              goto LABEL_68;
            }
          }

          v141 = 0;
          v161 = 1;
          v143 = v151;
        }

        v192 = v254[5];
        v193 = 1 << *(v192 + 32);
        v194 = -1;
        if (v193 < 64)
        {
          v194 = ~(-1 << v193);
        }

        v195 = v194 & *(v192 + 64);
        v196 = *(v255 + 40);
        v197 = (v193 + 63) >> 6;
        sub_190D52690();
        v198 = 0;
        while (1)
        {
          while (1)
          {
            do
            {
              if (!v195)
              {
                while (1)
                {
                  v200 = v198 + 1;
                  if (__OFADD__(v198, 1))
                  {
                    break;
                  }

                  if (v200 >= v197)
                  {

                    *(&v275 + 1) = v287[0];
                    DWORD1(v275) = *(v287 + 3);
                    LOBYTE(v275) = v233;
                    *(&v275 + 1) = v244;
                    *&v276 = v246;
                    *(&v276 + 1) = v248;
                    *&v277 = v249;
                    *(&v277 + 1) = v252;
                    *&v278 = v263;
                    *(&v278 + 1) = v239;
                    *&v279 = v238;
                    *(&v279 + 1) = v237;
                    *&v280 = v236;
                    *(&v280 + 1) = v235;
                    *&v281 = v234;
                    *(&v281 + 1) = v247;
                    *&v282 = v245;
                    *(&v282 + 1) = v243;
                    *&v283 = v242;
                    *(&v283 + 1) = v241;
                    *&v284 = v240;
                    *(&v284 + 1) = v256;
                    v285 = v250;
                    LOBYTE(v286[0]) = v233;
                    HIDWORD(v286[0]) = *(v287 + 3);
                    *(v286 + 1) = v287[0];
                    v286[1] = v244;
                    v286[2] = v246;
                    v286[3] = v248;
                    v286[4] = v249;
                    v286[5] = v252;
                    v286[6] = v263;
                    v286[7] = v239;
                    v286[8] = v238;
                    v286[9] = v237;
                    v286[10] = v236;
                    v286[11] = v235;
                    v286[12] = v234;
                    v286[13] = v247;
                    v286[14] = v245;
                    v286[15] = v243;
                    v286[16] = v242;
                    v286[17] = v241;
                    v286[18] = v240;
                    v286[19] = v256;
                    v286[20] = v250;
                    sub_190B6A9C4(&v275, &v274);
                    result = sub_190BAACD4(v286);
                    v224 = v284;
                    v225 = v251;
                    *(v251 + 128) = v283;
                    *(v225 + 144) = v224;
                    *(v225 + 160) = v285;
                    v226 = v280;
                    *(v225 + 64) = v279;
                    *(v225 + 80) = v226;
                    v227 = v282;
                    *(v225 + 96) = v281;
                    *(v225 + 112) = v227;
                    v228 = v276;
                    *v225 = v275;
                    *(v225 + 16) = v228;
                    v229 = v278;
                    *(v225 + 32) = v277;
                    *(v225 + 48) = v229;
                    return result;
                  }

                  v199 = *(v192 + 64 + 8 * v200);
                  ++v198;
                  if (v199)
                  {
                    v198 = v200;
                    goto LABEL_95;
                  }
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              v199 = v195;
LABEL_95:
              v195 = (v199 - 1) & v199;
            }

            while (!v196[2]);
            v201 = __clz(__rbit64(v199)) | (v198 << 6);
            v202 = (*(v192 + 48) + 16 * v201);
            v203 = *(*(v192 + 56) + 8 * v201);
            v205 = *v202;
            v204 = v202[1];
            sub_190D52690();
            v206 = sub_19022DCEC(v205, v204);
            if (v207)
            {
              break;
            }
          }

          v208 = *(v196[7] + 8 * v206);
          v273 = v208 - v203;
          if (__OFSUB__(v208, v203))
          {
            goto LABEL_136;
          }

          v209 = v252;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v286[0] = v209;
          v211 = sub_19022DCEC(v205, v204);
          v213 = v209[2];
          v214 = (v212 & 1) == 0;
          v45 = __OFADD__(v213, v214);
          v215 = v213 + v214;
          if (v45)
          {
            goto LABEL_137;
          }

          if (v209[3] >= v215)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_104;
            }

            v272 = v211;
            v219 = v212;
            sub_190B6893C();
            v211 = v272;
            if ((v219 & 1) == 0)
            {
              goto LABEL_107;
            }

LABEL_105:
            v217 = v211;

            v218 = v286[0];
            *(*(v286[0] + 56) + 8 * v217) = v273;
            v252 = v218;
            v196 = v218;
          }

          else
          {
            LODWORD(v272) = v212;
            sub_190B63ED8(v215, isUniquelyReferenced_nonNull_native);
            v211 = sub_19022DCEC(v205, v204);
            v216 = v212 & 1;
            LOBYTE(v212) = v272;
            if ((v272 & 1) != v216)
            {
              goto LABEL_140;
            }

LABEL_104:
            if (v212)
            {
              goto LABEL_105;
            }

LABEL_107:
            v196 = v286[0];
            *(v286[0] + 8 * (v211 >> 6) + 64) |= 1 << v211;
            v220 = (v196[6] + 16 * v211);
            *v220 = v205;
            v220[1] = v204;
            *(v196[7] + 8 * v211) = v273;
            v221 = v196[2];
            v45 = __OFADD__(v221, 1);
            v222 = v221 + 1;
            if (v45)
            {
              goto LABEL_138;
            }

            v196[2] = v222;
            v252 = v196;
          }
        }
      }

      v107 = *(v103 + *(v104 + 48));
      v108 = v265;
      (*v272)(v265, v103, v273);
      if (v79[2])
      {
        v109 = sub_190875BAC(v108);
        if (v110)
        {
          break;
        }
      }

      (*v271)(v108, v273);
      v83 = v264;
    }

    v112 = v108;
    v113 = *(v79[7] + 8 * v109);
    v114 = *v270;
    v115 = v79;
    v116 = v257;
    (*v270)(v257, v112, v273);
    v117 = v113 - v107;
    if (__OFSUB__(v113, v107))
    {
      goto LABEL_130;
    }

    v118 = swift_isUniquelyReferenced_nonNull_native();
    v286[0] = v115;
    v119 = sub_190875BAC(v116);
    v121 = v115[2];
    v122 = (v120 & 1) == 0;
    v45 = __OFADD__(v121, v122);
    v123 = v121 + v122;
    if (v45)
    {
      goto LABEL_131;
    }

    v124 = v120;
    if (v115[3] < v123)
    {
      break;
    }

    if (v118)
    {
      goto LABEL_48;
    }

    v129 = v119;
    sub_190B68C28();
    v119 = v129;
    v126 = v286[0];
    if ((v124 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_49:
    *(v126[7] + 8 * v119) = v117;
    v127 = *v271;
    v128 = v273;
    (*v271)(v257, v273);
    v127(v265, v128);
    v79 = v126;
LABEL_53:
    v83 = v264;
  }

  sub_190B64454(v123, v118);
  v119 = sub_190875BAC(v257);
  if ((v124 & 1) != (v125 & 1))
  {
    goto LABEL_139;
  }

LABEL_48:
  v126 = v286[0];
  if (v124)
  {
    goto LABEL_49;
  }

LABEL_51:
  v126[(v119 >> 6) + 8] |= 1 << v119;
  v130 = v269;
  v131 = v126[6] + *(v269 + 72) * v119;
  v263 = v119;
  v132 = v257;
  v133 = v273;
  v114(v131, v257, v273);
  *(v126[7] + 8 * v263) = v117;
  v134 = *(v130 + 8);
  v134(v132, v133);
  v134(v265, v133);
  v135 = v126[2];
  v45 = __OFADD__(v135, 1);
  v136 = v135 + 1;
  if (!v45)
  {
    v79 = v126;
    v126[2] = v136;
    goto LABEL_53;
  }

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
  sub_190D587C0();
  __break(1u);
LABEL_140:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t sub_190BAAD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190BAAD74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v333 = sub_190D52E90();
  v329 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v321 = &v289[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v314 = &v289[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v320 = &v289[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v323 = &v289[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v315 = &v289[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v289[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v322 = &v289[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC18);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v318 = &v289[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v317 = &v289[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v289[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v319 = &v289[-v28];
  v29 = *(a1 + 8);
  v30 = *(a1 + 16);
  v31 = *(a1 + 160);
  v32 = *(a1 + 24);
  v33 = *(a1 + 32);
  v35 = *(a1 + 56);
  v34 = *(a1 + 64);
  v37 = *(a1 + 72);
  v36 = *(a1 + 80);
  v39 = *(a1 + 88);
  v38 = *(a1 + 96);
  v41 = *(a1 + 104);
  v40 = *(a1 + 112);
  v43 = *(a1 + 120);
  v42 = *(a1 + 128);
  v45 = *(a1 + 136);
  v44 = *(a1 + 144);
  v347[0] = *(a1 + 1);
  *(v347 + 3) = *(a1 + 4);
  v46 = a2[4];
  v47 = __OFADD__(v33, v46);
  v48 = v33 + v46;
  if (v47)
  {
    goto LABEL_156;
  }

  v49 = a2[3];
  v47 = __OFADD__(v32, v49);
  v50 = v32 + v49;
  if (v47)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v51 = a2[20];
  v47 = __OFADD__(v31, v51);
  v52 = v31 + v51;
  if (v47)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v53 = a2[2];
  v47 = __OFADD__(v30, v53);
  v54 = v30 + v53;
  if (v47)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v55 = a2[1];
  v56 = v29 + v55;
  if (__OFADD__(v29, v55))
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v57 = a2[13];
  v58 = v41 + v57;
  if (__OFADD__(v41, v57))
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v59 = a2[14];
  v47 = __OFADD__(v40, v59);
  v60 = v40 + v59;
  if (v47)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v61 = a2[15];
  v47 = __OFADD__(v43, v61);
  v62 = v43 + v61;
  if (v47)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v63 = a2[16];
  v47 = __OFADD__(v42, v63);
  v64 = v42 + v63;
  if (v47)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v65 = a2[17];
  v47 = __OFADD__(v45, v65);
  v66 = v45 + v65;
  if (v47)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v67 = a2[18];
  v47 = __OFADD__(v44, v67);
  v68 = v44 + v67;
  if (v47)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v69 = a2[7];
  v47 = __OFADD__(v35, v69);
  v70 = v35 + v69;
  if (v47)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v71 = a2[8];
  v47 = __OFADD__(v34, v71);
  v72 = v34 + v71;
  if (v47)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v73 = a2[9];
  v47 = __OFADD__(v37, v73);
  v74 = v37 + v73;
  if (v47)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v75 = a2[10];
  v47 = __OFADD__(v36, v75);
  v76 = v36 + v75;
  if (v47)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v77 = a2[11];
  v47 = __OFADD__(v39, v77);
  v78 = v39 + v77;
  if (v47)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v79 = a2[12];
  v47 = __OFADD__(v38, v79);
  v80 = v38 + v79;
  if (!v47)
  {
    v291 = v80;
    v81 = *(a1 + 48);
    v311 = *(a1 + 40);
    v332 = v81;
    v325 = *(a1 + 152);
    LOBYTE(v81) = *a1;
    v307 = v52;
    v308 = a3;
    v305 = v50;
    v306 = v48;
    v303 = v54;
    v304 = v58;
    v301 = v56;
    v302 = v60;
    v299 = v64;
    v300 = v62;
    v297 = v68;
    v298 = v66;
    v295 = v72;
    v296 = v70;
    v293 = v76;
    v294 = v74;
    v292 = v78;
    if (v81)
    {
      v82 = 1;
    }

    else
    {
      v82 = *a2;
    }

    v290 = v82;
    v309 = a2;
    v310 = a1;
    v348 = a2[6];
    v83 = *(v348 + 64);
    v313 = v348 + 64;
    v316 = v348;
    v84 = 1 << *(v348 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & v83;
    sub_190B6A9C4(a1, v346);
    sub_19022FD14(&v348, v346, &qword_1EAD5EC20);
    v87 = 0;
    v312 = (v84 + 63) >> 6;
    v330 = (v329 + 32);
    v331 = (v329 + 16);
    v326 = (v329 + 8);
    v328 = v17;
    v324 = v26;
    while (v86)
    {
      v91 = v87;
LABEL_35:
      v93 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v94 = v93 | (v91 << 6);
      v95 = v316;
      v96 = v329;
      v97 = v322;
      v98 = v333;
      (*(v329 + 16))(v322, *(v316 + 6) + *(v329 + 72) * v94, v333);
      v99 = *(*(v95 + 7) + 8 * v94);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
      v101 = *(v100 + 48);
      v102 = *(v96 + 32);
      v26 = v324;
      v102(v324, v97, v98);
      *&v26[v101] = v99;
      (*(*(v100 - 8) + 56))(v26, 0, 1, v100);
      v327 = v91;
LABEL_36:
      v103 = v319;
      sub_190BAAD04(v26, v319);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
      v105 = *(v104 - 8);
      v106 = *(v105 + 48);
      if ((v106)(v103, 1, v104) == 1)
      {
        v324 = v106;

        v152 = v309[19];
        v153 = *(v152 + 8);
        v316 = v152 + 64;
        v154 = 1 << v152[32];
        v155 = -1;
        if (v154 < 64)
        {
          v155 = ~(-1 << v154);
        }

        v156 = v155 & v153;
        v157 = *(v310 + 152);
        v315 = ((v154 + 63) >> 6);
        v323 = (v105 + 56);
        v319 = v152;
        sub_190D52690();
        v158 = 0;
        v159 = v320;
        v328 = v104;
        if (v156)
        {
          while (1)
          {
            v160 = v158;
LABEL_73:
            v163 = __clz(__rbit64(v156));
            v156 &= v156 - 1;
            v164 = v163 | (v160 << 6);
            v165 = v319;
            v166 = v329;
            v167 = v322;
            v168 = v333;
            (*(v329 + 16))(v322, *(v319 + 6) + *(v329 + 72) * v164, v333);
            v169 = *(*(v165 + 7) + 8 * v164);
            v170 = *(v328 + 12);
            v171 = *(v166 + 32);
            v172 = v318;
            v171(v318, v167, v168);
            v173 = v172;
            v174 = 0;
            *&v172[v170] = v169;
            v104 = v328;
            v162 = v160;
            v159 = v320;
LABEL_74:
            (*v323)(v173, v174, 1, v104);
            v175 = v173;
            v176 = v317;
            sub_190BAAD04(v175, v317);
            if ((v324)(v176, 1, v104) == 1)
            {

              v224 = v309[5];
              v227 = *(v224 + 64);
              v226 = v224 + 64;
              v225 = v227;
              v228 = 1 << *(v309[5] + 32);
              v229 = -1;
              if (v228 < 64)
              {
                v229 = ~(-1 << v228);
              }

              v230 = v229 & v225;
              v231 = *(v310 + 40);
              v232 = (v228 + 63) >> 6;
              v333 = v309[5];
              sub_190D52690();
              v233 = 0;
              v331 = v232;
              while (2)
              {
                while (2)
                {
                  if (!v230)
                  {
                    while (1)
                    {
                      v234 = v233 + 1;
                      if (__OFADD__(v233, 1))
                      {
                        break;
                      }

                      if (v234 >= v232)
                      {

                        *(&v335 + 1) = v347[0];
                        DWORD1(v335) = *(v347 + 3);
                        LOBYTE(v335) = v290;
                        *(&v335 + 1) = v301;
                        *&v336 = v303;
                        *(&v336 + 1) = v305;
                        *&v337 = v306;
                        *(&v337 + 1) = v311;
                        *&v338 = v332;
                        *(&v338 + 1) = v296;
                        *&v339 = v295;
                        *(&v339 + 1) = v294;
                        *&v340 = v293;
                        *(&v340 + 1) = v292;
                        *&v341 = v291;
                        *(&v341 + 1) = v304;
                        *&v342 = v302;
                        *(&v342 + 1) = v300;
                        *&v343 = v299;
                        *(&v343 + 1) = v298;
                        *&v344 = v297;
                        *(&v344 + 1) = v325;
                        v345 = v307;
                        LOBYTE(v346[0]) = v290;
                        HIDWORD(v346[0]) = *(v347 + 3);
                        *(v346 + 1) = v347[0];
                        v346[1] = v301;
                        v346[2] = v303;
                        v346[3] = v305;
                        v346[4] = v306;
                        v346[5] = v311;
                        v346[6] = v332;
                        v346[7] = v296;
                        v346[8] = v295;
                        v346[9] = v294;
                        v346[10] = v293;
                        v346[11] = v292;
                        v346[12] = v291;
                        v346[13] = v304;
                        v346[14] = v302;
                        v346[15] = v300;
                        v346[16] = v299;
                        v346[17] = v298;
                        v346[18] = v297;
                        v346[19] = v325;
                        v346[20] = v307;
                        sub_190B6A9C4(&v335, &v334);
                        result = sub_190BAACD4(v346);
                        v283 = v344;
                        v284 = v308;
                        *(v308 + 128) = v343;
                        *(v284 + 144) = v283;
                        *(v284 + 160) = v345;
                        v285 = v340;
                        *(v284 + 64) = v339;
                        *(v284 + 80) = v285;
                        v286 = v342;
                        *(v284 + 96) = v341;
                        *(v284 + 112) = v286;
                        v287 = v336;
                        *v284 = v335;
                        *(v284 + 16) = v287;
                        v288 = v338;
                        *(v284 + 32) = v337;
                        *(v284 + 48) = v288;
                        return result;
                      }

                      v230 = *(v226 + 8 * v234);
                      ++v233;
                      if (v230)
                      {
                        goto LABEL_112;
                      }
                    }

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
LABEL_148:
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
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
LABEL_156:
                    __break(1u);
                    goto LABEL_157;
                  }

                  v234 = v233;
LABEL_112:
                  v235 = __clz(__rbit64(v230));
                  v230 &= v230 - 1;
                  v236 = v235 | (v234 << 6);
                  v237 = (*(v333 + 48) + 16 * v236);
                  v239 = *v237;
                  v238 = v237[1];
                  v240 = *(*(v333 + 56) + 8 * v236);
                  v241 = v231[2];
                  sub_190D52690();
                  if (v241 && (v242 = sub_19022DCEC(v239, v238), (v243 & 1) != 0))
                  {
                    v244 = *(v231[7] + 8 * v242);
                    v47 = __OFADD__(v244, v240);
                    v245 = (v244 + v240);
                    if (v47)
                    {
                      goto LABEL_154;
                    }

                    v330 = v245;
                    v246 = v311;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v248 = v239;
                    v249 = isUniquelyReferenced_nonNull_native;
                    v346[0] = v246;
                    v250 = v248;
                    v251 = sub_19022DCEC(v248, v238);
                    v253 = v246[2];
                    v254 = (v252 & 1) == 0;
                    v47 = __OFADD__(v253, v254);
                    v255 = v253 + v254;
                    if (v47)
                    {
                      goto LABEL_155;
                    }

                    v256 = v252;
                    if (v246[3] < v255)
                    {
                      sub_190B63ED8(v255, v249);
                      v251 = sub_19022DCEC(v250, v238);
                      if ((v256 & 1) != (v257 & 1))
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_132;
                    }

                    if (v249)
                    {
LABEL_132:
                      if (v256)
                      {
                        goto LABEL_133;
                      }
                    }

                    else
                    {
                      v279 = v251;
                      sub_190B6893C();
                      v251 = v279;
                      if (v256)
                      {
LABEL_133:
                        v277 = v251;

                        v273 = v346[0];
                        *(*(v346[0] + 56) + 8 * v277) = v330;
                        goto LABEL_134;
                      }
                    }

                    v231 = v346[0];
                    *(v346[0] + 8 * (v251 >> 6) + 64) |= 1 << v251;
                    v280 = (v231[6] + 16 * v251);
                    *v280 = v250;
                    v280[1] = v238;
                    *(v231[7] + 8 * v251) = v330;
                    v281 = v231[2];
                    v47 = __OFADD__(v281, 1);
                    v276 = v281 + 1;
                    if (v47)
                    {
                      goto LABEL_173;
                    }
                  }

                  else
                  {
                    v258 = v226;
                    v259 = v311;
                    v260 = swift_isUniquelyReferenced_nonNull_native();
                    v261 = v239;
                    v262 = v260;
                    v346[0] = v259;
                    v263 = v261;
                    v264 = sub_19022DCEC(v261, v238);
                    v266 = v259[2];
                    v267 = (v265 & 1) == 0;
                    v47 = __OFADD__(v266, v267);
                    v268 = v266 + v267;
                    if (v47)
                    {
                      goto LABEL_152;
                    }

                    v269 = v265;
                    if (v259[3] >= v268)
                    {
                      if ((v262 & 1) == 0)
                      {
                        v278 = v264;
                        sub_190B6893C();
                        v264 = v278;
                      }

                      v270 = v263;
                    }

                    else
                    {
                      sub_190B63ED8(v268, v262);
                      v270 = v263;
                      v264 = sub_19022DCEC(v263, v238);
                      if ((v269 & 1) != (v271 & 1))
                      {
                        goto LABEL_175;
                      }
                    }

                    v226 = v258;
                    v232 = v331;
                    if (v269)
                    {
                      v272 = v264;

                      v273 = v346[0];
                      *(*(v346[0] + 56) + 8 * v272) = v240;
LABEL_134:
                      v233 = v234;
                      v311 = v273;
                      v231 = v273;
                      continue;
                    }

                    v231 = v346[0];
                    *(v346[0] + 8 * (v264 >> 6) + 64) |= 1 << v264;
                    v274 = (v231[6] + 16 * v264);
                    *v274 = v270;
                    v274[1] = v238;
                    *(v231[7] + 8 * v264) = v240;
                    v275 = v231[2];
                    v47 = __OFADD__(v275, 1);
                    v276 = v275 + 1;
                    if (v47)
                    {
                      goto LABEL_153;
                    }
                  }

                  break;
                }

                v231[2] = v276;
                v233 = v234;
                v311 = v231;
                continue;
              }
            }

            v327 = v162;
            v177 = *&v176[*(v104 + 48)];
            (*v330)(v159, v176, v333);
            if (!v157[2])
            {
              break;
            }

            v178 = sub_190875BAC(v159);
            v179 = *v331;
            if ((v180 & 1) == 0)
            {
              goto LABEL_83;
            }

            v181 = *(v157[7] + 8 * v178);
            v182 = v314;
            v179(v314, v159, v333);
            v47 = __OFADD__(v181, v177);
            v183 = v181 + v177;
            if (v47)
            {
              goto LABEL_148;
            }

            v184 = v325;
            v185 = swift_isUniquelyReferenced_nonNull_native();
            v346[0] = v184;
            v186 = sub_190875BAC(v182);
            v188 = v184[2];
            v189 = (v187 & 1) == 0;
            v47 = __OFADD__(v188, v189);
            v190 = v188 + v189;
            if (v47)
            {
              goto LABEL_149;
            }

            v191 = v187;
            if (v184[3] >= v190)
            {
              if ((v185 & 1) == 0)
              {
                v223 = v186;
                sub_190B68C28();
                v186 = v223;
              }
            }

            else
            {
              sub_190B64454(v190, v185);
              v186 = sub_190875BAC(v314);
              if ((v191 & 1) != (v192 & 1))
              {
                goto LABEL_174;
              }
            }

            v206 = v314;
            v203 = v346[0];
            if ((v191 & 1) == 0)
            {
              v208 = v346[0];
              *(v346[0] + 8 * (v186 >> 6) + 64) |= 1 << v186;
              v210 = v329;
              v211 = v186;
              v212 = v333;
              v179((v208[6] + *(v329 + 72) * v186), v206, v333);
              *(v208[7] + 8 * v211) = v183;
              v213 = *(v210 + 8);
              v159 = v320;
              v213(v206, v212);
              v213(v159, v212);
              v214 = v208[2];
              v47 = __OFADD__(v214, 1);
              v215 = v214 + 1;
              if (v47)
              {
                goto LABEL_151;
              }

              goto LABEL_101;
            }

            *(*(v346[0] + 56) + 8 * v186) = v183;
            v204 = *v326;
            v205 = v206;
LABEL_95:
            v207 = v333;
            v208 = v203;
            v204(v205, v333);
            v204(v159, v207);
            v209 = v208;
LABEL_102:
            v158 = v327;
            v104 = v328;
            v157 = v208;
            v325 = v209;
            if (!v156)
            {
              goto LABEL_66;
            }
          }

          v179 = *v331;
LABEL_83:
          v193 = v321;
          v179(v321, v159, v333);
          v194 = v325;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v346[0] = v194;
          v196 = sub_190875BAC(v193);
          v198 = v194[2];
          v199 = (v197 & 1) == 0;
          v47 = __OFADD__(v198, v199);
          v200 = v198 + v199;
          if (v47)
          {
            goto LABEL_143;
          }

          v201 = v197;
          if (v194[3] < v200)
          {
            sub_190B64454(v200, v195);
            v196 = sub_190875BAC(v321);
            if ((v201 & 1) != (v202 & 1))
            {
              goto LABEL_174;
            }

            goto LABEL_88;
          }

          if (v195)
          {
LABEL_88:
            v203 = v346[0];
            if ((v201 & 1) == 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            v216 = v196;
            sub_190B68C28();
            v196 = v216;
            v203 = v346[0];
            if ((v201 & 1) == 0)
            {
LABEL_100:
              v208 = v203;
              v203[(v196 >> 6) + 8] |= 1 << v196;
              v217 = v329;
              v218 = v196;
              v219 = v321;
              v220 = v333;
              v179((v203[6] + *(v329 + 72) * v196), v321, v333);
              *(v208[7] + 8 * v218) = v177;
              v221 = *(v217 + 8);
              v159 = v320;
              v221(v219, v220);
              v221(v159, v220);
              v222 = v208[2];
              v47 = __OFADD__(v222, 1);
              v215 = v222 + 1;
              if (v47)
              {
                goto LABEL_147;
              }

LABEL_101:
              v209 = v208;
              v208[2] = v215;
              goto LABEL_102;
            }
          }

          *(v203[7] + 8 * v196) = v177;
          v204 = *v326;
          v205 = v321;
          goto LABEL_95;
        }

LABEL_66:
        if (v315 <= v158 + 1)
        {
          v161 = (v158 + 1);
        }

        else
        {
          v161 = v315;
        }

        v162 = v161 - 1;
        while (1)
        {
          v160 = v158 + 1;
          if (__OFADD__(v158, 1))
          {
            break;
          }

          if (v160 >= v315)
          {
            v156 = 0;
            v174 = 1;
            v173 = v318;
            goto LABEL_74;
          }

          v156 = *&v316[8 * v160];
          ++v158;
          if (v156)
          {
            goto LABEL_73;
          }
        }

LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v107 = *&v103[*(v104 + 48)];
      v108 = v328;
      (*v330)(v328, v103, v333);
      v109 = v331;
      v110 = v332;
      if (v332[2])
      {
        v111 = sub_190875BAC(v108);
        v112 = *v109;
        if (v113)
        {
          v114 = *(v110[7] + 8 * v111);
          v115 = v315;
          v112(v315, v108, v333);
          v47 = __OFADD__(v114, v107);
          v116 = v114 + v107;
          if (v47)
          {
            goto LABEL_145;
          }

          v117 = swift_isUniquelyReferenced_nonNull_native();
          v346[0] = v110;
          v118 = sub_190875BAC(v115);
          v120 = v110[2];
          v121 = (v119 & 1) == 0;
          v47 = __OFADD__(v120, v121);
          v122 = v120 + v121;
          if (v47)
          {
            goto LABEL_146;
          }

          v123 = v119;
          if (v110[3] >= v122)
          {
            if ((v117 & 1) == 0)
            {
              v151 = v118;
              sub_190B68C28();
              v118 = v151;
            }
          }

          else
          {
            sub_190B64454(v122, v117);
            v118 = sub_190875BAC(v315);
            if ((v123 & 1) != (v124 & 1))
            {
              goto LABEL_174;
            }
          }

          v144 = v315;
          v332 = v346[0];
          if (v123)
          {
            *(*(v346[0] + 56) + 8 * v118) = v116;
            v88 = *v326;
            v89 = v144;
            goto LABEL_25;
          }

          *(v346[0] + 8 * (v118 >> 6) + 64) |= 1 << v118;
          v145 = v333;
          v146 = v329;
          v147 = v118;
          v112((v332[6] + *(v329 + 72) * v118), v144, v333);
          *(v332[7] + 8 * v147) = v116;
          v148 = *(v146 + 8);
          v148(v144, v145);
          v148(v328, v145);
          v140 = v332;
          v149 = v332[2];
          v47 = __OFADD__(v149, 1);
          v142 = v149 + 1;
          if (v47)
          {
            goto LABEL_150;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v112 = *v331;
      }

      v125 = v323;
      v112(v323, v108, v333);
      v126 = v332;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v346[0] = v126;
      v128 = sub_190875BAC(v125);
      v130 = v126[2];
      v131 = (v129 & 1) == 0;
      v47 = __OFADD__(v130, v131);
      v132 = v130 + v131;
      if (v47)
      {
        goto LABEL_142;
      }

      v133 = v129;
      if (v126[3] >= v132)
      {
        if ((v127 & 1) == 0)
        {
          v150 = v128;
          sub_190B68C28();
          v128 = v150;
        }
      }

      else
      {
        sub_190B64454(v132, v127);
        v128 = sub_190875BAC(v323);
        if ((v133 & 1) != (v134 & 1))
        {
          goto LABEL_174;
        }
      }

      v332 = v346[0];
      if (v133)
      {
        *(*(v346[0] + 56) + 8 * v128) = v107;
        v88 = *v326;
        v89 = v323;
LABEL_25:
        v90 = v333;
        v88(v89, v333);
        v88(v328, v90);
        goto LABEL_26;
      }

      *(v346[0] + 8 * (v128 >> 6) + 64) |= 1 << v128;
      v135 = v333;
      v136 = v329;
      v137 = v128;
      v138 = v323;
      v112((v332[6] + *(v329 + 72) * v128), v323, v333);
      *(v332[7] + 8 * v137) = v107;
      v139 = *(v136 + 8);
      v139(v138, v135);
      v139(v328, v135);
      v140 = v332;
      v141 = v332[2];
      v47 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v47)
      {
        goto LABEL_144;
      }

LABEL_61:
      v140[2] = v142;
LABEL_26:
      v87 = v327;
      v26 = v324;
    }

    if (v312 <= v87 + 1)
    {
      v92 = v87 + 1;
    }

    else
    {
      v92 = v312;
    }

    while (1)
    {
      v91 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v91 >= v312)
      {
        v327 = (v92 - 1);
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EC28);
        (*(*(v143 - 8) + 56))(v26, 1, 1, v143);
        v86 = 0;
        goto LABEL_36;
      }

      v86 = *(v313 + 8 * v91);
      ++v87;
      if (v86)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  sub_190D587C0();
  __break(1u);
LABEL_175:
  result = sub_190D587C0();
  __break(1u);
  return result;
}