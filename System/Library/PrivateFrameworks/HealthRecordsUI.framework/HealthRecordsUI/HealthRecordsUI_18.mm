uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D11EA370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static OnboardingSuggestedActionType.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D11EA408()
{
  if (*v0)
  {
    return 1935827308;
  }

  else
  {
    return 0x6C6172656E6567;
  }
}

uint64_t sub_1D11EA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1935827308 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D11EA518(uint64_t a1)
{
  v2 = sub_1D11EAB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D11EA554(uint64_t a1)
{
  v2 = sub_1D11EAB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D11EA5B4(uint64_t a1)
{
  v2 = sub_1D11EAAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D11EA5F0(uint64_t a1)
{
  v2 = sub_1D11EAAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D11EA62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69446E4965646968 && a2 == 0xEE007265766F6373)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D139162C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D11EA6BC(uint64_t a1)
{
  v2 = sub_1D11EAA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D11EA6F8(uint64_t a1)
{
  v2 = sub_1D11EAA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnboardingSuggestedActionType.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D11EB0F8(0, &qword_1EE0694E8, sub_1D11EAA9C, &type metadata for OnboardingSuggestedActionType.LabsCodingKeys, MEMORY[0x1E69E6F58]);
  v21 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - v5;
  sub_1D11EB0F8(0, &qword_1EE0694E0, sub_1D11EAAF0, &type metadata for OnboardingSuggestedActionType.GeneralCodingKeys, v3);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1D11EB0F8(0, &qword_1EE0694F0, sub_1D11EAB44, &type metadata for OnboardingSuggestedActionType.CodingKeys, v3);
  v10 = v9;
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  LODWORD(v3) = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11EAB44();
  sub_1D139181C();
  if ((v3 & 0x80000000) != 0)
  {
    v14 = v19;
    v26 = 1;
    sub_1D11EAA9C();
    v15 = v20;
    sub_1D139152C();
    v16 = v21;
    sub_1D139156C();
    (*(v14 + 8))(v15, v16);
  }

  else
  {
    v25 = 0;
    sub_1D11EAAF0();
    sub_1D139152C();
    v13 = v23;
    sub_1D139156C();
    (*(v22 + 8))(v8, v13);
  }

  return (*(v24 + 8))(v12, v10);
}

unint64_t sub_1D11EAA9C()
{
  result = qword_1EE069C48;
  if (!qword_1EE069C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C48);
  }

  return result;
}

unint64_t sub_1D11EAAF0()
{
  result = qword_1EE069C30;
  if (!qword_1EE069C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C30);
  }

  return result;
}

unint64_t sub_1D11EAB44()
{
  result = qword_1EE069C60;
  if (!qword_1EE069C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C60);
  }

  return result;
}

uint64_t OnboardingSuggestedActionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D11EB0F8(0, &qword_1EC60D250, sub_1D11EAA9C, &type metadata for OnboardingSuggestedActionType.LabsCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v6;
  sub_1D11EB0F8(0, &qword_1EC60D258, sub_1D11EAAF0, &type metadata for OnboardingSuggestedActionType.GeneralCodingKeys, v3);
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  sub_1D11EB0F8(0, &qword_1EC60D260, sub_1D11EAB44, &type metadata for OnboardingSuggestedActionType.CodingKeys, v3);
  v12 = v11;
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11EAB44();
  v15 = v42;
  sub_1D13917FC();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v8;
  v18 = v39;
  v17 = v40;
  v42 = a1;
  v19 = sub_1D139150C();
  if (*(v19 + 16) != 1)
  {
    v23 = sub_1D139126C();
    swift_allocError();
    v24 = v12;
    v26 = v25;
    sub_1D115427C();
    *v26 = &type metadata for OnboardingSuggestedActionType;
    sub_1D139149C();
    sub_1D139124C();
    (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v41 + 8))(v14, v24);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  v20 = v14;
  if (*(v19 + 32))
  {
    v44 = 1;
    sub_1D11EAA9C();
    v21 = v18;
    v22 = v20;
    sub_1D139148C();
    v29 = v37;
    v30 = sub_1D13914DC();
    v31 = v21;
    v32 = v41;
    (*(v38 + 8))(v31, v29);
    (*(v32 + 8))(v22, v12);
    swift_unknownObjectRelease();
    v34 = v30 & 1 | 0x80;
  }

  else
  {
    v43 = 0;
    sub_1D11EAAF0();
    sub_1D139148C();
    v33 = sub_1D13914DC();
    (*(v36 + 8))(v10, v16);
    (*(v41 + 8))(v14, v12);
    swift_unknownObjectRelease();
    v34 = v33 & 1;
  }

  *v17 = v34;
  v27 = v42;
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

void sub_1D11EB0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D11EB160()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D11EB1C4(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t OnboardingSuggestedActionType.suggestedActionTitle.getter()
{
  if ((*v0 & 0x80000000) == 0)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t OnboardingSuggestedActionType.suggestedActionBody.getter()
{
  if ((*v0 & 0x80000000) == 0)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

UIImage_optional __swiftcall OnboardingSuggestedActionType.image(for:)(UITraitCollection a1)
{
  if ((*v1 & 0x80000000) == 0)
  {
    if (qword_1EE06A528 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EE06A528 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_1EE06B6C8;
  v4 = sub_1D139012C();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3 compatibleWithTraitCollection:a1.super.isa];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

uint64_t OnboardingSuggestedActionType.imageRepresentation.getter()
{
  if (*v0 < 0)
  {
    v3 = [objc_opt_self() systemFontOfSize_];
    v4 = objc_opt_self();
    v5 = [v4 configurationWithFont_];

    v6 = [v4 hk_prefersMultiColorConfiguration];
    v7 = [v5 configurationByApplyingConfiguration_];

    return MEMORY[0x1EEE0D8D8](0x6562757474736574, 0xEA0000000000322ELL, v7);
  }

  else
  {
    if (qword_1EE06A528 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE06B6C8;

    return sub_1D138DC0C();
  }
}

uint64_t OnboardingSuggestedActionType.linkTitle.getter()
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t OnboardingSuggestedActionType.actionTitle.getter()
{
  if ((*v0 & 0x80000000) == 0)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t OnboardingSuggestedActionType.viewingIdentifier.getter()
{
  type metadata accessor for OnboardingViewIdentifier();

  return swift_storeEnumTagMultiPayload();
}

uint64_t OnboardingSuggestedActionType.featureAutomationIdentifier.getter()
{
  if (*v0 < 0)
  {
    return 0x62614C7055746553;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t PromotionTileViewActionHandlerShim.init(context:)(uint64_t a1)
{
  v2 = sub_1D138E98C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  v6 = sub_1D138EB9C();
  (*(v3 + 8))(a1, v2);
  return v6;
}

id PromotionTileViewActionHandlerShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionTileViewActionHandlerShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11EBAE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + qword_1EE0698C0);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = *a1;
  v5[1] = v3;
  v5[2] = v4;
  sub_1D11ECAF8(v2, v3, v4);

  return sub_1D11ECB0C(v6, v7, v8);
}

uint64_t sub_1D11EBB5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138E98C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + qword_1EE0698C0);
  v9 = *(v1 + qword_1EE0698C0);
  v10 = *(v1 + qword_1EE0698C0 + 8);
  v11 = *(v1 + qword_1EE0698C0 + 16);
  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (v11 == 2)
  {
    v20 = *(v1 + qword_1EE0698C0);
    v15 = v5;
    sub_1D138EB8C();
    sub_1D11ECA50();
    sub_1D11ECAA4();
    sub_1D138E97C();
    (*(v4 + 8))(v7, v15);
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v16 = *v8;
    v17 = v8[1];
    v18 = v8[2];
    *v8 = v21;
    v8[1] = v13;
    v8[2] = v14;
    sub_1D11ECAF8(v12, v13, v14);
    sub_1D11ECB0C(v16, v17, v18);
    v9 = v20;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  return sub_1D11ECB30(v9, v10, v11);
}

uint64_t sub_1D11EBCE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1 + qword_1EE0698C0;
  v5 = *(v1 + qword_1EE0698C0);
  v4 = *(v1 + qword_1EE0698C0 + 8);
  v6 = *(v1 + qword_1EE0698C0 + 16);
  *v3 = *a1;
  *(v3 + 16) = v2;
  return sub_1D11ECB0C(v5, v4, v6);
}

uint64_t (*sub_1D11EBD14(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  sub_1D11EBB5C(a1);
  return sub_1D11EBD5C;
}

uint64_t sub_1D11EBD5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (a1[3] + qword_1EE0698C0);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = *a1;
  v5[1] = v3;
  v5[2] = v4;
  if (a2)
  {
    sub_1D11ECAF8(v2, v3, v4);
    sub_1D11ECB0C(v6, v7, v8);

    return sub_1D11ECB1C(v2, v3, v4);
  }

  else
  {

    return sub_1D11ECB0C(v6, v7, v8);
  }
}

void sub_1D11EBE1C()
{
  v0 = sub_1D138E98C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D139012C();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v5)
  {
    sub_1D138EB8C();
    v6 = sub_1D138E96C();
    (*(v1 + 8))(v3, v0);
    [v5 setPresentingViewController_];

    [v5 present];
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D1223978(0, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D11EBFB8(uint64_t a1)
{
  v40 = a1;
  v1 = sub_1D138DEBC();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138E98C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE06BB58;
  sub_1D138EB8C();
  sub_1D138E95C();
  v35 = *(v4 + 8);
  v35(v8, v3);
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v44);
  v10 = sub_1D138E93C();
  v33 = &v33;
  v47 = *(v9 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v10);
  v34 = v3;
  *(&v33 - 2) = v11;
  *(&v33 - 1) = v9;
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D11ECC14(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v12 = v48;
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  sub_1D138EB8C();
  sub_1D138E95C();
  v14 = v34;
  v13 = v35;
  v35(v8, v34);
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v44);
  v15 = v37;
  sub_1D138E94C();
  v16 = Presentation.funnelContext()();
  (*(v38 + 8))(v15, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v17 = v36;
  sub_1D138EB8C();
  v18 = sub_1D138E96C();
  v13(v17, v14);
  sub_1D11EBB5C(&aBlock);
  v19 = v43;
  if (v43 == 1)
  {
    sub_1D11ECB1C(aBlock, v42, 1);
    v20 = objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController);
    v21 = 0;
  }

  else
  {
    v22 = aBlock;
    v23 = v42;

    sub_1D11ECB1C(v22, v23, v19);
    v20 = objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController);
    if (v19)
    {
      v24 = v20;
      v21 = sub_1D139012C();
      v20 = v24;
    }

    else
    {
      v21 = 0;
    }
  }

  v25 = [v20 initWithContext:v16 onboardingOptions:0 sourceIdentifier:v21 profile:v12 existingAccount:0];

  v26 = [v12 onboardingManager];
  v27 = [v26 getPendingOnboardingGatewayAndClear];

  [v25 setGatewayProxyToTry_];
  v28 = [v12 onboardingManager];
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v25;
  v29[4] = 0;
  v29[5] = 0;
  v45 = sub_1D11ECB40;
  v46 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1D116B84C;
  v44 = &block_descriptor_36;
  v30 = _Block_copy(&aBlock);
  v31 = v18;
  v32 = v25;
  sub_1D102CE24(0);

  [v28 registerInflightOnboardingViewController:v32 completion:v30];
  _Block_release(v30);

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D122101C(v40, v16, 0);
}

uint64_t sub_1D11EC58C()
{
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  return sub_1D1223978(0, 0, 0);
}

uint64_t OnboardingPromotionTileActionHandler.__allocating_init(context:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138E98C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = objc_allocWithZone(v2);
  v12 = qword_1EE0698B8;
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE06AA70;
  *&v11[v12] = qword_1EE06AA70;
  v14 = &v11[qword_1EE0698C0];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 2;
  v15 = *(v5 + 16);
  v15(v10, a1, v4);
  v15(v7, v10, v4);
  v16 = v13;
  v17 = sub_1D138EB9C();
  v18 = *(v5 + 8);
  v18(a1, v4);
  v18(v10, v4);
  return v17;
}

uint64_t OnboardingPromotionTileActionHandler.init(context:)(uint64_t a1)
{
  v3 = sub_1D138E98C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = qword_1EE0698B8;
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE06AA70;
  *(v1 + v10) = qword_1EE06AA70;
  v12 = (v1 + qword_1EE0698C0);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 2;
  v13 = *(v4 + 16);
  v13(v9, a1, v3);
  v13(v6, v9, v3);
  v14 = v11;
  v15 = sub_1D138EB9C();
  v16 = *(v4 + 8);
  v16(a1, v3);
  v16(v9, v3);
  return v15;
}

uint64_t sub_1D11EC964()
{
  v1 = *(v0 + qword_1EE0698C0);
  v2 = *(v0 + qword_1EE0698C0 + 8);
  v3 = *(v0 + qword_1EE0698C0 + 16);

  return sub_1D11ECB0C(v1, v2, v3);
}

id OnboardingPromotionTileActionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11EC9E4(uint64_t a1)
{
  v2 = *(a1 + qword_1EE0698C0);
  v3 = *(a1 + qword_1EE0698C0 + 8);
  v4 = *(a1 + qword_1EE0698C0 + 16);

  return sub_1D11ECB0C(v2, v3, v4);
}

unint64_t sub_1D11ECA50()
{
  result = qword_1EE069EC0;
  if (!qword_1EE069EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069EC0);
  }

  return result;
}

unint64_t sub_1D11ECAA4()
{
  result = qword_1EC60D268;
  if (!qword_1EC60D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D268);
  }

  return result;
}

uint64_t sub_1D11ECAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1D11ECB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return sub_1D11ECB1C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D11ECB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1D11ECB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return sub_1D11ECAF8(a1, a2, a3);
  }

  return a1;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for OnboardingPromotionTileActionHandler()
{
  result = qword_1EE0698A8;
  if (!qword_1EE0698A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11ECC14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for OnboardingSuggestedActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for OnboardingSuggestedActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D11ED12C()
{
  result = qword_1EC60D270;
  if (!qword_1EC60D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D270);
  }

  return result;
}

unint64_t sub_1D11ED184()
{
  result = qword_1EC60D278;
  if (!qword_1EC60D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D278);
  }

  return result;
}

unint64_t sub_1D11ED1DC()
{
  result = qword_1EC60D280;
  if (!qword_1EC60D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D280);
  }

  return result;
}

unint64_t sub_1D11ED234()
{
  result = qword_1EE069C50;
  if (!qword_1EE069C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C50);
  }

  return result;
}

unint64_t sub_1D11ED28C()
{
  result = qword_1EE069C58;
  if (!qword_1EE069C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C58);
  }

  return result;
}

unint64_t sub_1D11ED2E4()
{
  result = qword_1EE069C20;
  if (!qword_1EE069C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C20);
  }

  return result;
}

unint64_t sub_1D11ED33C()
{
  result = qword_1EE069C28;
  if (!qword_1EE069C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C28);
  }

  return result;
}

unint64_t sub_1D11ED394()
{
  result = qword_1EE069C38;
  if (!qword_1EE069C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C38);
  }

  return result;
}

unint64_t sub_1D11ED3EC()
{
  result = qword_1EE069C40;
  if (!qword_1EE069C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069C40);
  }

  return result;
}

id sub_1D11ED478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignedClinicalDataGroupContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BloodPressureCurrentValueViewDataSource.__allocating_init(dateCache:healthStore:selectedRangeFormatter:)(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(v3) initWithDateCache:a1 healthStore:a2 selectedRangeFormatter:a3];

  return v7;
}

id BloodPressureCurrentValueViewDataSource.init(dateCache:healthStore:selectedRangeFormatter:)(void *a1, void *a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDateCache_healthStore_selectedRangeFormatter_, a1, a2, a3);

  return v7;
}

id BloodPressureCurrentValueViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloodPressureCurrentValueViewDataSource.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BloodPressureCurrentValueViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D11ED750(void *a1, void *a2, uint64_t a3)
{
  v62 = a3;
  v66 = a2;
  v64 = sub_1D138D57C();
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v57 - v10;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE06BB10;
  v11 = *algn_1EE06BB18;
  v13 = qword_1EE06BB20;
  v14 = sub_1D138D1CC();
  v16 = v15;
  v59 = v13;
  v60 = v11;
  v61 = v12;
  v17 = sub_1D138D1CC();
  v19 = v18;
  if (a1)
  {
    v20 = v17;
    v63 = a1;
    v21 = a1;

    if (v66)
    {
      v22 = v66;
      v23 = [v22 dateForUTC];
      sub_1D138D52C();

      v24 = [v21 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v26 = v25;
      v27 = *(v58 + 8);
      v28 = v5;
      v29 = v64;
      v27(v28, v64);
      v27(v8, v29);
      if (v26 <= COERCE_DOUBLE(1))
      {
        v33 = [v21 displayString];
        v64 = sub_1D139016C();
        v32 = v40;
      }

      else
      {

        v30 = [v21 displayString];
        v64 = sub_1D139016C();
        v32 = v31;

        v33 = [v22 displayString];
        v20 = sub_1D139016C();
        v19 = v34;
      }
    }

    else
    {
      v33 = [v21 displayString];
      v64 = sub_1D139016C();
      v32 = v39;
    }

    v38 = v65;
  }

  else
  {
    v64 = v14;

    if (!v66)
    {

      return 0;
    }

    v63 = 0;
    v35 = v66;
    v36 = [v35 displayString];
    v20 = sub_1D139016C();
    v19 = v37;

    v38 = v65;
    v32 = v16;
  }

  v41 = v20;
  v42 = sub_1D138D67C();
  (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D139E710;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1D1089930();
  *(v43 + 32) = v64;
  *(v43 + 40) = v32;
  *(v43 + 96) = v44;
  *(v43 + 104) = v45;
  *(v43 + 64) = v45;
  *(v43 + 72) = v41;
  *(v43 + 80) = v19;
  v46 = sub_1D138D1CC();
  v48 = v47;
  if (*(v43 + 16))
  {
    v46 = sub_1D139019C();
    v49 = v38;
    v51 = v50;

    sub_1D10CD608(v49);
    v48 = v51;
  }

  else
  {
    sub_1D10CD608(v38);
  }

  v52 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v52 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v53 setDisplayItemType_];
    sub_1D138D1CC();
    v54 = sub_1D139012C();

    [v53 setTitle_];

    v55 = sub_1D139012C();

    [v53 setSubtitle_];

    [v53 setSeparatorStyle_];
    [v53 setSeparatorHidden_];
    [v53 setExtraTopPadding_];

    return v53;
  }

  return 0;
}

id sub_1D11EDE68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a1 == a4 && a2 == a5)
  {

LABEL_5:

LABEL_6:

    return 0;
  }

  v7 = sub_1D139162C();

  if (v7)
  {

    goto LABEL_6;
  }

  v8 = [a3 displayString];
  if (!v8)
  {
    sub_1D139016C();
    v8 = sub_1D139012C();
  }

  v9 = sub_1D139016C();
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setDisplayItemType_];
  v13 = sub_1D139012C();

  [v12 setTitle_];

  [v12 setSubtitle_];
  [v12 setSeparatorStyle_];
  [v12 setSeparatorHidden_];
  [v12 setExtraTopPadding_];

  return v12;
}

void sub_1D11EE050(void *a1)
{
  v1 = a1;
  [v1 displayScale];
  if (v2 > COERCE_DOUBLE(1))
  {
    [v1 displayScale];
  }
}

double UITraitCollection.displayPixel.getter()
{
  [v0 displayScale];
  v2 = v1;
  result = 1.0;
  if (v2 > COERCE_DOUBLE(1))
  {
    [v0 displayScale];
    return 1.0 / v4;
  }

  return result;
}

void sub_1D11EE118(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, unint64_t a4)
{
  v24 = a1;
  v5 = v4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(a4 + 32);
    v7 = ~v10;
    v6 = a4 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a4 + 64);
    v9 = a4;
  }

  v13 = 0;
  v22 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v13;
  v15 = v8;
  v16 = v13;
  if (v8)
  {
LABEL_12:
    v8 = (v15 - 1) & v15;
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(*(v9 + 56) + v17);
    v19 = *(*(v9 + 48) + v17);
    for (i = v18; v19; v16 = v13)
    {
      v23[0] = v19;
      v23[1] = i;
      a2(&v24, v23);

      if (v5)
      {
        break;
      }

      v13 = v16;
      v9 = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (!sub_1D139139C())
      {
        break;
      }

      sub_1D106F934(0, &qword_1EE06A630);
      swift_dynamicCast();
      v19 = v23[0];
      sub_1D106F934(0, &qword_1EE06B6C0);
      swift_dynamicCast();
      i = v23[0];
    }

LABEL_19:
    sub_1D102CC30();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1D11EE370(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v5 = result;
    v7 = *a2;
    v6 = a2[1];
    result = sub_1D129E5D8(a4);
    if (v8)
    {
      v9 = *(*(a3 + 56) + 8 * result);
      v12 = v7;
      MEMORY[0x1EEE9AC00](result);
      v11[2] = &v12;

      v10 = sub_1D10F289C(sub_1D11F28FC, v11, v9);

      if (v10)
      {
        result = [v6 integerValue];
        if (__OFADD__(*v5, result))
        {
          __break(1u);
        }

        else
        {
          *v5 += result;
        }
      }
    }
  }

  return result;
}

uint64_t Dictionary<>.totalCount.getter(uint64_t a1)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v13 = v11;
LABEL_10:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 48);
    v17 = type metadata accessor for BrowseCategory();
    sub_1D11F23A0(v16 + *(*(v17 - 8) + 72) * v15, v5, type metadata accessor for BrowseCategory);
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v5[*(v3 + 48)] = v18;
    result = sub_1D11F21B4(v5);
    v19 = __OFADD__(v12, v18);
    v12 += v18;
    if (v19)
    {
      __break(1u);
LABEL_13:

      return v12;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL Dictionary<>.hasData(for:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D129E5D8(a1);
  return (v4 & 1) != 0 && *(*(a2 + 56) + 8 * v3) > 0;
}

BOOL static CategoryCount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = BrowseCategory.rawValue.getter();
  v6 = v5;
  if (v4 == BrowseCategory.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1D139162C();

    result = 0;
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = type metadata accessor for CategoryCount();
  return *(a1 + *(v10 + 20)) == *(a2 + *(v10 + 20));
}

uint64_t sub_1D11EE7E0()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1D11EE818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D11EE8F0(uint64_t a1)
{
  v2 = sub_1D11F2288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D11EE92C(uint64_t a1)
{
  v2 = sub_1D11F2288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CategoryCount.encode(to:)(void *a1)
{
  sub_1D11F22DC(0, &qword_1EC60D298, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11F2288();
  sub_1D139181C();
  v9[15] = 0;
  type metadata accessor for BrowseCategory();
  sub_1D11F2898(&qword_1EC60D2A8, type metadata accessor for BrowseCategory);
  sub_1D139158C();
  if (!v1)
  {
    type metadata accessor for CategoryCount();
    v9[14] = 1;
    sub_1D139157C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CategoryCount.hash(into:)()
{
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v1 = type metadata accessor for CategoryCount();
  return MEMORY[0x1D38870E0](*(v0 + *(v1 + 20)));
}

uint64_t CategoryCount.hashValue.getter()
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v1 = type metadata accessor for CategoryCount();
  MEMORY[0x1D38870E0](*(v0 + *(v1 + 20)));
  return sub_1D13917CC();
}

uint64_t CategoryCount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11F22DC(0, &qword_1EC60D2B0, MEMORY[0x1E69E6F48]);
  v24 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CategoryCount();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11F2288();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v9;
  v12 = v11;
  v13 = v22;
  v26 = 0;
  sub_1D11F2898(&qword_1EC60D2B8, type metadata accessor for BrowseCategory);
  v15 = v23;
  v14 = v24;
  sub_1D13914FC();
  sub_1D11F2498(v15, v12, type metadata accessor for BrowseCategory);
  v25 = 1;
  v16 = sub_1D13914EC();
  (*(v13 + 8))(v8, v14);
  v17 = v21;
  *(v12 + *(v20 + 20)) = v16;
  sub_1D11F23A0(v12, v17, type metadata accessor for CategoryCount);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D11F2340(v12, type metadata accessor for CategoryCount);
}

uint64_t sub_1D11EEF74(uint64_t a1)
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  MEMORY[0x1D38870E0](*(v1 + *(a1 + 20)));
  return sub_1D13917CC();
}

uint64_t sub_1D11EEFEC(uint64_t a1, uint64_t a2)
{
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  return MEMORY[0x1D38870E0](*(v2 + *(a2 + 20)));
}

uint64_t sub_1D11EF04C(uint64_t a1, uint64_t a2)
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  MEMORY[0x1D38870E0](*(v2 + *(a2 + 20)));
  return sub_1D13917CC();
}

BOOL sub_1D11EF0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = BrowseCategory.rawValue.getter();
  v8 = v7;
  if (v6 == BrowseCategory.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D139162C();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
}

void *SortCategoryCounts(_:)(uint64_t a1)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v29 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v28 = type metadata accessor for CategoryCount();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = sub_1D129FC08(*(a1 + 16), 0);
    sub_1D12A2404(v30, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v12, a1);
    v26[4] = v30[1];
    v27 = v15;
    v26[2] = v30[3];
    v26[3] = v30[2];
    v26[1] = v30[4];

    sub_1D102CC30();
    if (v27 == v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = v13;
LABEL_5:
  v30[0] = v14;
  sub_1D11EF648(v30);
  v16 = v30[0];
  v17 = v30[0][2];
  if (v17)
  {
    v30[0] = v13;
    sub_1D10FE114(0, v17, 0);
    v18 = v30[0];
    v19 = *(v3 + 80);
    v27 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v21 = *(v3 + 72);
    do
    {
      sub_1D11F2408(v20, v8);
      sub_1D11F2408(v8, v5);
      v22 = *&v8[*(v29 + 48)];
      sub_1D11F21B4(v8);
      sub_1D11F2498(v5, v11, type metadata accessor for BrowseCategory);
      *&v11[*(v28 + 20)] = v22;
      v30[0] = v18;
      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        sub_1D10FE114(v23 > 1, v24 + 1, 1);
        v18 = v30[0];
      }

      v18[2] = v24 + 1;
      sub_1D11F2498(v11, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, type metadata accessor for CategoryCount);
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

BOOL sub_1D11EF4E8(uint64_t a1, uint64_t a2)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  sub_1D11F2408(a1, v15 - v5);
  v7 = BrowseCategory.localizedTitle.getter();
  v9 = v8;
  sub_1D11F2340(v6, type metadata accessor for BrowseCategory);
  sub_1D11F2408(a2, v6);
  v10 = BrowseCategory.localizedTitle.getter();
  v12 = v11;
  sub_1D11F2340(v6, type metadata accessor for BrowseCategory);
  v15[2] = v7;
  v15[3] = v9;
  v15[0] = v10;
  v15[1] = v12;
  sub_1D10940C8();
  v13 = sub_1D1390FDC();

  return v13 == -1;
}

void sub_1D11EF648(void **a1)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D1245F8C(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1D11EF71C(v6);
  *a1 = v4;
}

void sub_1D11EF71C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
        v6 = sub_1D13904DC();
        *(v6 + 16) = v5;
      }

      sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1D11EFBAC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D11EF8A0(0, v2, 1, a1);
  }
}

void sub_1D11EF8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v42 = -v18;
    v43 = v17;
    v20 = a1 - a3;
    v36 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v48 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v53;
      sub_1D11F2408(v21, v53);
      v24 = v47;
      sub_1D11F2408(v22, v47);
      v25 = v46;
      sub_1D11F2408(v23, v46);
      v26 = BrowseCategory.localizedTitle.getter();
      v28 = v27;
      sub_1D11F2340(v25, type metadata accessor for BrowseCategory);
      sub_1D11F2408(v24, v25);
      v29 = BrowseCategory.localizedTitle.getter();
      v31 = v30;
      sub_1D11F2340(v25, type metadata accessor for BrowseCategory);
      v51 = v26;
      v52 = v28;
      v49 = v29;
      v50 = v31;
      sub_1D10940C8();
      v32 = sub_1D1390FDC();

      sub_1D11F21B4(v24);
      sub_1D11F21B4(v53);
      if (v32 != -1)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_1D11F26FC(v21, v44);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D11F26FC(v33, v22);
      v22 += v42;
      v21 += v42;
      if (__CFADD__(v48++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D11EFBAC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v168 = a1;
  v207 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v207);
  v189 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v190 = &v162 - v10;
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v188 = v11;
  v178 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v162 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v162 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v194 = &v162 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v162 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v162 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v162 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v183 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v34 = *(a3 + 8);
  v173 = a3;
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_163:
    a4 = *v168;
    if (!*v168)
    {
      goto LABEL_207;
    }

    v21 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_199;
    }

    v157 = v21;
LABEL_166:
    v206 = v157;
    v21 = *(v157 + 2);
    if (v21 >= 2)
    {
      do
      {
        v158 = *a3;
        if (!*a3)
        {
          goto LABEL_205;
        }

        v159 = *&v157[16 * v21];
        v160 = v157;
        a3 = *&v157[16 * v21 + 24];
        sub_1D11F112C(v158 + *(v178 + 72) * v159, v158 + *(v178 + 72) * *&v157[16 * v21 + 16], v158 + *(v178 + 72) * a3, a4);
        if (v5)
        {
          break;
        }

        if (a3 < v159)
        {
          goto LABEL_192;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = sub_1D1245848(v160);
        }

        if (v21 - 2 >= *(v160 + 2))
        {
          goto LABEL_193;
        }

        v161 = &v160[16 * v21];
        *v161 = v159;
        *(v161 + 1) = a3;
        v206 = v160;
        sub_1D12457BC(v21 - 1);
        v157 = v206;
        v21 = *(v206 + 2);
        a3 = v173;
      }

      while (v21 > 1);
    }

LABEL_177:

    return;
  }

  v163 = &v162 - v32;
  v164 = v33;
  v35 = 0;
  v181 = "S_SHOW_ALL_CATEGORIES_BUTTON";
  v185 = "alignWithAccountTitle";
  v180 = "CLINICAL_DATA_SHARING_TITLE";
  v179 = "RAGE_PERIOD";
  v36 = MEMORY[0x1E69E7CC0];
  v167 = a4;
  v191 = v21;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    v172 = v36;
    if (v35 + 1 >= v34)
    {
      v34 = v35 + 1;
      goto LABEL_29;
    }

    v39 = *a3;
    v40 = *(v178 + 72);
    v41 = v37;
    v42 = *a3 + v40 * v38;
    v43 = v163;
    sub_1D11F2408(v42, v163);
    v44 = v164;
    sub_1D11F2408(v39 + v40 * v41, v164);
    LODWORD(v177) = sub_1D11EF4E8(v43, v44);
    if (v5)
    {
      sub_1D11F21B4(v44);
      sub_1D11F21B4(v43);
      goto LABEL_177;
    }

    v166 = 0;
    sub_1D11F21B4(v44);
    sub_1D11F21B4(v43);
    v165 = v41;
    v45 = v41 + 2;
    v46 = v39 + v40 * (v41 + 2);
    a3 = v40;
    while (v34 != v45)
    {
      v47 = v183;
      sub_1D11F2408(v46, v183);
      v48 = v184;
      sub_1D11F2408(v42, v184);
      v49 = v176;
      sub_1D11F2408(v47, v176);
      v186 = BrowseCategory.localizedTitle.getter();
      v182 = v50;
      sub_1D11F2340(v49, type metadata accessor for BrowseCategory);
      sub_1D11F2408(v48, v49);
      v51 = a3;
      v52 = BrowseCategory.localizedTitle.getter();
      v54 = v53;
      sub_1D11F2340(v49, type metadata accessor for BrowseCategory);
      *&v201 = v186;
      *(&v201 + 1) = v182;
      *&v196 = v52;
      *(&v196 + 1) = v54;
      a3 = v51;
      sub_1D10940C8();
      v55 = sub_1D1390FDC();

      sub_1D11F21B4(v184);
      sub_1D11F21B4(v183);
      v56 = v55 == -1;
      v21 = v191;
      v57 = !v56;
      ++v45;
      v46 += v51;
      v42 += v51;
      if (((v177 ^ v57) & 1) == 0)
      {
        v34 = v45 - 1;
        break;
      }
    }

    a4 = v167;
    v5 = v166;
    v37 = v165;
    if ((v177 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v34 < v165)
    {
      goto LABEL_198;
    }

    if (v165 < v34)
    {
      v58 = a3 * (v34 - 1);
      v59 = v34 * a3;
      v60 = v34;
      v61 = v34;
      v62 = v165;
      v63 = v165 * a3;
      do
      {
        if (v62 != --v61)
        {
          v64 = *v173;
          if (!*v173)
          {
            goto LABEL_204;
          }

          sub_1D11F26FC(v64 + v63, v171);
          if (v63 < v58 || v64 + v63 >= (v64 + v59))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v63 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1D11F26FC(v171, v64 + v58);
          v21 = v191;
        }

        ++v62;
        v58 -= a3;
        v59 -= a3;
        v63 += a3;
      }

      while (v62 < v61);
      v5 = v166;
      a3 = v173;
      a4 = v167;
      v34 = v60;
      v37 = v165;
    }

    else
    {
LABEL_27:
      a3 = v173;
    }

LABEL_29:
    v65 = *(a3 + 8);
    if (v34 >= v65)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v34, v37))
    {
      goto LABEL_195;
    }

    if (v34 - v37 >= a4)
    {
LABEL_38:
      v35 = v34;
      if (v34 < v37)
      {
        goto LABEL_194;
      }

      goto LABEL_39;
    }

    if (__OFADD__(v37, a4))
    {
      goto LABEL_196;
    }

    if ((v37 + a4) >= v65)
    {
      v66 = *(a3 + 8);
    }

    else
    {
      v66 = v37 + a4;
    }

    if (v66 < v37)
    {
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      v157 = sub_1D1245848(v21);
      goto LABEL_166;
    }

    if (v34 == v66)
    {
      goto LABEL_38;
    }

    v166 = v5;
    v111 = *a3;
    v112 = *(v178 + 72);
    v113 = *a3 + v112 * (v34 - 1);
    v114 = -v112;
    v165 = v37;
    v115 = v37 - v34;
    v186 = v111;
    v169 = v112;
    v116 = v111 + v34 * v112;
    v170 = v66;
LABEL_90:
    v182 = v34;
    v174 = v116;
    v175 = v115;
    v177 = v113;
    v117 = v113;
LABEL_91:
    v118 = v193;
    sub_1D11F2408(v116, v193);
    sub_1D11F2408(v117, v21);
    v119 = v118;
    v120 = v194;
    sub_1D11F2408(v119, v194);
    sub_1D11F23A0(v120, v190, type metadata accessor for BrowseCategory);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          if (qword_1EE06AD08 == -1)
          {
            goto LABEL_114;
          }

          goto LABEL_152;
        }

        goto LABEL_105;
      }

      if (EnumCaseMultiPayload == 4)
      {
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_114;
        }
      }

      else if (qword_1EE06AD00 == -1)
      {
LABEL_114:
        v134 = sub_1D138D1CC();
        v133 = v136;
        goto LABEL_115;
      }

      goto LABEL_152;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_105:
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_114;
        }

        goto LABEL_152;
      }

      if (qword_1EE06AD00 == -1)
      {
        goto LABEL_114;
      }

LABEL_152:
      swift_once();
      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D11F278C(0, &qword_1EE06B060, MEMORY[0x1E69695A8]);
      v131 = v190;
      v132 = &v190[*(v130 + 48)];
      v134 = *v132;
      v133 = v132[1];
      v135 = sub_1D138D5EC();
      (*(*(v135 - 8) + 8))(v131, v135);
    }

    else
    {
      v122 = *v190;
      if (qword_1EE069F78 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v123 = off_1EE069F80;
      if (*(off_1EE069F80 + 2) && (v124 = sub_1D12A2F78(v122), (v125 & 1) != 0))
      {
        v126 = v123[7] + 72 * v124;
        v196 = *v126;
        v128 = *(v126 + 32);
        v127 = *(v126 + 48);
        v129 = *(v126 + 64);
        v197 = *(v126 + 16);
        v198 = v128;
        v200 = v129;
        v199 = v127;
        swift_endAccess();
        v203 = v198;
        v204 = v199;
        v205 = v200;
        v201 = v196;
        v202 = v197;
        sub_1D1082914(&v196, v195);
      }

      else
      {
        swift_endAccess();
        v155 = [objc_opt_self() unknownRecordCategory];
        if (!v155)
        {
          goto LABEL_203;
        }

        sub_1D123E1C4(v155, &v201);
      }

      v21 = v191;
      v198 = v203;
      v199 = v204;
      v200 = v205;
      v196 = v201;
      v197 = v202;
      v133 = *(&v203 + 1);
      v134 = v203;

      sub_1D1080D98(&v196);
    }

LABEL_115:
    sub_1D11F2340(v194, type metadata accessor for BrowseCategory);
    v137 = v192;
    sub_1D11F2408(v21, v192);
    sub_1D11F23A0(v137, v189, type metadata accessor for BrowseCategory);
    v138 = swift_getEnumCaseMultiPayload();
    if (v138 > 3)
    {
      if (v138 > 5)
      {
        if (v138 != 6 && v138 != 7)
        {
          if (qword_1EE06AD08 == -1)
          {
            goto LABEL_138;
          }

          goto LABEL_155;
        }

        goto LABEL_129;
      }

      if (v138 == 4)
      {
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_138;
        }
      }

      else if (qword_1EE06AD00 == -1)
      {
LABEL_138:
        v150 = sub_1D138D1CC();
        v151 = v153;
        goto LABEL_139;
      }

      goto LABEL_155;
    }

    if (v138 > 1)
    {
      if (v138 == 2)
      {
LABEL_129:
        if (qword_1EE06AD00 == -1)
        {
          goto LABEL_138;
        }

        goto LABEL_155;
      }

      if (qword_1EE06AD00 == -1)
      {
        goto LABEL_138;
      }

LABEL_155:
      swift_once();
      goto LABEL_138;
    }

    if (v138)
    {
      sub_1D11F278C(0, &qword_1EE06B060, MEMORY[0x1E69695A8]);
      v148 = v189;
      v149 = &v189[*(v147 + 48)];
      v150 = *v149;
      v151 = v149[1];
      v152 = sub_1D138D5EC();
      (*(*(v152 - 8) + 8))(v148, v152);
    }

    else
    {
      v139 = *v189;
      if (qword_1EE069F78 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v140 = off_1EE069F80;
      if (*(off_1EE069F80 + 2) && (v141 = sub_1D12A2F78(v139), (v142 & 1) != 0))
      {
        v143 = v140[7] + 72 * v141;
        v196 = *v143;
        v145 = *(v143 + 32);
        v144 = *(v143 + 48);
        v146 = *(v143 + 64);
        v197 = *(v143 + 16);
        v198 = v145;
        v200 = v146;
        v199 = v144;
        swift_endAccess();
        v203 = v198;
        v204 = v199;
        v205 = v200;
        v201 = v196;
        v202 = v197;
        sub_1D1082914(&v196, v195);
      }

      else
      {
        swift_endAccess();
        v156 = [objc_opt_self() unknownRecordCategory];
        if (!v156)
        {
          goto LABEL_202;
        }

        sub_1D123E1C4(v156, &v201);
      }

      v198 = v203;
      v199 = v204;
      v200 = v205;
      v196 = v201;
      v197 = v202;
      v151 = *(&v203 + 1);
      v150 = v203;

      sub_1D1080D98(&v196);
    }

LABEL_139:
    sub_1D11F2340(v192, type metadata accessor for BrowseCategory);
    *&v201 = v134;
    *(&v201 + 1) = v133;
    *&v196 = v150;
    *(&v196 + 1) = v151;
    sub_1D10940C8();
    a4 = sub_1D1390FDC();

    v21 = v191;
    sub_1D11F21B4(v191);
    sub_1D11F21B4(v193);
    if (a4 != -1)
    {
      goto LABEL_89;
    }

    if (!v186)
    {
      break;
    }

    a4 = v187;
    sub_1D11F26FC(v116, v187);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D11F26FC(a4, v117);
    v117 += v114;
    v116 += v114;
    if (!__CFADD__(v115++, 1))
    {
      goto LABEL_91;
    }

LABEL_89:
    v34 = v182 + 1;
    v113 = v177 + v169;
    v115 = v175 - 1;
    v116 = v174 + v169;
    v35 = v170;
    if (v182 + 1 != v170)
    {
      goto LABEL_90;
    }

    v5 = v166;
    a3 = v173;
    v37 = v165;
    if (v170 < v165)
    {
      goto LABEL_194;
    }

LABEL_39:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = v172;
    }

    else
    {
      v36 = sub_1D10F7610(0, *(v172 + 2) + 1, 1, v172);
    }

    a4 = *(v36 + 2);
    v67 = *(v36 + 3);
    v21 = a4 + 1;
    if (a4 >= v67 >> 1)
    {
      v36 = sub_1D10F7610((v67 > 1), a4 + 1, 1, v36);
    }

    *(v36 + 2) = v21;
    v68 = &v36[16 * a4];
    *(v68 + 4) = v37;
    *(v68 + 5) = v35;
    v69 = *v168;
    if (!*v168)
    {
      goto LABEL_206;
    }

    if (a4)
    {
      while (1)
      {
        v70 = v21 - 1;
        if (v21 >= 4)
        {
          break;
        }

        if (v21 == 3)
        {
          v71 = *(v36 + 4);
          v72 = *(v36 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_58:
          if (v74)
          {
            goto LABEL_183;
          }

          v87 = &v36[16 * v21];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_186;
          }

          v93 = &v36[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_189;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_190;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v21 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v97 = &v36[16 * v21];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_72:
        if (v92)
        {
          goto LABEL_185;
        }

        v100 = &v36[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_188;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_79:
        a4 = v70 - 1;
        if (v70 - 1 >= v21)
        {
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (!*a3)
        {
          goto LABEL_201;
        }

        v108 = v36;
        v21 = *&v36[16 * a4 + 32];
        v109 = *&v36[16 * v70 + 40];
        sub_1D11F112C(*a3 + *(v178 + 72) * v21, *a3 + *(v178 + 72) * *&v36[16 * v70 + 32], *a3 + *(v178 + 72) * v109, v69);
        if (v5)
        {
          goto LABEL_177;
        }

        if (v109 < v21)
        {
          goto LABEL_179;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1D1245848(v108);
        }

        if (a4 >= *(v108 + 2))
        {
          goto LABEL_180;
        }

        v110 = &v108[16 * a4];
        *(v110 + 4) = v21;
        *(v110 + 5) = v109;
        v206 = v108;
        sub_1D12457BC(v70);
        v36 = v206;
        v21 = *(v206 + 2);
        if (v21 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v36[16 * v21 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_181;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_182;
      }

      v82 = &v36[16 * v21];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_184;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_187;
      }

      if (v86 >= v78)
      {
        v104 = &v36[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_191;
        }

        if (v73 < v107)
        {
          v70 = v21 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v34 = *(a3 + 8);
    a4 = v167;
    v21 = v191;
    if (v35 >= v34)
    {
      goto LABEL_163;
    }
  }

  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
}

void sub_1D11F112C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v55 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v17 = (a2 - a1) / v15;
  v75 = a1;
  v74 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v19;
    if (v19 >= 1)
    {
      v67 = a1;
      v39 = -v15;
      v40 = v38;
      v58 = -v15;
      v59 = a4;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v41 = a2;
          v68 = a2 + v39;
          v60 = a2;
          while (1)
          {
            if (v41 <= v67)
            {
              v75 = v41;
              v73 = v56;
              goto LABEL_60;
            }

            v42 = a3;
            v57 = v38;
            v65 = a3 + v39;
            v43 = v40 + v39;
            v44 = v66;
            sub_1D11F2408(v40 + v39, v66);
            v45 = v63;
            sub_1D11F2408(v68, v63);
            v46 = v64;
            sub_1D11F2408(v44, v64);
            v61 = BrowseCategory.localizedTitle.getter();
            v48 = v47;
            sub_1D11F2340(v46, type metadata accessor for BrowseCategory);
            sub_1D11F2408(v45, v46);
            v49 = BrowseCategory.localizedTitle.getter();
            v51 = v50;
            sub_1D11F2340(v46, type metadata accessor for BrowseCategory);
            v71 = v61;
            v72 = v48;
            v69 = v49;
            v70 = v51;
            sub_1D10940C8();
            v52 = sub_1D1390FDC();

            sub_1D11F21B4(v45);
            sub_1D11F21B4(v66);
            if (v52 == -1)
            {
              break;
            }

            v38 = v43;
            a3 = v65;
            v53 = v59;
            if (v42 < v40 || v65 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v58;
            }

            else
            {
              v39 = v58;
              if (v42 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v43;
            v41 = v60;
            if (v43 <= v53)
            {
              a2 = v60;
              goto LABEL_59;
            }
          }

          v54 = v59;
          a3 = v65;
          if (v42 < v60 || v65 >= v60)
          {
            break;
          }

          a2 = v68;
          v38 = v57;
          v39 = v58;
          if (v42 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v54)
          {
            goto LABEL_59;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v38 = v57;
        v39 = v58;
        if (v40 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v75 = a2;
    v73 = v38;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = (a4 + v18);
    v73 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v65 = a3;
      v60 = v15;
      do
      {
        v67 = a1;
        v68 = a2;
        v21 = v66;
        sub_1D11F2408(a2, v66);
        v22 = v63;
        sub_1D11F2408(a4, v63);
        v23 = v64;
        sub_1D11F2408(v21, v64);
        v24 = BrowseCategory.localizedTitle.getter();
        v25 = a4;
        v27 = v26;
        sub_1D11F2340(v23, type metadata accessor for BrowseCategory);
        sub_1D11F2408(v22, v23);
        v28 = BrowseCategory.localizedTitle.getter();
        v30 = v29;
        sub_1D11F2340(v23, type metadata accessor for BrowseCategory);
        v71 = v24;
        v72 = v27;
        v69 = v28;
        v70 = v30;
        sub_1D10940C8();
        v31 = sub_1D1390FDC();

        sub_1D11F21B4(v22);
        sub_1D11F21B4(v21);
        if (v31 == -1)
        {
          v34 = v60;
          v33 = v67;
          v37 = v68 + v60;
          a4 = v25;
          if (v67 < v68 || v67 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            v36 = v65;
          }

          else
          {
            v36 = v65;
            if (v67 != v68)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }

          goto LABEL_34;
        }

        v33 = v67;
        v32 = v68;
        v34 = v60;
        a4 = v25 + v60;
        v35 = v25;
        if (v67 < v25 || v67 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v36 = v65;
          a2 = v32;
        }

        else
        {
          v36 = v65;
          a2 = v68;
          if (v67 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
            v74 = a4;
            goto LABEL_34;
          }
        }

        v74 = a4;
LABEL_34:
        a1 = v33 + v34;
        v75 = a1;
      }

      while (a4 < v61 && a2 < v36);
    }
  }

LABEL_60:
  sub_1D124585C(&v75, &v74, &v73);
}

void sub_1D11F1768(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for BrowseCategory();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1104D18();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 16);
  if (!v56)
  {
    goto LABEL_23;
  }

  v52 = v3;
  v53 = v8;
  v50[1] = v7;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v55 = *(v13 + 72);
  v51 = v17;
  sub_1D11F23A0(a1 + v17, v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1D1104D18);
  sub_1D11F2498(v15, v10, type metadata accessor for BrowseCategory);
  v54 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v21 = sub_1D129E5D8(v10);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (a2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D1183048();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1D117DBA4(v24, a2 & 1);
  v26 = sub_1D129E5D8(v10);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v30 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v31 = v30[6];
      v53 = *(v53 + 72);
      sub_1D11F2498(v10, v31 + v53 * v21, type metadata accessor for BrowseCategory);
      *(v30[7] + 8 * v21) = v18;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        v30[2] = v34;
        if (v56 != 1)
        {
          v35 = a1 + v55 + v51;
          v36 = 1;
          while (v36 < *(a1 + 16))
          {
            sub_1D11F23A0(v35, v15, sub_1D1104D18);
            sub_1D11F2498(v15, v10, type metadata accessor for BrowseCategory);
            v37 = *&v15[v54];
            v38 = *a3;
            v39 = sub_1D129E5D8(v10);
            v41 = v38[2];
            v42 = (v40 & 1) == 0;
            v33 = __OFADD__(v41, v42);
            v43 = v41 + v42;
            if (v33)
            {
              goto LABEL_24;
            }

            v44 = v40;
            if (v38[3] < v43)
            {
              sub_1D117DBA4(v43, 1);
              v39 = sub_1D129E5D8(v10);
              if ((v44 & 1) != (v45 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v44)
            {
              goto LABEL_10;
            }

            v46 = *a3;
            *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
            v47 = v39;
            sub_1D11F2498(v10, v46[6] + v53 * v39, type metadata accessor for BrowseCategory);
            *(v46[7] + 8 * v47) = v37;
            v48 = v46[2];
            v33 = __OFADD__(v48, 1);
            v49 = v48 + 1;
            if (v33)
            {
              goto LABEL_25;
            }

            ++v36;
            v46[2] = v49;
            v35 += v55;
            if (v56 == v36)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();

    v59 = v28;
    v29 = v28;
    sub_1D10922EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D11F2340(v10, type metadata accessor for BrowseCategory);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1D13916CC();
  __break(1u);
LABEL_28:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D11F1CB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v47 = a3;
  v6 = type metadata accessor for BrowseCategory();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1104D18();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v51 = MEMORY[0x1E69E7CC0];
  sub_1D10FDF54(0, v10, 0);
  v11 = v51;
  v12 = a1 + 56;
  result = sub_1D139104C();
  v14 = result;
  v15 = 0;
  v37 = a1 + 64;
  v38 = v10;
  v39 = a1;
  v40 = a1 + 56;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v48 = v15;
    v50 = *(a1 + 36);
    v18 = v11;
    v19 = v44;
    v20 = sub_1D11F23A0(*(a1 + 48) + *(v45 + 72) * v14, v44, type metadata accessor for BrowseCategory);
    MEMORY[0x1EEE9AC00](v20);
    v21 = v46;
    *(&v37 - 2) = v47;
    *(&v37 - 1) = v19;
    v22 = v4;
    sub_1D11EE118(0, sub_1D11F28E0, (&v37 - 4), v21);
    v24 = v23;
    v49 = v22;
    v25 = *(v43 + 48);
    v26 = v41;
    sub_1D11F23A0(v19, v41, type metadata accessor for BrowseCategory);
    *(v26 + v25) = v24;
    v27 = v19;
    v11 = v18;
    sub_1D11F2340(v27, type metadata accessor for BrowseCategory);
    v51 = v18;
    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1D10FDF54(v28 > 1, v29 + 1, 1);
      v11 = v51;
    }

    *(v11 + 16) = v29 + 1;
    result = sub_1D11F2498(v26, v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v29, sub_1D1104D18);
    a1 = v39;
    v12 = v40;
    v16 = 1 << *(v39 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v30 = *(v40 + 8 * v17);
    if ((v30 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v50 != *(v39 + 36))
    {
      goto LABEL_24;
    }

    v31 = v30 & (-2 << (v14 & 0x3F));
    if (v31)
    {
      v16 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v4 = v49;
    }

    else
    {
      v32 = v17 << 6;
      v33 = v17 + 1;
      v34 = (v37 + 8 * v17);
      v4 = v49;
      while (v33 < (v16 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1D1105004(v14, v50, 0);
          v16 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1D1105004(v14, v50, 0);
    }

LABEL_4:
    v15 = v48 + 1;
    v14 = v16;
    if (v48 + 1 == v38)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSD15HealthRecordsUIAA14BrowseCategoryORszSiRs_rlE_019queryDescriptionsByE0SDyACSiGSDySo17HKQueryDescriptorCSo8NSNumberCG_SDyACSayAGGGtcfC_0(unint64_t a1, uint64_t a2)
{

  v4 = sub_1D12DDCC0(a2);

  v5 = sub_1D11F1CB0(v4, a1, a2);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if (*(v5 + 16))
  {
    sub_1D11F27FC();
    v6 = sub_1D139144C();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  sub_1D11F1768(v5, 1, &v8);
  return v8;
}

uint64_t sub_1D11F21B4(uint64_t a1)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CategoryCount()
{
  result = qword_1EE06A2B8;
  if (!qword_1EE06A2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D11F2288()
{
  result = qword_1EC60D2A0;
  if (!qword_1EC60D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D2A0);
  }

  return result;
}

void sub_1D11F22DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D11F2288();
    v7 = a3(a1, &type metadata for CategoryCount.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D11F2340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D11F23A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D11F2408(uint64_t a1, uint64_t a2)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D11F2498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D11F2570()
{
  result = type metadata accessor for BrowseCategory();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D11F25F8()
{
  result = qword_1EC60D2C8;
  if (!qword_1EC60D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D2C8);
  }

  return result;
}

unint64_t sub_1D11F2650()
{
  result = qword_1EC60D2D0;
  if (!qword_1EC60D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D2D0);
  }

  return result;
}

unint64_t sub_1D11F26A8()
{
  result = qword_1EC60D2D8;
  if (!qword_1EC60D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D2D8);
  }

  return result;
}

uint64_t sub_1D11F26FC(uint64_t a1, uint64_t a2)
{
  sub_1D11F278C(0, &qword_1EC60AEF0, type metadata accessor for BrowseCategory);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D11F278C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D11F27FC()
{
  if (!qword_1EE06B0B0)
  {
    type metadata accessor for BrowseCategory();
    sub_1D11F2898(&qword_1EE06BBE8, type metadata accessor for BrowseCategory);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B0B0);
    }
  }
}

uint64_t sub_1D11F2898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UserDomainConceptFeedItemViewData.init(displayName:secondaryText:icon:tintColor:valueInRange:valueDisplay:unitDisplay:sortHint:editing:pinned:expanded:showNoValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, char a17, char a18)
{
  v19 = a13;
  if (a12)
  {
    v29 = result;
    v30 = a2;
    v27 = a7;
    v28 = a8;
    v25 = a5;
    v26 = a6;
    v23 = a3;
    v24 = a4;
    a11 = sub_1D139023C();
    v22 = v21;

    result = v29;
    a2 = v30;
    v19 = a13;
    a3 = v23;
    a4 = v24;
    a5 = v25;
    a6 = v26;
    a7 = v27;
    a8 = v28;
  }

  else
  {
    v22 = 0;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = v22;
  *(a9 + 88) = v19;
  *(a9 + 96) = a14 & 1;
  *(a9 + 97) = a15 & 1;
  *(a9 + 98) = a16 & 1;
  *(a9 + 99) = a17 & 1;
  *(a9 + 100) = a18 & 1;
  return result;
}

uint64_t UserDomainConceptFeedItemViewData.valueUnitDisplayString.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  if (v0[8])
  {
    if (v2)
    {
      v5 = v0[7];

      MEMORY[0x1D3885C10](32, 0xE100000000000000);

      MEMORY[0x1D3885C10](v1, v2);

      return v5;
    }

    else
    {
      v4 = v0[7];

      return v4;
    }
  }

  else if (v2)
  {

    return v1;
  }

  else
  {
    return v0[9];
  }
}

uint64_t UserDomainConceptFeedItemViewData.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserDomainConceptFeedItemViewData.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserDomainConceptFeedItemViewData.secondaryText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserDomainConceptFeedItemViewData.secondaryText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *UserDomainConceptFeedItemViewData.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UserDomainConceptFeedItemViewData.tintColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *UserDomainConceptFeedItemViewData.valueInRange.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t UserDomainConceptFeedItemViewData.valueDisplay.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t UserDomainConceptFeedItemViewData.valueDisplay.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t UserDomainConceptFeedItemViewData.unitDisplay.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t UserDomainConceptFeedItemViewData.unitDisplay.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t UserDomainConceptFeedItemViewData.sortHint.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t UserDomainConceptFeedItemViewData.style.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[4];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v6;
  a1[1] = v4;
  a1[2] = v3;
  v7 = *MEMORY[0x1E69A36E0];
  v8 = sub_1D138E70C();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  v9 = v5;
}

uint64_t sub_1D11F305C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[4];
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  *a1 = v6;
  a1[1] = v4;
  a1[2] = v3;
  v7 = *MEMORY[0x1E69A36E0];
  v8 = sub_1D138E70C();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  v9 = v5;
}

void *sub_1D11F3120()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_1D11F3148()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1D11F3180()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1D11F31B0()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t _s15HealthRecordsUI33UserDomainConceptFeedItemViewDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v38 = *(a1 + 56);
  v42 = *(a1 + 64);
  v31 = *(a1 + 72);
  v40 = *(a1 + 80);
  v24 = *(a1 + 88);
  v35 = *(a1 + 96);
  v33 = *(a1 + 97);
  v30 = *(a1 + 98);
  v28 = *(a1 + 99);
  v26 = *(a1 + 100);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v37 = *(a2 + 56);
  v41 = *(a2 + 64);
  v36 = *(a2 + 72);
  v39 = *(a2 + 80);
  v23 = *(a2 + 88);
  v34 = *(a2 + 96);
  v32 = *(a2 + 97);
  v29 = *(a2 + 98);
  v27 = *(a2 + 99);
  v25 = *(a2 + 100);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1D106F934(0, &qword_1EE06A540);
    v12 = v10;
    v13 = v3;
    v14 = sub_1D1390D8C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1D106F934(0, &qword_1EE06B6E0);
    v15 = v9;
    v16 = v6;
    v17 = sub_1D1390D8C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v11)
    {
      return 0;
    }

    sub_1D106F934(0, &qword_1EC60D2E0);
    v18 = v11;
    v19 = v5;
    v20 = sub_1D1390D8C();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v42)
  {
    if (!v41 || (v38 != v37 || v42 != v41) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  if (!v40)
  {
    if (!v39)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (!v39 || (v31 != v36 || v40 != v39) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if (v35)
  {
    result = 0;
    if (!v34)
    {
      return result;
    }

    goto LABEL_47;
  }

  result = 0;
  v22 = v34;
  if (v24 != v23)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
LABEL_47:
    if (((v33 ^ v32) & 1) == 0 && ((v30 ^ v29) & 1) == 0 && ((v28 ^ v27) & 1) == 0)
    {
      return v26 ^ v25 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy101_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D11F35C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 101))
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

uint64_t sub_1D11F3610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 101) = 1;
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

    *(result + 101) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static Optional<A>.+ infix(_:_:)(void *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {
      sub_1D106F424();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D139E6E0;
      *(v4 + 32) = a1;
      *(v4 + 40) = v2;
      sub_1D1166D9C();
      v5 = v2;
      v6 = a1;
      v7 = v5;
      v8 = v6;
      v9 = sub_1D139044C();

      v2 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    else
    {
      v11 = a1;
      return a1;
    }
  }

  else if (a2)
  {
    v10 = a2;
  }

  return v2;
}

id static NSPredicate.! prefix(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() notPredicateWithSubpredicate_];

  return v1;
}

id static NSPredicate.+ infix(_:_:)(void *a1, void *a2)
{
  sub_1D106F424();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E6E0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_1D1166D9C();
  v5 = a1;
  v6 = a2;
  v7 = sub_1D139044C();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v8;
}

uint64_t _s13ConfigurationVMa()
{
  result = qword_1EC60D300;
  if (!qword_1EC60D300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D11F38EC()
{
  sub_1D138D76C();
  if (v0 <= 0x3F)
  {
    sub_1D138D57C();
    if (v1 <= 0x3F)
    {
      sub_1D106F934(319, &qword_1EC60D310);
      if (v2 <= 0x3F)
      {
        sub_1D138D67C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UITraitEnvironmentLayoutDirection(319);
          if (v4 <= 0x3F)
          {
            sub_1D106F934(319, &qword_1EC60D318);
            if (v5 <= 0x3F)
            {
              sub_1D11F3FCC(319, qword_1EC60D320, type metadata accessor for MedicalRecordFormatter);
              if (v6 <= 0x3F)
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

void *sub_1D11F3A30(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11F3A8C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11F3FCC(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D106A1D8(v1, &v12 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 0;
  }

  (*(v5 + 32))(v7, v10, v4);
  a1(&v12, v7);
  if (v2)
  {
    result = (*(v5 + 8))(v7, v4);
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return v12;
  }

  return result;
}

uint64_t sub_1D11F3C64(uint64_t a1)
{
  sub_1D11F3FCC(0, &qword_1EC60F290, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  sub_1D11F3FCC(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_1D138D18C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D11F3FCC(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-v14];
  v16 = sub_1D138D76C();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = sub_1D138D7CC();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_1D138D16C();
  sub_1D138D6FC();
  (*(v10 + 8))(v12, v9);
  v23 = v1;
  v18 = sub_1D11F3A8C(sub_1D11F40B8);
  v20 = v19;
  sub_1D109AC18(v15);
  if (v20)
  {
    return v18;
  }

  v24 = a1;
  return sub_1D13915CC();
}

void sub_1D11F3FCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11F4020(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(_s13ConfigurationVMa() + 28));
  v4 = sub_1D138D4EC();
  v5 = [v3 stringFromDate_];

  v6 = sub_1D139016C();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_1D11F40D8()
{
  sub_1D11F3FCC(0, &qword_1EC60F290, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D138D7CC();
  __swift_allocate_value_buffer(v3, qword_1EC60D2E8);
  v4 = __swift_project_value_buffer(v3, qword_1EC60D2E8);
  sub_1D138D7AC();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D11F4270()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = _s13ConfigurationVMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D11F42F8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v45 = *(a3 + 16);
  v4 = *(v45 - 8);
  v5 = *(v4 + 84);
  v44 = sub_1D138D76C();
  v6 = *(v44 - 8);
  v7 = *(v6 + 84);
  v42 = sub_1D138D57C();
  v8 = *(v42 - 8);
  v47 = v8;
  v43 = *(v8 + 84);
  if (v43 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(sub_1D138D67C() - 8);
  v11 = v10;
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v6 + 80);
  v14 = *(v8 + 80);
  v15 = *(v10 + 80);
  v16 = *(v6 + 64);
  v17 = *(v10 + 64);
  if (v12 <= v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = v19;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v13 | v14 | v15 | 7;
  v22 = v21 + *(v4 + 64);
  v23 = v16 + v14;
  v24 = *(v8 + 64) + 7;
  v25 = v15 + 8;
  v26 = a1;
  if (v20 >= a2)
  {
    goto LABEL_39;
  }

  v27 = (v22 & ~v21) + ((v16 + ((v13 + ((((v17 + ((v25 + ((((((v24 + (v23 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = v27 & 0xFFFFFFF8;
  if ((v27 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v20 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_39;
    }

    v32 = *(a1 + v27);
    if (!v32)
    {
      goto LABEL_39;
    }

LABEL_36:
    v34 = v32 - 1;
    if (v28)
    {
      v34 = 0;
      v35 = *a1;
    }

    else
    {
      v35 = 0;
    }

    return v20 + (v35 | v34) + 1;
  }

  if (v31 == 2)
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v32 = *(a1 + v27);
    if (v32)
    {
      goto LABEL_36;
    }
  }

LABEL_39:
  if (v5 >= v19)
  {
    v38 = v45;
    v36 = *(v4 + 48);
    v37 = v5;
    goto LABEL_43;
  }

  v26 = ((a1 + v22) & ~v21);
  if (v7 == v19)
  {
    v36 = *(v6 + 48);
    v37 = v7;
    v38 = v44;
LABEL_43:

    return v36(v26, v37, v38);
  }

  v26 = ((v26 + v23) & ~v14);
  if (v43 == v19)
  {
    v36 = *(v47 + 48);
    v37 = v43;
    v38 = v42;
    goto LABEL_43;
  }

  v39 = ((v26 + v24) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v41 = *(v11 + 48);

    return v41((v25 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }

  else
  {
    v40 = *v39;
    if (*v39 >= 0xFFFFFFFF)
    {
      LODWORD(v40) = -1;
    }

    return (v40 + 1);
  }
}

void sub_1D11F46F8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v49 = *(a4 + 16);
  v5 = *(v49 - 8);
  v48 = v5;
  v6 = *(v5 + 84);
  v47 = sub_1D138D76C();
  v7 = *(v47 - 8);
  v8 = *(v7 + 84);
  v45 = sub_1D138D57C();
  v9 = *(v45 - 8);
  v46 = *(v9 + 84);
  if (v46 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_1D138D67C() - 8);
  v12 = v11;
  v13 = *(v5 + 64);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v7 + 80);
  v16 = *(v9 + 80);
  v17 = *(v11 + 80);
  v18 = *(v7 + 64);
  v19 = *(v9 + 64);
  v20 = *(v11 + 64);
  if (v14 <= v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= v6)
  {
    v23 = v6;
  }

  else
  {
    v23 = v22;
  }

  v24 = v15 | v16 | v17 | 7;
  v25 = (v24 + v13) & ~v24;
  v26 = v18 + v16;
  v27 = v19 + 7;
  v28 = ((v18 + ((v15 + ((((v20 + ((v17 + 8 + ((((((v19 + 7 + ((v18 + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v28 + v25;
  if (v23 >= a3)
  {
    v32 = 0;
  }

  else
  {
    if (v29)
    {
      v30 = 2;
    }

    else
    {
      v30 = a3 - v23 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  if (a2 > v23)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v23;
    }

    if (v29)
    {
      v34 = ~v23 + a2;
      bzero(a1, v28 + v25);
      *a1 = v34;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v32)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  if (v32 <= 1)
  {
    if (v32)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v32 == 2)
  {
    *(a1 + v29) = 0;
LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v6 >= v22)
  {
    v37 = v49;
    v38 = *(v48 + 56);
    v39 = a1;
    v40 = a2;
    v41 = v6;
LABEL_52:

    v38(v39, v40, v41, v37);
    return;
  }

  v35 = ((a1 + v24 + v13) & ~v24);
  if (v22 < a2)
  {
    if (v28)
    {
      v36 = ~v22 + a2;
      bzero(v35, v28);
      *v35 = v36;
    }

    return;
  }

  if (v8 == v22)
  {
    v38 = *(v7 + 56);
    v39 = ((a1 + v24 + v13) & ~v24);
    v40 = a2;
    v41 = v8;
    v37 = v47;
    goto LABEL_52;
  }

  v39 = ((v35 + v26) & ~v16);
  if (v46 == v22)
  {
    v38 = *(v9 + 56);
    v40 = a2;
    v41 = v46;
    v37 = v45;
    goto LABEL_52;
  }

  v42 = ((v39 + v27) & 0xFFFFFFFFFFFFFFF8);
  if ((v21 & 0x80000000) != 0)
  {
    v44 = *(v12 + 56);

    v44((v17 + 8 + ((((v42 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v43 = a2 - 1;
    }

    *v42 = v43;
  }
}

uint64_t sub_1D11F4B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1D138D67C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a4, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D139E710;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D1089930();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v15 = [v14 initWithInteger_];
  *(v13 + 96) = sub_1D11DEC9C();
  *(v13 + 104) = sub_1D11F6290();
  *(v13 + 72) = v15;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v16 = sub_1D138D1CC();
  if (*(v13 + 16))
  {
    v17 = sub_1D139019C();

    sub_1D10CD608(v10);
  }

  else
  {
    v17 = v16;
    sub_1D10CD608(v10);
  }

  return v17;
}

uint64_t sub_1D11F4E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = *(_s13ConfigurationVMa() + 36);
  v10 = sub_1D138D67C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a3 + v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E710;
  v13 = sub_1D11F3C64(a1);
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D1089930();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v18 = sub_1D11F3C64(a2);
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v20 = sub_1D138D1CC();
  if (*(v12 + 16))
  {
    v21 = sub_1D139019C();

    sub_1D10CD608(v8);
  }

  else
  {
    v21 = v20;
    sub_1D10CD608(v8);
  }

  return v21;
}

uint64_t sub_1D11F50D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1D138D67C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E710;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D1089930();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  v15 = qword_1EE06AD00;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1D138D1CC();
  if (*(v12 + 16))
  {
    v17 = sub_1D139019C();

    sub_1D10CD608(v10);
  }

  else
  {
    v17 = v16;
    sub_1D10CD608(v10);
  }

  return v17;
}

uint64_t sub_1D11F5328(uint64_t a1, uint64_t a2)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D138D67C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D1089930();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = qword_1EE06AD00;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  if (*(v8 + 16))
  {
    v11 = sub_1D139019C();

    sub_1D10CD608(v6);
  }

  else
  {
    v11 = v10;
    sub_1D10CD608(v6);
  }

  return v11;
}

uint64_t sub_1D11F5558(uint64_t a1, uint64_t a2)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1D138D67C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D1089930();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = qword_1EE06AD00;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_1D138D1CC();
  if (*(v8 + 16))
  {
    v11 = sub_1D139019C();

    sub_1D10CD608(v6);
  }

  else
  {
    v11 = v10;
    sub_1D10CD608(v6);
  }

  return v11;
}

uint64_t sub_1D11F5788()
{
  sub_1D1086E1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D13A3120;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1D138D1CC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D138D1CC();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D138D1CC();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D138D1CC();
  *(v0 + 88) = v4;
  return v0;
}

uint64_t sub_1D11F5918()
{
  sub_1D1086E1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D13A8CA0;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_1D138D1CC();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D138D1CC();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D138D1CC();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D138D1CC();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1D138D1CC();
  *(v0 + 104) = v5;
  return v0;
}

uint64_t sub_1D11F5AE4(uint64_t a1, uint64_t a2)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1D138D67C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v9 + 56) = sub_1D11DEC9C();
  *(v9 + 64) = sub_1D11F6290();
  *(v9 + 32) = v10;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v11 = sub_1D138D1CC();
  if (*(v9 + 16))
  {
    v12 = sub_1D139019C();

    sub_1D10CD608(v6);
  }

  else
  {
    v12 = v11;
    sub_1D10CD608(v6);
  }

  return v12;
}

uint64_t sub_1D11F5D60(uint64_t a1, uint64_t a2)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1D138D67C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v9 + 56) = sub_1D11DEC9C();
  *(v9 + 64) = sub_1D11F6290();
  *(v9 + 32) = v10;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v11 = sub_1D138D1CC();
  if (*(v9 + 16))
  {
    v12 = sub_1D139019C();

    sub_1D10CD608(v6);
  }

  else
  {
    v12 = v11;
    sub_1D10CD608(v6);
  }

  return v12;
}

uint64_t sub_1D11F5FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1D138D67C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E710;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v13 = sub_1D11DEC9C();
  *(v11 + 56) = v13;
  v14 = sub_1D11F6290();
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v16 = sub_1D138D1CC();
  if (*(v11 + 16))
  {
    v17 = sub_1D139019C();

    sub_1D10CD608(v8);
  }

  else
  {
    v17 = v16;
    sub_1D10CD608(v8);
  }

  return v17;
}

unint64_t sub_1D11F6290()
{
  result = qword_1EC60D3A8;
  if (!qword_1EC60D3A8)
  {
    sub_1D11DEC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D3A8);
  }

  return result;
}

id MedicalRecordChartDataSource.__allocating_init(chartDefining:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v14 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = a6;
  sub_1D11F68EC(a1, &v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining]);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = a2;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = a3;
  swift_beginAccess();
  *&v13[v14] = a4;
  v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = a5;
  v17.receiver = v13;
  v17.super_class = v6;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_1D11F9EFC(a1, sub_1D1115B88);
  return v15;
}

unint64_t MedicalRecordChartDataSourceType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void sub_1D11F6470(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D11F64D0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void *sub_1D11F6524()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1D11F6570()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1D11F65BC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1D11F6710()
{
  sub_1D11F68EC(v0 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1D11F9EFC(v4, sub_1D1115B88);
  }

  return v1;
}

id MedicalRecordChartDataSource.init(chartDefining:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = a6;
  sub_1D11F68EC(a1, &v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining]);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = a2;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = a3;
  swift_beginAccess();
  *&v6[v12] = a4;
  v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = a5;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for MedicalRecordChartDataSource();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1D11F9EFC(a1, sub_1D1115B88);
  return v13;
}

uint64_t sub_1D11F68EC(uint64_t a1, uint64_t a2)
{
  sub_1D1115B88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D11F6950()
{
  result = qword_1EC60D3F0;
  if (!qword_1EC60D3F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60D3F0);
  }

  return result;
}

id MedicalRecordChartDataSource.__allocating_init(concept:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v14 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = a6;
  if (a1)
  {
    v15 = sub_1D106F934(0, &qword_1EC609980);
    v16 = &protocol witness table for HKConcept;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v17 = &v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining];
  *v17 = a1;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = v15;
  v17[4] = v16;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = a2;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = a3;
  swift_beginAccess();
  *&v13[v14] = a4;
  v13[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = a5 & 1;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

id MedicalRecordChartDataSource.init(concept:dataTransformer:unit:preferredColors:collapseIntoRangePoints:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = a1;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets] = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type] = a6;
  if (a1)
  {
    a1 = sub_1D106F934(0, &qword_1EC609980);
    v13 = &protocol witness table for HKConcept;
  }

  else
  {
    v13 = 0;
  }

  v14 = &v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining];
  *v14 = v11;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = a1;
  v14[4] = v13;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer] = a2;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit] = a3;
  swift_beginAccess();
  *&v6[v12] = a4;
  v6[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] = a5 & 1;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for MedicalRecordChartDataSource();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1D11F6CF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D138CFBC();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D138D57C();
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v47 = [objc_allocWithZone(MEMORY[0x1E69A43B8]) init];
  v58 = a1;
  v59 = a2;
  v21 = a3;
  v60 = a3;
  v22 = HKGraphSeriesDataBlockPathMinimumX();
  sub_1D138D52C();

  v23 = v8;
  v58 = a1;
  v59 = a2;
  v60 = v21;
  v24 = HKGraphSeriesDataBlockPathMaximumX();
  sub_1D138D52C();

  v25 = *(v9 + 16);
  v48 = v20;
  v26 = v20;
  v27 = v50;
  v25(v14, v26, v50);
  v49 = v17;
  v25(v11, v17, v27);
  sub_1D138CF8C();
  v53 = a2;
  v28 = sub_1D11F804C(a2);
  v56 = v23;
  sub_1D110A00C(sub_1D11F9F5C, v55, v28);

  v58 = sub_1D111324C(v29);
  sub_1D11F8AB0(&v58);

  v30 = v58;
  if ((v58 & 0x8000000000000000) == 0 && (v58 & 0x4000000000000000) == 0)
  {
    v31 = *(v58 + 16);
    v33 = v51;
    v32 = v52;
    if (v31)
    {
      goto LABEL_4;
    }

LABEL_12:

LABEL_13:
    sub_1D11F9B6C();
    v41 = sub_1D139044C();

    v42 = v47;
    [v47 setChartPoints_];

    (*(v33 + 8))(v23, v32);
    v43 = *(v9 + 8);
    v43(v49, v27);
    v43(v48, v27);
    return v42;
  }

  v31 = sub_1D13910DC();
  v33 = v51;
  v32 = v52;
  if (!v31)
  {
    goto LABEL_12;
  }

LABEL_4:
  v57 = MEMORY[0x1E69E7CC0];
  sub_1D13912DC();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v45 = v23;
    v46 = v9;
    v34 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
    v35 = *(v54 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer);
    v36 = *(v54 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_type);
    swift_beginAccess();
    v37 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1D3886B70](v37, v30);
      }

      else
      {
        v38 = *(v30 + 8 * v37 + 32);
      }

      v39 = v38;
      ++v37;
      v40 = [v35 chartPointFor:v38 in:*(v54 + v34) with:v53 dataSourceType:v36];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    while (v31 != v37);

    v33 = v51;
    v32 = v52;
    v27 = v50;
    v23 = v45;
    v9 = v46;
    goto LABEL_13;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1D11F7248(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v6[2] = v3;

    v4 = sub_1D110A00C(sub_1D11F9BD0, v6, v2);
    if (v4 >> 62)
    {
      v2 = sub_1D13910DC();
    }

    else
    {
      v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v2;
}

uint64_t sub_1D11F7334(id *a1)
{
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 date];
  sub_1D138D52C();

  v8 = sub_1D138CFAC();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id sub_1D11F743C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v7 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_preferredColors;
    swift_beginAccess();
    v8 = *(v3 + v7);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      sub_1D106F934(0, &unk_1EC60D410);
      v10 = [objc_opt_self() systemRedColor];
      v9 = HKUIMetricColors.init(keyColor:)(v10);
    }

    v6 = v9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer);
  v12 = a1;
  v13 = [v11 graphSeriesWith_];
  [v13 setDataSource_];
  v14 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (v15)
  {
    v16 = *(v3 + v14);
  }

  else
  {
    sub_1D106F934(0, &qword_1EE06B6C0);
    v17 = sub_1D1390D4C();
    v18 = sub_1D1390D4C();
    v16 = [objc_opt_self() valueRangeWithMinValue:v17 maxValue:v18];

    v15 = 0;
  }

  v19 = v15;
  sub_1D109DD38(MEMORY[0x1E69E7CC0]);
  sub_1D106F934(0, &qword_1EE06B6C0);
  sub_1D106F934(0, &unk_1EC60D420);
  sub_1D11C1A28();
  v20 = sub_1D138FFEC();

  v21 = [objc_opt_self() ruleWithDefaultAxisBounds:v16 axisBoundsOverrides:v20];

  [v13 setAxisScalingRule_];
  [v13 setYAxis_];

  return v13;
}

id sub_1D11F76B0(uint64_t a1)
{
  v2 = v1;
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(0, a1);
  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_dataTransformer);
  sub_1D11F68EC(v1 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartDefining, v14);
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_1D11F9EFC(v14, sub_1D1115B88);
  }

  v7 = sub_1D139012C();

  v8 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
  swift_beginAccess();
  v9 = [*(v2 + v8) unitString];
  if (!v9)
  {
    sub_1D139016C();
    v9 = sub_1D139012C();
  }

  v10 = [v4 chartDisplayTypeWith:v3 displayName:v7 unitName:v9];

  v11 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange;
  swift_beginAccess();
  if (*(v2 + v11))
  {
    v12 = [v10 copyWithDefaultAxisRangeOverride_];

    v10 = v12;
  }

  return v10;
}

void sub_1D11F7904(unint64_t a1)
{
  v88 = sub_1D138D57C();
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v75 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  if (a1 >> 62)
  {
    v17 = sub_1D13910DC();
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      return;
    }
  }

  v18 = objc_opt_self();
  v19 = [v18 distantFuture];
  sub_1D138D52C();

  v20 = [v18 distantPast];
  sub_1D138D52C();

  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v87 = v16;
    v76 = a1 & 0xC000000000000001;
    v77 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_unit;
    swift_beginAccess();
    v21 = 0;
    v86 = v3 + 8;
    v75 = (v3 + 32);
    v22 = 1.79769313e308;
    v23 = -1.79769313e308;
    v81 = v1;
    v80 = v13;
    v79 = a1;
    v78 = v17;
    v24 = (v3 + 8);
    do
    {
      if (v76)
      {
        v25 = MEMORY[0x1D3886B70](v21, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v21 + 32);
      }

      v89 = v21 + 1;
      v26 = v25;
      v27 = [v25 date];
      v28 = v83;
      sub_1D138D52C();

      sub_1D11F9BF0();
      v30 = v87;
      v29 = v88;
      v31 = sub_1D13900AC();
      v32 = *v24;
      v33 = (v31 & 1) == 0;
      if (v31)
      {
        v34 = v30;
      }

      else
      {
        v34 = v28;
      }

      if (v33)
      {
        v35 = v30;
      }

      else
      {
        v35 = v28;
      }

      v32(v34, v29);
      v36 = *v75;
      v37 = v82;
      (*v75)(v82, v35, v29);
      v36(v30, v37, v29);
      v38 = [v26 date];
      v39 = v85;
      sub_1D138D52C();

      v40 = v80;
      v41 = sub_1D13900BC();
      v42 = (v41 & 1) == 0;
      if (v41)
      {
        v43 = v40;
      }

      else
      {
        v43 = v39;
      }

      if (v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = v39;
      }

      v45 = v32;
      v32(v43, v29);
      v46 = v84;
      v36(v84, v44, v29);
      v36(v40, v46, v29);
      v47 = v81;
      v48 = v77;
      [v26 minValueIncludingReferenceRangeForUnit_];
      if (v49 < v22)
      {
        v22 = v49;
      }

      v50 = *(v47 + v48);
      [v26 maxValueIncludingReferenceRangeForUnit_];
      v52 = v51;

      v21 = v89;
      if (v23 <= v52)
      {
        v23 = v52;
      }

      a1 = v79;
    }

    while (v78 != v89);
    *(v47 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets) = v79;

    v53 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets;
    v54 = v40;
    swift_beginAccess();
    *(v47 + v53) = MEMORY[0x1E69E7CC8];

    v55 = v87;
    v56 = sub_1D138D4EC();
    v57 = sub_1D138D4EC();
    v58 = [objc_opt_self() valueRangeWithMinValue:v56 maxValue:v57];

    v59 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableXRange;
    swift_beginAccess();
    v60 = *(v47 + v59);
    *(v47 + v59) = v58;

    v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v62 floatValue];
    v64 = v63;
    [v61 floatValue];
    if ((v64 - v65) >= COERCE_FLOAT(1))
    {
      v72 = [objc_opt_self() valueRangeWithMinValue:v61 maxValue:v62];

      v73 = v88;
      v45(v40, v88);
      v45(v55, v73);
      v74 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange;
      swift_beginAccess();
      v71 = *(v47 + v74);
      *(v47 + v74) = v72;
    }

    else
    {
      v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v68 = [objc_opt_self() valueRangeWithMinValue:v66 maxValue:v67];

      v69 = v88;
      v45(v54, v88);
      v45(v55, v69);
      v70 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableYRange;
      swift_beginAccess();
      v71 = *(v47 + v70);
      *(v47 + v70) = v68;
    }
  }
}

uint64_t sub_1D11F804C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138D57C();
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v75 - v12;
  v13 = OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_cachedBucketedSets;
  swift_beginAccess();
  v14 = *&v1[v13];
  if (*(v14 + 16))
  {
    v15 = sub_1D12A2F7C(a1);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      return v17;
    }
  }

  v18 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets];
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = v2[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_collapseIntoRangePoints] == 1;
  v84 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets];
  v85 = a1;
  v83 = v4;
  v20 = v18 >> 62;
  if (!v19)
  {
    if (v20)
    {
      v55 = sub_1D13910DC();
    }

    else
    {
      v55 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x1E69E7CC0];
    if (!v55)
    {
LABEL_50:
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *&v2[v13];
      *&v2[v13] = 0x8000000000000000;
      sub_1D11DB3F4(v17, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v13] = v90;
      swift_endAccess();
      return v17;
    }

    v75 = v13;
    v76 = v2;
    v89 = MEMORY[0x1E69E7CC0];

    sub_1D13912DC();
    if ((v55 & 0x8000000000000000) == 0)
    {
      v56 = 0;
      v57 = v18 & 0xC000000000000001;
      v58 = (v77 + 8);
      do
      {
        if (v57)
        {
          v59 = MEMORY[0x1D3886B70](v56, v18);
        }

        else
        {
          v59 = v18[v56 + 4];
        }

        v60 = v59;
        ++v56;
        v61 = [v59 date];
        sub_1D138D52C();

        v62 = v87;
        sub_1D10CA4BC(v6, v85, v87);
        v63 = *v58;
        v64 = v83;
        (*v58)(v6, v83);
        v65 = sub_1D138D4EC();
        v63(v62, v64);
        v66 = [v60 chartableCodedQuantitySetByChangingDate_];

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        v18 = v84;
      }

      while (v55 != v56);

      v17 = v89;
      v2 = v76;
      a1 = v85;
      v13 = v75;
      goto LABEL_50;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    result = sub_1D13916CC();
    __break(1u);
    return result;
  }

  if (v20)
  {
LABEL_60:
    v21 = sub_1D13910DC();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v2;
  v75 = v13;
  if (!v21)
  {
    goto LABEL_54;
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_63;
  }

  v82 = v18 & 0xC000000000000001;
  v22 = (v77 + 8);
  v79 = (v77 + 16);

  v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v13 = v78;
  v80 = v21;
  v81 = v22;
  do
  {
    if (v82)
    {
      v29 = MEMORY[0x1D3886B70](v23, v18);
    }

    else
    {
      v29 = v18[v23 + 4];
    }

    v30 = v29;
    v31 = [v29 date];
    v32 = v87;
    sub_1D138D52C();

    v33 = v88;
    sub_1D10CA4BC(v32, a1, v88);
    v86 = *v22;
    v86(v32, v4);
    if (v24[2] && (v34 = sub_1D129E6C8(v33), v33 = v88, (v35 & 1) != 0))
    {
      v25 = *(v24[7] + 8 * v34);
      v26 = [v30 quantities];
      if (!v26)
      {
        sub_1D106F934(0, &qword_1EC6096C8);
        sub_1D139045C();
        v26 = sub_1D139044C();
        v13 = v78;
      }

      [v25 addChartableCodedQuantities_];

      v27 = v88;
      v22 = v81;
      v28 = v86;
    }

    else
    {
      v18 = *v79;
      (*v79)(v13, v33, v4);
      v36 = sub_1D138D4EC();
      v2 = [v30 chartableCodedQuantitySetByChangingDate_];

      if (v2)
      {
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v38 = v13;
        v13 = v37;
        v89 = v24;
        a1 = sub_1D129E6C8(v38);
        v40 = v24[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v43 = v39;
        if (v24[3] >= v42)
        {
          v27 = v88;
          if ((v13 & 1) == 0)
          {
            sub_1D11836F4();
            v27 = v88;
          }

          v13 = v78;
          v24 = v89;
          if ((v43 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_1D117E4E0(v42, v13);
          v13 = v78;
          v44 = sub_1D129E6C8(v78);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_64;
          }

          a1 = v44;
          v27 = v88;
          v24 = v89;
          if ((v43 & 1) == 0)
          {
LABEL_26:
            v24[(a1 >> 6) + 8] |= 1 << a1;
            v4 = v83;
            (v18)(v24[6] + *(v77 + 72) * a1, v13, v83);
            *(v24[7] + 8 * a1) = v2;
            v46 = v24[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_59;
            }

            v24[2] = v48;
            goto LABEL_36;
          }
        }

        v53 = v24[7];
        v54 = *(v53 + 8 * a1);
        *(v53 + 8 * a1) = v2;

        v4 = v83;
LABEL_36:
        v22 = v81;
        v28 = v86;
        v86(v13, v4);

        v18 = v84;
        a1 = v85;
        goto LABEL_15;
      }

      v49 = sub_1D129E6C8(v13);
      if (v50)
      {
        v51 = v49;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v24;
        v18 = v84;
        v27 = v88;
        if ((v52 & 1) == 0)
        {
          sub_1D11836F4();
          v27 = v88;
          v24 = v89;
        }

        v22 = v81;
        v28 = v86;
        v86(v24[6] + *(v77 + 72) * v51, v4);

        sub_1D1225B8C(v51, v24);
        v28(v13, v4);
      }

      else
      {
        v22 = v81;
        v28 = v86;
        v86(v13, v4);

        v18 = v84;
        v27 = v88;
      }

      a1 = v85;
    }

LABEL_15:
    ++v23;
    v28(v27, v4);
  }

  while (v80 != v23);

  v68 = v24[2];
  if (v68)
  {
    while (1)
    {
      v17 = sub_1D12A2F80(v68, 0);
      v69 = sub_1D12A2690(&v89, (v17 + 32), v68, v24);

      sub_1D102CC30();
      if (v69 == v68)
      {
        break;
      }

      __break(1u);
LABEL_54:
      v24 = MEMORY[0x1E69E7CC8];
      v68 = *(MEMORY[0x1E69E7CC8] + 16);
      if (!v68)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v17 = MEMORY[0x1E69E7CC0];
  }

  v70 = v85;
  v71 = v76;
  v72 = v75;
  swift_beginAccess();

  v73 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *&v71[v72];
  *&v71[v72] = 0x8000000000000000;
  sub_1D11DB3F4(v17, v70, v73);
  *&v71[v72] = v90;
  swift_endAccess();

  return v17;
}

id MedicalRecordChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalRecordChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D11F8AB0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D11F8B2C(v6);
  return sub_1D13912BC();
}

void sub_1D11F8B2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D106F934(0, &qword_1EC60D440);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D11F8E60(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D11F8C40(0, v2, 1, a1);
  }
}

void sub_1D11F8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 date];
      sub_1D138D52C();

      v22 = [v20 date];
      v23 = v34;
      sub_1D138D52C();

      LOBYTE(v22) = sub_1D138D50C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D11F8E60(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1D1245848(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1D11F96D0((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D1245848(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1D12457BC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 date];
      v24 = v123;
      sub_1D138D52C();

      v25 = [v22 date];
      v26 = v124;
      sub_1D138D52C();

      LODWORD(v121) = sub_1D138D50C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 date];
        v34 = v123;
        sub_1D138D52C();

        v35 = [v32 date];
        v36 = v124;
        sub_1D138D52C();

        LODWORD(v35) = sub_1D138D50C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1D10F7610(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1D10F7610((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1D11F96D0((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1D12457BC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 date];
    v53 = v123;
    sub_1D138D52C();

    v54 = [v51 date];
    v55 = v124;
    sub_1D138D52C();

    LOBYTE(v54) = sub_1D138D50C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1D11F96D0(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1D138D57C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 date];
        v41 = v54;
        sub_1D138D52C();

        v42 = [v39 date];
        v43 = v55;
        sub_1D138D52C();

        LOBYTE(v42) = sub_1D138D50C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 date];
        v21 = v54;
        sub_1D138D52C();

        v22 = [v19 date];
        v23 = v55;
        sub_1D138D52C();

        LOBYTE(v22) = sub_1D138D50C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

unint64_t sub_1D11F9B6C()
{
  result = qword_1EC60E3E0;
  if (!qword_1EC60E3E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60E3E0);
  }

  return result;
}

unint64_t sub_1D11F9BF0()
{
  result = qword_1EC60D430;
  if (!qword_1EC60D430)
  {
    sub_1D138D57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D430);
  }

  return result;
}

unint64_t sub_1D11F9C4C()
{
  result = qword_1EC60D438;
  if (!qword_1EC60D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D438);
  }

  return result;
}

uint64_t sub_1D11F9EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D11F9F88(unint64_t a1)
{
  sub_1D11FACF0(0, &qword_1EC609C78);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-v5];
  sub_1D11FAC98(0, &qword_1EC60D448, &qword_1EC609C78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = objc_autoreleasePoolPush();
  sub_1D108B3C8(a1, v12);
  objc_autoreleasePoolPop(v13);
  sub_1D11FAD3C(v12, v9, &qword_1EC60D448, &qword_1EC609C78);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v14 = 0;
  }

  else
  {
    sub_1D11FAE08(v9, v6, &qword_1EC609C78);
    v14 = sub_1D11FA198(v6);
    sub_1D11FA434(v6, &qword_1EC609C78);
  }

  sub_1D11FADAC(v12, &qword_1EC60D448, &qword_1EC609C78);
  return v14;
}

uint64_t sub_1D11FA198(uint64_t a1)
{
  sub_1D11FACF0(0, &qword_1EC609C78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = sub_1D1390ADC();

  v16 = xmmword_1D13A8DE0;
  sub_1D11FAB5C(a1, v6);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1D11FAE08(v6, v10 + v9, &qword_1EC609C78);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D11FABD0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1D1080D80;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_37;
  v12 = _Block_copy(aBlock);

  [v8 performAsCurrentTraitCollection_];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v14 = v16;
    sub_1D11FAC84(v16, *(&v16 + 1));
    sub_1D10847DC(v14, *(&v14 + 1));

    return v14;
  }

  return result;
}

uint64_t sub_1D11FA434(uint64_t a1, unint64_t *a2)
{
  sub_1D11FACF0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D11FA4D0(uint64_t *a1, uint64_t *a2)
{
  v54 = a2;
  sub_1D11FACF0(0, &qword_1EC60A400);
  v52 = *(v3 - 8);
  *&v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v45 - v4;
  sub_1D11FACF0(0, &qword_1EC60A408);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v6;
  sub_1D11FAC98(0, &qword_1EC60D450, &qword_1EC60A400);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - v10;
  sub_1D11FACF0(0, &qword_1EC60C5D8);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v45 - v14);
  sub_1D11FAC98(0, &qword_1EC60D458, &qword_1EC60A408);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  sub_1D11FAC98(0, &qword_1EC60D460, &qword_1EC60C5D8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v45 - v26);
  v28 = objc_autoreleasePoolPush();
  sub_1D11993F4(a1, v27);
  objc_autoreleasePoolPop(v28);
  sub_1D11FAD3C(v27, v24, &qword_1EC60D460, &qword_1EC60C5D8);
  if ((*(v13 + 48))(v24, 1, v12) == 1)
  {
    v30 = v48;
    v29 = v49;
    (*(v48 + 56))(v21, 1, 1, v49);
  }

  else
  {
    sub_1D11FAE08(v24, v15, &qword_1EC60C5D8);
    v31 = objc_autoreleasePoolPush();
    sub_1D12E9078(v15, v21);
    objc_autoreleasePoolPop(v31);
    sub_1D11FA434(v15, &qword_1EC60C5D8);
    v30 = v48;
    v29 = v49;
  }

  sub_1D11FAD3C(v21, v18, &qword_1EC60D458, &qword_1EC60A408);
  v32 = (*(v30 + 48))(v18, 1, v29);
  v33 = v51;
  if (v32 == 1)
  {
    v35 = v52;
    v34 = v53;
    (*(v52 + 56))(v51, 1, 1, v53);
  }

  else
  {
    v36 = v46;
    sub_1D11FAE08(v18, v46, &qword_1EC60A408);
    v37 = objc_autoreleasePoolPush();
    sub_1D10B150C(v36, v33);
    objc_autoreleasePoolPop(v37);
    sub_1D11FA434(v36, &qword_1EC60A408);
    v35 = v52;
    v34 = v53;
  }

  v38 = v50;
  sub_1D11FAD3C(v33, v50, &qword_1EC60D450, &qword_1EC60A400);
  if ((*(v35 + 48))(v38, 1, v34) == 1)
  {
    sub_1D11FADAC(v33, &qword_1EC60D450, &qword_1EC60A400);
    sub_1D11FADAC(v21, &qword_1EC60D458, &qword_1EC60A408);
    sub_1D11FADAC(v27, &qword_1EC60D460, &qword_1EC60C5D8);
    v39 = xmmword_1D13A8DE0;
  }

  else
  {
    v40 = v47;
    sub_1D11FAE08(v38, v47, &qword_1EC60A400);
    v41 = objc_autoreleasePoolPush();
    sub_1D12EDD54(v40, &v55);
    objc_autoreleasePoolPop(v41);
    sub_1D11FADAC(v33, &qword_1EC60D450, &qword_1EC60A400);
    sub_1D11FADAC(v21, &qword_1EC60D458, &qword_1EC60A408);
    sub_1D11FADAC(v27, &qword_1EC60D460, &qword_1EC60C5D8);
    v53 = v55;
    sub_1D11FA434(v40, &qword_1EC60A400);
    v39 = v53;
  }

  v42 = *v54;
  v43 = v54[1];
  *v54 = v39;
  return sub_1D10847DC(v42, v43);
}

uint64_t sub_1D11FAB5C(uint64_t a1, uint64_t a2)
{
  sub_1D11FACF0(0, &qword_1EC609C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D11FABD0()
{
  sub_1D11FACF0(0, &qword_1EC609C78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D11FA4D0((v0 + v3), v4);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D11FAC84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D1083D58(a1, a2);
  }

  return a1;
}

void sub_1D11FAC98(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D11FACF0(255, a3);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D11FACF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = _s7PDFDataVMa();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D11FAD3C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1D11FAC98(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D11FADAC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D11FAC98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D11FAE08(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D11FACF0(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D11FAEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1D1390F3C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v18 = &v31 - v17;
  v20 = *(v19 + 56);
  v21 = *(*(v14 - 8) + 16);
  v21(&v31 - v17, a1, v14, v16);
  (v21)(&v18[v20], a2, v14);
  v22 = *(v9 + 48);
  LODWORD(a2) = v22(v18, 1, a3);
  v23 = v22(&v18[v20], 1, a3);
  if (a2 != 1)
  {
    v26 = *(v9 + 32);
    if (v23 == 1)
    {
      v25 = v34;
      v26(v34, v18, a3);
    }

    else
    {
      v26(v13, v18, a3);
      v27 = &v18[v20];
      v28 = v31;
      v26(v31, v27, a3);
      v25 = v34;
      v33(v13, v28, a3, v32);
      v29 = *(v9 + 8);
      v29(v28, a3);
      v29(v13, a3);
    }

    goto LABEL_8;
  }

  if (v23 != 1)
  {
    v25 = v34;
    (*(v9 + 32))(v34, &v18[v20], a3);
LABEL_8:
    v24 = 0;
    return (*(v9 + 56))(v25, v24, 1, a3);
  }

  v24 = 1;
  v25 = v34;
  return (*(v9 + 56))(v25, v24, 1, a3);
}

uint64_t sub_1D11FB190()
{
  sub_1D10F3688(v0 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CategoryRecordQueryDescription()
{
  result = qword_1EE06B1D0;
  if (!qword_1EE06B1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11FB258()
{
  result = type metadata accessor for BrowseCategory();
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

uint64_t sub_1D11FB2F4()
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D11FB37C()
{
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  return sub_1D1390D9C();
}

uint64_t sub_1D11FB3EC()
{
  sub_1D139177C();
  v1 = *v0;
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D11FB47C()
{
  v0 = BrowseCategory.rawValue.getter();
  v2 = v1;
  if (v0 == BrowseCategory.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_1D139162C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D10C94AC();
  return sub_1D1390D8C() & 1;
}

unint64_t sub_1D11FB550()
{
  result = qword_1EE06B1E0;
  if (!qword_1EE06B1E0)
  {
    type metadata accessor for CategoryRecordQueryDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B1E0);
  }

  return result;
}

uint64_t Result<>.init(success:failureOrNil:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    *a4 = a2;
  }

  else
  {
    (*(*(a3 - 8) + 32))(a4, a1, a3);
  }

  sub_1D10922EC();
  sub_1D13917DC();

  return swift_storeEnumTagMultiPayload();
}

uint64_t Result<>.init(successOrNil:failureOrNil:fallbackFailure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1D1390F3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v11 + 8))(a1, v10, v16);

    *a5 = a2;
    sub_1D10922EC();
    sub_1D13917DC();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10, v16);
    if ((*(v14 + 48))(v13, 1, a4) == 1)
    {
      (*(v11 + 8))(v13, v10);
      *a5 = a3;
    }

    else
    {

      v20 = *(v14 + 32);
      v20(v18, v13, a4);
      v20(a5, v18, a4);
    }

    sub_1D10922EC();
    sub_1D13917DC();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t ResultError.hashValue.getter()
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](0);
  return sub_1D13917CC();
}

unint64_t sub_1D11FB9E0()
{
  result = qword_1EC60D468;
  if (!qword_1EC60D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D468);
  }

  return result;
}

uint64_t sub_1D11FBA44()
{
  v1 = v0;
  v2 = sub_1D138E52C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  v9 = v0[8];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v45 = type metadata accessor for RecordCell();
    v44 = v0[6];
    v43 = (v3 + 16);
    v42 = v3 + 8;
    v41 = v3 + 32;
    v39[1] = v9;

    v12 = MEMORY[0x1E69E7CC0];
    v13 = 1;
    v40 = xmmword_1D139E700;
    v51 = MEMORY[0x1E69E7CC0];
    v49 = v0;
    v48 = v2;
    v47 = v3;
    v46 = v5;
    do
    {
      v50 = v12;
      sub_1D1072E70(v11, v53);
      sub_1D11FC834(v53, v13 & 1, v56);
      sub_1D1072E70(v53, v52);
      v14 = v8;
      v15 = type metadata accessor for RecordItem();
      v16 = swift_allocObject();
      sub_1D11FD298(&qword_1EC60D498, 255, type metadata accessor for RecordCell);
      v17 = v44;
      v16[8] = sub_1D138DECC();
      v16[9] = v18;
      sub_1D102CC18(v52, (v16 + 2));
      v16[7] = v17;
      sub_1D11FC610(0, &qword_1EC60B640, &qword_1EC60F6A0, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      *(v19 + 16) = v40;
      *(v19 + 56) = v15;
      *(v19 + 64) = sub_1D11FD298(&qword_1EC60D4B0, 255, type metadata accessor for RecordItem);
      *(v19 + 32) = v16;
      v21 = v54;
      v20 = v55;
      __swift_project_boxed_opaque_existential_1Tm(v53, v54);
      v22 = *(v20 + 56);

      v23 = v21;
      v8 = v14;
      *&v52[0] = v22(v23, v20);
      *(&v52[0] + 1) = v24;

      MEMORY[0x1D3885C10](1835365449, 0xE400000000000000);

      sub_1D138E50C();

      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1D10F925C(0, *(v51 + 2) + 1, 1, v51);
      }

      v12 = v50;
      v26 = *(v51 + 2);
      v25 = *(v51 + 3);
      v1 = v49;
      v27 = v48;
      v28 = v47;
      v29 = v46;
      if (v26 >= v25 >> 1)
      {
        v51 = sub_1D10F925C((v25 > 1), v26 + 1, 1, v51);
      }

      v30 = v51;
      *(v51 + 2) = v26 + 1;
      v31 = &v30[72 * v26];
      *(v31 + 2) = v56[0];
      v32 = v56[1];
      v33 = v56[2];
      v34 = v56[3];
      v31[96] = v57;
      *(v31 + 4) = v33;
      *(v31 + 5) = v34;
      *(v31 + 3) = v32;
      (*v43)(v29, v8, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D10F8858(0, v12[2] + 1, 1, v12);
      }

      v36 = v12[2];
      v35 = v12[3];
      if (v36 >= v35 >> 1)
      {
        v12 = sub_1D10F8858(v35 > 1, v36 + 1, 1, v12);
      }

      (*(v28 + 8))(v8, v27);
      v12[2] = v36 + 1;
      (*(v28 + 32))(v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v36, v29, v27);
      v13 = 0;
      v11 += 40;
      --v10;
    }

    while (v10);

    v37 = sub_1D110B2C0(v51);

    v1[7] = v37;

    sub_1D138E0FC();
    sub_1D138E58C();
  }

  else
  {
    v0[7] = MEMORY[0x1E69E7CC0];
  }

  return sub_1D1287820(*(v1[8] + 16) == 0);
}

void *RecordDataSource.init(recordPublisher:profile:)(void *a1, void *a2)
{
  v21 = MEMORY[0x1E69E8050];
  sub_1D11FC678(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  sub_1D11FC488();
  v22 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  v2[7] = MEMORY[0x1E69E7CC0];
  v2[8] = v12;
  v2[9] = 0;
  v2[5] = a1;
  v2[6] = a2;
  v20[1] = a1;
  sub_1D11FC678(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D139E700;

  v20[0] = a2;
  sub_1D138E50C();
  v14 = ConceptsDataSource.init(arrangedSections:isHidden:)(v13, 0);
  v24 = v14[5];
  sub_1D108310C();
  swift_retain_n();

  v15 = sub_1D1390A7C();
  v23 = v15;
  v16 = sub_1D1390A2C();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1D11FC57C();
  sub_1D11FD298(&qword_1EC60D488, 255, sub_1D11FC57C);
  sub_1D11FD298(&qword_1EE06A610, 255, sub_1D108310C);
  sub_1D138F8BC();
  sub_1D11FD228(v7, &qword_1EE06A620, v21);

  swift_allocObject();
  swift_weakInit();
  sub_1D11FD298(&qword_1EC60D490, 255, sub_1D11FC488);
  v17 = v22;
  v18 = sub_1D138F90C();

  (*(v9 + 8))(v11, v17);
  v14[9] = v18;

  sub_1D1287820(1);

  return v14;
}

void sub_1D11FC488()
{
  if (!qword_1EC60D470)
  {
    sub_1D11FC57C();
    sub_1D108310C();
    sub_1D11FD298(&qword_1EC60D488, 255, sub_1D11FC57C);
    sub_1D11FD298(&qword_1EE06A610, 255, sub_1D108310C);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D470);
    }
  }
}

void sub_1D11FC57C()
{
  if (!qword_1EC60D478)
  {
    sub_1D11FC610(255, &qword_1EC60D480, &qword_1EC60AEB0, &protocol descriptor for TestResultRepresentable, MEMORY[0x1E69E62F8]);
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D478);
    }
  }
}

void sub_1D11FC610(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1080EA4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D11FC678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11FC6DC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = v1;

    sub_1D11FBA44();
  }

  return result;
}

uint64_t sub_1D11FC760()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D11FC834@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  sub_1D11FC678(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v11 = sub_1D138D1CC();
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  (*(v15 + 32))(v14, v15);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D11FD228(v7, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v16 = v11;
  }

  else
  {

    v17 = v36;
    (*(v9 + 32))(v36, v7, v8);
    v18 = [*(v37 + 48) utcDateFormatter];
    v19 = [v18 monthDayYearFormatter];

    v20 = sub_1D138D4EC();
    v21 = [v19 stringFromDate_];

    v16 = sub_1D139016C();
    v13 = v22;

    (*(v9 + 8))(v17, v8);
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v23);
  v25 = (*(v24 + 48))(v23, v24);
  v27 = v26;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v28);
  v39 = (*(v29 + 56))(v28, v29);
  v40 = v30;

  MEMORY[0x1D3885C10](0x726564616548, 0xE600000000000000);

  v32 = v39;
  v33 = v40;
  v34 = v38 & 1;
  *a3 = 0xD00000000000001BLL;
  *(a3 + 8) = 0x80000001D13C37B0;
  *(a3 + 16) = v16;
  *(a3 + 24) = v13;
  *(a3 + 32) = v25;
  *(a3 + 40) = v27;
  *(a3 + 48) = v32;
  *(a3 + 56) = v33;
  *(a3 + 64) = v34;
  return result;
}

uint64_t sub_1D11FCC3C()
{
}

uint64_t RecordDataSource.deinit()
{

  return v0;
}

uint64_t RecordDataSource.__deallocating_deinit()
{
  RecordDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RecordDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for RecordCell();
  sub_1D11FD298(&qword_1EC60D498, 255, type metadata accessor for RecordCell);
  sub_1D13908AC();
  type metadata accessor for RecordTitleWithSubtitleView();
  sub_1D11FD298(&qword_1EC60D4A0, 255, type metadata accessor for RecordTitleWithSubtitleView);
  sub_1D13908CC();
}

uint64_t sub_1D11FCE2C()
{
  type metadata accessor for RecordCell();
  sub_1D11FD298(&qword_1EC60D498, 255, type metadata accessor for RecordCell);
  sub_1D13908AC();
  type metadata accessor for RecordTitleWithSubtitleView();
  sub_1D11FD298(&qword_1EC60D4A0, 255, type metadata accessor for RecordTitleWithSubtitleView);
  return sub_1D13908CC();
}

uint64_t RecordDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (!*(*(v1 + 56) + 16))
  {
    if (qword_1EE06AD00 == -1)
    {
LABEL_8:
      sub_1D138D1CC();
      sub_1D138F37C();
      v13 = sub_1D138DE3C();
      swift_allocObject();
      v14 = sub_1D138DE1C();
      a1[3] = v13;
      result = sub_1D11FD298(&qword_1EC60B610, 255, MEMORY[0x1E69A34C8]);
      a1[4] = result;
      *a1 = v14;
      return result;
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  v4 = sub_1D138D81C();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + 56);
  if (v4 >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = (v5 + 40 * v4);
  v7 = v6[7];
  v8 = v6[8];
  v9 = __swift_project_boxed_opaque_existential_1Tm(v6 + 4, v7);
  a1[3] = v7;
  a1[4] = *(v8 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v11 = *(*(v7 - 8) + 16);

  return v11(boxed_opaque_existential_1, v9, v7);
}

uint64_t sub_1D11FD228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D11FC678(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D11FD298(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id OnboardingTileViewController.__allocating_init(with:sourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_profile] = a1;
  v8 = &v7[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_initWithStyle_, 1);
}

id OnboardingTileViewController.init(with:sourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_profile] = a1;
  v4 = &v3[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for OnboardingTileViewController();
  return objc_msgSendSuper2(&v6, sel_initWithStyle_, 1);
}

void sub_1D11FD438()
{
  v1 = type metadata accessor for OnboardingTileViewController();
  v21.receiver = v0;
  v21.super_class = v1;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  if (qword_1EE06AD08 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v2 = sub_1D139012C();

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v20[8] = sub_1D112AD3C();
  v20[3] = v1;
  v20[0] = v0;
  v4 = v0;
  v5 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v20, sel_tapToRadar_);
  sub_1D1096BE0(v20);
  v6 = 0;
  v20[9] = v5;
  v20[0] = MEMORY[0x1E69E7CC0];
  while (v6 != 2)
  {
    v7 = v20[v6++ + 8];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D3885D90]();
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D11CE18C();
  swift_arrayDestroy();
  sub_1D106F934(0, &qword_1EC609A90);
  v9 = sub_1D139044C();

  [v3 setRightBarButtonItems_];

  v10 = [v4 tableView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 _setSectionContentInset_];

  v12 = [v4 tableView];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  [v12 _setSectionCornerRadius_];

  v14 = [v4 tableView];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  type metadata accessor for OnboardingTableViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = sub_1D139012C();
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [v4 tableView];
  if (v18)
  {
    v19 = v18;
    [v18 reloadData];

    return;
  }

LABEL_17:
  __break(1u);
}

id OnboardingTileViewController.__allocating_init(usingInsetStyling:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithUsingInsetStyling_];
}

id OnboardingTileViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id OnboardingTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D11FDE60()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_profile);
  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier + 8);
  v4 = type metadata accessor for OnboardingTableViewCell(0);
  v5 = objc_allocWithZone(v4);
  *&v5[qword_1EC60FD40] = v1;
  v6 = &v5[qword_1EC60FD48];
  *v6 = v3;
  *(v6 + 1) = v2;

  v7 = v1;
  v8 = sub_1D139012C();
  v12.receiver = v5;
  v12.super_class = v4;
  v9 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, 0, v8);

  v10 = v9;
  sub_1D1359618();

  return v10;
}

uint64_t PluginFeedItem.updateHideInDiscover(using:)(void *a1)
{
  v1 = sub_1D11FDFA0(a1);

  return MEMORY[0x1EEE0EF08](v1);
}

uint64_t sub_1D11FDFA0(void *a1)
{
  sub_1D11FE190();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138DA1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D138D9FC();
  sub_1D138DA3C();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D11FE1E8(v4);
    return 2;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_1D138D9CC())
    {
      (*(v6 + 8))(v8, v5);
      return 0;
    }

    else
    {
      v10 = sub_1D138D9DC();
      (*(v6 + 8))(v8, v5);
      return v10;
    }
  }
}

void sub_1D11FE190()
{
  if (!qword_1EE06B4F0)
  {
    sub_1D138DA1C();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B4F0);
    }
  }
}

uint64_t sub_1D11FE1E8(uint64_t a1)
{
  sub_1D11FE190();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D11FE244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D11FE28C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D11FE304()
{
  sub_1D138FBCC();
  sub_1D1200380(0);
  sub_1D1200B80(&qword_1EC60D590, sub_1D1200380, sub_1D1200A28);
  return sub_1D138F94C();
}

uint64_t sub_1D11FE3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  sub_1D1200CC4(0, &qword_1EC60D5C8, MEMORY[0x1E697F948]);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = sub_1D138F98C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1D1200418();
  v11 = v10;
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(a1 + 8);
  sub_1D120085C(0, &qword_1EC60D4F0, sub_1D11FFB88, MEMORY[0x1E6981790]);
  sub_1D138FDBC();
  if (v44)
  {
    *&v51 = v44;
    swift_getKeyPath();
    (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v7);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    (*(v8 + 32))(v15 + v14, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_1D113E54C(0);
    sub_1D120051C();
    sub_1D12010A4(&qword_1EC60D548, sub_1D113E54C);
    sub_1D12010A4(&qword_1EC60D550, sub_1D113E5E4);
    sub_1D1200B38();
    sub_1D138FE3C();
    v16 = v31;
    (*(v31 + 16))(v6, v13, v11);
    swift_storeEnumTagMultiPayload();
    sub_1D1200794();
    sub_1D1200B80(&qword_1EC60D5A0, sub_1D1200418, sub_1D1200B38);
    sub_1D12010A4(&qword_1EC60D5C0, sub_1D1200794);
    v17 = v33;
    sub_1D138FB8C();
    (*(v16 + 8))(v13, v11);
    sub_1D1200CC4(0, &qword_1EC60D500, MEMORY[0x1E697F960]);
    return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  v51 = *(a1 + 24);
  *&v52 = *(a1 + 40);
  sub_1D11FFD08(0, &qword_1EC60D4E8, MEMORY[0x1E6981790]);
  sub_1D138FDBC();
  v20 = v33;
  if (*(&v44 + 1))
  {
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v21 = sub_1D138FACC();
      v43 = 1;
      sub_1D11FEE18(&v35);
      v48 = v39;
      v49 = v40;
      v50[0] = v41[0];
      *(v50 + 9) = *(v41 + 9);
      v44 = v35;
      v45 = v36;
      v46 = v37;
      v47 = v38;
      v51 = v35;
      v52 = v36;
      v53 = v37;
      v54 = v38;
      v55 = v39;
      v56 = v40;
      v57[0] = v41[0];
      *(v57 + 9) = *(v41 + 9);
      sub_1D11FFC64(&v44, &v34, sub_1D1200828);
      sub_1D1200D34(&v51, sub_1D1200828);

      *(&v42[4] + 7) = v48;
      *(&v42[5] + 7) = v49;
      *(&v42[6] + 7) = v50[0];
      v42[7] = *(v50 + 9);
      *(v42 + 7) = v44;
      *(&v42[1] + 7) = v45;
      *(&v42[2] + 7) = v46;
      *(&v42[3] + 7) = v47;
      v22 = v42[5];
      *(v6 + 81) = v42[4];
      *(v6 + 97) = v22;
      v23 = v42[7];
      *(v6 + 113) = v42[6];
      *(v6 + 129) = v23;
      v24 = v42[1];
      *(v6 + 17) = v42[0];
      *(v6 + 33) = v24;
      v25 = v42[3];
      *(v6 + 49) = v42[2];
      v26 = v43;
      *v6 = v21;
      *(v6 + 1) = 0;
      v6[16] = v26;
      *(v6 + 65) = v25;
      swift_storeEnumTagMultiPayload();
      sub_1D1200794();
      sub_1D1200B80(&qword_1EC60D5A0, sub_1D1200418, sub_1D1200B38);
      sub_1D12010A4(&qword_1EC60D5C0, sub_1D1200794);
      sub_1D138FB8C();
      sub_1D1200CC4(0, &qword_1EC60D500, MEMORY[0x1E697F960]);
      return (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
    }
  }

  sub_1D1200CC4(0, &qword_1EC60D500, MEMORY[0x1E697F960]);
  return (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
}

__n128 sub_1D11FEB90@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138FD8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D138F97C();
  v7 = sub_1D10838F8(v6 + -60.0);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D138FB4C();
    LOBYTE(v44) = 1;
    v10 = v8;
    sub_1D138FD7C();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v11 = sub_1D138FD9C();

    (*(v3 + 8))(v5, v2);
    v12 = sub_1D138FBDC();
    sub_1D138F92C();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    LOBYTE(v36) = 1;
    v35[0] = 0;
    v21 = v44;
    v22 = sub_1D138FBDC();
    sub_1D138F92C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v36 = v9;
    v37.n128_u8[0] = v21;
    v37.n128_u64[1] = v11;
    *&v38 = 0;
    WORD4(v38) = 257;
    LOBYTE(v39) = v12;
    *(&v39 + 1) = v14;
    *&v40 = v16;
    *(&v40 + 1) = v18;
    *&v41 = v20;
    BYTE8(v41) = 0;
    LOBYTE(v42) = v22;
    *(&v42 + 1) = v24;
    *&v43[0] = v26;
    *(&v43[0] + 1) = v28;
    *&v43[1] = v30;
    BYTE8(v43[1]) = 0;
    nullsub_1(&v36);
    v50 = v42;
    v51[0] = v43[0];
    *(v51 + 9) = *(v43 + 9);
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v44 = v36;
    v45 = v37;
  }

  else
  {
    sub_1D1200E14(&v44);
  }

  v31 = v51[0];
  *(a1 + 96) = v50;
  *(a1 + 112) = v31;
  *(a1 + 121) = *(v51 + 9);
  v32 = v47;
  *(a1 + 32) = v46;
  *(a1 + 48) = v32;
  v33 = v49;
  *(a1 + 64) = v48;
  *(a1 + 80) = v33;
  result = v45;
  *a1 = v44;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D11FEE18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138FB1C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D138FB0C();
  sub_1D138FAFC();
  sub_1D138FAEC();
  sub_1D138FAFC();
  sub_1D138FB3C();
  v3 = sub_1D138FCDC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_1D138FBDC();
  sub_1D138F92C();
  v23 = 1;
  *&v27 = v3;
  *(&v27 + 1) = v5;
  LOBYTE(v28) = v7 & 1;
  DWORD1(v28) = *&v26[3];
  *(&v28 + 1) = *v26;
  *(&v28 + 1) = v9;
  *&v29 = KeyPath;
  BYTE8(v29) = 1;
  HIDWORD(v29) = *&v25[3];
  *(&v29 + 9) = *v25;
  LOBYTE(v30) = v11;
  DWORD1(v30) = *&v24[3];
  *(&v30 + 1) = *v24;
  *(&v30 + 1) = v12;
  *&v31[0] = v13;
  *(&v31[0] + 1) = v14;
  *&v31[1] = v15;
  BYTE8(v31[1]) = 0;
  *(&v22[1] + 7) = v28;
  *(v22 + 7) = v27;
  v22[5] = *(v31 + 9);
  *(&v22[4] + 7) = v31[0];
  *(&v22[3] + 7) = v30;
  *(&v22[2] + 7) = v29;
  v21[96] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v16 = v22[0];
  *(a1 + 25) = v22[1];
  *(a1 + 9) = v16;
  v17 = v22[2];
  v18 = v22[3];
  v19 = v22[4];
  *(a1 + 89) = v22[5];
  *(a1 + 73) = v19;
  *(a1 + 57) = v18;
  *(a1 + 41) = v17;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  v32[0] = v3;
  v32[1] = v5;
  v33 = v7 & 1;
  *&v34[3] = *&v26[3];
  *v34 = *v26;
  v35 = v9;
  v36 = KeyPath;
  v37 = 1;
  *&v38[3] = *&v25[3];
  *v38 = *v25;
  v39 = v11;
  *&v40[3] = *&v24[3];
  *v40 = *v24;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v45 = 0;
  sub_1D11FFC64(&v27, v21, sub_1D120092C);
  return sub_1D1200D34(v32, sub_1D120092C);
}

uint64_t sub_1D11FF0C8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D120085C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4 - 8];
  v6 = sub_1D13905DC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v8 = *a1;
  v7 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = v7;
  v18 = *(a1 + 24);
  v17 = *(a1 + 40);
  sub_1D13905AC();
  v9 = v8;
  sub_1D11FFC64(&v20, v16, sub_1D11FFB88);
  sub_1D11FFBBC(&v19, v16, &unk_1EC60D4C8, sub_1D11FFC30, v2, sub_1D120085C);
  sub_1D11FFBBC(&v18, v16, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D12009D8);
  sub_1D11FFC64(&v17, v16, sub_1D11FFCCC);
  v10 = sub_1D139059C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  *(v11 + 64) = *(a1 + 32);
  sub_1D107877C(0, 0, v5, &unk_1D13A9198, v11);
}

uint64_t sub_1D11FF30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[18] = a4;
  v6 = sub_1D138F0BC();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = sub_1D13905AC();
  v4[23] = sub_1D139059C();
  v8 = a4[1];
  v7 = a4[2];
  v9 = *a4;
  v10 = swift_task_alloc();
  v4[24] = v10;
  *v10 = v4;
  v10[1] = sub_1D11FF430;

  return sub_1D11FFE3C(v9, v8, v7);
}

uint64_t sub_1D11FF430()
{
  *(*v1 + 200) = v0;

  v3 = sub_1D139055C();
  if (v0)
  {
    v4 = sub_1D11FF5F4;
  }

  else
  {
    v4 = sub_1D11FF58C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D11FF58C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D11FF5F4()
{
  v27 = v0;
  v1 = *(v0 + 200);

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v0 + 136) = v5;
    v11 = v5;
    sub_1D10922EC();
    v12 = sub_1D13901EC();
    v14 = sub_1D11DF718(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v3, v4, "Failed to generate QR code CIImages with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 200);
  v19 = *(v0 + 144);
  swift_getErrorValue();
  v20 = sub_1D13916FC();
  *(v0 + 40) = *(v19 + 24);
  v21 = *(v19 + 40);
  v22 = *(v19 + 24);
  *(v0 + 112) = v21;
  *(v0 + 64) = v22;
  *(v0 + 56) = v21;
  *(v0 + 80) = v20;
  *(v0 + 88) = v23;
  sub_1D11FFBBC(v0 + 64, v0 + 96, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D12009D8);
  sub_1D11FFC64(v0 + 112, v0 + 128, sub_1D11FFCCC);
  sub_1D11FFD08(0, &qword_1EC60D4E8, MEMORY[0x1E6981790]);
  sub_1D138FDCC();

  sub_1D12002F8(v0 + 64);
  sub_1D1200D34(v0 + 112, sub_1D11FFCCC);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D11FF8DC@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 40);
  v16 = *(v1 + 16);
  v5 = v16;
  v17 = v4;
  v19 = *(v1 + 24);
  v18 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = *(v1 + 24);
  *(v7 + 56) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = *(v1 + 24);
  *(v8 + 56) = v6;
  *a1 = sub_1D11FFB20;
  a1[1] = v7;
  a1[2] = sub_1D11FFB80;
  a1[3] = v8;
  a1[4] = 0;
  a1[5] = 0;
  v9 = v3;
  sub_1D11FFC64(&v17, v15, sub_1D11FFB88);
  v10 = MEMORY[0x1E69E6720];
  sub_1D11FFBBC(&v16, v15, &unk_1EC60D4C8, sub_1D11FFC30, MEMORY[0x1E69E6720], sub_1D120085C);
  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69E6720];
  sub_1D11FFBBC(&v19, v15, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1D12009D8);
  sub_1D11FFC64(&v18, v15, sub_1D11FFCCC);
  v13 = v9;
  sub_1D11FFC64(&v17, v15, sub_1D11FFB88);
  sub_1D11FFBBC(&v16, v15, &unk_1EC60D4C8, sub_1D11FFC30, v10, sub_1D120085C);
  sub_1D11FFBBC(&v19, v15, &qword_1EE06A660, v11, v12, sub_1D12009D8);
  return sub_1D11FFC64(&v18, v15, sub_1D11FFCCC);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D11FFBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D11FFC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D11FFD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D12009D8(255, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D11FFD8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D108077C;

  return sub_1D11FF30C(a1, v4, v5, v1 + 4);
}

uint64_t sub_1D11FFE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1D13905AC();
  v3[11] = sub_1D139059C();
  v5 = sub_1D139055C();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D11FFED8, v5, v4);
}

uint64_t sub_1D11FFED8()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = *(v0 + 80);
  sub_1D120085C(0, &qword_1EC60D4F0, sub_1D11FFB88, MEMORY[0x1E6981790]);
  *(v0 + 112) = v1;

  sub_1D138FDBC();
  if (*(v0 + 48))
  {

LABEL_3:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = [*(v0 + 64) QRRepresentation];
  *(v0 + 120) = v4;
  if (!v4)
  {

    goto LABEL_3;
  }

  v5 = v4;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1D12000A4;

  return sub_1D1083E00(v5);
}

uint64_t sub_1D12000A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1D1200288;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1D12001D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D12001D8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[9];

  v0[4] = v4;
  v0[5] = v3;
  v0[7] = v1;
  sub_1D138FDCC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1200288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D12002F8(uint64_t a1)
{
  sub_1D12009D8(0, &qword_1EE06A660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D12003BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D1390F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1200418()
{
  if (!qword_1EC60D508)
  {
    sub_1D113E54C(255);
    sub_1D113E5E4();
    sub_1D120051C();
    sub_1D12010A4(&qword_1EC60D548, sub_1D113E54C);
    sub_1D12010A4(&qword_1EC60D550, sub_1D113E5E4);
    v0 = sub_1D138FE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D508);
    }
  }
}

void sub_1D120051C()
{
  if (!qword_1EC60D510)
  {
    sub_1D1200F04(255, &qword_1EC60D518, sub_1D1200598);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D510);
    }
  }
}

void sub_1D1200598()
{
  if (!qword_1EC60D520)
  {
    sub_1D1200F04(255, &qword_1EC60D528, sub_1D1200620);
    sub_1D1200678();
    v0 = sub_1D138FE2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D520);
    }
  }
}

void sub_1D1200620()
{
  if (!qword_1EC60D530)
  {
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D530);
    }
  }
}

unint64_t sub_1D1200678()
{
  result = qword_1EC60D538;
  if (!qword_1EC60D538)
  {
    sub_1D1200F04(255, &qword_1EC60D528, sub_1D1200620);
    sub_1D120071C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D538);
  }

  return result;
}

unint64_t sub_1D120071C()
{
  result = qword_1EC60D540;
  if (!qword_1EC60D540)
  {
    sub_1D1200620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D540);
  }

  return result;
}

void sub_1D1200794()
{
  if (!qword_1EC60D558)
  {
    sub_1D1200828(255);
    sub_1D12010A4(&qword_1EC60D588, sub_1D1200828);
    v0 = sub_1D138FDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D558);
    }
  }
}

void sub_1D120085C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D12008C0()
{
  if (!qword_1EC60D568)
  {
    sub_1D120092C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC60D568);
    }
  }
}

void sub_1D1200954()
{
  if (!qword_1EC60D578)
  {
    sub_1D12009D8(255, &qword_1EC60D580, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1D138FA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D578);
    }
  }
}

void sub_1D12009D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D1200A28()
{
  result = qword_1EC60D598;
  if (!qword_1EC60D598)
  {
    sub_1D1200CC4(255, &qword_1EC60D500, MEMORY[0x1E697F960]);
    sub_1D1200B80(&qword_1EC60D5A0, sub_1D1200418, sub_1D1200B38);
    sub_1D12010A4(&qword_1EC60D5C0, sub_1D1200794);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D598);
  }

  return result;
}

uint64_t sub_1D1200B80(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}