void sub_24E010F90()
{
  OUTLINED_FUNCTION_2_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0_50();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 32);
      swift_unknownObjectRetain();
      v10(v4, v2 & 1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_3_30();
}

void sub_24E011038()
{
  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_5_25();
  if (v0)
  {

    do
    {
      OUTLINED_FUNCTION_7_18();
      OUTLINED_FUNCTION_4_27();
      v2 = *(v1 + 40);
      v1 += 40;
      swift_unknownObjectRetain();
      v3 = OUTLINED_FUNCTION_1_40();
      v2(v3);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_6_23();
    }

    while (!v4);
  }

  OUTLINED_FUNCTION_3_30();
}

uint64_t sub_24E0110BC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = OUTLINED_FUNCTION_0_50();
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      swift_unknownObjectRelease();
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_24E011260(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return swift_getObjectType();
}

uint64_t View.GKFocusable(_:)()
{
  v0 = sub_24E345738();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[1] = MEMORY[0x277D84F90];
  sub_24DFC4430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0);
  sub_24E0114B4();
  sub_24E3487E8();
  sub_24E3468F8();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_24E0114B4()
{
  result = qword_27F1DFBA8;
  if (!qword_27F1DFBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DFBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DFBA8);
  }

  return result;
}

void sub_24E011518()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v36 = [v1 navigationBar];

  if (!v36)
  {
    return;
  }

  v3 = [v0 collectionView];
  if (!v3)
  {
    v35 = v36;
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E369990;
  *(v6 + 32) = v4;
  v7 = v4;
  sub_24DFD7FD0(v6, v5);
  v8 = OUTLINED_FUNCTION_0_51();
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = v5;
  [v9 addLayoutGuide_];

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24E36D5F0;
  v12 = [v10 topAnchor];

  v13 = OUTLINED_FUNCTION_0_51();
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  [v36 frame];
  v17 = [v12 constraintEqualToAnchor:v15 constant:v16];

  *(v11 + 32) = v17;
  v18 = [v10 bottomAnchor];

  v19 = OUTLINED_FUNCTION_0_51();
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v11 + 40) = v22;
  v23 = [v10 leadingAnchor];

  v24 = OUTLINED_FUNCTION_0_51();
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v11 + 48) = v27;
  v28 = [v10 trailingAnchor];

  v29 = OUTLINED_FUNCTION_0_51();
  if (!v29)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v30 trailingAnchor];

  v33 = [v28 constraintEqualToAnchor_];
  *(v11 + 56) = v33;
  sub_24DF88A8C(0, &qword_27F1E1F10);
  v34 = sub_24E347EE8();

  [v31 activateConstraints_];

  v35 = v34;
LABEL_12:
}

id sub_24E011930(uint64_t a1, uint64_t a2)
{
  v4 = GKGameCenterUIFrameworkBundle();
  sub_24DF88A8C(0, &qword_280BE0110);
  v5 = v4;

  result = sub_24E30C758(a1, a2, v4);
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E0119C8(id a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    [a1 setTransitioningDelegate_];
  }

  v7 = [v4 navigationController];
  [v7 pushViewController:a1 animated:a2 & 1];
}

id OUTLINED_FUNCTION_0_51()
{

  return [v0 (v1 + 2808)];
}

id sub_24E011A70(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ReportFriendActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E011AE4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v2 = sub_24E347AD8();
  sub_24DF88A8C(0, &qword_27F1E0AD8);
  v3 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;

  return v2;
}

void sub_24E011BE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24E347218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_24E0126A4();
    v11 = swift_allocError();
    *v12 = 0;
    v13 = a2;
    sub_24E347AB8();

    v14 = a2;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_24E0126A4();
    v24 = swift_allocError();
    *v25 = 0;
    sub_24E347AB8();
    v14 = v24;
LABEL_3:

LABEL_5:

    return;
  }

  v15 = objc_allocWithZone(GKRemoteUINavigationController);
  v28 = a1;
  v16 = [v15 initWithRemoteUIController_];
  if (!v16)
  {

    sub_24E0126A4();
    v26 = swift_allocError();
    *v27 = 0;
    sub_24E347AB8();

    v14 = v28;

    goto LABEL_5;
  }

  v17 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v19 = Strong, v20 = swift_unknownObjectWeakLoadStrong(), v19, v20))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = a4;
    aBlock[4] = sub_24E0126F8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E2122D8;
    aBlock[3] = &block_descriptor_16;
    v22 = _Block_copy(aBlock);
    v23 = v20;

    [v28 setCompletionHandler_];
    _Block_release(v22);

    [v17 setModalPresentationStyle_];
    [v23 presentViewController:v17 animated:1 completion:0];
    (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v7);
    sub_24E347AC8();
  }

  else
  {

    (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v7);
    sub_24E347AC8();
  }

  (*(v8 + 8))(v10, v7);
}

void sub_24E011FC8(int a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a2)
  {
    v6[4] = sub_24E012700;
    v6[5] = a4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_19_0;
    v5 = _Block_copy(v6);

    [a3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }

  else
  {

    [a3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_24E0120D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E012288(0, 0);
  }
}

id sub_24E01212C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24E0121FC;
    v7[3] = &block_descriptor_10;
    v4 = _Block_copy(v7);
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() controllerForProblemPlayer:a1 completionHandler:v4];
  _Block_release(v4);

  return v5;
}

void sub_24E0121FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_24E012288(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24DF88A8C(0, &qword_27F1DFB28);
    v6 = sub_24E347CB8();
    v7 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();

    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = sub_24E347CB8();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();

    v15 = sub_24E347CF8();
    v17 = v16;

    v18 = sub_24E3191B4(v9, v11, v15, v17, 1);
    sub_24DF88A8C(0, &qword_27F1E2900);
    v19 = sub_24E347CB8();
    v20 = GKGameCenterUIFrameworkBundle();
    v21 = GKGetLocalizedStringFromTableInBundle();

    v22 = sub_24E347CF8();
    v24 = v23;

    v25 = sub_24E3190AC(v22, v24, 0, 0, 0);
    [v18 addAction_];
    if (a1)
    {
      v26[4] = a1;
      v26[5] = a2;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 1107296256;
      v26[2] = sub_24E00B24C;
      v26[3] = &block_descriptor_17;
      a1 = _Block_copy(v26);
    }

    [v5 presentViewController:v18 animated:1 completion:a1];
    _Block_release(a1);
  }

  else if (a1)
  {
    (a1)();
  }
}

id sub_24E01259C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportFriendActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E012608()
{
  result = qword_27F1E0AD0;
  if (!qword_27F1E0AD0)
  {
    type metadata accessor for ReportFriendAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AD0);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E0126A4()
{
  result = qword_27F1E0AE0;
  if (!qword_27F1E0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportFriendActionImplementation.ReportFriendActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E0127E8()
{
  result = qword_27F1E0AE8;
  if (!qword_27F1E0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0AE8);
  }

  return result;
}

id sub_24E012854(char a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameCenterUI6Switch_toggleAction;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  swift_beginAccess();
  sub_24E012CF8(a2, v5);
  swift_endAccess();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for Switch();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setOn_];
  [v6 addTarget:v6 action:sel_didToggle forControlEvents:4096];

  sub_24E012BE0(a2);
  return v6;
}

void sub_24E01293C()
{
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI6Switch_toggleAction;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E0129CC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI6Switch_toggleAction;
  swift_beginAccess();
  sub_24E012B70(v0 + v1, v5);
  if (!v5[0])
  {
    return sub_24E012BE0(v5);
  }

  sub_24E012C48(v5, &v4);
  sub_24E012BE0(v5);
  v2 = v4;

  sub_24E012CA4(&v4);
  v2([v0 isOn]);
}

id sub_24E012B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Switch();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E012B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E012BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E012CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0AF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_24E012D68(void *a1, char a2)
{
  v4 = [objc_opt_self() labelColor];
  v5 = [objc_opt_self() configurationWithHierarchicalColor_];

  v6 = [a1 configurationByApplyingConfiguration_];
  sub_24DFC2C38();
  v7 = sub_24E012E70(a2);
  v9 = sub_24E1A5748(v7, v8, 0);

  if (v9)
  {
    v10 = [v9 imageWithConfiguration_];
  }

  else
  {

    return 0;
  }

  return v10;
}

unint64_t sub_24E012E70(char a1)
{
  result = 0x6174732E7473696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002FLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x322E6E6F73726570;
      break;
    case 6:
      result = 0x69662E6B636F6C63;
      break;
    case 7:
      result = 0x7061687372616567;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E012FB0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v2 = sub_24E347AD8();
  v3 = objc_opt_self();
  v4 = *a1;
  v5 = [v3 proxyForPlayer_];
  v6 = [v5 profileServicePrivate];

  v7 = sub_24E347CB8();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(a1 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v2;
  v11 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a1 + 32);
  v15[4] = sub_24E0136D4;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24E2EEC6C;
  v15[3] = &block_descriptor_7;
  v12 = _Block_copy(v15);

  v13 = v4;

  sub_24DE56C38(v9);

  [v6 setPlayerNickname:v7 suggestionsCount:3 handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  return v2;
}

void sub_24E013188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E013248(*a6, v9, a2, a3);
  }

  else
  {
    sub_24E013668();
    v10 = swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    sub_24E347AB8();
  }
}

void sub_24E013248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24E347218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 | a3)
  {
    v12 = sub_24E013444(a3);
    v14 = v13;
    sub_24E013668();
    v15 = swift_allocError();
    *v16 = v12;
    v16[1] = v14;
    sub_24E347AB8();
  }

  else
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_18;
    v11 = _Block_copy(aBlock);
    [a1 deleteMonogramsWithHandler_];
    _Block_release(v11);
    (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v7);
    sub_24E347AC8();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24E013444(uint64_t a1)
{
  if (a1 == 5022 || a1 == 5024 || a1 == 5065)
  {
    OUTLINED_FUNCTION_0_52();
  }

  v1 = sub_24E347CB8();
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = sub_24E347CF8();
  return v4;
}

unint64_t sub_24E0135F0()
{
  result = qword_27F1E0B00;
  if (!qword_27F1E0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0B00);
  }

  return result;
}

unint64_t sub_24E013668()
{
  result = qword_27F1E0B08;
  if (!qword_27F1E0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0B08);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E0136E0(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E013730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_24E013784(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24E01379C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PrivacyAndSettingsAction()
{
  result = qword_27F1E0B10;
  if (!qword_27F1E0B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E013858()
{
  result = sub_24E347208();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E0138F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E3444F8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  if (qword_27F1DDF70 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v10 = sub_24E344158();
  v11 = __swift_project_value_buffer(v10, &unk_27F20BA50);
  (*(*(v10 - 8) + 16))(v8, v11, v10);
  (*(v5 + 104))(v8, *MEMORY[0x277D22618], v3);
  v15[3] = v3;
  v15[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v8, v3);
  sub_24E344508();
  return (*(v5 + 8))(v8, v3);
}

id ProfileAvatarView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *ProfileAvatarView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditLabel;
  if (qword_27F1DDF70 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, &unk_27F20BA50);
  (*(*(v9 - 8) + 16))(v4, v10, v9);
  v11 = objc_allocWithZone(OUTLINED_FUNCTION_10_17());
  *(v1 + v8) = OUTLINED_FUNCTION_2_33();
  v12 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_roundedEditButton;
  type metadata accessor for RoundEditProfileButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapHandler);
  v14 = type metadata accessor for ProfileAvatarView();
  *v13 = 0;
  v13[1] = 0;
  v37[0] = v1;
  v37[1] = v14;
  v15 = OUTLINED_FUNCTION_28();
  v18 = objc_msgSendSuper2(v16, v17, v15);
  v19 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground;
  v20 = *&v18[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground];
  v21 = v18;
  v22 = [v20 contentView];
  v23 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditLabel;
  [v22 addSubview_];

  [*&v18[v19] setHidden_];
  v24 = *&v21[OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView];

  [*&v24[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView] addSubview_];
  [*&v21[v23] setNumberOfLines_];
  v25 = *&v21[v23];
  v26 = sub_24E347CB8();
  v27 = GKGameCenterUIFrameworkBundle();
  v28 = GKGetLocalizedStringFromTableInBundle();

  v29 = sub_24E347CF8();
  v31 = v30;

  sub_24DFA0B40(v29, v31, v25);
  [*&v21[v23] setTextAlignment_];
  v32 = *&v21[v23];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 whiteColor];
  [v34 setTextColor_];

  [*&v21[v23] setMaximumContentSizeCategory_];
  [v21 addSubview_];
  sub_24E014BD4();

  return v21;
}

void sub_24E013EEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground;
  v6 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditLabel;
  if (qword_27F1DDF70 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v9 = sub_24E344158();
  v10 = __swift_project_value_buffer(v9, &unk_27F20BA50);
  (*(*(v9 - 8) + 16))(v4, v10, v9);
  v11 = objc_allocWithZone(OUTLINED_FUNCTION_10_17());
  *(v1 + v8) = OUTLINED_FUNCTION_2_33();
  v12 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_roundedEditButton;
  type metadata accessor for RoundEditProfileButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E0140F8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return sub_24E014BD4();
  }

  return result;
}

uint64_t sub_24E014154()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable;
  OUTLINED_FUNCTION_9_16();
  return *(v0 + v1);
}

id sub_24E014188(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_24E0140F8(v4);
}

void (*sub_24E0141E0(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_24E014260;
}

void sub_24E014260(uint64_t a1)
{
  v1 = *a1;
  sub_24E014188(*(*a1 + 32));

  free(v1);
}

uint64_t sub_24E0142A0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24E014494();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E014310(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1);
  return sub_24E0144DC(v4, v3);
}

void sub_24E0143A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapHandler;
  swift_beginAccess();
  v3 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapGestureRecognizer;
  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapGestureRecognizer];
  if (*&v1[v2])
  {
    if (v4)
    {
      return;
    }

    v10[3] = type metadata accessor for ProfileAvatarView();
    v10[0] = v1;
    v5 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v6 = v1;
    v7 = sub_24E2BE570(v10, sel_didTap);
    v8 = *&v1[v3];
    *&v1[v3] = v7;
    v9 = v7;

    [v6 addGestureRecognizer_];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    [v1 removeGestureRecognizer_];
    v9 = *&v1[v3];
    *&v1[v3] = 0;
  }
}

uint64_t sub_24E014494()
{
  OUTLINED_FUNCTION_3_31();
  v1 = *v0;
  sub_24DE56C38(*v0);
  return v1;
}

uint64_t sub_24E0144DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_24DE56C38(a1);
  sub_24DE73FA0(v6);
  sub_24E0143A0();
  return sub_24DE73FA0(a1);
}

void (*sub_24E014568(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E0145CC;
}

void sub_24E0145CC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E0143A0();
  }
}

id sub_24E014600()
{
  v1 = v0;
  v2 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProfileAvatarView();
  v35.receiver = v0;
  v35.super_class = v8;
  objc_msgSendSuper2(&v35, sel_layoutSubviews);
  if (qword_27F1DD650 != -1)
  {
    swift_once();
  }

  v9 = sub_24E3444F8();
  __swift_project_value_buffer(v9, qword_27F1E0B20);
  v10 = *&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditLabel];
  v11 = sub_24E0AEA08();
  sub_24E343F98();
  sub_24E3444C8();
  v13 = v12;

  v14 = *(v4 + 8);
  v14(v7, v2);
  if (qword_27F1DD658 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27F1E0B38);
  v15 = sub_24E0AEA08();
  sub_24E343F98();
  sub_24E3444C8();
  v17 = v16;

  v14(v7, v2);
  v18 = *&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground];
  v19 = v13 + v17;
  v20 = *&v0[OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView];
  [*&v1[OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView] bounds];
  MinX = CGRectGetMinX(v36);
  [v20 bounds];
  v22 = CGRectGetMaxY(v37) - v19;
  [v20 bounds];
  [v18 setFrame_];
  [v1 bounds];
  [v1 layoutMargins];
  OUTLINED_FUNCTION_4_28(v23);
  [v10 measurementsWithFitting:v1 in:v24];
  v26 = v25;
  v28 = v27;
  v29 = [v18 contentView];
  [v29 bounds];

  v39.origin.x = OUTLINED_FUNCTION_8_17();
  v30 = CGRectGetMidX(v39) - v26 * 0.5;
  v40.origin.x = OUTLINED_FUNCTION_8_17();
  [v10 setFrame_];
  v31 = *&v1[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_roundedEditButton];
  [v1 bounds];
  [v1 layoutMargins];
  OUTLINED_FUNCTION_4_28(v32);
  [v31 sizeThatFits_];
  [v20 frame];
  CGRectGetMaxX(v41);
  [v20 frame];
  CGRectGetMaxY(v42);
  [v1 bounds];
  [v1 layoutMargins];
  sub_24E348508();
  return [v31 setFrame_];
}

id sub_24E014A68(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ProfileAvatarView();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
  sub_24E014BD4();
  return [v1 setNeedsLayout];
}

uint64_t sub_24E014B2C()
{
  result = OUTLINED_FUNCTION_3_31();
  v2 = *v0;
  if (*v0)
  {

    v2(v3);
    return sub_24DE73FA0(v2);
  }

  return result;
}

id sub_24E014BD4()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_isEditable;
  OUTLINED_FUNCTION_9_16();
  if (v0[v1] == 1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    LOBYTE(v2) = sub_24E348468();
    if (v2)
    {
      v4 = 0;
      v5 = 1;
    }

    else
    {
      v7 = sub_24E347CB8();
      v8 = GKGameCenterUIFrameworkBundle();
      v9 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      v10 = sub_24E347DD8();

      v5 = v10 > 5;
      v4 = v10 < 6;
    }

    [*&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_roundedEditButton] setHidden_];
    [*&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground] setHidden_];
    return [v0 setNeedsLayout];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_profileEditButtonBackground] setHidden_];
    return [*&v0[OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_roundedEditButton] setHidden_];
  }
}

uint64_t sub_24E014E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17ProfileAvatarView_tapHandler);

  return sub_24DE73FA0(v1);
}

char *sub_24E014F78(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_shadowView;
  type metadata accessor for ShadowView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v39.receiver = v4;
  v39.super_class = type metadata accessor for RoundEditProfileButton();
  v11 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = v11;
  [v16 setLayoutMargins_];
  v17 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_shadowView;
  v18 = qword_27F1DE118;
  v19 = *&v16[OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_shadowView];
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for PlayerCardTheme();
  [v19 setBackgroundColor_];

  v21 = qword_27F1DD8D8;
  v22 = *&v16[v17];
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_27F20AF70;
  v24 = *algn_27F20AF78;
  v25 = qword_27F20AF80;
  v26 = qword_27F20AF88;
  v27 = qword_27F20AF70;
  sub_24E30A46C(v23, v24, v25, v26);

  [v16 addSubview_];
  v28 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView;
  v29 = *&v16[OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView];
  v30 = sub_24E01536C();
  [v29 setPreferredSymbolConfiguration_];

  v31 = *&v16[v28];
  sub_24DFC2C38();
  v32 = v31;
  v33 = sub_24DFD29F8();
  [v32 setImage_];

  v34 = *&v16[v28];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemBlueColor];
  [v36 setTintColor_];

  [v16 addSubview_];
  [v16 setUserInteractionEnabled_];

  return v16;
}

void sub_24E015298()
{
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_24E348AE8();
  __break(1u);
}

id sub_24E01536C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_24E348468();
  v3 = objc_opt_self();
  v4 = 15.0;
  if (v1)
  {
    v4 = 20.0;
  }

  v5 = [v3 systemFontOfSize_];
  v6 = [objc_opt_self() configurationWithFont:v5 scale:-1];

  return v6;
}

double sub_24E015444()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_24E348468();
  result = 36.0;
  if ((v1 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

id sub_24E015520()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for RoundEditProfileButton();
  objc_msgSendSuper2(&v57, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_shadowView];
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  [v1 layoutMargins];
  [v2 setFrame_];
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  [v1 layoutMargins];
  v16 = v15;
  v58.origin.x = v17;
  v19 = v12 - v17 - v18;
  v58.size.height = v14 - v16 - v20;
  v58.origin.y = v16;
  v58.size.width = v19;
  Width = CGRectGetWidth(v58);
  sub_24E30A400(1, Width * 0.5);
  v22 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView];
  [v1 bounds];
  v24 = v23;
  v26 = v25;
  [v1 layoutMargins];
  [v22 sizeThatFits_];
  v32 = v31;
  v34 = v33;
  [v1 bounds];
  v36 = v35;
  v38 = v37;
  [v1 layoutMargins];
  v40 = v39;
  v59.origin.x = v41;
  v43 = v36 - v41 - v42;
  v59.size.height = v38 - v40 - v44;
  v59.origin.y = v40;
  v59.size.width = v43;
  v45 = CGRectGetMidX(v59) - v32 * 0.5;
  [v1 bounds];
  v47 = v46;
  v49 = v48;
  [v1 layoutMargins];
  v51 = v50;
  v60.origin.x = v52;
  v54 = v47 - v52 - v53;
  v60.size.height = v49 - v51 - v55;
  v60.origin.y = v51;
  v60.size.width = v54;
  return [v22 setFrame_];
}

void sub_24E015794(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for RoundEditProfileButton();
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_24E347CF8();
  v8 = v7;
  if (v6 == sub_24E347CF8() && v8 == v9)
  {

    return;
  }

  v11 = sub_24E348C08();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_3CDA1BD77FD495B0F73399413CCB4C6E22RoundEditProfileButton_pencilImageView];
    v13 = sub_24E01536C();
    [v12 setPreferredSymbolConfiguration_];
  }
}

id sub_24E015978(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *OUTLINED_FUNCTION_2_33()
{

  return sub_24E0AEF24(v0, 0, 2, 0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_17()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return type metadata accessor for DynamicTypeLabel();
}

GameCenterUI::AchievementsListScrollDirection_optional __swiftcall AchievementsListScrollDirection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24E015CDC()
{
  result = qword_27F1E0B90;
  if (!qword_27F1E0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0B90);
  }

  return result;
}

uint64_t sub_24E015D50@<X0>(uint64_t *a1@<X8>)
{
  result = AchievementsListScrollDirection.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AchievementsListScrollDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98);
  v7 = swift_allocObject();
  v8 = *(*v7 + 88);
  sub_24E343FC8();
  OUTLINED_FUNCTION_22_0();
  result = (*(v9 + 32))(v7 + v8, a1);
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t CappedSizeStaticDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + 88);
  sub_24E343FC8();
  OUTLINED_FUNCTION_22_0();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

id sub_24E015F90()
{
  sub_24E016324();
  v0 = sub_24E347EE8();

  v1 = [swift_getObjCClassFromMetadata() traitCollectionWithTraitsFromCollections_];

  return v1;
}

void CappedSizeStaticDimension.value(compatibleWith:rounded:)(void *a1, uint64_t a2)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_1_23();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = *(v3 + 16);
  v13 = [a1 preferredContentSizeCategory];
  v14 = sub_24E348468();

  if (v14)
  {
    sub_24E016324();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_24E36BFC0;
    *(v15 + 32) = a1;
    v16 = objc_opt_self();
    v17 = a1;
    *(v15 + 40) = [v16 traitCollectionWithPreferredContentSizeCategory_];
    v18 = sub_24E015F90();
  }

  else
  {
    v18 = a1;
  }

  v19 = v18;
  v24[3] = sub_24E343FC8();
  v24[4] = MEMORY[0x277D22628];
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_22_0();
  (*(v20 + 16))();
  sub_24E343598();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v24[0] = v22;
  (*(v7 + 16))(v11, a2, v2);
  v23 = (*(v7 + 88))(v11, v2);
  if (v23 == *MEMORY[0x277D84678] || v23 == *MEMORY[0x277D84670] || v23 == *MEMORY[0x277D84680] || v23 == *MEMORY[0x277D84688] || v23 == *MEMORY[0x277D84660] || v23 == *MEMORY[0x277D84668])
  {
  }

  else
  {
    sub_24E348108();

    (*(v7 + 8))(v11, v2);
  }
}

unint64_t sub_24E016324()
{
  result = qword_27F1E0BA0;
  if (!qword_27F1E0BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E0BA0);
  }

  return result;
}

double CappedSizeStaticDimension.rawValue(in:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_24E348468();

  if (v5)
  {
    sub_24E016324();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24E36BFC0;
    *(v6 + 32) = v3;
    v7 = objc_opt_self();
    v8 = v3;
    *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory_];
    v3 = sub_24E015F90();
  }

  v13[3] = sub_24E343FC8();
  v13[4] = MEMORY[0x277D22628];
  __swift_allocate_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_22_0();
  (*(v9 + 16))();
  sub_24E343598();
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

UIEdgeInsets __swiftcall CappedSizeStaticDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v1 + 16);
  v5 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
  v6 = sub_24E348468();

  if (v6)
  {
    sub_24E016324();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24E36BFC0;
    *(v7 + 32) = compatibleWith;
    v8 = objc_opt_self();
    v9 = compatibleWith.super.isa;
    *(v7 + 40) = [v8 traitCollectionWithPreferredContentSizeCategory_];
    v10 = sub_24E015F90();
  }

  else
  {
    v10 = compatibleWith.super.isa;
  }

  v11 = v10;
  v12 = OUTLINED_FUNCTION_3_32();
  v13(v12);
  v14 = sub_24E343FB8();
  v15 = OUTLINED_FUNCTION_2_34();
  v16(v15);
  sub_24E348578();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

uint64_t static CappedSizeStaticDimension.== infix(_:_:)(uint64_t a1, double *a2)
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  if (*a1 == *a2 && (v13 = *(v6 + 16), (v13)(&v25 - v11, *(a1 + 8) + *(**(a1 + 8) + 88), v2, *a1), v14 = OUTLINED_FUNCTION_3_32(), v13(v14), v15 = MEMORY[0x25303AB00](v12, v9), v16 = *(v6 + 8), v17 = OUTLINED_FUNCTION_2_34(), v16(v17), (v16)(v12, v2), (v15 & 1) != 0))
  {
    v18 = sub_24E347CF8();
    v20 = v19;
    if (v18 == sub_24E347CF8() && v20 == v21)
    {
      v23 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_2_34();
      v23 = sub_24E348C08();
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t CappedSizeStaticDimension.description.getter()
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_1();
  sub_24E348998();
  MEMORY[0x25303E950](0xD000000000000014, 0x800000024E3A1D60);
  v1 = sub_24E3480F8();
  MEMORY[0x25303E950](v1);

  MEMORY[0x25303E950](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v2 = OUTLINED_FUNCTION_3_32();
  v3(v2);
  OUTLINED_FUNCTION_3_32();
  sub_24E348AA8();
  v4 = OUTLINED_FUNCTION_2_34();
  v5(v4);
  MEMORY[0x25303E950](0xD000000000000013, 0x800000024E3A1D80);
  type metadata accessor for UIContentSizeCategory(0);
  sub_24E348AA8();
  return 0;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24E016AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24E016B08(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_24E016B70(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for BaseCollectionReusableView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setEdgesInsettingLayoutMarginsFromSafeArea_];
  return v9;
}

id sub_24E016C8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E016D94(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_24E016E5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E343FC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemImage();
  v6 = [objc_opt_self() configurationWithTextStyle_];
  v57 = sub_24E18EFCC(0x2E6E6F7276656863, 0xEF64726177726F66, v6);

  if (qword_27F1DE000 != -1)
  {
    swift_once();
  }

  v7 = sub_24E344158();
  v67 = __swift_project_value_buffer(v7, &unk_27F20BC00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v68 = v8 + 16;
  v9(v5, v67, v7);
  v66 = *MEMORY[0x277D22618];
  v10 = v3[13];
  v10(v5);
  v62 = sub_24E3444F8();
  v11 = MEMORY[0x277D22798];
  *(a1 + 24) = v62;
  *(a1 + 32) = v11;
  __swift_allocate_boxed_opaque_existential_1(a1);
  v76 = v2;
  v77 = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  v63 = v3[2];
  v63(boxed_opaque_existential_1, v5, v2);
  sub_24E344508();
  v13 = v3[1];
  v60 = v3 + 1;
  v13(v5, v2);
  v65 = v7;
  v61 = v9;
  v9(v5, v67, v7);
  v67 = (v3 + 13);
  v58 = v10;
  (v10)(v5, v66, v2);
  *(a1 + 64) = v62;
  *(a1 + 72) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  v76 = v2;
  v77 = MEMORY[0x277D22628];
  v14 = __swift_allocate_boxed_opaque_existential_1(v75);
  v64 = v3 + 2;
  v15 = v63;
  v63(v14, v5, v2);
  v16 = v15;
  sub_24E344508();
  v13(v5, v2);
  v17 = MEMORY[0x277D225F8];
  *(a1 + 136) = MEMORY[0x277D85048];
  *(a1 + 144) = v17;
  *(a1 + 112) = 0x4024000000000000;
  if (qword_27F1DD660 != -1)
  {
    swift_once();
  }

  v18 = v65;
  v19 = __swift_project_value_buffer(v65, qword_27F1E0BA8);
  v20 = v61;
  (v61)(v5, v19, v18);
  v21 = v58;
  (v58)(v5, v66, v2);
  v22 = v62;
  *(a1 + 176) = v62;
  *(a1 + 184) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 152));
  v76 = v2;
  v23 = MEMORY[0x277D22628];
  v77 = MEMORY[0x277D22628];
  v24 = __swift_allocate_boxed_opaque_existential_1(v75);
  v16(v24, v5, v2);
  sub_24E344508();
  v13(v5, v2);
  v25 = v13;
  v26 = v23;
  if (qword_27F1DD678 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v65, qword_27F1E0BF0);
  v20(v5);
  (v21)(v5, v66, v2);
  *(a1 + 216) = v22;
  v27 = MEMORY[0x277D22798];
  *(a1 + 224) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 192));
  v76 = v2;
  v77 = v26;
  v28 = __swift_allocate_boxed_opaque_existential_1(v75);
  v63(v28, v5, v2);
  sub_24E344508();
  v25(v5, v2);
  v59 = v25;
  v29 = v27;
  if (qword_27F1DD670 != -1)
  {
    swift_once();
  }

  v30 = v65;
  v31 = __swift_project_value_buffer(v65, qword_27F1E0BD8);
  (v61)(v5, v31, v30);
  v32 = v66;
  (v21)(v5, v66, v2);
  v76 = v22;
  v77 = v29;
  __swift_allocate_boxed_opaque_existential_1(v75);
  v73 = v2;
  v74 = MEMORY[0x277D22628];
  v33 = __swift_allocate_boxed_opaque_existential_1(v72);
  v63(v33, v5, v2);
  sub_24E344508();
  v59(v5, v2);
  v34 = v32;
  v35 = v22;
  if (qword_27F1DD668 != -1)
  {
    swift_once();
  }

  v36 = v65;
  v37 = __swift_project_value_buffer(v65, qword_27F1E0BC0);
  v38 = v61;
  (v61)(v5, v37, v36);
  (v21)(v5, v34, v2);
  v73 = v35;
  v74 = v29;
  __swift_allocate_boxed_opaque_existential_1(v72);
  v70 = v2;
  v71 = MEMORY[0x277D22628];
  v39 = __swift_allocate_boxed_opaque_existential_1(v69);
  v40 = v63;
  v63(v39, v5, v2);
  sub_24E344508();
  v41 = v59;
  v59(v5, v2);
  v38(v5, v56, v36);
  (v58)(v5, v66, v2);
  *(a1 + 336) = v62;
  *(a1 + 344) = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1((a1 + 312));
  v70 = v2;
  v71 = MEMORY[0x277D22628];
  v42 = __swift_allocate_boxed_opaque_existential_1(v69);
  v40(v42, v5, v2);
  sub_24E344508();
  v41(v5, v2);
  *(a1 + 376) = MEMORY[0x277D85048];
  *(a1 + 384) = MEMORY[0x277D225F8];
  *(a1 + 352) = 0x4024000000000000;
  v43 = v57;
  [v57 size];
  v45 = v44;
  v47 = v46;

  *(a1 + 232) = 0u;
  v48 = a1 + 232;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 176) = 0x4020000000000000;
  *(v48 + 184) = 0x4024000000000000;
  sub_24DFB6B5C(v75, v48);
  *(v48 - 152) = v45;
  *(v48 - 144) = v47;
  __asm { FMOV            V0.2D, #24.0 }

  *(v48 - 136) = _Q0;
  *(v48 + 160) = 0x4030000000000000;
  *(v48 + 168) = 0;
  return sub_24DFB6B5C(v72, v48 + 40);
}

char *sub_24E017748(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v15 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel;
  if (qword_27F1DD660 != -1)
  {
    OUTLINED_FUNCTION_2_35();
    swift_once();
  }

  v16 = sub_24E344158();
  v17 = __swift_project_value_buffer(v16, qword_27F1E0BA8);
  v18 = *(*(v16 - 8) + 16);
  v18(v13, v17, v16);
  OUTLINED_FUNCTION_10_1();
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = objc_allocWithZone(v19);
  *&v5[v15] = OUTLINED_FUNCTION_0_54(v13);
  v21 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel;
  if (qword_27F1DD678 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v22 = __swift_project_value_buffer(v16, qword_27F1E0BF0);
  v18(v13, v22, v16);
  OUTLINED_FUNCTION_10_1();
  v23 = objc_allocWithZone(v19);
  *&v5[v21] = OUTLINED_FUNCTION_0_54(v13);
  v24 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_chevronGlyph;
  v44 = 1;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v49 = 7;
  v25 = sub_24E073800();
  sub_24DF9D524(&v44);
  *&v5[v24] = v25;
  v5[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_state] = 0;
  v26 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_contentViewBackground;
  type metadata accessor for BackgroundView();
  *&v5[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_usingCustomHighlightView] = 0;
  v5[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_isHighlighted] = 0;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = *MEMORY[0x277D768C8];
  v29 = *(MEMORY[0x277D768C8] + 8);
  v30 = *(MEMORY[0x277D768C8] + 16);
  v31 = *(MEMORY[0x277D768C8] + 24);
  v32 = v27;
  [v32 setLayoutMargins_];
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_5_26();
  v33 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel;
  v34 = *&v32[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 secondaryLabelColor];
  [v36 setTextColor_];

  v38 = [*&v32[v33] layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for PlayerCardTheme();
  if (*(__swift_project_value_buffer(v39, qword_27F20BF00) + *(v39 + 56) + 8))
  {
    v40 = sub_24E347CB8();
  }

  else
  {
    v40 = 0;
  }

  [v38 setCompositingFilter_];

  swift_unknownObjectRelease();
  [*&v32[v33] setIsAccessibilityElement_];
  sub_24DFD8050(0xD00000000000002BLL, 0x800000024E3A1FE0, *&v32[v33]);
  OUTLINED_FUNCTION_5_26();
  OUTLINED_FUNCTION_5_26();
  sub_24E017BB0();
  v32[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_isHighlighted] = 1;
  [v32 setIsAccessibilityElement_];

  return v32;
}

void sub_24E017BB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_contentViewBackground);
  memset(v4, 0, sizeof(v4));
  v5 = 3;
  sub_24DFEB8F4(v4);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PlayerCardTheme();
  [v1 setBackgroundColor_];
  [v1 _setContinuousCornerRadius_];
  v3 = [v1 layer];
  [v3 setMaskedCorners_];
}

void sub_24E017CD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel;
  if (qword_27F1DD660 != -1)
  {
    OUTLINED_FUNCTION_2_35();
    swift_once();
  }

  v7 = sub_24E344158();
  v8 = __swift_project_value_buffer(v7, qword_27F1E0BA8);
  v9 = *(*(v7 - 8) + 16);
  v9(v4, v8, v7);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  *(v1 + v6) = OUTLINED_FUNCTION_0_54(v4);
  v12 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel;
  if (qword_27F1DD678 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27F1E0BF0);
  v9(v4, v13, v7);
  OUTLINED_FUNCTION_1_22();
  v14 = objc_allocWithZone(v10);
  *(v1 + v12) = OUTLINED_FUNCTION_0_54(v4);
  v15 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_chevronGlyph;
  v19 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = 7;
  v16 = sub_24E073800();
  sub_24DF9D524(&v19);
  *(v1 + v15) = v16;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_state) = 0;
  v17 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_contentViewBackground;
  type metadata accessor for BackgroundView();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_usingCustomHighlightView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_isHighlighted) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E017FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  sub_24E016E5C(a1);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph);
  v5 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v6 = MEMORY[0x277D22A58];
  *(a1 + 448) = v5;
  *(a1 + 456) = v6;
  *(a1 + 424) = v4;
  v7 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel);
  v8 = type metadata accessor for DynamicTypeLabel();
  *(a1 + 568) = v8;
  v9 = MEMORY[0x277D22A68];
  *(a1 + 576) = MEMORY[0x277D22A68];
  *(a1 + 544) = v7;
  v10 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel);
  *(a1 + 608) = v8;
  *(a1 + 616) = v9;
  *(a1 + 584) = v10;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  v15 = *(v2 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_chevronGlyph);
  *(a1 + 728) = sub_24DF88A8C(0, &qword_27F1E1D30);
  *(a1 + 736) = v6;
  *(a1 + 704) = v15;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  v11 = v4;
  v12 = v7;
  v13 = v10;

  return v15;
}

void sub_24E0181BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24E344048();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_layoutSubviews, v5);
  sub_24E017FDC(v18);
  [v1 bounds];
  v9 = v8;
  v11 = v10;
  [v1 layoutMargins];
  sub_24E27BC88(v15, v14, v9 - v15 - v12, v11 - v14 - v13);
  sub_24E018F10(v18);
  (*(v4 + 8))(v7, v3);
  v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_contentViewBackground];
  [v1 bounds];
  [v16 setFrame_];
  sub_24E017BB0();
}

id sub_24E01839C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph;
  [*&v1[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph] removeFromSuperview];
  [*&v1[v3] setContentMode_];
  v4 = qword_27F1DE118;
  v5 = *&v1[v3];
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = 0xD000000000000032;
  v7 = type metadata accessor for PlayerCardTheme();
  [v5 setTintColor_];

  [*&v1[v3] setIsAccessibilityElement_];
  v8 = *&v1[v3];
  v9 = *MEMORY[0x277D76A08];
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 configurationWithTextStyle:v9 scale:-1];
  v13 = sub_24E012D68(v12, v2 + 1);

  [v11 setImage_];
  v14 = ".leaderboards_icon";
  switch(v2)
  {
    case 1:
      v14 = "ashboard.chiclet.arcade_icon";
      break;
    case 2:
      v14 = ".challenges_icon";
      v6 = 0xD00000000000002CLL;
      break;
    case 3:
      v14 = "ashboard.chiclet.title";
      v6 = 0xD000000000000030;
      break;
    default:
      break;
  }

  sub_24DFD8050(v6, v14 | 0x8000000000000000, *&v1[v3]);
  v15 = [*&v1[v3] layer];
  [v15 setCompositingFilter_];

  v16 = *&v1[v3];

  return [v1 addSubview_];
}

double sub_24E0185D0(double a1)
{
  sub_24E016E5C(v4);
  swift_getObjectType();
  sub_24DFC1764();
  v2 = sub_24E27D040(v4, a1);
  swift_unknownObjectRelease();
  sub_24E018EBC(v4);
  return v2;
}

id sub_24E018660()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C50);
  sub_24E347128();

  sub_24DFA0B40(__dst[0], __dst[1], v1);
  [v1 setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000026, 0x800000024E3A1E90, v1);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel];
  swift_getKeyPath();
  sub_24E347128();

  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[1])
  {

    sub_24E018E54(__dst);
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  swift_getKeyPath();
  sub_24E347128();

  v5 = __src[0];
  sub_24E01839C(&v5);
  return [v0 setNeedsLayout];
}

id sub_24E018810()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel);
  [v1 setText_];
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel);
  [v2 setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_glyph) setImage_];
  [v1 setIsAccessibilityElement_];

  return [v2 setIsAccessibilityElement_];
}

uint64_t sub_24E018934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v2 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_titleLabel) text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24E347CF8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = 0;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v13 = MEMORY[0x277D84F90];
LABEL_8:
  v14 = (inited + 40 + 16 * v12);
  while (++v12 != 3)
  {
    v15 = v14 + 2;
    v16 = *v14;
    v14 += 2;
    if (v16)
    {
      v17 = *(v15 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076A08();
        v13 = v20;
      }

      v18 = *(v13 + 16);
      if (v18 >= *(v13 + 24) >> 1)
      {
        sub_24E076A08();
        v13 = v21;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v17;
      *(v19 + 40) = v16;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_24DFD7F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
  sub_24E00FE20();
  v22 = sub_24E347C78();

  return v22;
}

void sub_24E018BB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityLabel_, v5);
}

void *sub_24E018CA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20JetDashboardCellView_subtitleLabel);
  v2 = v1;
  return v1;
}

uint64_t sub_24E018E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E018E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24E018F64(uint64_t a1, id a2, double a3)
{
  [a2 layoutMargins];
  v8 = a3 - v6 - v7;
  sub_24E017FDC(v13);
  v9 = sub_24E01910C(v8, a1, v13);
  sub_24E018F10(v13);
  [a2 layoutMargins];
  return v9 + v10 + v11;
}

double sub_24E019030(uint64_t a1, id a2, double a3)
{
  [a2 layoutMargins];
  v8 = a3 - v6 - v7;
  sub_24E017FDC(v13);
  v9 = sub_24E27D228(v8, a1, v13);
  sub_24E018F10(v13);
  [a2 layoutMargins];
  return v9 + v10 + v11;
}

double sub_24E01910C(double a1, uint64_t a2, void *a3)
{
  v5 = sub_24E348BC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = a3[49];
  sub_24E343F98();
  sub_24E344198();
  v9 = *(v6 + 8);
  v9(v8, v5);
  v10 = a3[8];
  v11 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v10);
  sub_24E2548A0(v10, v11);
  sub_24E344198();
  v9(v8, v5);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  sub_24E2548A0(v12, v13);
  sub_24E344198();
  v9(v8, v5);
  v14 = a3[27];
  v15 = a3[28];
  __swift_project_boxed_opaque_existential_1(a3 + 24, v14);
  sub_24E2548A0(v14, v15);
  sub_24E344198();
  v9(v8, v5);
  v16 = a3[42];
  v17 = a3[43];
  __swift_project_boxed_opaque_existential_1(a3 + 39, v16);
  sub_24E2548A0(v16, v17);
  sub_24E344198();
  v9(v8, v5);
  v18 = a3[22];
  v19 = a3[23];
  __swift_project_boxed_opaque_existential_1(a3 + 19, v18);
  sub_24E2548A0(v18, v19);
  sub_24E344198();
  v9(v8, v5);
  return a1;
}

char *OUTLINED_FUNCTION_0_54(uint64_t a1)
{

  return sub_24E0AEF24(a1, 0, 1, 0, 1, 0);
}

id OUTLINED_FUNCTION_5_26()
{

  return [v0 (v1 + 2040)];
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24E019474(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24E0194B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E019514()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = [v0 gk:v1 dynamicColorWithLightColor:v2 darkColor:?];

  v4 = [v0 systemBlueColor];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.435294118 green:0.435294118 blue:0.435294118 alpha:0.65];
  v6 = [v0 secondaryLabelColor];
  v7 = [v0 secondaryLabelColor];
  v8 = [v0 blackColor];
  v9 = [v8 colorWithAlphaComponent_];

  v10 = [v0 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  *&xmmword_27F20A9C8 = v3;
  *(&xmmword_27F20A9C8 + 1) = v4;
  *&xmmword_27F20A9D8 = v5;
  *(&xmmword_27F20A9D8 + 1) = v6;
  qword_27F20A9E8 = v7;
  unk_27F20A9F0 = v9;
  qword_27F20A9F8 = v11;
  byte_27F20AA00 = 0;
}

void sub_24E0196D0()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = OUTLINED_FUNCTION_0_55(v1);

  v3 = OUTLINED_FUNCTION_1_42();
  v4 = OUTLINED_FUNCTION_1_42();
  v5 = OUTLINED_FUNCTION_0_55(v4);

  v6 = OUTLINED_FUNCTION_1_42();
  v7 = OUTLINED_FUNCTION_0_55(v6);

  v8 = OUTLINED_FUNCTION_1_42();
  v9 = OUTLINED_FUNCTION_0_55(v8);

  v10 = [v0 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v0 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *&xmmword_27F20AA08 = v2;
  *(&xmmword_27F20AA08 + 1) = v3;
  *&xmmword_27F20AA18 = v5;
  *(&xmmword_27F20AA18 + 1) = v7;
  qword_27F20AA28 = v9;
  unk_27F20AA30 = v11;
  qword_27F20AA38 = v13;
  byte_27F20AA40 = 1;
}

id OUTLINED_FUNCTION_0_55(void *a1)
{

  return [a1 (v1 + 376)];
}

id OUTLINED_FUNCTION_1_42()
{
  v3 = *(v1 + 3104);

  return [v0 v3];
}

void sub_24E0198D4()
{
  if (__OFSUB__(*(v0 + OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_56(OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value);
  }
}

void sub_24E0198F0()
{
  if (__OFADD__(*(v0 + OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_56(OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value);
  }
}

id sub_24E01990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_valueChangedHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_minimumValue] = a1;
  *&v4[OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_maximumValue] = a2;
  *&v4[OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value] = a3;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_24DE73FA0(a4);
  return v11;
}

void sub_24E019A50()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_valueChangedHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30GKMultiplayerStepperController_value);

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

id GKMultiplayerStepperController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKMultiplayerStepperController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E019BE4()
{
  v0 = sub_24E346968();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_24E3469F8();
}

uint64_t sub_24E019CF8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView);
  a1[3] = type metadata accessor for ArtworkView();
  a1[4] = sub_24E01C04C();
  *a1 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel);
  v5 = type metadata accessor for DynamicTypeLabel();
  v6 = MEMORY[0x277D22A70];
  a1[8] = v5;
  a1[9] = v6;
  a1[5] = v4;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel);
  a1[13] = v5;
  a1[14] = v6;
  a1[10] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView);
  v9 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v10 = MEMORY[0x277D22A38];
  a1[18] = v9;
  a1[19] = v10;
  a1[15] = v8;
  v11 = qword_27F1DD690;
  v12 = v3;
  v13 = v4;
  v14 = v7;
  v15 = v8;
  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0_57();
    swift_once();
  }

  v16 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  v17 = __swift_project_value_buffer(v16, qword_27F20AA48);
  v18 = a1 + *(type metadata accessor for ActivityFeedLeaderboardRowViewLayout() + 32);

  return sub_24E01BF8C(v17, v18);
}

uint64_t sub_24E019E28()
{
  v0 = sub_24E344158();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v33.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33.i8[-v6];
  v8 = MEMORY[0x28223BE20](v5);
  v36 = &v33.i8[-v9];
  MEMORY[0x28223BE20](v8);
  v11 = &v33.i8[-v10];
  v12 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  __swift_allocate_value_buffer(v12, qword_27F20AA48);
  v13 = __swift_project_value_buffer(v12, qword_27F20AA48);
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v35 = v4;
  if (ShouldUsePadUI)
  {
    if (qword_27F1DE0B0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v0, &unk_27F20BE10);
    v16 = *(v1 + 16);
    v16(v11, v15, v0);
    v16(v36, v15, v0);
    if (qword_27F1DE0D8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v0, &unk_27F20BE88);
    v16(v7, v17, v0);
    v16(v4, v17, v0);
    v18 = xmmword_24E36F3B0;
    v19 = 18.0;
  }

  else
  {
    if (qword_27F1DE0B8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v0, &unk_27F20BE28);
    v21 = *(v1 + 16);
    v21(v11, v20, v0);
    v21(v36, v20, v0);
    if (qword_27F1DE0C8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v0, &unk_27F20BE58);
    v21(v7, v22, v0);
    v21(v4, v22, v0);
    v18 = xmmword_24E36F3A0;
    v19 = 13.0;
  }

  v33 = v18;
  v34 = vextq_s8(v18, v18, 8uLL);
  v23 = objc_opt_self();
  v24 = [v23 tertiarySystemFillColor];
  v25 = [v23 whiteColor];
  v26 = [v25 colorWithAlphaComponent_];

  v27 = [v23 gk:v24 dynamicColorWithLightColor:v26 darkColor:?];
  v28 = [v23 labelColor];
  v29 = [v23 secondaryLabelColor];
  *v13 = xmmword_24E36F3C0;
  *(v13 + 1) = xmmword_24E36F3C0;
  v30 = v34;
  *(v13 + 2) = v33;
  *(v13 + 3) = v30;
  v31 = *(v1 + 32);
  v31(&v13[v12[8]], v11, v0);
  v31(&v13[v12[9]], v36, v0);
  *&v13[v12[10]] = 0x4024000000000000;
  v31(&v13[v12[11]], v7, v0);
  result = (v31)(&v13[v12[12]], v35, v0);
  *&v13[v12[13]] = v19;
  *&v13[v12[14]] = v27;
  *&v13[v12[15]] = v28;
  *&v13[v12[16]] = v29;
  return result;
}

char *sub_24E01A30C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v65 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v14] = sub_24E0D89D0();
  v15 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel;
  if (qword_27F1DD690 != -1)
  {
    OUTLINED_FUNCTION_0_57();
    swift_once();
  }

  v16 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  v17 = __swift_project_value_buffer(v16, qword_27F20AA48);
  v18 = *(v16 + 32);
  v19 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  v21 = *(v20 + 16);
  v21(v12, v17 + v18, v19);
  OUTLINED_FUNCTION_3_33();
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = objc_allocWithZone(v22);
  *&v5[v15] = OUTLINED_FUNCTION_6_24(v12, 0, 2);
  v24 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel;
  v21(v12, v17 + *(v16 + 44), v19);
  OUTLINED_FUNCTION_3_33();
  v25 = objc_allocWithZone(v22);
  *&v5[v24] = OUTLINED_FUNCTION_6_24(v12, 0, 1);
  v26 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView;
  *&v5[v26] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v27 = type metadata accessor for ActivityFeedLeaderboardRowView();
  v65.receiver = v5;
  v65.super_class = v27;
  v28 = objc_msgSendSuper2(&v65, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = OUTLINED_FUNCTION_1_16();
  [v30 v31];
  v32 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView;
  v33 = *&v28[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView];
  sub_24E2D4EB0(v33);

  [v28 addSubview_];
  v34 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView;
  OUTLINED_FUNCTION_8_18(*&v28[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView], "UIA.GameCenter.ActivityFeed.LeaderboardRow.artworkView");
  [v28 addSubview_];
  v35 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel;
  [*&v28[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel] setLineBreakMode_];
  v36 = *&v28[v35];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor_];

  v40 = [*&v28[v35] layer];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for PlayerCardTheme();
  v42 = *(__swift_project_value_buffer(v41, qword_27F20BF00) + *(v41 + 56) + 8);
  if (v42)
  {
    v43 = sub_24E347CB8();
  }

  else
  {
    v43 = 0;
  }

  [v40 setCompositingFilter_];

  swift_unknownObjectRelease();
  sub_24DFD8050(0xD000000000000038, 0x800000024E3A21A0, *&v28[v35]);
  [v28 addSubview_];
  v44 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel;
  [*&v28[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel] setLineBreakMode_];
  v45 = *&v28[v44];
  v46 = [v37 secondaryLabelColor];
  [v45 setTextColor_];

  v47 = [*&v28[v44] layer];
  if (v42)
  {
    v48 = sub_24E347CB8();
  }

  else
  {
    v48 = 0;
  }

  [v47 setCompositingFilter_];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_18(*&v28[v44], "UIA.GameCenter.ActivityFeed.LeaderboardRow.pointsLabel");
  [v28 addSubview_];
  v49 = *MEMORY[0x277D76938];
  v50 = objc_opt_self();
  v51 = [v50 configurationWithTextStyle:v49 scale:1];
  sub_24DF88A8C(0, &qword_280BE0110);
  v52 = v51;
  v53 = sub_24E0AC60C(0xD000000000000015, 0x800000024E3A2220, v51);
  if (v53 && (v54 = v53, v55 = [v50 configurationWithWeight_], v56 = objc_msgSend(v54, sel_imageByApplyingSymbolConfiguration_, v55), v54, v55, v56))
  {
    v57 = [v37 secondaryLabelColor];
    v58 = [v56 imageWithTintColor:v57 renderingMode:2];
  }

  else
  {
    v58 = 0;
  }

  v59 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView;
  [*&v28[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView] setImage_];
  v60 = [*&v28[v59] layer];
  if (v42)
  {
    v61 = sub_24E347CB8();
  }

  else
  {
    v61 = 0;
  }

  [v60 setCompositingFilter_];

  swift_unknownObjectRelease();
  v62 = *&v28[v59];
  v63 = [v37 secondaryLabelColor];
  [v62 setTintColor_];

  sub_24DFD8050(0xD000000000000040, 0x800000024E3A2240, *&v28[v59]);
  [v28 addSubview_];
  sub_24E01BC30();

  return v28;
}

void sub_24E01AA4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView;
  type metadata accessor for BackgroundView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v6) = sub_24E0D89D0();
  v7 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel;
  if (qword_27F1DD690 != -1)
  {
    OUTLINED_FUNCTION_0_57();
    swift_once();
  }

  v8 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  v9 = __swift_project_value_buffer(v8, qword_27F20AA48);
  v10 = *(v8 + 32);
  v11 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  v13 = *(v12 + 16);
  v13(v4, v9 + v10, v11);
  OUTLINED_FUNCTION_3_33();
  v14 = type metadata accessor for DynamicTypeLabel();
  v15 = objc_allocWithZone(v14);
  *(v1 + v7) = OUTLINED_FUNCTION_6_24(v4, 0, 2);
  v16 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel;
  v13(v4, v9 + *(v8 + 44), v11);
  OUTLINED_FUNCTION_3_33();
  v17 = objc_allocWithZone(v14);
  *(v1 + v16) = OUTLINED_FUNCTION_6_24(v4, 0, 1);
  v18 = OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E01AC98()
{
  v1 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  sub_24E019CF8((v10 - v9));
  v12 = [v0 traitCollection];
  sub_24DF98FC4(v7);
  sub_24E344A18();

  (*(v3 + 8))(v7, v1);
  sub_24E01BFF0(v11);
  OUTLINED_FUNCTION_1_16();
}

void sub_24E01AE4C(uint64_t a1, void *a2)
{
  v104 = a1;
  v105 = a2;
  sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v98 = v3;
  v99 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v97 = v5 - v4;
  v93 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v92 = (v8 - v7);
  sub_24E344568();
  OUTLINED_FUNCTION_0_14();
  v95 = v10;
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = &v78 - v13;
  v14 = sub_24E344158();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v91 = sub_24E344388();
  OUTLINED_FUNCTION_0_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v90 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  MEMORY[0x28223BE20](v32);
  v101 = &v78 - v33;
  MEMORY[0x28223BE20](v34);
  v103 = &v78 - v35;
  v37 = v36;
  sub_24E344378();
  v38 = sub_24DF88A8C(0, &qword_27F1DEE28);
  if (qword_27F1DD690 != -1)
  {
    OUTLINED_FUNCTION_0_57();
    swift_once();
  }

  v39 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  v88 = v39;
  v102 = __swift_project_value_buffer(v39, qword_27F20AA48);
  v40 = *(v39 + 32);
  v41 = *(v16 + 16);
  v86 = v16 + 16;
  v87 = v41;
  v41(v20, v102 + v40, v14);
  v42 = [v105 traitCollection];
  v85 = v38;
  v43 = MEMORY[0x25303F0C0](v20, v42);
  v44 = v14;
  v78 = v14;
  v45 = v43;

  v46 = *(v16 + 8);
  v83 = v16 + 8;
  v84 = v46;
  v46(v20, v44);
  v80 = v37;
  sub_24E344368();

  v47 = v22;
  v48 = v22 + 8;
  v49 = *(v22 + 8);
  v50 = v37;
  v51 = v91;
  v49(v50, v91);
  v100 = v48;
  v81 = v28;
  sub_24E344338();
  v49(v28, v51);
  v52 = v101;
  sub_24E344348();
  v49(v31, v51);
  v53 = v20;
  v54 = v103;
  sub_24E344358();
  v49(v52, v51);
  v79 = *(v47 + 16);
  v82 = v47 + 16;
  v55 = v52;
  v79(v52, v54, v51);

  sub_24E344558();
  sub_24E344578();
  v56 = v90;
  sub_24E344378();
  v57 = v78;
  v87(v53, v102 + *(v88 + 44), v78);
  v58 = [v105 traitCollection];
  v59 = MEMORY[0x25303F0C0](v53, v58);

  v84(v53, v57);
  v60 = v80;
  sub_24E344368();

  v49(v56, v51);
  v61 = v81;
  sub_24E344338();
  v62 = v51;
  v49(v60, v51);
  v89 = v49;
  sub_24E344348();
  v49(v61, v51);
  sub_24E344358();
  v49(v31, v51);
  v79(v31, v55, v51);

  sub_24E344558();
  v63 = v94;
  sub_24E344578();
  v64 = sub_24E3442D8();
  v65 = MEMORY[0x277D226E0];
  v66 = v92;
  v92[3] = v64;
  v66[4] = v65;
  __swift_allocate_boxed_opaque_existential_1(v66);
  sub_24E3442B8();
  v67 = MEMORY[0x277D227B8];
  v68 = v96;
  v66[8] = v96;
  v66[9] = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66 + 5);
  v70 = v95;
  v71 = *(v95 + 16);
  v71(boxed_opaque_existential_1, v106, v68);
  v66[13] = v68;
  v66[14] = v67;
  v72 = __swift_allocate_boxed_opaque_existential_1(v66 + 10);
  v71(v72, v63, v68);
  v66[18] = v64;
  v66[19] = v65;
  __swift_allocate_boxed_opaque_existential_1(v66 + 15);
  sub_24E3442B8();
  sub_24E01BF8C(v102, v66 + *(v93 + 32));
  v73 = [v105 traitCollection];
  v74 = v97;
  sub_24DF98FC4(v97);
  v75 = v99;
  sub_24E344A18();

  (*(v98 + 8))(v74, v75);
  sub_24E01BFF0(v66);
  v76 = *(v70 + 8);
  v76(v63, v68);
  v77 = v89;
  v89(v101, v62);
  v76(v106, v68);
  v77(v103, v62);
  OUTLINED_FUNCTION_1_16();
}

id sub_24E01B6D8()
{
  v1 = v0;
  v2 = sub_24E3449C8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7_1();
  v12 = (v11 - v10);
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ActivityFeedLeaderboardRowView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  sub_24E019CF8(v12);
  [v0 bounds];
  v13 = [v0 traitCollection];
  sub_24DF98FC4(v8);
  OUTLINED_FUNCTION_1_16();
  sub_24E344A08();

  (*(v4 + 8))(v8, v2);
  sub_24E01BFF0(v12);
  v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView];
  [v1 bounds];
  return [v14 setFrame_];
}

id sub_24E01B8E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel];
  sub_24DFFA600(*(a1 + 48), *(a1 + 56), v7);
  v8 = *&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel];
  sub_24DFFA600(*a1, *(a1 + 8), v8);
  [*&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView] setHidden_];
  v9 = *(a1 + 16);
  if (v9 == 2 || (v9 & 1) == 0)
  {
    [*&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView] setHidden_];
    if (qword_27F1DD690 != -1)
    {
      OUTLINED_FUNCTION_0_57();
      swift_once();
    }

    v21 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
    v11 = __swift_project_value_buffer(v21, qword_27F20AA48);
    [v7 setTextColor_];
    [v8 setTextColor_];
    [*&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView] setHidden_];
    v22 = v21[8];
    v14 = sub_24E344158();
    OUTLINED_FUNCTION_5_2();
    v16 = *(v23 + 16);
    v16(v6, v11 + v22, v14);
    v24 = OUTLINED_FUNCTION_4_29();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
    sub_24E0AED24(v6);
    v20 = v21[11];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView] setHidden_];
    if (qword_27F1DD690 != -1)
    {
      OUTLINED_FUNCTION_0_57();
      swift_once();
    }

    v10 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
    v11 = __swift_project_value_buffer(v10, qword_27F20AA48);
    v32 = *(v11 + v10[14]);
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v12 = v32;
    sub_24DFEB8F4(&v32);
    [v7 setTextColor_];
    [v8 setTextColor_];
    [*&v2[OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView] setHidden_];
    v13 = v10[9];
    v14 = sub_24E344158();
    OUTLINED_FUNCTION_5_2();
    v16 = *(v15 + 16);
    v16(v6, v11 + v13, v14);
    v17 = OUTLINED_FUNCTION_4_29();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v14);
    sub_24E0AED24(v6);
    v20 = v10[12];
  }

  v16(v6, v11 + v20, v14);
  v27 = OUTLINED_FUNCTION_4_29();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v14);
  sub_24E0AED24(v6);
  return [v2 setNeedsLayout];
}

id sub_24E01BC30()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_nicknameLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_pointsLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_contentBackgroundView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_accessoryView);

  return [v1 setHidden_];
}

uint64_t sub_24E01BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27F1DD690 != -1)
  {
    OUTLINED_FUNCTION_0_57();
    swift_once();
  }

  v8 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  __swift_project_value_buffer(v8, qword_27F20AA48);
  v9 = OUTLINED_FUNCTION_1_16();
  sub_24E253E8C(v10, v9, v11);
  v18[0] = 0;
  v18[1] = 0;
  v12 = OUTLINED_FUNCTION_1_16();
  v15 = sub_24E0ABE8C(v13, 0, v12, v14);

  v16 = *(v6 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView);
  LOBYTE(v18[0]) = 2;
  sub_24E0D8DC8(v18);
  if (*(a6 + qword_27F1EB198))
  {

    sub_24E0624A4(v15, 2, 1, v16);
  }
}

uint64_t sub_24E01BDF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + qword_27F1EB198))
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI30ActivityFeedLeaderboardRowView_artworkView);

    sub_24E17DAC4(v3, 1);
  }

  return result;
}

id sub_24E01BE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLeaderboardRowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedLeaderboardRowView.Metrics()
{
  result = qword_27F1E0CB0;
  if (!qword_27F1E0CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E01BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardRowView.Metrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E01BFF0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedLeaderboardRowViewLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E01C04C()
{
  result = qword_27F1E0CA8;
  if (!qword_27F1E0CA8)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0CA8);
  }

  return result;
}

void sub_24E01C0CC()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24E344158();
      if (v2 <= 0x3F)
      {
        sub_24DF88A8C(319, &qword_27F1E5FD0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

char *OUTLINED_FUNCTION_6_24(uint64_t a1, void *a2, uint64_t a3)
{

  return sub_24E0AEF24(a1, a2, a3, 0, 1, 0);
}

void OUTLINED_FUNCTION_8_18(void *a1@<X2>, uint64_t a2@<X8>)
{

  sub_24DFD8050(0xD000000000000036, (a2 - 32) | 0x8000000000000000, a1);
}

uint64_t sub_24E01C22C()
{
  v1 = [v0 textLabel];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 numberOfLines];

  return v3;
}

id sub_24E01C294()
{
  result = [v0 textLabel];
  if (result)
  {
    v2 = result;
    v3 = [result lineBreakMode];

    return v3;
  }

  return result;
}

void sub_24E01C2F4(uint64_t a1, SEL *a2)
{
  v5 = [v2 textLabel];
  [v5 *a2];
}

uint64_t sub_24E01C398()
{
  v1 = sub_24E342EE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E2D89B8(v0);
  if (v6)
  {
    v11[0] = v5;
    v11[1] = v6;
    sub_24E342ED8();
    sub_24DF90C4C();
    sub_24E3486E8();
    v8 = v7;
    (*(v2 + 8))(v4, v1);

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_24E01C51C()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 _contentInsetsFromFonts];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E01C5DC()
{
  sub_24E2D89B8(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_24E347DD8();

  return v2;
}

void (*sub_24E01C674(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  *a1 = sub_24E01C22C();
  return sub_24E01C6C0;
}

void (*sub_24E01C71C(id *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = *v1;
  *a1 = sub_24E01C294();
  return sub_24E01C768;
}

void sub_24E01C774(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = [a1[1] textLabel];
  [v5 *a3];
}

id sub_24E01C7DC()
{
  v1 = [*v0 font];

  return v1;
}

void sub_24E01C814(void *a1)
{
  [*v1 setFont_];
}

void (*sub_24E01C85C(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 font];
  return sub_24E01C8B8;
}

void sub_24E01C8B8(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

uint64_t type metadata accessor for AchievementsByGameAction()
{
  result = qword_27F1E0CC0;
  if (!qword_27F1E0CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E01C9B8()
{
  sub_24E01CA4C();
  if (v0 <= 0x3F)
  {
    sub_24E347208();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E01CA4C()
{
  if (!qword_27F1E06A8)
  {
    sub_24E01CAA4();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E06A8);
    }
  }
}

unint64_t sub_24E01CAA4()
{
  result = qword_27F1E3D40;
  if (!qword_27F1E3D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E3D40);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingSection()
{
  result = qword_27F1E0CD0;
  if (!qword_27F1E0CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E01CB5C()
{
  type metadata accessor for GKPlayerAgeCategory(319);
  if (v0 <= 0x3F)
  {
    sub_24E01CCC0(319, &qword_27F1E0CE0, &qword_27F1E0288, &unk_24E36D9F0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24E01CC68();
      if (v2 <= 0x3F)
      {
        sub_24E01CCC0(319, &qword_27F1DF760, &qword_27F1DF338, &unk_24E36F580, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E01CC68()
{
  if (!qword_27F1DF778)
  {
    type metadata accessor for ProfileEditorData();
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1DF778);
    }
  }
}

void sub_24E01CCC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24E01CD40@<X0>(uint64_t a1@<X8>)
{
  sub_24E345B68();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_34(*(v9 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E01FF10(v3, a1);
  }

  sub_24E348268();
  v11 = sub_24E346198();
  OUTLINED_FUNCTION_6_12();

  sub_24E345B58();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v2, v1);
}

uint64_t sub_24E01CEC0@<X0>(uint64_t a1@<X8>)
{
  sub_24E345B68();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_3_34(*(v9 + 32));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E01FF10(v3, a1);
  }

  sub_24E348268();
  v11 = sub_24E346198();
  OUTLINED_FUNCTION_6_12();

  sub_24E345B58();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v2, v1);
}

uint64_t sub_24E01D040@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24E345D08();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0CE8);
  sub_24E01D114(v1, (a1 + *(v3 + 44)));
  type metadata accessor for GameCenterSettings();
  v4 = sub_24DFF2180();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = (v4 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0CF0);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_24DFEB7E4;
  v8[2] = v6;
  return result;
}

uint64_t sub_24E01D114@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0CF8);
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &KeyPath - v5;
  v66 = sub_24E343AA8();
  v78 = sub_24E3436C8();
  v79 = v6;
  v63 = sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  v67 = a1;
  if (sub_24E01E9F4())
  {
    sub_24E346288();
  }

  else
  {
    sub_24E346278();
  }

  v12 = sub_24E3464B8();
  v14 = v13;
  v16 = v15;

  sub_24DFA92EC(v7, v9, v11 & 1);

  v17 = sub_24E3464A8();
  v19 = v18;
  v21 = v20;
  sub_24DFA92EC(v12, v14, v16 & 1);

  LODWORD(v78) = sub_24E345F18();
  v22 = sub_24E346478();
  v70 = v23;
  v71 = v22;
  LOBYTE(v12) = v24;
  v72 = v25;
  sub_24DFA92EC(v17, v19, v21 & 1);

  v26 = sub_24E3461D8();
  v68 = v12 & 1;
  v69 = v26;
  v113 = v12 & 1;
  v110 = 1;
  sub_24E01D780(v75);
  v78 = sub_24E343758();
  v79 = v27;
  v28 = sub_24E3464E8();
  v30 = v29;
  v32 = v31;
  if (sub_24E01E9F4())
  {
    sub_24E346378();
  }

  else
  {
    sub_24E346368();
  }

  v33 = sub_24E3464B8();
  v35 = v34;
  v37 = v36;

  sub_24DFA92EC(v28, v30, v32 & 1);

  v38 = sub_24E3464A8();
  v40 = v39;
  v42 = v41;
  sub_24DFA92EC(v33, v35, v37 & 1);

  LODWORD(v78) = sub_24E345F28();
  v43 = sub_24E346478();
  v62 = v44;
  v63 = v45;
  v47 = v46;
  sub_24DFA92EC(v38, v40, v42 & 1);

  LODWORD(v67) = sub_24E3461D8();
  LODWORD(v66) = v47 & 1;
  v108 = v47 & 1;
  v103 = 1;
  KeyPath = swift_getKeyPath();
  v48 = v65;
  v49 = *(v65 + 16);
  v51 = v73;
  v50 = v74;
  v49(v73, v75, v74);
  v76[0] = v71;
  v76[1] = v70;
  LOBYTE(v76[2]) = v68;
  *(&v76[2] + 1) = *v112;
  HIDWORD(v76[2]) = *&v112[3];
  v76[3] = v72;
  LOBYTE(v76[4]) = v69;
  *(&v76[4] + 1) = *v111;
  HIDWORD(v76[4]) = *&v111[3];
  memset(&v76[5], 0, 32);
  LOBYTE(v76[9]) = 1;
  v52 = v64;
  memcpy(v64, v76, 0x49uLL);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D00);
  v49(&v52[*(v53 + 48)], v51, v50);
  v54 = *(v53 + 64);
  v55 = v62;
  v56 = v63;
  v77[0] = v43;
  v77[1] = v62;
  LOBYTE(v77[2]) = v66;
  *(&v77[2] + 1) = *v107;
  HIDWORD(v77[2]) = *&v107[3];
  v77[3] = v63;
  LOWORD(v77[4]) = 256;
  *(&v77[4] + 2) = v105;
  HIWORD(v77[4]) = v106;
  LOBYTE(v77[5]) = v67;
  HIDWORD(v77[5]) = *&v104[3];
  *(&v77[5] + 1) = *v104;
  memset(&v77[6], 0, 32);
  LOBYTE(v77[10]) = 1;
  *(&v77[10] + 1) = v109[0];
  HIDWORD(v77[10]) = *(v109 + 3);
  v57 = KeyPath;
  v77[11] = KeyPath;
  LOBYTE(v77[12]) = 0;
  memcpy(&v52[v54], v77, 0x61uLL);
  sub_24DF8BD90(v76, &v78, &qword_27F1DF880);
  sub_24DF8BD90(v77, &v78, &qword_27F1E0D08);
  v58 = *(v48 + 8);
  v59 = v74;
  v58(v75, v74);
  v78 = v43;
  v79 = v55;
  v80 = v66;
  *v81 = *v107;
  *&v81[3] = *&v107[3];
  v82 = v56;
  v83 = 256;
  v84 = v105;
  v85 = v106;
  v86 = v67;
  *&v87[3] = *&v104[3];
  *v87 = *v104;
  v88 = 0u;
  v89 = 0u;
  v90 = 1;
  *v91 = v109[0];
  *&v91[3] = *(v109 + 3);
  v92 = v57;
  v93 = 0;
  sub_24DF8BFF4(&v78, &qword_27F1E0D08);
  v58(v73, v59);
  v94[0] = v71;
  v94[1] = v70;
  v95 = v68;
  *v96 = *v112;
  *&v96[3] = *&v112[3];
  v97 = v72;
  v98 = v69;
  *v99 = *v111;
  *&v99[3] = *&v111[3];
  v100 = 0u;
  v101 = 0u;
  v102 = 1;
  return sub_24DF8BFF4(v94, &qword_27F1DF880);
}

uint64_t sub_24E01D780@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for ActivitySharingSection();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v4;
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D10);
  MEMORY[0x28223BE20](v30);
  v6 = &v26 - v5;
  if (*v1 == 3 || *v1 == 0)
  {
    if (qword_27F1DD6B8 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F20AB10;
  }

  else
  {
    if (qword_27F1DD6B0 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F20AB08;
  }

  v9 = *v8;

  v26 = &v26;
  MEMORY[0x28223BE20](v10);
  *(&v26 - 2) = v2;
  *(&v26 - 1) = v9;
  MEMORY[0x28223BE20](v11);
  *(&v26 - 2) = v9;
  *(&v26 - 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D20);
  sub_24E01F6CC();
  sub_24DFB4C28(&qword_27F1E0D80, &qword_27F1E0D20);
  sub_24E3463D8();

  v12 = sub_24E346248();
  sub_24E3451B8();
  v13 = &v6[*(v30 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  v20 = *(v2 + 28);
  v33 = *(v2 + 8);
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D88);
  MEMORY[0x25303D7B0](&v32, v21);
  LODWORD(v33) = v32;
  BYTE4(v33) = BYTE4(v32);
  v22 = v29;
  sub_24E01F9AC(v2, v29);
  v23 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v24 = swift_allocObject();
  sub_24E01FA10(v22, v24 + v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0288);
  sub_24E01FAF4();
  sub_24E01FC24(&qword_27F1E0DA8, &qword_27F1DE4B0);
  sub_24E3468C8();

  return sub_24DE5BEB0(v6);
}

uint64_t sub_24E01DB98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D88);
  sub_24E346C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC8);
  sub_24E01FC24(&qword_27F1E0DD0, &qword_27F1E0DD8);
  sub_24E01FCC0();
  return sub_24E346C18();
}

uint64_t sub_24E01DCD4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DF0);
  sub_24DFB4C28(&qword_27F1E0E00, &qword_27F1E0DF8);
  sub_24E01FD44();
  sub_24E01FE74();
  return sub_24E346CD8();
}

uint64_t sub_24E01DDC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0E10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  v15 = *(a1 + 16);
  v16 = v6;
  sub_24DF90C4C();

  *v5 = sub_24E3464E8();
  *(v5 + 1) = v8;
  v5[16] = v9 & 1;
  *(v5 + 3) = v10;
  *(v5 + 8) = v7;
  v5[36] = 1;
  type metadata accessor for GKProfilePrivacyVisibility(255);
  v12 = v11;
  v13 = sub_24E01FEC8(&qword_27F1E0DD8, type metadata accessor for GKProfilePrivacyVisibility);
  v15 = MEMORY[0x277CE0BD8];
  v16 = v12;
  v17 = MEMORY[0x277CE0BC8];
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  sub_24E346648();
  return (*(v3 + 8))(v5, v2);
}

double sub_24E01DF8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24E345BF8();
  v27 = 1;
  sub_24E01E1B8(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, 0x48uLL);
  sub_24DF8BD90(__dst, v24, &qword_27F1E0DB8);
  sub_24DF8BFF4(v29, &qword_27F1E0DB8);
  memcpy(&v26[7], __dst, 0x48uLL);
  v7 = v27;
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = sub_24E346948();
  LOBYTE(a1) = sub_24E3461E8();
  LOBYTE(__src[0]) = 0;
  v11 = [v8 secondarySystemBackgroundColor];
  v12 = sub_24E346948();
  v13 = sub_24E3461E8();
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D18) + 36));
  v15 = *(sub_24E3457C8() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24E345C68();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #10.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0) + 36)] = 256;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  memcpy((a3 + 17), v26, 0x4FuLL);
  *(a3 + 96) = v10;
  *(a3 + 104) = a1;
  *(a3 + 105) = __src[0];
  *(a3 + 108) = *(__src + 3);
  result = 12.0;
  *(a3 + 112) = xmmword_24E36F3C0;
  *(a3 + 128) = xmmword_24E36F3C0;
  *(a3 + 144) = 0;
  *(a3 + 145) = v24[0];
  *(a3 + 148) = *(v24 + 3);
  *(a3 + 152) = v12;
  *(a3 + 160) = v13;
  return result;
}

uint64_t sub_24E01E1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v41 = a2;
  sub_24E198864(sub_24E01FBAC, a1, &v42);
  v9 = v43;
  if (v43)
  {
    v40 = v8;
    LODWORD(v38) = v47;
    v37 = v46;
    v10 = v42;
    v42 = v44;
    v43 = v45;
    sub_24DF90C4C();

    v11 = sub_24E3464E8();
    v13 = v12;
    v15 = v14;
    v39 = v16;
    sub_24E01FBCC(v10, v9);
    if (sub_24E01E9F4())
    {
      sub_24E346288();
    }

    else
    {
      sub_24E346278();
    }

    v21 = sub_24E3464B8();
    v23 = v22;
    v25 = v24;
    v38 = v26;

    sub_24DFA92EC(v11, v13, v15 & 1);

    sub_24E01E9F4();
    v17 = sub_24E3464A8();
    v18 = v27;
    v29 = v28;
    v20 = v30;
    sub_24DFA92EC(v21, v23, v25 & 1);

    v19 = v29 & 1;
    sub_24DF82DD4(v17, v18, v29 & 1);

    v8 = v40;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  v31 = sub_24E346A58();
  v32 = sub_24E3462A8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v32);
  v33 = sub_24E346308();
  sub_24DF8BFF4(v8, &qword_27F1E0DC0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v42) = 1;
  sub_24E00B1C4(v17, v18, v19, v20);

  sub_24E00B208(v17, v18, v19, v20);
  v35 = v42;
  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = 0;
  *(a3 + 40) = v35;
  *(a3 + 48) = v31;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v33;

  return sub_24E00B208(v17, v18, v19, v20);
}

uint64_t sub_24E01E4F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0D88);
  MEMORY[0x25303D7B0](&v4, v2);
  return (v1 == v4) & ~BYTE4(v4);
}

uint64_t sub_24E01E574(uint64_t result, uint64_t a2)
{
  if ((*(result + 4) & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
    return sub_24E01E5B0(*a2);
  }

  return result;
}

uint64_t sub_24E01E5B0(unsigned int a1)
{
  v22 = a1;
  v2 = sub_24E347638();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E345B68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);

  if ((v11 & 1) == 0)
  {
    sub_24E348268();
    v12 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v23 = v7;
  v13 = sub_24E1AE84C();

  if (v13 != 12)
  {
    v21 = v5;

    if ((v11 & 1) == 0)
    {
      sub_24E348268();
      v15 = sub_24E346198();
      sub_24E343EA8();

      sub_24E345B58();
      swift_getAtKeyPath();

      (*(v23 + 8))(v9, v6);
    }

    v16 = sub_24E1AE860();

    v17 = v21;
    if (v16 != 20)
    {
      if (qword_27F1DDF20 != -1)
      {
        swift_once();
      }

      v22 = sub_24E01E9A8(v22);

      if ((v11 & 1) == 0)
      {
        sub_24E348268();
        v20 = v6;
        v18 = sub_24E346198();
        sub_24E343EA8();

        sub_24E345B58();
        swift_getAtKeyPath();

        (*(v23 + 8))(v9, v20);
        v10 = v24;
      }

      (*(v3 + 16))(v17, v10 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData_metricsContext, v2);

      sub_24E32E900(v13, v16, 1, v22, 7, v17);
      return (*(v3 + 8))(v17, v2);
    }
  }

  return result;
}

uint64_t sub_24E01E9A8(unsigned int a1)
{
  if (a1 < 3)
  {
    return a1 + 30;
  }

  type metadata accessor for GKProfilePrivacyVisibility(0);
  result = sub_24E348C58();
  __break(1u);
  return result;
}

uint64_t sub_24E01E9F4()
{
  v1 = sub_24E345F38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890);
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v48 = &v40 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v46 = v0;
  sub_24E01CD40(&v40 - v22);
  v24 = *MEMORY[0x277CE0560];
  v50 = v2;
  v44 = *(v2 + 104);
  v44(v20, v24, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v45 = v4;
  v25 = *(v4 + 48);
  sub_24DF8BD90(v23, v8, &qword_27F1DF338);
  sub_24DF8BD90(v20, &v8[v25], &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    v41 = v24;
    sub_24DF8BFF4(v20, &qword_27F1DF338);
    sub_24DF8BFF4(v23, &qword_27F1DF338);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
    {
      sub_24DF8BFF4(v8, &qword_27F1DF338);
      goto LABEL_8;
    }

LABEL_6:
    v26 = v8;
LABEL_14:
    sub_24DF8BFF4(v26, &unk_27F1DF890);
    goto LABEL_15;
  }

  sub_24DF8BD90(v8, v17, &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
  {
    sub_24DF8BFF4(v20, &qword_27F1DF338);
    sub_24DF8BFF4(v23, &qword_27F1DF338);
    (*(v50 + 8))(v17, v1);
    goto LABEL_6;
  }

  v41 = v24;
  v27 = v50;
  v28 = v43;
  (*(v50 + 32))(v43, &v8[v25], v1);
  sub_24E01FEC8(&qword_27F1DF3C8, MEMORY[0x277CE0570]);
  v40 = sub_24E347CA8();
  v29 = *(v27 + 8);
  v29(v28, v1);
  sub_24DF8BFF4(v20, &qword_27F1DF338);
  sub_24DF8BFF4(v23, &qword_27F1DF338);
  v29(v17, v1);
  sub_24DF8BFF4(v8, &qword_27F1DF338);
  if ((v40 & 1) == 0)
  {
LABEL_15:
    v34 = 0;
    return v34 & 1;
  }

LABEL_8:
  v30 = v48;
  sub_24E01CEC0(v48);
  v31 = v47;
  v44(v47, v41, v1);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v1);
  v32 = *(v45 + 48);
  v33 = v49;
  sub_24DF8BD90(v30, v49, &qword_27F1DF338);
  sub_24DF8BD90(v31, v33 + v32, &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(v33, 1, v1) != 1)
  {
    v35 = v42;
    sub_24DF8BD90(v33, v42, &qword_27F1DF338);
    if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v1) != 1)
    {
      v37 = v50;
      v38 = v43;
      (*(v50 + 32))(v43, v33 + v32, v1);
      sub_24E01FEC8(&qword_27F1DF3C8, MEMORY[0x277CE0570]);
      v34 = sub_24E347CA8();
      v39 = *(v37 + 8);
      v39(v38, v1);
      sub_24DF8BFF4(v31, &qword_27F1DF338);
      sub_24DF8BFF4(v30, &qword_27F1DF338);
      v39(v35, v1);
      sub_24DF8BFF4(v33, &qword_27F1DF338);
      return v34 & 1;
    }

    sub_24DF8BFF4(v31, &qword_27F1DF338);
    sub_24DF8BFF4(v30, &qword_27F1DF338);
    (*(v50 + 8))(v35, v1);
    goto LABEL_13;
  }

  sub_24DF8BFF4(v31, &qword_27F1DF338);
  sub_24DF8BFF4(v30, &qword_27F1DF338);
  if (__swift_getEnumTagSinglePayload(v33 + v32, 1, v1) != 1)
  {
LABEL_13:
    v26 = v33;
    goto LABEL_14;
  }

  sub_24DF8BFF4(v33, &qword_27F1DF338);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_24E01F13C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_24E01F148()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20AA60 = 0x656E6F7972657645;
  *algn_27F20AA68 = 0xE800000000000000;
  qword_27F20AA70 = v3;
  unk_27F20AA78 = v5;
  qword_27F20AA80 = 0x6C6C69662E657965;
  unk_27F20AA88 = 0xE800000000000000;
  dword_27F20AA90 = 0;
}

void sub_24E01F210()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20AA98 = 0x4F73646E65697246;
  unk_27F20AAA0 = 0xEB00000000796C6ELL;
  qword_27F20AAA8 = v3;
  unk_27F20AAB0 = v5;
  strcpy(&qword_27F20AAB8, "person.2.fill");
  unk_27F20AAC6 = -4864;
  dword_27F20AAC8 = 1;
}

void sub_24E01F2F4()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20AAD0 = 0x756F59796C6E4FLL;
  *algn_27F20AAD8 = 0xE700000000000000;
  qword_27F20AAE0 = v3;
  unk_27F20AAE8 = v5;
  strcpy(&qword_27F20AAF0, "eye.slash.fill");
  unk_27F20AAFF = -18;
  dword_27F20AB00 = 2;
}

uint64_t sub_24E01F3D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E369B70;
  if (qword_27F1DD698 != -1)
  {
    swift_once();
  }

  v1 = *algn_27F20AA68;
  v2 = qword_27F20AA70;
  v3 = unk_27F20AA78;
  v4 = qword_27F20AA80;
  v5 = unk_27F20AA88;
  v6 = dword_27F20AA90;
  *(v0 + 32) = qword_27F20AA60;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F1DD6A0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = unk_27F20AAA0;
  v9 = qword_27F20AAA8;
  v10 = unk_27F20AAB0;
  v11 = qword_27F20AAB8;
  v12 = unk_27F20AAC0;
  v13 = dword_27F20AAC8;
  *(v0 + 88) = qword_27F20AA98;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  v14 = qword_27F1DD6A8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *algn_27F20AAD8;
  v16 = qword_27F20AAE0;
  v17 = unk_27F20AAE8;
  v18 = qword_27F20AAF0;
  v19 = unk_27F20AAF8;
  v20 = dword_27F20AB00;
  *(v0 + 144) = qword_27F20AAD0;
  *(v0 + 152) = v15;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  qword_27F20AB08 = v0;
}

uint64_t sub_24E01F57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E36A270;
  if (qword_27F1DD6A0 != -1)
  {
    swift_once();
  }

  v1 = unk_27F20AAA0;
  v2 = qword_27F20AAA8;
  v3 = unk_27F20AAB0;
  v4 = qword_27F20AAB8;
  v5 = unk_27F20AAC0;
  v6 = dword_27F20AAC8;
  *(v0 + 32) = qword_27F20AA98;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F1DD6A8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_27F20AAD8;
  v9 = qword_27F20AAE0;
  v10 = unk_27F20AAE8;
  v11 = qword_27F20AAF0;
  v12 = unk_27F20AAF8;
  v13 = dword_27F20AB00;
  *(v0 + 88) = qword_27F20AAD0;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  qword_27F20AB10 = v0;
}

unint64_t sub_24E01F6CC()
{
  result = qword_27F1E0D28;
  if (!qword_27F1E0D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0D18);
    sub_24E01F784();
    sub_24DFB4C28(&qword_27F1DF820, &qword_27F1DF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0D28);
  }

  return result;
}

unint64_t sub_24E01F784()
{
  result = qword_27F1E0D30;
  if (!qword_27F1E0D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0D38);
    sub_24E01F83C();
    sub_24DFB4C28(&unk_27F1DF810, &qword_27F1DF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0D30);
  }

  return result;
}

unint64_t sub_24E01F83C()
{
  result = qword_27F1E0D40;
  if (!qword_27F1E0D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0D48);
    sub_24E01F8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0D40);
  }

  return result;
}

unint64_t sub_24E01F8C8()
{
  result = qword_27F1E0D50;
  if (!qword_27F1E0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0D58);
    sub_24DFB4C28(&qword_27F1E0D60, &qword_27F1E0D68);
    sub_24DFB4C28(&qword_27F1E0D70, &qword_27F1E0D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0D50);
  }

  return result;
}

uint64_t sub_24E01F9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E01FA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E01FA74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivitySharingSection();

  return sub_24E01E574(a1, a2);
}

unint64_t sub_24E01FAF4()
{
  result = qword_27F1E0D90;
  if (!qword_27F1E0D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0D10);
    sub_24DFB4C28(&qword_27F1E0D98, &qword_27F1E0DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0D90);
  }

  return result;
}

uint64_t sub_24E01FBCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24E01FC24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0288);
    sub_24E01FEC8(a2, type metadata accessor for GKProfilePrivacyVisibility);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E01FCC0()
{
  result = qword_27F1E0DE0;
  if (!qword_27F1E0DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0DC8);
    sub_24E01FD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0DE0);
  }

  return result;
}

unint64_t sub_24E01FD44()
{
  result = qword_27F1E0DE8;
  if (!qword_27F1E0DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0DF0);
    type metadata accessor for GKProfilePrivacyVisibility(255);
    sub_24E01FEC8(&qword_27F1E0DD8, type metadata accessor for GKProfilePrivacyVisibility);
    swift_getOpaqueTypeConformance2();
    sub_24E01FEC8(&qword_27F1DF850, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0DE8);
  }

  return result;
}

unint64_t sub_24E01FE74()
{
  result = qword_27F1E0E08;
  if (!qword_27F1E0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0E08);
  }

  return result;
}

uint64_t sub_24E01FEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E01FF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24E01FF9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_24E01FFDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E02003C()
{
  result = qword_27F1E0E18;
  if (!qword_27F1E0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0CF0);
    sub_24DFB4C28(&qword_27F1E0E20, &qword_27F1E0E28);
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0E18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_34@<X0>(uint64_t a1@<X8>)
{

  return sub_24DF8BD90(v1 + a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return type metadata accessor for ActivitySharingSection();
}

uint64_t sub_24E020160()
{
  result = swift_allocObject();
  *(result + 16) = 268;
  return result;
}

uint64_t sub_24E02018C()
{
  v79 = *v0;
  v1 = sub_24E347478();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v80 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - v7;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v77 = v9;
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v73 = v18;
  v74.n128_u64[0] = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = sub_24E347458();
  v23 = OUTLINED_FUNCTION_4_5(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v82 = v25 - v24;
  v26 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_1();
  v32 = v31 - v30;
  *(&v86 + 1) = &type metadata for GKFeatureFlags;
  *&v87 = sub_24DFA0CB4();
  LOBYTE(v85) = 15;
  v33 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  if (v33)
  {
    inited = swift_initStackObject();
    v74 = xmmword_24E367D20;
    v35 = OUTLINED_FUNCTION_0_58(inited, xmmword_24E367D20);
    v35[3].n128_u64[0] = 0x657461676976616ELL;
    v35[3].n128_u64[1] = 0xE800000000000000;
    sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v36 = sub_24E347058();
    __swift_project_value_buffer(v36, qword_27F20AE00);
    OUTLINED_FUNCTION_7_19();
    MEMORY[0x25303DB90]();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v37 = OUTLINED_FUNCTION_5_28();
    v38 = OUTLINED_FUNCTION_4_30(v37, v74);
    v39(v38);
    sub_24E347448();
    v91 = type metadata accessor for InviteFriendsFlowAction();
    v92 = sub_24E020E8C(&qword_27F1E0E30, type metadata accessor for InviteFriendsFlowAction);
    __swift_allocate_boxed_opaque_existential_1(v90);
    sub_24E3471D8();
    (*(v28 + 8))(v32, v26);
  }

  else
  {
    v40 = swift_initStackObject();
    v72 = xmmword_24E367D20;
    v41 = OUTLINED_FUNCTION_0_58(v40, xmmword_24E367D20);
    v41[3].n128_u64[0] = 1852141679;
    v41[3].n128_u64[1] = 0xE400000000000000;
    sub_24E347C28();
    if (qword_27F1DD808 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v42 = sub_24E347058();
    __swift_project_value_buffer(v42, qword_27F20AE00);
    OUTLINED_FUNCTION_7_19();
    MEMORY[0x25303DB90]();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
    v43 = OUTLINED_FUNCTION_5_28();
    v44 = OUTLINED_FUNCTION_4_30(v43, v72);
    v45(v44);
    sub_24E347448();
    sub_24E3471D8();
    (*(v28 + 8))(v32, v26);
    v46 = sub_24E32C0B8();
    memset(v93, 0, sizeof(v93));
    v94 = 1;
    v48 = v73;
    v47 = v74.n128_u64[0];
    (*(v73 + 16))(v16, v21, v74.n128_u64[0]);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v47);
    v91 = type metadata accessor for AddFriendsAction();
    v92 = sub_24E020E8C(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
    sub_24E2835B0(v46, v93, v16, 0, boxed_opaque_existential_1);
    (*(v48 + 8))(v21, v47);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_24E367D20;
  v51 = sub_24E347CB8();
  v52 = GKGameCenterUIFrameworkBundle();
  v53 = GKGetLocalizedStringFromTableInBundle();

  v54 = sub_24E347CF8();
  v56 = v55;

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v89 = -1;
  v57 = sub_24E32CA80();
  sub_24DF89628(v90, v84);
  v58 = v75;
  sub_24E343398();
  v59 = v77;
  v60 = v78;
  (*(v77 + 16))(v76, v58, v78);
  sub_24E020E8C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v59 + 8))(v58, v60);
  v61 = type metadata accessor for DetailData();
  *(v50 + 56) = v61;
  *(v50 + 64) = sub_24E020E8C(&qword_27F1DEE80, type metadata accessor for DetailData);
  v62 = __swift_allocate_boxed_opaque_existential_1((v50 + 32));
  *(v62 + 25) = 0u;
  v62[27] = 0;
  *(v62 + 23) = 0u;
  v63 = *(v61 + 56);
  v64 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v62 + v63, 1, 1, v64);
  v65 = v62 + *(v61 + 60);
  sub_24DF8BD34(v83, v62);
  *(v62 + 40) = 3;
  v62[6] = v54;
  v62[7] = v56;
  v62[9] = 0;
  v62[10] = 0;
  v62[8] = 0;
  sub_24DF9DEAC(&v85, (v62 + 11), &qword_27F1DEE88);
  v62[20] = 0;
  v62[21] = 0;
  *(v62 + 176) = 0;
  *(v62 + 177) = v57 & 1;
  *v65 = 0;
  v65[8] = 0;

  sub_24DF8BDF0(v84, (v62 + 23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_24E369E30;
  strcpy((v66 + 32), "impressionType");
  *(v66 + 47) = -18;
  *(v66 + 48) = 0x74656C63696863;
  *(v66 + 56) = 0xE700000000000000;
  v67 = MEMORY[0x277D837D0];
  *(v66 + 72) = MEMORY[0x277D837D0];
  *(v66 + 80) = 0x6973736572706D69;
  v68 = MEMORY[0x277D83B88];
  *(v66 + 88) = 0xEF7865646E496E6FLL;
  *(v66 + 96) = 0;
  *(v66 + 120) = v68;
  *(v66 + 128) = 0x657079546469;
  *(v66 + 136) = 0xE600000000000000;
  *(v66 + 144) = 0x636974617473;
  *(v66 + 152) = 0xE600000000000000;
  *(v66 + 168) = v67;
  *(v66 + 176) = 1701667182;
  *(v66 + 216) = v67;
  *(v66 + 184) = 0xE400000000000000;
  *(v66 + 192) = v54;
  *(v66 + 200) = v56;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v69 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v69);
  v70 = v81;
  sub_24E347488();
  sub_24DF8BE60(v83);
  sub_24DF8C95C(v84, &qword_27F1DEE90);
  sub_24DF8C95C(&v85, &qword_27F1DEE88);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v64);
  sub_24DF8BEB4(v70, v62 + v63);
  __swift_destroy_boxed_opaque_existential_1(v90);
  return v50;
}

double sub_24E020C14@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70);
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v24 - v4;
  v6 = type metadata accessor for HeaderData();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for Shelf.Presentation(0);
  v8 = (a1 + v7[5]);
  v9 = sub_24E347CB8();
  v10 = GKGameCenterUIFrameworkBundle();
  v11 = GKGetLocalizedStringFromTableInBundle();

  v12 = sub_24E347CF8();
  v14 = v13;

  v15 = type metadata accessor for FooterData.Attachment(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
  memset(v24, 0, 57);
  *v8 = v12;
  v8[1] = v14;
  sub_24DF8BBD0(v24, (v8 + 3));
  v16 = type metadata accessor for FooterData(0);
  sub_24DF9DEAC(v5, v8 + *(v16 + 28), &qword_27F1DEE70);
  v17 = [objc_opt_self() labelColor];
  sub_24DF8BC2C(v24);
  sub_24DF8C95C(v5, &qword_27F1DEE70);
  v8[2] = v17;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  v18 = a1 + v7[11];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  v20 = a1 + v7[12];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (a1 + v7[13]);
  v22 = (a1 + v7[14]);
  v23 = (a1 + v7[15]);
  *(a1 + v7[6]) = 1;
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  *(a1 + v7[7]) = 1;
  *(a1 + v7[8]) = 1;
  *(a1 + v7[9]) = 1;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_24E020E8C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 *OUTLINED_FUNCTION_0_58(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x79546E6F69746361;
  result[2].n128_u64[1] = 0xEA00000000006570;
  result[4].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return swift_allocObject();
}

uint64_t sub_24E020F7C()
{
  v0 = sub_24E348B78();

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

uint64_t sub_24E020FD0(char a1)
{
  if (a1)
  {
    return 0x73656D6167;
  }

  else
  {
    return 0x726564616568;
  }
}

uint64_t sub_24E021024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E020F7C();
  *a1 = result;
  return result;
}

uint64_t sub_24E021054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E020FD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24E021080(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24DFB4C28(&qword_27F1E0E80, &qword_27F1E96D0);
  sub_24DFB4C28(&qword_27F1E0E88, &unk_27F1E1C00);
  sub_24E344B98();
  *(v3 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter) = 0;
  v6 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchObserver;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0E98);
  __swift_storeEnumTagSinglePayload(v4 + v6, 1, 1, v7);
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isUpdating) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_onApplySnapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v8) = sub_24E346F88();
  v9 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_onUpdatePhaseChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v9) = sub_24E346F88();
  v10 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_onShowPageOverlay;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0078);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v10) = sub_24E346F88();
  v11 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_onFetchingMoreContent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F00);
  OUTLINED_FUNCTION_1_30();
  *(v4 + v11) = sub_24E346F88();
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isPreparingNextPage) = 1;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_shouldPrepareNextPage) = 1;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_playerInternal) = a1;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_filterGame) = a3;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source) = v16;
  type metadata accessor for AppStoreContentLookupPresenter();
  v12 = swift_allocObject();
  type metadata accessor for ASCLockupBatchPresenter();
  v13 = a1;
  v14 = sub_24E347C28();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_contentLookupPresenter) = v12;
  return v4;
}

uint64_t sub_24E021320(uint64_t a1)
{
  v2 = *v1;
  v19[0] = a1;
  v19[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0E98);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v16 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchObserver;
  swift_beginAccess();
  sub_24DFC24D4(v1 + v16, v11, &qword_27F1E0EB0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_24DF8BFF4(v11, &qword_27F1E0EB0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (v19[0])
    {
      sub_24E346F68();
    }

    (*(v13 + 8))(v15, v12);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    swift_beginAccess();
    sub_24DFC2564(v8, v1 + v16, &qword_27F1E0EB0);
    swift_endAccess();
  }

  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EB8);
    sub_24DFB4C28(&qword_27F1E0EC0, &qword_27F1E0EB8);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v20);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v17, 1, v12);
  swift_beginAccess();
  sub_24DFC2564(v5, v1 + v16, &qword_27F1E0EB0);
  return swift_endAccess();
}

void sub_24E0216FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v8 = type metadata accessor for Shelf(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >> 6)
  {
    if (a4 >> 6 == 1)
    {
      v14 = 0;

      sub_24E346F78();

      sub_24E0228B4(a2, v10);
      MEMORY[0x28223BE20](v11);
      *(&v13 - 2) = v10;
      sub_24E0226B8(sub_24E0241A4, (&v13 - 4), &OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_snapshot, &OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_onApplySnapshot);
      v12 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isPreparingNextPage;
      swift_beginAccess();
      *(v5 + v12) = 0;
      *(v5 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_shouldPrepareNextPage) = a4 & 1;
      sub_24E0246B8(v10, type metadata accessor for Shelf);
      return;
    }

    v14 = 0;
  }

  else
  {
    if (a2)
    {
      return;
    }

    v14 = 1;
  }

  sub_24E346F78();
}

uint64_t sub_24E0218B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter) = a1;

  sub_24E021320(v2);
}

uint64_t (*sub_24E021910())(uint64_t a1)
{
  v0 = sub_24E0216BC();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_24E024198;
}

uint64_t sub_24E0219A4()
{
  switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source))
  {
    case 2:

      result = 7;
      break;
    default:
      v2 = sub_24E348C08();

      if (v2)
      {
        result = 7;
      }

      else
      {
        result = 120;
      }

      break;
  }

  return result;
}

uint64_t sub_24E021AD8()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  return v3;
}

uint64_t sub_24E021BD0()
{
  switch(*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source))
  {
    case 1:
    case 2:
    case 3:
      v1 = sub_24E348C08();

      if (v1)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_playerInternal);
      if (([v2 isLocalPlayer] & 1) == 0)
      {
        v3 = [v2 alias];
        if (v3)
        {
          v4 = v3;
          sub_24E347CF8();
        }
      }

      break;
  }

  return OUTLINED_FUNCTION_19_1();
}

void sub_24E021D20()
{
  if ((*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isUpdating) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isUpdating) = 1;
    v4[1] = 0;
    v4[2] = 0;
    v4[0] = 1;

    sub_24E346F78();

    LOBYTE(v4[0]) = *(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source);
    v1 = sub_24E0219A4();
    sub_24E167484(v4, 0, v1, *(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_filterGame));
    OUTLINED_FUNCTION_3_35();
    swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_3_35();
    swift_allocObject();
    swift_weakInit();
    v2 = sub_24DF88A8C(0, &qword_27F1DFCD0);

    v3 = sub_24E348368();
    v4[3] = v2;
    v4[4] = MEMORY[0x277D225C0];
    v4[0] = v3;
    sub_24E347A78();

    __swift_destroy_boxed_opaque_existential_1(v4);
  }
}

uint64_t sub_24E021EB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E021F18();
  }

  return result;
}

uint64_t sub_24E021F18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isUpdating) = 0;
  if (sub_24DFD8654())
  {

    sub_24E198D4C();
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source) - 1 >= 3)
    {
      v4 = MEMORY[0x277CEC1F8];
    }

    else
    {
      v4 = MEMORY[0x277CEC200];
    }

    v5 = *v4;
    if (qword_27F1DDB50 != -1)
    {
      swift_once();
    }

    v6 = qword_27F20B218;
    type metadata accessor for ASCLockupBatchPresenter();
    swift_allocObject();
    v7 = v6;

    v9 = sub_24E25C424(v8, 30, v7, v5);
    sub_24E0218B0(v9);
    if (*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter))
    {

      sub_24E25C5B0();
    }

    v10 = type metadata accessor for EmptyStateData();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
    sub_24E346F78();
    sub_24DF8BFF4(v3, &qword_27F1E0058);
    OUTLINED_FUNCTION_4_31();
    sub_24E346F78();
  }

  else
  {
    OUTLINED_FUNCTION_4_31();
    sub_24E346F78();

    sub_24E198EE0();
    return sub_24E0222CC();
  }
}

uint64_t sub_24E022130(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isUpdating) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v4 = a1;
    sub_24E346F78();

    sub_24E024148(a1, sub_24E024140);
  }

  return result;
}

uint64_t sub_24E022270()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E021D20(0);
  }

  return result;
}

uint64_t sub_24E0222CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v31 = sub_24E3433A8();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v28 = v15;
  v29 = v14;

  v16 = sub_24E347CB8();
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();

  v19 = sub_24E347CF8();
  v21 = v20;

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  *(v10 + 152) = 0u;
  *(v10 + 21) = 0;
  *(v10 + 136) = 0u;
  v22 = *(v8 + 52);
  v23 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(&v10[v22], 1, 1, v23);
  *(v10 + 40) = xmmword_24E369980;
  v10[56] = 1;
  v24 = v28;
  *(v10 + 8) = v29;
  *(v10 + 9) = v24;
  *(v10 + 10) = v19;
  *(v10 + 11) = v21;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  v10[128] = 1;
  sub_24DF8BDF0(v32, (v10 + 136));
  sub_24E343398();
  v25 = v31;
  (*(v3 + 16))(v30, v7, v31);
  sub_24E023E3C(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v3 + 8))(v7, v25);
  sub_24DF8BFF4(v32, &qword_27F1DEE90);
  sub_24E024660(v10, v2, type metadata accessor for EmptyStateData);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_24E346F78();
  sub_24DF8BFF4(v2, &qword_27F1E0058);
  return sub_24E0246B8(v10, type metadata accessor for EmptyStateData);
}

uint64_t sub_24E0226B8(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v14 = *a3;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v15(v13, v4 + v14, v7);
  a1(v13);
  v15(v10, v13, v7);
  swift_beginAccess();
  (*(v8 + 40))(v4 + v14, v10, v7);
  swift_endAccess();
  v15(v10, v4 + v14, v7);

  sub_24E346F78();

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

void sub_24E0228B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24E347458();
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E347478();
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AppStoreLockupData();
  MEMORY[0x28223BE20](v81);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v65 - v13;
  v67 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v67);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v65 - v17;
  v77 = a1;
  v18 = sub_24DFD8654(a1);
  v19 = MEMORY[0x277D84F90];
  v68 = a2;
  if (!v18)
  {
LABEL_18:
    v50 = type metadata accessor for HeaderData();
    v51 = v66;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v50);
    sub_24DFC24D4(v51, v15, &qword_27F1DF058);
    v52 = v67;
    v53 = *(v67 + 20);
    v54 = type metadata accessor for FooterData(0);
    __swift_storeEnumTagSinglePayload(&v15[v53], 1, 1, v54);
    v55 = &v15[v52[11]];
    *v55 = 0u;
    *(v55 + 1) = 0u;
    v55[32] = 1;
    v56 = &v15[v52[12]];
    *v56 = 0;
    v56[8] = 1;
    v57 = &v15[v52[13]];
    v58 = &v15[v52[14]];
    v59 = &v15[v52[15]];
    v15[v52[6]] = 1;
    *v57 = 0;
    *(v57 + 1) = 0;
    *v58 = 0;
    *(v58 + 1) = 0;
    *v59 = 0;
    *(v59 + 1) = 0;
    v15[v52[7]] = 1;
    v15[v52[8]] = 1;
    v15[v52[9]] = 1;
    v15[v52[10]] = 0;
    LOBYTE(v93[0]) = 1;
    sub_24E02460C();
    v60 = v68;
    sub_24E348918();
    sub_24DF8BFF4(v51, &qword_27F1DF058);
    v61 = type metadata accessor for Shelf(0);
    sub_24E024660(v15, v60 + *(v61 + 28), type metadata accessor for Shelf.Presentation);
    v62 = sub_24E3474B8();
    v63 = v78;
    __swift_storeEnumTagSinglePayload(v78, 1, 1, v62);
    v64 = *(v61 + 32);
    __swift_storeEnumTagSinglePayload(v60 + v64, 1, 1, v62);
    *(v60 + 40) = 6;
    *(v60 + 48) = v19;
    sub_24DFC2564(v63, v60 + v64, &qword_27F1E58A0);
    sub_24E0246B8(v15, type metadata accessor for Shelf.Presentation);
    return;
  }

  v20 = v18;
  v65 = v15;
  v96[0] = MEMORY[0x277D84F90];
  sub_24E12F470(0, v18 & ~(v18 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = *(v3 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_source);
    v72 = *MEMORY[0x277CEC248];
    v73 = v77 & 0xC000000000000001;
    v71 = 0x800000024E39E340;
    v19 = v96[0];
    if ((v22 - 1) >= 3)
    {
      v23 = MEMORY[0x277CEC1F8];
    }

    else
    {
      v23 = MEMORY[0x277CEC200];
    }

    v70 = *v23;
    v69 = xmmword_24E369E30;
    v74 = v20;
    do
    {
      if (v73)
      {
        v24 = MEMORY[0x25303F560](v21, v77);
      }

      else
      {
        v24 = *(v77 + 8 * v21 + 32);
      }

      v25 = v24;
      v80 = v19;
      v92 = 0;
      memset(v91, 0, sizeof(v91));
      v26 = v70;
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      v27 = v81;
      v94 = v81;
      v95 = sub_24E023E3C(&qword_27F1DEFD0, type metadata accessor for AppStoreLockupData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
      *(v11 + 136) = 0u;
      *(v11 + 152) = 0u;
      *(v11 + 21) = 0;
      v28 = &v11[*(v27 + 60)];
      v29 = sub_24E3474B8();
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
      sub_24DFC24D4(v91, &v83, &qword_27F1DF680);
      if (*(&v84 + 1))
      {
        v86 = v83;
        v87 = v84;
        v88 = v85;
        v30 = v72;
        v31 = v72;
      }

      else
      {
        v82 = v25;
        sub_24DF88A8C(0, &qword_27F1E3560);
        sub_24DFAE910();
        v30 = v72;
        v32 = v72;
        v33 = v25;
        sub_24E348918();
        if (*(&v84 + 1))
        {
          sub_24DF8BFF4(&v83, &qword_27F1DF680);
        }
      }

      v34 = v87;
      *v11 = v86;
      *(v11 + 1) = v34;
      *(v11 + 4) = v88;
      *(v11 + 5) = v25;
      *(v11 + 6) = v30;
      *(v11 + 7) = 0;
      *(v11 + 8) = v26;
      v11[128] = 0;
      *&v11[*(v81 + 64)] = 0;
      *(v11 + 15) = 0;
      *(v11 + 104) = 0u;
      *(v11 + 88) = 0u;
      *(v11 + 72) = 0u;
      v35 = v25;
      sub_24DF8BDF0(v89, (v11 + 136));
      v36 = [v35 stringValue];

      sub_24E347CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      inited = swift_initStackObject();
      *(inited + 16) = v69;
      strcpy((inited + 32), "impressionType");
      *(inited + 47) = -18;
      *(inited + 48) = 0x70756B636F6CLL;
      *(inited + 56) = 0xE600000000000000;
      v38 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = 0x6973736572706D69;
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = 0;
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 128) = 0x657079546469;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 0x636974617473;
      *(inited + 152) = 0xE600000000000000;
      *(inited + 168) = v38;
      *(inited + 176) = 1701667182;
      *(inited + 216) = v38;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = 0xD000000000000012;
      *(inited + 200) = v71;
      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v39 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v39);
      v40 = v78;
      sub_24E347488();
      sub_24DF8BFF4(v89, &qword_27F1DEE90);
      sub_24DF8BFF4(v91, &qword_27F1DF680);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v29);
      sub_24DFC2564(v40, v28, &qword_27F1E58A0);
      sub_24DFAE818(v11, boxed_opaque_existential_1);
      v96[0] = v80;
      v42 = *(v80 + 16);
      v41 = *(v80 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_24E12F470(v41 > 1, v42 + 1, 1);
      }

      ++v21;
      v43 = v94;
      v44 = v95;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
      v46 = MEMORY[0x28223BE20](v45);
      v48 = &v65 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48, v46);
      sub_24E024574(v42, v48, v96, v43, v44);
      __swift_destroy_boxed_opaque_existential_1(v93);
      v19 = v96[0];
    }

    while (v74 != v21);
    v15 = v65;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_24E023210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v27 - v9;
  v10 = type metadata accessor for Shelf(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  v32 = a1;
  v16 = sub_24E344B88();
  sub_24E024660(a2, v12, type metadata accessor for Shelf);
  sub_24E023E3C(&qword_27F1E0EC8, type metadata accessor for Shelf);
  v27 = v10;
  sub_24E347178();
  v34 = v15;
  LOBYTE(v10) = sub_24E023E9C(sub_24E0244C4, v33, v16);
  v17 = v28;

  v18 = *(v17 + 8);
  v29 = v13;
  v18(v15, v13);
  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0ED0);
    *(swift_allocObject() + 16) = xmmword_24E367D20;
    sub_24E024660(a2, v12, type metadata accessor for Shelf);
    sub_24E347178();
    sub_24E344B18();
  }

  v19 = *(a2 + 48);
  v20 = *(v19 + 16);
  if (v20)
  {
    v37 = MEMORY[0x277D84F90];
    sub_24E12F7F8(0, v20, 0);
    v21 = v37;
    v22 = v19 + 32;
    do
    {
      sub_24DF89628(v22, v36);
      sub_24DF89628(v36, v35);
      sub_24E347168();
      __swift_destroy_boxed_opaque_existential_1(v36);
      v37 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24E12F7F8(v23 > 1, v24 + 1, 1);
        v21 = v37;
      }

      *(v21 + 16) = v24 + 1;
      (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v7, v4);
      v22 += 40;
      --v20;
    }

    while (v20);
  }

  v25 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
  sub_24E344AD8();

  return sub_24DF8BFF4(v25, &unk_27F1E1CB0);
}

uint64_t sub_24E02368C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v0 + v1) = 1;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchPresenter))
  {

    sub_24E25C5B0();
  }

  return result;
}

uint64_t sub_24E023700()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_snapshot;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_appStoreLockupBatchObserver, &qword_27F1E0EB0);

  return v0;
}

uint64_t sub_24E023804()
{
  sub_24E023700();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppStoreContentListPagePresenter()
{
  result = qword_27F1E0E68;
  if (!qword_27F1E0E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0238B0()
{
  sub_24E0239BC();
  if (v0 <= 0x3F)
  {
    sub_24E023ABC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E0239BC()
{
  if (!qword_27F1E0E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E96D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E1C00);
    sub_24DFB4C28(&qword_27F1E0E80, &qword_27F1E96D0);
    sub_24DFB4C28(&qword_27F1E0E88, &unk_27F1E1C00);
    v0 = sub_24E344BA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E0E78);
    }
  }
}

void sub_24E023ABC()
{
  if (!qword_27F1E0E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0E98);
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E0E90);
    }
  }
}

uint64_t sub_24E023B68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_3_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_24E023BF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_snapshot;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0);
  OUTLINED_FUNCTION_3_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_24E023C80()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E023CC4(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI32AppStoreContentListPagePresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E023DE4(uint64_t a1)
{
  result = sub_24E023E3C(&qword_27F1E0EA8, type metadata accessor for AppStoreContentListPagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E023E3C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_24E023E9C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_24E023F8C()
{
  OUTLINED_FUNCTION_2_36();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_24E024034(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_24DFD8654();
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25303F560](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

char *sub_24E024148(char *result, uint64_t a2)
{
  if ((result - 1) >= 2)
  {

    return sub_24DE73FA0(a2);
  }

  return result;
}

unint64_t sub_24E0241AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0EE8);
  v2 = sub_24E348B58();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_24DFC24D4(v6, &v15, &qword_27F1E0EF0);
    v7 = v15;
    v8 = v16;
    result = sub_24E024300(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_24E024710(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_24E024300(uint64_t a1, uint64_t a2)
{
  sub_24E348D18();
  sub_24E347DC8();
  v4 = sub_24E348D68();

  return sub_24E024378(a1, a2, v4);
}

unint64_t sub_24E024378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24E348C08() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24E02442C()
{
  OUTLINED_FUNCTION_2_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24DFB4C28(&qword_27F1E0ED8, &qword_27F1E96D0);
  return sub_24E347CA8() & 1;
}

uint64_t sub_24E0244E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_24E348C08() & 1;
  }
}

uint64_t sub_24E024528()
{
  OUTLINED_FUNCTION_2_36();
  type metadata accessor for PlayerProfileSection();
  return sub_24E32CEF8(v1, v0) & 1;
}

uint64_t sub_24E024574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24DE56CE8(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_24E02460C()
{
  result = qword_27F1E0EE0;
  if (!qword_27F1E0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0EE0);
  }

  return result;
}

uint64_t sub_24E024660(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0246B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

_OWORD *sub_24E024710(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for AppStoreContentListPagePresenter.SectionIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E024800()
{
  result = qword_27F1E0EF8;
  if (!qword_27F1E0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0EF8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_31()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0;
  *(v0 - 72) = 2;
}

void SmallPlayerCardData.init(id:title:subtitle:buttonText:avatarArtworkLoaderConfig:avatarImage:shouldShowMessagesBadge:buttonAction:removeButtonAction:isEnabled:segue:messagesGroupIdentifier:groupRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_7_20();
  HIDWORD(v41) = a13;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_44();
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_5_29();
  *(v17 + 32) = *(v21 + 32);
  *(v17 + 40) = v35;
  *(v17 + 48) = v36;
  *(v17 + 56) = v37;
  *(v17 + 64) = v38;
  *(v17 + 72) = v39;
  *(v17 + 80) = v40;
  *(v17 + 88) = v19;
  *(v17 + 96) = v20;
  *(v17 + 104) = a9;
  OUTLINED_FUNCTION_0_59();
  *(v17 + 200) = a13;
  v26 = sub_24DF95BE4(a14, v18, &qword_27F1DEE90);
  OUTLINED_FUNCTION_11_11(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, a14, a15, a16, a17);
  *(v17 + 112) = a10;
}

id SmallPlayerCardData.avatarArtworkLoaderConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = v2;
  v3 = *(v1 + 96);
  *(a1 + 8) = v3;
  return sub_24E025030(v2, v3);
}

void *SmallPlayerCardData.avatarImage.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t SmallPlayerCardData.messagesGroupIdentifier.getter()
{
  type metadata accessor for SmallPlayerCardData();

  return OUTLINED_FUNCTION_19_1();
}

uint64_t SmallPlayerCardData.messagesGroupIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SmallPlayerCardData() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SmallPlayerCardData.groupRecipients.getter()
{
  type metadata accessor for SmallPlayerCardData();
}

uint64_t SmallPlayerCardData.groupRecipients.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_17() + 68);

  *(v1 + v2) = v0;
  return result;
}

uint64_t SmallPlayerCardData.init(id:title:subtitle:buttonText:avatarArtworkLoaderConfig:avatarImage:buttonAction:removeButtonAction:isEnabled:segue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_44();
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = *(v16 + 68);
  OUTLINED_FUNCTION_5_29();
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  *(a8 + 88) = v14;
  *(a8 + 96) = v15;
  *(a8 + 104) = a9;
  OUTLINED_FUNCTION_0_59();
  *(a8 + 200) = a12;
  result = sub_24DF95BE4(a13, v13, &qword_27F1DEE90);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(a8 + v24) = 0;
  *(a8 + 112) = 0;
  return result;
}

void SmallPlayerCardData.init(id:title:subtitle:buttonText:avatarArtworkLoaderConfig:avatarImage:buttonAction:removeButtonAction:isEnabled:segue:messagesGroupIdentifier:groupRecipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_7_20();
  HIDWORD(v40) = a12;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_1_44();
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_5_29();
  *(v16 + 32) = *(v20 + 32);
  *(v16 + 40) = v34;
  *(v16 + 48) = v35;
  *(v16 + 56) = v36;
  *(v16 + 64) = v37;
  *(v16 + 72) = v38;
  *(v16 + 80) = v39;
  *(v16 + 88) = v18;
  *(v16 + 96) = v19;
  *(v16 + 104) = a9;
  OUTLINED_FUNCTION_0_59();
  *(v16 + 200) = a12;
  v25 = sub_24DF95BE4(a13, v17, &qword_27F1DEE90);
  *(v16 + 112) = 0;
  OUTLINED_FUNCTION_11_11(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, a13, a14, a15, a16);
}

uint64_t type metadata accessor for SmallPlayerCardData()
{
  result = qword_280BE0060;
  if (!qword_280BE0060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24E025030(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_24E025044()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20AB58 = v3;
  unk_27F20AB60 = v5;
}

void sub_24E0250E4()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  v5 = v4;

  qword_27F20AB68 = v3;
  unk_27F20AB70 = v5;
}

void SmallPlayerCardData.init(suggestedFriend:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFA60);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v72 - v4;
  v82 = type metadata accessor for SmallPlayerCardData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E347458();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_7_1();
  v10 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v80 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_1();
  v22 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v78 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v24 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v24;
  *(inited + 48) = 0x65766F6D6572;
  *(inited + 56) = 0xE600000000000000;
  v25 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v26 = sub_24E347058();
  v27 = __swift_project_value_buffer(v26, qword_27F20AE00);
  MEMORY[0x25303DB90](0xD000000000000016, 0x800000024E39E5B0, 0x6E6F74747562, 0xE600000000000000, v25, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v78;
  (*(v12 + 16))(v29 + v28, v16, v10);
  sub_24E347448();
  sub_24E3471D8();
  (*(v12 + 8))(v16, v10);
  sub_24E283414(a1, v87);
  LODWORD(v78) = v87[32];
  v30 = [a1 contact];
  v31 = [v30 identifier];

  v32 = sub_24E347CF8();
  v34 = v33;

  v83[0] = v32;
  v83[1] = v34;
  sub_24E348918();
  v35 = objc_opt_self();
  v36 = [a1 contact];
  v37 = [v35 stringFromContact:v36 style:0];

  v38 = v22;
  if (v37)
  {
    v77 = sub_24E347CF8();
    v76 = v39;
  }

  else
  {
    v77 = 0;
    v76 = 0xE000000000000000;
  }

  if (qword_27F1DD6C0 != -1)
  {
    swift_once();
  }

  v40 = unk_27F20AB60;
  v75 = qword_27F20AB58;
  v41 = qword_27F1DD6C8;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = unk_27F20AB70;
  v74 = qword_27F20AB68;

  v73 = [a1 contact];
  v43 = [objc_opt_self() local];
  v44 = v79;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v17);
  *(v8 + 144) = type metadata accessor for AddFriendsAction();
  *(v8 + 152) = sub_24E025AB4(&qword_27F1DFA68, type metadata accessor for AddFriendsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 120));
  sub_24DFB8654(v87, v83);
  sub_24E2835B0(v43, v87, v44, 0, boxed_opaque_existential_1);
  v49 = [a1 &selRef_bytes];
  v50 = type metadata accessor for BlackListCoreRecencyContactAction();
  *(v8 + 184) = v50;
  *(v8 + 192) = sub_24E025AB4(&qword_27F1DFA70, type metadata accessor for BlackListCoreRecencyContactAction);
  v51 = __swift_allocate_boxed_opaque_existential_1((v8 + 160));
  v52 = v80;
  v53 = *(v80 + 16);
  v54 = v51 + *(v50 + 20);
  v79 = v17;
  v53(v54, v38, v17);
  *v51 = v49;
  type metadata accessor for PlayerProfileSection();
  LOBYTE(v49) = sub_24E32CA80();
  memset(v83, 0, sizeof(v83));
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0;
  *(v8 + 208) = 0u;
  v55 = v82;
  sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = *(v55 + 68);
  v61 = (v8 + *(v55 + 64));
  v62 = v85;
  *v8 = v84;
  *(v8 + 16) = v62;
  v63 = v77;
  *(v8 + 32) = v86;
  *(v8 + 40) = v63;
  v64 = v75;
  *(v8 + 48) = v76;
  *(v8 + 56) = v64;
  v65 = v74;
  *(v8 + 64) = v40;
  *(v8 + 72) = v65;
  v66 = v73;
  *(v8 + 80) = v42;
  *(v8 + 88) = v66;
  *(v8 + 96) = 1;
  *(v8 + 104) = 0;
  *(v8 + 200) = v49 & 1;
  sub_24DF95BE4(v83, v8 + 208, &qword_27F1DEE90);
  *v61 = 0;
  v61[1] = 0;
  *(v8 + v60) = MEMORY[0x277D84F90];
  *(v8 + 112) = v78 & 1;
  v67 = v81;
  sub_24E025A08(v8, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_24E369990;
  v69 = [a1 contact];
  v70 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithContact_];

  if (v70)
  {
    sub_24DFB8758(v87);
    *(v68 + 32) = v70;

    (*(v52 + 8))(v38, v79);
    v71 = *(v82 + 68);

    *(v67 + v71) = v68;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24E025A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallPlayerCardData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E025AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E025B24()
{
  sub_24DF9E030(319, &qword_280BE0128);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_24DF9E030(319, &qword_280BDFCA8);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_24E025CD0(319, &qword_280BE0108, sub_24DFC2C38);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_24E025CD0(319, &qword_280BE0650, MEMORY[0x277D21F70]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_24DFC2AD4(319, &qword_280BDFB80, &qword_27F1E0F10);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_24E025CD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E348698();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 OUTLINED_FUNCTION_0_59()
{
  v3 = *v2;
  v4 = v2[1];
  *(v0 + 152) = *(v2 + 4);
  *(v0 + 136) = v4;
  *(v0 + 120) = v3;
  result = *v1;
  v6 = *(v1 + 16);
  *(v0 + 160) = *v1;
  *(v0 + 176) = v6;
  *(v0 + 192) = *(v1 + 32);
  return result;
}

double OUTLINED_FUNCTION_1_44()
{
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 208) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_5_29()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  v0[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return type metadata accessor for SmallPlayerCardData();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return type metadata accessor for SmallPlayerCardData();
}

void OUTLINED_FUNCTION_11_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v22 = a18;
  v22[1] = a19;
  *(v20 + v21) = a20;
}

id sub_24E025DE8()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  return v1;
}

uint64_t sub_24E025E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E025FA0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E025EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E025FA0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E025F20()
{
  sub_24E025FA0();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E025F4C()
{
  result = qword_27F1E0F18;
  if (!qword_27F1E0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0F18);
  }

  return result;
}

unint64_t sub_24E025FA0()
{
  result = qword_27F1E0F20;
  if (!qword_27F1E0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0F20);
  }

  return result;
}

Swift::Void __swiftcall EmptyStateView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView) setImage_];
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);

  [v1 setTitle:0 forState:0];
}

double static EmptyStateView.size(fitting:component:layoutEnvironment:)()
{
  v0 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F28);
  sub_24E347148();
  swift_getObjectType();
  v3 = sub_24DFC1764();
  sub_24E2D9794(v2, v3, v7);
  swift_unknownObjectRelease();
  sub_24DFE22E0(v2);
  v4 = sub_24DFC1764();
  swift_getObjectType();
  v5 = sub_24E33A038(v4, v7);
  swift_unknownObjectRelease();
  sub_24E02629C(v7);
  return v5;
}

uint64_t EmptyStateView.apply(contentsOf:with:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EmptyStateData();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F28);
  sub_24E347148();
  sub_24E2D93A0(v6, a3);
  return sub_24DFE22E0(v6);
}

uint64_t sub_24E026380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0263C8()
{
  type metadata accessor for ActivityFeedProfileSection();
  result = swift_allocObject();
  *(result + 16) = 4637;
  return result;
}

void *sub_24E0263F4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24DF8BF80(__dst) == 1)
  {
    return 0;
  }

  v4 = __dst[0];
  v5 = __dst[4];
  v6 = __dst[11];
  v16 = __dst[4];
  v7 = *(v1 + 16);
  v8 = __dst[12];
  sub_24DFAE87C(__src, v13, &qword_27F1DEEA0);
  v9 = v4;
  sub_24DFAE87C(&v16, v13, &qword_27F1E0F30);
  v10 = sub_24E247A54(v7);
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v4;
  v12[1] = v5;
  v3 = static PlayerProfileUtil.ParseActivityFeed(with:requiredData:isFirstLoad:numOfSectionAboveThisShelf:scrollToActivityInfo:)(v6, v12, v8 & 1, v10, v13);
  sub_24DF8BFF4(__src, &qword_27F1DEEA0);

  return v3;
}

uint64_t sub_24E02652C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v5 = sub_24E347458();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E347478();
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v112 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  v15 = OUTLINED_FUNCTION_4_5(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v99 - v16;
  v110 = sub_24E3433A8();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_7_1();
  v107 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050);
  v21 = OUTLINED_FUNCTION_4_5(v20);
  MEMORY[0x28223BE20](v21);
  v114 = &v99 - v22;
  v23 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  v29 = OUTLINED_FUNCTION_4_5(v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  memcpy(__dst, a1, 0x90uLL);
  if (sub_24DF8BF80(__dst) == 1)
  {
    goto LABEL_9;
  }

  if (!__dst[11])
  {
    goto LABEL_9;
  }

  v35 = sub_24E078DC4(__dst[11]);
  if (!v35)
  {
    goto LABEL_9;
  }

  v36 = v35;
  if (!sub_24DFD8654(v35))
  {

LABEL_9:
    v38 = 0;
    goto LABEL_10;
  }

  v104 = v34;
  sub_24DFFA844(0, (v36 & 0xC000000000000001) == 0, v36);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x25303F560](0, v36);
  }

  else
  {
    v37 = *(v36 + 32);
  }

  v113 = v37;

  v34 = v104;
  v38 = v113;
LABEL_10:
  v39 = type metadata accessor for HeaderData();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  if (v38)
  {
    v43 = sub_24E078E9C(v38);
    if (v44)
    {
      v105 = v44;
      v106 = v43;
      v113 = v38;
      v103 = v17;
      v104 = v34;
      v102 = v9;
      sub_24E099B2C(v27);
      type metadata accessor for TitleHeaderView.TextConfiguration(0);
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for PlayerCardTheme();
      v50 = *(__swift_project_value_buffer(v49, qword_27F20BF00) + *(v49 + 40));
      v51 = v23[8];
      v27[v23[6]] = 0;
      v27[v23[7]] = 0;
      v27[v51] = 0;
      v27[v23[9]] = 0;
      *&v27[v23[11]] = 0;
      *&v27[v23[13]] = v50;
      v27[v23[10]] = 1;
      v27[v23[12]] = 0;
      memset(v120, 0, 64);
      v120[64] = -1;
      memset(v119, 0, 64);
      v119[64] = -1;
      v118 = 0;
      memset(v117, 0, sizeof(v117));
      v52 = *(v109 + 16);
      v53 = v50;
      v111 = sub_24E247A54(v52);
      v54 = sub_24E078F80(v113);
      if (!v55)
      {
        v54 = sub_24E32CAFC(v52);
      }

      v109 = v54;
      v101 = v55;
      sub_24E3444F8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      v60 = v107;
      sub_24E343398();
      v61 = sub_24E343378();
      v99 = v62;
      v100 = v61;
      (*(v108 + 8))(v60, v110);
      v63 = &v31[v39[7]];
      *(v63 + 32) = 0u;
      *(v63 + 48) = 0u;
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 64) = -1;
      v64 = &v31[v39[9]];
      *(v64 + 32) = 0u;
      *(v64 + 48) = 0u;
      *v64 = 0u;
      *(v64 + 16) = 0u;
      *(v64 + 64) = -1;
      v65 = &v31[v39[10]];
      v66 = &v31[v39[11]];
      *(v66 + 32) = 0;
      *v66 = 0u;
      *(v66 + 16) = 0u;
      v67 = v39[13];
      v107 = v39[12];
      v68 = &v31[v67];
      *(v68 + 4) = 0;
      *v68 = 0u;
      *(v68 + 1) = 0u;
      v110 = v39[14];
      v108 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
      v115 = v100;
      v116 = v99;
      sub_24E348918();
      sub_24E026ED8(v27, &v31[v39[5]]);
      v73 = &v31[v39[6]];
      v74 = v105;
      *v73 = v106;
      *(v73 + 1) = v74;

      sub_24DFAE710(v120, v63, &qword_27F1DEE88);
      v75 = &v31[v39[8]];
      *v75 = 0;
      *(v75 + 1) = 0;
      sub_24DFAE710(v119, v64, &qword_27F1DEE88);
      *&v31[v107] = 0;
      *v65 = 0;
      *(v65 + 1) = 0;
      sub_24DFAE710(v117, v66, &qword_27F1DEE90);
      sub_24DFAE87C(v114, &v31[v39[17]], &qword_27F1DF050);
      v76 = &v31[v39[16]];
      v77 = v111;
      *v76 = v111;
      v76[8] = 0;
      v78 = &v31[v39[15]];
      v107 = v27;
      v79 = v101;
      *v78 = v109;
      *(v78 + 1) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E369E30;
      strcpy((inited + 32), "impressionType");
      *(inited + 47) = -18;
      *(inited + 48) = 0x666C656873;
      *(inited + 56) = 0xE500000000000000;
      v81 = MEMORY[0x277D837D0];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = 0x6973736572706D69;
      v82 = MEMORY[0x277D83B88];
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = v77;
      *(inited + 120) = v82;
      *(inited + 128) = 0x657079546469;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 0x636974617473;
      *(inited + 152) = 0xE600000000000000;
      *(inited + 168) = v81;
      *(inited + 176) = 1701667182;
      *(inited + 216) = v81;
      v83 = v105;
      v84 = v106;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = v84;
      *(inited + 200) = v83;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v85 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v85);
      v86 = v103;
      sub_24E347488();

      sub_24DF8BFF4(v114, &qword_27F1DF050);
      sub_24DF8BFF4(v117, &qword_27F1DEE90);
      sub_24DF8BFF4(v119, &qword_27F1DEE88);
      sub_24DF8BFF4(v120, &qword_27F1DEE88);
      sub_24E026F3C(v107);
      v34 = v104;
      sub_24DF8BFF4(v104, &qword_27F1DF058);
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v108);
      sub_24DF8BEB4(v86, &v31[v110]);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v39);
      sub_24E026E68(v31, v34);
    }

    else
    {
    }
  }

  v87 = v34;
  v88 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = a3 + v88[11];
  *v93 = 0u;
  *(v93 + 16) = 0u;
  *(v93 + 32) = 1;
  v94 = a3 + v88[12];
  *v94 = 0;
  *(v94 + 8) = 1;
  v95 = (a3 + v88[13]);
  v96 = (a3 + v88[14]);
  v97 = (a3 + v88[15]);
  result = sub_24E026E68(v87, a3);
  *(a3 + v88[6]) = 1;
  *v95 = 0;
  v95[1] = 0;
  *v96 = 0;
  v96[1] = 0;
  *v97 = 0;
  v97[1] = 0;
  *(a3 + v88[7]) = 1;
  *(a3 + v88[8]) = 1;
  *(a3 + v88[9]) = 1;
  *(a3 + v88[10]) = 0;
  return result;
}

uint64_t sub_24E026E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E026ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E026F3C(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SafetyLinkSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = *v1;
  v7 = *(v1 + 1);
  v6 = *(v1 + 2);
  v8 = *(v1 + 3);
  sub_24E343AA8();
  v17 = sub_24E343978();
  v18 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  sub_24DF90C4C();

  sub_24E346C08();
  v19 = v5;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F38);
  sub_24E027564();
  sub_24E0275C8();
  v12 = v15;
  sub_24E346698();

  return (*(v2 + 8))(v4, v12);
}

uint64_t sub_24E027258@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F50);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_24E343288();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_24DFECE84();
    v15 = v14;

    if (v15)
    {
      sub_24E343268();

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v9, v10);
        (*(v11 + 16))(v6, v13, v10);
        v17 = sub_24E345708();
        v18 = sub_24E3461E8();
        (*(v11 + 8))(v13, v10);
        v19 = &v6[*(v4 + 36)];
        *v19 = v17;
        v19[8] = v18;
        sub_24E027CD8(v6, a2);
        v16 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v16, 1, v4);
      }

      sub_24DF90BE4(v9);
    }

    v16 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v16, 1, v4);
  }

  type metadata accessor for GameCenterSettings();
  sub_24E027C90(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
  result = sub_24E345828();
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24E027564()
{
  result = qword_27F1DF868;
  if (!qword_27F1DF868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF868);
  }

  return result;
}

unint64_t sub_24E0275C8()
{
  result = qword_27F1E0F40;
  if (!qword_27F1E0F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0F38);
    sub_24E02764C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0F40);
  }

  return result;
}

unint64_t sub_24E02764C()
{
  result = qword_27F1E0F48;
  if (!qword_27F1E0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0F50);
    sub_24E027C90(&qword_27F1E0F58, type metadata accessor for SafariWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0F48);
  }

  return result;
}

uint64_t type metadata accessor for SafariWebView()
{
  result = qword_27F1E0F60;
  if (!qword_27F1E0F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E027774(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0277C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E027854()
{
  result = sub_24E343288();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_24E027908()
{
  v1 = sub_24E343288();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E027C4C();
  (*(v2 + 16))(v4, v0, v1);
  return sub_24E0279E4(v4);
}

id sub_24E0279E4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_24E343228();
  v4 = [v2 initWithURL_];

  v5 = sub_24E343288();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_24E027ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E027C90(&qword_27F1E0F70, type metadata accessor for SafariWebView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E027B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E027C90(&qword_27F1E0F70, type metadata accessor for SafariWebView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E027BF4()
{
  sub_24E027C90(&qword_27F1E0F70, type metadata accessor for SafariWebView);
  sub_24E3460C8();
  __break(1u);
}

unint64_t sub_24E027C4C()
{
  result = qword_27F1E0F78;
  if (!qword_27F1E0F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E0F78);
  }

  return result;
}

uint64_t sub_24E027C90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E027CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E027D48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapGestureRecognizer;
  v4 = *&v0[OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler])
  {
    if (v4)
    {
      return;
    }

    v11[3] = ObjectType;
    v11[0] = v0;
    v5 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v6 = v0;
    v7 = sub_24E2BE570(v11, sel_didTap);
    [v7 setNumberOfTapsRequired_];
    v8 = *&v1[v3];
    *&v1[v3] = v7;
    v10 = v7;

    [v6 addGestureRecognizer_];
    [v6 setUserInteractionEnabled_];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v10 = v4;
    [v0 removeGestureRecognizer_];
    v9 = *&v0[v3];
    *&v0[v3] = 0;

    [v0 setUserInteractionEnabled_];
  }
}

uint64_t sub_24E027E9C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler);
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_24DF88BEC(a1);
  sub_24DE73FA0(v5);
  sub_24E027D48();

  return sub_24DE73FA0(a1);
}

void sub_24E027F10()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler);
  if (v1)
  {

    v1(v2);

    sub_24DE73FA0(v1);
  }
}

id sub_24E027FC0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapGestureRecognizer] = 0;
  v10 = &v4[OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_24E028068()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19TappableArtworkView_tapHandler);

  return sub_24DE73FA0(v1);
}

uint64_t type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView()
{
  result = qword_27F1E0F98;
  if (!qword_27F1E0F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0281A4()
{
  sub_24E028218();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24E028218()
{
  if (!qword_27F1E0FA8)
  {
    sub_24E346158();
    v0 = sub_24E345278();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E0FA8);
    }
  }
}

uint64_t sub_24E02828C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8);
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - v6;
  v7 = sub_24E343178();
  v8 = OUTLINED_FUNCTION_4_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v9 = sub_24E343128();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v24 = [objc_opt_self() linkWithBundleIdentifier_];
  if (!v24 || (v25 = v24, v26 = [v24 flow], v25, sub_24E028F3C(v26), !v27))
  {
  }

  sub_24E343168();
  sub_24E343138();
  v28 = v32;
  sub_24E343268();
  sub_24DF8BD90(v28, v4, &qword_27F1DEFB8);
  sub_24E028E20();
  sub_24E343148();
  sub_24DF90BE4(v28);
  type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();

  sub_24E343168();
  sub_24E343138();
  sub_24E3430A8();
  sub_24E3430B8();
  v29 = *(v11 + 8);
  v29(v14, v9);
  v29(v17, v9);
  sub_24E3430B8();
  v29(v20, v9);
  return (v29)(v23, v9);
}

uint64_t sub_24E02860C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_24E343128();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  sub_24E02828C(v9 - v8);
  v10 = sub_24E3464D8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  sub_24E028A3C(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_24E028AA0(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FB0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FB8);
  result = sub_24E3454F8();
  *v20 = KeyPath;
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

void sub_24E0287CC()
{
  v0 = sub_24E346158();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E028B80();
  v4 = sub_24E347CF8();
  v6 = sub_24E028978(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_24E028C14(&qword_27F1E0148, MEMORY[0x277CDE530], v3);
    MEMORY[0x28223BE20](v8);
    *(&v9 - 2) = v7;
    sub_24E346148();
    (*(v1 + 8))(v3, v0);
    sub_24E3454D8();
  }

  else
  {

    sub_24E3454E8();
  }
}

id sub_24E028978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24E347CB8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() presenterForPrivacySplashWithIdentifier_];

  return v3;
}

id sub_24E0289E8(uint64_t a1, id a2)
{
  [a2 setPresentingViewController_];

  return [a2 present];
}

uint64_t sub_24E028A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E028AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24E028B04()
{
  v0 = type metadata accessor for SettingsPrivacyLinkViews.AttributedTextView();
  OUTLINED_FUNCTION_4_5(v0);

  sub_24E0287CC();
}

unint64_t sub_24E028B80()
{
  result = qword_27F1E0FC0;
  if (!qword_27F1E0FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E0FC0);
  }

  return result;
}

uint64_t sub_24E028C14@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  sub_24DF8BD90(v6, &v21 - v16, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_5_2();
    return (*(v18 + 32))(a3, v17);
  }

  else
  {
    sub_24E348268();
    v20 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v14, v8);
  }
}

unint64_t sub_24E028E20()
{
  result = qword_27F1E0FC8;
  if (!qword_27F1E0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0FC8);
  }

  return result;
}

uint64_t sub_24E028F3C(void *a1)
{
  v2 = [a1 localizedButtonTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347CF8();

  return v3;
}

unint64_t sub_24E028FAC()
{
  result = qword_27F1E0FD8;
  if (!qword_27F1E0FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0FB0);
    sub_24E029038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0FD8);
  }

  return result;
}

unint64_t sub_24E029038()
{
  result = qword_27F1E0FE0;
  if (!qword_27F1E0FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E0FE0);
  }

  return result;
}

void sub_24E02909C()
{
  v1 = [v0 effectiveUserInterfaceLayoutDirection] == 1;
  v2 = [v0 layer];
  [v2 setFlipsHorizontalAxis_];
}

id sub_24E029118()
{
  OUTLINED_FUNCTION_29();
  v10 = type metadata accessor for ActivityFeedAddFriendsCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v10);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 16.0;
  }

  [v4 set:0.0 gkFocusHighlightInsets:{0.0, v5, 0.0}];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v6, qword_27F20BF00);
  v7 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  v8 = sub_24E336558();

  [v4 set:v8 gkFocusHighlightCornerRadius:?];
  return v4;
}

double sub_24E0292CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  OUTLINED_FUNCTION_3_18(a2, &v18 - v14);
  OUTLINED_FUNCTION_3_18(a3, &v15[*(v6 + 56)]);
  sub_24DFC5400(v15, v13);
  v16 = *(v6 + 56);
  OUTLINED_FUNCTION_3_18(v13, v9);
  OUTLINED_FUNCTION_3_18(&v13[v16], v9 + *(v6 + 56));
  sub_24DF8C95C(v9, &unk_27F1E1CA0);
  sub_24DF8C95C(&v13[v16], &unk_27F1E1CB0);
  sub_24DF8C95C(v13, &unk_27F1E1CB0);
  return 0.0;
}

double sub_24E029434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_24DF9DEAC(a2, &v19 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  v17 = sub_24E17B0B4(a1, v12, v12 + v16, a4);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  sub_24DF8C95C(v12, &unk_27F1E1CB0);
  return v17;
}

uint64_t sub_24E0295D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_24DF9DEAC(a2, v18 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  sub_24E17B1EC(v12, v12 + v16, a5);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  return sub_24DF8C95C(v12, &unk_27F1E1CB0);
}

id sub_24E02974C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedAddFriendsCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedAddFriendsCollectionViewCell()
{
  result = qword_27F1E0FF8;
  if (!qword_27F1E0FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E029808(uint64_t a1)
{
  result = sub_24E029948(&qword_27F1E1008, type metadata accessor for ActivityFeedAddFriendsCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E0298F0(uint64_t a1)
{
  result = sub_24E029948(&qword_27F1E1018, type metadata accessor for ActivityFeedAddFriendsCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E029948(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24E029998()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753D0]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v0 timingParameters:0.15];

  return v1;
}

double sub_24E029A24()
{
  v1 = sub_24E348BC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = vaddq_f64(*(v0 + 8), *(v0 + 8));
  v6 = v5.f64[1] + *(v0 + 24) + *(v0 + 24) + v5.f64[0];
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_24E3440E8();
  v8 = v6 + v7;
  if (*(v0 + 32) > v8)
  {
    v9 = *(v0 + 32);
  }

  else
  {
    v9 = v8;
  }

  v11[1] = *(v0 + 40);
  sub_24E343F98();
  sub_24E344198();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_24E029BB4(double a1, double a2, double a3, double a4)
{
  Height = CGRectGetHeight(*&a1);
  v6 = *(v4 + 3);
  v15 = Height - (v6 + v6);
  v18.origin.x = OUTLINED_FUNCTION_28();
  v7 = v6 + CGRectGetMinX(v18);
  v19.origin.x = OUTLINED_FUNCTION_28();
  v8 = v6 + CGRectGetMinY(v19);
  v9 = *(v4 + 2);
  __swift_project_boxed_opaque_existential_1(v4 + 6, *(v4 + 9));
  OUTLINED_FUNCTION_28();
  v14 = v8;
  sub_24E348518();
  sub_24E344088();
  v20.origin.x = OUTLINED_FUNCTION_28();
  v10 = CGRectGetMaxX(v20) - (v6 + v9);
  v21.origin.x = OUTLINED_FUNCTION_28();
  v11 = v6 + CGRectGetMinY(v21);
  __swift_project_boxed_opaque_existential_1(v4 + 11, *(v4 + 14));
  OUTLINED_FUNCTION_28();
  sub_24E348518();
  sub_24E344088();
  v12 = *v4;
  if (v12 == 1)
  {
    v22.origin.x = v7;
    v22.origin.y = v14;
    v22.size.width = v9;
    v22.size.height = v15;
    CGRectGetMaxX(v22);
    v23.origin.x = OUTLINED_FUNCTION_28();
    CGRectGetMinY(v23);
    v24.origin.x = OUTLINED_FUNCTION_28();
    CGRectGetWidth(v24);
    v25.origin.x = v7;
    v25.origin.y = v14;
    v25.size.width = v9;
    v25.size.height = v15;
    CGRectGetWidth(v25);
    v26.origin.y = v11;
    v26.origin.x = v10;
    v26.size.width = v9;
    v26.size.height = v15;
    CGRectGetWidth(v26);
    v27.origin.x = OUTLINED_FUNCTION_28();
    CGRectGetHeight(v27);
  }

  sub_24DF8968C((v4 + 128), v16);
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    OUTLINED_FUNCTION_1_45();
    sub_24E344088();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24DF896FC(v16);
  }

  v28.origin.x = OUTLINED_FUNCTION_1_45();
  CGRectGetWidth(v28);
  if ((v12 & 1) == 0)
  {
    v29.origin.y = v14;
    v29.origin.x = v7;
    v29.size.width = v9;
    v29.size.height = v15;
    CGRectGetWidth(v29);
    v30.origin.y = v11;
    v30.origin.x = v10;
    v30.size.width = v9;
    v30.size.height = v15;
    CGRectGetWidth(v30);
  }

  v31.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetHeight(v31);
  __swift_project_boxed_opaque_existential_1(v4 + 21, *(v4 + 24));
  sub_24E3440E8();
  v32.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMidX(v32);
  v33.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMidY(v33);
  __swift_project_boxed_opaque_existential_1(v4 + 21, *(v4 + 24));
  OUTLINED_FUNCTION_28();
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_28();
  return sub_24E343FD8();
}

uint64_t sub_24E029EFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_24E029F3C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_24E029FF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E02A040(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DividerView(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24E02A1AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E346E88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1020);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = *v1;
  sub_24E346CA8();
  v12 = sub_24E345F08();
  v13 = sub_24E3461E8();
  v14 = &v10[*(v8 + 44)];
  *v14 = v12;
  v14[4] = v13;
  v33 = a1;
  v32 = v3;
  if (v11)
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v15 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v15 = &qword_27F20ABB8;
  }

  memcpy(__dst, v15, sizeof(__dst));
  v16 = *&__dst[112];
  v17 = __dst[105];
  v18 = __dst[104];
  v31 = *&__dst[88];
  v30 = *&__dst[72];
  v29 = *&__dst[56];
  v28 = *&__dst[16];
  v27 = *__dst;
  v20 = *&__dst[32];
  v19 = *&__dst[40];
  v21 = __dst[48];
  sub_24E002674(__dst, v34);
  *__dst = v27;
  *&__dst[16] = v28;
  *&__dst[32] = v20;
  *&__dst[40] = v19;
  __dst[48] = v21;
  *&__dst[56] = v29;
  *&__dst[72] = v30;
  *&__dst[88] = v31;
  __dst[104] = v18;
  __dst[105] = v17;
  *&__dst[112] = v16;
  sub_24E0026D0(__dst);
  v22 = MEMORY[0x277CE13B8];
  if (!v18)
  {
    v22 = MEMORY[0x277CE13D8];
  }

  v23 = v32;
  (*(v4 + 104))(v6, *v22, v32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1028);
  v25 = v33;
  (*(v4 + 32))(v33 + *(v24 + 36), v6, v23);
  return sub_24E02A4C0(v10, v25);
}

uint64_t sub_24E02A4C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E02A530()
{
  result = qword_27F1E1030;
  if (!qword_27F1E1030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1028);
    sub_24E02A5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1030);
  }

  return result;
}

unint64_t sub_24E02A5BC()
{
  result = qword_27F1E1038;
  if (!qword_27F1E1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1020);
    sub_24E02A648();
    sub_24E02A6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1038);
  }

  return result;
}

unint64_t sub_24E02A648()
{
  result = qword_27F1E1040;
  if (!qword_27F1E1040)
  {
    sub_24E346CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1040);
  }

  return result;
}

unint64_t sub_24E02A6A0()
{
  result = qword_27F1E1048;
  if (!qword_27F1E1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1048);
  }

  return result;
}

uint64_t sub_24E02A704()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);

  if ((v9 & 1) == 0)
  {
    sub_24E348268();
    v10 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v8;
}

uint64_t sub_24E02A830@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  type metadata accessor for SettingsView();
  OUTLINED_FUNCTION_33_4();
  MEMORY[0x28223BE20](v1);
  sub_24E345E58();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v3 = sub_24E345268();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E12B8);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_24E345F48();
  sub_24E345258();
  OUTLINED_FUNCTION_4_32();
  sub_24E032D2C();
  swift_allocObject();
  OUTLINED_FUNCTION_3_36();
  sub_24E032CD4();
  sub_24E032EB0(&qword_27F1E12C0, MEMORY[0x277CDD730]);
  sub_24E032EB0(&qword_27F1E12C8, MEMORY[0x277CDD708]);
  sub_24E346CF8();

  (*(v5 + 8))(v9, v3);
  sub_24DFB4C28(&qword_27F1E12D0, &qword_27F1E12B8);
  v15 = v18;
  sub_24E346CE8();
  return (*(v11 + 8))(v14, v15);
}

uint64_t sub_24E02AB88(uint64_t a1, void *a2)
{
  if (*a2)
  {

    sub_24DFECA80();
  }

  else
  {
    type metadata accessor for GameCenterSettings();
    sub_24E032EB0(&qword_27F1E01A0, type metadata accessor for GameCenterSettings);
    result = sub_24E345828();
    __break(1u);
  }

  return result;
}

uint64_t SettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v247 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1058);
  v248 = swift_allocBox();
  v5 = v4;
  sub_24E02A704();
  OUTLINED_FUNCTION_27_5();
  v6 = type metadata accessor for GameCenterSettingsState();
  OUTLINED_FUNCTION_9_18();
  v244 = v6;
  v243 = sub_24E032EB0(v7, v8);
  sub_24E346D68();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1060);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = v205 - v11;
  v13 = [objc_opt_self() local];
  v14 = sub_24E245A0C();

  v246 = v12;
  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10A8);
    v245 = v205;
    v227 = v15;
    OUTLINED_FUNCTION_0_14();
    v226 = v16;
    MEMORY[0x28223BE20](v17);
    v225 = v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v224 = v205;
    MEMORY[0x28223BE20](v19);
    OUTLINED_FUNCTION_23(v205 - v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1E8);
    v222 = v205;
    v240 = v21;
    OUTLINED_FUNCTION_0_14();
    v221 = v22;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_23(v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10B8);
    OUTLINED_FUNCTION_19_9(v25, v273);
    v220 = v26;
    OUTLINED_FUNCTION_0_14();
    v219 = v27;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v28);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_23(v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10C8);
    OUTLINED_FUNCTION_19_9(v30, &v269);
    v218 = v31;
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v32);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_23(v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1110);
    OUTLINED_FUNCTION_19_9(v34, &v266);
    v242 = v35;
    OUTLINED_FUNCTION_0_14();
    v241 = v36;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v37);
    v230 = v2;
    v39 = v205 - v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1118);
    v234 = v3;
    v41 = v40;
    v236 = v5;
    OUTLINED_FUNCTION_0_14();
    v43 = v42;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v44);
    v46 = v205 - v45;
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_29_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1120);
    sub_24DFB4C28(&qword_27F1E1128, &qword_27F1E1120);
    sub_24E3463B8();
    OUTLINED_FUNCTION_12_14();
    v49 = sub_24DFB4C28(v48, &qword_27F1E1118);
    sub_24E3464F8();
    (*(v43 + 8))(v46, v41);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1090);
    OUTLINED_FUNCTION_0_14();
    v52 = v51;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v53);
    v55 = v205 - v54;
    v56 = v230;
    sub_24E02A830(v205 - v54);
    sub_24E3452A8();
    v267 = v41;
    v268 = v49;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_10_18();
    sub_24DFB4C28(v57, &qword_27F1E1090);
    v58 = v233;
    v59 = v232;
    sub_24E346898();
    (*(v52 + 8))(v55, v50);
    (v241[1])(v39, v59);
    OUTLINED_FUNCTION_8_20();
    v60 = *(type metadata accessor for SettingsView() + 52);
    OUTLINED_FUNCTION_33_4();
    v62 = v61;
    MEMORY[0x28223BE20](v63);
    v65 = v64;
    v241 = v64;
    v229 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
    OUTLINED_FUNCTION_4_32();
    v228 = v66;
    sub_24E032D2C();
    v232 = *(v62 + 80);
    v206 = v65 + ((v232 + 16) & ~v232);
    v231 = (v232 + 16) & ~v232;
    swift_allocObject();
    OUTLINED_FUNCTION_3_36();
    v242 = v67;
    sub_24E032CD4();
    v68 = v235;
    v69 = *(v235 + 52);
    sub_24E348418();
    OUTLINED_FUNCTION_5_2();
    v71 = (*(v70 + 16))(&v58[v69], v56 + v60);
    v217 = v205;
    v72 = &v58[*(v68 + 56)];
    *v72 = sub_24E02F524;
    v72[1] = v62;
    v73 = v234;
    v74 = *(v234 - 8);
    v214 = v74[8];
    MEMORY[0x28223BE20](v71);
    v213 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
    v76 = v205 - v213;
    v78 = MEMORY[0x28223BE20](v77);
    v80 = v205 - v79;
    v81 = v74[2];
    v215 = v74 + 2;
    v216 = v81;
    v81(v205 - v79, v236, v73, v78);
    sub_24E346D58();
    v82 = v74[1];
    v82(v80, v73);
    v210 = v82;
    v211 = v74 + 1;
    swift_getKeyPath();
    sub_24E346D78();

    v82(v76, v73);
    v83 = v267;
    v84 = v268;
    LOWORD(v80) = v269;
    LOBYTE(v52) = BYTE2(v269);
    v85 = v270;
    v86 = v271;
    swift_getKeyPath();
    v261 = v83;
    v262 = v84;
    v263 = v80;
    v264 = v52;
    v265 = v85;
    v266 = v86;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1138);
    sub_24E346C78();

    v205[1] = v205;
    v258 = v252;
    v259 = v253;
    v260 = v254;
    MEMORY[0x28223BE20](v87);
    sub_24E032D2C();
    v88 = v206;
    v205[0] = swift_allocObject();
    v89 = sub_24E032CD4();
    MEMORY[0x28223BE20](v89);
    sub_24E032D2C();
    v90 = v88;
    swift_allocObject();
    sub_24E032CD4();
    OUTLINED_FUNCTION_0_32();
    v207 = sub_24DFB4C28(v91, &qword_27F1E10C8);
    v208 = sub_24E02F368();
    v209 = sub_24E02F3BC();
    v92 = v235;
    v93 = v233;
    sub_24E346878();

    sub_24DF8BFF4(v93, &qword_27F1E10C8);
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_8_20();
    v233 = v205;
    MEMORY[0x28223BE20](v94);
    v95 = v205 - v213;
    v97 = MEMORY[0x28223BE20](v96);
    v99 = v205 - v98;
    v100 = v234;
    v216(v205 - v98, v236, v234, v97);
    sub_24E346D58();
    v101 = v210;
    v210(v99, v100);
    swift_getKeyPath();
    sub_24E346D78();

    v101(v95, v100);
    v102 = v261;
    v103 = v262;
    LOWORD(v99) = v263;
    LOBYTE(v101) = v264;
    v104 = v265;
    v105 = v266;
    swift_getKeyPath();
    v252 = v102;
    v253 = v103;
    v254 = v99;
    v255 = v101;
    v256 = v104;
    v257 = v105;
    sub_24E346C78();

    v249 = v258;
    v250 = v259;
    v251 = v260;
    MEMORY[0x28223BE20](v106);
    sub_24E032D2C();
    v107 = swift_allocObject();
    sub_24E032CD4();
    *(v107 + ((v90 + 7) & 0xFFFFFFFFFFFFFFF8)) = v248;

    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10C0);
    v267 = v92;
    v268 = &type metadata for GameCenterSettingsDestination;
    v269 = &type metadata for SettingsScreen;
    v270 = v207;
    v271 = v208;
    v272 = v209;
    v109 = OUTLINED_FUNCTION_7_21();
    v110 = sub_24E02F410();
    v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10F0);
    v112 = sub_24E02F464();
    v267 = v111;
    v268 = v244;
    v269 = v112;
    v270 = v243;
    v235 = OUTLINED_FUNCTION_7_21();
    v244 = v108;
    v243 = v109;
    v236 = v110;
    sub_24E3467A8();

    v113 = OUTLINED_FUNCTION_31_3();
    v114(v113);
    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_8_20();
    v237 = v205;
    MEMORY[0x28223BE20](v115);
    sub_24E032D2C();
    sub_24E348068();
    v116 = sub_24E348058();
    v117 = swift_allocObject();
    v118 = MEMORY[0x277D85700];
    *(v117 + 16) = v116;
    *(v117 + 24) = v118;
    sub_24E032CD4();
    v119 = sub_24E348098();
    OUTLINED_FUNCTION_0_14();
    v121 = v120;
    v123 = *(v122 + 64);
    MEMORY[0x28223BE20](v124);
    v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
    v126 = v205 - v125;
    sub_24E348078();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v127 = sub_24E345608();
      OUTLINED_FUNCTION_19_9(v127, &v274);
      v242 = v128;
      OUTLINED_FUNCTION_0_14();
      v234 = v129;
      MEMORY[0x28223BE20](v130);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23(v132 - v131);
      v267 = 0;
      v268 = 0xE000000000000000;
      sub_24E348998();

      v267 = 0xD00000000000002CLL;
      v268 = 0x800000024E3A2680;
      v261 = 131;
      v133 = sub_24E348BA8();
      MEMORY[0x25303E950](v133);

      v135 = MEMORY[0x28223BE20](v134);
      (*(v121 + 16))(v205 - v125, v205 - v125, v119, v135);
      v136 = v233;
      sub_24E3455F8();
      (*(v121 + 8))(v126, v119);
      v137 = v223;
      v138 = OUTLINED_FUNCTION_26_7();
      v139(v138);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1F0);
      (*(v234 + 32))(v137 + *(v140 + 36), v136, v241);
      OUTLINED_FUNCTION_8_20();
    }

    else
    {
      v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1F8);
      v137 = v223;
      v192 = (v223 + *(v191 + 36));
      v193 = sub_24E345528();
      (*(v121 + 32))(&v192[*(v193 + 20)], v205 - v125, v119);
      *v192 = &unk_24E370320;
      *(v192 + 1) = v117;
      v194 = OUTLINED_FUNCTION_26_7();
      v195(v194);
    }

    OUTLINED_FUNCTION_8_20();
    OUTLINED_FUNCTION_8_20();
    v196 = v226;
    v197 = v225;
    v198 = v227;
    (*(v226 + 32))(v225, v137, v227);
    OUTLINED_FUNCTION_8_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10A0);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_24_0();
    v200 = MEMORY[0x28223BE20](v199);
    (*(v196 + 16))(v205 - v201, v197, v198, v200);
    OUTLINED_FUNCTION_19_1();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1068);
    OUTLINED_FUNCTION_0_32();
    sub_24DFB4C28(v202, &qword_27F1E1068);
    v267 = v239;
    v268 = &type metadata for GameCenterSettingsDestination;
    v269 = v244;
    v270 = v243;
    v271 = v236;
    v272 = v235;
    v203 = OUTLINED_FUNCTION_7_21();
    v267 = v240;
    v268 = v203;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_35_4();
    sub_24E345E38();
    (*(v196 + 8))(v197, v198);
  }

  else
  {
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1068);
    OUTLINED_FUNCTION_19_9(v141, &v275);
    v245 = v142;
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v143);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_23(v144);
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1070);
    OUTLINED_FUNCTION_19_9(v145, &v272);
    v241 = v146;
    OUTLINED_FUNCTION_0_14();
    v240 = v147;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v148);
    v237 = v205 - v149;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1078);
    OUTLINED_FUNCTION_0_14();
    v152 = v151;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v153);
    v155 = v205 - v154;
    MEMORY[0x28223BE20](v156);
    OUTLINED_FUNCTION_29_6();
    type metadata accessor for SignedOutView();
    sub_24E032EB0(&qword_27F1E1080, type metadata accessor for SignedOutView);
    sub_24E3463B8();
    OUTLINED_FUNCTION_12_14();
    v158 = sub_24DFB4C28(v157, &qword_27F1E1078);
    sub_24E3464F8();
    (*(v152 + 8))(v155, v150);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1090);
    OUTLINED_FUNCTION_0_14();
    v161 = v160;
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v162);
    v164 = v205 - v163;
    sub_24E02A830(v205 - v163);
    sub_24E3452A8();
    v267 = v150;
    v268 = v158;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_10_18();
    sub_24DFB4C28(v165, &qword_27F1E1090);
    v166 = v239;
    sub_24E346898();
    (*(v161 + 8))(v164, v159);
    v167 = OUTLINED_FUNCTION_31_3();
    v168(v167);
    OUTLINED_FUNCTION_8_20();
    v169 = *(type metadata accessor for SettingsView() + 52);
    OUTLINED_FUNCTION_33_4();
    v171 = v170;
    MEMORY[0x28223BE20](v172);
    OUTLINED_FUNCTION_4_32();
    sub_24E032D2C();
    swift_allocObject();
    OUTLINED_FUNCTION_3_36();
    sub_24E032CD4();
    v173 = v242;
    v174 = *(v242 + 52);
    sub_24E348418();
    OUTLINED_FUNCTION_5_2();
    (*(v175 + 16))(v166 + v174, v2 + v169);
    v176 = (v166 + *(v173 + 56));
    *v176 = sub_24E02F350;
    v176[1] = v171;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10A0);
    v241 = v205;
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x28223BE20](v177);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E10A8);
    v238 = sub_24DFB4C28(&qword_27F1E10B0, &qword_27F1E1068);
    v178 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DE1E8);
    v179 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10B8);
    v180 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10C0);
    v181 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10C8);
    v182 = sub_24DFB4C28(&qword_27F1E10D0, &qword_27F1E10C8);
    v183 = sub_24E02F368();
    v184 = sub_24E02F3BC();
    v267 = v181;
    v268 = &type metadata for GameCenterSettingsDestination;
    v269 = &type metadata for SettingsScreen;
    v270 = v182;
    v271 = v183;
    v272 = v184;
    v185 = OUTLINED_FUNCTION_7_21();
    v186 = sub_24E02F410();
    v187 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E10F0);
    v188 = sub_24E02F464();
    v267 = v187;
    v268 = v244;
    v269 = v188;
    v270 = v243;
    v189 = OUTLINED_FUNCTION_7_21();
    v267 = v179;
    v268 = &type metadata for GameCenterSettingsDestination;
    v269 = v180;
    v270 = v185;
    v271 = v186;
    v272 = v189;
    v190 = OUTLINED_FUNCTION_7_21();
    v267 = v178;
    v268 = v190;
    OUTLINED_FUNCTION_7_21();
    OUTLINED_FUNCTION_35_4();
    sub_24E345E38();
    sub_24DF8BFF4(v166, &qword_27F1E1068);
    OUTLINED_FUNCTION_8_20();
  }

  sub_24DE5C568();
}