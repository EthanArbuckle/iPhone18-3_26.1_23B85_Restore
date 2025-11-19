uint64_t sub_2440BA830()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  KeyPath = swift_getKeyPath();
  (*(*v0 + 952))(KeyPath);

  if (!v0[25])
  {
    v7 = sub_243F4DF68();
    sub_243F5F574(v7, v4, &qword_27EDC0A50);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v10 = sub_2440D11C0();
      v11 = sub_2440D3490();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_243F48000, v10, v11, "starting entry timer", v12, 2u);
        MEMORY[0x245D58570](v12, -1, -1);
      }

      (*(v9 + 8))(v4, v8);
    }

    sub_2440D10D0();
    sub_2440D1120();
    v13 = sub_2440D3B80();
    v15 = v14;
    v16 = swift_allocObject();
    swift_weakInit();

    v17 = sub_243F69B7C(v13, v15, &unk_2440E68C0, v16);

    if (v1[25] && (, v18 = sub_2440D33A0(), , (v18 & 1) != 0))
    {
      v1[25] = v17;
    }

    else
    {
      v19 = swift_getKeyPath();
      v20 = MEMORY[0x28223BE20](v19);
      *&v21[-16] = v1;
      *&v21[-8] = v17;
      (*(*v1 + 960))(v20, sub_2440BBEA0);
    }
  }

  return result;
}

uint64_t sub_2440BABAC(uint64_t a1)
{
  *(v1 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440BAC48, 0, 0);
}

uint64_t sub_2440BAC48()
{
  v1 = v0[14];
  v2 = sub_243F4DF68();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(v0[14], &qword_27EDC0A50);
  }

  else
  {
    v5 = sub_2440D11C0();
    v6 = sub_2440D3490();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243F48000, v5, v6, "timeout triggered", v7, 2u);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    v8 = v0[14];

    (*(v4 + 8))(v8, v3);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + 200))
    {
      KeyPath = swift_getKeyPath();
      v12 = swift_task_alloc();
      *(v12 + 16) = v10;
      *(v12 + 24) = 0;
      (*(*v10 + 960))(KeyPath, sub_2440BC6C0, v12, MEMORY[0x277D84F78] + 8);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_243F5D774(*(v13 + 40) + 16, (v0 + 2));
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    (*(v16 + 56))(v15, v16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    (*(*v14 + 848))(2);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2440BAF70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "timeout canceled", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  swift_getKeyPath();
  (*(*v1 + 952))();

  if (*(v1 + 200) && (, sub_2440D33B0(), v11 = , *(v1 + 200)))
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x28223BE20](KeyPath);
    *&v15[-16] = v1;
    *&v15[-8] = 0;
    (*(*v1 + 960))(v13, sub_2440BC6C0);
  }

  else
  {
    *(v1 + 200) = 0;
  }

  return (*(**(v1 + 48) + 336))(v11);
}

uint64_t sub_2440BB270()
{
  v1 = sub_2440D0CA0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D0C90();
  (*(*v0 + 552))(v5);
  v6 = sub_2440D0C70();
  (*(*v0 + 304))(v6);
  v7 = sub_2440D0C60();
  (*(*v0 + 328))(v7);
  sub_2440D0C50();
  sub_2440D0C40();
  v8 = sub_2440D0C80();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_2440BB584()
{
  swift_unknownObjectRelease();
  sub_243F7EE58(*(v0 + 24));

  sub_2440BBF4C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewState___observationRegistrar;
  v2 = sub_2440D0930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2440BB640()
{
  sub_2440BB584();

  return swift_deallocClassInstance();
}

uint64_t sub_2440BB698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2440BB6D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 104);
  v13 = *(v2 + 96);
  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  v7 = *(v2 + 136);
  v8 = v1[1];
  *(v2 + 96) = *v1;
  *(v2 + 112) = v8;
  v9 = v1[5];
  v11 = v1[2];
  v10 = v1[3];
  *(v2 + 160) = v1[4];
  *(v2 + 176) = v9;
  *(v2 + 128) = v11;
  *(v2 + 144) = v10;
  sub_243F5F574(v1, v14, &qword_27EDBFF68);
  return sub_2440BBF4C(v13, v3, v4, v5, v6, v7);
}

uint64_t sub_2440BB7A0()
{
  swift_getKeyPath();
  (*(*v0 + 952))();

  swift_getKeyPath();
  sub_2440BBEB8(&qword_27EDC0E78, type metadata accessor for PINViewState);
  sub_2440D0910();

  v2 = v0[11];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v0[11] = v4;
    swift_getKeyPath();
    sub_2440D0900();
  }

  return result;
}

uint64_t sub_2440BB8E0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_2440B5988(v3, v4, v5, v2);
}

uint64_t sub_2440BB974()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_2440B5ED4(v3, v4, v5, v2);
}

uint64_t sub_2440BBA08()
{
  swift_getKeyPath();
  (*(*v0 + 952))();

  swift_getKeyPath();
  sub_2440BBEB8(&qword_27EDC0E78, type metadata accessor for PINViewState);
  sub_2440D0910();

  v2 = v0[11];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v0[11] = v4;
    swift_getKeyPath();
    sub_2440D0900();
  }

  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2440BBB68()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_2440B710C(v4, v5, v6, v2, v3);
}

uint64_t sub_2440BBC04()
{
  v0 = sub_243FA9620();
  swift_beginAccess();
  v1 = *(**v0 + 360);

  v1(0);

  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_2440BBCEC()
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_2440BBDD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2440BBE10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_2440BABAC(v0);
}

uint64_t sub_2440BBEB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PINViewState()
{
  result = qword_27EDD3C30;
  if (!qword_27EDD3C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2440BBF4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2440BBFB8(result, a2);
  }

  return result;
}

uint64_t sub_2440BBFB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2440BC00C()
{
  result = qword_27EDC5D98;
  if (!qword_27EDC5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5D98);
  }

  return result;
}

unint64_t sub_2440BC06C()
{
  result = qword_27EDC5DA0;
  if (!qword_27EDC5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5DA0);
  }

  return result;
}

unint64_t sub_2440BC0C4()
{
  result = qword_27EDC5DA8;
  if (!qword_27EDC5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5DA8);
  }

  return result;
}

uint64_t sub_2440BC168()
{
  result = sub_2440D0930();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2440BC278()
{
  *(*(v0 + 16) + 200) = *(v0 + 24);
}

uint64_t sub_2440BC2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for BottomErrorFactory();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_244033170(v2, sub_2440BC3BC, v3, v5);

  return sub_2440B47DC(v5);
}

uint64_t sub_2440BC384()
{

  return swift_deallocObject();
}

void (*sub_2440BC3BC())(uint64_t)
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  sub_2440D2BA0();
  sub_2440D16E0();

  v4 = sub_243FC0F7C(v3);
  v5 = (*(*v2 + 224))();
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v2 + 944))(0, 1);
    v9 = v8;
    v10 = sub_2440D0670();
    sub_243F5D81C(v7, v9);
    [v6 reportPINErrorWithError:v4 analyticsData:v10];
    swift_unknownObjectRelease();
  }

  result = (*(*v2 + 248))();
  if (result)
  {
    v12 = result;
    result(v3);

    return sub_243F7EE58(v12);
  }

  return result;
}

unint64_t sub_2440BC5A0()
{
  result = qword_27EDC5DB8;
  if (!qword_27EDC5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5DB8);
  }

  return result;
}

void sub_2440BC6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_243F4E0C8();
  sub_243F4DE64(v15, v14);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_243F5FAB0(v14);
  }

  else
  {
    v23 = a2;
    v24 = a4;
    sub_243F7EE68(a5);
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a3;
      sub_243F7EE58(a5);
      _os_log_impl(&dword_243F48000, v18, v19, "GlyphView: updateView state = %ld", v20, 0xCu);
      MEMORY[0x245D58570](v20, -1, -1);
    }

    else
    {
      sub_243F7EE58(a5);
    }

    (*(v17 + 8))(v14, v16);
    a4 = v24;
  }

  [a1 updateRotation];
  if (a5)
  {
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243FA328C;
    aBlock[3] = &block_descriptor_37;
    v21 = _Block_copy(aBlock);
  }

  else
  {
    v21 = 0;
  }

  [a1 setState:a3 animated:1 completionHandler:v21];
  _Block_release(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5DC8);
  sub_2440D1F70();
  v22 = aBlock[0];
  (*((*MEMORY[0x277D85000] & *aBlock[0]) + 0x80))(a4 == 3);
}

id sub_2440BC9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_isInErrorState] = 0;
  v10 = &v9[OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_parent];
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2440BCA40()
{
  v1 = (v0 + OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_parent);
  swift_beginAccess();
  v2 = *v1;
  sub_243F7EE68(v1[2]);
  return v2;
}

uint64_t sub_2440BCAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_parent);
  swift_beginAccess();
  v10 = v9[2];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_243F7EE58(v10);
}

uint64_t sub_2440BCB84()
{
  v1 = OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_isInErrorState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2440BCBC8(char a1)
{
  v3 = OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_isInErrorState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2440BCCAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2440BCD04@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for GlyphView.Coordinator();
  v7 = v1[1];
  v8 = *v1;
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_isInErrorState] = 0;
  v5 = &v4[OBJC_IVAR____TtCV19ContactlessReaderUI9GlyphView11Coordinator_parent];
  *v5 = v8;
  v5[1] = v7;
  sub_243F7EE68(v7);
  v9.receiver = v4;
  v9.super_class = v3;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2440BCD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440BD1A0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2440BCDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440BD1A0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2440BCE58()
{
  sub_2440BD1A0();
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_2440BCE80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D38BA8]) initWithStyle_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_243F4E0C8();
    sub_243F4DE64(v5, v2);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v2, 1, v6) == 1)
    {
      sub_243F5FAB0(v2);
    }

    else
    {
      v8 = sub_2440D11C0();
      v9 = sub_2440D3490();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_243F48000, v8, v9, "PrivacyLock: GlyphView created", v10, 2u);
        MEMORY[0x245D58570](v10, -1, -1);
      }

      (*(v7 + 8))(v2, v6);
    }

    [v4 setState:6 animated:0 completionHandler:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5DC8);
    sub_2440D1F70();
    v11 = v17;
    [v4 setDelegate_];

    [v4 setBounds_];
    v12 = [objc_opt_self() mainScreen];
    [v12 scale];
    v14 = v13;

    [v4 updateRasterizationScale_];
    return v4;
  }

  else
  {
    result = sub_2440D38D0();
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2440BD1A0()
{
  result = qword_27EDC5E50;
  if (!qword_27EDC5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5E50);
  }

  return result;
}

uint64_t sub_2440BD1F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_2440BD20C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2440BD268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id *AXSecurePayFeatureSuppressor.deinit()
{
  (*(*v0 + 15))();

  return v0;
}

uint64_t AXSecurePayFeatureSuppressor.__deallocating_deinit()
{
  (*(*v0 + 15))();

  return swift_deallocClassInstance();
}

uint64_t sub_2440BD388()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_243F4E038();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v11 = sub_243F4E2F4();
    v12 = sub_243F4E2FC();
    sub_243F4E308(v11 & 1, v1, 0x29287472617473, 0xE700000000000000, v12, v13);

    (*(v10 + 8))(v7, v9);
  }

  v14 = sub_2440D3390();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_243F54830(0, 0, v4, &unk_2440E6EE8, v16);
}

uint64_t sub_2440BD5F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2440BD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440BD6C8, 0, 0);
}

uint64_t sub_2440BD6C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *MEMORY[0x277CE79D8];
    v4 = objc_allocWithZone(MEMORY[0x277CE7D18]);
    v5 = v3;
    v6 = sub_2440D2F80();
    v7 = [v4 initWithType:v5 identifier:v6];

    v8 = *(v2 + 16);
    *(v2 + 16) = v7;
  }

  v9 = *(v0 + 48);
  v10 = sub_243F4E038();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_243F5EED4(*(v0 + 48), &qword_27EDC0A50);
  }

  else
  {
    v13 = sub_2440D11C0();
    v14 = sub_2440D3490();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243F48000, v13, v14, "AXSecurePayFeature - assertion created", v15, 2u);
      MEMORY[0x245D58570](v15, -1, -1);
    }

    v16 = *(v0 + 48);

    (*(v12 + 8))(v16, v11);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2440BD904()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2440BD944()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_2440BD62C(v3, v4, v5, v2);
}

void sub_2440BD9D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_243F4E038();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
    if (!*(v1 + 16))
    {
      return;
    }
  }

  else
  {
    v12 = sub_243F4E2F4();
    v13 = sub_243F4E2FC();
    sub_243F4E308(v12 & 1, v1, 0x2928706F7473, 0xE600000000000000, v13, v14);

    (*(v10 + 8))(v7, v9);
    if (!*(v1 + 16))
    {
      return;
    }
  }

  sub_243F5F574(v8, v5, &qword_27EDC0A50);
  if (v11(v5, 1, v9) == 1)
  {
    sub_243F5EED4(v5, &qword_27EDC0A50);
  }

  else
  {
    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243F48000, v15, v16, "AXSecurePayFeature - stopping", v17, 2u);
      MEMORY[0x245D58570](v17, -1, -1);
    }

    (*(v10 + 8))(v5, v9);
  }

  v18 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t type metadata accessor for CornersHighlightView()
{
  result = qword_27EDD41C0;
  if (!qword_27EDD41C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2440BDDD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for CornersHighlightView();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5E60);
  MEMORY[0x28223BE20](v31);
  v6 = (&v30 - v5);
  *v6 = sub_2440D2B00();
  v6[1] = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5E68) + 44);
  sub_244071174();
  v9 = (v6 + v8);
  sub_2440BE180();
  v11 = v10;
  v12 = sub_2440BE29C();
  sub_2440BE468(v12, v11, 0.18);
  v14 = v13;

  *v9 = sub_2440D2B00();
  v9[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5EF8);
  sub_2440BE524(v1, v14, (v6 + v8 + *(v16 + 44)));
  v17 = sub_2440D2B00();
  v19 = v18;
  v20 = v6 + v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F00) + 36);
  sub_2440BE808(v14, v2, v20);

  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F08) + 36));
  *v21 = v17;
  v21[1] = v19;
  v22 = sub_2440D2B80();
  LOBYTE(v17) = *(*(v2 + *(v3 + 36)) + 16) == 0;
  v23 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F10) + 36);
  *v23 = v22;
  v23[8] = v17;
  v33 = *(v2 + *(v3 + 44));
  sub_2440BF83C(v2, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_2440BF8A4(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_243F5DD50(&qword_27EDC5E70, &qword_27EDC5E60);
  v26 = v32;
  sub_2440D25D0();

  sub_2440BF978(v6);
  sub_2440BF83C(v2, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_2440BF8A4(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5E78);
  v29 = (v26 + *(result + 36));
  *v29 = 0;
  v29[1] = 0;
  v29[2] = sub_2440BF9E0;
  v29[3] = v27;
  return result;
}

void sub_2440BE180()
{
  v1 = type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if ((v4 & 1) == 0)
  {
    v2 = *(v0 + *(v1 + 36));
    v3 = *(v2 + 16);
    if (v3)
    {
      if (v3 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_2440590FC(*(v2 + 48), *(v2 + 56), *(v2 + 32), *(v2 + 40));
        if (*(v2 + 16) >= 3uLL)
        {
          sub_2440590FC(*(v2 + 64), *(v2 + 72), *(v2 + 48), *(v2 + 56));
          if (*(v2 + 16) >= 4uLL)
          {
            sub_2440590FC(*(v2 + 80), *(v2 + 88), *(v2 + 64), *(v2 + 72));
            sub_2440590FC(*(v2 + 48), *(v2 + 56), *(v2 + 80), *(v2 + 88));
            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

uint64_t sub_2440BE29C()
{
  v1 = type metadata accessor for CornersHighlightView();
  v2 = *(v0 + v1[9]);
  if (*(v2 + 16))
  {
    return sub_2440BF9E8(v2, *(v0 + v1[14]));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if (v17 == 1)
  {
    v4 = *(v0 + v1[12] + 8);
    v5 = sub_24401FEB8();
    sub_2440D1650();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
    result = swift_allocObject();
    *(result + 16) = xmmword_2440DB130;
    v8 = (v5 - v4) * 0.5;
    *(result + 32) = 0x4038000000000000;
    *(result + 40) = v8;
    *(result + 48) = v7 + -24.0;
    v9 = (v4 + v5) * 0.5;
    *(result + 56) = v8;
    *(result + 64) = v7 + -24.0;
    *(result + 72) = v9;
    *(result + 80) = 0x4038000000000000;
    *(result + 88) = v9;
  }

  else
  {
    v10 = sub_24401FEB8();
    sub_2440D1650();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
    result = swift_allocObject();
    *(result + 16) = xmmword_2440DB130;
    v13 = (v12 + -224.0) * 0.5;
    v14 = (v10 + -224.0) * 0.5;
    *(result + 32) = v13;
    *(result + 40) = v14;
    v15 = (v12 + 224.0) * 0.5;
    *(result + 48) = v15;
    *(result + 56) = v14;
    v16 = (v10 + 224.0) * 0.5;
    *(result + 64) = v15;
    *(result + 72) = v16;
    *(result + 80) = v13;
    *(result + 88) = v16;
  }

  return result;
}

void sub_2440BE468(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FD8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2440E6F60;
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v6 + 32) = *(a1 + 32);
  if (v7 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v6 + 48) = *(a1 + 48);
  if (v7 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v6 + 64) = *(a1 + 64);
  if (v7 == 3)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;

  nullsub_1(v6);
}

uint64_t sub_2440BE524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F98);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_2440D2680();
  v16 = *(a1 + *(type metadata accessor for CornersHighlightView() + 36));
  v17 = sub_2440D26B0();

  if (*(v16 + 16))
  {
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FA0) + 36);
    v19 = *MEMORY[0x277CE13C0];
    v20 = sub_2440D2BF0();
    (*(*(v20 - 8) + 104))(&v9[v18], v19, v20);
    *v9 = a2;
    *&v9[*(v6 + 36)] = 0x3FF0000000000000;
    sub_243F681C8(v9, v15, &qword_27EDC5F90);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_243F5F574(v15, v13, &qword_27EDC5F98);
  *a3 = v17;
  a3[1] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FA8);
  sub_243F5F574(v13, a3 + *(v21 + 48), &qword_27EDC5F98);

  sub_243F5EED4(v15, &qword_27EDC5F98);
  sub_243F5EED4(v13, &qword_27EDC5F98);
}

uint64_t sub_2440BE808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for CornersHighlightView();
  v61 = *(v5 - 8);
  v6 = (v5 - 8);
  v70 = *(v61 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F18);
  MEMORY[0x28223BE20](v59);
  v58 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F20);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  v69 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F28);
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v60 = &v56 - v13;
  sub_2440D14C0();
  v14 = v83;
  v15 = v85;
  v16 = v86;
  v17 = v87;
  v18 = *(a2 + v6[12]);
  KeyPath = swift_getKeyPath();
  v20 = v6[8];
  v57 = v6;
  v21 = (a2 + v20);
  v67 = a2;
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v81[0]) = v22;
  *(&v81[0] + 1) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  if (v72)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = a2 + v6[7];
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v81[0]) = v26;
  *(&v81[0] + 1) = v27;
  sub_2440D2820();
  if (v72)
  {
    v28 = 0.96;
  }

  else
  {
    v28 = 1.0;
  }

  sub_2440D2C40();
  v30 = v29;
  v32 = v31;
  sub_2440D2680();
  v33 = sub_2440D26B0();

  *&v72 = a1;
  *(&v72 + 1) = v14;
  *&v73 = v84;
  *(&v73 + 1) = v15;
  *&v74 = v16;
  *(&v74 + 1) = v17;
  *&v75 = KeyPath;
  *(&v75 + 1) = v18;
  *&v76 = v24;
  *(&v76 + 1) = v28;
  *&v77 = v28;
  *(&v77 + 1) = v30;
  *&v78 = v32;
  *(&v78 + 1) = v33;
  v79 = 0x4020000000000000uLL;
  v80 = 0;
  *&v81[0] = sub_2440579C8(0, 0xD000000000000018);
  *(&v81[0] + 1) = v34;
  sub_243F4EF64();
  v35 = sub_2440D2310();
  v37 = v36;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F30);
  sub_2440C12F0();
  v40 = v58;
  sub_2440D2430();
  sub_243F62C68(v35, v37, v39 & 1);

  v81[6] = v78;
  v81[7] = v79;
  v82 = v80;
  v81[2] = v74;
  v81[3] = v75;
  v81[4] = v76;
  v81[5] = v77;
  v81[0] = v72;
  v81[1] = v73;
  sub_243F5EED4(v81, &qword_27EDC5F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v41 = v67;
  sub_2440D1E60();
  LOBYTE(v71) = 7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
  v42 = sub_2440C1578();
  v43 = sub_243F67D98();
  v44 = v59;
  sub_2440D24A0();

  sub_243F5EED4(v40, &qword_27EDC5F18);
  v71 = *(v41 + v57[11]);
  v45 = v68;
  sub_2440BF83C(v41, v68);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_2440BF8A4(v45, v47 + v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EA0);
  *&v72 = v44;
  *(&v72 + 1) = v56;
  *&v73 = v42;
  *(&v73 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_243FD8C58();
  v48 = v60;
  v49 = v62;
  v50 = v69;
  sub_2440D25D0();

  (*(v63 + 8))(v50, v49);
  v51 = v68;
  sub_2440BF83C(v67, v68);
  v52 = swift_allocObject();
  sub_2440BF8A4(v51, v52 + v46);
  v53 = v66;
  (*(v64 + 32))(v66, v48, v65);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5F88);
  v55 = (v53 + *(result + 36));
  *v55 = sub_2440C16EC;
  v55[1] = v52;
  v55[2] = 0;
  v55[3] = 0;
  return result;
}

uint64_t sub_2440BEF00(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    v1 = sub_2440D2BA0();
  }

  else
  {
    sub_2440D2BB0();
    sub_2440D2B40();
  }

  MEMORY[0x28223BE20](v1);
  sub_2440D16E0();
}

uint64_t sub_2440BF008(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CornersHighlightView();
  v15 = *(v8 - 8);
  v9 = *(v15 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2440D2BB0();
  sub_2440D2B40();

  v20 = a1;
  sub_2440D16E0();

  sub_2440D2BB0();
  sub_2440D2B60();

  v19 = a1;
  sub_2440D16E0();

  sub_243F5DB84();
  v10 = sub_2440D3530();
  sub_2440BF83C(a1, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v12 = swift_allocObject();
  sub_2440BF8A4(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_2440C1978;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_39_0;
  v13 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440C1634(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v13);
  _Block_release(v13);

  (*(v18 + 8))(v4, v2);
  return (*(v16 + 8))(v7, v17);
}

uint64_t sub_2440BF434(char *a1, uint64_t a2)
{
  v4 = sub_2440D2C80();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2440D2CA0();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CornersHighlightView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = *a1;
  if (*(*(a2 + *(v14 + 44)) + 16))
  {
    sub_243F5DB84();
    v21 = sub_2440D3530();
    sub_2440BF83C(a2, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_2440BF8A4(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    *(v16 + v15 + v12) = v13;
    aBlock[4] = sub_2440C1184;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_38;
    v17 = _Block_copy(aBlock);

    sub_2440D2C90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2440C1634(&qword_27EDC0510, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
    sub_2440D3710();
    v18 = v21;
    MEMORY[0x245D57440](0, v9, v6, v17);
    _Block_release(v17);

    (*(v23 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v22);
  }

  else
  {
    v20 = sub_2440D2BB0();
    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = a2;
    *(&v21 - 8) = v13;
    sub_2440D16E0();
  }
}

uint64_t sub_2440BF83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CornersHighlightView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440BF8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CornersHighlightView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440BF908(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for CornersHighlightView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2440BF434(a2, v5);
}

uint64_t sub_2440BF978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2440BF9E8(uint64_t a1, CGFloat a2)
{
  v4 = *(a1 + 16);
  v5 = v4;
  if (!v4)
  {
    v8 = 0.0;
    v7.f64[0] = 0.0;
    goto LABEL_11;
  }

  if (v4 == 1)
  {
    v6 = 0;
    v7 = 0uLL;
  }

  else
  {
    v6 = v4 & 0x7FFFFFFFFFFFFFFELL;
    v9 = (a1 + 48);
    v7 = 0uLL;
    v10 = v4 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v7 = vaddq_f64(vaddq_f64(v7, v9[-1]), *v9);
      v9 += 2;
      v10 -= 2;
    }

    while (v10);
    if (v4 == v6)
    {
      goto LABEL_10;
    }
  }

  v11 = v4 - v6;
  v12 = (a1 + 16 * v6 + 32);
  do
  {
    v13 = *v12++;
    v7 = vaddq_f64(v7, v13);
    --v11;
  }

  while (v11);
LABEL_10:
  v8 = v7.f64[1];
LABEL_11:
  v14 = v7.f64[0] / v5;
  v29.a = 1.0;
  v29.b = 0.0;
  v29.c = 0.0;
  v29.d = 1.0;
  v29.tx = 0.0;
  v29.ty = 0.0;
  v15 = v8 / v5;
  CGAffineTransformTranslate(&v28, &v29, v7.f64[0] / v5, v8 / v5);
  v29 = v28;
  CGAffineTransformScale(&v28, &v29, a2, a2);
  v29 = v28;
  CGAffineTransformTranslate(&v28, &v29, -v14, -v15);
  a = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = *&v28.c;
    v27 = *&v28.a;
    v25 = *&v28.tx;
    *&v28.a = MEMORY[0x277D84F90];
    sub_2440C019C(0, v4, 0);
    a = v28.a;
    v17 = a1 + 40;
    do
    {
      v30 = *(v17 - 8);
      *&v29.a = v27;
      *&v29.c = v26;
      *&v29.tx = v25;
      v20 = CGPointApplyAffineTransform(v30, &v29);
      y = v20.y;
      x = v20.x;
      v28.a = a;
      v22 = *(*&a + 16);
      v21 = *(*&a + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2440C019C((v21 > 1), v22 + 1, 1);
        y = v20.y;
        x = v20.x;
        a = v28.a;
      }

      *(*&a + 16) = v22 + 1;
      v23 = *&a + 16 * v22;
      *(v23 + 32) = x;
      *(v23 + 40) = y;
      v17 += 16;
      --v4;
    }

    while (v4);
  }

  return *&a;
}

uint64_t sub_2440BFBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char a5@<W6>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_243F681C8(a1, a6, &qword_27EDBFFE0);
  v19 = type metadata accessor for CornersHighlightView();
  v20 = a6 + v19[5];
  sub_2440D2810();
  *v20 = v27;
  *(v20 + 8) = v28;
  v21 = a6 + v19[6];
  sub_2440D2810();
  *v21 = v27;
  *(v21 + 8) = v28;
  v22 = v19[7];
  v23 = sub_2440D1670();
  result = (*(*(v23 - 8) + 32))(a6 + v22, a2, v23);
  v25 = (a6 + v19[8]);
  *v25 = a7;
  v25[1] = a8;
  *(a6 + v19[9]) = a3;
  *(a6 + v19[10]) = a4;
  *(a6 + v19[11]) = a5;
  v26 = (a6 + v19[12]);
  *v26 = a9;
  v26[1] = a10;
  *(a6 + v19[13]) = 0x4020000000000000;
  *(a6 + v19[14]) = 0x3FF2666666666666;
  return result;
}

uint64_t sub_2440BFD74@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(&unk_28577E310);
  *a1 = result;
  return result;
}

uint64_t sub_2440BFDA4(uint64_t a1)
{
  v2 = sub_2440C0F78();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2440BFDF0(uint64_t a1)
{
  v2 = sub_2440C0F78();

  return MEMORY[0x28212D8E0](a1, v2);
}

double sub_2440BFE3C@<D0>(uint64_t a1@<X8>)
{
  sub_2440C02C0(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t (*sub_2440BFE84(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2440C1AD8;
}

uint64_t sub_2440BFEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440C0F24();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_2440BFF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440C0F24();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_2440BFF74(uint64_t a1)
{
  v2 = sub_2440C0F24();

  return MEMORY[0x282133738](a1, v2);
}

double sub_2440BFFC0@<D0>(uint64_t a1@<X8>)
{
  sub_2440C0548(*v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2440C0020(void *a1)
{

  *v1 = *a1;
  return result;
}

uint64_t (*sub_2440C0050(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2440C0078;
}

uint64_t sub_2440C0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440C0ED0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_2440C00EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440C0ED0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_2440C0150(uint64_t a1)
{
  v2 = sub_2440C0ED0();

  return MEMORY[0x282133738](a1, v2);
}

char *sub_2440C019C(char *a1, int64_t a2, char a3)
{
  result = sub_2440C01BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2440C01BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_2440C02C0(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 == 5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v2 < 7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 == 7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a1 + 10);
  v12 = *(a1 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2440D8A70;
  *(v13 + 32) = v5;
  *(v13 + 40) = v6;
  *(v13 + 48) = v7;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 72) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2440D8A70;
  *(v14 + 32) = v7;
  *(v14 + 40) = v8;
  *(v14 + 48) = v9;
  *(v14 + 56) = v10;
  *(v14 + 64) = v11;
  *(v14 + 72) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2440D8A70;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  *(v15 + 64) = v5;
  *(v15 + 72) = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2440D8A70;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v16 + 48) = v5;
  *(v16 + 56) = v6;
  *(v16 + 64) = v7;
  *(v16 + 72) = v8;
  v17 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  if (v2 < 9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v2 != 9)
  {
    v18 = v17;
    v19 = a1[12];
    v20 = a1[13];
    sub_244058BC0(v13, v19, v20);
    [v18 stroke];

    sub_244058BC0(v14, v19, v20);
    [v18 stroke];

    sub_244058BC0(v15, v19, v20);
    [v18 stroke];

    sub_244058BC0(v16, v19, v20);
    [v18 stroke];

    v21 = [v18 CGPath];
    sub_2440D2280();

    *a2 = v22;
    *(a2 + 16) = v23;
    *(a2 + 32) = v24;
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_2440C0548(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
  v4 = swift_allocObject();
  *(v4 + 1) = xmmword_2440DB130;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  *(v4 + 2) = *(a1 + 32);
  if (v5 < 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 == 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v4 + 3) = *(a1 + 48);
  if (v5 < 5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 == 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v4 + 4) = *(a1 + 64);
  if (v5 < 7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 == 7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 5) = *(a1 + 80);
  v7 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  if (v5 >= 9)
  {
    v8 = v7;
    sub_244058E70(v6, *(a1 + 96));

    v9 = [v8 CGPath];
    sub_2440D2280();

    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_2440C06C0()
{
  result = qword_27EDC5E80;
  if (!qword_27EDC5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5E80);
  }

  return result;
}

unint64_t sub_2440C0734()
{
  result = qword_27EDC5E88;
  if (!qword_27EDC5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5E88);
  }

  return result;
}

unint64_t sub_2440C078C()
{
  result = qword_27EDC5E90;
  if (!qword_27EDC5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5E90);
  }

  return result;
}

unint64_t sub_2440C07E0()
{
  result = qword_27EDC5E98;
  if (!qword_27EDC5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5E98);
  }

  return result;
}

unint64_t sub_2440C087C()
{
  result = qword_27EDC5EB0;
  if (!qword_27EDC5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5EB0);
  }

  return result;
}

unint64_t sub_2440C08D4()
{
  result = qword_27EDC5EB8;
  if (!qword_27EDC5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5EB8);
  }

  return result;
}

uint64_t sub_2440C0984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2440D1670();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2440C0AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2440D1670();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2440C0BC4()
{
  sub_243F67D28();
  if (v0 <= 0x3F)
  {
    sub_2440C0D38(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2440D1670();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_2440C0CE0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2440C0CE0()
{
  if (!qword_27EDC5ED0)
  {
    type metadata accessor for CGPoint();
    v0 = sub_2440D32F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC5ED0);
    }
  }
}

void sub_2440C0D38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2440C0DBC()
{
  result = qword_27EDC5ED8;
  if (!qword_27EDC5ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5E60);
    sub_243F5DD50(&qword_27EDC5E70, &qword_27EDC5E60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5ED8);
  }

  return result;
}

unint64_t sub_2440C0ED0()
{
  result = qword_27EDC5EE0;
  if (!qword_27EDC5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5EE0);
  }

  return result;
}

unint64_t sub_2440C0F24()
{
  result = qword_27EDC5EE8;
  if (!qword_27EDC5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5EE8);
  }

  return result;
}

unint64_t sub_2440C0F78()
{
  result = qword_27EDC5EF0;
  if (!qword_27EDC5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5EF0);
  }

  return result;
}

uint64_t sub_2440C0FCC()
{
  v1 = type metadata accessor for CornersHighlightView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  v6 = *(v1 + 28);
  v7 = sub_2440D1670();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_2440C1184()
{
  type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2440C1264()
{
  type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

unint64_t sub_2440C12F0()
{
  result = qword_27EDC5F38;
  if (!qword_27EDC5F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5F30);
    sub_2440C137C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5F38);
  }

  return result;
}

unint64_t sub_2440C137C()
{
  result = qword_27EDC5F40;
  if (!qword_27EDC5F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5F48);
    sub_2440C1408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5F40);
  }

  return result;
}

unint64_t sub_2440C1408()
{
  result = qword_27EDC5F50;
  if (!qword_27EDC5F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5F58);
    sub_2440C1494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5F50);
  }

  return result;
}

unint64_t sub_2440C1494()
{
  result = qword_27EDC5F60;
  if (!qword_27EDC5F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5F68);
    sub_243F5DD50(&qword_27EDC5F70, &qword_27EDC5F78);
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5F60);
  }

  return result;
}

unint64_t sub_2440C1578()
{
  result = qword_27EDC5F80;
  if (!qword_27EDC5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC5F18);
    sub_2440C12F0();
    sub_2440C1634(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5F80);
  }

  return result;
}

uint64_t sub_2440C1634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2440C167C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CornersHighlightView();

  return sub_2440BEF00(a2);
}

uint64_t sub_2440C16EC()
{
  v1 = *(type metadata accessor for CornersHighlightView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2440BF008(v2);
}

uint64_t sub_2440C174C()
{
  type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

uint64_t objectdestroyTm_31()
{
  v1 = type metadata accessor for CornersHighlightView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_2440D1F00();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  v5 = *(v1 + 28);
  v6 = sub_2440D1670();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2440C1980()
{
  type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  return sub_2440D1E50();
}

uint64_t sub_2440C1A48()
{
  type metadata accessor for CornersHighlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  return sub_2440D2830();
}

id sub_2440C1B24(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75D40]);

  return [v2 initWithDuration:a1 curve:0 animations:0.5];
}

uint64_t sub_2440C1B98(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2440C1BD8(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440C1C90, 0, 0);
}

uint64_t sub_2440C1C90()
{
  v1 = v0[38];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v0[42] = v2;

  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_2440C1D48;

  return sub_2440C292C(v3, v2);
}

uint64_t sub_2440C1D48(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4(0, 0, 0, 0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2440C1ED0, 0, 0);
  }
}

uint64_t sub_2440C1ED0()
{
  v35 = v0;
  v4 = sub_2440C57A8(v0[44], v0[36], v0[37]);
  if (v1)
  {
    v5 = v1;
    v6 = v2;
    v7 = v3;

LABEL_4:
    v11 = v0[41];
    v0[46] = v5;
    v0[47] = v7;
    v0[48] = v6;
    v12 = sub_243F4DFA8();
    v0[49] = v12;
    sub_243F4DE64(v12, v11);
    v13 = sub_2440D11E0();
    v0[50] = v13;
    v14 = *(v13 - 8);
    v0[51] = v14;
    v15 = *(v14 + 48);
    v0[52] = v15;
    v0[53] = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v15(v11, 1, v13) == 1)
    {
      sub_243F5EED4(v0[41], &qword_27EDC0A50);
    }

    else
    {

      v16 = sub_2440D11C0();
      v17 = sub_2440D3490();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_243F4E6F8(v4, v5, &v34);
        _os_log_impl(&dword_243F48000, v16, v17, "RegistrationViewModel - getTOSWebPage - fetching %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x245D58570](v19, -1, -1);
        MEMORY[0x245D58570](v18, -1, -1);
      }

      (*(v14 + 8))(v0[41], v13);
    }

    v20 = *(v0[38] + 16);
    v0[54] = v20;
    v21 = *(*v20 + 120);

    v33 = (v21 + *v21);
    v22 = swift_task_alloc();
    v0[55] = v22;
    *v22 = v0;
    v22[1] = sub_2440C2384;

    return (v33)(v0 + 2, v4, v5);
  }

  v4 = sub_2440C57A8(v0[44], 0, 0);
  v5 = v8;
  v6 = v9;
  v7 = v10;

  if (v5)
  {
    goto LABEL_4;
  }

  v24 = v0[39];
  v25 = sub_243F4DFA8();
  sub_243F4DE64(v25, v24);
  v26 = sub_2440D11E0();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_243F5EED4(v0[39], &qword_27EDC0A50);
  }

  else
  {
    v28 = sub_2440D11C0();
    v29 = sub_2440D3490();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_243F48000, v28, v29, "RegistrationViewModel - unable to get dynamic TOS URL", v30, 2u);
      MEMORY[0x245D58570](v30, -1, -1);
    }

    v31 = v0[39];

    (*(v27 + 8))(v31, v26);
  }

  v32 = v0[1];

  return v32(0, 0, 0, 0);
}

uint64_t sub_2440C2384()
{
  v1 = *v0;

  *(v1 + 448) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_2440C24C8, 0, 0);
}

uint64_t sub_2440C24C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((*(v0 + 56) & 1) == 0)
  {
    sub_243F5FECC(*(v0 + 16), *(v0 + 24));
    v10 = sub_2440C53D4(v1, v2);
    if (!v11)
    {
      v12 = *(v0 + 448);
      v13 = *(v0 + 456);
      *(v0 + 256) = v1;
      *(v0 + 264) = v2;
      sub_243F5FECC(v12, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FB8);
      if (swift_dynamicCast())
      {
        sub_243F9C80C((v0 + 104), v0 + 64);
        __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
        if (sub_2440D3940())
        {
          sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
          __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
          sub_2440D3930();
          sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
          v14 = *(v0 + 272);
          v15 = *(v0 + 280);
          __swift_destroy_boxed_opaque_existential_0(v0 + 64);
LABEL_17:
          v23 = *(v0 + 376);
          v22 = *(v0 + 384);
          goto LABEL_18;
        }

        __swift_destroy_boxed_opaque_existential_0(v0 + 64);
      }

      else
      {
        *(v0 + 136) = 0;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        sub_243F5EED4(v0 + 104, &qword_27EDC5FC0);
      }

      v10 = sub_2440C51B0(v1, v2);
    }

    v14 = v10;
    v15 = v11;
    sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
    sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
    goto LABEL_17;
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 320);
  *(v0 + 176) = *(v0 + 40);

  sub_243F4DE64(v6, v7);
  v8 = v4(v7, 1, v5);
  v9 = *(v0 + 320);
  if (v8 == 1)
  {
    sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    *(v0 + 160) = v2;
    *(v0 + 168) = v3;
    *(v0 + 144) = *(v0 + 176);
    sub_243FBCC0C(v0 + 160, v0 + 192);
    sub_243FBCC0C(v0 + 144, v0 + 208);
    sub_243FBCC0C(v0 + 160, v0 + 224);
    sub_243FBCC0C(v0 + 144, v0 + 240);
    v16 = sub_2440D11C0();
    v17 = sub_2440D3470();
    sub_243FAFBC8(v0 + 160);
    sub_243FAFBC8(v0 + 144);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_2440C5AC4();
      swift_allocError();
      *v20 = v1;
      *(v20 + 8) = v2;
      *(v20 + 16) = v3;
      *(v20 + 24) = *(v0 + 176);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_243F48000, v16, v17, "RegistrationViewModel - getTOSWebPage - %@", v18, 0xCu);
      sub_243F5EED4(v19, &qword_27EDC0418);
      MEMORY[0x245D58570](v19, -1, -1);
      MEMORY[0x245D58570](v18, -1, -1);

      sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
    }

    else
    {

      sub_243F5EED4(v0 + 16, &qword_27EDC1FF0);
      sub_243FAFBC8(v0 + 160);
      sub_243FAFBC8(v0 + 144);
    }

    (*(*(v0 + 408) + 8))(*(v0 + 320), *(v0 + 400));
  }

  v14 = 0;
  v15 = 0;
  v22 = 0;
  v23 = 0;
LABEL_18:

  v24 = *(v0 + 8);

  return v24(v14, v15, v22, v23);
}

uint64_t sub_2440C292C(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440C29D8, 0, 0);
}

uint64_t sub_2440C29D8()
{
  v1 = v0[32];
  v2 = sub_243F4E110();
  sub_243F4DE64(v2, v1);
  v3 = sub_2440D11E0();
  v0[33] = v3;
  v4 = *(v3 - 8);
  v0[34] = v4;
  v5 = *(v4 + 48);
  v0[35] = v5;
  v0[36] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[32];
  if (v6 == 1)
  {
    sub_243F5EED4(v0[32], &qword_27EDC0A50);
  }

  else
  {
    v8 = v0[30];
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v8, 0xD000000000000020, 0x80000002440F0170, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v12 = *(v0[30] + 16);
  v0[37] = v12;
  v13 = *(*v12 + 112);

  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[38] = v14;
  *v14 = v0;
  v14[1] = sub_2440C2C20;
  v15 = v0[28];
  v16 = v0[29];

  return (v18)(v0 + 2, v15, v16);
}

uint64_t sub_2440C2C20()
{

  return MEMORY[0x2822009F8](sub_2440C2D38, 0, 0);
}

uint64_t sub_2440C2D38()
{
  v1 = *(v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 24);
    v6 = *(v0 + 40);
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    *(v0 + 96) = v6;
    *(v0 + 112) = v5;
    sub_243FBCC0C(v0 + 112, v0 + 128);
    sub_243FBCC0C(v0 + 96, v0 + 144);
    v7 = sub_243F4DFA8();
    sub_243F4DE64(v7, v4);
    if (v2(v4, 1, v3) == 1)
    {
      sub_243F5EED4(*(v0 + 248), &qword_27EDC0A50);
    }

    else
    {
      sub_243FBCC0C(v0 + 112, v0 + 160);
      sub_243FBCC0C(v0 + 96, v0 + 176);
      v10 = sub_2440D11C0();
      v11 = sub_2440D3470();
      sub_243FAFBC8(v0 + 112);
      sub_243FAFBC8(v0 + 96);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        sub_2440C5AC4();
        swift_allocError();
        *v14 = v1;
        v15 = *(v0 + 80);
        *(v14 + 8) = *(v0 + 64);
        *(v14 + 24) = v15;
        sub_243FBCC0C(v0 + 112, v0 + 192);
        sub_243FBCC0C(v0 + 96, v0 + 208);
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v16;
        *v13 = v16;
        _os_log_impl(&dword_243F48000, v10, v11, "RegistrationViewModel - getConfiguration - %@", v12, 0xCu);
        sub_243F5EED4(v13, &qword_27EDC0418);
        MEMORY[0x245D58570](v13, -1, -1);
        MEMORY[0x245D58570](v12, -1, -1);
      }

      v17 = *(v0 + 264);
      v18 = *(v0 + 272);
      v19 = *(v0 + 248);

      (*(v18 + 8))(v19, v17);
    }

    sub_2440C5AC4();
    swift_allocError();
    *v20 = v1;
    v21 = *(v0 + 80);
    *(v20 + 8) = *(v0 + 64);
    *(v20 + 24) = v21;
    swift_willThrow();
    sub_243F5EED4(v0 + 16, &qword_27EDC1FE8);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(v1);
  }
}

uint64_t sub_2440C3038()
{
  v1 = *(**(v0 + 16) + 144);

  v1(v2);
}

uint64_t sub_2440C30A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_2440D0880();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_2440D05F0();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_2440D08A0();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2440C32C8, 0, 0);
}

uint64_t sub_2440C32C8()
{
  v73 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1 == 0xE500000000000000 && *(v0 + 16) == 0x41435F7266;
    if (v2 || (sub_2440D3A10() & 1) != 0)
    {
      v3 = *(v0 + 120);
      v70 = *(v0 + 112);
      v4 = *(v0 + 104);
      v5 = *(v0 + 88);
      v7 = *(v0 + 56);
      v6 = *(v0 + 64);

      sub_2440D0710();
      sub_2440D0890();
      sub_2440C3A2C(v5, v4);
      (*(v6 + 8))(v5, v7);
      v8 = (*(v3 + 48))(v4, 1, v70);
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 144);
      if (v8 == 1)
      {
        v12 = *(v0 + 104);
        (*(v10 + 8))(*(v0 + 160), *(v0 + 144));
        sub_243F5EED4(v12, &qword_27EDC1FE0);
      }

      else
      {
        v55 = *(v0 + 136);
        v56 = *(v0 + 112);
        v57 = *(v0 + 120);
        (*(v57 + 32))(v55, *(v0 + 104), v56);
        v50 = sub_2440C5B18();
        v52 = v58;
        (*(v57 + 8))(v55, v56);
        (*(v10 + 8))(v9, v11);
        if (v52)
        {
          goto LABEL_30;
        }
      }

LABEL_29:
      v50 = sub_2440C4CE8();
      v52 = v53;
LABEL_30:

      v54 = *(v0 + 8);

      return v54(v50, v52);
    }
  }

  v13 = *(v0 + 48);
  v14 = sub_243F4DFA8();
  sub_243F4DE64(v14, v13);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v71 = v15;
  v68 = *(v16 + 48);
  if (v68(v13, 1) == 1)
  {
    sub_243F5EED4(*(v0 + 48), &qword_27EDC0A50);
  }

  else
  {
    v17 = sub_2440D11C0();
    v18 = sub_2440D3460();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v72 = v20;
      *v19 = 136315138;
      sub_2440D0770();
      v21 = MEMORY[0x245D57130]();
      v22 = v14;
      v24 = v23;

      v25 = sub_243F4E6F8(v21, v24, &v72);
      v14 = v22;

      *(v19 + 4) = v25;
      _os_log_impl(&dword_243F48000, v17, v18, "PreferredLanguages = %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x245D58570](v20, -1, -1);
      MEMORY[0x245D58570](v19, -1, -1);
    }

    (*(v16 + 8))(*(v0 + 48), v71);
  }

  result = sub_2440D0770();
  v67 = *(result + 16);
  if (!v67)
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = 0;
  v28 = *(v0 + 120);
  v29 = *(v0 + 64);
  v64 = (v29 + 16);
  v69 = (v29 + 8);
  v65 = (v28 + 48);
  v62 = (v28 + 32);
  v63 = (v16 + 8);
  v61 = (v28 + 8);
  v30 = result + 40;
  v66 = result;
  v59 = v14;
  while (v27 < *(result + 16))
  {
    v32 = *(v0 + 40);

    sub_2440D0830();
    sub_243F4DE64(v14, v32);
    if ((v68)(v32, 1, v71) == 1)
    {
      sub_243F5EED4(*(v0 + 40), &qword_27EDC0A50);
    }

    else
    {
      (*v64)(*(v0 + 72), *(v0 + 80), *(v0 + 56));
      v33 = sub_2440D11C0();
      v34 = sub_2440D3460();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 72);
      v37 = *(v0 + 56);
      if (v35)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v72 = v39;
        *v38 = 136315138;
        v60 = sub_2440D0860();
        v41 = v40;
        (*v69)(v36, v37);
        v42 = sub_243F4E6F8(v60, v41, &v72);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_243F48000, v33, v34, "pref min = %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x245D58570](v39, -1, -1);
        v43 = v38;
        v14 = v59;
        MEMORY[0x245D58570](v43, -1, -1);
      }

      else
      {

        (*v69)(v36, v37);
      }

      (*v63)(*(v0 + 40), v71);
    }

    v44 = *(v0 + 112);
    v45 = *(v0 + 96);
    sub_2440C3A2C(*(v0 + 80), v45);
    if ((*v65)(v45, 1, v44) == 1)
    {
      v31 = *(v0 + 96);
      (*v69)(*(v0 + 80), *(v0 + 56));
      sub_243F5EED4(v31, &qword_27EDC1FE0);
      result = v66;
    }

    else
    {
      v46 = *(v0 + 128);
      v47 = *(v0 + 112);
      v48 = *(v0 + 80);
      v49 = *(v0 + 56);
      (*v62)(v46, *(v0 + 96), v47);
      v50 = sub_2440C5B18();
      v52 = v51;
      (*v61)(v46, v47);
      (*v69)(v48, v49);
      result = v66;
      if (v52)
      {

        goto LABEL_30;
      }
    }

    ++v27;
    v30 += 16;
    if (v67 == v27)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2440C3A2C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  MEMORY[0x28223BE20](v3 - 8);
  v146 = &v135 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F88);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v152 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v9 - 8);
  v145 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v137 = &v135 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v135 - v14;
  MEMORY[0x28223BE20](v15);
  v135 = &v135 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  MEMORY[0x28223BE20](v20 - 8);
  v140 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v144 = &v135 - v23;
  MEMORY[0x28223BE20](v24);
  v142 = &v135 - v25;
  MEMORY[0x28223BE20](v26);
  v148 = &v135 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v135 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v135 - v32;
  v34 = sub_2440D05F0();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v141 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v139 = &v135 - v38;
  MEMORY[0x28223BE20](v39);
  v136 = &v135 - v40;
  MEMORY[0x28223BE20](v41);
  v143 = &v135 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v135 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v135 - v47;
  v156 = 0x7961506F54706154;
  v157 = 0xEB000000002D4354;
  v49 = sub_2440D0860();
  MEMORY[0x245D57000](v49);

  sub_2440C4BA8(v156, v157, v33);

  v50 = *(v35 + 48);
  if (v50(v33, 1, v34) != 1)
  {
    v63 = *(v35 + 32);
    v63(v48, v33, v34);
    v64 = sub_243F4DFA8();
    sub_243F4DE64(v64, v19);
    v65 = sub_2440D11E0();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v19, 1, v65) == 1)
    {
      sub_243F5EED4(v19, &qword_27EDC0A50);
    }

    else
    {
      v67 = sub_2440D11C0();
      v68 = sub_2440D3490();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v151 = v35;
        v70 = v34;
        v71 = v63;
        v72 = v69;
        *v69 = 0;
        _os_log_impl(&dword_243F48000, v67, v68, "Using minimalIdentifier match", v69, 2u);
        v73 = v72;
        v63 = v71;
        v34 = v70;
        v35 = v151;
        MEMORY[0x245D58570](v73, -1, -1);
      }

      (*(v66 + 8))(v19, v65);
    }

    v74 = v153;
    v63(v153, v48, v34);
    v75 = 0;
    return (*(v35 + 56))(v74, v75, 1, v34);
  }

  v147 = v50;
  v150 = v34;
  v151 = v35;
  sub_243F5EED4(v33, &qword_27EDC1FE0);
  sub_2440D0850();
  v51 = sub_2440D3050();
  v53 = v52;

  v156 = v51;
  v157 = v53;
  v154 = 0x746E61682D687ALL;
  v155 = 0xE700000000000000;
  sub_243F4EF64();
  LOBYTE(v51) = sub_2440D36B0();

  if (v51)
  {
    sub_2440C4BA8(0xD000000000000010, 0x80000002440F0150, v30);
    v34 = v150;
    if (v147(v30, 1, v150) != 1)
    {
      v35 = v151;
      v84 = *(v151 + 32);
      v84(v45, v30, v34);
      v74 = v153;
      v85 = v153;
      v86 = v45;
LABEL_20:
      v84(v85, v86, v34);
      v75 = 0;
      return (*(v35 + 56))(v74, v75, 1, v34);
    }

    sub_243F5EED4(v30, &qword_27EDC1FE0);
  }

  sub_2440D0850();
  v54 = sub_2440D3050();
  v56 = v55;

  v156 = v54;
  v157 = v56;
  v154 = 0x736E61682D687ALL;
  v155 = 0xE700000000000000;
  v57 = sub_2440D36B0();

  v58 = v152;
  if ((v57 & 1) == 0)
  {
    goto LABEL_8;
  }

  v59 = v148;
  sub_2440C4BA8(0xD000000000000010, 0x80000002440F0130, v148);
  v34 = v150;
  if (v147(v59, 1, v150) != 1)
  {
    v35 = v151;
    v84 = *(v151 + 32);
    v87 = v143;
    v84(v143, v59, v34);
    v74 = v153;
    v85 = v153;
    v86 = v87;
    goto LABEL_20;
  }

  sub_243F5EED4(v59, &qword_27EDC1FE0);
LABEL_8:
  sub_2440D0840();
  v60 = sub_2440D0750();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v58, 1, v60) == 1)
  {
    sub_243F5EED4(v58, &qword_27EDC1F88);
  }

  else
  {
    v148 = sub_2440D0740();
    v77 = v76;
    (*(v61 + 8))(v58, v60);
    v78 = v146;
    v152 = a1;
    sub_2440D0870();
    v79 = v78;
    v80 = sub_2440D07E0();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {

      v82 = &qword_27EDC1F90;
      v83 = v79;
    }

    else
    {
      v143 = sub_2440D0740();
      v89 = v88;
      (*(v81 + 8))(v79, v80);
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_2440D3830();

      v156 = 0x7961506F54706154;
      v157 = 0xEB000000002D4354;
      MEMORY[0x245D57000](v148, v77);

      MEMORY[0x245D57000](45, 0xE100000000000000);
      MEMORY[0x245D57000](v143, v89);

      v90 = v142;
      sub_2440C4BA8(v156, v157, v142);

      v91 = v150;
      if (v147(v90, 1, v150) != 1)
      {
        v111 = *(v151 + 32);
        v112 = v136;
        v111(v136, v90, v91);
        v117 = sub_243F4DFA8();
        v114 = v135;
        sub_243F4DE64(v117, v135);
        v115 = sub_2440D11E0();
        v116 = *(v115 - 8);
        v34 = v91;
        if ((*(v116 + 48))(v114, 1, v115) == 1)
        {
          sub_243F5EED4(v114, &qword_27EDC0A50);
          v74 = v153;
          goto LABEL_57;
        }

        v122 = sub_2440D11C0();
        v126 = sub_2440D3490();
        v127 = os_log_type_enabled(v122, v126);
        v74 = v153;
        if (v127)
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_243F48000, v122, v126, "Using language and region match", v128, 2u);
          v125 = v128;
          v112 = v136;
          goto LABEL_55;
        }

LABEL_56:

        (*(v116 + 8))(v114, v115);
        goto LABEL_57;
      }

      v82 = &qword_27EDC1FE0;
      v83 = v90;
    }

    sub_243F5EED4(v83, v82);
  }

  v92 = v149;
  sub_2440D0840();
  if (v62(v92, 1, v60) != 1)
  {
    v98 = sub_2440D0740();
    v99 = v92;
    v101 = v100;
    (*(v61 + 8))(v99, v60);
    v74 = v153;
    v34 = v150;
    if (v98 != 28270 || v101 != 0xE200000000000000)
    {
      v103 = sub_2440D3A10();
      v104 = v98 == 28526 && v101 == 0xE200000000000000;
      v105 = v104;
      if ((v103 & 1) == 0 && !v105 && (sub_2440D3A10() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v102 = v144;
    sub_2440C4BA8(0x7961506F54706154, 0xED0000626E2D4354, v144);
    if (v147(v102, 1, v34) == 1)
    {
      sub_243F5EED4(v102, &qword_27EDC1FE0);
LABEL_40:
      v156 = 0x7961506F54706154;
      v157 = 0xEB000000002D4354;
      MEMORY[0x245D57000](v98, v101);

      v106 = v140;
      sub_2440C4BA8(v156, v157, v140);

      if (v147(v106, 1, v34) == 1)
      {
        sub_243F5EED4(v106, &qword_27EDC1FE0);
        v75 = 1;
        goto LABEL_63;
      }

      v111 = *(v151 + 32);
      v111(v141, v106, v34);
      v118 = sub_243F4DFA8();
      v119 = v137;
      sub_243F4DE64(v118, v137);
      v120 = sub_2440D11E0();
      v121 = *(v120 - 8);
      if ((*(v121 + 48))(v119, 1, v120) == 1)
      {
        sub_243F5EED4(v119, &qword_27EDC0A50);
      }

      else
      {
        v131 = sub_2440D11C0();
        v132 = sub_2440D3490();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_243F48000, v131, v132, "Using language code only", v133, 2u);
          MEMORY[0x245D58570](v133, -1, -1);
        }

        (*(v121 + 8))(v137, v120);
      }

      v129 = v74;
      v130 = v141;
LABEL_62:
      v111(v129, v130, v34);
      v75 = 0;
      goto LABEL_63;
    }

    v111 = *(v151 + 32);
    v112 = v139;
    v111(v139, v102, v34);
    v113 = sub_243F4DFA8();
    v114 = v138;
    sub_243F4DE64(v113, v138);
    v115 = sub_2440D11E0();
    v116 = *(v115 - 8);
    if ((*(v116 + 48))(v114, 1, v115) == 1)
    {
      sub_243F5EED4(v114, &qword_27EDC0A50);
LABEL_57:
      v129 = v74;
      v130 = v112;
      goto LABEL_62;
    }

    v122 = sub_2440D11C0();
    v123 = sub_2440D3490();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_243F48000, v122, v123, "Using language code only, special nb variant", v124, 2u);
      v125 = v124;
      v112 = v139;
LABEL_55:
      MEMORY[0x245D58570](v125, -1, -1);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  sub_243F5EED4(v92, &qword_27EDC1F88);
  v93 = sub_243F4DFA8();
  v94 = v145;
  sub_243F4DE64(v93, v145);
  v95 = sub_2440D11E0();
  v96 = *(v95 - 8);
  v97 = (*(v96 + 48))(v94, 1, v95);
  v34 = v150;
  if (v97 == 1)
  {
    sub_243F5EED4(v94, &qword_27EDC0A50);
    v75 = 1;
    v74 = v153;
LABEL_63:
    v35 = v151;
    return (*(v35 + 56))(v74, v75, 1, v34);
  }

  v107 = sub_2440D11C0();
  v108 = sub_2440D3470();
  v109 = os_log_type_enabled(v107, v108);
  v74 = v153;
  v35 = v151;
  if (v109)
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_243F48000, v107, v108, "Cannot get language identifier", v110, 2u);
    MEMORY[0x245D58570](v110, -1, -1);
  }

  (*(v96 + 8))(v94, v95);
  v75 = 1;
  return (*(v35 + 56))(v74, v75, 1, v34);
}

uint64_t sub_2440C4BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *sub_244056A6C();

  MEMORY[0x245D57000](0x6C6D74682ELL, 0xE500000000000000);
  v6 = sub_2440D2F80();

  v7 = sub_2440D2F80();
  v8 = [v5 URLForResource:v6 withExtension:{v7, a1, a2}];

  if (v8)
  {
    sub_2440D05C0();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_2440D05F0();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

uint64_t sub_2440C4CE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1FE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_2440D05F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_243F4DFA8();
  sub_243F4DE64(v13, v12);
  v14 = sub_2440D11E0();
  v15 = *(v14 - 8);
  v29 = *(v15 + 48);
  if (v29(v12, 1, v14) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v27 = v13;
    v28 = v15;
    v16 = sub_2440D11C0();
    v17 = sub_2440D3470();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v9;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_243F48000, v16, v17, "ContentView last option", v18, 2u);
      v20 = v19;
      v9 = v26;
      MEMORY[0x245D58570](v20, -1, -1);
    }

    v15 = v28;
    (*(v28 + 8))(v12, v14);
    v13 = v27;
  }

  sub_2440C4BA8(0x7961506F54706154, 0xED00006E652D4354, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC1FE0);
    sub_243F4DE64(v13, v9);
    if (v29(v9, 1, v14) == 1)
    {
      sub_243F5EED4(v9, &qword_27EDC0A50);
    }

    else
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "ContentView no html file", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v15 + 8))(v9, v14);
    }

    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v21 = sub_2440C5B18();
    (*(v4 + 8))(v6, v3);
    return v21;
  }
}

uint64_t sub_2440C5120()
{

  return swift_deallocClassInstance();
}

void *sub_2440C5160()
{
  v0 = swift_allocObject();
  type metadata accessor for TOSWebService();
  v0[2] = sub_243FC5554();
  v0[3] = 0;
  v0[4] = 0xE000000000000000;
  return v0;
}

uint64_t sub_2440C51B0(uint64_t a1, unint64_t a2)
{
  sub_243F5FECC(a1, a2);
  sub_2440C5258(a1, a2);
  v4 = sub_2440D3090();

  return v4;
}

uint64_t sub_2440C521C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D3090();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2440C5258(uint64_t a1, unint64_t a2)
{
  v4 = sub_2440D0690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_243F5D81C(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_243F4EB38(v9, 0);
      v12 = sub_2440D0610();
      sub_243F5D81C(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_2440C53D4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_2440D3090();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_2440D3090();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2440D03C0();
  if (a1)
  {
    a1 = sub_2440D03F0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2440D03C0() || !__OFSUB__(v5, sub_2440D03F0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2440D03E0();
  return sub_2440D3090();
}

uint64_t sub_2440C5580(uint64_t a1)
{
  v29 = 95;
  v30 = 0xE100000000000000;
  v27 = 45;
  v28 = 0xE100000000000000;
  sub_243F4EF64();
  v2 = sub_2440D3690();
  v4 = v3;
  v31[0] = 45;
  v31[1] = 0xE100000000000000;
  v26 = v31;

  v6 = sub_2440478A4(0x7FFFFFFFFFFFFFFFLL, 1, sub_244048994, v25, v2, v4, v5);
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
    v10 = v6[6];
    v9 = v6[7];
  }

  else
  {

    v7 = sub_2440D3650();
    v8 = v11;
    v10 = v12;
    v9 = v13;
  }

  v14 = MEMORY[0x245D56F70](v7, v8, v10, v9);
  v16 = v15;

  if (!*(a1 + 16))
  {

LABEL_8:
    if (*(a1 + 16))
    {
      v21 = sub_243FB03FC(v14, v16);
      v23 = v22;

      if (v23)
      {
        v20 = *(*(a1 + 56) + 32 * v21);

        return v20;
      }
    }

    else
    {
    }

    return 0;
  }

  v17 = sub_243FB03FC(v2, v4);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    goto LABEL_8;
  }

  v20 = *(*(a1 + 56) + 32 * v17);

  return v20;
}

uint64_t sub_2440C57A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  if (a3 && (a2 == 0x41435F7266 && a3 == 0xE500000000000000 || (sub_2440D3A10() & 1) != 0))
  {
    v9 = a1;
    return sub_2440C5580(v9);
  }

  else
  {
    v10 = sub_2440D0770();
    v11 = sub_243F4DFA8();
    sub_243F4DE64(v11, v8);
    v12 = sub_2440D11E0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      result = sub_243F5EED4(v8, &qword_27EDC0A50);
    }

    else
    {

      v15 = sub_2440D11C0();
      v16 = sub_2440D3460();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v17 = 136315138;
        v18 = MEMORY[0x245D57130](v10, MEMORY[0x277D837D0]);
        v20 = sub_243F4E6F8(v18, v19, &v30);

        *(v17 + 4) = v20;
        _os_log_impl(&dword_243F48000, v15, v16, "PreferredLanguages = %s", v17, 0xCu);
        v21 = v29;
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x245D58570](v21, -1, -1);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      result = (*(v13 + 8))(v8, v12);
    }

    v22 = v10 + 40;
    v23 = -*(v10 + 16);
    v24 = -1;
    while (1)
    {
      if (v23 + v24 == -1)
      {

        v9 = a1;
        return sub_2440C5580(v9);
      }

      if (++v24 >= *(v10 + 16))
      {
        break;
      }

      v25 = v22 + 16;

      v26 = sub_2440C5580(a1);
      v28 = v27;

      v22 = v25;
      if (v28)
      {

        return v26;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2440C5AC4()
{
  result = qword_27EDC5FB0;
  if (!qword_27EDC5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5FB0);
  }

  return result;
}

uint64_t sub_2440C5B18()
{
  v46 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v39[-v4];
  v6 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  v7 = sub_2440D05A0();
  v8 = [v6 initWithContentsOfURL_];

  if (!v8)
  {
    v17 = sub_243F4DFA8();
    sub_243F4DE64(v17, v5);
    v18 = sub_2440D11E0();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v5, 1, v18) != 1)
    {
      v26 = sub_2440D11C0();
      v27 = sub_2440D3490();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243F48000, v26, v27, "Unable to read", v28, 2u);
        MEMORY[0x245D58570](v28, -1, -1);
      }

      (*(v19 + 8))(v5, v18);
      return 0;
    }

    v20 = v5;
    goto LABEL_9;
  }

  v44[0] = 0;
  v9 = [v8 decompressedDataUsingAlgorithm:0 error:v44];
  v10 = v44[0];
  if (!v9)
  {
    v21 = v10;
    v22 = sub_2440D0550();

    swift_willThrow();
    v23 = sub_243F4DFA8();
    sub_243F4DE64(v23, v2);
    v24 = sub_2440D11E0();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v2, 1, v24) != 1)
    {
      v32 = v22;
      v33 = sub_2440D11C0();
      v34 = sub_2440D3490();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = v22;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v38;
        *v36 = v38;
        _os_log_impl(&dword_243F48000, v33, v34, "Unable to decompress %@", v35, 0xCu);
        sub_243F5EED4(v36, &qword_27EDC0418);
        MEMORY[0x245D58570](v36, -1, -1);
        MEMORY[0x245D58570](v35, -1, -1);
      }

      else
      {
      }

      (*(v25 + 8))(v2, v24);
      return 0;
    }

    v20 = v2;
LABEL_9:
    sub_243F5EED4(v20, &qword_27EDC0A50);
    return 0;
  }

  v11 = sub_2440D0680();
  v13 = v12;

  sub_243F5FECC(v11, v13);
  v14 = sub_2440C53D4(v11, v13);
  if (v15)
  {
    v16 = v14;
    sub_243F5D81C(v11, v13);
  }

  else
  {
    v42 = v11;
    v43 = v13;
    sub_243F5FECC(v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FB8);
    if (swift_dynamicCast())
    {
      sub_243F9C80C(v40, v44);
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v29 = sub_2440D3940();
      sub_243F5D81C(v11, v13);
      if (v29)
      {
        __swift_project_boxed_opaque_existential_1(v44, v45);
        sub_2440D3930();

        sub_243F5D81C(v11, v13);
        v30 = *&v40[0];
        __swift_destroy_boxed_opaque_existential_0(v44);
        return v30;
      }

      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    else
    {
      sub_243F5D81C(v11, v13);
      v41 = 0;
      memset(v40, 0, sizeof(v40));
      sub_243F5EED4(v40, &qword_27EDC5FC0);
    }

    v16 = sub_2440C51B0(v11, v13);
  }

  sub_243F5D81C(v11, v13);
  return v16;
}

uint64_t sub_2440C6100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v17;
  v18 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v18;
  v19 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v19;
  v20 = sub_2440C8C2C(a1, v33);
  v21 = sub_243FBB128(v20);
  v22 = sub_243F795D0();
  sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v21, v22, 0xD000000000000011, 0x80000002440F0230, sub_2440C8C04, v16, v31, 48.0);
  v23 = sub_243F68750();
  v30[1] = sub_2440579C8(v23 & 1, 0x435F4E4F54545542);
  v30[2] = v24;
  sub_243FBC9E4();
  sub_243F4EF64();
  sub_2440D2440();

  v33[2] = v31[2];
  v33[3] = v31[3];
  v34 = v32;
  v33[0] = v31[0];
  v33[1] = v31[1];
  sub_243FBCA38(v33);
  *v9 = sub_2440D1C20();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6058);
  sub_2440C6494(a1, &v9[*(v25 + 44)]);
  sub_243F5F574(v15, v12, &qword_27EDC1E70);
  sub_243F5F574(v9, v6, &qword_27EDC6050);
  sub_243F5F574(v12, a2, &qword_27EDC1E70);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6060);
  v27 = a2 + v26[12];
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_243F5F574(v6, a2 + v26[16], &qword_27EDC6050);
  v28 = a2 + v26[20];
  *v28 = 0x4048000000000000;
  *(v28 + 8) = 0;
  sub_243F5EED4(v9, &qword_27EDC6050);
  sub_243F5EED4(v15, &qword_27EDC1E70);
  sub_243F5EED4(v6, &qword_27EDC6050);
  return sub_243F5EED4(v12, &qword_27EDC1E70);
}

uint64_t sub_2440C6494@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6068);
  MEMORY[0x28223BE20](v49);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6070);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6078);
  MEMORY[0x28223BE20](v43);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6080);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - v14;
  v44 = a1;
  v15 = *a1;
  v16 = a1[1];
  v52 = *(a1 + 1);
  *&v51 = v15;
  *(&v51 + 1) = v16;
  v45 = sub_243F4EF64();

  v17 = sub_2440D2310();
  v19 = v18;
  v21 = v20;
  sub_2440D21B0();
  v22 = sub_2440D22A0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_243F62C68(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6088) + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6090) + 28);
  v32 = *MEMORY[0x277CE0B28];
  v33 = sub_2440D22B0();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v10 = v22;
  *(v10 + 1) = v24;
  v10[16] = v26 & 1;
  *(v10 + 3) = v28;
  *(v10 + 4) = KeyPath;
  *(v10 + 5) = 1;
  v10[48] = 0;
  *&v10[*(v43 + 36)] = 0x4000000000000000;
  sub_2440C8C64();
  v34 = v42;
  sub_2440D24E0();
  sub_243F5EED4(v10, &qword_27EDC6078);
  *v4 = sub_2440D1B30();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60B0);
  sub_2440C699C(v44, &v4[*(v35 + 44)]);
  v51 = v52;
  sub_243F5DD50(&qword_27EDC60B8, &qword_27EDC6068);
  v36 = v47;
  sub_2440D2440();
  sub_243F5EED4(v4, &qword_27EDC6068);
  v37 = v46;
  sub_243F5F574(v34, v46, &qword_27EDC6080);
  v38 = v48;
  sub_243F5F574(v36, v48, &qword_27EDC6070);
  v39 = v50;
  sub_243F5F574(v37, v50, &qword_27EDC6080);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60C0);
  sub_243F5F574(v38, v39 + *(v40 + 48), &qword_27EDC6070);
  sub_243F5EED4(v36, &qword_27EDC6070);
  sub_243F5EED4(v34, &qword_27EDC6080);
  sub_243F5EED4(v38, &qword_27EDC6070);
  return sub_243F5EED4(v37, &qword_27EDC6080);
}

uint64_t sub_2440C699C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60C8);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v71 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C10);
  MEMORY[0x28223BE20](v75);
  v79 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60D0);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60D8);
  v89 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60E0);
  MEMORY[0x28223BE20](v16 - 8);
  v82 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v77 = &v71 - v19;
  MEMORY[0x28223BE20](v20);
  v88 = &v71 - v21;
  v22 = a1[2];
  v23 = a1[3];
  v24 = a1[5];
  v74 = a1[4];
  *&v109[0] = v22;
  *(&v109[0] + 1) = v23;
  v25 = sub_243F4EF64();

  v73 = v25;
  v26 = sub_2440D2310();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v81 = v11;
  if (v24)
  {

    sub_2440D2B20();
  }

  else
  {
    sub_2440D2B00();
  }

  sub_2440D18E0();
  v110 = v30 & 1;
  *&v100 = v26;
  *(&v100 + 1) = v28;
  LOBYTE(v101) = v30 & 1;
  *(&v101 + 1) = v32;
  sub_2440D21B0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD0);
  v34 = sub_243F9140C();
  sub_2440D2370();
  v109[6] = v106;
  v109[7] = v107;
  v109[8] = v108;
  v109[2] = v102;
  v109[3] = v103;
  v109[4] = v104;
  v109[5] = v105;
  v109[0] = v100;
  v109[1] = v101;
  sub_243F5EED4(v109, &qword_27EDC0DD0);
  *&v100 = v33;
  *(&v100 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v81;
  sub_2440D24E0();
  v37 = v89 + 8;
  v38 = *(v89 + 8);
  v38(v15, v36);
  if (v24)
  {
    v72 = v38;
    v39 = v78;
    sub_2440D29A0();
    sub_2440D2B00();
    sub_2440D1560();
    v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C00) + 36));
    v41 = v112;
    *v40 = v111;
    v40[1] = v41;
    v40[2] = v113;
    sub_2440D2670();
    v89 = v37;
    v42 = sub_2440D26B0();
    v71 = OpaqueTypeConformance2;
    v43 = v42;

    v44 = sub_2440D20B0();
    v45 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C08) + 36);
    *v45 = v43;
    *(v45 + 8) = v44;
    v46 = sub_2440D20A0();
    sub_2440D13D0();
    v47 = v39 + *(v75 + 36);
    *v47 = v46;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49;
    *(v47 + 24) = v50;
    *(v47 + 32) = v51;
    *(v47 + 40) = 0;
    *&v100 = v74;
    *(&v100 + 1) = v24;
    v52 = sub_2440D2310();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_2440D2B10();
    sub_2440D18E0();
    v99 = v56 & 1;
    *&v90 = v52;
    *(&v90 + 1) = v54;
    LOBYTE(v91) = v56 & 1;
    *(&v91 + 1) = v58;
    sub_2440D21B0();
    v59 = v76;
    sub_2440D2370();
    v106 = v96;
    v107 = v97;
    v108 = v98;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v105 = v95;
    v100 = v90;
    v101 = v91;
    sub_243F5EED4(&v100, &qword_27EDC0DD0);
    v60 = v77;
    sub_2440D24E0();
    v72(v59, v36);
    v61 = v79;
    sub_243F5F574(v39, v79, &qword_27EDC1C10);
    v62 = v82;
    sub_243F5F574(v60, v82, &qword_27EDC60E0);
    v63 = v80;
    sub_243F5F574(v61, v80, &qword_27EDC1C10);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC60F0);
    sub_243F5F574(v62, v63 + *(v64 + 48), &qword_27EDC60E0);
    sub_243F5EED4(v60, &qword_27EDC60E0);
    sub_243F5EED4(v39, &qword_27EDC1C10);
    sub_243F5EED4(v62, &qword_27EDC60E0);
    sub_243F5EED4(v61, &qword_27EDC1C10);
    v65 = v83;
    sub_2440C8DD4(v63, v83);
    (*(v84 + 56))(v65, 0, 1, v86);
  }

  else
  {
    v65 = v83;
    (*(v84 + 56))(v83, 1, 1, v86);
    v62 = v82;
  }

  v66 = v88;
  sub_243F5F574(v88, v62, &qword_27EDC60E0);
  v67 = v85;
  sub_243F5F574(v65, v85, &qword_27EDC60D0);
  v68 = v87;
  sub_243F5F574(v62, v87, &qword_27EDC60E0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60E8);
  sub_243F5F574(v67, v68 + *(v69 + 48), &qword_27EDC60D0);
  sub_243F5EED4(v65, &qword_27EDC60D0);
  sub_243F5EED4(v66, &qword_27EDC60E0);
  sub_243F5EED4(v67, &qword_27EDC60D0);
  return sub_243F5EED4(v62, &qword_27EDC60E0);
}

__n128 sub_2440C72B8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  if (sub_243FC0F94())
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 0.0;
  }

  type metadata accessor for CGSize(0);
  sub_2440D2810();
  result = v5;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 88) = v6;
  return result;
}

void sub_2440C735C(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FC8);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  v7 = v1[5];
  v12[4] = v1[4];
  v12[5] = v7;
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  *a1 = sub_2440D2AD0();
  a1[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FD0);
  *v5 = sub_2440D1C20();
  *(v5 + 1) = 0x4008000000000000;
  v5[16] = 0;
  v10 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FD8) + 44)];
  *v10 = sub_2440D1B30();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FE0);
  sub_2440C6100(v12, &v10[*(v11 + 44)]);
  sub_243F5DD50(&qword_27EDC5FE8, &qword_27EDC5FC8);
  sub_24408F1C4();
}

uint64_t sub_2440C74DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v63 = a2;
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1F90);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - v7;
  v8 = sub_2440D07E0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v53 - v13;
  v14 = (*(*a1 + 216))(v12);
  v61 = v15;
  v62 = v14;
  v16 = *a1;
  v55 = *(*a1 + 264);
  v56 = v16 + 264;
  v17 = v55();
  v19 = v18;
  v20 = *(*a1 + 312);
  v21 = v20();
  v22 = (*(*a1 + 288))();
  v23 = sub_243FC04B4(v17, v19, v21, v22 & 1);

  v54 = *(*a1 + 240);
  v25 = (v54)(v24);
  v26 = [v23 stringFromNumber_];

  if (v26)
  {
    v60 = sub_2440D2FB0();
    v28 = v27;
  }

  else
  {
    v60 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = *sub_243FD157C();

  v31 = (v20)(v30);
  if (*(v29 + 16) && (v32 = sub_243F726DC(v31), (v33 & 1) != 0))
  {
    v34 = v57;
    (*(v9 + 16))(v57, *(v29 + 56) + *(v9 + 72) * v32, v8);

    (*(v9 + 56))(v34, 0, 1, v8);
    v35 = v58;
    (*(v9 + 32))(v58, v34, v8);
  }

  else
  {

    v36 = v57;
    (*(v9 + 56))(v57, 1, 1, v8);
    v35 = v58;
    sub_2440D07D0();
    if ((*(v9 + 48))(v36, 1, v8) != 1)
    {
      sub_243F5EED4(v36, &qword_27EDC1F90);
    }
  }

  v37 = v59;
  sub_2440D07B0();
  v38 = MEMORY[0x245D546C0](v35, v37);
  v39 = *(v9 + 8);
  v39(v37, v8);
  v40 = (v39)(v35, v8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((v55)(v40) == 5390675 && v41 == 0xE300000000000000)
  {

    goto LABEL_14;
  }

  v42 = sub_2440D3A10();

  if ((v42 & 1) == 0)
  {
LABEL_16:
    v47 = 0;
    v49 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v43 = sub_243FC04B0();
  v44 = sub_243FC04B4(0x52412E524153, 0xE600000000000000, v43, 0);
  v45 = v54();
  v46 = [v44 stringFromNumber_];

  if (v46)
  {
    v47 = sub_2440D2FB0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

LABEL_17:
  v50 = v61;
  *a4 = v62;
  a4[1] = v50;
  a4[2] = v60;
  a4[3] = v28;
  a4[4] = v47;
  a4[5] = v49;
  v51 = v64;
  a4[6] = v63;
  a4[7] = v51;
}

uint64_t sub_2440C7A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38C0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D837D0];
  *(v0 + 16) = xmmword_2440D5CF0;
  *(v0 + 56) = v1;
  strcpy((v0 + 32), "Cancel Pressed");
  *(v0 + 47) = -18;
  sub_2440D3B00();
}

uint64_t sub_2440C7AD8@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC5FF0) - 8;
  MEMORY[0x28223BE20](v81);
  v68 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v67 = &v64 - v3;
  MEMORY[0x28223BE20](v4);
  v82 = &v64 - v5;
  MEMORY[0x28223BE20](v6);
  v66 = &v64 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  *&v111 = 0x4D20656C706D6153;
  *(&v111 + 1) = 0xEF746E6168637265;
  v112 = 0x37372E343224;
  v113 = 0xE600000000000000;
  v114 = 0;
  v115 = 0;
  v80 = sub_2440C7A34;
  v116 = sub_2440C7A34;
  v117 = 0;
  v74 = sub_2440D1C20();
  LOBYTE(v138[0]) = 1;
  sub_2440C8594(&v111, &v149);
  v124 = v155;
  v125 = v156;
  v126[0] = v157[0];
  *(v126 + 9) = *(v157 + 9);
  v120 = v151;
  v121 = v152;
  v122 = v153;
  v123 = v154;
  v118 = v149;
  v119 = v150;
  v127[6] = v155;
  v127[7] = v156;
  v128[0] = v157[0];
  *(v128 + 9) = *(v157 + 9);
  v127[2] = v151;
  v127[3] = v152;
  v127[4] = v153;
  v127[5] = v154;
  v127[0] = v149;
  v127[1] = v150;
  sub_243F5F574(&v118, &v140, &qword_27EDC5FF8);
  sub_243F5EED4(v127, &qword_27EDC5FF8);
  *(&v96[6] + 7) = v124;
  *(&v96[7] + 7) = v125;
  *(&v96[8] + 7) = v126[0];
  v96[9] = *(v126 + 9);
  *(&v96[2] + 7) = v120;
  *(&v96[3] + 7) = v121;
  *(&v96[4] + 7) = v122;
  *(&v96[5] + 7) = v123;
  *(v96 + 7) = v118;
  *(&v96[1] + 7) = v119;
  LODWORD(v73) = LOBYTE(v138[0]);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6000);
  v14 = *(v79 + 36);
  v65 = *MEMORY[0x277CDF3C0];
  v15 = v65;
  v16 = sub_2440D1410();
  v17 = *(v16 - 8);
  v77 = *(v17 + 104);
  v78 = v17 + 104;
  v18 = v15;
  v19 = v16;
  v64 = v16;
  v77(&v13[v14], v18);
  v20 = *(v17 + 56);
  v75 = v17 + 56;
  v76 = v20;
  v20(&v13[v14], 0, 1, v19);
  v21 = v96[7];
  *(v13 + 113) = v96[6];
  *(v13 + 129) = v21;
  v22 = v96[9];
  *(v13 + 145) = v96[8];
  *(v13 + 161) = v22;
  v23 = v96[3];
  *(v13 + 49) = v96[2];
  *(v13 + 65) = v23;
  v24 = v96[5];
  *(v13 + 81) = v96[4];
  *(v13 + 97) = v24;
  v25 = v96[1];
  *(v13 + 17) = v96[0];
  *v13 = v74;
  *(v13 + 1) = 0;
  v13[16] = v73;
  *(v13 + 33) = v25;
  KeyPath = swift_getKeyPath();
  v27 = &v13[*(v81 + 44)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6008);
  v28 = *(v74 + 28);
  v72 = *MEMORY[0x277CE0258];
  v29 = v72;
  v71 = sub_2440D1C10();
  v30 = *(v71 - 8);
  v70 = *(v30 + 104);
  v73 = v30 + 104;
  v70(v27 + v28, v29, v71);
  *v27 = KeyPath;
  *&v104 = 0xD00000000000002FLL;
  *(&v104 + 1) = 0x80000002440F01A0;
  v105 = 0x37372E343224;
  v106 = 0xE600000000000000;
  v108 = 0;
  v107 = 0;
  v109 = v80;
  v110 = 0;
  v31 = sub_2440D1C20();
  LOBYTE(v84) = 1;
  sub_2440C8594(&v104, &v149);
  v135 = v155;
  v136 = v156;
  v137[0] = v157[0];
  *(v137 + 9) = *(v157 + 9);
  v131 = v151;
  v132 = v152;
  v133 = v153;
  v134 = v154;
  v129 = v149;
  v130 = v150;
  v138[6] = v155;
  v138[7] = v156;
  v139[0] = v157[0];
  *(v139 + 9) = *(v157 + 9);
  v138[2] = v151;
  v138[3] = v152;
  v138[4] = v153;
  v138[5] = v154;
  v138[0] = v149;
  v138[1] = v150;
  sub_243F5F574(&v129, &v140, &qword_27EDC5FF8);
  sub_243F5EED4(v138, &qword_27EDC5FF8);
  *(&v95[6] + 7) = v135;
  *(&v95[7] + 7) = v136;
  *(&v95[8] + 7) = v137[0];
  v95[9] = *(v137 + 9);
  *(&v95[2] + 7) = v131;
  *(&v95[3] + 7) = v132;
  *(&v95[4] + 7) = v133;
  *(&v95[5] + 7) = v134;
  *(v95 + 7) = v129;
  *(&v95[1] + 7) = v130;
  LOBYTE(v27) = v84;
  v32 = *(v79 + 36);
  v33 = v65;
  v34 = v64;
  (v77)(&v10[v32], v65, v64);
  v35 = &v10[v32];
  v36 = v34;
  v76(v35, 0, 1, v34);
  v37 = v95[7];
  *(v10 + 113) = v95[6];
  *(v10 + 129) = v37;
  v38 = v95[9];
  *(v10 + 145) = v95[8];
  *(v10 + 161) = v38;
  v39 = v95[3];
  *(v10 + 49) = v95[2];
  *(v10 + 65) = v39;
  v40 = v95[5];
  *(v10 + 81) = v95[4];
  *(v10 + 97) = v40;
  v41 = v95[1];
  *(v10 + 17) = v95[0];
  *v10 = v31;
  *(v10 + 1) = 0;
  v10[16] = v27;
  *(v10 + 33) = v41;
  v42 = swift_getKeyPath();
  v43 = v81;
  v44 = &v10[*(v81 + 44)];
  v70(v44 + *(v74 + 28), v72, v71);
  *v44 = v42;
  *&v97 = 0xD000000000000014;
  *(&v97 + 1) = 0x80000002440F01D0;
  v98 = 0x37372E343224;
  v99 = 0xE600000000000000;
  v101 = 0;
  v100 = 0;
  v102 = v80;
  v103 = 0;
  v45 = sub_2440D1C20();
  v94 = 1;
  sub_2440C8594(&v97, &v84);
  v146 = v90;
  v147 = v91;
  v148[0] = v92[0];
  *(v148 + 9) = *(v92 + 9);
  v142 = v86;
  v143 = v87;
  v144 = v88;
  v145 = v89;
  v140 = v84;
  v141 = v85;
  v155 = v90;
  v156 = v91;
  v157[0] = v92[0];
  *(v157 + 9) = *(v92 + 9);
  v151 = v86;
  v152 = v87;
  v153 = v88;
  v154 = v89;
  v149 = v84;
  v150 = v85;
  sub_243F5F574(&v140, &v83, &qword_27EDC5FF8);
  sub_243F5EED4(&v149, &qword_27EDC5FF8);
  *(&v93[6] + 7) = v146;
  *(&v93[7] + 7) = v147;
  *(&v93[8] + 7) = v148[0];
  v93[9] = *(v148 + 9);
  *(&v93[2] + 7) = v142;
  *(&v93[3] + 7) = v143;
  *(&v93[4] + 7) = v144;
  *(&v93[5] + 7) = v145;
  *(v93 + 7) = v140;
  *(&v93[1] + 7) = v141;
  v46 = v94;
  v47 = *(v79 + 36);
  v48 = v66;
  (v77)(&v66[v47], v33, v36);
  v49 = v48;
  v76(&v48[v47], 0, 1, v36);
  v50 = v93[7];
  *(v48 + 113) = v93[6];
  *(v48 + 129) = v50;
  v51 = v93[9];
  *(v48 + 145) = v93[8];
  *(v48 + 161) = v51;
  v52 = v93[3];
  *(v48 + 49) = v93[2];
  *(v48 + 65) = v52;
  v53 = v93[5];
  *(v48 + 81) = v93[4];
  *(v48 + 97) = v53;
  v54 = v93[1];
  *(v48 + 17) = v93[0];
  *v48 = v45;
  *(v48 + 1) = 0;
  v48[16] = v46;
  *(v48 + 33) = v54;
  v55 = swift_getKeyPath();
  v56 = &v48[*(v43 + 44)];
  v70(v56 + *(v74 + 28), v72, v71);
  *v56 = v55;
  v57 = v82;
  sub_243F5F574(v13, v82, &qword_27EDC5FF0);
  v58 = v67;
  sub_243F5F574(v10, v67, &qword_27EDC5FF0);
  v59 = v48;
  v60 = v68;
  sub_243F5F574(v59, v68, &qword_27EDC5FF0);
  v61 = v69;
  sub_243F5F574(v57, v69, &qword_27EDC5FF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6010);
  sub_243F5F574(v58, v61 + *(v62 + 48), &qword_27EDC5FF0);
  sub_243F5F574(v60, v61 + *(v62 + 64), &qword_27EDC5FF0);
  sub_243F5EED4(v49, &qword_27EDC5FF0);
  sub_243F5EED4(v10, &qword_27EDC5FF0);
  sub_243F5EED4(v13, &qword_27EDC5FF0);
  sub_243F5EED4(v60, &qword_27EDC5FF0);
  sub_243F5EED4(v58, &qword_27EDC5FF0);
  return sub_243F5EED4(v82, &qword_27EDC5FF0);
}

uint64_t sub_2440C8594@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v45 = *a1;
  v46 = v4;
  v5 = a1[3];
  v47 = a1[2];
  v48 = v5;
  if (sub_243FC0F94())
  {
    v6 = 10.0;
  }

  else
  {
    v6 = 0.0;
  }

  type metadata accessor for CGSize(0);
  v32[0] = 0uLL;
  sub_2440D2810();
  v7 = v24;
  v8 = v25;
  sub_243F5F368(a1, &v24);
  v9 = sub_2440D20A0();
  sub_2440D13D0();
  v43 = 0;
  v20[0] = v45;
  v20[1] = v46;
  v20[2] = v47;
  v20[3] = v48;
  *v21 = v6;
  *&v21[8] = v7;
  *&v21[24] = v8;
  LOBYTE(v22) = v9;
  DWORD1(v22) = *&v44[3];
  *(&v22 + 1) = *v44;
  *(&v22 + 1) = v10;
  *v23 = v11;
  *&v23[8] = v12;
  *&v23[16] = v13;
  v23[24] = 0;
  v28 = *v21;
  v26 = v47;
  v27 = v48;
  v24 = v45;
  v25 = v46;
  *(v31 + 9) = *&v23[9];
  v30 = v22;
  v31[0] = *v23;
  v29 = *&v21[16];
  v19[144] = 1;
  v14 = *v23;
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 128) = v31[1];
  v15 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v15;
  v16 = v29;
  *(a2 + 64) = v28;
  *(a2 + 80) = v16;
  v17 = v25;
  *a2 = v24;
  *(a2 + 16) = v17;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v32[0] = v45;
  v32[1] = v46;
  v32[2] = v47;
  v32[3] = v48;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  *v37 = *v44;
  *&v37[3] = *&v44[3];
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v42 = 0;
  sub_243F5F574(v20, v19, &qword_27EDC6048);
  return sub_243F5EED4(v32, &qword_27EDC6048);
}

uint64_t sub_2440C8794(uint64_t a1)
{
  v2 = sub_2440C8B58();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2440C87E0(uint64_t a1)
{
  v2 = sub_2440C8B58();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_2440C887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_2440C896C()
{
  result = qword_27EDC6018;
  if (!qword_27EDC6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6018);
  }

  return result;
}

uint64_t sub_2440C89DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2440C8A24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2440C8B58()
{
  result = qword_27EDC6040;
  if (!qword_27EDC6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6040);
  }

  return result;
}

uint64_t sub_2440C8BAC()
{

  return swift_deallocObject();
}

unint64_t sub_2440C8C64()
{
  result = qword_27EDC6098;
  if (!qword_27EDC6098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6078);
    sub_2440C8D1C();
    sub_243F5DD50(&qword_27EDC0D38, &qword_27EDC0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6098);
  }

  return result;
}

unint64_t sub_2440C8D1C()
{
  result = qword_27EDC60A0;
  if (!qword_27EDC60A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6088);
    sub_243F7C9F4();
    sub_243F5DD50(&qword_27EDC60A8, &qword_27EDC6090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC60A0);
  }

  return result;
}

uint64_t sub_2440C8DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC60C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2440C8E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6100);
  sub_2440D2820();
  return v1;
}

__n128 sub_2440C8EA0@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6100);
  sub_2440D2840();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_2440C8F08@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_2440D2810();
  result = *&v9;
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = a1 & 1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t sub_2440C8F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v59 = a1;
  v2 = *(a1 + 16);
  sub_2440D1810();
  swift_getTupleTypeMetadata2();
  sub_2440D2C00();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_2440D28A0();
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v53 = &v50 - v4;
  v67 = v5;
  v6 = sub_2440D1810();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6110);
  v66 = v6;
  v8 = sub_2440D1810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v50 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6118);
  v60 = v2;
  sub_2440D1810();
  sub_2440D1810();
  sub_2440D1810();
  swift_getTupleTypeMetadata3();
  sub_2440D2C00();
  swift_getWitnessTable();
  v13 = sub_2440D28A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v20 = sub_2440D1D30();
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x28223BE20](v20);
  v65 = &v50 - v21;
  v22 = sub_243FC0F94();
  if (v22)
  {
    MEMORY[0x28223BE20](v22);
    sub_2440D1B30();
    sub_2440D2890();
    v61 = swift_getWitnessTable();
    v23 = *(v14 + 16);
    v23(v19, v16, v13);
    v24 = *(v14 + 8);
    v24(v16, v13);
    v23(v16, v19, v13);
    v70 = swift_getWitnessTable();
    v71 = MEMORY[0x277CDFC60];
    v25 = swift_getWitnessTable();
    v26 = sub_243F5DD50(&qword_27EDC6128, &qword_27EDC6110);
    v68 = v25;
    v69 = v26;
    swift_getWitnessTable();
    sub_2440C9E78(v16, v13);
    v24(v16, v13);
    v24(v19, v13);
  }

  else
  {
    v51 = v9;
    MEMORY[0x28223BE20](v22);
    v27 = v61;
    sub_2440D1B30();
    v28 = v53;
    sub_2440D2890();
    sub_2440D2B00();
    v60 = MEMORY[0x277CE1138];
    v48 = v67;
    v49 = swift_getWitnessTable();
    v29 = v55;
    sub_2440D2550();
    (*(v54 + 8))(v28, v48);
    v30 = sub_244070BFC();
    v31 = *(v27 + 40);
    sub_2440C8EA0(v88);
    *(&v82 + 1) = v30;
    *&v84[8] = v89;
    *&v82 = 0x4054000000000000;
    LOBYTE(v83) = v31;
    *(&v83 + 1) = *v85;
    DWORD1(v83) = *&v85[3];
    *(&v83 + 1) = v88[0];
    *v84 = v88[1];
    *&v84[24] = v90;
    sub_2440D2B00();
    v80 = v49;
    v81 = MEMORY[0x277CDFC60];
    v32 = v66;
    v33 = swift_getWitnessTable();
    sub_2440CA22C();
    v34 = v58;
    sub_2440D2360();
    v86[2] = *v84;
    v86[3] = *&v84[16];
    v87 = *&v84[32];
    v86[0] = v82;
    v86[1] = v83;
    sub_2440CA280(v86);
    (*(v56 + 8))(v29, v32);
    v35 = sub_243F5DD50(&qword_27EDC6128, &qword_27EDC6110);
    v78 = v33;
    v79 = v35;
    swift_getWitnessTable();
    v36 = v51;
    v37 = *(v51 + 16);
    v38 = v57;
    v37(v57, v34, v8);
    v39 = *(v36 + 8);
    v39(v34, v8);
    v37(v34, v38, v8);
    swift_getWitnessTable();
    sub_2440CA2B0(v34, v13, v8);
    v39(v34, v8);
    v39(v38, v8);
  }

  v40 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x277CDFC60];
  v41 = swift_getWitnessTable();
  v42 = sub_243F5DD50(&qword_27EDC6128, &qword_27EDC6110);
  v74 = v41;
  v75 = v42;
  v43 = swift_getWitnessTable();
  v72 = v40;
  v73 = v43;
  v44 = v63;
  swift_getWitnessTable();
  v45 = v62;
  v46 = v65;
  (*(v62 + 16))(v64, v65, v44);
  return (*(v45 + 8))(v46, v44);
}

uint64_t sub_2440C9994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v32 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D1810();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = sub_2440D1810();
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = sub_2440D1810();
  v36 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v31 = &v30 - v20;
  v33 = *(a1 + 40);
  v34 = v33 ^ 1;
  (*(a1 + 48))(v19);
  sub_2440D2C40();
  sub_2440D23C0();
  (*(v32 + 8))(v8, a2);
  sub_2440D20C0();
  v49[7] = a3;
  v49[8] = MEMORY[0x277CDF690];
  WitnessTable = swift_getWitnessTable();
  sub_2440D25A0();
  (*(v35 + 8))(v11, v9);
  sub_2440D20A0();
  v22 = MEMORY[0x277CDF918];
  v49[5] = WitnessTable;
  v49[6] = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  sub_2440D25A0();
  (*(v37 + 8))(v14, v12);
  v49[3] = v23;
  v49[4] = v22;
  v24 = swift_getWitnessTable();
  v25 = v36;
  v26 = *(v36 + 16);
  v27 = v31;
  v26(v31, v17, v15);
  v28 = *(v25 + 8);
  v28(v17, v15);
  v46 = 0;
  LOBYTE(v14) = v33;
  v47 = v33;
  LOBYTE(WitnessTable) = v34;
  v48 = v34;
  v49[0] = &v46;
  v26(v17, v27, v15);
  v43 = 0;
  v44 = WitnessTable;
  v45 = v14;
  v49[1] = v17;
  v49[2] = &v43;
  v42[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6118);
  v42[1] = v15;
  v42[2] = v42[0];
  v39 = sub_2440CBDA8();
  v40 = v24;
  v41 = v39;
  sub_24404E8AC(v49, 3uLL, v42);
  v28(v27, v15);
  return (v28)(v17, v15);
}

uint64_t sub_2440C9E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D1D10();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_2440D1D20();
}

uint64_t sub_2440C9F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2440D1810();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v22 - v16;
  (*(a1 + 48))(v15);
  v27.origin.x = sub_2440C8E44();
  CGRectGetMidX(v27);
  v28.origin.x = sub_2440C8E44();
  CGRectGetMidY(v28);
  sub_2440D25F0();
  (*(v7 + 8))(v9, a2);
  v26[2] = a3;
  v26[3] = MEMORY[0x277CDFB28];
  WitnessTable = swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v17, v13, v10);
  v20 = *(v11 + 8);
  v20(v13, v10);
  v19(v13, v17, v10);
  v24 = 0;
  v25 = 1;
  v26[0] = v13;
  v26[1] = &v24;
  v23[0] = v10;
  v23[1] = MEMORY[0x277CE1180];
  v22[2] = WitnessTable;
  v22[3] = MEMORY[0x277CE1170];
  sub_24404E8AC(v26, 2uLL, v23);
  v20(v17, v10);
  return (v20)(v13, v10);
}

unint64_t sub_2440CA22C()
{
  result = qword_27EDC6120;
  if (!qword_27EDC6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6120);
  }

  return result;
}

uint64_t sub_2440CA2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2440D1D10();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_2440D1D20();
}

id sub_2440CA3F0(char a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_safeRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v7[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_maxAllowedSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v7[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_cornerRadii];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v7[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_idealSize];
  *v11 = a2;
  v11[1] = a3;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  *&v7[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_corner] = v12;
  v14.receiver = v7;
  v14.super_class = v3;
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2440CA4AC(void *a1)
{
  v3 = sub_2440D2C80();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440D2CA0();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243F5DB84();
  v9 = sub_2440D3530();
  v10 = swift_allocObject();
  v11 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v11;
  v12 = *(v1 + 64);
  v13 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v13;
  *(v10 + 80) = v12;
  *(v10 + 88) = a1;
  aBlock[4] = sub_2440CAE24;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_39;
  v14 = _Block_copy(aBlock);
  sub_2440CAEDC(v1, v20);
  v15 = a1;

  sub_2440D2C90();
  v20[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v8, v5, v14);
  _Block_release(v14);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

id sub_2440CA784()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(type metadata accessor for StatusBarSafeAreaView());
  return sub_2440CAD1C(v3, v1, v2);
}

uint64_t sub_2440CA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440CBD54();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2440CA874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440CBD54();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2440CA8D8()
{
  sub_2440CBD54();
  sub_2440D2020();
  __break(1u);
}

double sub_2440CA900()
{
  v1 = v0 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_safeRect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2440CA94C(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_safeRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

double sub_2440CAA18()
{
  v1 = v0 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_idealSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2440CAA60(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_idealSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2440CAB18()
{
  v1 = v0 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_maxAllowedSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2440CAB64(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_maxAllowedSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_2440CAC28()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_corner;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2440CAC6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_corner;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2440CAD1C(char a1, double a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_safeRect];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v3[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_maxAllowedSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v3[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_cornerRadii];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v3[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_idealSize];
  *v7 = a2;
  v7[1] = a3;
  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_corner] = v8;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for StatusBarSafeAreaView();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2440CADDC()
{

  return swift_deallocObject();
}

uint64_t sub_2440CAE24()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 88)) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6130);
  return sub_2440D2950();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2440CAFB0(void *a1)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1;
  v1 = a1;
  sub_2440CB058(0, v2, 0);
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
}

void sub_2440CB058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v57 - v12;
  v14 = MEMORY[0x277D85000];
  *&v15 = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v3) + 0xA8))(v11));
  if (v17)
  {
    v18 = (*((*v14 & *v3) + 0x90))(v15);
    v20 = v19;
  }

  else
  {
    v18 = *&v15;
    v20 = v16;
  }

  v21 = [v3 view];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 _rectTuckedInBoundingPathCorner_withSize_cornerRadii_minimumPadding_];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v63.origin.x = v24;
  v63.origin.y = v26;
  v63.size.width = v28;
  v63.size.height = v30;
  if (CGRectIsEmpty(v63))
  {
    if (a1 >= 11)
    {
      v31 = sub_243F4DF68();
      sub_243F5F574(v31, v13, &qword_27EDC0A50);
      v32 = sub_2440D11E0();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v13, 1, v32) == 1)
      {
        sub_243F5EED4(v13, &qword_27EDC0A50);
      }

      else
      {
        v49 = sub_2440D11C0();
        v50 = sub_2440D3470();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_243F48000, v49, v50, "getSuitableSafeRect - failure - 10 iterations reached", v51, 2u);
          MEMORY[0x245D58570](v51, -1, -1);
        }

        (*(v33 + 8))(v13, v32);
      }

      return;
    }

    (*((*v14 & *v3) + 0x90))();
    (*((*v14 & *v3) + 0xB0))(v18 * 0.92, v43, 0);
    v60 = 0u;
    v61 = 0u;
    v62 = 1;
    v44 = a1 + 1;
    v45 = &v60;
    goto LABEL_16;
  }

  v59 = v18;
  if ((*(a2 + 32) & 1) == 0)
  {
    v34 = *a2;
    v35 = *(a2 + 8);
    v37 = *(a2 + 16);
    v36 = *(a2 + 24);
    v64.origin.x = v24;
    v64.origin.y = v26;
    v64.size.width = v28;
    v64.size.height = v30;
    MinY = CGRectGetMinY(v64);
    *&v57[1] = v34;
    v58 = MinY;
    v65.origin.x = v34;
    v65.origin.y = v35;
    v65.size.width = v37;
    v65.size.height = v36;
    if (vabdd_f64(v58, CGRectGetMinY(v65)) <= 0.00001)
    {
      if (a3 > 2)
      {
        return;
      }

      v52 = v59 * 0.92;
      (*((*v14 & *v3) + 0x90))();
      (*((*v14 & *v3) + 0xB0))(*&v52, v53, 0);
      v48 = a3 + 1;
      v44 = 0;
      v45 = a2;
LABEL_17:
      sub_2440CB058(v44, v45, v48);
      return;
    }
  }

  v66.origin.x = v24;
  v66.origin.y = v26;
  v66.size.width = v28;
  v66.size.height = v30;
  Width = CGRectGetWidth(v66);
  v67.origin.x = v24;
  v67.origin.y = v26;
  v67.size.width = v28;
  v67.size.height = v30;
  if (Width >= CGRectGetHeight(v67))
  {
    v46 = v59 * 0.92;
    (*((*v14 & *v3) + 0x90))();
    (*((*v14 & *v3) + 0xB0))(*&v46, v47, 0);
    *&v60 = v24;
    *(&v60 + 1) = v26;
    *&v61 = v28;
    *(&v61 + 1) = v30;
    v62 = 0;
    v45 = &v60;
    v44 = 0;
LABEL_16:
    v48 = 0;
    goto LABEL_17;
  }

  v40 = sub_243F4DF68();
  sub_243F5F574(v40, v9, &qword_27EDC0A50);
  v41 = sub_2440D11E0();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v9, 1, v41) == 1)
  {
    sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v54 = sub_2440D11C0();
    v55 = sub_2440D3470();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_243F48000, v54, v55, "getSuitableSafeRect - failure - width < height", v56, 2u);
      MEMORY[0x245D58570](v56, -1, -1);
    }

    (*(v42 + 8))(v9, v41);
  }
}

id sub_2440CB720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusBarSafeAreaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2440CB948()
{
  result = qword_27EDC6180;
  if (!qword_27EDC6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6180);
  }

  return result;
}

uint64_t sub_2440CB9A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2440CBA10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2440CBA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2440CBAB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6118);
  sub_2440D1810();
  sub_2440D1810();
  sub_2440D1810();
  swift_getTupleTypeMetadata3();
  sub_2440D2C00();
  swift_getWitnessTable();
  sub_2440D28A0();
  sub_2440D1810();
  swift_getTupleTypeMetadata2();
  sub_2440D2C00();
  swift_getWitnessTable();
  sub_2440D28A0();
  sub_2440D1810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6110);
  sub_2440D1810();
  sub_2440D1D30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243F5DD50(&qword_27EDC6128, &qword_27EDC6110);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_2440CBD54()
{
  result = qword_27EDC6210;
  if (!qword_27EDC6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6210);
  }

  return result;
}

unint64_t sub_2440CBDA8()
{
  result = qword_27EDC6220;
  if (!qword_27EDC6220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6220);
  }

  return result;
}

uint64_t sub_2440CBE30()
{
  result = sub_2440D2B50();
  qword_27EDC6610 = result;
  return result;
}

uint64_t *sub_2440CBE68()
{
  if (qword_27EDD4680 != -1)
  {
    swift_once();
  }

  return &qword_27EDC6610;
}

uint64_t sub_2440CBEB8(uint64_t a1)
{
  v2 = v1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  result = sub_2440D2F50();
  if (result)
  {
    v14 = sub_2440D3390();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    sub_2440D3360();
    v15 = sub_2440D3350();
    v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 2) = v15;
    *(v17 + 3) = v18;
    *(v17 + 4) = v11;
    *(v17 + 5) = v12;
    (*(v5 + 32))(&v17[v16], v7, a1);
    sub_243F54830(0, 0, v10, &unk_2440E7BC0, v17);
  }

  return result;
}

uint64_t *(*sub_2440CC104(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_2440CC128;
}

uint64_t *sub_2440CC128(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2440CBEB8(*result);
  }

  return result;
}

uint64_t sub_2440CC154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *(a4 - 8);
  (*(v15 + 16))(a5, a1, a4);
  v10 = type metadata accessor for AnimationCompletionModifier();
  v11 = (a5 + *(v10 + 40));
  *v11 = a2;
  v11[1] = a3;
  v12 = *(v15 + 32);
  v13 = a5 + *(v10 + 36);

  return v12(v13, a1, a4);
}

uint64_t sub_2440CC24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_2440D3360();
  v6[5] = sub_2440D3350();
  v8 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_2440CC2E8, v8, v7);
}

uint64_t sub_2440CC2E8()
{
  v1 = *(v0 + 16);

  v2 = (v1 + *(type metadata accessor for AnimationCompletionModifier() + 40));
  (*v2)();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2440CC378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  v4 = sub_2440D1E10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_2440CC414(uint64_t a1, uint64_t a2)
{
  sub_2440CC7EC(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*sub_2440CC480(void *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2440CC104(v4, a2);
  return sub_243FA8774;
}

uint64_t sub_2440CC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_2440CC58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_2440CC638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a6;
  v19 = a7;
  v20 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnimationCompletionModifier();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  (*(v11 + 16))(v13, a1, a5);
  sub_2440CC154(v13, a2, a3, a5, v17);

  MEMORY[0x245D564C0](v17, v20, v14, v21);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2440CC7EC(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_2440CBEB8(a2);
}

unint64_t sub_2440CC8F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_243FA7170();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2440CC978(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_2440CCACC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = a2 - 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t sub_2440CCCA8()
{
  type metadata accessor for AnimationCompletionModifier();
  swift_getWitnessTable();
  sub_2440D1E10();

  return swift_getWitnessTable();
}

uint64_t sub_2440CCD28()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for AnimationCompletionModifier() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(*(v1 - 8) + 8);
  v4(v0 + v3, v1);
  v4(v0 + v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_2440CCE44()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(type metadata accessor for AnimationCompletionModifier() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243F5DE2C;

  return sub_2440CC24C(v6, v7, v8, v0 + v5, v2, v3);
}

uint64_t type metadata accessor for RegisteringDescription()
{
  result = qword_27EDD4920;
  if (!qword_27EDD4920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2440CCF74@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4538);
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = v107 - v2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4540);
  MEMORY[0x28223BE20](v115);
  v114 = v107 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4548);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v117 = v107 - v7;
  v8 = type metadata accessor for RegisteringDescription();
  v132 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v133 = v9;
  v134 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2440D1F60();
  v128 = *(v10 - 8);
  v129 = v10;
  MEMORY[0x28223BE20](v10);
  v125 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v136);
  v13 = v107 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6228);
  MEMORY[0x28223BE20](v121);
  v138 = v107 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6230);
  v122 = *(v15 - 8);
  v123 = v15;
  MEMORY[0x28223BE20](v15);
  v120 = v107 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6238);
  v126 = *(v17 - 8);
  v127 = v17;
  MEMORY[0x28223BE20](v17);
  v124 = v107 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6240);
  MEMORY[0x28223BE20](v131);
  v111 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v107 - v21;
  v130 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  v135 = v1;
  sub_2440D1510();
  v22 = *&v157;
  if (*&v157 > 1.3)
  {
    v22 = 1.3;
  }

  v23 = v22 * 22.0;
  LOBYTE(v141) = 1;
  sub_2440D2970();
  v24 = v157;
  v25 = v158;
  v140 = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6248);
  sub_243F61520();
  sub_2440CE2E4();
  v28 = sub_24404D154();
  sub_24404D15C(v24, *(&v24 + 1), v25, sub_2440CDD50, sub_2440CE2DC, v26, v138, 10.0, v28, v27);
  v29 = *MEMORY[0x277CDF988];
  v30 = sub_2440D1770();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v33 = v31 + 104;
  v32(v13, v29, v30);
  v34 = sub_2440CF180(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  v139 = v13;
  result = sub_2440D2F50();
  if (result)
  {
    v109 = v30;
    v110 = v32;
    v108 = v29;
    v36 = sub_243F5DD50(&qword_27EDC6268, &qword_27EDC6228);
    v107[1] = v33;
    v37 = v36;
    v38 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v40 = v120;
    v39 = v121;
    v41 = v138;
    v42 = v139;
    v107[0] = v34;
    v43 = v136;
    sub_2440D2420();
    sub_243F5EED4(v42, &qword_27EDC0010);
    sub_243F5EED4(v41, &qword_27EDC6228);
    v44 = v125;
    sub_2440D1F40();
    *&v157 = v39;
    *(&v157 + 1) = v43;
    *&v158 = v37;
    v138 = v38;
    *(&v158 + 1) = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v123;
    v47 = v124;
    sub_2440D2490();
    (*(v128 + 8))(v44, v129);
    (*(v122 + 8))(v40, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v48 = v135;
    sub_2440D1E60();
    LOBYTE(v150) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
    *&v141 = v46;
    *(&v141 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    v49 = v137;
    v50 = v127;
    sub_2440D24A0();

    (*(v126 + 8))(v47, v50);
    LOBYTE(v41) = sub_2440D20C0();
    sub_2440D13D0();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6270) + 36);
    *v59 = v41;
    *(v59 + 8) = v52;
    *(v59 + 16) = v54;
    *(v59 + 24) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = 0;
    LOBYTE(v41) = sub_2440D20D0();
    sub_2440707C0();
    sub_2440D13D0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6278) + 36);
    *v68 = v41;
    *(v68 + 8) = v61;
    *(v68 + 16) = v63;
    *(v68 + 24) = v65;
    *(v68 + 32) = v67;
    *(v68 + 40) = 0;
    v69 = v134;
    sub_2440CE944(v48, v134);
    v70 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v71 = swift_allocObject();
    sub_2440CE9AC(v69, v71 + v70);
    v72 = (v49 + *(v131 + 36));
    *v72 = sub_2440CEA10;
    v72[1] = v71;
    v72[2] = 0;
    v72[3] = 0;
    sub_24401FBC0();
    v73 = sub_24401FBD4();
    v75 = v74;
    LOBYTE(v69) = v76;
    sub_2440D21D0();
    v77 = sub_2440D22E0();
    v79 = v78;
    LOBYTE(v48) = v80;

    sub_243F62C68(v73, v75, v69 & 1);

    sub_243FFAEE0();

    v81 = sub_2440D22C0();
    v83 = v82;
    LOBYTE(v39) = v84;
    v86 = v85;

    sub_243F62C68(v77, v79, v48 & 1);

    sub_2440D2B10();
    sub_2440D18E0();
    v166 = v39 & 1;
    KeyPath = swift_getKeyPath();
    *&v141 = v81;
    *(&v141 + 1) = v83;
    LOBYTE(v142) = v39 & 1;
    *(&v142 + 1) = v86;
    v147 = v154;
    v148 = v155;
    v149[0] = v156;
    v143 = v150;
    v144 = v151;
    v145 = v152;
    v146 = v153;
    *&v149[1] = KeyPath;
    BYTE8(v149[1]) = 0;
    v110(v139, v108, v109);
    result = sub_2440D2F50();
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1300);
      sub_2440456C8();
      v88 = v112;
      v89 = v139;
      sub_2440D2420();
      sub_243F5EED4(v89, &qword_27EDC0010);
      v163 = v147;
      v164 = v148;
      v165[0] = v149[0];
      *(v165 + 9) = *(v149 + 9);
      v159 = v143;
      v160 = v144;
      v161 = v145;
      v162 = v146;
      v157 = v141;
      v158 = v142;
      sub_243F5EED4(&v157, &qword_27EDC1300);
      v90 = sub_2440D20D0();
      sub_2440D13D0();
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v99 = v114;
      (*(v113 + 32))(v114, v88, v116);
      v100 = v99 + *(v115 + 36);
      *v100 = v90;
      *(v100 + 8) = v92;
      *(v100 + 16) = v94;
      *(v100 + 24) = v96;
      *(v100 + 32) = v98;
      *(v100 + 40) = 0;
      sub_2440457A0();
      v101 = v117;
      sub_2440D24E0();
      sub_243F5EED4(v99, &qword_27EDC4540);
      v102 = v137;
      v103 = v111;
      sub_243F5F574(v137, v111, &qword_27EDC6240);
      v104 = v118;
      sub_243F5F574(v101, v118, &qword_27EDC4548);
      v105 = v119;
      sub_243F5F574(v103, v119, &qword_27EDC6240);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6280);
      sub_243F5F574(v104, v105 + *(v106 + 48), &qword_27EDC4548);
      sub_243F5EED4(v101, &qword_27EDC4548);
      sub_243F5EED4(v102, &qword_27EDC6240);
      sub_243F5EED4(v104, &qword_27EDC4548);
      return sub_243F5EED4(v103, &qword_27EDC6240);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2440CDD50()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_2440D21B0();
  v5 = sub_2440D22A0();
  v7 = v6;
  v9 = v8;
  sub_243F62C68(v0, v2, v4 & 1);

  sub_2440D21D0();
  v10 = sub_2440D22E0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_243FFAE40();

  v15 = sub_2440D22C0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D24E0();
  sub_243F62C68(v15, v17, v19 & 1);
}

double sub_2440CDF28@<D0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v24 = sub_2440D1B10();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_2440D1F20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0EF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  sub_2440D14F0();
  sub_2440D1F10();
  sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
  sub_2440CF180(&qword_27EDC1030, MEMORY[0x277CDE330]);
  v14 = v22;
  sub_2440D2340();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  sub_2440D1B00();
  v15 = v24;
  (*(v1 + 16))(v23, v5, v24);
  sub_2440CF180(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v16 = v15;
  v17 = sub_2440D1610();
  (*(v1 + 8))(v5, v16);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6260) + 36)) = v17;
  sub_2440D2B00();
  sub_2440D1560();
  v18 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC6248) + 36));
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  result = *&v27;
  v18[2] = v27;
  return result;
}

unint64_t sub_2440CE2E4()
{
  result = qword_27EDC6250;
  if (!qword_27EDC6250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6248);
    sub_2440CE370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6250);
  }

  return result;
}

unint64_t sub_2440CE370()
{
  result = qword_27EDC6258;
  if (!qword_27EDC6258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC6260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0EF8);
    sub_2440D1F20();
    sub_243F5DD50(&qword_27EDC1028, &qword_27EDC0EF8);
    sub_2440CF180(&qword_27EDC1030, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6258);
  }

  return result;
}

uint64_t sub_2440CE4E8(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RegisteringDescription();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_2440CE944(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_2440CE9AC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_2440CF090;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_40;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2440CF180(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_2440CE944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteringDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440CE9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteringDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2440CEA10()
{
  v1 = *(type metadata accessor for RegisteringDescription() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2440CE4E8(v2);
}

uint64_t sub_2440CEA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = type metadata accessor for RegisteringDescription();
  sub_243F620B0(a4, a5 + *(v7 + 20));
  sub_243F6069C();
  sub_2440D1500();
  v8 = (a5 + *(v7 + 28));
  v9 = sub_2440D0DA0();
  v10 = MEMORY[0x277D438F8];
  v8[3] = v9;
  v8[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v8);
  return sub_2440D0D90();
}

uint64_t sub_2440CEB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2440CECA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2440CEDE4()
{
  sub_243F624A0();
  if (v0 <= 0x3F)
  {
    sub_243F624F0();
    if (v1 <= 0x3F)
    {
      sub_243F62560();
      if (v2 <= 0x3F)
      {
        sub_24402E21C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t objectdestroyTm_32()
{
  v1 = type metadata accessor for RegisteringDescription();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_2440CF090()
{
  type metadata accessor for RegisteringDescription();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  return sub_2440D2950();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2440CF180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2440CF1CC(unsigned __int8 a1)
{
  v1 = 0x6E697264646F6F66;
  v2 = 0x726F70736E617274;
  if (a1 != 6)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  v3 = 7239014;
  if (a1 != 4)
  {
    v3 = 0x68746C616568;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6C6576617274;
  if (a1 != 2)
  {
    v4 = 0x7365636976726573;
  }

  if (a1)
  {
    v1 = 0x676E6970706F6873;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2440CF2C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000736BLL;
  v3 = 0x6E697264646F6F66;
  v4 = a1;
  v5 = 0x726F70736E617274;
  v6 = 0xE900000000000074;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7239014;
  if (a1 != 4)
  {
    v8 = 0x68746C616568;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C6576617274;
  v11 = 0xE800000000000000;
  if (a1 != 2)
  {
    v10 = 0x7365636976726573;
    v9 = 0xE800000000000000;
  }

  v12 = 0x676E6970706F6873;
  if (!a1)
  {
    v12 = 0x6E697264646F6F66;
    v11 = 0xEA0000000000736BLL;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE900000000000074;
        if (v13 != 0x726F70736E617274)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6E776F6E6B6E75)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7239014)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x68746C616568)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x6C6576617274)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x7365636976726573;
    }

    else if (a2)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x676E6970706F6873)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_2440D3A10();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_2440CF528()
{
  sub_2440D30B0();
}

uint64_t sub_2440CF654()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_2440CF78C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2440CFB0C();
  *a1 = result;
  return result;
}

void sub_2440CF7BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736BLL;
  v4 = 0x6E697264646F6F66;
  v5 = 0xE900000000000074;
  v6 = 0x726F70736E617274;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7239014;
  if (v2 != 4)
  {
    v8 = 0x68746C616568;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C6576617274;
  if (v2 != 2)
  {
    v10 = 0x7365636976726573;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E6970706F6873;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2440CF8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (a1 - 5951) > 0xFFFFFFFFFFFFFFF4 || (a1 - 5963) < 0x25 && ((0x1FE00000FFuLL >> (a1 - 75)))
  {
    return 1;
  }

  if ((a1 - 4000) > 0xFFFFFFFFFFFFFC17)
  {
    return 2;
  }

  if (qword_27EDD4930 != -1)
  {
    swift_once();
  }

  v6 = qword_27EDC6618;
  if (*(qword_27EDC6618 + 16))
  {
    v7 = sub_243F726DC(a1);
    if (v8)
    {
      return *(*(v6 + 56) + v7);
    }
  }

  v9 = sub_243F4DF28();
  sub_243F4DE64(v9, v4);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v12 = sub_2440D11C0();
    v13 = sub_2440D3470();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_243F48000, v12, v13, "Category not found - unknown", v14, 2u);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    (*(v11 + 8))(v4, v10);
  }

  return 7;
}

unint64_t sub_2440CFAE4()
{
  result = sub_2440CFC4C(&unk_28577EAF8);
  qword_27EDC6618 = result;
  return result;
}

uint64_t sub_2440CFB0C()
{
  v0 = sub_2440D3970();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2440CFB5C()
{
  result = qword_27EDC6298;
  if (!qword_27EDC6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC6298);
  }

  return result;
}

unint64_t sub_2440CFBB4()
{
  result = qword_27EDC62A0;
  if (!qword_27EDC62A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC62A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC62A0);
  }

  return result;
}

unint64_t sub_2440CFC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC62B0);
    v3 = sub_2440D3910();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_243F726DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27EDD4B58 == -1)
  {
    if (qword_27EDD4B60)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27EDD4B60)
    {
      return _availability_version_check();
    }
  }

  if (qword_27EDD4B50 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27EDD4B44 > a3)
      {
        return 1;
      }

      if (dword_27EDD4B44 >= a3)
      {
        return dword_27EDD4B48 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27EDD4B60;
  if (qword_27EDD4B60)
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
      qword_27EDD4B60 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x245D57DA0](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27EDD4B44, &dword_27EDD4B48);
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

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}