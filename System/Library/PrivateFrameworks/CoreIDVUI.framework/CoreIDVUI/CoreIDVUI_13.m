uint64_t sub_2458C1B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v16;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = sub_24590C554();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B1A0);
  v8[18] = swift_task_alloc();
  v10 = sub_24590C4E4();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = sub_2459107E4();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v12 = sub_245910814();
  v8[25] = v12;
  v8[26] = *(v12 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = sub_245910D34();
  v8[29] = sub_245910D24();
  v13 = swift_task_alloc();
  v8[30] = v13;
  *v13 = v8;
  v13[1] = sub_2458C1D90;

  return sub_2458BCD30();
}

uint64_t sub_2458C1D90(char a1)
{
  *(*v1 + 248) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458C1ED4, v3, v2);
}

uint64_t sub_2458C1ED4()
{
  v1 = *(v0 + 248);

  if (v1 == 1)
  {
    v23 = *(v0 + 216);
    v27 = *(v0 + 208);
    v28 = *(v0 + 200);
    v2 = *(v0 + 176);
    v25 = *(v0 + 192);
    v26 = *(v0 + 184);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    sub_2457809BC();
    v24 = sub_245911034();
    v9 = swift_allocObject();
    v9[2] = v7;
    v9[3] = v6;
    v9[4] = v8;
    v9[5] = v5;
    v9[6] = v4;
    v9[7] = v3;
    *(v0 + 48) = sub_2458C3D40;
    *(v0 + 56) = v9;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_2458935A8;
    *(v0 + 40) = &block_descriptor_32;
    v10 = _Block_copy((v0 + 16));
    v11 = v7;

    sub_245771BB4(v4);
    sub_245910804();
    *(v0 + 64) = MEMORY[0x277D84F90];
    sub_24579FE68(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    sub_2459113A4();
    MEMORY[0x245D76690](0, v23, v25, v10);
    _Block_release(v10);

    (*(v26 + 8))(v25, v2);
    (*(v27 + 8))(v23, v28);
  }

  else
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    (*(v0 + 80))(0);
    sub_2458C294C(v14);
    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      sub_245778F94(*(v0 + 144), &qword_27EE2B1A0);
    }

    else
    {
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = *(v0 + 120);
      (*(v16 + 32))(v15, *(v0 + 144), v17);
      sub_24590C594();
      (*(v19 + 104))(v18, *MEMORY[0x277CFF388], v20);
      sub_24590C534();
      (*(v19 + 8))(v18, v20);
      (*(v16 + 8))(v15, v17);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2458C2268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2457AA49C;

  return sub_2458C1B28(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_2458C2354(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v8 = sub_24590C554();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B1A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_24590C4E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2458C2C78();
  if (v18)
  {
    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v21 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController);
    *(a1 + OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_viewController) = v20;
    v22 = v20;

    v23 = (a1 + OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion);
    v24 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion);
    v25 = v29;
    *v23 = a5;
    v23[1] = v25;
    sub_245771BB4(a5);
    sub_245771C34(v24);
    v29 = v22;
    (v31)(v20);

    v26 = v29;
  }

  else
  {
    v27 = v28;
    v31();
    sub_2458C294C(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_245778F94(v13, &qword_27EE2B1A0);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_24590C594();
      (*(v27 + 104))(v10, *MEMORY[0x277CFF388], v8);
      sub_24590C534();
      (*(v27 + 8))(v10, v8);
      (*(v15 + 8))(v17, v14);
    }
  }
}

void sub_2458C28B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_24590C1F4();
    v5 = sub_245910C34();
  }

  if (a2)
  {
    v6 = sub_24590BF94();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2458C294C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_24590D1F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_24590C8C4();
  swift_allocObject();
  sub_24590C8B4();
  if ((sub_24590C874() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_24590C884();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_245778F94(v4, &qword_27EE29180);
LABEL_5:
    v12 = MEMORY[0x277CFF368];
    goto LABEL_6;
  }

  v17 = *(v6 + 32);
  v17(v11, v4, v5);
  v17(v9, v11, v5);
  v18 = (*(v6 + 88))(v9, v5);
  if (v18 == *MEMORY[0x277CFF470])
  {
    v12 = MEMORY[0x277CFF360];
  }

  else
  {
    if (v18 != *MEMORY[0x277CFF468])
    {
      v19 = sub_24590C4E4();
      (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
      return (*(v6 + 8))(v9, v5);
    }

    v12 = MEMORY[0x277CFF358];
  }

LABEL_6:
  v13 = *v12;
  v14 = sub_24590C4E4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

id sub_2458C2C78()
{
  v1 = v0;
  v2 = sub_24590C744();
  if (v3)
  {
    return 0;
  }

  v5 = v2;
  type metadata accessor for IdentityProofingEligibilityHelper();
  v6 = swift_allocObject();
  sub_24590C8C4();
  swift_allocObject();
  *(v6 + 16) = sub_24590C8B4();
  v7 = sub_2458BB4E8();
  type metadata accessor for BiometricBindingController();
  v8 = swift_allocObject();
  swift_allocObject();
  v8[2] = sub_24590C8B4();
  v8[3] = v6;
  v8[4] = v7;
  v9 = objc_allocWithZone(type metadata accessor for BiometricBindingTouchIDReplacementViewController());
  v9[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController_hasObtainedTouchIDMatch] = 0;
  *&v9[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph] = 0;
  *&v9[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView] = 0;
  v10 = sub_2457AA5E0(v5, v8);
  v13[3] = type metadata accessor for CIDVUIInternalBiometricReplacementFlowManager();
  v13[4] = &off_28588BFA8;
  v13[0] = v1;
  v11 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  v12 = v1;
  sub_2458C3B70(v13, v10 + v11);
  swift_endAccess();
  return v10;
}

uint64_t sub_2458C2DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_24590F354();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_24590EA74();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v11 = sub_24590EA84();
  v8[13] = v11;
  v8[14] = *(v11 - 8);
  v8[15] = swift_task_alloc();
  sub_245910D34();
  v8[16] = sub_245910D24();
  v13 = sub_245910CD4();
  v8[17] = v13;
  v8[18] = v12;

  return MEMORY[0x2822009F8](sub_2458C2F90, v13, v12);
}

uint64_t sub_2458C2F90()
{
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_2458C303C;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  return sub_24579D9BC(v5, v4, v2, v3);
}

uint64_t sub_2458C303C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_2458C3258;
  }

  else
  {
    v7 = sub_2458C3180;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2458C3180()
{
  v1 = v0[2];

  sub_2458BFA14();
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion);
  v3 = v0[20];
  if (v2)
  {

    v2(v3, 0);
    sub_245771C34(v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2458C3258()
{
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v22 = v0[15];
  v23 = v0[7];
  v24 = v0[2];
  v25 = v0[13];

  (*(v4 + 104))(v3, *MEMORY[0x277CFF920], v6);
  v8 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  v9 = v1;
  sub_24590EA94();
  sub_24579FE68(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  v10 = swift_allocError();
  v11 = *(v2 + 16);
  v11(v12, v22, v25);
  sub_24590C714();
  sub_24590C724();
  (*(v7 + 8))(v5, v23);

  v13 = *(v24 + OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion);
  if (v13)
  {

    v13(0, v1);
    sub_245771C34(v13);
  }

  v14 = v0[21];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];

  v18 = swift_allocError();
  v11(v19, v15, v17);
  sub_2458C0FCC();

  (*(v16 + 8))(v15, v17);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2458C3524(void *a1, uint64_t a2, unint64_t a3)
{
  v40 = a1;
  v6 = sub_24590C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590C4E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  result = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  if (a3 >> 60 != 15)
  {
    v39 = v6;
    v18 = *&v3[OBJC_IVAR____TtC9CoreIDVUI34CIDVUIInternalBiometricFlowManager_context];
    sub_24578FB80(a2, a3);
    v19 = [v18 externalizedContext];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24590C154();
      v35 = a2;
      v36 = v21;
      v37 = v22;

      v23 = sub_245910D64();
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      sub_245910D34();
      sub_24578FB6C(a2, a3);
      v24 = v3;
      v38 = v10;
      v34 = v24;
      v25 = v36;
      v26 = v37;
      sub_24578FB80(v36, v37);
      v27 = sub_245910D24();
      v28 = swift_allocObject();
      v29 = MEMORY[0x277D85700];
      v28[2] = v27;
      v28[3] = v29;
      v30 = v35;
      v28[4] = v34;
      v28[5] = v30;
      v28[6] = a3;
      v28[7] = v25;
      v28[8] = v26;
      sub_2458B90EC(0, 0, v17, &unk_24591CE58, v28);
      sub_245771C44(v30, a3);
      sub_24578FC28(v25, v26);
      v10 = v38;
    }

    else
    {
      result = sub_245771C44(a2, a3);
    }

    v6 = v39;
  }

  v31 = v40;
  if (v40)
  {
    (*(v11 + 104))(v13, *MEMORY[0x277CFF360], v10);
    sub_24590C594();
    (*(v7 + 104))(v9, *MEMORY[0x277CFF398], v6);
    v32 = v31;
    sub_24590C754();
    sub_24590C534();

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

id CIDVUIInternalBiometricReplacementFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDVUIInternalBiometricReplacementFlowManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion];
  v2 = type metadata accessor for CIDVUIInternalBiometricReplacementFlowManager();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id CIDVUIInternalBiometricReplacementFlowManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CIDVUIInternalBiometricReplacementFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2458C3A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2457AA49C;

  return sub_2458C2DDC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2458C3B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE290D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2458C3C4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2457A18F4;

  return sub_2458C1B28(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CIDVUIInternalIdentityProofingDataSharingFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDVUIInternalIdentityProofingDataSharingFlowManager.init()()
{
  v1 = v0;
  sub_24590E4D4();
  swift_allocObject();
  v2 = sub_24590E4C4();
  type metadata accessor for IdentityProofingDataSharingFlowManager();
  v3 = swift_allocObject();
  *&v1[OBJC_IVAR____TtC9CoreIDVUI52CIDVUIInternalIdentityProofingDataSharingFlowManager_dataSharingFlowManager] = sub_2458C5430(v2, v3);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CIDVUIInternalIdentityProofingDataSharingFlowManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2458C3ED4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2458C3F70;

  return sub_2457BAFF0();
}

uint64_t sub_2458C3F70(char a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2458C40AC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_2458C40AC()
{
  v1 = *(v0 + 32);
  sub_2457AD07C();
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2458C42F0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2458C4368, 0, 0);
}

uint64_t sub_2458C4368()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2458C4404;

  return sub_2457BAFF0();
}

uint64_t sub_2458C4404(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2458C4578, 0, 0);
  }

  else
  {
    v6 = *(v4 + 24);

    (*(v6 + 16))(v6, a1 & 1, 0);
    _Block_release(*(v4 + 24));
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_2458C4578()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2457AD07C();
  sub_245910A04();
  v4 = sub_245911224();

  swift_willThrow();

  v5 = sub_24590BF94();
  (*(v2 + 16))(v2, 0, v5);

  _Block_release(*(v0 + 24));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2458C46A8()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2458C4744;

  return sub_2457BB610();
}

uint64_t sub_2458C4744(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_2458C48D8;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_2458C486C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2458C486C()
{
  result = sub_24590E714();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }

  return result;
}

uint64_t sub_2458C48D8()
{
  v1 = *(v0 + 32);
  sub_2457AD07C();
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458C4B18(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2458C4BC0;

  return sub_2458C4688();
}

uint64_t sub_2458C4BC0(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_24590BF94();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2458C4D50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2458C4D70, 0, 0);
}

uint64_t sub_2458C4D70()
{
  result = *(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_24590E704();
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2;
    }

    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2458C4E28;

    return sub_2457BBC90(v4);
  }

  return result;
}

uint64_t sub_2458C4E28()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2458C4F5C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2458C4F5C()
{
  v1 = *(v0 + 40);
  sub_2457AD07C();
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458C51AC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_2458C5268;

  return sub_2458C4D50(a1);
}

uint64_t sub_2458C5268()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_24590BF94();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id CIDVUIInternalIdentityProofingDataSharingFlowManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CIDVUIInternalIdentityProofingDataSharingFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2458C5430(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v8 = sub_24590F344();
  v9 = sub_245910F44();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_245767000, v8, v9, "IdentityProofingDataSharingFlowManager creating xpc connection", v10, 2u);
    MEMORY[0x245D77B40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(a2 + 16) = a1;
  return a2;
}

uint64_t dispatch thunk of CIDVUIInternalIdentityProofingDataSharingFlowManager.checkUserConsent()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0CA4;

  return v5();
}

uint64_t dispatch thunk of CIDVUIInternalIdentityProofingDataSharingFlowManager.fetchUserConsent()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0CA4;

  return v5();
}

uint64_t dispatch thunk of CIDVUIInternalIdentityProofingDataSharingFlowManager.didChangeUserConsent(consent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A18F4;

  return v7(a1);
}

uint64_t sub_2458C5928()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457AA49C;

  return sub_2458C51AC(v2, v3, v4);
}

uint64_t sub_2458C59DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458C4B18(v2, v3);
}

uint64_t sub_2458C5A88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457A18F4;

  return sub_2458C42F0(v2, v3);
}

uint64_t sub_2458C5B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v36 - v4;
  v6 = sub_24590E604();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v36[4] = v6;
  v9 = sub_24590E624();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v36[3] = v9;
  v12 = sub_24590E614();
  if (!v12)
  {

LABEL_16:

    return 0;
  }

  v13 = v12;
  if (v12 >> 62)
  {
    v14 = sub_245911424();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_24:

    v31 = objc_allocWithZone(CIDVUIProofingDisplayMessage);
    v32 = sub_2459109C4();

    v33 = sub_2459109C4();

    type metadata accessor for CIDVUIProofingDisplayMessageAction(0);
    v34 = sub_245910C34();

    v35 = [v31 initWithTitle:v32 message:v33 actions:v34];

    return v35;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_6:
  v36[5] = MEMORY[0x277D84F90];
  sub_245911564();
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    v36[1] = v8;
    v36[2] = v11;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      while (1)
      {
        MEMORY[0x245D76B30](v15, v13);
        swift_unknownObjectRetain();
        sub_24590E884();
        v16 = sub_24590E874();
        if (v16 >= 2)
        {
          break;
        }

        v17 = v16;
        sub_24590E894();
        v18 = sub_2459109C4();

        v19 = sub_24590C094();
        v20 = *(v19 - 8);
        v21 = 0;
        if ((*(v20 + 48))(v5, 1, v19) != 1)
        {
          v21 = sub_24590C034();
          (*(v20 + 8))(v5, v19);
        }

        ++v15;
        [objc_allocWithZone(CIDVUIProofingDisplayMessageAction) initWithTitle:v18 actionType:v17 actionURL:v21];
        swift_unknownObjectRelease_n();

        sub_245911544();
        sub_245911574();
        sub_245911584();
        sub_245911554();
        if (v14 == v15)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v23 = (v13 + 32);
      while (1)
      {
        v24 = *v23;
        sub_24590E884();
        v25 = sub_24590E874();
        if (v25 >= 2)
        {
          break;
        }

        v26 = v25;
        sub_24590E894();
        v27 = sub_2459109C4();

        v28 = sub_24590C094();
        v29 = *(v28 - 8);
        v30 = 0;
        if ((*(v29 + 48))(v3, 1, v28) != 1)
        {
          v30 = sub_24590C034();
          (*(v29 + 8))(v3, v28);
        }

        [objc_allocWithZone(CIDVUIProofingDisplayMessageAction) initWithTitle:v27 actionType:v26 actionURL:v30];

        sub_245911544();
        sub_245911574();
        sub_245911584();
        sub_245911554();
        ++v23;
        if (!--v14)
        {
          goto LABEL_24;
        }
      }
    }
  }

  result = sub_2459115D4();
  __break(1u);
  return result;
}

uint64_t sub_2458C62D8@<X0>(uint64_t a1@<X8>)
{
  if ([v1 _actionURL])
  {
    sub_245911354();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = sub_24590C094();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_245778F94(v9, &unk_27EE292B0);
    v6 = sub_24590C094();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

id sub_2458C6400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = &v4[OBJC_IVAR___CIDVUIProofingDisplayMessageAction_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v4[OBJC_IVAR___CIDVUIProofingDisplayMessageAction_actionType] = a3;
  sub_245778F2C(a4, v11, &unk_27EE29470);
  v13 = sub_24590C094();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_245778F94(v11, &unk_27EE29470);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    (*(v14 + 32))(boxed_opaque_existential_1, v11, v13);
  }

  v16 = &v4[OBJC_IVAR___CIDVUIProofingDisplayMessageAction__actionURL];
  v17 = v22;
  *v16 = v21;
  *(v16 + 1) = v17;
  v20.receiver = v4;
  v20.super_class = CIDVUIProofingDisplayMessageAction;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_245778F94(a4, &unk_27EE29470);
  return v18;
}

id CIDVUIProofingDisplayMessageAction.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_24590C094();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_24579D5E0(0, &unk_27EE2B1B0);
  v11 = NSStringFromSelector(sel_title);
  sub_245910A04();

  v12 = sub_245911204();

  if (v12)
  {
    v22 = v5;
    sub_24579D5E0(0, &qword_27EE29168);
    v13 = NSStringFromSelector(sel_actionType);
    sub_245910A04();

    v14 = sub_245911204();

    if (v14)
    {
      v23 = 0;
      v24 = 1;
      sub_245910EC4();

      if ((v24 & 1) == 0)
      {
        v21 = v23;
        sub_24579D5E0(0, &qword_27EE2B1C0);
        v15 = NSStringFromSelector(sel_actionURL);
        sub_245910A04();

        v16 = sub_245911204();

        if (v16)
        {
          sub_24590C054();

          v17 = v22;
          (*(v22 + 32))(v10, v8, v4);
          v18 = sub_24590C034();
          v19 = [v2 initWithTitle:v12 actionType:v21 actionURL:v18];

          (*(v17 + 8))(v10, v4);
          return v19;
        }
      }
    }

    a1 = v12;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2458C6A30(void *a1)
{
  v2 = v1;
  v4 = sub_24590C094();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 title];
  if (!v8)
  {
    sub_245910A04();
    v8 = sub_2459109C4();
  }

  v9 = NSStringFromSelector(sel_title);
  if (!v9)
  {
    sub_245910A04();
    v9 = sub_2459109C4();
  }

  [a1 encodeObject:v8 forKey:v9];

  v16[1] = [v2 actionType];
  type metadata accessor for CIDVUIProofingDisplayMessageActionType(0);
  v10 = sub_245911754();
  v11 = NSStringFromSelector(sel_actionType);
  if (!v11)
  {
    sub_245910A04();
    v11 = sub_2459109C4();
  }

  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = [v2 actionURL];
  if (v12)
  {
    v13 = v12;
    sub_24590C054();

    v14 = sub_24590C034();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = 0;
  }

  v15 = NSStringFromSelector(sel_actionURL);
  if (!v15)
  {
    sub_245910A04();
    v15 = sub_2459109C4();
  }

  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();
}

id sub_2458C6DE4()
{

  v0 = sub_2459109C4();

  return v0;
}

id sub_2458C6F5C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id CIDVUIProofingDisplayMessage.init(coder:)(void *a1)
{
  v2 = v1;
  sub_24579D5E0(0, &unk_27EE2B1B0);
  v4 = NSStringFromSelector(sel_title);
  sub_245910A04();

  v5 = sub_245911204();

  if (v5)
  {
    v6 = NSStringFromSelector(sel_message);
    sub_245910A04();

    v7 = sub_245911204();

    if (!v7)
    {

LABEL_10:
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B1C8);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_245916CE0;
    v9 = sub_24579D5E0(0, &unk_27EE2B1D0);
    *(v8 + 32) = v9;
    *(v8 + 40) = type metadata accessor for CIDVUIProofingDisplayMessageAction(v9);
    v10 = NSStringFromSelector(sel_actions);
    sub_245910A04();

    sub_245911214();

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B1E0);
      if (swift_dynamicCast())
      {
        v11 = sub_245910C34();

        v12 = [v2 initWithTitle:v5 message:v7 actions:v11];

        return v12;
      }

      goto LABEL_10;
    }

    sub_245778F94(v14, &unk_27EE292B0);
  }

  else
  {
  }

LABEL_11:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2458C727C(void *a1)
{
  v3 = [v1 title];
  if (!v3)
  {
    sub_245910A04();
    v3 = sub_2459109C4();
  }

  v4 = NSStringFromSelector(sel_title);
  if (!v4)
  {
    sub_245910A04();
    v4 = sub_2459109C4();
  }

  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 message];
  if (!v5)
  {
    sub_245910A04();
    v5 = sub_2459109C4();
  }

  v6 = NSStringFromSelector(sel_message);
  if (!v6)
  {
    sub_245910A04();
    v6 = sub_2459109C4();
  }

  [a1 encodeObject:v5 forKey:v6];

  v7 = [v1 actions];
  if (!v7)
  {
    type metadata accessor for CIDVUIProofingDisplayMessageAction(0);
    sub_245910C44();
    v7 = sub_245910C34();
  }

  v8 = NSStringFromSelector(sel_actions);
  if (!v8)
  {
    sub_245910A04();
    v9 = sub_2459109C4();

    v8 = v9;
  }

  v10 = v8;
  [a1 encodeObject:v7 forKey:?];
}

id sub_2458C74D8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_2458C75F0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager__proofingFlowManager;
  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager__proofingFlowManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager__proofingFlowManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for IdentityProofingViewProvider();
    swift_allocObject();
    v4 = sub_2458AE4D8();
    type metadata accessor for IdentityProofingConnectionProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    swift_weakInit();
    type metadata accessor for IdentityProofingEligibilityHelper();
    v6 = swift_allocObject();
    sub_24590C8C4();
    swift_allocObject();
    *(v6 + 16) = sub_24590C8B4();
    if (qword_27EE286A0 != -1)
    {
      swift_once();
    }

    v7 = qword_27EE32B48;
    sub_24590E654();
    swift_allocObject();

    v8 = sub_24590E644();
    type metadata accessor for PassProvisioningManager();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for IdentityProofingFlowManager();
    swift_allocObject();
    v2 = sub_24586FE68(v4, v5, v6, v7, v8, v9);
    v2[13] = &off_28588C5D8;
    swift_unknownObjectWeakAssign();
    *(v3 + v1) = v2;
  }

  return v2;
}

id CIDVUIInternalProofingFlowManager.__allocating_init(delegate:externalProofingFlowManager:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2458CD4A8(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

id CIDVUIInternalProofingFlowManager.init(delegate:externalProofingFlowManager:)(uint64_t a1, void *a2)
{
  v3 = sub_2458CD4A8(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

id CIDVUIInternalProofingFlowManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "CIDVUIInternalProofingFlowManager - deinit", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  if (*&v1[OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager__proofingFlowManager] && (sub_24590D864(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "CIDVUIInternalProofingFlowManager - connection is IdentityManagementUIClient, calling invalidate", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    v15(v6, v2);
    sub_24590D844();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24590C714();
    v19 = sub_24590F344();
    v20 = sub_245910F54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245767000, v19, v20, "CIDVUIInternalProofingFlowManager - connection is not IdentityManagementUIClient, no invalidate called", v21, 2u);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    v15(v9, v2);
  }

  v22 = type metadata accessor for CIDVUIInternalProofingFlowManager();
  v24.receiver = v1;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

uint64_t sub_2458C7C50(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24590EA74();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458C7E14, 0, 0);
}

uint64_t sub_2458C7E14()
{
  v261 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "--> startProofing()", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[33];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[12];

  v8 = *(v6 + 8);
  v0[34] = v8;
  v8(v4, v5);
  v9 = [v7 idType];
  if (!v9)
  {
    v255 = 0;
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v255 = 3;
LABEL_7:
    v10 = v0[12];
    type metadata accessor for AXSettingsWrapper();
    inited = swift_initStackObject();
    v0[35] = inited;
    *(inited + 16) = [objc_opt_self() sharedInstance];
    type metadata accessor for IdentityProofingAXSettingsProvider();
    v12 = swift_initStackObject();
    v0[36] = v12;
    *(v12 + 16) = inited;
    v13 = [v10 state];
    sub_245910A04();

    v14 = [v10 country];
    sub_245910A04();

    [v10 target];
    sub_24590C744();
    v15 = [v10 credentialIdentifier];
    v16 = sub_245910A04();
    v253 = v17;
    v254 = v16;

    v18 = [v10 productIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = sub_245910A04();
      v251 = v21;
      v252 = v20;
    }

    else
    {
      v251 = 0;
      v252 = 0;
    }

    v24 = sub_24577E428();
    v25 = *(v24 + 2);
    v258 = v8;
    v259 = v0;
    if (v25)
    {
      v260[0] = MEMORY[0x277D84F90];
      v249 = v24;
      sub_24577CCB4(0, v25, 0);
      v26 = v249;
      v27 = v260[0];
      v28 = 32;
      do
      {
        v29 = v26[v28];
        if (v29 == 3)
        {
          v30 = 0xD000000000000013;
        }

        else
        {
          v30 = 1836019578;
        }

        if (v29 == 3)
        {
          v31 = 0x800000024591F620;
        }

        else
        {
          v31 = 0xE400000000000000;
        }

        if (v29 == 2)
        {
          v30 = 0x6E6F436563696F76;
          v31 = 0xEC0000006C6F7274;
        }

        if (v26[v28])
        {
          v32 = 0x7669747369737361;
        }

        else
        {
          v32 = 0x6F43686374697773;
        }

        if (v26[v28])
        {
          v33 = 0xEE006863756F5465;
        }

        else
        {
          v33 = 0xED00006C6F72746ELL;
        }

        if (v26[v28] <= 1u)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        if (v26[v28] <= 1u)
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }

        v260[0] = v27;
        v37 = *(v27 + 16);
        v36 = *(v27 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24577CCB4((v36 > 1), v37 + 1, 1);
          v26 = v249;
          v27 = v260[0];
        }

        *(v27 + 16) = v37 + 1;
        v38 = v27 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        ++v28;
        --v25;
      }

      while (v25);

      v0 = v259;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v39 = [v0[12] accountKeyIdentifier];
    if (v39)
    {
      v40 = v39;
      v250 = sub_245910A04();
      v42 = v41;
    }

    else
    {
      v250 = 0;
      v42 = 0;
    }

    v43 = [v0[12] supplementalProvisioningData];
    if (v43)
    {
      v44 = v43;
      v45 = sub_24590C154();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xF000000000000000;
    }

    v48 = v259[12];
    v49 = [v48 isPairedWatchUnsupported];
    v50 = [v48 piiTokenIdentifier];
    if (v50)
    {
      v51 = v50;
      v52 = sub_245910A04();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = v259[13];
    v56 = objc_allocWithZone(sub_24590DE94());
    v247 = v52;
    v248 = v54;
    LOBYTE(v246) = v49;
    v244 = v47;
    v245 = v255;
    v57 = v259;
    v243 = v45;
    v242 = v42;
    v241 = v27;
    v240 = v252;
    v239 = v253;
    v238 = v254;
    v58 = sub_24590DE64();
    v259[37] = v58;
    v59 = *(v55 + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager_configuration);
    *(v55 + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager_configuration) = v58;
    v256 = v58;

    sub_24590C714();
    v60 = sub_24590F344();
    v61 = sub_245910F54();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_245767000, v60, v61, "---BEGIN LOGGING PROOFING CONFIGURATION---", v62, 2u);
      MEMORY[0x245D77B40](v62, -1, -1);
    }

    v63 = v259[32];
    v64 = v259[17];
    v65 = v259[12];

    v66 = v258;
    v258(v63, v64);
    sub_24590C714();
    v67 = v65;
    v68 = sub_24590F344();
    v69 = sub_245910F54();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v259[31];
    v72 = v259[17];
    if (v70)
    {
      v73 = v259[12];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v260[0] = v75;
      *v74 = 136315138;
      v76 = [v73 state];
      v77 = sub_245910A04();
      v79 = v78;

      v80 = v77;
      v66 = v258;
      v81 = sub_2458CC378(v80, v79, v260);

      *(v74 + 4) = v81;
      v57 = v259;
      _os_log_impl(&dword_245767000, v68, v69, "state -> %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x245D77B40](v75, -1, -1);
      MEMORY[0x245D77B40](v74, -1, -1);
    }

    v66(v71, v72);
    v82 = v57[12];
    sub_24590C714();
    v83 = v82;
    v84 = sub_24590F344();
    v85 = sub_245910F54();

    v86 = os_log_type_enabled(v84, v85);
    v87 = v57[30];
    v88 = v57[17];
    if (v86)
    {
      v89 = v57[12];
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v260[0] = v91;
      *v90 = 136315138;
      v92 = [v89 country];
      v93 = sub_245910A04();
      v95 = v94;

      v96 = v93;
      v57 = v259;
      v97 = sub_2458CC378(v96, v95, v260);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_245767000, v84, v85, "country ->  %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x245D77B40](v91, -1, -1);
      MEMORY[0x245D77B40](v90, -1, -1);

      v258(v87, v88);
    }

    else
    {

      v66(v87, v88);
    }

    [v57[12] target];
    sub_24590C744();
    if (v98)
    {
      v99 = 0;
      v100 = 0;
    }

    else
    {
      v99 = sub_24590C734();
      v100 = v101;
    }

    sub_24590C714();

    v102 = sub_24590F344();
    v103 = sub_245910F54();

    v104 = os_log_type_enabled(v102, v103);
    v105 = v57[29];
    v106 = v57[17];
    if (v104)
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v260[0] = v108;
      *v107 = 136315138;
      if (v100)
      {
        v109 = v99;
      }

      else
      {
        v109 = 0;
      }

      if (!v100)
      {
        v100 = 0xE000000000000000;
      }

      v110 = sub_2458CC378(v109, v100, v260);

      *(v107 + 4) = v110;
      _os_log_impl(&dword_245767000, v102, v103, "targetDevice ->  %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x245D77B40](v108, -1, -1);
      v111 = v107;
      v57 = v259;
      MEMORY[0x245D77B40](v111, -1, -1);
    }

    else
    {
    }

    v258(v105, v106);
    sub_24590C714();
    v112 = sub_24590F344();
    v113 = sub_245910F54();
    v114 = os_log_type_enabled(v112, v113);
    v115 = v57[28];
    v116 = v57[17];
    if (v114)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v260[0] = v118;
      *v117 = 136315138;
      v119 = sub_24590DC64();
      v121 = sub_2458CC378(v119, v120, v260);

      *(v117 + 4) = v121;
      v57 = v259;
      _os_log_impl(&dword_245767000, v112, v113, "actionStatus -> %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x245D77B40](v118, -1, -1);
      MEMORY[0x245D77B40](v117, -1, -1);
    }

    v122 = v258;
    v258(v115, v116);
    v123 = v57[12];
    sub_24590C714();
    v124 = v123;
    v125 = sub_24590F344();
    v126 = sub_245910F54();

    v127 = os_log_type_enabled(v125, v126);
    v128 = v57[27];
    v129 = v57[17];
    if (v127)
    {
      v130 = v57[12];
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v260[0] = v132;
      *v131 = 136315138;
      v133 = [v130 credentialIdentifier];
      v134 = sub_245910A04();
      v136 = v135;

      v137 = v134;
      v57 = v259;
      v138 = sub_2458CC378(v137, v136, v260);
      v122 = v258;

      *(v131 + 4) = v138;
      _os_log_impl(&dword_245767000, v125, v126, "credentialIdentifier -> %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x245D77B40](v132, -1, -1);
      MEMORY[0x245D77B40](v131, -1, -1);
    }

    v122(v128, v129);
    v139 = v57[12];
    sub_24590C714();
    v140 = v139;
    v141 = sub_24590F344();
    v142 = sub_245910F54();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = v57[12];
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v260[0] = v145;
      *v144 = 136315138;
      v146 = [v143 productIdentifier];
      if (v146)
      {
        v147 = v146;
        v148 = sub_245910A04();
        v150 = v149;
      }

      else
      {
        v148 = 0;
        v150 = 0xE000000000000000;
      }

      v155 = v57[26];
      v156 = v259[17];
      v157 = sub_2458CC378(v148, v150, v260);

      *(v144 + 4) = v157;
      _os_log_impl(&dword_245767000, v141, v142, "productIdentifier -> %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x245D77B40](v145, -1, -1);
      MEMORY[0x245D77B40](v144, -1, -1);

      v153 = v155;
      v154 = v156;
      v57 = v259;
    }

    else
    {
      v151 = v57[26];
      v152 = v57[17];

      v153 = v151;
      v154 = v152;
    }

    v122(v153, v154);
    v158 = v57[12];
    sub_24590C714();
    v159 = v158;
    v160 = sub_24590F344();
    v161 = sub_245910F54();

    if (os_log_type_enabled(v160, v161))
    {
      v162 = v57[12];
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v260[0] = v164;
      *v163 = 136315138;
      v165 = [v162 accountKeyIdentifier];
      if (v165)
      {
        v166 = v165;
        v167 = sub_245910A04();
        v169 = v168;
      }

      else
      {
        v167 = 0;
        v169 = 0xE000000000000000;
      }

      v174 = v57[25];
      v175 = v259[17];
      v176 = sub_2458CC378(v167, v169, v260);

      *(v163 + 4) = v176;
      _os_log_impl(&dword_245767000, v160, v161, "accountKeyIdentifier -> %s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v164);
      MEMORY[0x245D77B40](v164, -1, -1);
      MEMORY[0x245D77B40](v163, -1, -1);

      v172 = v174;
      v173 = v175;
      v57 = v259;
    }

    else
    {
      v170 = v57[25];
      v171 = v57[17];

      v172 = v170;
      v173 = v171;
    }

    v122(v172, v173);
    sub_24590C714();
    v177 = v256;
    v178 = sub_24590F344();
    v179 = sub_245910F54();

    v180 = os_log_type_enabled(v178, v179);
    v181 = v57[24];
    v182 = v57[17];
    v257 = v177;
    if (v180)
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v260[0] = v184;
      *v183 = 136315138;
      sub_24590DDB4();
      v185 = sub_24590CDA4();
      v187 = sub_2458CC378(v185, v186, v260);

      *(v183 + 4) = v187;
      v122 = v258;
      _os_log_impl(&dword_245767000, v178, v179, "documentType -> %s", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v184);
      v188 = v184;
      v57 = v259;
      MEMORY[0x245D77B40](v188, -1, -1);
      MEMORY[0x245D77B40](v183, -1, -1);
    }

    v122(v181, v182);
    v189 = v57[12];
    sub_24590C714();
    v190 = v189;
    v191 = sub_24590F344();
    v192 = sub_245910F54();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = v57[12];
      v194 = swift_slowAlloc();
      *v194 = 67109120;
      v195 = [v193 supplementalProvisioningData];
      if (v195)
      {
        v196 = v195;
        v197 = sub_24590C154();
        v199 = v198;

        sub_24578FC28(v197, v199);
        v200 = 1;
      }

      else
      {
        v200 = 0;
      }

      v202 = v57[12];
      *(v194 + 4) = v200;

      _os_log_impl(&dword_245767000, v191, v192, "supplementalProvisioningData exists -> %{BOOL}d", v194, 8u);
      MEMORY[0x245D77B40](v194, -1, -1);
      v201 = v57[12];
    }

    else
    {

      v201 = v57[12];
      v191 = v201;
    }

    v203 = v57[23];
    v205 = v57[17];
    v204 = v57[18];

    v57[38] = (v204 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v122(v203, v205);
    sub_24590C714();
    v206 = v201;
    v207 = sub_24590F344();
    v208 = sub_245910F54();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = v57[12];
      v210 = swift_slowAlloc();
      *v210 = 67109120;
      *(v210 + 4) = [v209 isPairedWatchUnsupported];

      _os_log_impl(&dword_245767000, v207, v208, "isPairedWatchUnsupported -> %{BOOL}d", v210, 8u);
      MEMORY[0x245D77B40](v210, -1, -1);
      v211 = v57[12];
    }

    else
    {

      v211 = v57[12];
      v207 = v211;
    }

    v212 = v57[22];
    v213 = v57[17];

    v122(v212, v213);
    sub_24590C714();
    v214 = v211;
    v215 = sub_24590F344();
    v216 = sub_245910F54();

    if (os_log_type_enabled(v215, v216))
    {
      v217 = v57[12];
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v260[0] = v219;
      *v218 = 136315138;
      v220 = [v217 piiTokenIdentifier];
      if (v220)
      {
        v221 = v220;
        v222 = sub_245910A04();
        v224 = v223;
      }

      else
      {
        v222 = 0;
        v224 = 0xE000000000000000;
      }

      v229 = v259[21];
      v230 = v259[17];
      v231 = sub_2458CC378(v222, v224, v260);

      *(v218 + 4) = v231;
      _os_log_impl(&dword_245767000, v215, v216, "piiTokenIdentifier -> %s", v218, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v219);
      MEMORY[0x245D77B40](v219, -1, -1);
      MEMORY[0x245D77B40](v218, -1, -1);

      v227 = v229;
      v228 = v230;
      v122 = v258;
      v57 = v259;
    }

    else
    {
      v225 = v57[21];
      v226 = v57[17];

      v227 = v225;
      v228 = v226;
    }

    v122(v227, v228);
    sub_24590C714();
    v232 = sub_24590F344();
    v233 = sub_245910F54();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&dword_245767000, v232, v233, "---END LOGGING PROOFING CONFIGURATION---", v234, 2u);
      MEMORY[0x245D77B40](v234, -1, -1);
    }

    v235 = v57[20];
    v236 = v57[17];

    v122(v235, v236);
    v57[39] = sub_2458C75F0();
    v237 = swift_task_alloc();
    v57[40] = v237;
    *v237 = v57;
    v237[1] = sub_2458C9444;

    return sub_245874CE8(v257);
  }

  (*(v0[15] + 104))(v0[16], *MEMORY[0x277CFF970], v0[14]);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2458CDE88(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();
  sub_2458CB39C("<-- startProofing()");

  v22 = v0[1];

  return v22();
}

uint64_t sub_2458C9444()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_2458C96C8;
  }

  else
  {
    v2 = sub_2458C9578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458C9578()
{

  sub_2458CB39C("<-- startProofing()");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458C96C8()
{
  v21 = v0;
  v1 = v0[41];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = v0[19];
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "CIDVUIInternalProofingFlowManager Error from startProofing %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {
    v13 = v0[34];
    v14 = v0[19];
    v15 = v0[17];

    v13(v14, v15);
  }

  v16 = v0[41];
  v17 = v0[37];
  sub_24579D5E0(0, &qword_27EE290E0);
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  sub_2458CB39C("<-- startProofing()");

  v18 = v0[1];

  return v18();
}

uint64_t sub_2458C9B5C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2458C9C20;

  return sub_2458C7C50(v6);
}

uint64_t sub_2458C9C20()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_24590BF94();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_2458C9DBC()
{
  sub_2458C75F0();
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager_configuration);
  v2 = sub_2458935AC();

  return v2;
}

uint64_t sub_2458C9E90()
{
  v1[6] = v0;
  v2 = sub_24590F354();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458C9F5C, 0, 0);
}

uint64_t sub_2458C9F5C()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "--> proofingAvailability()", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  v7 = *(v6 + 8);
  v0[11] = v7;
  v7(v4, v5);
  v0[12] = sub_2458C75F0();
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2458CA0A4;

  return sub_245882278();
}

uint64_t sub_2458CA0A4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[14] = a2;
  v5[15] = v2;

  if (v2)
  {
    v6 = sub_2458CA4C0;
  }

  else
  {

    v5[16] = a1;
    v6 = sub_2458CA1D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2458CA1D4()
{
  v23 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_2458CD320(v0[14]);
  if (v1)
  {
    v4 = v1;

    sub_24590C714();
    v5 = v1;
    v6 = sub_24590F344();
    v7 = sub_245910F54();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[7];
    if (v8)
    {
      v21 = v0[9];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_2459117D4();
      v16 = sub_2458CC378(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_245767000, v6, v7, "CIDVUIInternalProofingFlowManager Error from proofingFlowAvailability %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D77B40](v13, -1, -1);
      MEMORY[0x245D77B40](v12, -1, -1);

      v9(v21, v11);
    }

    else
    {

      v9(v10, v11);
    }

    sub_24579D5E0(0, &qword_27EE290E0);
    sub_245910A04();
    sub_245911224();

    swift_willThrow();

    sub_2458CB39C("<-- proofingAvailability()");

    v20 = v0[1];

    return v20();
  }

  else
  {
    if (v2 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v2;
    }

    sub_2458CB39C("<-- proofingAvailability()");

    v18 = v0[1];

    return v18(v17, v3);
  }
}

uint64_t sub_2458CA4C0()
{
  v19 = v0;

  v1 = v0[15];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = v0[9];
    v17 = v0[11];
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_2459117D4();
    v10 = sub_2458CC378(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_245767000, v3, v4, "CIDVUIInternalProofingFlowManager Error from proofingFlowAvailability %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);

    v17(v16, v5);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[9];
    v13 = v0[7];

    v11(v12, v13);
  }

  sub_24579D5E0(0, &qword_27EE290E0);
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  sub_2458CB39C("<-- proofingAvailability()");

  v14 = v0[1];

  return v14();
}

uint64_t sub_2458CA898(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2458CA940;

  return sub_2458C9E90();
}

uint64_t sub_2458CA940(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v1)
  {
    v9 = sub_24590BF94();

    (v8)[2](v8, 0, 0, v9);
    _Block_release(v8);
  }

  else
  {
    sub_24579D5E0(0, &qword_27EE2B2B0);
    v10 = sub_245910C34();
    (v8)[2](v8, a1, v10, 0);

    _Block_release(v8);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_2458CAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_24590F354();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458CABF0, 0, 0);
}

uint64_t sub_2458CABF0()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "--> proofingStatus()", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  v7 = *(v6 + 8);
  v0[15] = v7;
  v7(v4, v5);
  v0[16] = sub_2458C75F0();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_2458CAD44;
  v9 = v0[8];
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];

  return sub_2458825B8(v12, v11, v9, v10);
}

uint64_t sub_2458CAD44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_2458CB138;
  }

  else
  {

    v4 = sub_2458CAE60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2458CAE60()
{
  v23 = v0;
  v1 = v0[19];
  v2 = sub_2458CCD58();
  v3 = v0[18];
  if (v1)
  {
    v4 = v1;

    sub_24590C714();
    v5 = v1;
    v6 = sub_24590F344();
    v7 = sub_245910F54();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[15];
    v10 = v0[13];
    v11 = v0[11];
    if (v8)
    {
      v21 = v0[13];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_2459117D4();
      v16 = sub_2458CC378(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_245767000, v6, v7, "CIDVUIInternalProofingFlowManager Error from proofingStatus %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D77B40](v13, -1, -1);
      MEMORY[0x245D77B40](v12, -1, -1);

      v9(v21, v11);
    }

    else
    {

      v9(v10, v11);
    }

    sub_24579D5E0(0, &qword_27EE290E0);
    sub_245910A04();
    sub_245911224();

    swift_willThrow();

    sub_2458CB39C("<-- proofingStatus()");

    v20 = v0[1];

    return v20();
  }

  else
  {
    v17 = v2;

    sub_2458CB39C("<-- proofingStatus()");

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_2458CB138()
{
  v19 = v0;

  v1 = v0[19];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = v0[13];
    v17 = v0[15];
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_2459117D4();
    v10 = sub_2458CC378(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_245767000, v3, v4, "CIDVUIInternalProofingFlowManager Error from proofingStatus %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);

    v17(v16, v5);
  }

  else
  {
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[11];

    v11(v12, v13);
  }

  sub_24579D5E0(0, &qword_27EE290E0);
  sub_245910A04();
  sub_245911224();

  swift_willThrow();

  sub_2458CB39C("<-- proofingStatus()");

  v14 = v0[1];

  return v14();
}

uint64_t sub_2458CB39C(const char *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, a1, v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2458CB668(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_245910A04();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_245910A04();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_2458CB764;

  return sub_2458CAB1C(v6, v8, v9, v11);
}

uint64_t sub_2458CB764(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_24590BF94();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id CIDVUIInternalProofingFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2458CB9D8(void *a1)
{
  v3 = sub_2459107E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245910814();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v10 = sub_245911034();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2458CDDF8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_33;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2458CDE88(&qword_27EE2A980, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  MEMORY[0x245D76690](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

void sub_2458CBCA8(void *a1)
{
  if (a1)
  {
    sub_24579D5E0(0, &qword_27EE290E0);
    sub_245910A04();
    v2 = a1;
    v3 = sub_245911224();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_unknownObjectWeakLoadStrong();
      v11 = sub_24590BF94();
      [v5 proofingFlowManager:v6 completedProofingWithError:v11];
      swift_unknownObjectRelease();

      v7 = v11;
    }

    else
    {

      v7 = a1;
    }
  }

  else
  {
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = swift_unknownObjectWeakLoadStrong();
      [v9 proofingFlowManager:v10 completedProofingWithError:0];

      swift_unknownObjectRelease();
    }
  }
}

void sub_2458CBE90(unint64_t a1)
{
  v2 = sub_24590F354();
  MEMORY[0x28223BE20](v2);
  sub_2458CD320(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector_])
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      sub_24579D5E0(0, &qword_27EE2B2B0);
      v6 = sub_245910C34();
      [v4 proofingFlowManager:v5 didChangeActiveConfigurations:v6];

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

unint64_t sub_2458CC120(uint64_t a1)
{
  sub_24590EA34();
  sub_2458CDE88(&qword_27EE2B2C8, MEMORY[0x277CFF8F8]);
  v2 = sub_245910904();

  return sub_2458CC1B8(a1, v2);
}

unint64_t sub_2458CC1B8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24590EA34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2458CDE88(&qword_27EE2B2D0, MEMORY[0x277CFF8F8]);
      v15 = sub_245910934();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2458CC378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2458CC444(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2457816F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2458CC444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2458CC550(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_245911534();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2458CC550(uint64_t a1, unint64_t a2)
{
  v3 = sub_2458CC59C(a1, a2);
  sub_2458CC6CC(&unk_285882A10);
  return v3;
}

uint64_t sub_2458CC59C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2457E3F48(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_245911534();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_245910B44();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2457E3F48(v10, 0);
        result = sub_2459114C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2458CC6CC(uint64_t result)
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

  result = sub_2458CC7B8(result, v11, 1, v3);
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

char *sub_2458CC7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299B0);
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

unint64_t sub_2458CC8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B2B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B2C0);
    v7 = sub_245911624();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245778F2C(v9, v5, &qword_27EE2B2B8);
      result = sub_2458CC120(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24590EA34();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_245771B9C(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2458CCA9C()
{
  v0 = sub_24590EA74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590CDC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590CDD4();
  v8 = (*(v5 + 88))(v7, v4);
  result = 0;
  if (v8 != *MEMORY[0x277CFF440])
  {
    if (v8 == *MEMORY[0x277CFF448])
    {
      return 1;
    }

    else
    {
      (*(v1 + 104))(v3, *MEMORY[0x277CFF970], v0);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_2458CDE88(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_24590EA94();
      swift_willThrow();
      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

id sub_2458CCD58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v75 = &v62 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v62 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = sub_24590C094();
  v74 = *(v13 - 8);
  v14 = v74[7];
  v14(v12, 1, 1, v13);
  sub_24590DDE4();
  if (v15)
  {
    sub_24590C084();

    sub_2457B2590(v12);
    sub_2458CDE18(v10, v12);
  }

  v14(v7, 1, 1, v13);
  sub_24590DE34();
  if (v16)
  {
    sub_24590C084();

    sub_2457B2590(v7);
    sub_2458CDE18(v10, v7);
  }

  v17 = sub_24590DE74();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v71 = v19;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v77 = v20;
  v21 = sub_24590DE84();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v70 = v23;
  sub_24590DDC4();
  if ((v24 & 1) != 0 || (v25 = sub_24590C754(), v26 = 1, v25 != sub_24590C754()))
  {
    v26 = 2;
  }

  sub_24590DDA4();
  v80 = v7;
  v73 = v26;
  v79 = v12;
  if (v27)
  {
    v72 = 3;
  }

  else
  {
    v72 = sub_24590DC74();
  }

  v28 = sub_24590DDD4();
  v30 = v29;
  sub_24590DE04();
  v32 = v31;
  sub_24590DDB4();
  v33 = v78;
  v34 = sub_2458CCA9C();
  if (!v33)
  {
    v64 = v28;
    v69 = v34;
    v78 = 0;
    sub_245778F2C(v80, v75, &unk_27EE29470);
    sub_245778F2C(v79, v76, &unk_27EE29470);
    v63 = sub_24590DE54();
    v66 = v35;
    v67 = sub_24590DE44();
    v36 = sub_24590DE24();
    if (v36)
    {
      v37 = v36;
      v68 = sub_2458C5B34();
    }

    else
    {
      v68 = 0;
    }

    v38 = v74;
    v65 = sub_24590DDF4();
    v40 = v39;
    v71 = sub_2459109C4();

    v77 = sub_2459109C4();

    if (v30)
    {
      v70 = sub_2459109C4();

      v41 = v75;
      v42 = v76;
      if (v32)
      {
LABEL_27:
        v76 = sub_2459109C4();

        goto LABEL_30;
      }
    }

    else
    {
      v70 = 0;
      v41 = v75;
      v42 = v76;
      if (v32)
      {
        goto LABEL_27;
      }
    }

    v76 = 0;
LABEL_30:
    v43 = v38[6];
    if (v43(v41, 1, v13) == 1)
    {
      v75 = 0;
    }

    else
    {
      v75 = sub_24590C034();
      (v38[1])(v41, v13);
    }

    if (v43(v42, 1, v13) == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_24590C034();
      (v74[1])(v42, v13);
    }

    v45 = v66;
    if (v66 >> 60 == 15)
    {
      v46 = 0;
      if (v40)
      {
LABEL_38:
        v47 = sub_2459109C4();

LABEL_41:
        v78 = v47;
        v49 = objc_allocWithZone(CIDVUIProofingConfiguration);
        v61 = v47;
        v50 = v68;
        LOBYTE(v60) = v67 & 1;
        v58 = v44;
        v59 = v46;
        v51 = v44;
        v52 = v75;
        v74 = v46;
        v53 = v76;
        v54 = v71;
        v55 = v77;
        v56 = v70;
        v30 = [v49 initWithState:v71 country:v77 target:v73 status:v72 credentialIdentifier:0 productIdentifier:v70 accountKeyIdentifier:v76 idType:v69 extendedReviewURL:v75 learnMoreURL:v58 supplementalProvisioningData:v59 isPairedWatchUnsupported:v60 proofingErrorMessage:v68 piiTokenIdentifier:v61];

        sub_2457B2590(v80);
        sub_2457B2590(v79);
        return v30;
      }
    }

    else
    {
      v48 = v63;
      v46 = sub_24590C144();
      sub_245771C44(v48, v45);
      if (v40)
      {
        goto LABEL_38;
      }
    }

    v47 = 0;
    goto LABEL_41;
  }

  sub_2457B2590(v80);
  sub_2457B2590(v79);
  return v30;
}

uint64_t sub_2458CD320(unint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D76B30](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = sub_2458CCD58();
      if (v1)
      {

        return v5;
      }

      v10 = v9;
      MEMORY[0x245D76260]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      sub_245910CA4();

      v5 = v12;
      ++v4;
      if (v8 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

id sub_2458CD4A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager__proofingFlowManager] = 0;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager_configuration] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15[1] = a2;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, "CIDVUIInternalProofingFlowManager - init", v11, 2u);
    MEMORY[0x245D77B40](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v13 = type metadata accessor for CIDVUIInternalProofingFlowManager();
  v16.receiver = v3;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t dispatch thunk of CIDVUIInternalProofingFlowManager.startProofing(configuration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A18F4;

  return v7(a1);
}

uint64_t dispatch thunk of CIDVUIInternalProofingFlowManager.proofingFlowAvailability()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2458C0EC0;

  return v5();
}

uint64_t dispatch thunk of CIDVUIInternalProofingFlowManager.proofingStatus(for:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x100);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2458C0CA4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2458CDB90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2457AA49C;

  return sub_2458CB668(v2, v3, v5, v4);
}

uint64_t sub_2458CDC50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458CA898(v2, v3);
}

uint64_t sub_2458CDCFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2457A18F4;

  return sub_2458C9B5C(v2, v3, v4);
}

uint64_t objectdestroy_36Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2458CDE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458CDE88(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2458CDED0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B3A0);
  sub_24590FF64();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_2458CDF50(uint64_t a1)
{
  v18[1] = a1;
  v18[0] = sub_24590E6A4();
  v2 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590E834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590F2B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B398);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v18 - v14;
  (*(v10 + 16))(v12, v1, v9);
  type metadata accessor for MobileDocumentProviderPresentmentContext();
  sub_24590E7E4();
  sub_24590E824();
  (*(v6 + 8))(v8, v5);
  sub_24590E694();
  (*(v2 + 8))(v4, v18[0]);
  sub_2459110C4();
  v16 = sub_2459110D4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_2459110E4();
}

uint64_t sub_2458CE234@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2458D053C(v1, v5);
  v6 = type metadata accessor for MobileDocumentProviderExtensionHostViewCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_2458D053C(v5, v7 + OBJC_IVAR____TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator_presentmentContext);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_2458D039C(v5);
  *a1 = v8;
  return result;
}

uint64_t sub_2458CE33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2458D04F4(&qword_27EE2B390, type metadata accessor for MobileDocumentProviderExtensionHostView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2458CE3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2458D04F4(&qword_27EE2B390, type metadata accessor for MobileDocumentProviderExtensionHostView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2458CE464()
{
  sub_2458D04F4(&qword_27EE2B390, type metadata accessor for MobileDocumentProviderExtensionHostView);
  sub_24590FF34();
  __break(1u);
}

void sub_2458CE4BC(void *a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24590F354();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-v8];
  v35[0] = 0;
  v10 = [a1 makeXPCConnectionWithError_];
  v11 = v35[0];
  if (v10)
  {
    v12 = v10;
    v13 = objc_opt_self();
    v14 = v11;
    v15 = [v13 interfaceWithProtocol_];
    [v12 setRemoteObjectInterface_];

    v16 = [v13 interfaceWithProtocol_];
    [v12 setExportedInterface_];

    [v12 setExportedObject_];
    [v12 activate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B348);
    swift_allocObject();
    v17 = v12;
    v18 = sub_24590E464();
    v19 = sub_245910D64();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_245910D34();
    v20 = v1;

    v21 = sub_245910D24();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    v22[5] = v18;
    sub_2458B90EC(0, 0, v9, &unk_24591D118, v22);
  }

  else
  {
    v24 = v35[0];
    v25 = sub_24590BFA4();

    swift_willThrow();
    sub_24590C714();
    v26 = v25;
    v27 = sub_24590F344();
    v28 = sub_245910F64();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_2458CC378(0xD000000000000021, 0x800000024592DE90, v35);
      *(v29 + 12) = 2112;
      v32 = v25;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v33;
      *v30 = v33;
      _os_log_impl(&dword_245767000, v27, v28, "MobileDocumentProviderExtensionHostViewCoordinator %s encountered error %@", v29, 0x16u);
      sub_24579D578(v30);
      MEMORY[0x245D77B40](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245D77B40](v31, -1, -1);
      MEMORY[0x245D77B40](v29, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2458CE960(void *a1)
{
  v2 = sub_24590E584();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 104))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CFF6B0]);
  sub_24590E5A4();
  sub_2458D04F4(&unk_27EE2B360, MEMORY[0x277CFF6B8]);
  v5 = swift_allocError();
  v6 = a1;
  sub_24590E594();
  return v5;
}

uint64_t sub_2458CEAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24590E8E4();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_24590F354();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_24590E864();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = sub_24590E814();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v5[17] = *(v10 + 64);
  v5[18] = swift_task_alloc();
  sub_245910D34();
  v5[19] = sub_245910D24();
  v12 = sub_245910CD4();
  v5[20] = v12;
  v5[21] = v11;

  return MEMORY[0x2822009F8](sub_2458CECC0, v12, v11);
}

uint64_t sub_2458CECC0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator_presentmentContext;
  v0[22] = OBJC_IVAR____TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator_presentmentContext;
  v6 = v4 + v5;
  v7 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  v0[23] = v7;
  (*(v3 + 16))(v1, v6 + *(v7 + 20), v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[24] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[25] = v10;
  v11 = sub_24590E914();
  *v10 = v0;
  v10[1] = sub_2458CEE20;

  return MEMORY[0x282151D80](v0 + 2, &unk_24591D128, v9, v11);
}

uint64_t sub_2458CEE20()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_2458CF0A0;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_2458CEF3C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2458CEF3C()
{
  v1 = v0[22];
  v15 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[3];

  v14 = v6 + v1;
  v7 = v0[2];
  sub_24590E8F4();
  v8 = sub_24590E844();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v2, v4);
  sub_24578FB80(v8, v10);
  sub_24590E854();
  (*(v14 + *(v15 + 24)))(v3);

  sub_24578FC28(v8, v10);
  v11(v0[13], v0[11]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2458CF0A0()
{
  v1 = v0[26];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_245767000, v3, v4, "MobileDocumentProviderExtensionHostViewCoordinator encountered error while attempting to request document %@", v6, 0xCu);
    sub_24579D578(v7);
    MEMORY[0x245D77B40](v7, -1, -1);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  v23 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  v13 = v0[9];
  v12 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = v3;
  v19 = v0[3];

  (*(v13 + 8))(v12, v14);
  v20 = *(v19 + v11 + *(v10 + 28));
  (*(v17 + 104))(v15, *MEMORY[0x277CFF768], v16);
  v20(v15);

  (*(v17 + 8))(v0[7], v0[5]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2458CF2DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = sub_24590E814();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_2458CF3A4, 0, 0);
}

uint64_t sub_2458CF3A4()
{
  v1 = v0[24];
  (*(v0[22] + 16))(v0[23], v0[20], v0[21]);
  v2 = objc_allocWithZone(sub_24590E8D4());
  v3 = sub_24590E8C4();
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2458CF50C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2B350);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579ED8C;
  v0[13] = &block_descriptor_34;
  v0[14] = v4;
  [v1 requestDocumentWithRequest:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2458CF50C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_2458CF694;
  }

  else
  {
    v2 = sub_2458CF61C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2458CF61C()
{
  v1 = *(v0 + 200);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458CF694()
{
  v1 = *(v0 + 200);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458CF778()
{
  v1[2] = v0;
  v2 = sub_24590D384();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_245910D34();
  v1[8] = sub_245910D24();
  v4 = sub_245910CD4();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_2458CF87C, v4, v3);
}

uint64_t sub_2458CF87C()
{
  v0[11] = OBJC_IVAR____TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator_presentmentContext;
  v0[12] = sub_245910D24();
  v2 = sub_245910CD4();
  v0[13] = v2;
  v0[14] = v1;

  return MEMORY[0x2822009F8](sub_2458CF914, v2, v1);
}

uint64_t sub_2458CF914()
{
  v1 = v0[2] + v0[11];
  v2 = (v1 + *(type metadata accessor for MobileDocumentProviderPresentmentContext() + 36));
  v6 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2458CFA20;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_2458CFA20()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2458CFCA4;
  }

  else
  {
    v5 = sub_2458CFB5C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458CFB5C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_2458CFBC0, v1, v2);
}

uint64_t sub_2458CFBC0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 16))(v2, v1, v3);
  v5 = objc_allocWithZone(sub_24590D6D4());
  v6 = sub_24590D6C4();
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_2458CFCA4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_2458CFD08, v1, v2);
}

uint64_t sub_2458CFD08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458CFEF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_245910D34();
  v2[4] = sub_245910D24();
  v4 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458CFF8C, v4, v3);
}

uint64_t sub_2458CFF8C()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2458BCB90;

  return sub_2458CF778();
}

uint64_t sub_2458D00A4()
{
  result = type metadata accessor for MobileDocumentProviderPresentmentContext();
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

uint64_t sub_2458D0134()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2457AA49C;

  return sub_2458CFEF4(v2, v3);
}

uint64_t sub_2458D01E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2458CEAA4(a1, v4, v5, v7, v6);
}

uint64_t sub_2458D02A0(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_24590E814() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2457A18F4;

  return sub_2458CF2DC(a1, a2, v2 + v7);
}

uint64_t sub_2458D039C(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458D0440()
{
  result = type metadata accessor for MobileDocumentProviderPresentmentContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2458D04F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2458D053C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MobileDocumentProviderPresentmentContext()
{
  result = qword_27EE2B3B0;
  if (!qword_27EE2B3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2458D0614()
{
  result = sub_24590F2B4();
  if (v1 <= 0x3F)
  {
    result = sub_24590E814();
    if (v2 <= 0x3F)
    {
      result = sub_2458D06B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2458D06B4()
{
  result = qword_27EE2B3C0;
  if (!qword_27EE2B3C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EE2B3C0);
  }

  return result;
}

uint64_t sub_2458D0704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24590EA74();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_24590F2B4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_24590F264();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_24590F284();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = sub_245910D34();
  v3[18] = sub_245910D24();
  v9 = sub_245910CD4();
  v3[19] = v9;
  v3[20] = v8;

  return MEMORY[0x2822009F8](sub_2458D0914, v9, v8);
}

uint64_t sub_2458D0914()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_245916930;
  *(v1 + 32) = sub_24590D4C4();
  *(v1 + 40) = v2;
  sub_24590F2A4();

  sub_24590F274();
  v3 = sub_245910D24();
  *(v0 + 168) = v3;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_2458D0AB8;
  v5 = MEMORY[0x277D85700];

  return sub_2458D105C(v3, v5);
}

uint64_t sub_2458D0AB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  if (!v1)
  {

    v5 = *(v3 + 152);
    v6 = *(v3 + 160);

    return MEMORY[0x2822009F8](sub_2458D0BD0, v5, v6);
  }

  return result;
}

uint64_t sub_2458D0BD0()
{
  v1 = v0[23];

  if (!v1)
  {
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v22 + 104))(v21, *MEMORY[0x277CFFCB0], v23);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458D13C8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
LABEL_13:

    v24 = v0[1];
LABEL_16:

    return v24();
  }

  v3 = v0[23];
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_11:
    v12 = v0[15];
    v32 = v0[14];
    v33 = v0[16];
    v31 = v0[13];
    v13 = v0[11];
    v14 = v0[12];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];

    (*(v16 + 104))(v15, *MEMORY[0x277CFFCB0], v17);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458D13C8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    (*(v14 + 8))(v31, v13);
    (*(v12 + 8))(v33, v32);
    goto LABEL_13;
  }

  v5 = 0;
  v6 = v0[9];
  while (v5 < *(v3 + 16))
  {
    v8 = v0[3];
    v7 = v0[4];
    (*(v6 + 16))(v0[10], v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v0[8]);
    if (sub_24590F294() == v8 && v9 == v7)
    {

LABEL_15:

      v26 = v0[15];
      v25 = v0[16];
      v28 = v0[13];
      v27 = v0[14];
      v29 = v0[11];
      v30 = v0[12];
      (*(v0[9] + 32))(v0[2], v0[10], v0[8]);
      (*(v30 + 8))(v28, v29);
      (*(v26 + 8))(v25, v27);

      v24 = v0[1];
      goto LABEL_16;
    }

    v11 = sub_245911714();

    if (v11)
    {
      goto LABEL_15;
    }

    ++v5;
    result = (*(v6 + 8))(v0[10], v0[8]);
    if (v4 == v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2458D105C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_24590F264();
  v4 = sub_2458D13C8(&qword_27EE2B3C8, MEMORY[0x277CC5D70]);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_2458D114C;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t sub_2458D114C()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_245910CD4();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2458D12F8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_245910CD4();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2458D12DC;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2458D12F8()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2458D13A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24590F294();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2458D13C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2458D1460(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2458D1778();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B448);
  sub_245910A74();
  v5 = sub_2459109C4();

  v6 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v5];

  if (v6)
  {
    sub_245911354();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v13;
      v8 = objc_allocWithZone(ObjectType);
      *&v8[OBJC_IVAR____TtC9CoreIDVUI28BaseBoardXPCListenerEndpoint_endpoint] = v13;
      v12.receiver = v8;
      v12.super_class = ObjectType;
      v9 = v7;
      v10 = objc_msgSendSuper2(&v12, sel_init);

      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_2457B67E4(v16);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_2458D1778()
{
  result = qword_27EE2B440;
  if (!qword_27EE2B440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2B440);
  }

  return result;
}

void sub_2458D18DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v62 - v3;
  v78 = sub_24590F354();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C094();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v62 - v11;
  v62 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2459113E4();
    sub_2458D25D8();
    sub_2458D2624();
    sub_245910EA4();
    v15 = v86[2];
    v17 = v86[3];
    v18 = v86[4];
    v19 = v86[5];
    v20 = v86[6];
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v17 = a1 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v15 + 56);

    v18 = v22;
    v19 = 0;
  }

  v66 = v18;
  v25 = (v18 + 64) >> 6;
  v79 = (v67 + 16);
  v83 = (v67 + 8);
  v76 = (v4 + 8);
  *&v16 = 136315138;
  v68 = v16;
  v71 = v14;
  v70 = v15;
  v69 = v6;
  v77 = v25;
  v75 = v7;
  while (1)
  {
    v26 = v80;
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    v31 = sub_245911444();
    if (!v31 || (v84 = v31, sub_2458D25D8(), swift_dynamicCast(), v30 = v86[0], v29 = v19, v82 = v20, v26 = v80, !v86[0]))
    {
LABEL_24:
      sub_24578FD64();
      return;
    }

LABEL_18:
    v73 = v19;
    v74 = v20;
    v81 = v30;
    v32 = [v30 URL];
    sub_24590C054();

    sub_24590C714();
    v72 = *v79;
    v72(v26, v14, v7);
    v33 = v26;
    v34 = sub_24590F344();
    v35 = sub_245910F44();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v86[0] = v37;
      *v36 = v68;
      v38 = sub_24590C024();
      v39 = v17;
      v41 = v40;
      v42 = *v83;
      (*v83)(v33, v75);
      v43 = sub_2458CC378(v38, v41, v86);
      v17 = v39;
      v44 = v78;

      *(v36 + 4) = v43;
      v45 = v35;
      v46 = v42;
      _os_log_impl(&dword_245767000, v34, v45, "Checking if caBLE URL: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v47 = v37;
      v15 = v70;
      v14 = v71;
      v7 = v75;
      MEMORY[0x245D77B40](v47, -1, -1);
      v48 = v36;
      v6 = v69;
      MEMORY[0x245D77B40](v48, -1, -1);

      (*v76)(v6, v44);
    }

    else
    {

      v46 = *v83;
      (*v83)(v26, v7);
      (*v76)(v6, v78);
    }

    v49 = sub_24590C074();
    v25 = v77;
    if (v50)
    {
      v86[0] = v49;
      v86[1] = v50;
      v84 = 1868851558;
      v85 = 0xE400000000000000;
      sub_245778CE8();
      v51 = sub_245911324();

      if (!v51)
      {
        v52 = sub_245910D64();
        v53 = v65;
        (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
        v82 = v46;
        v54 = v63;
        v72(v63, v14, v7);
        sub_245910D34();
        v55 = v64;
        v56 = sub_245910D24();
        v57 = v67;
        v58 = (*(v67 + 80) + 40) & ~*(v67 + 80);
        v59 = swift_allocObject();
        v80 = v17;
        v60 = v59;
        v61 = MEMORY[0x277D85700];
        *(v59 + 2) = v56;
        *(v59 + 3) = v61;
        *(v59 + 4) = v55;
        (*(v57 + 32))(&v59[v58], v54, v7);
        sub_2458B90EC(0, 0, v53, &unk_24591D358, v60);

        sub_24578FD64();
        v82(v14, v7);
        return;
      }
    }

    v46(v14, v7);

    v19 = v29;
    v20 = v82;
  }

  v27 = v19;
  v28 = v20;
  v29 = v19;
  if (v20)
  {
LABEL_14:
    v82 = ((v28 - 1) & v28);
    v30 = *(*(v15 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v30)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_24;
    }

    v28 = *(v17 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2458D2050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24590F354();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_245910D34();
  v5[7] = sub_245910D24();
  v8 = sub_245910CD4();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_2458D2144, v8, v7);
}

uint64_t sub_2458D2144()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2458D21EC;
  v2 = *(v0 + 24);

  return MEMORY[0x282151E40](v2);
}

uint64_t sub_2458D21EC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_2458D2390;
  }

  else
  {
    v5 = sub_2458D2328;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458D2328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458D2390()
{
  v1 = v0[11];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v3, v4, "Failed to handle caBLE url with: %@", v7, 0xCu);
    sub_24579D578(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

id sub_2458D2570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2458D25D8()
{
  result = qword_27EE2B4C8;
  if (!qword_27EE2B4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2B4C8);
  }

  return result;
}

unint64_t sub_2458D2624()
{
  result = qword_27EE2B4D0;
  if (!qword_27EE2B4D0)
  {
    sub_2458D25D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B4D0);
  }

  return result;
}

uint64_t sub_2458D267C(uint64_t a1)
{
  v4 = *(sub_24590C094() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457A18F4;

  return sub_2458D2050(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2458D2774(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v6 = sub_24590F344();
  v7 = sub_245910F44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245767000, v6, v7, "Scene will connect to session", v8, 2u);
    MEMORY[0x245D77B40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [a1 URLContexts];
  sub_2458D25D8();
  sub_2458D2624();
  v10 = sub_245910E74();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_245911424();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  if (v11)
  {
    v13 = [a1 URLContexts];
    v14 = sub_245910E74();

    sub_2458D18DC(v14);
  }

  return result;
}

uint64_t sub_2458D2970(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2459113D4();
    v5 = v4;
    v6 = sub_245911454();
    v8 = v7;
    v9 = MEMORY[0x245D76A30](v3, v5, v6, v7);
    sub_2458D3B38(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_2458D3B38(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2459113B4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2458D3320(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_2458D3B38(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_2458D2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_245910D34();
  v5[4] = sub_245910D24();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_2458D2BAC;

  return (sub_2458EC174)(a5);
}

uint64_t sub_2458D2BAC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458D2CF0, v3, v2);
}

uint64_t sub_2458D2CF0()
{
  v1 = v0[6];
  v2 = v0[2];

  [v2 setRootViewController_];

  [v2 makeKeyAndVisible];
  v3 = v0[1];

  return v3();
}

id sub_2458D2E14()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_245910D64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *&v0[OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window];
  sub_245910D34();
  v8 = v7;
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  sub_2458B93DC(0, 0, v5, &unk_24591D3B0, v10);

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_2458D2F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_245910D34();
  v4[4] = sub_245910D24();
  v6 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458D3004, v6, v5);
}

uint64_t sub_2458D3004()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    [*(v0 + 24) setRootViewController_];
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2458D326C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2458D2F6C(a1, v4, v5, v6);
}

void sub_2458D3320(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D76A70](a1, a2, v7);
      sub_2458D39D4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2458D39D4();
    if (sub_245911404() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_245911414();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_245911284();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_245911294();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_2458D3520(void *a1, void *a2)
{
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = objc_allocWithZone(MEMORY[0x277D75DA0]);
    v18 = a1;
    v19 = [v17 initWithWindowScene_];
    v20 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window) = v19;
    v21 = v19;

    v22 = [a2 userActivities];
    sub_2458D39D4();
    sub_2458D3A20();
    v23 = sub_245910E74();

    v24 = sub_2458D2970(v23);

    if (v24)
    {
      v25 = [v24 activityType];

      v26 = sub_245910A04();
      v28 = v27;

      if (v26 == 0xD00000000000003DLL && 0x800000024592E190 == v28)
      {

LABEL_10:
        v36 = sub_245910D64();
        (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
        sub_245910D34();
        v37 = v18;
        v38 = v21;
        v39 = sub_245910D24();
        v40 = swift_allocObject();
        v41 = MEMORY[0x277D85700];
        v40[2] = v39;
        v40[3] = v41;
        v40[4] = v38;
        v40[5] = v16;
        sub_2458B90EC(0, 0, v14, &unk_24591D3A8, v40);

        return;
      }

      v35 = sub_245911714();

      if (v35)
      {
        goto LABEL_10;
      }
    }

    sub_24590C714();
    v42 = sub_24590F344();
    v43 = sub_245910F64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_245767000, v42, v43, "Unrecognized user activity type, unable to configure view service", v44, 2u);
      MEMORY[0x245D77B40](v44, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_24590C714();
    v29 = a1;
    v30 = sub_24590F344();
    v31 = sub_245910F64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_245767000, v30, v31, "Invalid scene: %@", v32, 0xCu);
      sub_24579D578(v33);
      MEMORY[0x245D77B40](v33, -1, -1);
      MEMORY[0x245D77B40](v32, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

unint64_t sub_2458D39D4()
{
  result = qword_27EE2B5B0;
  if (!qword_27EE2B5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2B5B0);
  }

  return result;
}

unint64_t sub_2458D3A20()
{
  result = qword_27EE2B5B8;
  if (!qword_27EE2B5B8)
  {
    sub_2458D39D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B5B8);
  }

  return result;
}

uint64_t sub_2458D3A78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2458D2AE4(a1, v4, v5, v7, v6);
}

uint64_t sub_2458D3B38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_2458D3D20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24590E564();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277CFF668])
  {
    if (a2)
    {
      v17 = type metadata accessor for RemoteIdentityCredentialProviderPresentingViewController();
      v18 = objc_allocWithZone(v17);
      type metadata accessor for IdentityCredentialProviderViewConnection();
      swift_allocObject();
      v19 = a2;

      v20 = sub_245909DF4(v19, a3, a4);

      *&v18[OBJC_IVAR____TtC9CoreIDVUI56RemoteIdentityCredentialProviderPresentingViewController_connection] = v20;
      v26.receiver = v18;
      v26.super_class = v17;
      v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);

      return v21;
    }

    sub_24590C714();
    v23 = sub_24590F344();
    v24 = sub_245910F54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245767000, v23, v24, "IDVRemoteAlertSceneDelegate received mobile document provider config ID, but a nil connection", v25, 2u);
      MEMORY[0x245D77B40](v25, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  else if (v16 != *MEMORY[0x277CFF670])
  {
    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

void sub_2458D4008(void *a1)
{
  v114 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B638);
  MEMORY[0x28223BE20](v1 - 8);
  v111 = &v100 - v2;
  v3 = sub_24590E564();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v112 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v109 = &v100 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v100 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v105 = &v100 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v100 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v113 = &v100 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v100 - v22;
  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F54();
  v26 = os_log_type_enabled(v24, v25);
  v107 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v4;
    v29 = v3;
    v30 = v7;
    v31 = swift_slowAlloc();
    v115 = v31;
    *v27 = 136446210;
    *(v27 + 4) = sub_2458CC378(0xD00000000000001FLL, 0x800000024592E2F0, &v115);
    _os_log_impl(&dword_245767000, v24, v25, "IDVRemoteAlertSceneDelegate %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v32 = v31;
    v7 = v30;
    v3 = v29;
    v4 = v28;
    MEMORY[0x245D77B40](v32, -1, -1);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v33 = *(v7 + 8);
  v33(v23, v6);
  v34 = v6;
  objc_opt_self();
  v35 = v114;
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    sub_24590C714();
    v51 = sub_24590F344();
    v52 = sub_245910F54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v6;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_245767000, v51, v52, "IDVRemoteAlertSceneDelegate received scene is not a SBSUIRemoteAlertScene. Skipping ViewController setup", v54, 2u);
      MEMORY[0x245D77B40](v54, -1, -1);
LABEL_19:

      v67 = v10;
      v68 = v53;
      goto LABEL_33;
    }

LABEL_30:
    v67 = v10;
    goto LABEL_32;
  }

  v37 = v36;
  v38 = v35;
  [v37 setAllowsAlertStacking_];
  v39 = v113;
  sub_24590C714();
  v40 = v38;
  v41 = sub_24590F344();
  v42 = sub_245910F54();
  v114 = v40;

  v43 = os_log_type_enabled(v41, v42);
  v110 = v7;
  if (v43)
  {
    v102 = v33;
    v103 = v3;
    v104 = v34;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v115 = v45;
    *v44 = 136446210;
    v46 = [v37 configurationIdentifier];
    if (v46)
    {
      v47 = v46;
      v48 = sub_245910A04();
      v50 = v49;
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    v55 = sub_2458CC378(v48, v50, &v115);

    *(v44 + 4) = v55;
    _os_log_impl(&dword_245767000, v41, v42, "IDVRemoteAlertSceneDelegate received configurationIdentifier %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x245D77B40](v45, -1, -1);
    MEMORY[0x245D77B40](v44, -1, -1);

    v34 = v104;
    v33 = v102;
    v102(v113, v104);
    v3 = v103;
  }

  else
  {

    v33(v39, v34);
  }

  v56 = [v37 configurationIdentifier];
  if (!v56)
  {
    v10 = v109;
    sub_24590C714();
    v51 = sub_24590F344();
    v69 = sub_245910F54();
    if (os_log_type_enabled(v51, v69))
    {
      v53 = v34;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_245767000, v51, v69, "IDVRemoteAlertSceneDelegate did not receive configuration identifier. Skipping ViewController setup", v70, 2u);
      MEMORY[0x245D77B40](v70, -1, -1);

      goto LABEL_19;
    }

    goto LABEL_30;
  }

  v57 = v56;
  v58 = sub_245910A04();
  v60 = v59;

  v61 = v111;
  sub_24590E554();
  if ((*(v4 + 48))(v61, 1, v3) == 1)
  {

    sub_2458D5728(v61);
    v62 = v108;
    sub_24590C714();
    v63 = sub_24590F344();
    v64 = sub_245910F54();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v34;
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_245767000, v63, v64, "IDVRemoteAlertSceneDelegate receive configuration identifier is not valid. Skipping ViewController setup", v66, 2u);
      MEMORY[0x245D77B40](v66, -1, -1);

      v67 = v62;
      v68 = v65;
LABEL_33:
      v33(v67, v68);
      return;
    }

    v67 = v62;
LABEL_32:
    v68 = v34;
    goto LABEL_33;
  }

  (*(v4 + 32))(v112, v61, v3);
  v71 = [v37 configurationContext];
  v101 = v4;
  if (v71 && (v72 = v71, v73 = [v71 xpcEndpoint], v72, v73))
  {
    v74 = [objc_allocWithZone(MEMORY[0x277CCAEA0]) init];
    v75 = v74;
    if (v74)
    {
      [v74 _setEndpoint_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0;
  }

  v76 = swift_allocObject();
  *(v76 + 16) = v37;
  v113 = v114;
  v114 = v75;
  v77 = sub_2458D3D20(v112, v75, sub_2458D5790, v76);

  if (v77)
  {
    v78 = v34;
    v79 = v107;
    sub_24590C714();

    v80 = sub_24590F344();
    v81 = sub_245910F54();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v104 = v78;
      v84 = v33;
      v85 = v3;
      v86 = v83;
      v115 = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_2458CC378(v58, v60, &v115);
      _os_log_impl(&dword_245767000, v80, v81, "IDVRemoteAlertSceneDelegate built ViewController for configuration identifier %{public}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v87 = v86;
      v3 = v85;
      MEMORY[0x245D77B40](v87, -1, -1);
      MEMORY[0x245D77B40](v82, -1, -1);

      v84(v107, v104);
    }

    else
    {

      v33(v79, v78);
    }

    v95 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
    [v95 setRootViewController_];
    v96 = [v95 _rootSheetPresentationController];
    v97 = v114;
    if (v96)
    {
      v98 = v96;

      [v98 _setShouldScaleDownBehindDescendantSheets_];

      [v95 makeKeyAndVisible];
      (*(v101 + 8))(v112, v3);
      v99 = *(v106 + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window);
      *(v106 + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window) = v95;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v88 = v105;
    sub_24590C714();
    v89 = sub_24590F344();
    v90 = sub_245910F54();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = v34;
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_245767000, v89, v90, "IDVRemoteAlertSceneDelegate did not receive a known configuration identifier. Skipping ViewController setup", v92, 2u);
      MEMORY[0x245D77B40](v92, -1, -1);

      v93 = v88;
      v94 = v91;
    }

    else
    {

      v93 = v88;
      v94 = v34;
    }

    v33(v93, v94);
    (*(v101 + 8))(v112, v3);
  }
}

void sub_2458D4D30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2458CC378(0xD000000000000018, 0x800000024592E2B0, &v24);
    _os_log_impl(&dword_245767000, v9, v10, "IDVRemoteAlertSceneDelegate %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245D77B40](v12, -1, -1);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI24RemoteAlertSceneDelegate_window);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for RemoteIdentityCredentialProviderPresentingViewController();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = sub_245910D64();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        sub_245910D34();
        v19 = v15;
        v20 = sub_245910D24();
        v21 = swift_allocObject();
        v22 = MEMORY[0x277D85700];
        v21[2] = v20;
        v21[3] = v22;
        v21[4] = v17;
        sub_2458B90EC(0, 0, v4, &unk_24591D3E8, v21);
      }
    }
  }
}

uint64_t sub_2458D5674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2458EE144(a1, v4, v5, v6);
}

uint64_t sub_2458D5728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458D57CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B640);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B648);
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B650);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v44 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B658);
  MEMORY[0x28223BE20](v51);
  v48 = &v44 - v10;
  v54 = v1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B660);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B668);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B670);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B678);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B680);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B688);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B690);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B698);
  v17 = sub_2458DB814();
  *&v57 = v16;
  *(&v57 + 1) = MEMORY[0x277CE0F78];
  v58 = v17;
  v59 = MEMORY[0x277CE0F60];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v57 = v15;
  *(&v57 + 1) = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  *&v57 = v14;
  *(&v57 + 1) = v19;
  v20 = swift_getOpaqueTypeConformance2();
  *&v57 = v13;
  *(&v57 + 1) = v20;
  v21 = swift_getOpaqueTypeConformance2();
  *&v57 = v12;
  *(&v57 + 1) = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_245778BD8(&qword_27EE2B7F8, &qword_27EE2B670);
  *&v57 = v45;
  *(&v57 + 1) = v11;
  v58 = v22;
  v59 = v23;
  swift_getOpaqueTypeConformance2();
  sub_24590F864();
  v57 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B800);
  sub_245910584();
  v24 = swift_allocObject();
  v25 = v2[3];
  v24[3] = v2[2];
  v24[4] = v25;
  v24[5] = v2[4];
  v26 = v2[1];
  v24[1] = *v2;
  v24[2] = v26;
  sub_2458DC404(v2, &v57);
  v46 = MEMORY[0x277CDDA18];
  v27 = sub_245778BD8(&qword_27EE2B808, &qword_27EE2B648);
  v28 = MEMORY[0x277D839F8];
  v29 = MEMORY[0x277D83A28];
  sub_2459103D4();

  (*(v47 + 8))(v7, v5);
  v30 = swift_allocObject();
  v31 = v2[3];
  v30[3] = v2[2];
  v30[4] = v31;
  v30[5] = v2[4];
  v32 = v2[1];
  v30[1] = *v2;
  v30[2] = v32;
  sub_2458DC404(v2, &v57);
  *&v57 = v5;
  *(&v57 + 1) = v28;
  v58 = v27;
  v59 = v29;
  swift_getOpaqueTypeConformance2();
  sub_2458DC444();
  v33 = v48;
  v34 = v49;
  sub_245910354();

  (*(v50 + 8))(v9, v34);
  v60 = v2[4];
  v57 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v35 = v55;
  v36 = (v33 + *(v51 + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_2458DC498;
  v36[3] = v35;
  v55 = v60;
  sub_2459105A4();
  v37 = v57;
  v38 = v58;
  swift_getKeyPath();
  v55 = v37;
  v56 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B820);
  v39 = v52;
  sub_245910614();

  v40 = swift_allocObject();
  v41 = v2[3];
  v40[3] = v2[2];
  v40[4] = v41;
  v40[5] = v2[4];
  v42 = v2[1];
  v40[1] = *v2;
  v40[2] = v42;
  sub_2458DC404(v2, &v57);
  type metadata accessor for MobileDocumentProviderPresentmentContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B828);
  sub_2458DC4D8();
  sub_2458DCD0C(&qword_27EE2B838, type metadata accessor for MobileDocumentProviderPresentmentContext);
  sub_245778BD8(&qword_27EE2B840, &qword_27EE2B828);
  sub_2459103B4();

  sub_245778F94(v39, &qword_27EE2B640);
  return sub_245778F94(v33, &qword_27EE2B658);
}

uint64_t sub_2458D6044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v66 = a2;
  v2 = sub_24590F614();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v63 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590FB44();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_24590FEC4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B698);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B690);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v43 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B688);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B680);
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  MEMORY[0x28223BE20](v15);
  v44 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B678);
  v19 = *(v18 - 8);
  v56 = v18;
  v57 = v19;
  MEMORY[0x28223BE20](v18);
  v45 = &v43 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B668);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v46 = &v43 - v21;
  sub_2458D688C(v10);
  v68 = sub_245910454();
  sub_24590FEB4();
  v22 = sub_2458DB814();
  v23 = MEMORY[0x277CE0F78];
  v24 = MEMORY[0x277CE0F60];
  sub_245910324();
  (*(v50 + 8))(v7, v52);

  sub_245778F94(v10, &qword_27EE2B698);
  v68 = v8;
  v69 = v23;
  v70 = v22;
  v71 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v47;
  sub_245910384();
  v27 = v26;
  (*(v48 + 8))(v12, v26);
  v29 = v61;
  v28 = v62;
  v30 = v59;
  (*(v61 + 104))(v59, *MEMORY[0x277CDDDC0], v62);
  v68 = v27;
  v69 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = v51;
  sub_245910394();
  (*(v29 + 8))(v30, v28);
  (*(v53 + 8))(v14, v33);
  v68 = v33;
  v69 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v45;
  v36 = v54;
  sub_245910374();
  (*(v55 + 8))(v32, v36);
  v37 = v63;
  sub_24590F604();
  v68 = v36;
  v69 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v46;
  v40 = v56;
  sub_245910254();
  (*(v64 + 8))(v37, v65);
  (*(v57 + 8))(v35, v40);
  v67 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B670);
  v68 = v40;
  v69 = v38;
  swift_getOpaqueTypeConformance2();
  sub_245778BD8(&qword_27EE2B7F8, &qword_27EE2B670);
  v41 = v58;
  sub_2459103C4();
  return (*(v60 + 8))(v39, v41);
}

uint64_t sub_2458D688C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8F0);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6B8);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6B0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = sub_2458D7964();
  v13 = sub_2458D91C0(v1, v8);
  if (v12)
  {
    v17[2] = v17;
    MEMORY[0x28223BE20](v13);
    v17[3] = a1;
    v17[1] = sub_24590FBC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6C0);
    sub_2458DB9D8();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B740);
    v15 = sub_2458DBDFC();
    v17[4] = v14;
    v17[5] = v15;
    swift_getOpaqueTypeConformance2();
    sub_245910244();
    sub_245778F94(v8, &qword_27EE2B6B8);
    v11[*(v9 + 36)] = sub_24590FFD4();
    sub_245778F2C(v11, v5, &qword_27EE2B6B0);
    swift_storeEnumTagMultiPayload();
    sub_2458DB8A0();
    sub_24590FD14();
    return sub_245778F94(v11, &qword_27EE2B6B0);
  }

  else
  {
    sub_245778F2C(v8, v5, &qword_27EE2B6B8);
    swift_storeEnumTagMultiPayload();
    sub_2458DB8A0();
    sub_2458DB9D8();
    sub_24590FD14();
    return sub_245778F94(v8, &qword_27EE2B6B8);
  }
}

uint64_t sub_2458D6BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8D0);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FE0);
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - v6;
  v8 = sub_24590FDA4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_24590FD84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8E0);
  sub_2458DC97C();
  sub_24590F5F4();
  v21 = a1;
  sub_24590FD94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020);
  sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020);
  sub_24590F5F4();
  v13 = *(v19 + 48);
  (*(v10 + 16))(v4, v12, v9);
  v14 = &v4[v13];
  v15 = v18;
  (*(v5 + 16))(v14, v7, v18);
  sub_24590FC24();
  (*(v5 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2458D6F08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590BFB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27EE2C450);
  (*(v4 + 16))(v6, v9, v3);
  sub_24590C224();
  sub_24590BFE4();
  v10 = sub_245910194();
  v12 = v11;
  v14 = v13;
  sub_2459100B4();
  v15 = sub_245910184();
  v17 = v16;
  v19 = v18;

  sub_24580FD24(v10, v12, v14 & 1);

  sub_245910074();
  v20 = sub_245910144();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24580FD24(v15, v17, v19 & 1);

  v27 = sub_24590FFE4();
  result = sub_24590F594();
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v30;
  *(a1 + 56) = v31;
  *(a1 + 64) = v32;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_2458D7238(uint64_t a1)
{
  v2 = sub_24590F584();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F564();
  v10 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v5 = *(v9 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel_onDismissed);
  v6 = *(v9 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel_onDismissed + 8);

  return MEMORY[0x245D75C00](v4, v5, v6);
}

void sub_2458D7324(uint64_t a1)
{
  v2 = sub_24590FB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  v6 = *(a1 + 32);
  v16 = v6;
  if (v17 == 1)
  {
    v7 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {

    sub_245910F74();
    v8 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();
    sub_245778F94(&v16, &qword_27EE2B8C8);
    (*(v3 + 8))(v5, v2);
    v6 = v15;
    if (!v15)
    {
      return;
    }
  }

  v9 = [v6 scene];

  if (!v9)
  {
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 keyWindow];

    if (!v11)
    {
      return;
    }

    [v11 frame];
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = 0.0;
    v19.size.height = 0.0;
    if (!CGRectEqualToRect(v18, v19))
    {
      v12 = *a1;
      v15 = *(a1 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B800);
      v13 = sub_245910584();
      v12(v13, v14[1]);
    }
  }

  else
  {
    v11 = v9;
  }
}

double sub_2458D756C@<D0>(double *a1@<X8>)
{
  sub_24590F744();
  v3 = v2;
  sub_24590F754();
  v5 = v3 + v4;
  sub_24590F754();
  result = v5 + v6;
  *a1 = v5 + v6;
  return result;
}

uint64_t sub_2458D75B4(double *a1, double *a2, uint64_t a3)
{
  v6 = sub_24590FB14();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = vabdd_f64(*a1, *a2);
  v13 = *(a3 + 16);
  v17 = v13;
  v18 = *(a3 + 24);
  if (v18 != 1)
  {

    sub_245910F74();
    v14 = sub_24590FF74();
    sub_24590F314();

    sub_24590FB04();
    swift_getAtKeyPath();
    sub_245778F94(&v17, &qword_27EE2B8C0);
    result = (*(v7 + 8))(v10, v6);
    if (*&v16 >= v12)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v13 < v12)
  {
LABEL_5:
    v16 = *(a3 + 48);
    *&v15[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B800);
    return sub_245910594();
  }

  return result;
}

uint64_t sub_2458D77A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_245778F2C(a1, &v9[-v5], &qword_27EE2B8B8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C294();

  return sub_245778F94(v6, &qword_27EE2B8B8);
}

uint64_t sub_2458D78F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B848);
  sub_2458DC648();
  return sub_24590F864();
}

uint64_t sub_2458D7964()
{
  v1 = sub_24590E974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v8 = v16;
  swift_getKeyPath();
  *&v15 = v8;
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v9 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458DCA10(v8 + v9, v7, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2458DCC78(v7);
    return 1;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    v11 = sub_24590E964();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v13 = *(v11 + 16);

    v10 = v13 != 0;
    v12(v7, v1);
  }

  return v10;
}

uint64_t sub_2458D7BD4()
{
  v0 = sub_24590FBB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B740);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_2458D7D44(&v8 - v5);
  sub_24590FBA4();
  sub_2458DBDFC();
  sub_245910314();
  (*(v1 + 8))(v3, v0);
  return sub_245778F94(v6, &qword_27EE2B740);
}

uint64_t sub_2458D7D44@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v2 - 8);
  v109 = &v102 - v3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B788);
  MEMORY[0x28223BE20](v121);
  v111 = &v102 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7D0);
  MEMORY[0x28223BE20](v110);
  v113 = &v102 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7C0);
  MEMORY[0x28223BE20](v112);
  v114 = &v102 - v6;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7B0);
  v7 = MEMORY[0x28223BE20](v125);
  v115 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v116 = &v102 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8F8);
  MEMORY[0x28223BE20](v128);
  v129 = &v102 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B900);
  MEMORY[0x28223BE20](v123);
  v124 = &v102 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B758);
  MEMORY[0x28223BE20](v131);
  v126 = &v102 - v12;
  v119 = sub_24590FEA4();
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B790);
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v16 = &v102 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B778);
  MEMORY[0x28223BE20](v103);
  v104 = &v102 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B768);
  v18 = MEMORY[0x28223BE20](v122);
  v105 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v106 = &v102 - v20;
  v21 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  v22 = MEMORY[0x28223BE20](v21);
  v127 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  v141 = *(v1 + 64);
  v29 = v1;
  v134 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v30 = v133;
  swift_getKeyPath();
  *&v134 = v30;
  v108 = sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();
  v31 = v28;

  v32 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458DCA10(v30 + v32, v28, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2458DCA10(v28, v127, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
    v134 = *(v29 + 64);
    sub_245910584();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B908);
    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B910);
    v107 = v28;
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B918);
    v65 = sub_2458DCA7C();
    v66 = sub_245778BD8(&qword_27EE2B928, &qword_27EE2B918);
    *&v134 = v63;
    *(&v134 + 1) = v64;
    *&v135 = v65;
    *(&v135 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    sub_2459105B4();
    sub_24590FE94();
    sub_245778BD8(&qword_27EE2B798, &qword_27EE2B790);
    sub_2458DCD0C(&qword_27EE2B7A0, MEMORY[0x277CDE400]);
    v67 = v111;
    v68 = v117;
    v69 = v119;
    sub_245910224();
    (*(v120 + 8))(v14, v69);
    (*(v118 + 8))(v16, v68);
    v70 = (v67 + *(v121 + 36));
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A610) + 28);
    v72 = *MEMORY[0x277CDF440];
    v73 = sub_24590F5B4();
    (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
    *v70 = swift_getKeyPath();
    v134 = v141;
    sub_245910584();
    v74 = v132;
    swift_getKeyPath();
    *&v134 = v74;
    sub_24590C2A4();

    v75 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
    swift_beginAccess();
    v76 = v109;
    sub_245778F2C(v74 + v75, v109, &qword_27EE2B898);

    v77 = sub_24590DCE4();
    LOBYTE(v75) = (*(*(v77 - 8) + 48))(v76, 1, v77) == 1;
    sub_245778F94(v76, &qword_27EE2B898);
    KeyPath = swift_getKeyPath();
    v79 = swift_allocObject();
    *(v79 + 16) = v75;
    v80 = v113;
    sub_24577ABC4(v67, v113, &qword_27EE2B788);
    v81 = (v80 + *(v110 + 36));
    *v81 = KeyPath;
    v81[1] = sub_2458DCC60;
    v81[2] = v79;
    LOBYTE(KeyPath) = sub_24590FFF4();
    sub_24590F594();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v114;
    sub_24577ABC4(v80, v114, &qword_27EE2B7D0);
    v91 = v90 + *(v112 + 36);
    *v91 = KeyPath;
    *(v91 + 8) = v83;
    *(v91 + 16) = v85;
    *(v91 + 24) = v87;
    *(v91 + 32) = v89;
    *(v91 + 40) = 0;
    sub_2459106E4();
    sub_24590F904();
    v92 = v115;
    sub_24577ABC4(v90, v115, &qword_27EE2B7C0);
    v93 = (v92 + *(v125 + 36));
    v94 = v139;
    v93[4] = v138;
    v93[5] = v94;
    v93[6] = v140;
    v95 = v135;
    *v93 = v134;
    v93[1] = v95;
    v96 = v137;
    v93[2] = v136;
    v93[3] = v96;
    v97 = v116;
    sub_24577ABC4(v92, v116, &qword_27EE2B7B0);
    sub_245778F2C(v97, v124, &qword_27EE2B7B0);
    swift_storeEnumTagMultiPayload();
    sub_2458DBF14();
    sub_2458DC1A4();
    v98 = v126;
    sub_24590FD14();
    sub_245778F2C(v98, v129, &qword_27EE2B758);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7F0);
    sub_2458DBE88();
    sub_2458DC374();
    sub_24590FD14();
    sub_245778F94(v98, &qword_27EE2B758);
    sub_245778F94(v97, &qword_27EE2B7B0);
    v99 = sub_24590E974();
    (*(*(v99 - 8) + 8))(v127, v99);
    goto LABEL_8;
  }

  v33 = v16;
  v34 = v14;
  sub_2458DCA10(v31, v26, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  v35 = sub_24590E574();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 88))(v26, v35);
  v38 = v129;
  if (v37 != *MEMORY[0x277CFF680] && v37 != *MEMORY[0x277CFF678] && v37 != *MEMORY[0x277CFF698])
  {
    if (v37 == *MEMORY[0x277CFF688])
    {
      v134 = v141;
      sub_245910584();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B908);
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B910);
      v107 = v31;
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B918);
      v41 = sub_2458DCA7C();
      v42 = sub_245778BD8(&qword_27EE2B928, &qword_27EE2B918);
      *&v134 = v39;
      *(&v134 + 1) = v40;
      *&v135 = v41;
      *(&v135 + 1) = v42;
      swift_getOpaqueTypeConformance2();
      sub_2459105B4();
      v43 = v34;
      sub_24590FE94();
      sub_245778BD8(&qword_27EE2B798, &qword_27EE2B790);
      sub_2458DCD0C(&qword_27EE2B7A0, MEMORY[0x277CDE400]);
      v44 = v104;
      v45 = v117;
      v46 = v119;
      sub_245910224();
      (*(v120 + 8))(v43, v46);
      (*(v118 + 8))(v33, v45);
      v47 = (v44 + *(v121 + 36));
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A610) + 28);
      v49 = *MEMORY[0x277CDF440];
      v50 = sub_24590F5B4();
      (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
      *v47 = swift_getKeyPath();
      LOBYTE(v49) = sub_24590FFF4();
      sub_24590F594();
      v51 = v44 + *(v103 + 36);
      *v51 = v49;
      *(v51 + 8) = v52;
      *(v51 + 16) = v53;
      *(v51 + 24) = v54;
      *(v51 + 32) = v55;
      *(v51 + 40) = 0;
      sub_2459106E4();
      sub_24590F904();
      v56 = v105;
      sub_24577ABC4(v44, v105, &qword_27EE2B778);
      v57 = (v56 + *(v122 + 36));
      v58 = v139;
      v57[4] = v138;
      v57[5] = v58;
      v57[6] = v140;
      v59 = v135;
      *v57 = v134;
      v57[1] = v59;
      v60 = v137;
      v57[2] = v136;
      v57[3] = v60;
      v61 = v106;
      sub_24577ABC4(v56, v106, &qword_27EE2B768);
      sub_245778F2C(v61, v124, &qword_27EE2B768);
      swift_storeEnumTagMultiPayload();
      sub_2458DBF14();
      sub_2458DC1A4();
      v62 = v126;
      sub_24590FD14();
      sub_245778F2C(v62, v38, &qword_27EE2B758);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7F0);
      sub_2458DBE88();
      sub_2458DC374();
      sub_24590FD14();
      sub_245778F94(v62, &qword_27EE2B758);
      sub_245778F94(v61, &qword_27EE2B768);
LABEL_8:
      v100 = v107;
      return sub_2458DCC78(v100);
    }

    if (v37 != *MEMORY[0x277CFF690] && v37 != *MEMORY[0x277CFF6A0])
    {
      (*(v36 + 8))(v26, v35);
      LOBYTE(v132) = 1;
      sub_24590FD14();
      *v38 = v134;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7F0);
      sub_2458DBE88();
      sub_2458DC374();
      sub_24590FD14();
      v100 = v31;
      return sub_2458DCC78(v100);
    }
  }

  sub_2458DCC78(v31);
  LOBYTE(v132) = 0;
  sub_24590FD14();
  *v38 = v134;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B7F0);
  sub_2458DBE88();
  sub_2458DC374();
  return sub_24590FD14();
}

uint64_t sub_2458D91C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B730);
  MEMORY[0x28223BE20](v55);
  v49 = (&v42 - v3);
  v53 = sub_24590E974();
  v46 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B708);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - v5;
  v6 = sub_24590E574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B938);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B940);
  MEMORY[0x28223BE20](v44);
  v11 = (&v42 - v10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6E8);
  MEMORY[0x28223BE20](v52);
  v45 = &v42 - v12;
  v13 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1[4];
  v56 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v16 = v59;
  swift_getKeyPath();
  *&v56 = v16;
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v17 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458DCA10(v16 + v17, v15, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((*(v7 + 88))(v15, v6) == *MEMORY[0x277CFF698])
    {
      *v11 = sub_2458D9B54;
      v11[1] = 0;
      v11[2] = 0;
      v11[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6F8);
      sub_2458DBB74();
      sub_2458DBBF8();
      v18 = v45;
      sub_24590FD14();
      sub_245778F2C(v18, v50, &qword_27EE2B6E8);
      swift_storeEnumTagMultiPayload();
      sub_2458DBAE8();
      sub_2458DBD40();
      sub_24590FD14();
      return sub_245778F94(v18, &qword_27EE2B6E8);
    }

    else
    {
      v33 = v42;
      (*(v7 + 32))(v42, v15, v6);
      v34 = v43;
      (*(v7 + 16))(v43, v33, v6);
      v35 = sub_24590FFB4();
      v36 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B718) + 36);
      *v36 = v35;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 1;
      v37 = swift_allocObject();
      v38 = a1[3];
      *(v37 + 3) = a1[2];
      *(v37 + 4) = v38;
      *(v37 + 5) = a1[4];
      v39 = a1[1];
      *(v37 + 1) = *a1;
      *(v37 + 2) = v39;
      v40 = (v34 + *(v47 + 36));
      *v40 = sub_2458DCE70;
      v40[1] = v37;
      v40[2] = 0;
      v40[3] = 0;
      sub_245778F2C(v34, v11, &qword_27EE2B708);
      swift_storeEnumTagMultiPayload();
      sub_2458DC404(a1, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B6F8);
      sub_2458DBB74();
      sub_2458DBBF8();
      v41 = v45;
      sub_24590FD14();
      sub_245778F2C(v41, v50, &qword_27EE2B6E8);
      swift_storeEnumTagMultiPayload();
      sub_2458DBAE8();
      sub_2458DBD40();
      sub_24590FD14();
      sub_245778F94(v41, &qword_27EE2B6E8);
      sub_245778F94(v34, &qword_27EE2B708);
      return (*(v7 + 8))(v33, v6);
    }
  }

  else
  {
    v20 = v46;
    v21 = v48;
    (*(v46 + 32))(v48, v15, v53);
    v47 = sub_24590E964();
    v58 = v60;
    sub_2459105A4();
    v22 = v56;
    v23 = v57;
    swift_getKeyPath();
    v56 = v22;
    v57 = v23;
    v24 = type metadata accessor for IdentityCredentialProviderSelectionViewPicker(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B820);
    v25 = v49;
    sub_245910614();

    v26 = sub_24590E954();
    *v25 = v47;
    v27 = (v25 + *(v24 + 24));
    *v27 = v26;
    v27[1] = v28;
    v29 = swift_allocObject();
    v30 = a1[3];
    *(v29 + 3) = a1[2];
    *(v29 + 4) = v30;
    *(v29 + 5) = a1[4];
    v31 = a1[1];
    *(v29 + 1) = *a1;
    *(v29 + 2) = v31;
    v32 = (v25 + *(v55 + 36));
    *v32 = sub_2458DCE8C;
    v32[1] = v29;
    v32[2] = 0;
    v32[3] = 0;
    sub_245778F2C(v25, v50, &qword_27EE2B730);
    swift_storeEnumTagMultiPayload();
    sub_2458DC404(a1, &v56);
    sub_2458DBAE8();
    sub_2458DBD40();
    sub_24590FD14();
    sub_245778F94(v25, &qword_27EE2B730);
    return (*(v20 + 8))(v21, v53);
  }
}

uint64_t sub_2458D9B54()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_245767000, v4, v5, "Unexpected auxiliary view found: waiting for response", v6, 2u);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2458D9CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v8 = *a2;
  swift_beginAccess();
  return sub_245778F2C(v7 + v8, a4, a3);
}

uint64_t sub_2458D9D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_245778F2C(a1, &v6 - v3, &qword_27EE2B898);
  return sub_2458DDF48(v4);
}

uint64_t sub_2458D9E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + 16);
  v9 = sub_245910D64();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_245910D34();

  v10 = sub_245910D24();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  sub_2458B90EC(0, 0, v7, a3, v11);
}

uint64_t sub_2458D9F60()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B918);
  MEMORY[0x28223BE20](v27);
  v1 = &v27 - v0;
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590BFB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27EE2C450);
  (*(v4 + 16))(v6, v9, v3);
  sub_24590C224();
  sub_24590BFE4();
  v10 = sub_245910194();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24590FFA4();
  v18 = v14 & 1;
  LOBYTE(v34[0]) = v14 & 1;
  LOBYTE(v28) = 1;
  v19 = sub_24590FFF4();
  sub_24590F594();
  v33 = 0;
  *&v28 = v10;
  *(&v28 + 1) = v12;
  LOBYTE(v29) = v18;
  *(&v29 + 1) = v16;
  LOBYTE(v30[0]) = v17;
  *(v30 + 8) = 0u;
  *(&v30[1] + 8) = 0u;
  BYTE8(v30[2]) = 1;
  LOBYTE(v31) = v19;
  *(&v31 + 1) = v20;
  *&v32[0] = v21;
  *(&v32[0] + 1) = v22;
  *&v32[1] = v23;
  BYTE8(v32[1]) = 0;
  v24 = *MEMORY[0x277CDFA10];
  v25 = sub_24590F774();
  (*(*(v25 - 8) + 104))(v1, v24, v25);
  sub_2458DCD0C(&qword_27EE2B930, MEMORY[0x277CDFA28]);
  result = sub_245910934();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B910);
    sub_2458DCA7C();
    sub_245778BD8(&qword_27EE2B928, &qword_27EE2B918);
    sub_2459102A4();
    sub_245778F94(v1, &qword_27EE2B918);
    v34[4] = v30[2];
    v34[5] = v31;
    v35[0] = v32[0];
    *(v35 + 9) = *(v32 + 9);
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = v30[0];
    v34[3] = v30[1];
    return sub_245778F94(v34, &qword_27EE2B910);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2458DA3EC()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B918);
  MEMORY[0x28223BE20](v27);
  v1 = &v27 - v0;
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24590BFB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2459109B4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24590BFC4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27EE2C450);
  (*(v4 + 16))(v6, v9, v3);
  sub_24590C224();
  sub_24590BFE4();
  v10 = sub_245910194();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24590FFA4();
  v18 = v14 & 1;
  LOBYTE(v34[0]) = v14 & 1;
  LOBYTE(v28) = 1;
  v19 = sub_24590FFF4();
  sub_24590F594();
  v33 = 0;
  *&v28 = v10;
  *(&v28 + 1) = v12;
  LOBYTE(v29) = v18;
  *(&v29 + 1) = v16;
  LOBYTE(v30[0]) = v17;
  *(v30 + 8) = 0u;
  *(&v30[1] + 8) = 0u;
  BYTE8(v30[2]) = 1;
  LOBYTE(v31) = v19;
  *(&v31 + 1) = v20;
  *&v32[0] = v21;
  *(&v32[0] + 1) = v22;
  *&v32[1] = v23;
  BYTE8(v32[1]) = 0;
  v24 = *MEMORY[0x277CDFA10];
  v25 = sub_24590F774();
  (*(*(v25 - 8) + 104))(v1, v24, v25);
  sub_2458DCD0C(&qword_27EE2B930, MEMORY[0x277CDFA28]);
  result = sub_245910934();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B910);
    sub_2458DCA7C();
    sub_245778BD8(&qword_27EE2B928, &qword_27EE2B918);
    sub_2459102A4();
    sub_245778F94(v1, &qword_27EE2B918);
    v34[4] = v30[2];
    v34[5] = v31;
    v35[0] = v32[0];
    *(v35 + 9) = *(v32 + 9);
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = v30[0];
    v34[3] = v30[1];
    return sub_245778F94(v34, &qword_27EE2B910);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2458DA878@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v79 = a3;
  v78 = sub_24590DCE4();
  v69 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v58 - v7;
  v67 = sub_24590FB44();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B870);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B868);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v58 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B860);
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B858);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v16 = &v58 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8A0);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v58 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B848);
  MEMORY[0x28223BE20](v70);
  v71 = &v58 - v18;
  sub_2458DCA10(a1, v11, type metadata accessor for MobileDocumentProviderPresentmentContext);
  v19 = sub_24590FFB4();
  v20 = sub_24590F874();
  v21 = &v11[*(v9 + 36)];
  *v21 = v20;
  v21[8] = v19;
  v80 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B878);
  v23 = sub_2458DC884();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B888);
  v25 = sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888);
  *&v81 = v24;
  *(&v81 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2459103C4();
  sub_245778F94(v11, &qword_27EE2B870);
  v27 = v66;
  v28 = v64;
  v29 = v67;
  (*(v66 + 104))(v64, *MEMORY[0x277CDDDC0], v67);
  *&v81 = v9;
  *(&v81 + 1) = v22;
  v30 = v62;
  v82 = v23;
  v83 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v61;
  v33 = v63;
  sub_245910394();
  (*(v27 + 8))(v28, v29);
  v34 = v13;
  v35 = v33;
  (*(v65 + 8))(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8A8);
  sub_24590F8F4();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_245916930;
  sub_24590F8E4();
  *&v81 = v35;
  *(&v81 + 1) = v31;
  v37 = v60;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v16;
  MEMORY[0x245D75940](1, v36, v30, v38);

  (*(v68 + 8))(v32, v30);
  v81 = v37[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v40 = v86;
  swift_getKeyPath();
  *&v81 = v40;
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v41 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  swift_beginAccess();
  v42 = v40 + v41;
  v43 = v73;
  sub_245778F2C(v42, v73, &qword_27EE2B898);
  v44 = v78;

  v45 = v69;
  if ((*(v69 + 48))(v43, 1, v44))
  {
    sub_245778F94(v43, &qword_27EE2B898);
    v46 = 0;
    v47 = 0xE000000000000000;
  }

  else
  {
    v48 = v59;
    (*(v45 + 16))(v59, v43, v44);
    sub_245778F94(v43, &qword_27EE2B898);
    v46 = sub_24590DCD4();
    v47 = v49;
    (*(v45 + 8))(v48, v44);
  }

  *&v81 = v46;
  *(&v81 + 1) = v47;
  v84 = v30;
  v85 = v38;
  swift_getOpaqueTypeConformance2();
  sub_245778CE8();
  v50 = v72;
  v51 = v76;
  sub_2459102E4();

  (*(v74 + 8))(v39, v51);
  v52 = swift_allocObject();
  v53 = v37[3];
  *(v52 + 3) = v37[2];
  *(v52 + 4) = v53;
  *(v52 + 5) = v37[4];
  v54 = v37[1];
  *(v52 + 1) = *v37;
  *(v52 + 2) = v54;
  v55 = v71;
  (*(v75 + 32))(v71, v50, v77);
  v56 = (v55 + *(v70 + 36));
  *v56 = sub_2458DCE8C;
  v56[1] = v52;
  v56[2] = 0;
  v56[3] = 0;
  sub_24577ABC4(v55, v79, &qword_27EE2B848);
  return sub_2458DC404(v37, &v81);
}

uint64_t sub_2458DB2F0(uint64_t a1)
{
  v2 = sub_24590FDA4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B888);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24590FD74();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020);
  sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020);
  sub_24590F8D4();
  v7 = sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888);
  MEMORY[0x245D75410](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2458DB4DC(_OWORD *a1)
{
  v2 = sub_24590F584();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24590F574();
  v5 = swift_allocObject();
  v6 = a1[3];
  v5[3] = a1[2];
  v5[4] = v6;
  v5[5] = a1[4];
  v7 = a1[1];
  v5[1] = *a1;
  v5[2] = v7;
  sub_2458DC404(a1, v9);
  return MEMORY[0x245D75C00](v4, sub_2458DC950, v5);
}

uint64_t sub_2458DB5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8[-v3];
  v12 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  v5 = v11;
  v6 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  swift_getKeyPath();
  v9 = v5;
  v10 = v4;
  *&v12 = v5;
  sub_2458DCD0C(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C294();

  return sub_245778F94(v4, &qword_27EE2B8B8);
}

uint64_t sub_2458DB76C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B818);
  sub_245910584();
  sub_2458DD488();
}

unint64_t sub_2458DB814()
{
  result = qword_27EE2B6A0;
  if (!qword_27EE2B6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B698);
    sub_2458DB8A0();
    sub_2458DB9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6A0);
  }

  return result;
}

unint64_t sub_2458DB8A0()
{
  result = qword_27EE2B6A8;
  if (!qword_27EE2B6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6C0);
    sub_2458DB9D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B740);
    sub_2458DBDFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6A8);
  }

  return result;
}

unint64_t sub_2458DB9D8()
{
  result = qword_27EE2B6C8;
  if (!qword_27EE2B6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6B8);
    sub_2458DBA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6C8);
  }

  return result;
}

unint64_t sub_2458DBA5C()
{
  result = qword_27EE2B6D0;
  if (!qword_27EE2B6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6D8);
    sub_2458DBAE8();
    sub_2458DBD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6D0);
  }

  return result;
}

unint64_t sub_2458DBAE8()
{
  result = qword_27EE2B6E0;
  if (!qword_27EE2B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6E8);
    sub_2458DBB74();
    sub_2458DBBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6E0);
  }

  return result;
}

unint64_t sub_2458DBB74()
{
  result = qword_27EE2B6F0;
  if (!qword_27EE2B6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B6F0);
  }

  return result;
}

unint64_t sub_2458DBBF8()
{
  result = qword_27EE2B700;
  if (!qword_27EE2B700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B708);
    sub_2458DBC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B700);
  }

  return result;
}

unint64_t sub_2458DBC84()
{
  result = qword_27EE2B710;
  if (!qword_27EE2B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B718);
    sub_2458DCD0C(&qword_27EE2B720, type metadata accessor for IdentityCredentialProviderAuxiliaryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B710);
  }

  return result;
}

unint64_t sub_2458DBD40()
{
  result = qword_27EE2B728;
  if (!qword_27EE2B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B730);
    sub_2458DCD0C(&qword_27EE2B738, type metadata accessor for IdentityCredentialProviderSelectionViewPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B728);
  }

  return result;
}

unint64_t sub_2458DBDFC()
{
  result = qword_27EE2B748;
  if (!qword_27EE2B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B740);
    sub_2458DBE88();
    sub_2458DC374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B748);
  }

  return result;
}

unint64_t sub_2458DBE88()
{
  result = qword_27EE2B750;
  if (!qword_27EE2B750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B758);
    sub_2458DBF14();
    sub_2458DC1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B750);
  }

  return result;
}

unint64_t sub_2458DBF14()
{
  result = qword_27EE2B760;
  if (!qword_27EE2B760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B768);
    sub_2458DBFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B760);
  }

  return result;
}

unint64_t sub_2458DBFA0()
{
  result = qword_27EE2B770;
  if (!qword_27EE2B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B778);
    sub_2458DC02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B770);
  }

  return result;
}

unint64_t sub_2458DC02C()
{
  result = qword_27EE2B780;
  if (!qword_27EE2B780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B790);
    sub_24590FEA4();
    sub_245778BD8(&qword_27EE2B798, &qword_27EE2B790);
    sub_2458DCD0C(&qword_27EE2B7A0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_245778BD8(&qword_27EE2A640, &qword_27EE2A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B780);
  }

  return result;
}

unint64_t sub_2458DC1A4()
{
  result = qword_27EE2B7A8;
  if (!qword_27EE2B7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B7B0);
    sub_2458DC230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B7A8);
  }

  return result;
}

unint64_t sub_2458DC230()
{
  result = qword_27EE2B7B8;
  if (!qword_27EE2B7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B7C0);
    sub_2458DC2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B7B8);
  }

  return result;
}

unint64_t sub_2458DC2BC()
{
  result = qword_27EE2B7C8;
  if (!qword_27EE2B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B7D0);
    sub_2458DC02C();
    sub_245778BD8(&qword_27EE2B7D8, &qword_27EE2B7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B7C8);
  }

  return result;
}

unint64_t sub_2458DC374()
{
  result = qword_27EE2B7E8;
  if (!qword_27EE2B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B7E8);
  }

  return result;
}

void sub_2458DC3F0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_2458DC444()
{
  result = qword_27EE2B810;
  if (!qword_27EE2B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B810);
  }

  return result;
}

unint64_t sub_2458DC4D8()
{
  result = qword_27EE2B830;
  if (!qword_27EE2B830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B648);
    sub_245778BD8(&qword_27EE2B808, &qword_27EE2B648);
    swift_getOpaqueTypeConformance2();
    sub_2458DC444();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B830);
  }

  return result;
}

unint64_t sub_2458DC648()
{
  result = qword_27EE2B850;
  if (!qword_27EE2B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B878);
    sub_2458DC884();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B888);
    sub_245778BD8(&qword_27EE2B890, &qword_27EE2B888);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_245778CE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B850);
  }

  return result;
}

unint64_t sub_2458DC884()
{
  result = qword_27EE2B880;
  if (!qword_27EE2B880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B870);
    sub_2458DCD0C(&qword_27EE2B388, type metadata accessor for MobileDocumentProviderExtensionHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B880);
  }

  return result;
}

unint64_t sub_2458DC97C()
{
  result = qword_27EE2B8E8;
  if (!qword_27EE2B8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B8E8);
  }

  return result;
}

uint64_t sub_2458DCA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2458DCA7C()
{
  result = qword_27EE2B920;
  if (!qword_27EE2B920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B910);
    sub_2458DC97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B920);
  }

  return result;
}

uint64_t sub_2458DCB2C(uint64_t a1)
{
  v2 = sub_24590F5B4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x245D74FA0](v4);
}

uint64_t sub_2458DCBF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24590FAB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2458DCC78(uint64_t a1)
{
  v2 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2458DCD0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2458DCD54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2459054A8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_4()
{

  sub_2458342BC(*(v0 + 32), *(v0 + 40));
  sub_2458DC3F0(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2458DCEB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2458DCEF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2458DCF60@<X0>(_BYTE *a1@<X8>)
{
  v37 = a1;
  v1 = sub_24590BFC4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B950);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v34 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-v5];
  v7 = [objc_allocWithZone(MEMORY[0x277D1B1A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_245916930;
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 32) = 7;
  v9 = sub_245910C34();

  [v7 setSymbolColors_];

  v10 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v11 = sub_2459109C4();
  [v10 initWithSymbolName:v11 configuration:v7];

  sub_24590F304();
  sub_24590B770();
  v12 = sub_245910194();
  v14 = v13;
  LOBYTE(v11) = v15;
  sub_245910014();
  v16 = sub_245910184();
  v18 = v17;
  v33 = v19;
  v21 = v20;

  sub_24580FD24(v12, v14, v11 & 1);

  v23 = v34;
  v22 = v35;
  v24 = *(v35 + 16);
  v25 = v36;
  v24(v34, v6, v36);
  v26 = v37;
  v24(v37, v23, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B958) + 48)];
  *v27 = v16;
  *(v27 + 1) = v18;
  v28 = v33;
  v29 = v33 & 1;
  v27[16] = v33 & 1;
  *(v27 + 3) = v21;
  sub_245812E64(v16, v18, v28 & 1);
  v30 = *(v22 + 8);

  v30(v6, v25);
  sub_24580FD24(v16, v18, v29);

  return (v30)(v23, v25);
}

uint64_t sub_2458DD2D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24590FB74();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B948);
  return sub_2458DCF60((a1 + *(v2 + 44)));
}

unint64_t sub_2458DD338()
{
  result = qword_27EE2B960;
  if (!qword_27EE2B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2B968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2B960);
  }

  return result;
}

uint64_t sub_2458DD3C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v3 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  return sub_2458E2754(v5 + v3, a1);
}

uint64_t sub_2458DD488()
{
  v1 = v0;
  v74 = sub_24590E574();
  v68 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24590E974();
  v67 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v69);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v67 - v6;
  v76 = sub_24590E8A4();
  v79 = *(v76 - 8);
  v7 = *(v79 + 64);
  v8 = MEMORY[0x28223BE20](v76);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v14 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v81 = v0;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v17 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__presentmentContext;
  swift_beginAccess();
  sub_245778F2C(v1 + v17, v13, &qword_27EE2B8B8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v75 = v7;
    v18 = v10;
    v19 = v76;
    sub_245778F94(v13, &qword_27EE2B8B8);
    swift_getKeyPath();
    v80 = v1;
    sub_24590C2A4();

    v20 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
    swift_beginAccess();
    v21 = v1 + v20;
    v22 = v70;
    sub_2458E2754(v21, v70);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v24 = v79;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v68;
      v26 = v73;
      v27 = v74;
      (*(v68 + 32))(v73, v22, v74);
      v28 = *(v1 + 16);
      v29 = v18;
      (*(v25 + 16))(v18, v26, v27);
      v30 = v18;
      v31 = v19;
      (*(v24 + 104))(v30, *MEMORY[0x277CFF750], v19);
      v32 = sub_245910D64();
      v33 = v77;
      (*(*(v32 - 8) + 56))(v77, 1, 1, v32);
      v34 = v78;
      (*(v24 + 16))(v78, v29, v31);
      sub_245910D34();

      v35 = sub_245910D24();
      v36 = (*(v24 + 80) + 40) & ~*(v24 + 80);
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      *(v37 + 2) = v35;
      *(v37 + 3) = v38;
      *(v37 + 4) = v28;
      (*(v24 + 32))(&v37[v36], v34, v31);
      sub_2458B90EC(0, 0, v33, &unk_24591EEE0, v37);

      (*(v24 + 8))(v29, v31);
      return (*(v25 + 8))(v73, v74);
    }

    else
    {
      v53 = v67;
      v54 = v71;
      v55 = v72;
      (*(v67 + 32))(v71, v22, v72);
      v56 = *(v1 + 16);
      v57 = v18;
      (*(v53 + 16))(v18, v54, v55);
      v58 = v18;
      v59 = v19;
      (*(v24 + 104))(v58, *MEMORY[0x277CFF758], v19);
      v60 = sub_245910D64();
      v61 = v77;
      (*(*(v60 - 8) + 56))(v77, 1, 1, v60);
      v62 = v78;
      (*(v24 + 16))(v78, v57, v59);
      sub_245910D34();

      v63 = sub_245910D24();
      v64 = (*(v24 + 80) + 40) & ~*(v24 + 80);
      v65 = swift_allocObject();
      v66 = MEMORY[0x277D85700];
      *(v65 + 2) = v63;
      *(v65 + 3) = v66;
      *(v65 + 4) = v56;
      (*(v24 + 32))(&v65[v64], v62, v59);
      sub_2458B90EC(0, 0, v61, &unk_24591D9C0, v65);

      (*(v24 + 8))(v57, v59);
      return (*(v53 + 8))(v71, v72);
    }
  }

  else
  {
    v40 = v75;
    sub_2458E28B0(v13, v75);
    v41 = *(v1 + 16);
    v42 = *(v14 + 20);
    v43 = sub_24590E814();
    (*(*(v43 - 8) + 16))(v10, v40 + v42, v43);
    v44 = v79;
    v45 = v76;
    (*(v79 + 104))(v10, *MEMORY[0x277CFF740], v76);
    v46 = sub_245910D64();
    v47 = v77;
    (*(*(v46 - 8) + 56))(v77, 1, 1, v46);
    v48 = v78;
    (*(v44 + 16))(v78, v10, v45);
    sub_245910D34();

    v49 = sub_245910D24();
    v50 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D85700];
    *(v51 + 2) = v49;
    *(v51 + 3) = v52;
    *(v51 + 4) = v41;
    (*(v44 + 32))(&v51[v50], v48, v45);
    sub_2458B90EC(0, 0, v47, &unk_24591D9C8, v51);

    (*(v44 + 8))(v10, v45);
    return sub_2458E2930(v75, type metadata accessor for MobileDocumentProviderPresentmentContext);
  }
}

uint64_t sub_2458DDE68@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v7 = *a1;
  swift_beginAccess();
  return sub_245778F2C(v9 + v7, a3, a2);
}

uint64_t sub_2458DDF48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  swift_beginAccess();
  sub_245778F2C(v1 + v6, v5, &qword_27EE2B898);
  v7 = sub_2458E29F4(v5, a1);
  sub_245778F94(v5, &qword_27EE2B898);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
    sub_24590C294();
  }

  else
  {
    sub_245778F2C(a1, v5, &qword_27EE2B898);
    swift_beginAccess();
    sub_2458E2E70(v5, v1 + v6, &qword_27EE2B898);
    swift_endAccess();
    sub_2458DE848();
    sub_245778F94(v5, &qword_27EE2B898);
  }

  return sub_245778F94(a1, &qword_27EE2B898);
}

uint64_t sub_2458DE164()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v28 - v3;
  v4 = sub_24590E5C4();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v7;
  v8 = sub_24590DCE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  swift_getKeyPath();
  v33 = v0;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v15 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  swift_beginAccess();
  sub_245778F2C(v1 + v15, v14, &qword_27EE2B898);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    return sub_245778F94(v14, &qword_27EE2B898);
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_245778F94(v14, &qword_27EE2B898);
  sub_24590DCB4();
  (*(v9 + 8))(v11, v8);
  v17 = *(v1 + 16);
  v18 = v29;
  sub_24590E5B4();
  v19 = sub_245910D64();
  v20 = v30;
  (*(*(v19 - 8) + 56))(v30, 1, 1, v19);
  v22 = v31;
  v21 = v32;
  v23 = v28;
  (*(v31 + 16))(v28, v18, v32);
  sub_245910D34();

  v24 = sub_245910D24();
  v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v24;
  *(v26 + 3) = v27;
  *(v26 + 4) = v17;
  (*(v22 + 32))(&v26[v25], v23, v21);
  sub_2458B90EC(0, 0, v20, &unk_24591DA10, v26);

  return (*(v22 + 8))(v18, v21);
}

uint64_t sub_2458DE5D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v4 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  return sub_2458E2754(v3 + v4, a2);
}

uint64_t sub_2458DE6A0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2458E2754(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C294();

  return sub_2458E2930(v6, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
}

uint64_t sub_2458DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458E2990(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2458DE848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v29 - v2;
  v3 = sub_24590E5C4();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_24590DCE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v36 = v0;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C2A4();

  v15 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  swift_beginAccess();
  sub_245778F2C(v0 + v15, v10, &qword_27EE2B898);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_245778F94(v10, &qword_27EE2B898);
  }

  v17 = *(v12 + 32);
  v30 = v14;
  v31 = v11;
  v17(v14, v10, v11);
  v18 = *(v0 + 16);
  sub_24590DCB4();
  v29 = v7;
  sub_24590E5B4();
  v19 = sub_245910D64();
  v20 = v33;
  (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  v21 = v34;
  v22 = v35;
  v23 = v32;
  (*(v34 + 16))(v32, v7, v35);
  sub_245910D34();
  v24 = v18;

  v25 = sub_245910D24();
  v26 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 2) = v25;
  *(v27 + 3) = v28;
  *(v27 + 4) = v24;
  (*(v21 + 32))(&v27[v26], v23, v22);
  sub_2458B90EC(0, 0, v20, &unk_24591DA00, v27);

  (*(v21 + 8))(v29, v22);
  return (*(v12 + 8))(v30, v31);
}

uint64_t sub_2458DECA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_245778F2C(a2, &v9 - v5, &qword_27EE2B898);
  v7 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  swift_beginAccess();
  sub_2458E2E70(v6, a1 + v7, &qword_27EE2B898);
  swift_endAccess();
  sub_2458DE848();
  return sub_245778F94(v6, &qword_27EE2B898);
}

uint64_t sub_2458DEDA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__presentmentContext;
  swift_beginAccess();
  sub_2458E2E70(a2, a1 + v4, &qword_27EE2B8B8);
  return swift_endAccess();
}

uint64_t sub_2458DEE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection;
  v11 = sub_24590DCE4();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__presentmentContext;
  v13 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  sub_24590C2D4();
  *(v5 + 16) = a1;
  sub_2458E2754(a2, v5 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState);
  v14 = (v5 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel_onDismissed);
  *v14 = a3;
  v14[1] = a4;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v5 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2458E2FD0;
  *(v17 + 24) = v15;
  *(v16 + 24) = sub_2458E2FD8;
  *(v16 + 32) = v17;

  v18 = swift_allocObject();
  *(v18 + 16) = sub_2458E2FD0;
  *(v18 + 24) = v15;

  sub_24590D344();

  sub_2458E2930(a2, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  v19 = *(v5 + 16);
  v20 = swift_allocObject();
  swift_weakInit();
  *(v19 + 104) = &unk_24591DA20;
  *(v19 + 112) = v20;

  v21 = *(v5 + 16);
  v22 = swift_allocObject();
  swift_weakInit();
  *(v21 + 88) = &unk_24591DA30;
  *(v21 + 96) = v22;

  v23 = swift_allocObject();
  swift_weakInit();

  v24 = *(v5 + 16);
  *(v24 + 40) = &unk_24591DA40;
  *(v24 + 48) = v23;

  v25 = *(v5 + 16);
  *(v25 + 120) = &unk_24591DA40;
  *(v25 + 128) = v23;

  return v5;
}

uint64_t sub_2458DF144()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel_onDismissed);

    v5(v6);
  }

  else
  {
    sub_24590C714();
    v8 = sub_24590F344();
    v9 = sub_245910F64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v8, v9, "Self unexpectedly nil in XPC interruption handler", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_2458DF2D8(uint64_t (*a1)(uint64_t), uint64_t a2, const char *a3)
{
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v9 = sub_24590F344();
  v10 = sub_245910F54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245767000, v9, v10, a3, v11, 2u);
    MEMORY[0x245D77B40](v11, -1, -1);
  }

  v12 = (*(v6 + 8))(v8, v5);
  return a1(v12);
}

uint64_t sub_2458DF430(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_24590EA74();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458DF524, v5, v4);
}

uint64_t sub_2458DF524()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2458DF718(*(v0 + 40));
  }

  else
  {
    (*(*(v0 + 64) + 104))(*(v0 + 72), *MEMORY[0x277CFFA38], *(v0 + 56));
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458DF718(NSObject *a1)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_24590EA74();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590F354();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v68 = sub_24590E974();
  v13 = *(v68 - 8);
  v14 = MEMORY[0x28223BE20](v68);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v52 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel___observationRegistrar;
  v69 = v2;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  v57 = v22;
  sub_24590C2A4();

  v23 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState;
  swift_beginAccess();
  sub_2458E2754(v2 + v23, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2458E2930(v12, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
    (*(v13 + 16))(v10, v66, v68);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v70 = v2;
    sub_24590C294();

    return sub_2458E2930(v10, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  }

  else
  {
    v26 = v68;
    (*(v13 + 32))(v21, v12, v68);
    sub_24590C714();
    v27 = *(v13 + 16);
    v28 = v58;
    v27(v58, v21, v26);
    v27(v65, v66, v26);
    v29 = sub_24590F344();
    v30 = sub_245910F64();
    v66 = v29;
    v31 = v21;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v59 = v32;
      v55 = swift_slowAlloc();
      v70 = v55;
      *v32 = 136315394;
      v54 = v30;
      v33 = v56;
      v57 = v21;
      v34 = v68;
      v27(v56, v28, v68);
      v35 = sub_245910A74();
      v36 = v28;
      v38 = v37;
      v53 = *(v13 + 8);
      v53(v36, v34);
      v39 = sub_2458CC378(v35, v38, &v70);

      v40 = v59;
      *(v59 + 1) = v39;
      *(v40 + 6) = 2080;
      v41 = v65;
      v27(v33, v65, v34);
      v42 = v53;
      v43 = sub_245910A74();
      v45 = v44;
      v46 = v34;
      v31 = v57;
      v42(v41, v46);
      v47 = sub_2458CC378(v43, v45, &v70);

      v48 = v59;
      *(v59 + 14) = v47;
      v49 = v66;
      _os_log_impl(&dword_245767000, v66, v54, "Trying to present configuration from non-connecting view:\ncurrent localConfiguration: %s\nnew configuration: %s", v48, 0x16u);
      v50 = v55;
      swift_arrayDestroy();
      MEMORY[0x245D77B40](v50, -1, -1);
      MEMORY[0x245D77B40](v48, -1, -1);
    }

    else
    {

      v42 = *(v13 + 8);
      v51 = v68;
      v42(v65, v68);
      v42(v28, v51);
    }

    (*(v60 + 8))(v67, v61);
    (*(v62 + 104))(v64, *MEMORY[0x277CFFA38], v63);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
    return (v42)(v31, v68);
  }
}

uint64_t sub_2458DFED8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  v2[9] = swift_task_alloc();
  v3 = sub_24590EA74();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_245910D34();
  v2[13] = sub_245910D24();
  v5 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2458DFFFC, v5, v4);
}

uint64_t sub_2458DFFFC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    v4 = v0[6];
    v5 = sub_24590E574();
    (*(*(v5 - 8) + 16))(v3, v4, v5);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    v0[5] = v2;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
    sub_24590C294();

    sub_2458E2930(v3, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  }

  else
  {
    (*(v0[11] + 104))(v0[12], *MEMORY[0x277CFFA38], v0[10]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2458E0300(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_24590EA74();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_245910D34();
  v2[10] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_2458E03F4, v5, v4);
}

uint64_t sub_2458E03F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_2458E0620;
    v3 = v0[5];

    return sub_2458E084C(v3);
  }

  else
  {
    v5 = v0[9];
    v6 = v0[7];
    v7 = v0[8];

    (*(v7 + 104))(v5, *MEMORY[0x277CFFA38], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2458E0620()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_2458E07D4;
  }

  else
  {
    v5 = sub_2458E075C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458E075C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E07D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E084C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24590F2B4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_24590E814();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  v2[16] = swift_task_alloc();
  v2[17] = sub_245910D34();
  v2[18] = sub_245910D24();
  v8 = sub_245910CD4();
  v2[19] = v8;
  v2[20] = v7;

  return MEMORY[0x2822009F8](sub_2458E0A48, v8, v7);
}

uint64_t sub_2458E0A48()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[3];
  v5 = *(v2 + 16);
  v5(v0[15], v4, v3);
  v0[21] = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[22] = v6;
  swift_weakInit();
  v5(v1, v4, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[23] = v8;
  *(v8 + 16) = v6;
  v9 = *(v2 + 32);
  v0[24] = v9;
  v0[25] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v0[26] = swift_allocObject();
  swift_weakInit();

  v0[27] = sub_245910D24();
  v11 = sub_245910CD4();
  v0[28] = v11;
  v0[29] = v10;

  return MEMORY[0x2822009F8](sub_2458E0C24, v11, v10);
}

uint64_t sub_2458E0C24()
{
  v1 = sub_24590E804();
  v3 = v2;
  v0[30] = v2;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_2458E0CD4;
  v5 = v0[7];

  return sub_2458D0704(v5, v1, v3);
}

uint64_t sub_2458E0CD4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_2458E114C;
  }

  else
  {
    v5 = sub_2458E0E2C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458E0E2C()
{
  v1 = v0[24];
  v19 = v0[26];
  v16 = v0[21];
  v17 = v0[23];
  v2 = v0[15];
  v18 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v7 + 32))(v4, v6, v8);
  v1(v4 + v5[5], v2, v3);
  v9 = (v4 + v5[6]);
  *v9 = sub_2458E31E8;
  v9[1] = v16;
  v10 = (v4 + v5[7]);
  *v10 = sub_2458E31F0;
  v10[1] = v17;
  v11 = (v4 + v5[8]);
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = (v4 + v5[9]);
  *v12 = &unk_24591DA58;
  v12[1] = v19;
  sub_2458E28B0(v4, v18);

  v13 = v0[19];
  v14 = v0[20];

  return MEMORY[0x2822009F8](sub_2458E0FA0, v13, v14);
}

uint64_t sub_2458E0FA0()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[4];

  (*(v2 + 56))(v1, 0, 1, v3);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[2] = v4;
  sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
  sub_24590C294();

  sub_245778F94(v1, &qword_27EE2B8B8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2458E114C()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);
  v4 = v0[19];
  v5 = v0[20];

  return MEMORY[0x2822009F8](sub_2458E1200, v4, v5);
}

uint64_t sub_2458E1200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E12D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_24590E864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 16);

    v14 = sub_245910D64();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    sub_245910D34();

    v15 = sub_245910D24();
    v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 2) = v15;
    *(v17 + 3) = v18;
    *(v17 + 4) = v13;
    (*(v6 + 32))(&v17[v16], v8, v5);
    sub_2458B90EC(0, 0, v11, &unk_24591DA68, v17);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = type metadata accessor for MobileDocumentProviderPresentmentContext();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v23[-2] = v20;
    v23[-1] = v4;
    v23[1] = v20;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
    sub_24590C294();

    return sub_245778F94(v4, &qword_27EE2B8B8);
  }

  return result;
}

uint64_t sub_2458E16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B8B8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_24590E8A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = sub_24590F354();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 16);
    v21 = Strong;
    v22 = sub_24590E814();
    (*(*(v22 - 8) + 16))(v14, v37, v22);
    (*(v9 + 104))(v14, *MEMORY[0x277CFF740], v8);
    v23 = sub_245910D64();
    v24 = v7;
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    (*(v9 + 16))(v12, v14, v8);
    sub_245910D34();

    v25 = sub_245910D24();
    v26 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 2) = v25;
    *(v27 + 3) = v28;
    *(v27 + 4) = v20;
    (*(v9 + 32))(&v27[v26], v12, v8);
    sub_2458B90EC(0, 0, v24, &unk_24591DA60, v27);

    (*(v9 + 8))(v14, v8);
    v29 = type metadata accessor for MobileDocumentProviderPresentmentContext();
    v30 = v38;
    (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v36 - 2) = v21;
    *(&v36 - 1) = v30;
    v39 = v21;
    sub_2458E2E28(&qword_27EE2B8B0, type metadata accessor for IdentityCredentialProviderSelectionViewModel);
    sub_24590C294();

    return sub_245778F94(v30, &qword_27EE2B8B8);
  }

  else
  {
    sub_24590C714();
    v33 = sub_24590F344();
    v34 = sub_245910F64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_245767000, v33, v34, "Self unexpectedly nil in userDidCancelHandler handler", v35, 2u);
      MEMORY[0x245D77B40](v35, -1, -1);
    }

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_2458E1C04(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_24590EA74();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_245910D34();
  v2[11] = sub_245910D24();
  v5 = sub_245910CD4();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x2822009F8](sub_2458E1CFC, v5, v4);
}

uint64_t sub_2458E1CFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v0[15] = *(Strong + 16);

    v0[16] = sub_245910D24();
    v3 = sub_245910CD4();
    v0[17] = v3;
    v0[18] = v2;

    return MEMORY[0x2822009F8](sub_2458E1F28, v3, v2);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 104))(v4, *MEMORY[0x277CFFA38], v6);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458E2E28(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2458E1F28()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  v2 = sub_24590D384();
  *v1 = v0;
  v1[1] = sub_2458E1FF4;
  v3 = *(v0 + 40);

  return MEMORY[0x282151358](v3, &unk_24591F310, 0, 0, 0, v2);
}

uint64_t sub_2458E1FF4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2458E2218;
  }

  else
  {
    v5 = sub_2458E2130;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2458E2130()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2458E219C, v1, v2);
}

uint64_t sub_2458E219C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E2218()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_2458E2284, v1, v2);
}

uint64_t sub_2458E2284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2458E22FC()
{

  sub_2458E2930(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__viewState, type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__optionSelection, &qword_27EE2B898);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel__presentmentContext, &qword_27EE2B8B8);

  v1 = OBJC_IVAR____TtC9CoreIDVUI44IdentityCredentialProviderSelectionViewModel___observationRegistrar;
  v2 = sub_24590C2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_2458E2440()
{
  type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(319);
  if (v0 <= 0x3F)
  {
    sub_2458E25F4(319, &qword_27EE2B9A0, MEMORY[0x277CFF5C8]);
    if (v1 <= 0x3F)
    {
      sub_2458E25F4(319, &qword_27EE2B9A8, type metadata accessor for MobileDocumentProviderPresentmentContext);
      if (v2 <= 0x3F)
      {
        sub_24590C2E4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2458E25F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2459112C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2458E2698()
{
  sub_2458E270C();
  if (v0 <= 0x3F)
  {
    sub_24590E574();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2458E270C()
{
  if (!qword_27EE2B9C0)
  {
    v0 = sub_24590E974();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2B9C0);
    }
  }
}

uint64_t sub_2458E2754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E27B8(uint64_t a1)
{
  v4 = *(sub_24590E8A4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_245902784(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2458E28B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderPresentmentContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E2930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2458E2990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredentialProviderSelectionViewModel.ViewState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2458E29F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590DCE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B898);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2B9C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_245778F2C(a1, &v21 - v13, &qword_27EE2B898);
  sub_245778F2C(a2, &v14[v15], &qword_27EE2B898);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_245778F2C(v14, v10, &qword_27EE2B898);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_2458E2E28(&qword_27EE2B9D0, MEMORY[0x277CFF5C8]);
      v18 = sub_245910934();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_245778F94(v14, &qword_27EE2B898);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_245778F94(v14, &qword_27EE2B9C8);
    v17 = 1;
    return v17 & 1;
  }

  sub_245778F94(v14, &qword_27EE2B898);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2458E2D30(uint64_t a1)
{
  v4 = *(sub_24590E5C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2457AA49C;

  return sub_24590376C(a1, v6, v7, v8, v1 + v5);
}