uint64_t sub_190C9692C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = _s11ContentViewVMa_8();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v4;
  v42 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = _s10StatusViewVMa();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EF0);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v39 = v29 - v13;
  sub_190D56320();
  _s9ViewModelCMa_5();
  sub_190C97ABC(&qword_1EAD45CD0, _s9ViewModelCMa_5);
  sub_190D56340();
  v14 = *(v9 + 20);
  if (qword_1EAD52090 != -1)
  {
    swift_once();
  }

  v15 = _s10StyleGuideVMa_0();
  v16 = __swift_project_value_buffer(v15, qword_1EAD9E6C0);
  sub_190C97EE0(v16, &v11[v14], _s10StyleGuideVMa_0);
  *&v11[*(v9 + 24)] = 0;
  sub_190D56320();

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  v17 = *(v6 + 8);
  v37 = v6 + 8;
  v38 = v17;
  v18 = (v17)(v8, v5);
  v32 = v29;
  v29[1] = v46;
  v29[0] = v47;
  v30 = v48;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v33 = v9;
  v31 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v20 = v11;
  v21 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
  v35 = sub_19081E484();
  v36 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v22 = v39;
  sub_190D55990();

  sub_190C97E80(v20, _s10StatusViewVMa);
  v23 = v31;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  v38(v8, v5);
  v24 = v42;
  sub_190C97EE0(v23, v42, _s11ContentViewVMa_8);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = swift_allocObject();
  sub_190C97F48(v24, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9B0);
  v46 = v33;
  v47 = MEMORY[0x1E69E6158];
  v48 = v34;
  v49 = MEMORY[0x1E6981148];
  v50 = v21;
  v51 = v35;
  v52 = v36;
  v53 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_190B98070();
  v27 = v44;
  sub_190D55B80();

  return (*(v43 + 8))(v22, v27);
}

uint64_t sub_190C9702C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61F50);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13[-v1];
  v3 = _s12VerifyButtonVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();
  v6 = [*(v14 + 16) isGroupConversation];

  if (v6)
  {
    swift_storeEnumTagMultiPayload();
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa);
    return sub_190D54C50();
  }

  else
  {
    sub_190D56320();
    *v5 = v14;
    v8 = *(v3 + 20);
    if (qword_1EAD52090 != -1)
    {
      swift_once();
    }

    v9 = _s10StyleGuideVMa_0();
    v10 = __swift_project_value_buffer(v9, qword_1EAD9E6C0);
    sub_190C97EE0(v10, v5 + v8, _s10StyleGuideVMa_0);
    v11 = v5 + *(v3 + 24);
    v13[15] = 0;
    sub_190D55FC0();
    v12 = v15;
    *v11 = v14;
    *(v11 + 1) = v12;
    sub_190C97EE0(v5, v2, _s12VerifyButtonVMa);
    swift_storeEnumTagMultiPayload();
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa);
    sub_190D54C50();
    return sub_190C97E80(v5, _s12VerifyButtonVMa);
  }
}

id sub_190C97310(uint64_t a1)
{
  v2 = _s11ContentViewVMa_8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  result = CKFrameworkBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_190D51210();
    v9 = v8;

    v12[0] = v7;
    v12[1] = v9;
    sub_190C97EE0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s11ContentViewVMa_8);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    sub_190C97F48(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    sub_19081E484();
    return sub_190D56080();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190C974C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();
  v0 = [*(v4 + 16) chat];
  [v0 ignoreKTFailure];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_190C97578@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();

  sub_19081E484();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190C975F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  sub_190D56320();
  v2 = *(v6 + 16);

  v3 = swift_allocObject();
  sub_190D56320();
  swift_weakInit();

  v4 = sub_190D552D0();
  result = sub_190D54240();
  *a1 = v2;
  *(a1 + 8) = sub_190B98164;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

unint64_t sub_190C976D4()
{
  result = qword_1EAD61F00;
  if (!qword_1EAD61F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EE8);
    sub_190C97760();
    sub_190C97B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F00);
  }

  return result;
}

unint64_t sub_190C97760()
{
  result = qword_1EAD61F08;
  if (!qword_1EAD61F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EE0);
    sub_190C97ABC(&qword_1EAD61F10, _s30EnableEnhancedProtectionButtonVMa);
    sub_190C9781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F08);
  }

  return result;
}

unint64_t sub_190C9781C()
{
  result = qword_1EAD61F18;
  if (!qword_1EAD61F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
    _s10StatusViewVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    sub_190B98070();
    swift_getOpaqueTypeConformance2();
    sub_190C97A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F18);
  }

  return result;
}

unint64_t sub_190C97A00()
{
  result = qword_1EAD61F20;
  if (!qword_1EAD61F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EA8);
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F20);
  }

  return result;
}

uint64_t sub_190C97ABC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C97B04()
{
  result = qword_1EAD61F30;
  if (!qword_1EAD61F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61E88);
    sub_190233640(&qword_1EAD61F38, &qword_1EAD61E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F30);
  }

  return result;
}

unint64_t sub_190C97BB4()
{
  result = qword_1EAD61F40;
  if (!qword_1EAD61F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0);
    _s10StatusViewVMa();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    sub_190B98070();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F40);
  }

  return result;
}

uint64_t sub_190C97D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190C97E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C97E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190C97EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190C97F48(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C97FAC@<X0>(uint64_t a1@<X8>)
{
  _s11ContentViewVMa_8();

  return sub_190C975F8(a1);
}

uint64_t objectdestroyTm_49()
{
  v1 = *(_s11ContentViewVMa_8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190C980F4()
{
  _s11ContentViewVMa_8();

  return sub_190C974C4();
}

unint64_t sub_190C98154()
{
  result = qword_1EAD61F58;
  if (!qword_1EAD61F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD61F60);
    sub_190C976D4();
    sub_190C97BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F58);
  }

  return result;
}

uint64_t sub_190C982E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  return *(v2 + *a2);
}

uint64_t sub_190C98384@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_190C98460(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
    sub_190D51C10();
  }

  return result;
}

id sub_190C98564(void *a1)
{
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__showingLeaveConversationConfirmation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__showingBlockSenderConfirmation] = 0;
  sub_190D51C50();
  v3 = [a1 shouldSendReadReceipts];
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts] = v3;
  v4 = [a1 isMuted];
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted] = v4;
  v5 = [a1 chat];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 participants];

  sub_1902188FC(0, &qword_1EAD44E70);
  v8 = sub_190D57180();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_190D581C0();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked] = 0;
LABEL_13:
    *&v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation] = a1;
    v15.receiver = v1;
    v15.super_class = type metadata accessor for BusinessDetailsViewModel(0);
    return objc_msgSendSuper2(&v15, sel_init);
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x193AF3B90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    v11 = v10;

    v12 = [objc_opt_self() sharedBlockList];
    v13 = [v11 ID];
    if (!v13)
    {
      sub_190D56F10();
      v13 = sub_190D56ED0();
    }

    v14 = [v12 addressIsBlocked_];

    v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked] = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id BusinessDetailsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BusinessDetailsViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BusinessDetailsViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C9892C()
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

void sub_190C98AB4()
{
  sub_190D52D20();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BusinessDetailsController();
    if (v1 <= 0x3F)
    {
      sub_190C98B74();
      if (v2 <= 0x3F)
      {
        sub_190C98BCC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190C98B74()
{
  if (!qword_1EAD61FD8)
  {
    type metadata accessor for BusinessDetailsViewModel(255);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD61FD8);
    }
  }
}

void sub_190C98BCC()
{
  if (!qword_1EAD61FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D9B0);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD61FE0);
    }
  }
}

void sub_190C98C4C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24);
    v3 = _s11ContentViewVMa_9(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62168);
    sub_190D55FD0();
    v4 = v10;
    if (v12)
    {
      v4 = v2;
    }

    v11 = v4;
    sub_190D55FE0();
    sub_190D55FD0();
    v5 = v11 - v2;
    if (v11 - v2 > 16.0)
    {
      v5 = 16.0;
    }

    v6 = v5 * 0.0625;
    v7 = *(v1 + *(v3 + 20));
    v8 = [v7 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress_];

    v9 = [v7 navigationItem];
    [v9 _setManualScrollEdgeAppearanceEnabled_];
  }
}

uint64_t sub_190C98DD0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = _s11ContentViewVMa_9(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (v1 + *(v7 + 36));
  v10 = *v8;
  v9 = v8[1];
  v20 = v10;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v11 = v19;
  v12 = *&v19[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_190B1CA5C(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  result = sub_190C9ECB0(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_190C9EC8C;
  v17[1] = v13;
  *a1 = sub_190C9ED14;
  a1[1] = v15;
  return result;
}

uint64_t sub_190C98F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v9 = _s11ContentViewVMa_9(0);
  v10 = *(v9 - 8);
  v65 = v9 - 8;
  v70 = v10;
  v69 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_190D54970();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D54DE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FF8);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62000);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v60 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62008);
  v26 = *(v25 - 8);
  v71 = v25;
  v72 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v60 - v27;
  v76 = a2;
  v77 = a3;
  v78 = a4;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62010);
  sub_190233640(&qword_1EAD62018, &qword_1EAD62010);
  sub_190D554D0();
  LOBYTE(a4) = sub_190D552C0();
  sub_190D539C0();
  v28 = &v19[*(v17 + 36)];
  *v28 = a4;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_190D54DD0();
  sub_190C9EDD0();
  sub_190D55C90();
  (*(v14 + 8))(v16, v13);
  sub_19022EEA4(v19, &qword_1EAD61FF0);
  v74 = a2;
  sub_190D52CC0();
  v33 = v62;
  sub_190D54960();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62038) + 36);
  v35 = v60;
  v36 = v63;
  (*(v60 + 16))(&v21[v34], v33, v63);
  v37 = *(v35 + 56);
  v37(&v21[v34], 0, 1, v36);
  KeyPath = swift_getKeyPath();
  v39 = v61;
  v40 = &v21[*(v61 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59400) + 28);
  (*(v35 + 32))(v40 + v41, v33, v36);
  v37(v40 + v41, 0, 1, v36);
  *v40 = KeyPath;
  v42 = sub_190C9EFF8();
  v43 = v39;
  sub_190D55AB0();
  sub_19022EEA4(v21, &qword_1EAD61FF8);
  v44 = v74;
  v45 = (v74 + *(v65 + 36));
  v47 = *v45;
  v46 = v45[1];
  v65 = v47;
  v63 = v46;
  v80 = v47;
  v81 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v48 = v84;
  swift_getKeyPath();
  v80 = v48;
  v62 = sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  LOBYTE(v19) = v48[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted];

  LOBYTE(v84) = v19;
  v49 = v68;
  sub_190B1CA5C(v44, v68);
  v50 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v51 = swift_allocObject();
  sub_190C9ECB0(v49, v51 + v50);
  v80 = v43;
  v81 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v64;
  v54 = v66;
  v55 = v75;
  sub_190D55C30();

  (*(v67 + 8))(v55, v54);
  v80 = v65;
  v81 = v63;
  sub_190D55FD0();
  v56 = v84;
  swift_getKeyPath();
  v80 = v56;
  sub_190D51C20();

  LOBYTE(KeyPath) = v56[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts];

  LOBYTE(v84) = KeyPath;
  sub_190B1CA5C(v74, v49);
  v57 = swift_allocObject();
  sub_190C9ECB0(v49, v57 + v50);
  v80 = v54;
  v81 = MEMORY[0x1E69E6370];
  v82 = OpaqueTypeConformance2;
  v83 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v58 = v71;
  sub_190D55C30();

  return (*(v72 + 8))(v53, v58);
}

id sub_190C99820@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v131 = a5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62060);
  v127 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = &v112 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62068);
  MEMORY[0x1EEE9AC00](v132);
  v133 = &v112 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62070);
  v116 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v115 = &v112 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62078);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v112 - v15;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62080);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v142 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v112 - v18;
  v125 = sub_190D52990();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v114 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v117 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v112 - v23;
  v124 = sub_190D524B0();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62090);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v112 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62098);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v141 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v112 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A8);
  v128 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v112 - v39;
  v148 = a1;
  v149 = a2;
  v137 = a2;
  v136 = a3;
  v150 = a3;
  sub_190C9B41C(a1, a4, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620B0);
  sub_190C9F398();
  sub_190233640(&qword_1EAD620F8, &qword_1EAD620B0);
  v138 = v40;
  sub_190D562C0();
  v41 = *(_s11ContentViewVMa_9(0) + 28);
  v146 = a1;
  v42 = (a1 + v41);
  v43 = *v42;
  v44 = v42[1];
  v155 = *v42;
  v156 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v45 = v151;
  v46 = *&v151[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v47 = [v46 businessHandle];
  if (v47 && (v48 = [v47 brand], v47, v48) && (v49 = objc_msgSend(v48, sel_brand), v48, v49))
  {
    v113 = v49;
    v50 = v120;
    sub_190D524A0();
    v51 = v121;
    sub_190D52D00();
    v52 = v117;
    sub_19022FD14(v51, v117, &qword_1EAD58E80);
    v53 = v122;
    v54 = v125;
    if ((*(v122 + 48))(v52, 1, v125) == 1)
    {

      sub_19022EEA4(v51, &qword_1EAD58E80);
      v55 = 0;
    }

    else
    {
      (*(v53 + 32))(v114, v52, v54);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
      v55 = sub_190D561E0();

      sub_19022EEA4(v51, &qword_1EAD58E80);
    }

    v58 = v119;
    (*(v123 + 32))(v119, v50, v124);
    *&v58[*(v25 + 36)] = v55;
    v59 = v58;
    v60 = v118;
    sub_19081E40C(v59, v118, &qword_1EAD62090);
    v57 = v144;
    sub_19081E40C(v60, v144, &qword_1EAD62090);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v57 = v144;
  }

  v61 = (*(v26 + 56))(v57, v56, 1, v25);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v137;
  v63 = v136;
  *(&v112 - 4) = v137;
  *(&v112 - 3) = v63;
  *(&v112 - 2) = v146;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100);
  v65 = sub_190C9F58C();
  v66 = sub_190D562E0();
  v67 = v62(v66);
  if ((v67 & 1) == 0 || (v155 = v43, v156 = v44, sub_190D55FD0(), v68 = v151, v69 = *&v151[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation], v68, v70 = [v69 chat], v69, !v70))
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v67);
    *(&v112 - 2) = v146;
    result = CKFrameworkBundle();
    if (result)
    {
      v81 = result;
      v82 = sub_190D56ED0();
      v83 = sub_190D56ED0();
      v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

      v85 = sub_190D56F10();
      v87 = v86;

      v155 = v85;
      v156 = v87;
      sub_19081E484();
      v155 = sub_190D555F0();
      v156 = v88;
      v157 = v89 & 1;
      v158 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62118);
      v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0);
      v92 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
      v151 = v64;
      v152 = v91;
      v153 = v65;
      v154 = v92;
      swift_getOpaqueTypeConformance2();
      v93 = v126;
      sub_190D562F0();
      v94 = v127;
      v95 = v135;
      (*(v127 + 16))(v133, v93, v135);
      swift_storeEnumTagMultiPayload();
      sub_190C9F678();
      sub_190C9F83C();
      v74 = v145;
      sub_190D54C50();
      (*(v94 + 8))(v93, v95);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v71 = [v70 participants];

  sub_1902188FC(0, &qword_1EAD44E70);
  v72 = sub_190D57180();

  if (v72 >> 62)
  {
    result = sub_190D581C0();
    v74 = v145;
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v145;
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_13:
  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = MEMORY[0x193AF3B90](0, v72);
    goto LABEL_16;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
LABEL_16:
    v76 = v75;

    MEMORY[0x1EEE9AC00](v77);
    *(&v112 - 2) = v146;
    *(&v112 - 1) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62130);
    sub_190C9F708();
    v78 = v115;
    sub_190D562E0();
    v79 = v116;
    v80 = v134;
    (*(v116 + 16))(v133, v78, v134);
    swift_storeEnumTagMultiPayload();
    sub_190C9F678();
    sub_190C9F83C();
    sub_190D54C50();

    (*(v79 + 8))(v78, v80);
LABEL_21:
    v96 = v128;
    v97 = *(v128 + 16);
    v98 = v139;
    v99 = v140;
    v97(v139, v138, v140);
    sub_19022FD14(v57, v141, &qword_1EAD62098);
    v100 = v129;
    v101 = *(v129 + 16);
    v102 = v130;
    v101(v142, v147, v130);
    sub_19028AF6C(v74, v143);
    v103 = v131;
    v97(v131, v98, v99);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62140);
    v105 = v141;
    sub_19022FD14(v141, &v103[v104[12]], &qword_1EAD62098);
    v106 = v142;
    v101(&v103[v104[16]], v142, v102);
    v107 = &v103[v104[20]];
    v108 = v143;
    sub_19028AF6C(v143, v107);
    sub_19022EEA4(v145, &qword_1EAD62078);
    v109 = *(v100 + 8);
    v109(v147, v102);
    sub_19022EEA4(v144, &qword_1EAD62098);
    v110 = *(v96 + 8);
    v111 = v140;
    v110(v138, v140);
    sub_19022EEA4(v108, &qword_1EAD62078);
    v109(v106, v102);
    sub_19022EEA4(v105, &qword_1EAD62098);
    return (v110)(v139, v111);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_190C9A954@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v99 = a2;
  v94 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = v81 - v8;
  v103 = sub_190D52990();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v89 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = v81 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = v81 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90);
  v104 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v81 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62180);
  v91 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v92 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v86 = v81 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = v81 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v81 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v105 = v81 - v31;
  result = CKFrameworkBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_190D56ED0();
    v35 = sub_190D56ED0();
    v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

    v37 = sub_190D56F10();
    v39 = v38;

    v111 = v37;
    v112 = v39;
    v40 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
    v42 = *v40;
    v41 = v40[1];
    v83 = v42;
    v106 = v42;
    v107 = v41;
    v82 = v41;
    v81[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
    sub_190D55FF0();
    v43 = v108;
    v44 = v109;
    v45 = v110;
    swift_getKeyPath();
    v108 = v43;
    v109 = v44;
    v110 = v45;
    v81[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158);
    sub_190D56210();

    v46 = v21;
    v81[0] = sub_19081E484();
    sub_190D56190();
    v47 = v97;
    v84 = a1;
    sub_190D52D00();
    v48 = v96;
    sub_19022FD14(v47, v96, &qword_1EAD58E80);
    v49 = v100;
    v50 = *(v100 + 48);
    v51 = v103;
    if (v50(v48, 1, v103) == 1)
    {
      sub_19022EEA4(v47, &qword_1EAD58E80);
      v52 = 0;
    }

    else
    {
      (*(v49 + 32))(v89, v48, v51);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
      v52 = sub_190D561E0();
      sub_19022EEA4(v47, &qword_1EAD58E80);
    }

    v54 = v104 + 32;
    v53 = *(v104 + 32);
    v53(v29, v46, v101);
    v55 = v102;
    *&v29[*(v102 + 36)] = v52;
    v56 = sub_19081E40C(v29, v105, &qword_1EAD62180);
    if ((v99(v56) & 1) == 0)
    {
      v71 = 1;
      v72 = v93;
LABEL_12:
      (*(v91 + 56))(v72, v71, 1, v55);
      v76 = v105;
      v77 = v92;
      sub_19022FD14(v105, v92, &qword_1EAD62180);
      v78 = v95;
      sub_19022FD14(v72, v95, &unk_1EAD62170);
      v79 = v94;
      sub_19022FD14(v77, v94, &qword_1EAD62180);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62188);
      sub_19022FD14(v78, v79 + *(v80 + 48), &unk_1EAD62170);
      sub_19022EEA4(v72, &unk_1EAD62170);
      sub_19022EEA4(v76, &qword_1EAD62180);
      sub_19022EEA4(v78, &unk_1EAD62170);
      return sub_19022EEA4(v77, &qword_1EAD62180);
    }

    v104 = v54;
    result = CKFrameworkBundle();
    if (result)
    {
      v57 = result;
      v58 = sub_190D56ED0();
      v59 = sub_190D56ED0();
      v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

      v61 = sub_190D56F10();
      v63 = v62;

      v111 = v61;
      v112 = v63;
      v106 = v83;
      v107 = v82;
      sub_190D55FF0();
      v64 = v108;
      v65 = v109;
      v66 = v110;
      swift_getKeyPath();
      v108 = v64;
      v109 = v65;
      v110 = v66;
      sub_190D56210();

      sub_190D56190();
      v67 = v88;
      sub_190D52D00();
      v68 = v87;
      sub_19022FD14(v67, v87, &qword_1EAD58E80);
      v69 = v103;
      if (v50(v68, 1, v103) == 1)
      {
        sub_19022EEA4(v67, &qword_1EAD58E80);
        v70 = 0;
      }

      else
      {
        (*(v100 + 32))(v89, v68, v69);
        sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
        v70 = sub_190D561E0();
        sub_19022EEA4(v67, &qword_1EAD58E80);
      }

      v72 = v93;
      v55 = v102;
      v73 = v86;
      v53(v86, v90, v101);
      *&v73[*(v55 + 36)] = v70;
      v74 = v73;
      v75 = v85;
      sub_19081E40C(v74, v85, &qword_1EAD62180);
      sub_19081E40C(v75, v72, &qword_1EAD62180);
      v71 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190C9B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v4 = _s11ContentViewVMa_9(0);
  v5 = v4 - 8;
  v37 = *(v4 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D53D60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (a1 + *(v5 + 36));
  v12 = v10[1];
  v39 = *v10;
  v11 = v39;
  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v13 = v38;
  v14 = *&v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v15 = [v14 businessHandle];
  v16 = [v15 brand];

  v17 = [v16 brand];
  v39 = v11;
  v40 = v12;
  sub_190D55FD0();
  v18 = v38;
  v19 = *&v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v20 = [v19 chatbotURI];
  sub_190D56F10();

  v21 = v32;
  sub_190D52480();
  v22 = sub_190D56010();
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620C8) + 36));
  *v25 = v22;
  v25[1] = sub_190C9FB64;
  v25[2] = v24;
  v26 = v35;
  sub_190B1CA5C(v33, v35);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_190C9ECB0(v26, v28 + v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A0);
  v30 = (v21 + *(result + 36));
  *v30 = sub_190C9FBE4;
  v30[1] = v28;
  return result;
}

__n128 sub_190C9B79C(char **a1)
{
  type metadata accessor for CGRect(0);
  sub_190D53D70();
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19083736C(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_19083736C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[48 * v4];
  *(v5 + 4) = 0x6956726564616568;
  *(v5 + 5) = 0xEA00000000007765;
  result = v7;
  *(v5 + 3) = v7;
  *(v5 + 4) = v8;
  *a1 = v2;
  return result;
}

uint64_t sub_190C9B888(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);
    sub_190D52690();
    v5 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v9[0] = v3;
  v9[1] = v2;
  v10 = v4;
  v11 = v5;
  sub_190C98C4C(v9);
}

int *sub_190C9B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v35 = a1;
  v36 = a2;
  v41 = a4;
  v4 = sub_190D52990();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = _s11ContentViewVMa_9(0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v14 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v32 - v15;
  result = CKFrameworkBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_190D56F10();
    v24 = v23;

    v42 = v22;
    v43 = v24;
    sub_190B1CA5C(v38, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v26 = swift_allocObject();
    v27 = v36;
    *(v26 + 16) = v35;
    *(v26 + 24) = v27;
    sub_190C9ECB0(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    sub_19081E484();
    sub_190D50920();
    sub_190D56080();
    sub_190D52D00();
    sub_19022FD14(v11, v8, &qword_1EAD58E80);
    v29 = v39;
    v28 = v40;
    if ((*(v39 + 48))(v8, 1, v40) == 1)
    {
      sub_19022EEA4(v11, &qword_1EAD58E80);
      v30 = 0;
    }

    else
    {
      (*(v29 + 32))(v33, v8, v28);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
      v30 = sub_190D561E0();
      sub_19022EEA4(v11, &qword_1EAD58E80);
    }

    v31 = v41;
    (*(v14 + 32))(v41, v16, v37);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100);
    *(v31 + result[9]) = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C9BD98(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v5 = sub_190D51840();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1(v7) & 1) == 0)
  {
    _s11ContentViewVMa_9(0);
    sub_190B1C388();
    return;
  }

  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isReportJunkEverywhereEnabled];

  v12 = (a3 + *(_s11ContentViewVMa_9(0) + 28));
  v13 = *v12;
  v14 = v12[1];
  if (v11)
  {
    v32 = *v12;
    v33 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
    sub_190D55FD0();
    v15 = v31;
    v16 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    v17 = [v16 chat];
    [v17 reportJunk];
LABEL_7:

    goto LABEL_8;
  }

  v32 = *v12;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v18 = v31;
  v19 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v17 = [v19 chat];
  if (v17)
  {
    [v17 reportLazuliSpam:0 isBot:1];
    goto LABEL_7;
  }

LABEL_8:
  v32 = v13;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v20 = v31;
  v21 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v22 = [v21 chat];
  if (v22)
  {
    [v22 markAsSpam:objc_msgSend(objc_opt_self() isJunkReportedToCarrier:{sel_messageJunkStatus), 0}];
  }

  _s11ContentViewVMa_9(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsViewAndShowConversationList];
    swift_unknownObjectRelease();
  }

  v24 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_190DD55F0;
  v32 = v13;
  v33 = v14;
  sub_190D55FD0();
  v26 = v31;
  v27 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  *(v25 + 32) = v27;
  sub_1902188FC(0, &qword_1EAD466B0);
  v28 = sub_190D57160();

  sub_190D517F0();
  v29 = sub_190D51780();
  (*(v6 + 8))(v9, v5);
  [v24 recoverableDeleteForConversations:v28 deleteDate:v29 synchronousQuery:0 completionHandler:0];
}

id sub_190C9C194@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v107 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = v88 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62148);
  v99 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v98 = v88 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62150);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v88 - v7;
  v103 = sub_190D52990();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v97 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v88 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v88 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v88 - v18;
  v20 = _s11ContentViewVMa_9(0);
  v21 = v20 - 8;
  v100 = *(v20 - 8);
  v22 = v100[8];
  MEMORY[0x1EEE9AC00](v20);
  v23 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v102 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v92 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v91 = v88 - v26;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100);
  MEMORY[0x1EEE9AC00](v110);
  v96 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v88 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v88 - v32;
  v34 = *(v21 + 36);
  v108 = a1;
  v35 = (a1 + v34);
  v37 = *v35;
  v36 = v35[1];
  v90 = v37;
  v111 = v37;
  v112 = v36;
  v89 = v36;
  v88[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v38 = v117;
  swift_getKeyPath();
  v111 = v38;
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  LODWORD(a1) = v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked];

  result = CKFrameworkBundle();
  v40 = result;
  if (a1 == 1)
  {
    if (result)
    {
      v41 = sub_190D56ED0();
      v42 = sub_190D56ED0();
      v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

      v44 = sub_190D56F10();
      v46 = v45;

      v111 = v44;
      v112 = v46;
      sub_190B1CA5C(v108, v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = (*(v100 + 80) + 24) & ~*(v100 + 80);
      v48 = swift_allocObject();
      v49 = v94;
      *(v48 + 16) = v94;
      sub_190C9ECB0(v23, v48 + v47);
      sub_19081E484();
      v50 = v49;
      v51 = v91;
      sub_190D56080();
      sub_190D52D00();
      sub_19022FD14(v19, v16, &qword_1EAD58E80);
      v52 = v101;
      v53 = v103;
      if ((*(v101 + 48))(v16, 1, v103) == 1)
      {
        sub_19022EEA4(v19, &qword_1EAD58E80);
        v54 = 0;
      }

      else
      {
        (*(v52 + 32))(v97, v16, v53);
        sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
        v54 = sub_190D561E0();
        sub_19022EEA4(v19, &qword_1EAD58E80);
      }

      v70 = v109;
      (*(v102 + 32))(v30, v51, v109);
      v71 = v110;
      *&v30[*(v110 + 36)] = v54;
      sub_19081E40C(v30, v33, &qword_1EAD62100);
      sub_19022FD14(v33, v105, &qword_1EAD62100);
      swift_storeEnumTagMultiPayload();
      v72 = sub_190C9F58C();
      v73 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
      v111 = v71;
      v112 = v70;
      v113 = MEMORY[0x1E6981148];
      v114 = v72;
      v115 = v73;
      v116 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      return sub_19022EEA4(v33, &qword_1EAD62100);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v55 = sub_190D56ED0();
  v56 = sub_190D56ED0();
  v57 = [v40 localizedStringForKey:v55 value:0 table:v56];

  v58 = sub_190D56F10();
  v60 = v59;

  v111 = v58;
  v112 = v60;
  v61 = v95;
  sub_190D53970();
  v62 = sub_190D539A0();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_190B1CA5C(v108, v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v64 = swift_allocObject();
  sub_190C9ECB0(v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v64 + v63);
  sub_19081E484();
  v65 = v92;
  sub_190D56060();
  sub_190D52D00();
  v66 = v93;
  sub_19022FD14(v13, v93, &qword_1EAD58E80);
  v67 = v101;
  v68 = v103;
  if ((*(v101 + 48))(v66, 1, v103) == 1)
  {
    sub_19022EEA4(v13, &qword_1EAD58E80);
    v69 = 0;
  }

  else
  {
    (*(v67 + 32))(v97, v66, v68);
    sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
    v69 = sub_190D561E0();
    sub_19022EEA4(v13, &qword_1EAD58E80);
  }

  v74 = v96;
  (*(v102 + 32))(v96, v65, v109);
  *(v74 + *(v110 + 36)) = v69;
  sub_190D549E0();
  v102 = v76;
  v103 = v75;
  LODWORD(v101) = v77;
  v117 = v90;
  v118 = v89;
  sub_190D55FF0();
  v78 = v111;
  v79 = v112;
  v80 = v113;
  swift_getKeyPath();
  v111 = v78;
  v112 = v79;
  v113 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158);
  sub_190D56210();

  v100 = v88;
  MEMORY[0x1EEE9AC00](v81);
  v82 = sub_190C9F58C();
  v87 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v83 = v109;
  v84 = v98;
  sub_190D55980();

  sub_19022EEA4(v74, &qword_1EAD62100);
  v85 = v99;
  v86 = v106;
  (*(v99 + 16))(v105, v84, v106);
  swift_storeEnumTagMultiPayload();
  v111 = v110;
  v112 = v83;
  v113 = MEMORY[0x1E6981148];
  v114 = v82;
  v115 = v87;
  v116 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_190D54C50();
  return (*(v85 + 8))(v84, v86);
}

void sub_190C9CF80(void *a1)
{
  v1 = [a1 cnContact];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedBlockList];
    [v3 unblockContact_];

    _s11ContentViewVMa_9(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
    sub_190D55FD0();
    v4 = OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked;
    if (*(v6 + OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
      sub_190D51C10();
    }

    else
    {

      *(v6 + v4) = 0;
    }
  }
}

id sub_190C9D134(uint64_t a1)
{
  v2 = _s11ContentViewVMa_9(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  result = CKFrameworkBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_190D56ED0();
    v11 = sub_190D56ED0();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = sub_190D56F10();
    v15 = v14;

    v19[0] = v13;
    v19[1] = v15;
    sub_190D53970();
    v16 = sub_190D539A0();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    sub_190B1CA5C(a1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v18 = swift_allocObject();
    sub_190C9ECB0(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_19081E484();
    return sub_190D56060();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C9D3A0()
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v0 = *&v11[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v1 = [v0 chat];
  if (!v1)
  {
    return;
  }

  v2 = [v1 participants];

  sub_1902188FC(0, &qword_1EAD44E70);
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 cnContact];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() sharedBlockList];
    [v8 blockContact_];

    sub_190D55FD0();
    v9 = OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked;
    if (v11[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked])
    {

      v11[v9] = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
      sub_190D51C10();
    }
  }

  else
  {
  }
}

id sub_190C9D68C@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C9D78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v51 = sub_190D52990();
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v50 = _s11ContentViewVMa_9(0);
  v45 = *(v50 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v43 - v16;
  result = CKFrameworkBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_190D56F10();
    v24 = v23;

    v57 = v22;
    v58 = v24;
    sub_190D53970();
    v25 = sub_190D539A0();
    (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
    v26 = v49;
    sub_190B1CA5C(v49, &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v28 = swift_allocObject();
    sub_190C9ECB0(&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    sub_19081E484();
    sub_190D56060();
    sub_190D52D00();
    sub_19022FD14(v8, v5, &qword_1EAD58E80);
    v29 = v48;
    v30 = v51;
    if ((*(v48 + 48))(v5, 1, v51) == 1)
    {
      sub_19022EEA4(v8, &qword_1EAD58E80);
      v31 = 0;
    }

    else
    {
      (*(v29 + 32))(v44, v5, v30);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820]);
      v31 = sub_190D561E0();
      sub_19022EEA4(v8, &qword_1EAD58E80);
    }

    v32 = v52;
    (*(v46 + 32))(v52, v15, v47);
    *(v32 + *(v54 + 36)) = v31;
    v51 = sub_190D549E0();
    v47 = v34;
    v48 = v33;
    LODWORD(v46) = v35;
    v36 = (v26 + *(v50 + 28));
    v38 = *v36;
    v37 = v36[1];
    v55 = v38;
    v56 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
    sub_190D55FF0();
    v39 = v57;
    v40 = v58;
    v41 = v59;
    swift_getKeyPath();
    v57 = v39;
    v58 = v40;
    v59 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158);
    sub_190D56210();

    MEMORY[0x1EEE9AC00](v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
    sub_190C9F58C();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    sub_190D559A0();

    return sub_19022EEA4(v32, &qword_1EAD62100);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C9DEB4(uint64_t a1, void *a2)
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  if (v4[*a2] == 1)
  {
    v4[*a2] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
    sub_190D51C10();
  }
}

id sub_190C9E008@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = _s11ContentViewVMa_9(0);
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v4;
  v58 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v51 = v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v56 = v48 - v16;
  result = CKFrameworkBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_190D56F10();
    v24 = v23;

    v59 = v22;
    v60 = v24;
    sub_190D53970();
    v25 = sub_190D539A0();
    v26 = *(v25 - 8);
    v27 = *(v26 + 56);
    v48[1] = v26 + 56;
    v49 = v27;
    v27(v7, 0, 1, v25);
    v50 = a1;
    v28 = v58;
    sub_190B1CA5C(a1, v58);
    v29 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v30 = swift_allocObject();
    sub_190C9ECB0(v28, v30 + v29);
    v55 = sub_19081E484();
    sub_190D56060();
    result = CKFrameworkBundle();
    if (result)
    {
      v31 = result;
      v32 = sub_190D56ED0();
      v33 = sub_190D56ED0();
      v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

      v35 = sub_190D56F10();
      v37 = v36;

      v59 = v35;
      v60 = v37;
      sub_190D53970();
      v49(v7, 0, 1, v25);
      v38 = v58;
      sub_190B1CA5C(v50, v58);
      v39 = swift_allocObject();
      sub_190C9ECB0(v38, v39 + v29);
      v40 = v51;
      sub_190D56060();
      v41 = *(v9 + 16);
      v42 = v52;
      v43 = v56;
      v41(v52, v56, v8);
      v44 = v53;
      v41(v53, v40, v8);
      v45 = v54;
      v41(v54, v42, v8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
      v41(&v45[*(v46 + 48)], v44, v8);
      v47 = *(v9 + 8);
      v47(v40, v8);
      v47(v43, v8);
      v47(v44, v8);
      return (v47)(v42, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_190C9E598()
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v0 = *&v3[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v1 = [v0 chat];
  [v1 leaveConversation];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissDetailsViewAndShowConversationList];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_190C9E67C(uint64_t a1)
{
  v19 = a1;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
  v7 = v6[1];
  v21 = *v6;
  v8 = v21;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v9 = v20;
  v10 = *&v20[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v11 = [v10 chat];
  [v11 closeSession];

  v12 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD55F0;
  v21 = v8;
  v22 = v7;
  sub_190D55FD0();
  v14 = v20;
  v15 = *&v20[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  *(v13 + 32) = v15;
  sub_1902188FC(0, &qword_1EAD466B0);
  v16 = sub_190D57160();

  sub_190D517F0();
  v17 = sub_190D51780();
  (*(v3 + 8))(v5, v2);
  [v12 recoverableDeleteForConversations:v16 deleteDate:v17 synchronousQuery:0 completionHandler:0];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissDetailsViewAndShowConversationList];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190C9E90C(uint64_t a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
  v8 = v6[1];
  v16 = *v6;
  v7 = v16;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v9 = v15;
  swift_getKeyPath();
  v16 = v9;
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  LODWORD(a1) = v9[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted];

  v16 = v7;
  v17 = v8;
  sub_190D55FD0();
  if (a1 == 1)
  {
    v10 = v15;
    v11 = *&v15[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    sub_190D51750();
    v12 = sub_190D51780();
    (*(v3 + 8))(v5, v2);
    [v11 setMutedUntilDate_];
  }

  else
  {
    v13 = v15;
    v12 = *&v15[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    [v12 unmute];
  }
}

void sub_190C9EB4C()
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8);
  sub_190D55FD0();
  v0 = *&v2[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel);
  sub_190D51C20();

  v1 = v2[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts];

  [v0 setSendReadReceipts_];
}

uint64_t sub_190C9ECB0(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_9(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C9ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s11ContentViewVMa_9(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_190C98F60(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_190C9EDD0()
{
  result = qword_1EAD62020;
  if (!qword_1EAD62020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF0);
    sub_190233640(&qword_1EAD62028, &qword_1EAD62030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62020);
  }

  return result;
}

BOOL sub_190C9EE88(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) || (v10 = sub_190D58760(), result = 0, (v10 & 1) != 0))
  {
    v12.origin.x = v2;
    v12.origin.y = v3;
    v12.size.width = v4;
    v12.size.height = v5;
    v13.origin.x = v6;
    v13.origin.y = v7;
    v13.size.width = v8;
    v13.size.height = v9;
    return CGRectEqualToRect(v12, v13);
  }

  return result;
}

uint64_t sub_190C9EF3C@<X0>(void *a1@<X8>)
{
  if (qword_1EAD52030 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAD9E638;

  return sub_190D52690();
}

unint64_t sub_190C9EFF8()
{
  result = qword_1EAD62048;
  if (!qword_1EAD62048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF8);
    sub_190C9F0B0();
    sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62048);
  }

  return result;
}

unint64_t sub_190C9F0B0()
{
  result = qword_1EAD62050;
  if (!qword_1EAD62050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD62038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF0);
    sub_190D54DE0();
    sub_190C9EDD0();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62050);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = (_s11ContentViewVMa_9(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_190D52D20();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x193AF7B30](v0 + v3 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190C9F318(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11ContentViewVMa_9(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_190C9F398()
{
  result = qword_1EAD620B8;
  if (!qword_1EAD620B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD620A0);
    sub_190C9F450();
    sub_190233640(&qword_1EAD620E8, &qword_1EAD620F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD620B8);
  }

  return result;
}

unint64_t sub_190C9F450()
{
  result = qword_1EAD620C0;
  if (!qword_1EAD620C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD620C8);
    sub_190C9F538(&qword_1EAD620D0, MEMORY[0x1E698F6B8]);
    sub_190233640(&qword_1EAD620D8, &qword_1EAD620E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD620C0);
  }

  return result;
}

uint64_t sub_190C9F538(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C9F58C()
{
  result = qword_1EAD62108;
  if (!qword_1EAD62108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62108);
  }

  return result;
}

unint64_t sub_190C9F678()
{
  result = qword_1EAD62120;
  if (!qword_1EAD62120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62070);
    sub_190C9F708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62120);
  }

  return result;
}

unint64_t sub_190C9F708()
{
  result = qword_1EAD62128;
  if (!qword_1EAD62128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62130);
    sub_190C9F58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62128);
  }

  return result;
}

unint64_t sub_190C9F83C()
{
  result = qword_1EAD62138;
  if (!qword_1EAD62138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0);
    sub_190C9F58C();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62138);
  }

  return result;
}

void sub_190C9FA24()
{
  _s11ContentViewVMa_9(0);
  v1 = *(v0 + 16);

  sub_190C9CF80(v1);
}

void sub_190C9FB00()
{
  v1 = *(_s11ContentViewVMa_9(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_190C9BD98(v2, v3, v4);
}

double sub_190C9FB64(char **a1)
{
  sub_190D53D60();

  *&result = sub_190C9B79C(a1).n128_u64[0];
  return result;
}

uint64_t sub_190C9FBE4(uint64_t *a1)
{
  _s11ContentViewVMa_9(0);

  return sub_190C9B888(a1);
}

id sub_190C9FCE8@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v113 = *(v114 - 1);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v91 - v2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  MEMORY[0x1EEE9AC00](v119);
  v111 = &v91 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621A0);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v91 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621A8);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v91 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621B0);
  v6 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v103 = &v91 - v7;
  v8 = sub_190D526C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v16 = sub_190D52930();
  v123 = *(v16 - 8);
  v124 = v16;
  v17 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  v115 = v1;
  v21 = *v1;
  v22 = *(*v1 + 96);
  sub_190D52750();
  v23 = v8;
  v24 = v9;
  v27 = *(v9 + 88);
  v25 = v9 + 88;
  v26 = v27;
  v28 = v27(v15, v23);
  if (v28 != *MEMORY[0x1E6995738])
  {
    (*(v24 + 8))(v15, v23);
    return (*(v6 + 56))(v122, 1, 1, v121);
  }

  v94 = v17;
  v95 = v21;
  v92 = v6;
  v99 = v24;
  v29 = *(v24 + 96);
  v108 = v28;
  v100 = v29;
  v29(v15, v23);
  v31 = v123;
  v30 = v124;
  v101 = *(v123 + 32);
  v101(v20, v15, v124);
  v32 = v116;
  v110 = v23;
  v98 = v22;
  sub_190D52750();
  v33 = v110;
  v97 = v26;
  v34 = v26(v32, v110);
  v93 = v25;
  v118 = v20;
  v96 = v24 + 96;
  if (v34 == v108)
  {
    v100(v32, v33);
    v35 = v32;
    v36 = v117;
    v101(v117, v35, v30);
    v37 = sub_190D52920();
    v40 = v36;
    (*(v31 + 8))(v36, v30);
    if (v37)
    {
      result = CKFrameworkBundle();
      if (!result)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v39 = result;
      goto LABEL_10;
    }
  }

  else
  {
    (*(v99 + 8))(v32, v33);
    v40 = v117;
  }

  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = result;
LABEL_10:
  v41 = sub_190D56ED0();
  v42 = sub_190D56ED0();
  v43 = [v39 localizedStringForKey:v41 value:0 table:v42];
  v44 = v101;
  v45 = v43;

  v46 = sub_190D56F10();
  v48 = v47;

  v125 = v46;
  v126 = v48;
  v49 = v115;
  v50 = *(v115 + 8);
  v133 = *(v115 + 24);
  v134 = v50;
  v52 = v123;
  v51 = v124;
  v53 = v123 + 16;
  (*(v123 + 16))(v40, v118, v124);
  v54 = (*(v53 + 64) + 56) & ~*(v53 + 64);
  v55 = swift_allocObject();
  v56 = *(v49 + 16);
  *(v55 + 16) = *v49;
  *(v55 + 32) = v56;
  *(v55 + 48) = *(v49 + 32);
  v44(v55 + v54, v40, v51);
  sub_190D50920();
  sub_190CA13E0(&v134, &v132);
  sub_190CA13E0(&v133, &v132);
  v57 = sub_19081E484();
  v58 = v112;
  v117 = v57;
  sub_190D56080();
  v59 = v109;
  sub_190D52750();
  v60 = v59;
  v61 = v59;
  v62 = v110;
  v63 = v97(v61, v110);
  if (v63 == v108)
  {
    v100(v60, v62);
    v44(v40, v60, v51);
    v64 = sub_190D52920();
    (*(v52 + 8))(v40, v51);
    if (v64)
    {
      v65 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    (*(v99 + 8))(v60, v62);
  }

  v65 = sub_190D55D40();
LABEL_15:
  KeyPath = swift_getKeyPath();
  v67 = v111;
  (*(v113 + 32))(v111, v58, v114);
  v68 = (v67 + *(v119 + 36));
  *v68 = KeyPath;
  v68[1] = v65;
  v69 = sub_19081E868();
  sub_190D55670();
  sub_190CA1450(v67);
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v70 = result;
  v71 = sub_190D56ED0();
  v72 = sub_190D56ED0();
  v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

  v74 = sub_190D56F10();
  v76 = v75;

  *&v132 = v74;
  *(&v132 + 1) = v76;
  v131 = v134;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  v77 = sub_190D55FF0();
  v114 = &v91;
  MEMORY[0x1EEE9AC00](v77);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
  v125 = v119;
  v126 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
  v79 = v117;
  v80 = v105;
  v81 = v104;
  v82 = v120;
  sub_190D559B0();

  (*(v102 + 8))(v82, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_190DD55F0;
  v84 = v118;
  *(v83 + 32) = sub_190D52910();
  v132 = v133;
  sub_190D55FF0();
  v125 = v81;
  v126 = MEMORY[0x1E69E6158];
  v127 = v115;
  v128 = OpaqueTypeConformance2;
  v129 = v79;
  v130 = v90;
  swift_getOpaqueTypeConformance2();
  v85 = v103;
  v86 = v107;
  sub_190D55620();

  (*(v106 + 8))(v80, v86);
  v87 = v92;
  v89 = v121;
  v88 = v122;
  (*(v92 + 32))(v122, v85, v121);
  (*(v87 + 56))(v88, 0, 1, v89);
  return (*(v123 + 8))(v84, v124);
}

void sub_190CA0A48(uint64_t a1)
{
  v2 = sub_190D52930();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_190D526C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_190D52750();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6995738])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v10 = sub_190D52920();
    (*(v3 + 8))(v5, v2);
    if (v10)
    {
      v11 = [objc_opt_self() sharedBlockList];
      v12 = sub_190D52910();
      [v11 unblockContact_];

      return;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v14 = *(a1 + 8);
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FE0();
}

id sub_190CA0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v57 = a1;
  v58 = sub_190D52930();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = v49 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v53 = v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v59 = v49 - v16;
  result = CKFrameworkBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_190D56F10();
    v24 = v23;

    v61 = v22;
    v62 = v24;
    sub_190D53970();
    v25 = sub_190D539A0();
    v26 = *(v25 - 8);
    v50 = *(v26 + 56);
    v51 = v25;
    v49[1] = v26 + 56;
    v50(v8, 0, 1);
    v27 = v58;
    (*(v4 + 16))(v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v58);
    v28 = *(a2 + 8);
    v63 = *(a2 + 24);
    v64 = v28;
    v29 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v30 = swift_allocObject();
    (*(v4 + 32))(v30 + v29, v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    v31 = v30 + ((v5 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = *(a2 + 16);
    *v31 = *a2;
    *(v31 + 16) = v32;
    *(v31 + 32) = *(a2 + 32);
    sub_190D50920();
    sub_190CA13E0(&v64, v60);
    sub_190CA13E0(&v63, v60);
    sub_19081E484();
    v33 = v59;
    sub_190D56060();
    result = CKFrameworkBundle();
    if (result)
    {
      v34 = result;
      v35 = sub_190D56ED0();
      v36 = sub_190D56ED0();
      v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

      v38 = sub_190D56F10();
      v40 = v39;

      v61 = v38;
      v62 = v40;
      sub_190D53980();
      (v50)(v8, 0, 1, v51);
      v41 = v53;
      sub_190D56060();
      v42 = v52;
      v43 = *(v52 + 16);
      v44 = v54;
      v43(v54, v33, v9);
      v45 = v55;
      v43(v55, v41, v9);
      v46 = v56;
      v43(v56, v44, v9);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
      v43(&v46[*(v47 + 48)], v45, v9);
      v48 = *(v42 + 8);
      v48(v41, v9);
      v48(v33, v9);
      v48(v45, v9);
      return (v48)(v44, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190CA1290()
{
  v0 = [objc_opt_self() sharedBlockList];
  v1 = sub_190D52910();
  [v0 blockContact_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

void sub_190CA137C()
{
  sub_190D52930();

  sub_190CA0A48(v0 + 16);
}

uint64_t sub_190CA13E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190CA1450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190CA14C0()
{
  sub_190D52930();

  return sub_190CA1290();
}

unint64_t sub_190CA154C()
{
  result = qword_1EAD621B8;
  if (!qword_1EAD621B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530E8);
    sub_19081E868();
    swift_getOpaqueTypeConformance2();
    sub_19081E484();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD621B8);
  }

  return result;
}

uint64_t sub_190CA1720()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E640);
  __swift_project_value_buffer(v0, qword_1EAD9E640);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190CA1794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v48 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621C8);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v39 - v12;
  result = CKFrameworkBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_190D56ED0();
    v16 = sub_190D56ED0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    v18 = sub_190D56F10();
    v20 = v19;

    v54 = v18;
    v55 = v20;
    v21 = swift_allocObject();
    v21[2] = v52;
    v21[3] = a2;
    v21[4] = a3;
    v50 = sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    sub_190D56080();
    v22 = sub_190D55D40();
    KeyPath = swift_getKeyPath();
    (*(v7 + 32))(v11, v9, v6);
    v24 = &v11[*(v51 + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    v62 = 0;
    v63 = 0xE000000000000000;
    v65 = a2;
    v66 = a3;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0);
    sub_190D55FF0();
    v25 = v54;
    v26 = v55;
    v27 = v56;
    swift_getKeyPath();
    v49 = v6;
    v54 = v25;
    v55 = v26;
    v56 = v27;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D8);
    sub_190D56210();

    v43 = &v39;
    MEMORY[0x1EEE9AC00](v28);
    MEMORY[0x1EEE9AC00](v29);
    v39 = sub_19081E868();
    v41 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
    v30 = v51;
    sub_190D55990();

    sub_190CA1450(v11);
    v43 = sub_190D549E0();
    v42 = v31;
    v40 = v32;
    v65 = a2;
    v66 = a3;
    sub_190D55FF0();
    v34 = v54;
    v33 = v55;
    v35 = v56;
    swift_getKeyPath();
    v65 = v34;
    v66 = v33;
    v67 = v35;
    sub_190D56210();

    LODWORD(v45) = v64;

    v44 = &v39;
    MEMORY[0x1EEE9AC00](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0);
    v54 = v30;
    v55 = MEMORY[0x1E69E6158];
    v56 = v49;
    v57 = MEMORY[0x1E6981148];
    v58 = v39;
    v59 = v50;
    v60 = v41;
    v61 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0);
    v37 = v47;
    v38 = v53;
    sub_190D55980();

    return (*(v46 + 8))(v38, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CA1F10()
{
  if (qword_1EAD52038 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9E640);
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Present delete and block alert.", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0);
  sub_190D55FD0();
  sub_190CA2E60(1);
}

id sub_190CA2038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  result = CKFrameworkBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_190D56ED0();
    v12 = sub_190D56ED0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = sub_190D56F10();
    v16 = v15;

    v19[0] = v14;
    v19[1] = v16;
    sub_190D53970();
    v17 = sub_190D539A0();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v18[4] = a3;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    return sub_190D56060();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190CA2234(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0);
  sub_190D55FD0();
  if (*(v10 + 18) == 1)
  {
    *(v10 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }

  v3 = [*(a1 + 16) chat];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 hasRecipientsFollowingLocation];

    if (v5)
    {
      if (qword_1EAD52038 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD9E640);
      v7 = sub_190D53020();
      v8 = sub_190D576C0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, v8, "Present stop sharing location alert.", v9, 2u);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

      sub_190D55FD0();
      sub_190CA310C(1);
    }
  }
}

id sub_190CA2480@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190CA2580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v44 - v17;
  result = CKFrameworkBundle();
  if (result)
  {
    v19 = result;
    v45 = a4;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v52 = v23;
    v53 = v25;
    sub_190D53970();
    v26 = sub_190D539A0();
    v44 = *(*(v26 - 8) + 56);
    v44(v8, 0, 1, v26);
    v27 = swift_allocObject();
    v28 = v49;
    v27[2] = a1;
    v27[3] = v28;
    v27[4] = v50;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    sub_190D56060();
    result = CKFrameworkBundle();
    if (result)
    {
      v29 = result;
      v30 = sub_190D56ED0();
      v31 = sub_190D56ED0();
      v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

      v33 = sub_190D56F10();
      v35 = v34;

      v52 = v33;
      v53 = v35;
      v44(v8, 1, 1, v26);
      v36 = v46;
      sub_190D56060();
      v37 = *(v10 + 16);
      v38 = v47;
      v39 = v51;
      v37(v47, v51, v9);
      v40 = v48;
      v37(v48, v36, v9);
      v41 = v45;
      v37(v45, v38, v9);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160);
      v37(&v41[*(v42 + 48)], v40, v9);
      v43 = *(v10 + 8);
      v43(v36, v9);
      v43(v39, v9);
      v43(v40, v9);
      return (v43)(v38, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190CA2A48@<X0>(uint64_t a1@<X8>)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v3 = result;
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a1 = result;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190CA2B84()
{
  v1 = *(*(*(*(v0 + 16) + 48) + 24) + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stopSharingLocation);
  v2 = sub_190D50920();
  v1(v2);
}

uint64_t objectdestroyTm_50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_190CA2C58()
{
  result = qword_1EAD621E0;
  if (!qword_1EAD621E0)
  {
    _s24DeletionAlertCoordinatorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD621E0);
  }

  return result;
}

uint64_t sub_190CA2CB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_190CA2D50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_190CA2DF0()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 16);
}

void sub_190CA2E60(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_190CA2C58();
    sub_190D51C20();

    if ((*(v1 + 16) & 1) == 0)
    {
      swift_getKeyPath();
      sub_190D51C20();

      if ((*(v1 + 17) & 1) == 0)
      {
        sub_190CA3540();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }
}

void sub_190CA2FCC(uint64_t a1, char a2)
{
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    if (*(a1 + 17) != 1)
    {
      sub_190CA3540();
    }
  }
}

uint64_t sub_190CA309C()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 17);
}

void sub_190CA310C(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
    swift_getKeyPath();
    sub_190CA2C58();
    sub_190D51C20();

    if ((*(v1 + 16) & 1) == 0)
    {
      swift_getKeyPath();
      sub_190D51C20();

      if ((*(v1 + 17) & 1) == 0)
      {
        sub_190CA3540();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }
}

void sub_190CA3278(uint64_t a1, char a2)
{
  *(a1 + 17) = a2;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    if (*(a1 + 17) != 1)
    {
      sub_190CA3540();
    }
  }
}

uint64_t sub_190CA3348()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 18);
}

uint64_t sub_190CA33B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_190CA3458(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }

  return result;
}

void sub_190CA3540()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v0;
  sub_190CA2C58();
  sub_190D51C20();

  if (v0[18])
  {
    swift_getKeyPath();
    v27 = v0;
    sub_190D51C20();

    if ((v0[17] & 1) != 0 || (swift_getKeyPath(), v27 = v0, sub_190D51C20(), , v0[16] == 1))
    {
      if (qword_1EAD51C60 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD9DFA0);
      swift_retain_n();
      v7 = sub_190D53020();
      v8 = sub_190D576C0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109376;
        swift_getKeyPath();
        v27 = v0;
        sub_190D51C20();

        *(v9 + 4) = v0[16];

        *(v9 + 8) = 1024;
        swift_getKeyPath();
        v27 = v0;
        sub_190D51C20();

        *(v9 + 10) = v0[17];

        _os_log_impl(&dword_19020E000, v7, v8, "Currently presenting an alert, do not delete the conversation. presentDeleteAndBlockAlert: %{BOOL}d, presentStopSharingLocationAlert: %{BOOL}d", v9, 0xEu);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EAD51C60 != -1)
      {
        swift_once();
      }

      v14 = sub_190D53040();
      __swift_project_value_buffer(v14, qword_1EAD9DFA0);
      v15 = sub_190D53020();
      v16 = sub_190D576C0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v15, v16, "Deleting conversation", v17, 2u);
        MEMORY[0x193AF7A40](v17, -1, -1);
      }

      v18 = *(v1 + 3);
      [v18 updateDeletingIncomingMessages_];
      v19 = [objc_opt_self() sharedConversationList];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_190DD55F0;
      *(v20 + 32) = v18;
      sub_190ADD800();
      v21 = v18;
      v22 = sub_190D57160();

      sub_190D517F0();
      v23 = sub_190D51780();
      (*(v3 + 8))(v5, v2);
      [v19 recoverableDeleteForConversations:v22 deleteDate:v23 synchronousQuery:0 completionHandler:0];

      v24 = *(v1 + 4);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong detailsCoordinatorDidRequestNavigationToConversationList_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_1EAD51C60 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9DFA0);
    v11 = sub_190D53020();
    v12 = sub_190D576C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v11, v12, "Dismissing deletion alert without deleting the conversation.", v13, 2u);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }
  }
}

uint64_t sub_190CA3AB8()
{
  v1 = OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView20DeleteAndBlockButton24DeletionAlertCoordinator___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s24DeletionAlertCoordinatorCMa()
{
  result = qword_1EAD621F0;
  if (!qword_1EAD621F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CA3BB8()
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

char *sub_190CA3CB8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKSuggestedActionsBalloonView_actions] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v28.receiver = v4;
  v28.super_class = type metadata accessor for SuggestedActionsBalloonView();
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel;
  v13 = *&v11[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v14 = objc_opt_self();
  v15 = *MEMORY[0x1E69DDD40];
  v16 = v11;
  v17 = v13;
  v18 = [v14 preferredFontForTextStyle_];
  [v17 setFont_];

  [*&v11[v12] setLineBreakMode_];
  [*&v11[v12] setNumberOfLines_];
  v19 = OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel;
  v20 = *MEMORY[0x1E69DDD80];
  v21 = *&v16[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v22 = [v14 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = *&v16[v19];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 grayColor];
  [v25 setTextColor_];

  [*&v16[v19] setLineBreakMode_];
  [*&v16[v19] setNumberOfLines_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_190CA4008(unint64_t a1, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_actions] = a1;
  sub_190D52690();

  if (a1 >> 62)
  {
    if (sub_190D581C0())
    {
      v7 = sub_190D581C0();
LABEL_3:
      v8 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_190DD1D90;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_19081EA10();
      if (a3)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v11 = 0xE000000000000000;
      if (a3)
      {
        v11 = a3;
      }

      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      sub_190D52690();
      v12 = CKFrameworkBundle();
      if (!v12)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = v12;
      v14 = sub_190D56ED0();
      v15 = sub_190D56ED0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      sub_190D56F10();
      sub_190D56EE0();

      v17 = sub_190D56ED0();

      [v8 setText_];

      v18 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
      v19 = CKFrameworkBundle();
      v20 = v19;
      if (v7 == 1)
      {
        if (!v19)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else if (!v19)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v21 = sub_190D56ED0();
      v22 = sub_190D56ED0();
      v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

      if (!v23)
      {
        sub_190D56F10();
        v23 = sub_190D56ED0();
      }

      [v18 setText_];

      v24 = [objc_opt_self() sharedBehaviors];
      if (!v24)
      {
        goto LABEL_40;
      }

      v25 = v24;
      v26 = [v24 theme];

      if (!v26)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v27 = [v26 balloonColorsForColorType_];

      if (!v27)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1902495E8();
      v28 = sub_190D57180();

      if (v28 >> 62)
      {
        v29 = sub_190D581C0();
        if (v29)
        {
LABEL_20:
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (v30)
          {
            __break(1u);
          }

          else if ((v28 & 0xC000000000000001) == 0)
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v31 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v32 = *(v28 + 8 * v31 + 32);
LABEL_25:
              v36 = v32;
LABEL_31:

              [v3 setBackgroundColor_];
              goto LABEL_32;
            }

            __break(1u);
            goto LABEL_39;
          }

          v32 = MEMORY[0x193AF3B90](v31, v28);
          goto LABEL_25;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_20;
        }
      }

      v36 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v33 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v34 = sub_190D56ED0();
  [v33 setText_];

  v35 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v36 = sub_190D56ED0();
  [v35 setText_];
LABEL_32:
}

id sub_190CA45C8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SuggestedActionsBalloonView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  [v0 bounds];
  [v0 alignmentRectForFrame_];
  x = v18.origin.x;
  y = v18.origin.y;
  v3 = CGRectGetWidth(v18) + -8.0;
  v4 = *&v0[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v5 = [v4 attributedText];
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = v5;
    [v5 boundingRectWithSize:3 options:0 context:{v3, INFINITY}];
    v7 = v9;
  }

  v10 = *&v0[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v11 = [v10 attributedText];
  if (v11)
  {
    v12 = v11;
    [v11 boundingRectWithSize:3 options:0 context:{v3, INFINITY}];
    v6 = v13;
  }

  v14 = x + 4.0;
  [v4 setFrame_];
  [v4 frame];
  return [v10 setFrame_];
}

id sub_190CA47A4(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SuggestedActionsBalloonView();
  objc_msgSendSuper2(&v12, sel_configureForMessagePart_, a1);
  if (!a1)
  {
    return [v1 setNeedsLayout];
  }

  v3 = a1;
  result = [v3 suggestedActionsList];
  if (result)
  {
    v5 = result;
    sub_190D57620();
    v6 = sub_190D57180();

    result = [v3 IMChatItem];
    if (result)
    {
      v7 = result;
      v8 = [result handle];

      if (v8)
      {
        v9 = [v8 brand];

        if (v9)
        {
          v10 = [v9 name];

          v9 = sub_190D56F10();
          v8 = v11;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_190CA4008(v6, v9, v8);

      return [v1 setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SuggestedActionsBalloonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestedActionsBalloonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190CA4A1C(double a1, double a2)
{
  v4 = [*&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel] attributedText];
  if (v4)
  {
    v5 = v4;
    [v4 boundingRectWithSize:3 options:0 context:{260.0, INFINITY}];
  }

  v6 = [*&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel] attributedText];
  if (v6)
  {
    v7 = v6;
    [v6 boundingRectWithSize:3 options:0 context:{260.0, INFINITY}];
  }

  [v2 suggestedActionsMenuAdditionalHeightForBalloonSize_];
  return 268.0;
}

uint64_t sub_190CA4B78()
{
  v1 = [v0 guid];
  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  IMComponentsFromChatGUID();

  return 0;
}

id sub_190CA4C30(void *a1)
{
  v3 = [objc_opt_self() sharedRegistry];
  v4 = [a1 guid];
  if (!v4)
  {
    sub_190D56F10();
    v4 = sub_190D56ED0();
  }

  v5 = [v3 _cachedChatWithGUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 conversationForExistingChat_];

  return v6;
}

uint64_t sub_190CA4D10(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedConversationList];
  v5 = sub_190CA4C30(a1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = a2;
    sub_19021E69C(inited);
    swift_setDeallocating();
    CKConversation.satisfies(filterModes:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_190CA4DE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD9C20;
  v1 = swift_allocObject();
  *(v1 + 16) = 10;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_190CA5310;
  *(v2 + 24) = v1;
  *(inited + 32) = 10;
  *(inited + 40) = sub_190CA5318;
  *(inited + 48) = v2;
  *(inited + 56) = 26;
  *(inited + 64) = sub_190CA4F5C;
  *(inited + 72) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 7;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_190CA5358;
  *(v4 + 24) = v3;
  *(inited + 80) = 7;
  *(inited + 88) = sub_190CA5354;
  *(inited + 96) = v4;
  v5 = sub_19082419C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62228);
  result = swift_arrayDestroy();
  off_1EAD44F48 = v5;
  return result;
}

uint64_t sub_190CA4F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CA4F8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190CA4F8C()
{
  sub_190CA4B78();
  if (!v0)
  {
    return 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();

    v4 = [v2 draftForConversationWithChatIdentifier_];

    if (v4)
    {

      return 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t CKUnreadCountFilterController.implementsFilterMode(_:)(uint64_t a1)
{
  if (qword_1EAD44F40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (*(off_1EAD44F48 + 2))
  {
    sub_1908789E8(a1);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

CKUnreadCountFilterController __swiftcall CKUnreadCountFilterController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._excludes = v4;
  result.super._refreshHandler = v3;
  result.super.super.isa = v1;
  *&result.super._filteredByFocus = v2;
  result.super._filtersMutedChats = BYTE2(v2);
  return result;
}

uint64_t _sSo29CKUnreadCountFilterControllerC7ChatKitE12unreadReport_09satisfiesC4ModeSbSo08IMUnreadbH0C_So018IMConversationListcJ0VtF_0(uint64_t a1, uint64_t a2)
{
  if (qword_1EAD44F40 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v3 = off_1EAD44F48;
  if (!*(off_1EAD44F48 + 2))
  {
    return 0;
  }

  v4 = sub_1908789E8(a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3[7] + 16 * v4);
  v10 = a1;
  sub_190D50920();
  v6(&v9, &v10);

  return v9;
}

unint64_t type metadata accessor for CKUnreadCountFilterController()
{
  result = qword_1EAD62218;
  if (!qword_1EAD62218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD62218);
  }

  return result;
}

uint64_t sub_190CA531C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

id sub_190CA535C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction);
  if (*(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8))
  {
    if (*(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8) == 1)
    {
      v7 = v6;
      v8 = 0;
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD464F0);
      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = a2;
      v20[4] = v6;
      sub_190D50920();
      v39 = 0;
      v40 = 0;
      v42 = sub_190CA5938;
      v43 = v20;
      v41 = 0;
      v8 = sub_190D57DC0();
      v6 = 0;
    }
  }

  else
  {
    v9 = v6[2];
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v45 = v2;
      v47 = MEMORY[0x1E69E7CC0];
      sub_190D52690();
      sub_190D58390();
      sub_1902188FC(0, &qword_1EAD464F0);
      v44 = v6;
      v11 = v6 + 6;
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = swift_allocObject();
        v15 = *v11;
        v16 = v11[1];
        v11 += 3;
        v46 = v16;
        *(v14 + 16) = a1;
        *(v14 + 24) = a2;
        *(v14 + 32) = v12;
        *(v14 + 40) = v13;
        *(v14 + 48) = v15;
        *(v14 + 64) = v16;
        v17 = v15;
        sub_190D50920();
        swift_bridgeObjectRetain_n();
        v18 = v17;
        sub_19029063C(v46);
        v40 = 0;
        v42 = sub_190CA5908;
        v43 = v14;
        v41 = 0;
        sub_190D57DC0();
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
        --v9;
      }

      while (v9);
      sub_190A7E174(v44, 0);
      v10 = v47;
      v3 = v45;
    }

    if (v10 >> 62)
    {
      sub_1902188FC(0, &unk_1EAD45090);
      sub_190D52690();
      v19 = sub_190D58530();
    }

    else
    {
      sub_190D52690();
      sub_190D58770();
      sub_1902188FC(0, &unk_1EAD45090);
      v19 = v10;
    }

    sub_1902188FC(0, &unk_1EAD44ED0);
    v39 = v19;
    v6 = sub_190D57C90();
    v8 = 0;
  }

  v21 = *(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content);
  v22 = *(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 8);
  if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16) > 1u)
  {
    if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16) == 2)
    {
      sub_1902188FC(0, &qword_1EAD46690);
      v29 = v6;
      v30 = v8;
      v25 = sub_190D57700();
      goto LABEL_22;
    }

    sub_1902188FC(0, &qword_1EAD46690);
    sub_190A7E124(v21, v22, 3);
    v34 = v6;
    v35 = v8;
    v25 = sub_190D57750();
    [v25 setCustomView_];
    v36 = swift_dynamicCastObjCProtocolConditional();
    if (v36)
    {
      [v36 setParentBarButtonItem_];
    }

    v26 = v21;
    v27 = v22;
    v28 = 3;
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16))
    {
      sub_1902188FC(0, &qword_1EAD46690);
      sub_190A7E124(v21, v22, 1);
      v31 = v6;
      v32 = v8;
      v25 = sub_190D57750();
      v33 = sub_190D56ED0();
      sub_190A7E14C(v21, v22, 1);
      [v25 setTitle_];

      goto LABEL_22;
    }

    sub_1902188FC(0, &qword_1EAD46690);
    sub_190A7E124(v21, v22, 0);
    v23 = v6;
    v24 = v8;
    v25 = sub_190D57750();
    [v25 setImage_];
    v26 = v21;
    v27 = v22;
    v28 = 0;
  }

  sub_190A7E14C(v26, v27, v28);
LABEL_22:
  if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier + 8))
  {
    v37 = sub_190D56ED0();
  }

  else
  {
    v37 = 0;
  }

  [v25 setIdentifier_];

  if (qword_1EAD51B70 != -1)
  {
    swift_once();
  }

  [v25 setHidesSharedBackground_];

  return v25;
}

id sub_190CA5A64()
{
  v1 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
  v2 = *(v0 + OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9C8]) initWithCollectionViewLayout_];
    [v4 _setAnimatorIntegralization_];
    [v4 setSettlingLinearVelocityThreshold_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_190CA5B08(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_190CA73FC() * 44.0;
    v6 = sub_190CA7A78();
    v7 = v5 + v6 + v6;
    v8 = sub_190CA73FC() * 44.0;
    v9 = sub_190CA8000();
    v10 = v8 + v9 + v9;
    v11 = objc_opt_self();
    v12 = [v11 absoluteDimension_];
    v13 = [v11 absoluteDimension_];
    v14 = [objc_opt_self() sizeWithWidthDimension:v13 heightDimension:v12];
    v15 = [objc_opt_self() itemWithLayoutSize_];
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_190DD55F0;
    *(v17 + 32) = v15;
    sub_1902188FC(0, &qword_1EAD44FB8);
    v18 = v15;
    v19 = sub_190D57160();

    v20 = [v16 horizontalGroupWithLayoutSize:v14 subitems:v19];

    v21 = [objc_opt_self() sectionWithGroup_];
    v22 = sub_190CA7A78();
    v23 = v22 - sub_190CA8000();
    v24 = 0.0;
    if (v4)
    {
      v25 = v23;
    }

    else
    {
      swift_getObjectType();
      v26 = sub_190850C40(0);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v25 = 0.0;
      if (Strong)
      {
        v28 = *(a3 + 24);
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(v23 + v10 * v26, 0, ObjectType, v28);
        swift_unknownObjectRelease();
        v25 = 0.0;
      }

      v24 = v23;
    }

    [v21 setContentInsets_];

    return v21;
  }

  return result;
}

void sub_190CA5E7C()
{
  v1 = v0;
  v30 = sub_190D51C00();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsVoiceOverRunning())
  {
    [v1 collectionViewContentSize];
    v6 = v5;
    v8 = v7;
    v9 = type metadata accessor for TapbackPickerCollectionViewLayout();
    v31.receiver = v1;
    v31.super_class = v9;
    v10 = objc_msgSendSuper2(&v31, sel_layoutAttributesForElementsInRect_, 0.0, 0.0, v6, v8);
    if (v10)
    {
      v11 = v10;
      sub_1902188FC(0, &qword_1EAD44F20);
      v12 = sub_190D57180();

      v13 = v12;
      if (v12 >> 62)
      {
        v26 = sub_190D581C0();
        v13 = v12;
        v14 = v26;
        if (v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_6:
          if (v14 < 1)
          {
            __break(1u);
            return;
          }

          v15 = 0;
          v28 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
          v29 = v13 & 0xC000000000000001;
          v16 = (v2 + 8);
          v17 = v13;
          do
          {
            if (v29)
            {
              v18 = MEMORY[0x193AF3B90](v15);
            }

            else
            {
              v18 = *(v13 + 8 * v15 + 32);
            }

            v19 = v18;
            v20 = [v18 indexPath];
            sub_190D51BC0();

            v21 = sub_190CA5A64();
            v22 = sub_190D51BB0();
            v23 = [v21 layoutAttributesForCellAtIndexPath_];

            if (!v23)
            {
              v23 = v19;
              [v23 center];
              v19 = [objc_allocWithZone(MEMORY[0x1E69DC6C8]) initWithItem:v23 attachedToAnchor:{v24, v25}];

              [v19 setLength_];
              [v19 setFrequency_];
              [v19 setDamping_];
              [*&v1[v28] addBehavior_];
            }

            ++v15;

            (*v16)(v4, v30);
            v13 = v17;
          }

          while (v14 != v15);
        }
      }
    }
  }
}

void sub_190CA61B0()
{
  if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    return;
  }

  v0 = sub_190CA5A64();
  v1 = [v0 behaviors];

  sub_1902188FC(0, &qword_1EAD45050);
  v2 = sub_190D57180();

  v26 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x193AF3B90](v8, v2);
          }

          else
          {
            if (v8 >= *(v3 + 16))
            {
              goto LABEL_45;
            }

            v9 = *(v2 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v8;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v7 = v26;
      }

      while (v6 != i);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

LABEL_22:

    v26 = v5;
    v3 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      break;
    }

    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_50;
    }

LABEL_24:
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v13 = v11;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](v13, v7);
      }

      else
      {
        if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v14 = *(v7 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
      v17 = sub_190D57180();

      if (v17 >> 62)
      {
        if (sub_190D581C0())
        {
LABEL_36:
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AF3B90](0, v17);
          }

          else
          {
            if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            swift_unknownObjectRetain();
          }

          MEMORY[0x193AF29E0]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v12 = v26;
          if (v11 != v2)
          {
            goto LABEL_25;
          }

          goto LABEL_51;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      ++v13;
      if (v11 == v2)
      {
        goto LABEL_51;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v2 = sub_190D581C0();
  if (v2)
  {
    goto LABEL_24;
  }

LABEL_50:
  v12 = MEMORY[0x1E69E7CC0];
LABEL_51:

  if (v12 >> 62)
  {
    v18 = sub_190D581C0();
    if (!v18)
    {
      goto LABEL_62;
    }

LABEL_53:
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AF3B90](v19, v12);
        }

        else
        {
          v21 = *(v12 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        [v21 bounds];
        MidY = CGRectGetMidY(v28);
        [v21 center];
        if (vabdd_f64(MidY, v23) > 0.01)
        {
          [v21 setCenter_];
          v24 = *(v25 + v20);
          [v24 updateItemUsingCurrentState_];
        }

        ++v19;
        swift_unknownObjectRelease();
      }

      while (v18 != v19);
      goto LABEL_62;
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_53;
    }

LABEL_62:
  }
}

id sub_190CA6880(double a1, double a2, double a3, double a4)
{
  if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v18.receiver = v4;
    v18.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
    result = objc_msgSendSuper2(&v18, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
    if (result)
    {
      v10 = result;
      sub_1902188FC(0, &qword_1EAD44F20);
      v11 = sub_190D57180();

      return v11;
    }
  }

  else
  {
    v12 = sub_190CA5A64();
    v13 = [v12 itemsInRect_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
    v14 = sub_190D57180();

    if (v14 >> 62)
    {
      sub_1902188FC(0, &qword_1EAD44F20);
      sub_190D52690();
      v11 = sub_190D58530();
      swift_bridgeObjectRelease_n();
      return v11;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD44F20);
    if (swift_dynamicCastMetatype() || (v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_8:

      return v14;
    }

    else
    {
      v17 = v15 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v17 += 8;
        if (!--v16)
        {
          goto LABEL_8;
        }
      }

      return (v15 | 1);
    }
  }

  return result;
}

void sub_190CA6B48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    return;
  }

  v9 = [v4 collectionView];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = [v10 panGestureRecognizer];
  v12 = v10;
  [v12 bounds];
  v14 = v13;
  v40 = v11;
  v41 = v12;
  if ([v11 state] == 1 || objc_msgSend(v11, sel_state, v11) == 2 || objc_msgSend(v11, sel_state) == 3)
  {

    [v11 locationInView_];
    v16 = v15;
    v17 = &v4[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
    *v17 = v15;
    *(v17 + 1) = v18;
  }

  else if ([v12 isDecelerating])
  {

    v16 = *&v4[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
  }

  else if (v14 >= a1)
  {
    [v12 contentSize];
    v16 = v39;

    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    CGRectGetMidY(v46);
  }

  else
  {

    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    CGRectGetMidY(v45);
    v16 = 0.0;
  }

  v19 = sub_190CA5A64();
  v20 = [v19 behaviors];
  sub_1902188FC(0, &qword_1EAD45050);
  v21 = sub_190D57180();

  if (v21 >> 62)
  {
LABEL_36:
    v22 = sub_190D581C0();
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_37:

    return;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = a1 - v14;
    a1 = 0.8;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AF3B90](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
        goto LABEL_14;
      }

      v28 = v27;
      [v27 anchorPoint];
      v14 = v29;
      v30 = [v28 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250);
      v31 = sub_190D57180();

      if (v31 >> 62)
      {
        if (!sub_190D581C0())
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x193AF3B90](0, v31);
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v32 = *(v31 + 32);
        swift_unknownObjectRetain();
      }

      v33 = vabdd_f64(v16, v14);

      [v32 center];
      v35 = v24 * (v33 / 1600.0) + v34;
      [v32 bounds];
      MidY = CGRectGetMidY(v43);
      [v41 bounds];
      Width = CGRectGetWidth(v44);
      v38 = v33 / (Width + Width);
      if (v38 > 1.0)
      {
        v38 = 1.0;
      }

      [v28 setFrequency_];
      [v28 setDamping_];
      [v32 setCenter_];
      [v19 updateItemUsingCurrentState_];
      swift_unknownObjectRelease();
LABEL_14:
      ++v23;

      if (v22 == v23)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
}

double sub_190CA70AC(unsigned __int8 *a1, double a2)
{
  v4 = *a1;
  v5 = [v2 collectionView];
  v6 = 0.0;
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  [v5 contentOffset];
  v9 = v8;
  [v7 bounds];
  v11 = v10;
  if (v4)
  {

    v6 = 1.0;
    v12 = 0.0;
    if (v9 >= a2)
    {
      return v6;
    }
  }

  else
  {
    v13 = &v2[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_tapbackPickerLayoutDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 32))(ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 6.0;
    }

    v17 = a2 / v16;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v13 + 1);
      v19 = swift_getObjectType();
      v20 = (*(v18 + 56))(v19, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 1.5;
    }

    v12 = v17 * v20;
    if (v17 * v20 + a2 <= v9)
    {
      return v6;
    }
  }

  v21 = v12 + a2;
  if (v9 <= v21 - v11)
  {
    v24 = v4 == 0;
    v23 = 1.0;
    v22 = 0.0;
  }

  else
  {
    v22 = 0.0;
    if (v11 > 0.0)
    {
      v22 = 1.0 - (v21 - v9) / v11;
    }

    v23 = 1.0 - v22;
    v24 = v4 == 0;
  }

  if (v24)
  {
    return v23;
  }

  else
  {
    return v22;
  }
}

id sub_190CA7358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190CA73FC()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {

    return 0.88;
  }

  v6 = sub_190D58760();

  if (v6)
  {

    return 0.88;
  }

  v8 = sub_190D56F10();
  v10 = v9;
  if (v8 == sub_190D56F10() && v10 == v11)
  {

    return 0.92;
  }

  v13 = sub_190D58760();

  if (v13)
  {

    return 0.92;
  }

  v14 = sub_190D56F10();
  v16 = v15;
  if (v14 == sub_190D56F10() && v16 == v17)
  {

    return 0.96;
  }

  v18 = sub_190D58760();

  if (v18)
  {

    return 0.96;
  }

  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {

    return 1.0;
  }

  v23 = sub_190D58760();

  if (v23)
  {

    return 1.0;
  }

  v24 = sub_190D56F10();
  v26 = v25;
  if (v24 == sub_190D56F10() && v26 == v27)
  {

    return 1.07;
  }

  v28 = sub_190D58760();

  if (v28)
  {

    return 1.07;
  }

  v29 = sub_190D56F10();
  v31 = v30;
  if (v29 == sub_190D56F10() && v31 == v32)
  {

    return 1.11;
  }

  v33 = sub_190D58760();

  if (v33)
  {

    return 1.11;
  }

  v34 = sub_190D56F10();
  v36 = v35;
  if (v34 == sub_190D56F10() && v36 == v37)
  {

    return 1.15;
  }

  v38 = sub_190D58760();

  if (v38)
  {

    return 1.15;
  }

  v39 = sub_190D56F10();
  v41 = v40;
  if (v39 == sub_190D56F10() && v41 == v42)
  {

    return 1.18;
  }

  v43 = sub_190D58760();

  if (v43)
  {

    return 1.18;
  }

  v44 = sub_190D56F10();
  v46 = v45;
  if (v44 == sub_190D56F10() && v46 == v47)
  {

    return 1.25;
  }

  v48 = sub_190D58760();

  if (v48)
  {

    return 1.25;
  }

  v49 = sub_190D56F10();
  v51 = v50;
  if (v49 == sub_190D56F10() && v51 == v52)
  {
    goto LABEL_59;
  }

  v53 = sub_190D58760();

  if (v53)
  {
LABEL_61:

    return 1.3;
  }

  v54 = sub_190D56F10();
  v56 = v55;
  if (v54 == sub_190D56F10() && v56 == v57)
  {
    goto LABEL_59;
  }

  v58 = sub_190D58760();

  if (v58)
  {
    goto LABEL_61;
  }

  v59 = sub_190D56F10();
  v61 = v60;
  if (v59 == sub_190D56F10() && v61 == v62)
  {
LABEL_59:

    return 1.3;
  }

  v63 = sub_190D58760();

  result = 1.3;
  if ((v63 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

double sub_190CA7A78()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {

    v7 = 0.23;
    goto LABEL_15;
  }

  v6 = sub_190D58760();

  v7 = 0.23;
  if ((v6 & 1) == 0)
  {
    v8 = sub_190D56F10();
    v10 = v9;
    if (v8 == sub_190D56F10() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_190D58760();

    if (v13)
    {
      goto LABEL_15;
    }

    v14 = sub_190D56F10();
    v16 = v15;
    if (v14 == sub_190D56F10() && v16 == v17)
    {
      goto LABEL_13;
    }

    v20 = sub_190D58760();

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = sub_190D56F10();
    v23 = v22;
    if (v21 == sub_190D56F10() && v23 == v24)
    {
      goto LABEL_13;
    }

    v25 = sub_190D58760();

    if (v25)
    {
      goto LABEL_15;
    }

    v26 = sub_190D56F10();
    v28 = v27;
    if (v26 == sub_190D56F10() && v28 == v29)
    {

      v7 = 0.2;
      goto LABEL_15;
    }

    v30 = sub_190D58760();

    v7 = 0.2;
    if (v30)
    {
      goto LABEL_15;
    }

    v31 = sub_190D56F10();
    v33 = v32;
    if (v31 == sub_190D56F10() && v33 == v34)
    {
      goto LABEL_13;
    }

    v35 = sub_190D58760();

    if (v35)
    {
      goto LABEL_15;
    }

    v36 = sub_190D56F10();
    v38 = v37;
    if (v36 == sub_190D56F10() && v38 == v39)
    {
      goto LABEL_13;
    }

    v40 = sub_190D58760();

    if (v40)
    {
      goto LABEL_15;
    }

    v41 = sub_190D56F10();
    v43 = v42;
    if (v41 == sub_190D56F10() && v43 == v44)
    {

      v7 = 0.1;
      goto LABEL_15;
    }

    v45 = sub_190D58760();

    v7 = 0.1;
    if (v45)
    {
      goto LABEL_15;
    }

    v46 = sub_190D56F10();
    v48 = v47;
    if (v46 == sub_190D56F10() && v48 == v49)
    {
      goto LABEL_13;
    }

    v50 = sub_190D58760();

    if (v50)
    {
      goto LABEL_15;
    }

    v51 = sub_190D56F10();
    v53 = v52;
    if (v51 == sub_190D56F10() && v53 == v54)
    {
      goto LABEL_13;
    }

    v55 = sub_190D58760();

    if (v55)
    {
      goto LABEL_15;
    }

    v56 = sub_190D56F10();
    v58 = v57;
    if (v56 == sub_190D56F10() && v58 == v59)
    {
      goto LABEL_13;
    }

    v60 = sub_190D58760();

    if (v60)
    {
      goto LABEL_15;
    }

    v61 = sub_190D56F10();
    v63 = v62;
    if (v61 == sub_190D56F10() && v63 == v64)
    {
LABEL_13:

      goto LABEL_15;
    }

    v65 = sub_190D58760();

    if (v65)
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.23;
    }
  }

LABEL_15:
  v18 = sub_190CA73FC();

  return v7 * (v18 * 44.0);
}

double sub_190CA8000()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_190D58760();

  if (v6)
  {
LABEL_6:

    return 2.5;
  }

  v7 = sub_190D56F10();
  v9 = v8;
  if (v7 == sub_190D56F10() && v9 == v10)
  {
    goto LABEL_14;
  }

  v12 = sub_190D58760();

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = sub_190D56F10();
  v15 = v14;
  if (v13 == sub_190D56F10() && v15 == v16)
  {
    goto LABEL_14;
  }

  v18 = sub_190D58760();

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {
LABEL_14:

    return 2.5;
  }

  v23 = sub_190D58760();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = sub_190D56F10();
  v26 = v25;
  if (v24 == sub_190D56F10() && v26 == v27)
  {
    goto LABEL_22;
  }

  v28 = sub_190D58760();

  if (v28)
  {
    goto LABEL_24;
  }

  v29 = sub_190D56F10();
  v31 = v30;
  if (v29 == sub_190D56F10() && v31 == v32)
  {
    goto LABEL_22;
  }

  v33 = sub_190D58760();

  if (v33)
  {
LABEL_24:

    return 1.0;
  }

  v34 = sub_190D56F10();
  v36 = v35;
  if (v34 == sub_190D56F10() && v36 == v37)
  {
LABEL_22:

    return 1.0;
  }

  v38 = sub_190D58760();

  if (v38)
  {
    goto LABEL_24;
  }

  v39 = sub_190D56F10();
  v41 = v40;
  if (v39 == sub_190D56F10() && v41 == v42)
  {
    goto LABEL_33;
  }

  v43 = sub_190D58760();

  if (v43)
  {
    goto LABEL_35;
  }

  v44 = sub_190D56F10();
  v46 = v45;
  if (v44 == sub_190D56F10() && v46 == v47)
  {
    goto LABEL_33;
  }

  v48 = sub_190D58760();

  if (v48)
  {
    goto LABEL_35;
  }

  v49 = sub_190D56F10();
  v51 = v50;
  if (v49 == sub_190D56F10() && v51 == v52)
  {
    goto LABEL_33;
  }

  v53 = sub_190D58760();

  if (v53)
  {
    goto LABEL_35;
  }

  v54 = sub_190D56F10();
  v56 = v55;
  if (v54 == sub_190D56F10() && v56 == v57)
  {
    goto LABEL_33;
  }

  v58 = sub_190D58760();

  if (v58)
  {
LABEL_35:

    return 0.0;
  }

  v59 = sub_190D56F10();
  v61 = v60;
  if (v59 == sub_190D56F10() && v61 == v62)
  {
LABEL_33:

    return 0.0;
  }

  v63 = sub_190D58760();

  result = 2.5;
  if (v63)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_190CA8558(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_190D52690();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_190CA8604(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x193AF3B90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_190D581C0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_190CA872C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x193AF3B90](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      sub_190D50920();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_190D581C0();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

char *SendMenuSortOrderProviding.sortedIdentifiers(fromStoredOrder:upgradeType:forConversation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v130 = a3;
  v126 = *a2;
  v8 = *(a1 + 24);
  v9 = *(*(a1 + 32) + 16);
  v121 = v9 != 0;
  if (v9)
  {
    v136[0] = v8;
    sub_190D52690();
    v10 = sub_190D52690();
    sub_190CA9D08(v10);
  }

  else
  {
    sub_190D52690();
  }

  v125 = a5;
  v124 = v5;
  v123 = a4;
  if (v126)
  {
    v11 = (*(a5 + 32))(a4, a5);
    v12 = sub_190CAAE18(v11);

    a4 = *(v8 + 2);
    if (a4)
    {
      v13 = 0;
      v133 = (v8 + 32);
      v14 = v12 + 56;
      v15 = MEMORY[0x1E69E7CC0];
      v132 = a4;
      while (1)
      {
        if (v13 >= *(v8 + 2))
        {
          goto LABEL_151;
        }

        v16 = &v133[2 * v13];
        v18 = *v16;
        v17 = v16[1];
        ++v13;
        if (!*(v12 + 16))
        {
          break;
        }

        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        v19 = sub_190D588C0();
        v20 = -1 << *(v12 + 32);
        v21 = v19 & ~v20;
        if ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          a5 = ~v20;
          while (1)
          {
            v22 = (*(v12 + 48) + 16 * v21);
            v23 = *v22 == v18 && v22[1] == v17;
            if (v23 || (sub_190D58760() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & a5;
            if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (v13 == a4)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_18:
          v135 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_19082DBB4(0, *(v15 + 16) + 1, 1);
            v15 = v135;
          }

          v25 = *(v15 + 16);
          v24 = *(v15 + 24);
          a5 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            sub_19082DBB4((v24 > 1), v25 + 1, 1);
            v15 = v135;
          }

          *(v15 + 16) = a5;
          v26 = v15 + 16 * v25;
          *(v26 + 32) = v18;
          *(v26 + 40) = v17;
          a4 = v132;
          if (v13 == v132)
          {
            goto LABEL_26;
          }
        }
      }

      sub_190D52690();
      goto LABEL_18;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_26:

    if (v126 == 1)
    {
      v8 = v15;
LABEL_50:
      a5 = v125;
      a4 = v123;
      goto LABEL_51;
    }

    v27 = (*(v125 + 24))(v123);
    v28 = sub_190CAAE18(v27);

    a4 = *(v15 + 16);
    if (!a4)
    {
      v8 = MEMORY[0x1E69E7CC0];
LABEL_49:

      goto LABEL_50;
    }

    v29 = 0;
    v133 = (v15 + 32);
    v30 = v28 + 56;
    v8 = MEMORY[0x1E69E7CC0];
    v132 = a4;
    while (1)
    {
      if (v29 >= *(v15 + 16))
      {
        goto LABEL_152;
      }

      v31 = &v133[2 * v29];
      v33 = *v31;
      v32 = v31[1];
      ++v29;
      if (!*(v28 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v34 = sub_190D588C0();
      v35 = -1 << *(v28 + 32);
      v36 = v34 & ~v35;
      if ((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        a5 = ~v35;
        while (1)
        {
          v37 = (*(v28 + 48) + 16 * v36);
          v38 = *v37 == v33 && v37[1] == v32;
          if (v38 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          v36 = (v36 + 1) & a5;
          if (((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v29 == a4)
        {
          goto LABEL_49;
        }
      }

      else
      {
LABEL_41:
        v135 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19082DBB4(0, *(v8 + 2) + 1, 1);
          v8 = v135;
        }

        v40 = *(v8 + 2);
        v39 = *(v8 + 3);
        a5 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          sub_19082DBB4((v39 > 1), v40 + 1, 1);
          v8 = v135;
        }

        *(v8 + 2) = a5;
        v41 = &v8[16 * v40];
        *(v41 + 4) = v33;
        *(v41 + 5) = v32;
        a4 = v132;
        if (v29 == v132)
        {
          goto LABEL_49;
        }
      }
    }

    sub_190D52690();
    goto LABEL_41;
  }

LABEL_51:
  v42 = sub_190D52690();
  v15 = sub_190CAAE18(v42);

  if (qword_1EAD45B10 != -1)
  {
    goto LABEL_153;
  }

  while (1)
  {
    swift_beginAccess();
    v43 = off_1EAD45B18;
    swift_beginAccess();
    v44 = v43[3];
    v45 = *(a5 + 16);
    v132 = v43[2];
    swift_unknownObjectRetain();
    v46 = v45(a4, a5);
    a4 = v46;
    v47 = *(v46 + 16);
    v131 = v44;
    v129 = v44 + 40;
    if (v47)
    {
      v48 = 0;
      v133 = (v46 + 32);
      a5 = v15 + 56;
      v127 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v48 >= *(a4 + 16))
        {
          __break(1u);
          goto LABEL_147;
        }

        v49 = &v133[2 * v48];
        v51 = *v49;
        v50 = v49[1];
        ++v48;
        if (*(v15 + 16))
        {
          sub_190D58870();
          sub_190D52690();
          sub_190D56FC0();
          v52 = sub_190D588C0();
          v53 = -1 << *(v15 + 32);
          v54 = v52 & ~v53;
          if ((*(a5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
          {
            v55 = ~v53;
            do
            {
              v56 = (*(v15 + 48) + 16 * v54);
              v57 = *v56 == v51 && v56[1] == v50;
              if (v57 || (sub_190D58760() & 1) != 0)
              {
                goto LABEL_67;
              }

              v54 = (v54 + 1) & v55;
            }

            while (((*(a5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
          }
        }

        else
        {
          sub_190D52690();
        }

        ObjectType = swift_getObjectType();
        if ((*(v131 + 40))(v51, v50, v130, ObjectType))
        {
          v59 = v127;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19082DBB4(0, *(v59 + 16) + 1, 1);
            v59 = v137;
          }

          v62 = *(v59 + 16);
          v61 = *(v59 + 24);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v128 = v62 + 1;
            sub_19082DBB4((v61 > 1), v62 + 1, 1);
            v63 = v128;
            v59 = v137;
          }

          *(v59 + 16) = v63;
          v127 = v59;
          v64 = v59 + 16 * v62;
          *(v64 + 32) = v51;
          *(v64 + 40) = v50;
          goto LABEL_68;
        }

LABEL_67:

LABEL_68:
        if (v48 == v47)
        {
          goto LABEL_76;
        }
      }
    }

    v127 = MEMORY[0x1E69E7CC0];
LABEL_76:

    v66 = *(v8 + 2);
    if (v66)
    {
      v67 = 0;
      v15 = 0;
      v68 = v8 + 40;
      v128 = *(v8 + 2);
      v119 = v66 - 1;
      v69 = MEMORY[0x1E69E7CC0];
      v120 = v8 + 40;
LABEL_78:
      v122 = v69;
      v70 = &v68[16 * v67];
      while (v67 < *(v8 + 2))
      {
        v133 = &v119;
        a5 = *(v70 - 1);
        v71 = *v70;
        v72 = v67 + 1;
        v136[0] = a5;
        v136[1] = v71;
        MEMORY[0x1EEE9AC00](v65);
        v118[2] = v136;
        sub_190D52690();
        if ((sub_190CA8558(sub_190A5D7B4, v118, a4) & 1) == 0)
        {
          v73 = v122;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v73;
          v137 = v73;
          if ((v65 & 1) == 0)
          {
            v65 = sub_19082DBB4(0, *(v73 + 16) + 1, 1);
            v69 = v137;
          }

          v75 = *(v69 + 16);
          v74 = *(v69 + 24);
          if (v75 >= v74 >> 1)
          {
            v65 = sub_19082DBB4((v74 > 1), v75 + 1, 1);
            v69 = v137;
          }

          *(v69 + 16) = v75 + 1;
          v76 = v69 + 16 * v75;
          *(v76 + 32) = a5;
          *(v76 + 40) = v71;
          v23 = v119 == v67;
          v68 = v120;
          ++v67;
          if (v23)
          {
            goto LABEL_91;
          }

          goto LABEL_78;
        }

        v70 += 2;
        ++v67;
        if (v128 == v72)
        {
          v69 = v122;
          goto LABEL_91;
        }
      }

LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v15 = 0;
    v69 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v136[0] = a4;
    sub_190CA9D08(v69);
    v77 = v136[0];
    v78 = *(v127 + 16);
    if (!v78)
    {
      break;
    }

    v79 = (v127 + 40);
    while (1)
    {
      a4 = *(v79 - 1);
      v80 = *v79;
      v81 = sub_190C75C14(a4, *v79, v8, v77);
      v82 = *(v8 + 2);
      if (v82 < v81)
      {
        break;
      }

      a5 = v81;
      if (v81 < 0)
      {
        goto LABEL_149;
      }

      sub_190D52690();
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v8;
      if (!v83 || v82 >= *(v8 + 3) >> 1)
      {
        v8 = sub_1908354D4(v83, v82 + 1, 1, v8);
        v137 = v8;
      }

      sub_190CAAEB0(a5, a5, 1, a4, v80);

      v79 += 2;
      if (!--v78)
      {
        v121 = 1;
        goto LABEL_101;
      }
    }

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
    swift_once();
  }

LABEL_101:

  v84 = swift_getObjectType();
  v85 = *(v131 + 32);
  v133 = v84;
  v86 = v85();
  v87 = (*(v125 + 8))(v123);
  a5 = sub_190CAAE18(v87);

  v128 = *(v86 + 16);
  if (v128)
  {
    a4 = 0;
    v127 = v86 + 32;
    v88 = a5 + 56;
    v89 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v125 = v89;
    while (1)
    {
      if (a4 >= *(v86 + 16))
      {
        goto LABEL_150;
      }

      v90 = (v127 + 16 * a4);
      v92 = *v90;
      v91 = v90[1];
      if (!*(a5 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v93 = sub_190D588C0();
      v94 = -1 << *(a5 + 32);
      v95 = v93 & ~v94;
      if (((*(v88 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
      {
        goto LABEL_117;
      }

      v96 = ~v94;
      while (1)
      {
        v97 = (*(a5 + 48) + 16 * v95);
        v98 = *v97 == v92 && v97[1] == v91;
        if (v98 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v95 = (v95 + 1) & v96;
        if (((*(v88 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      v99 = 0;
LABEL_119:
      ++a4;
      v100 = (*(v131 + 40))(v92, v91, v130, v133);
      if (v99 && (v100 & 1) != 0)
      {
        v101 = v125;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v134 = v101;
        if ((v102 & 1) == 0)
        {
          sub_19082DBB4(0, *(v101 + 16) + 1, 1);
          v101 = v134;
        }

        v104 = *(v101 + 16);
        v103 = *(v101 + 24);
        v105 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          v125 = v104 + 1;
          sub_19082DBB4((v103 > 1), v104 + 1, 1);
          v105 = v125;
          v101 = v134;
        }

        *(v101 + 16) = v105;
        v106 = v101 + 16 * v104;
        *(v106 + 32) = v92;
        *(v106 + 40) = v91;
        v89 = v101;
        if (a4 != v128)
        {
          goto LABEL_103;
        }

        goto LABEL_129;
      }

      if (a4 == v128)
      {
        v89 = v125;
        goto LABEL_129;
      }
    }

    sub_190D52690();
LABEL_117:
    v99 = 1;
    goto LABEL_119;
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_129:

  v107 = sub_190C75D88(v89, v8);
  v108 = sub_190C75D88(v8, v89);
  if (!v126 && (v107 & 1) != 0 && (v108 & 1) != 0)
  {
    swift_unknownObjectRelease();

    return v8;
  }

  if (qword_1EAD458A8 != -1)
  {
    swift_once();
    v109 = *(v8 + 2);
    if (v109)
    {
      goto LABEL_135;
    }

LABEL_142:
    v115 = v132;
LABEL_144:
    v116 = sub_190CAA710(v109, 0, v8);
    v136[0] = v89;
    swift_unknownObjectRetain();
    sub_190D52690();
    sub_190D50920();
    sub_190CAC4C0(v136, v116, v109, v115, v131);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    return v136[0];
  }

  v109 = *(v8 + 2);
  if (!v109)
  {
    goto LABEL_142;
  }

LABEL_135:
  v110 = 0;
  v111 = qword_1EAD458B0;
  v112 = *algn_1EAD458B8;
  v113 = v8 + 40;
  while (1)
  {
    v114 = *(v113 - 1) == v111 && *v113 == v112;
    if (v114 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    ++v110;
    v113 += 2;
    if (v109 == v110)
    {
      goto LABEL_142;
    }
  }

  v109 = v110 + 1;
  v115 = v132;
  if (!__OFADD__(v110, 1))
  {
    goto LABEL_144;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);
  return result;
}

uint64_t sub_190CA9668(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_19024FB10(&qword_1EAD462D8, MEMORY[0x1E69695A8]), v7 = sub_190D56DC0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_19024FB10(&qword_1EAD462D0, MEMORY[0x1E69695A8]);
      v15 = sub_190D56E30();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_190CA9880(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  v4 = sub_190D588C0();
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

uint64_t sub_190CA994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_190D58870();
  sub_190D56FC0();
  v6 = sub_190D588C0();
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
    if (v11 || (sub_190D58760() & 1) != 0)
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

uint64_t sub_190CA9A44(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_190D581F0();
  }

  else if (*(a2 + 16) && (sub_1902188FC(0, &qword_1EAD46540), v5 = sub_190D57D80(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_190D57D90();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_190CA9B5C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_190D58870();
    MEMORY[0x193AF4110](a1 & 1);
    v5 = sub_190D588C0();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL sub_190CA9C24(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_190D58870();
  MEMORY[0x193AF4110](v3);
  v4 = sub_190D588C0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_190CA9D08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1908354D4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_190CA9E28(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_190835840(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_190CA9F44(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_190D581C0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_190CAA9A0(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_190CAA09C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_190D581C0();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_190CAA9A0(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_190CAA1AC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1908365EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_190CAA298(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_190836784(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_190CAA3B8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_190CAA4FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1908368AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_190CAA600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19083736C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_190CAA710(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_190821630(MEMORY[0x1E69E7CC0]);
  v6 = *(a3 + 16);
  if (!v6)
  {
    return v5;
  }

  v7 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *(i - 1);
    v9 = *i;
    v11 = v7 + 1;
    sub_190D52690();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((a2 & 1) == 0 && v7 >= a1)
    {
      v13 = sub_19022DCEC(v10, v9);
      v15 = v5[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_31;
      }

      v19 = v14;
      if (v5[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v13;
          sub_190B67DD4();
          v13 = v32;
          if ((v19 & 1) == 0)
          {
LABEL_27:
            v5[(v13 >> 6) + 8] |= 1 << v13;
            v33 = (v5[6] + 16 * v13);
            *v33 = v10;
            v33[1] = v9;
            *(v5[7] + 8 * v13) = v11;
            v34 = v5[2];
            v17 = __OFADD__(v34, 1);
            v30 = v34 + 1;
            if (v17)
            {
              goto LABEL_33;
            }

LABEL_28:
            v5[2] = v30;
            goto LABEL_5;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_190B62ABC(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_19022DCEC(v10, v9);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_34;
        }
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      *(v5[7] + 8 * v13) = v11;
      goto LABEL_4;
    }

    v21 = sub_19022DCEC(v10, v9);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v17 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v17)
    {
      break;
    }

    v26 = v22;
    if (v5[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_190B67DD4();
        v21 = v31;
        if ((v26 & 1) == 0)
        {
LABEL_18:
          v5[(v21 >> 6) + 8] |= 1 << v21;
          v28 = (v5[6] + 16 * v21);
          *v28 = v10;
          v28[1] = v9;
          *(v5[7] + 8 * v21) = v7;
          v29 = v5[2];
          v17 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v17)
          {
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_190B62ABC(v25, isUniquelyReferenced_nonNull_native);
      v21 = sub_19022DCEC(v10, v9);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_34;
      }
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_3:
    *(v5[7] + 8 * v21) = v7;
LABEL_4:

LABEL_5:
    ++v7;
    if (v6 == v11)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t sub_190CAA9A0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_190D581C0();
LABEL_9:
  result = sub_190D58310();
  *v1 = result;
  return result;
}

char *sub_190CAAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:
    sub_190D52690();
    result = sub_190D52690();
    __break(1u);
    return result;
  }
}

unint64_t sub_190CAAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = _s21BackgroundGalleryItemVMa(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_190B0D284(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_190CACA94(a4);
}

uint64_t sub_190CAACFC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_190D58760() & 1;
  }
}

unint64_t sub_190CAAD54(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_190CAAE18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193AF2CC0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_190D52690();
      sub_1908AA174(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_190CAAEB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_190D52690();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_190CAAF94(uint64_t *__dst, uint64_t *a2, uint64_t *a3, uint64_t *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = __dst;
  v10 = a2 - __dst;
  v11 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v11 = a2 - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2;
  v14 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    v18 = __src;
    if (__src != a2 || &a2[2 * v15] <= __src)
    {
      v37 = a2;
      memmove(__src, a2, 16 * v15);
      a2 = v37;
    }

    v70 = &v18[2 * v15];
    if (v13 < 16)
    {
      v9 = a2;
    }

    else
    {
      v38 = a2;
      if (a2 <= v9)
      {
        v9 = a2;
      }

      else
      {
        v64 = v9;
        v66 = v18;
LABEL_35:
        v58 = v38 - 2;
        v39 = v8;
        v40 = v70;
        v41 = a6;
        v42 = a5;
        v9 = v38;
        v59 = v38;
        do
        {
          v44 = *(v40 - 2);
          v43 = *(v40 - 1);
          v40 -= 2;
          v45 = *(v9 - 1);
          v65 = *(v9 - 2);
          v46 = *(v42 + 16);
          sub_190D52690();
          v69 = v45;
          sub_190D52690();
          if (!v46)
          {
            goto LABEL_44;
          }

          v47 = sub_19022DCEC(v44, v43);
          v48 = v41;
          if (v49)
          {
            v48 = *(*(v42 + 56) + 8 * v47);
          }

          v50 = v41;
          if (*(v42 + 16))
          {
            v51 = sub_19022DCEC(v65, v69);
            v50 = v41;
            if (v52)
            {
              v50 = *(*(v42 + 56) + 8 * v51);
            }
          }

          if (v48 != v50)
          {

            v8 = v39 - 2;
            v56 = v48 < v50;
            v9 = v59;
            if (v56)
            {
LABEL_49:
              if (v39 != v9)
              {
                *v8 = *v58;
              }

              if (v70 <= v18 || (v38 = v58, v58 <= v64))
              {
                v9 = v58;
                goto LABEL_57;
              }

              goto LABEL_35;
            }
          }

          else
          {
LABEL_44:
            ObjectType = swift_getObjectType();
            v54 = *(a8 + 48);
            v54(v44, v43, ObjectType, a8);
            v54(v65, v69, ObjectType, a8);
            v18 = v66;
            v9 = v59;
            sub_19081E484();
            v55 = sub_190D580E0();

            v8 = v39 - 2;
            if (v55 == -1)
            {
              goto LABEL_49;
            }
          }

          if (v70 != v39)
          {
            *v8 = *v40;
          }

          v70 = v40;
          v39 = v8;
          v41 = a6;
          v42 = a5;
        }

        while (v40 > v18);
        v70 = v40;
      }
    }
  }

  else
  {
    v16 = a2;
    if (__src != __dst || &__dst[2 * v12] <= __src)
    {
      v17 = __src;
      memmove(__src, __dst, 16 * v12);
      __src = v17;
    }

    v70 = &__src[2 * v12];
    v18 = __src;
    if (v10 >= 16 && v16 < v8)
    {
      v60 = v8;
      do
      {
        v63 = v9;
        v20 = *v16;
        v19 = v16[1];
        v21 = v18[1];
        v68 = *v18;
        v22 = *(a5 + 16);
        sub_190D52690();
        sub_190D52690();
        if (!v22)
        {
          goto LABEL_19;
        }

        v23 = sub_19022DCEC(v20, v19);
        v24 = a6;
        if (v25)
        {
          v24 = *(*(a5 + 56) + 8 * v23);
        }

        v26 = a6;
        if (*(a5 + 16))
        {
          v27 = sub_19022DCEC(v68, v21);
          v26 = a6;
          if (v28)
          {
            v26 = *(*(a5 + 56) + 8 * v27);
          }
        }

        if (v24 != v26)
        {

          if (v24 >= v26)
          {
LABEL_20:
            v33 = v18;
            v34 = v63;
            v35 = v63 == v18;
            v18 += 2;
            v36 = v60;
            if (v35)
            {
              goto LABEL_22;
            }

LABEL_21:
            *v34 = *v33;
            goto LABEL_22;
          }
        }

        else
        {
LABEL_19:
          v29 = swift_getObjectType();
          v30 = v16;
          v31 = *(a8 + 48);
          v31(v20, v19, v29, a8);
          v31(v68, v21, v29, a8);
          v16 = v30;
          sub_19081E484();
          v32 = sub_190D580E0();

          if (v32 != -1)
          {
            goto LABEL_20;
          }
        }

        v33 = v16;
        v34 = v63;
        v35 = v63 == v16;
        v16 += 2;
        v36 = v60;
        if (!v35)
        {
          goto LABEL_21;
        }

LABEL_22:
        v9 = v34 + 2;
      }

      while (v18 < v70 && v16 < v36);
    }
  }

LABEL_57:
  if (v9 != v18 || v9 >= (v18 + ((v70 - v18 + (v70 - v18 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v9, v18, 16 * ((v70 - v18) / 16));
  }

  return 1;
}

uint64_t sub_190CAB4F8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v160 = a3[1];
  if (v160 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v150 = MEMORY[0x1E69E7CC0];
LABEL_116:
    __src = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v10 = v150;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v131 = (v10 + 16);
      v132 = *(v10 + 16);
      if (v132 < 2)
      {
LABEL_126:

        swift_unknownObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }

      v151 = v10;
      while (1)
      {
        v133 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v134 = (v10 + 16 * v132);
        v135 = *v134;
        v136 = &v131[2 * v132];
        v137 = v136[1];
        v138 = &v133[2 * *v134];
        v168 = &v133[2 * *v136];
        v139 = &v133[2 * v137];
        sub_190D52690();
        v10 = a7;
        swift_unknownObjectRetain();
        sub_190CAAF94(v138, v168, v139, __src, a5, a6, a7, a8);
        if (v153)
        {
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease_n();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        if (v137 < v135)
        {
          goto LABEL_144;
        }

        v140 = *v131;
        if (v132 - 2 >= *v131)
        {
          goto LABEL_145;
        }

        *v134 = v135;
        v134[1] = v137;
        v141 = v140 - v132;
        if (v140 < v132)
        {
          goto LABEL_146;
        }

        v132 = v140 - 1;
        memmove(v136, v136 + 2, 16 * v141);
        *v131 = v132;
        v10 = v151;
        if (v132 <= 1)
        {
          goto LABEL_126;
        }
      }
    }

LABEL_152:
    v10 = sub_1909E383C(v10);
    goto LABEL_118;
  }

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v9 = 0;
  v150 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9++;
    v144 = v10;
    if (v9 < v160)
    {
      v11 = *a3;
      v12 = &(*a3)[2 * v9];
      v13 = *v12;
      v14 = v12[1];
      v15 = &(*a3)[2 * v10];
      v16 = v15[1];
      v164 = *v15;
      v17 = *(v8 + 16);
      sub_190D52690();
      sub_190D52690();
      if (!v17)
      {
        goto LABEL_12;
      }

      __src = v14;
      v18 = sub_19022DCEC(v13, v14);
      v19 = a6;
      if (v20)
      {
        v19 = *(*(v8 + 56) + 8 * v18);
      }

      v21 = a6;
      if (*(v8 + 16))
      {
        v22 = sub_19022DCEC(v164, v16);
        v21 = a6;
        if (v23)
        {
          v21 = *(*(v8 + 56) + 8 * v22);
        }
      }

      if (v19 != v21)
      {

        v27 = v19 < v21;
      }

      else
      {
LABEL_12:
        ObjectType = swift_getObjectType();
        __src = v11;
        v25 = *(a8 + 48);
        v25(v13, v14, ObjectType, a8);
        v25(v164, v16, ObjectType, a8);
        v11 = __src;
        sub_19081E484();
        v26 = sub_190D580E0();

        v27 = v26 == -1;
      }

      v148 = v27;
      v28 = 0;
      v29 = v10 + 2;
      v30 = &v11[2 * v10 + 5];
      v146 = 16 * v10;
      v31 = 16 * v10;
      do
      {
        v9 = v29;
        v38 = v28;
        v37 = v31;
        if (v29 >= v160)
        {
          break;
        }

        __src = v31;
        v39 = *(v30 - 1);
        v40 = *v30;
        v41 = *(v30 - 2);
        v165 = *(v30 - 3);
        v42 = *(v8 + 16);
        sub_190D52690();
        sub_190D52690();
        if (!v42)
        {
          goto LABEL_15;
        }

        v43 = sub_19022DCEC(v39, v40);
        v44 = a6;
        if (v45)
        {
          v44 = *(*(v8 + 56) + 8 * v43);
        }

        v46 = a6;
        if (*(v8 + 16))
        {
          v47 = sub_19022DCEC(v165, v41);
          v46 = a6;
          if (v48)
          {
            v46 = *(*(v8 + 56) + 8 * v47);
          }
        }

        if (v44 == v46)
        {
LABEL_15:
          v32 = swift_getObjectType();
          v154 = v9;
          v33 = *(a8 + 48);
          v33(v39, v40, v32, a8);
          v34 = v32;
          v8 = a5;
          v33(v165, v41, v34, a8);
          sub_19081E484();
          v35 = sub_190D580E0();

          v9 = v154;

          v36 = v35 == -1;
        }

        else
        {

          v36 = v44 < v46;
        }

        v29 = v9 + 1;
        v30 += 2;
        v28 = v38 + 1;
        v37 = __src;
        v31 = (__src + 2);
      }

      while (v148 == v36);
      if (v148)
      {
        v10 = v144;
        if (v9 < v144)
        {
          goto LABEL_149;
        }

        if (v144 < v9)
        {
          v49 = 0;
          v50 = v146;
          do
          {
            if (v144 + v49 != v144 + v38 + 1)
            {
              v55 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v51 = (v55 + v50);
              v52 = v55 + v37;
              v53 = *v51;
              v54 = v51[1];
              *v51 = *(v52 + 16);
              *(v52 + 16) = v53;
              *(v52 + 24) = v54;
            }

            --v38;
            ++v49;
            v37 -= 16;
            v50 += 16;
          }

          while (v49 + v144 < v144 + v38 + 2);
        }
      }

      else
      {
        v10 = v144;
      }
    }

    v56 = a3[1];
    if (v9 < v56)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_148;
      }

      if (v9 - v10 < a4)
      {
        v57 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          goto LABEL_150;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v10)
        {
          goto LABEL_151;
        }

        if (v9 != v57)
        {
          v161 = *a3;
          v58 = &(*a3)[2 * v9];
          v59 = v10 - v9;
          v145 = v57;
          do
          {
            v155 = v9;
            v60 = v59;
            v61 = &v161[2 * v9];
            v62 = *v61;
            v63 = v61[1];
            v147 = v60;
            v149 = v58;
            v64 = v60;
            do
            {
              v66 = *(v58 - 1);
              v65 = v58 - 2;
              v166 = *(v58 - 2);
              v67 = *(v8 + 16);
              sub_190D52690();
              sub_190D52690();
              if (!v67)
              {
                goto LABEL_54;
              }

              v68 = sub_19022DCEC(v62, v63);
              v69 = a6;
              if (v70)
              {
                v69 = *(*(v8 + 56) + 8 * v68);
              }

              v71 = a6;
              if (*(v8 + 16))
              {
                v72 = sub_19022DCEC(v166, v66);
                v71 = a6;
                if (v73)
                {
                  v71 = *(*(v8 + 56) + 8 * v72);
                }
              }

              if (v69 != v71)
              {

                if (v69 >= v71)
                {
                  break;
                }
              }

              else
              {
LABEL_54:
                v74 = swift_getObjectType();
                __src = v58 - 2;
                v75 = *(a8 + 48);
                v75(v62, v63, v74, a8);
                v75(v166, v66, v74, a8);
                v65 = v58 - 2;
                sub_19081E484();
                v76 = sub_190D580E0();

                v8 = a5;

                if (v76 != -1)
                {
                  break;
                }
              }

              if (!v161)
              {
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_154:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_155:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_156:
                swift_unknownObjectRelease();

                __break(1u);
LABEL_157:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_158:
                swift_unknownObjectRelease_n();
                result = swift_bridgeObjectRelease_n();
                __break(1u);
                return result;
              }

              v62 = *v58;
              v63 = v58[1];
              *v58 = *v65;
              *(v58 - 1) = v63;
              *(v58 - 2) = v62;
              v58 -= 2;
            }

            while (!__CFADD__(v64++, 1));
            v9 = v155 + 1;
            v58 = v149 + 2;
            v59 = v147 - 1;
          }

          while (v155 + 1 != v145);
          v9 = v145;
          v10 = v144;
        }
      }
    }

    v78 = v150;
    if (v9 < v10)
    {
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
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_190835714(0, *(v150 + 2) + 1, 1, v150);
    }

    v10 = *(v78 + 2);
    v79 = *(v78 + 3);
    v80 = v10 + 1;
    if (v10 >= v79 >> 1)
    {
      v78 = sub_190835714((v79 > 1), v10 + 1, 1, v78);
    }

    *(v78 + 2) = v80;
    v81 = (v78 + 32);
    v82 = &v78[16 * v10 + 32];
    *v82 = v144;
    *(v82 + 1) = v9;
    v167 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v150 = v78;
    if (v10)
    {
      break;
    }

LABEL_3:
    v160 = a3[1];
    v8 = a5;
    if (v9 >= v160)
    {
      goto LABEL_116;
    }
  }

  v156 = v9;
  __src = (v78 + 32);
  while (1)
  {
    v83 = v80 - 1;
    if (v80 >= 4)
    {
      v88 = &v81[2 * v80];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_132;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_133;
      }

      v95 = &v78[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_135;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_137;
      }

      if (v99 >= v91)
      {
        v117 = &v81[2 * v83];
        v119 = *v117;
        v118 = v117[1];
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_143;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

    if (v80 == 3)
    {
      v84 = *(v78 + 4);
      v85 = *(v78 + 5);
      v94 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      v87 = v94;
LABEL_83:
      if (v87)
      {
        goto LABEL_134;
      }

      v100 = &v78[16 * v80];
      v102 = *v100;
      v101 = *(v100 + 1);
      v103 = __OFSUB__(v101, v102);
      v104 = v101 - v102;
      v105 = v103;
      if (v103)
      {
        goto LABEL_136;
      }

      v106 = &v81[2 * v83];
      v108 = *v106;
      v107 = v106[1];
      v94 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v94)
      {
        goto LABEL_139;
      }

      if (__OFADD__(v104, v109))
      {
        goto LABEL_141;
      }

      if (v104 + v109 >= v86)
      {
        if (v86 < v109)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_98;
    }

    if (v80 < 2)
    {
      goto LABEL_142;
    }

    v110 = &v78[16 * v80];
    v112 = *v110;
    v111 = *(v110 + 1);
    v94 = __OFSUB__(v111, v112);
    v104 = v111 - v112;
    v105 = v94;
LABEL_98:
    if (v105)
    {
      goto LABEL_138;
    }

    v113 = &v81[2 * v83];
    v115 = *v113;
    v114 = v113[1];
    v94 = __OFSUB__(v114, v115);
    v116 = v114 - v115;
    if (v94)
    {
      goto LABEL_140;
    }

    if (v116 < v104)
    {
      goto LABEL_3;
    }

LABEL_105:
    if (v83 - 1 >= v80)
    {
      __break(1u);
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
      __break(1u);
LABEL_140:
      __break(1u);
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
      goto LABEL_147;
    }

    v121 = *a3;
    if (!*a3)
    {
      goto LABEL_154;
    }

    v122 = &v81[2 * v83 - 2];
    v123 = *v122;
    v10 = v83;
    v124 = &v81[2 * v83];
    v125 = v124[1];
    v126 = &v121[2 * *v122];
    v127 = &v121[2 * *v124];
    v128 = &v121[2 * v125];
    sub_190D52690();
    swift_unknownObjectRetain();
    sub_190CAAF94(v126, v127, v128, v167, a5, a6, a7, a8);
    if (v153)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v125 < v123)
    {
      goto LABEL_129;
    }

    v78 = v150;
    v129 = *(v150 + 2);
    if (v10 > v129)
    {
      goto LABEL_130;
    }

    *v122 = v123;
    v122[1] = v125;
    if (v10 >= v129)
    {
      goto LABEL_131;
    }

    v80 = v129 - 1;
    memmove(v124, v124 + 2, 16 * (v129 - 1 - v10));
    *(v150 + 2) = v129 - 1;
    v9 = v156;
    v81 = __src;
    if (v129 <= 2)
    {
      goto LABEL_3;
    }
  }

LABEL_114:
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_190CAC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  result = sub_190D58710();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!v8)
      {
        swift_unknownObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }

      if (v8 == 1)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = *a1;
        sub_190D52690();
        swift_unknownObjectRetain();
        v14 = -1;
        v15 = 1;
        v42 = v13;
        v16 = a3;
        v39 = a2;
        v35 = v8;
        do
        {
          v37 = v15;
          v38 = v14;
          v17 = &v42[2 * v15];
          v18 = *v17;
          v19 = v17[1];
          v20 = v14;
          v36 = v13;
          do
          {
            v21 = v13[1];
            v43 = *v13;
            v22 = *(a2 + 16);
            sub_190D52690();
            v47 = v21;
            sub_190D52690();
            if (!v22)
            {
              goto LABEL_22;
            }

            v23 = sub_19022DCEC(v18, v19);
            v24 = v16;
            if (v25)
            {
              v24 = *(*(a2 + 56) + 8 * v23);
            }

            v26 = v16;
            if (*(a2 + 16))
            {
              v27 = sub_19022DCEC(v43, v47);
              v26 = v16;
              if (v28)
              {
                v26 = *(*(a2 + 56) + 8 * v27);
              }
            }

            if (v24 != v26)
            {

              if (v24 >= v26)
              {
                break;
              }
            }

            else
            {
LABEL_22:
              ObjectType = swift_getObjectType();
              v30 = *(a5 + 48);
              v16 = a3;
              v45 = v30(v18, v19, ObjectType, a5);
              v46 = v31;
              v44[0] = v30(v43, v47, ObjectType, a5);
              v44[1] = v32;
              sub_19081E484();
              v33 = sub_190D580E0();

              a2 = v39;

              if (v33 != -1)
              {
                break;
              }
            }

            if (!v42)
            {
              goto LABEL_34;
            }

            v18 = v13[2];
            v19 = v13[3];
            *(v13 + 1) = *v13;
            *v13 = v18;
            v13[1] = v19;
            v13 -= 2;
          }

          while (!__CFADD__(v20++, 1));
          v15 = v37 + 1;
          v13 = v36 + 2;
          v14 = v38 - 1;
        }

        while (v37 + 1 != v35);
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease_n();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_190D571D0();
        *(v11 + 16) = v8 / 2;
      }

      v45 = (v11 + 32);
      v46 = v8 / 2;
      v12 = v11;
      sub_190D52690();
      swift_unknownObjectRetain();
      sub_190CAB4F8(&v45, v44, a1, v10, a2, a3, a4, a5);

      swift_unknownObjectRelease();
      *(v12 + 16) = 0;
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_190CAC4C0(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1909E39A8(v10);
  }

  v11 = *(v10 + 2);
  v13[0] = v10 + 32;
  v13[1] = v11;
  sub_190D52690();
  swift_unknownObjectRetain();
  sub_190CAC104(v13, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  *a1 = v10;
  swift_unknownObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_190CAC708(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v11 = sub_1902188FC(0, j);
    v12 = sub_190CACF50(a4, j);
    result = MEMORY[0x193AF2CC0](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193AF3B90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_190D581C0();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_190CAC890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

char *sub_190CAC9F0(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_190CACA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_190CACAFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  _s18BlurrableImageViewCMa();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_190D581C0();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_190D581C0();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_190CACC40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1902188FC(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_190D581C0();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_190D581C0();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_190CACD78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1902188FC(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_190D581C0();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_190D581C0();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}