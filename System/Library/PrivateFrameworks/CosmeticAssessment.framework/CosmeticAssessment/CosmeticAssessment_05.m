uint64_t sub_247CA45D4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_247CA475C;
  }

  else
  {
    v5 = sub_247CA46E8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247CA46E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA475C()
{
  v18 = v0;
  v1 = *(v0 + 240);

  v2 = v1;
  v3 = sub_247D1F468();
  v4 = sub_247D20038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    v10 = sub_247C35234(v6);
    v12 = sub_247CB03B4(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_247C1F000, v3, v4, "Failed to send %{public}s to peer device: %@", v7, 0x16u);
    sub_247C27100(v8, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C1B9080](v9, -1, -1);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_247CA4948(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_247D1FEA8();
  v2[27] = sub_247D1FE98();
  v4 = sub_247D1FE38();
  v2[28] = v4;
  v2[29] = v3;

  return MEMORY[0x2822009F8](sub_247CA49E0, v4, v3);
}

uint64_t sub_247CA49E0()
{
  v1 = *(v0 + 200);
  v2 = v1 + *(_s5StateVMa() + 40);
  v3 = *(v2 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  if (*(v3 + 73) == 1)
  {
    *(v0 + 240) = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_log;
    v4 = sub_247D1F468();
    v5 = sub_247D20058();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_247C1F000, v4, v5, "Cancelling test suite polling.", v6, 2u);
      MEMORY[0x24C1B9080](v6, -1, -1);
    }

    if (qword_27EE625B8 != -1)
    {
      swift_once();
    }

    v7 = qword_27EE72D00;
    v8 = *(qword_27EE72D00 + 16);

    [v8 lock];
    sub_247CAF8F8(v7, &_s34DiagnosticTestSuiteDataProviderKeyON, (v0 + 56));
    [v8 unlock];
    sub_247C3D044((v0 + 56), v0 + 16);

    sub_247C2BD10(v0 + 16, v0 + 136, &qword_27EE63698);
    sub_247C3D044((v0 + 136), v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v11 = off_2859DAFF0;
    v12 = type metadata accessor for TestSuiteDataProvider();
    v14 = (v11 + *v11);
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_247CA4D20;

    return (v14)(v12, &off_2859DAFD8);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_247CA4D20()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_247CA4E40, v3, v2);
}

uint64_t sub_247CA4E40()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = sub_247D1F468();
  v2 = sub_247D20058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_247C1F000, v1, v2, "Cancelled test suite polling.", v3, 2u);
    MEMORY[0x24C1B9080](v3, -1, -1);
  }

  sub_247C27100(v0 + 16, &qword_27EE63698);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_247CA4F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s5StateVMa();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_247D1FEA8();
  sub_247D1FE98();
  v11 = MEMORY[0x277D85700];
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_247D1FEC8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_247CB3A20(a3, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateVMa);

  v13 = sub_247D1FE98();
  v14 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v11;
  v15[4] = a2;
  sub_247CB385C(v7, v15 + v14, _s5StateVMa);
  sub_247CD0B2C(0, 0, v10, &unk_247D25CE8, v15);
}

uint64_t sub_247CA51A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v5[8] = swift_task_alloc();
  sub_247D1FEA8();
  v5[9] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_247CA5278, v7, v6);
}

uint64_t sub_247CA5278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 64);
    sub_247CB3A20(*(v0 + 56), v2, _s5StateVMa);
    v3 = _s5StateVMa();
    (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_247CA53F0;
    v5 = *(v0 + 64);

    return sub_247C9457C(v5, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_247CA53F0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);

  sub_247C27100(v3, &qword_27EE62BA0);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_247CA555C, v5, v4);
}

uint64_t sub_247CA555C()
{

  **(v0 + 40) = *(v0 + 96) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA55D8(uint64_t a1, void *a2)
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for FlowResponse.Step(0) + 20));
  swift_beginAccess();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 8);

  if (v6 == v9(v7, v8) && v5 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_247D20538();
  }

  return v12 & 1;
}

uint64_t sub_247CA5730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_247D1FEA8();
  v5[9] = sub_247D1FE98();
  v7 = sub_247D1FE38();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_247CA57C8, v7, v6);
}

uint64_t sub_247CA57C8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_247CA5880;

  return sub_247CD1644(8, v0 + 16);
}

uint64_t sub_247CA5880()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_247CA59F8;
  }

  else
  {
    v5 = sub_247CA5994;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247CA5994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA59F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA5A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 184) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  *(v8 + 128) = swift_task_alloc();
  sub_247D1FEA8();
  *(v8 + 136) = sub_247D1FE98();
  v10 = sub_247D1FE38();
  *(v8 + 144) = v10;
  *(v8 + 152) = v9;

  return MEMORY[0x2822009F8](sub_247CA5B34, v10, v9);
}

uint64_t sub_247CA5B34()
{
  if (*(v0 + 184) == 10)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    sub_247CB3A20(*(v0 + 112), v2, _s5StateVMa);
    v3 = _s5StateVMa();
    (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
    v4 = *v1;
    v5 = v1[1];
    *(v0 + 48) = *(v1 + 4);
    *(v0 + 16) = v4;
    *(v0 + 32) = v5;
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_247CA5F0C;
    v7 = *(v0 + 128);

    return sub_247CA6138(v7, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 104);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    *(v0 + 56) = *v9;
    *(v0 + 72) = v11;
    *(v0 + 88) = v10;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = sub_247CA5CE8;
    v13 = *(v0 + 184);

    return sub_247CD1644(v13, v0 + 56);
  }
}

uint64_t sub_247CA5CE8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_247CA60CC;
  }

  else
  {
    v5 = sub_247CA5DFC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247CA5DFC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_247CB3A20(*(v0 + 112), v2, _s5StateVMa);
  v3 = _s5StateVMa();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = *v1;
  v5 = v1[1];
  *(v0 + 48) = *(v1 + 4);
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_247CA5F0C;
  v7 = *(v0 + 128);

  return sub_247CA6138(v7, v0 + 16);
}

uint64_t sub_247CA5F0C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  sub_247C27100(v2, &qword_27EE62BA0);
  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_247CA6060, v4, v3);
}

uint64_t sub_247CA6060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA60CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA6138(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  *(v3 + 96) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v3 + 104) = *a2;
  *(v3 + 120) = v5;
  *(v3 + 136) = *(a2 + 32);
  sub_247D1FEA8();
  *(v3 + 144) = sub_247D1FE98();
  v7 = sub_247D1FE38();
  *(v3 + 152) = v7;
  *(v3 + 160) = v6;

  return MEMORY[0x2822009F8](sub_247CA6220, v7, v6);
}

uint64_t sub_247CA6220()
{
  v25 = v0;
  v1 = *(v0 + 120);
  if (*(v0 + 104) == 9 && (*(v0 + 112) == 0xD00000000000002ALL ? (v2 = 0x8000000247D2D8D0 == v1) : (v2 = 0), v2 || (sub_247D20538() & 1) != 0))
  {
    if (!*(v0 + 128) && *(v0 + 136) == 0xE000000000000000)
    {

LABEL_15:

      v8 = *(v0 + 88) + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        v10 = *(v0 + 136);
        v11 = *(v0 + 120);
        v12 = *(v0 + 96);
        v13 = *(v0 + 80);
        v23[0] = *(v0 + 104);
        v23[1] = v11;
        v24 = v10;
        sub_247C2BD10(v13, v12, &qword_27EE62BA0);
        v14 = _s5StateVMa();
        v15 = (*(*(v14 - 8) + 48))(v12, 1, v14);
        v16 = *(v0 + 96);
        if (v15 == 1)
        {
          sub_247C27100(*(v0 + 96), &qword_27EE62BA0);
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v19 = (v16 + *(v14 + 28));
          v17 = *v19;
          v18 = v19[1];

          sub_247CB3A88(v16, _s5StateVMa);
        }

        v20 = *(v0 + 88);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v20, v23, v17, v18, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      v22 = *(v0 + 8);

      return v22();
    }

    v7 = sub_247D20538();

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_247CA6560;

  return sub_247CD1644(8, v0 + 16);
}

uint64_t sub_247CA6560()
{
  v2 = *v1;
  v2[22] = v0;

  sub_247C3EF94(v2[2], v2[3], v2[4]);
  v3 = v2[19];
  v4 = v2[20];
  if (v0)
  {
    v5 = sub_247CA68A8;
  }

  else
  {
    v5 = sub_247CA66D8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247CA66D8()
{
  v19 = v0;

  v1 = *(v0 + 88) + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    v3 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v17[0] = *(v0 + 104);
    v17[1] = v4;
    v18 = v3;
    sub_247C2BD10(v6, v5, &qword_27EE62BA0);
    v7 = _s5StateVMa();
    v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
    v9 = *(v0 + 96);
    if (v8 == 1)
    {
      sub_247C27100(*(v0 + 96), &qword_27EE62BA0);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v12 = (v9 + *(v7 + 28));
      v10 = *v12;
      v11 = v12[1];

      sub_247CB3A88(v9, _s5StateVMa);
    }

    v13 = *(v0 + 88);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v13, v17, v10, v11, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_247CA68A8()
{
  v29 = v0;
  v1 = *(v0 + 176);

  v2 = v1;
  v3 = sub_247D1F468();
  v4 = sub_247D20038();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_247C1F000, v3, v4, "Failed to send communicate assessment completion to peer device: %@", v7, 0xCu);
    sub_247C27100(v8, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v8, -1, -1);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 88) + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = *(v0 + 136);
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    v16 = *(v0 + 80);
    v27[0] = *(v0 + 104);
    v27[1] = v14;
    v28 = v13;
    sub_247C2BD10(v16, v15, &qword_27EE62BA0);
    v17 = _s5StateVMa();
    v18 = (*(*(v17 - 8) + 48))(v15, 1, v17);
    v19 = *(v0 + 96);
    if (v18 == 1)
    {
      sub_247C27100(*(v0 + 96), &qword_27EE62BA0);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = (v19 + *(v17 + 28));
      v20 = *v22;
      v21 = v22[1];

      sub_247CB3A88(v19, _s5StateVMa);
    }

    v23 = *(v0 + 88);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(v23, v27, v20, v21, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_247CA6B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 104) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  *(v7 + 40) = _s15DiagnosticStyleOMa(0);
  *(v7 + 48) = swift_task_alloc();
  *(v7 + 56) = sub_247D1FEA8();
  *(v7 + 64) = sub_247D1FE98();
  *(v7 + 72) = sub_247D1FE98();
  v9 = sub_247D1FE38();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x2822009F8](sub_247CA6C60, v9, v8);
}

uint64_t sub_247CA6C60()
{
  sub_247CB3A20(*(v0 + 24), *(v0 + 48), _s5StateVMa);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_247CA6D34;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 104);

  return sub_247C8C6E8(v2, v3, v4);
}

uint64_t sub_247CA6D34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_247CA6E8C, v4, v3);
}

uint64_t sub_247CA6E8C()
{

  v1 = sub_247D1FE38();

  return MEMORY[0x2822009F8](sub_247CA6F10, v1, v0);
}

uint64_t sub_247CA6F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA6F7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 56) = a5;
  *(v7 + 136) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  *(v7 + 80) = swift_task_alloc();
  sub_247D1FEA8();
  *(v7 + 88) = sub_247D1FE98();
  v9 = sub_247D1FE38();
  *(v7 + 96) = v9;
  *(v7 + 104) = v8;

  return MEMORY[0x2822009F8](sub_247CA7054, v9, v8);
}

uint64_t sub_247CA7054()
{
  if (*(v0 + 136) == 10)
  {
    v1 = *(v0 + 80);
    sub_247CB3A20(*(v0 + 72), v1, _s5StateVMa);
    v2 = _s5StateVMa();
    (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_247CA7400;
    v4 = *(v0 + 80);

    return sub_247C9457C(v4, 0);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v6 + 32);
    v8 = *(v6 + 16);
    *(v0 + 16) = *v6;
    *(v0 + 32) = v8;
    *(v0 + 48) = v7;
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_247CA71F0;
    v10 = *(v0 + 136);

    return sub_247CD1644(v10, v0 + 16);
  }
}

uint64_t sub_247CA71F0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_247CA75C0;
  }

  else
  {
    v5 = sub_247CA7304;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_247CA7304()
{
  v1 = v0[10];
  sub_247CB3A20(v0[9], v1, _s5StateVMa);
  v2 = _s5StateVMa();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_247CA7400;
  v4 = v0[10];

  return sub_247C9457C(v4, 0);
}

uint64_t sub_247CA7400()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_247C27100(v2, &qword_27EE62BA0);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_247CA7554, v4, v3);
}

uint64_t sub_247CA7554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA75C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA762C(uint64_t a1, void *a2)
{
  v3 = sub_247CD0E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D24040;
  *(v4 + 32) = a2;
  v5 = type metadata accessor for SystemCrossfadeTransitionAnimator();
  v6 = a2;
  sub_247C75AD8(v4, v5, &off_2859DC9A0);
}

uint64_t sub_247CA76D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[657] = a6;
  v6[656] = a5;
  v6[655] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63690);
  v6[658] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE631E0);
  v6[659] = swift_task_alloc();
  v6[660] = swift_task_alloc();
  v7 = sub_247D1EF48();
  v6[661] = v7;
  v6[662] = *(v7 - 8);
  v6[663] = swift_task_alloc();
  v6[664] = swift_task_alloc();
  v6[665] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0);
  v6[666] = swift_task_alloc();
  v6[667] = swift_task_alloc();
  v6[668] = swift_task_alloc();
  v6[669] = sub_247D1FEA8();
  v6[670] = sub_247D1FE98();
  v9 = sub_247D1FE38();
  v6[671] = v9;
  v6[672] = v8;

  return MEMORY[0x2822009F8](sub_247CA78B8, v9, v8);
}

uint64_t sub_247CA78B8()
{
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE72D00;
  *(v0 + 5384) = qword_27EE72D00;
  v2 = v1[2];
  swift_retain_n();
  [v2 lock];
  sub_247CAF8F8(v1, &_s34DiagnosticTestSuiteDataProviderKeyON, (v0 + 4856));
  *(v0 + 5392) = 0;
  [v2 unlock];
  sub_247C3D044((v0 + 4856), v0 + 4816);

  sub_247C2BD10(v0 + 4816, v0 + 4416, &qword_27EE63698);
  sub_247C3D044((v0 + 4416), v0 + 4376);
  __swift_project_boxed_opaque_existential_1((v0 + 4376), *(v0 + 4400));
  v3 = off_2859DAFF0;
  v4 = type metadata accessor for TestSuiteDataProvider();
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 5400) = v5;
  *v5 = v0;
  v5[1] = sub_247CA7B18;

  return (v7)(v4, &off_2859DAFD8);
}

uint64_t sub_247CA7B18()
{
  v1 = *v0;

  v2 = *(v1 + 5376);
  v3 = *(v1 + 5368);

  return MEMORY[0x2822009F8](sub_247CA7C38, v3, v2);
}

id sub_247CA7C38()
{
  v185 = v0;
  v1 = v0;
  v177 = (v0 + 577);
  v179 = v0 + 59;
  v2 = v0[655];
  __swift_destroy_boxed_opaque_existential_1((v1 + 547));
  v3 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_tasks;
  swift_beginAccess();
  v182 = v2;
  v180 = v3;
  v4 = *(v2 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = -1;
  v9 = -1 << *(*(v2 + v3) + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v5;
  v11 = (63 - v9) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
LABEL_10:

    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v10 &= v10 - 1;
    sub_247D1FF28();
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  v14 = v1[674];
  v15 = v1[673];

  *(v2 + v180) = MEMORY[0x277D84F98];

  v16 = v15[2];
  [v16 lock];
  sub_247CAD9C4(v15, &_s19AnalyticsManagerKeyON, v1 + 562);
  if (v14)
  {

    return [v16 unlock];
  }

  v18 = v1[668];
  v19 = v1[656];
  [v16 unlock];
  sub_247C3D044(v1 + 281, (v1 + 557));

  sub_247C2BD10(v19, v18, &qword_27EE62BA0);
  v20 = _s5StateVMa();
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v18, 1, v20);
  v23 = v1[668];
  v181 = v20;
  if (v22 == 1)
  {
    sub_247C27100(v23, &qword_27EE62BA0);
    sub_247C40E50((v1 + 398));
    v24 = v1 + 302;
    v25 = v1 + 398;
  }

  else
  {
    sub_247C88620(__src);
    sub_247CB3A88(v23, _s5StateVMa);
    memcpy(v1 + 206, __src, 0x180uLL);
    nullsub_1(v1 + 206);
    v24 = v1 + 302;
    v25 = v1 + 206;
  }

  memcpy(v24, v25, 0x180uLL);
  v26 = v1[662];
  v27 = v1[661];
  v28 = v1[660];
  v29 = v1[655];
  v30 = OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_flowInitiatedTimeStamp;
  swift_beginAccess();
  sub_247C2BD10(v29 + v30, v28, &unk_27EE631E0);
  v173 = v30;
  v175 = v29;
  v172 = *(v26 + 48);
  v183 = v21;
  if (v172(v28, 1, v27) == 1)
  {
    sub_247C27100(v1[660], &unk_27EE631E0);
  }

  else
  {
    (*(v1[662] + 32))(v1[665], v1[660], v1[661]);
    sub_247C2BD10((v1 + 557), (v1 + 582), &unk_27EE631F0);
    sub_247C3D044(v1 + 291, (v1 + 587));
    v167 = v1[591];
    v169 = v1[590];
    __swift_project_boxed_opaque_existential_1(v1 + 587, v169);
    memcpy(v1 + 494, v1 + 302, 0x180uLL);
    if (sub_247C40E90((v1 + 494)) == 1)
    {
      v138 = 0;
      v134 = 0;
      v136 = 0;
      v156 = 0;
      v164 = 0;
      v162 = 0;
      v160 = 0u;
      v140 = 0u;
      v142 = 0u;
      v144 = 0u;
      v146 = 0u;
      v148 = 0u;
      v150 = 0u;
      v154 = 0u;
      v130 = xmmword_247D23E90;
      v132 = 2;
      v158 = 0u;
      v152 = 0u;
      v31 = 1;
      v122 = 0u;
      v124 = 0u;
      v32 = 1;
      v33 = 1;
      v128 = 2;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v126 = 0u;
    }

    else
    {
      v164 = v1[540];
      v162 = v1[541];
      v150 = *(v1 + 267);
      v152 = *(v1 + 269);
      v154 = *(v1 + 266);
      v146 = *(v1 + 265);
      v148 = *(v1 + 264);
      v142 = *(v1 + 263);
      v144 = *(v1 + 262);
      v140 = *(v1 + 261);
      v158 = *(v1 + 268);
      v160 = *(v1 + 260);
      v128 = *(v179 + 3681);
      v132 = *(v179 + 3680);
      v130 = *(v179 + 229);
      v156 = v1[513];
      v33 = *(v179 + 3640);
      v124 = *(v1 + 250);
      v126 = *(v179 + 228);
      v136 = v1[498];
      v32 = *(v179 + 3520);
      v134 = v1[496];
      v31 = *(v179 + 3504);
      v121 = *(v1 + 252);
      v122 = *(v1 + 251);
      v118 = *(v1 + 255);
      v119 = *(v1 + 254);
      v120 = *(v1 + 253);
      v138 = v1[512];
    }

    v34 = v1[665];
    v35 = v1[664];
    v36 = v1[662];
    v37 = v1;
    v38 = v1[661];
    LOBYTE(__src[0]) = v33;
    sub_247C2BD10((v37 + 302), (v37 + 254), &unk_27EE63030);
    sub_247D1EF18();
    sub_247D1EE88();
    v40 = v39;
    v41 = *(v36 + 8);
    v41(v35, v38);
    v37[104] = v40;
    *(v37 + 840) = 0;
    v37[106] = v134;
    *(v37 + 856) = v31;
    v37[108] = v136;
    *(v37 + 872) = v32;
    *(v179 + 51) = v124;
    *(v179 + 53) = v122;
    *(v179 + 55) = v121;
    *(v179 + 57) = v120;
    *(v179 + 59) = v119;
    *(v179 + 61) = v118;
    v37[122] = v138;
    v37[123] = v156;
    *(v37 + 992) = v33;
    *(v179 + 33) = v126;
    *(v179 + 34) = v130;
    *(v37 + 1032) = v132;
    *(v37 + 1033) = v128;
    *(v179 + 71) = v160;
    *(v179 + 73) = v140;
    *(v179 + 75) = v144;
    *(v179 + 77) = v142;
    *(v179 + 79) = v148;
    *(v179 + 81) = v146;
    *(v179 + 83) = v154;
    *(v179 + 85) = v150;
    *(v179 + 87) = v158;
    *(v179 + 89) = v152;
    v37[150] = v164;
    v37[151] = v162;
    *(v37 + 1216) = 1;
    strcpy(v37 + 1224, "flowDuration");
    *(v37 + 1237) = 0;
    *(v37 + 619) = -5120;
    memcpy(v37 + 2, v37 + 104, 0x198uLL);
    (*(v167 + 8))(v37 + 2, v169);
    sub_247C318F8((v37 + 104));
    v42 = v38;
    v1 = v37;
    v41(v34, v42);
    __swift_destroy_boxed_opaque_existential_1((v37 + 587));
    v21 = v183;
  }

  v43 = v1[657];
  if (v43)
  {
    v44 = v43;
    v45 = sub_247D1F468();
    v46 = sub_247D20038();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      __src[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_247D205B8();
      v51 = v1;
      v52 = sub_247CB03B4(v49, v50, __src);

      *(v47 + 4) = v52;
      v1 = v51;
      _os_log_impl(&dword_247C1F000, v45, v46, "Delegating error results: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x24C1B9080](v48, -1, -1);
      MEMORY[0x24C1B9080](v47, -1, -1);
    }

    else
    {
    }

    v1[651] = v43;
    v53 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
    v21 = v183;
    if (swift_dynamicCast())
    {
      v54 = 0xD000000000000018;
      sub_247C27100((v1 + 302), &unk_27EE63030);
      v55 = v1[648];
      v1[676] = v55;
      v56 = *(v177 + 576);
      sub_247CB0868();
      v57 = swift_allocError();
      *v58 = v55;
      *(v58 + 8) = v56;
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          v91 = "v2/ast2-tula/file/status";
          v54 = 0xD000000000000019;
        }

        else
        {
          v59 = "v2/ast2-tula/file/status";
LABEL_45:
          v91 = v59 - 32;
        }
      }

      else
      {
        if (!v56)
        {
          v59 = "/v1/ast2-tula/teststatus";
          goto LABEL_45;
        }

        v91 = "v1/ast2-tula/session/init";
        v54 = 0xD000000000000020;
      }

      v92 = v1[656];
      v93 = v55;
      sub_247C3FF5C(v92, v57, v54, (v91 | 0x8000000000000000));

      swift_getErrorValue();
      sub_247CC30AC(v1[631], (v1 + 542));
      v94 = *(v1 + 272);
      v95 = v1[546];
      *(v1 + 311) = *(v1 + 271);
      *(v1 + 312) = v94;
      v1[626] = v95;
      v96 = swift_task_alloc();
      v1[677] = v96;
      *v96 = v1;
      v96[1] = sub_247CA91C0;
      v83 = v1[656];
      v72 = (v1 + 622);
LABEL_47:
      v71 = v83;
LABEL_48:

      return sub_247CA6138(v71, v72);
    }
  }

  v60 = v1[667];
  sub_247C2BD10(v1[656], v60, &qword_27EE62BA0);
  v61 = v21(v60, 1, v181);
  v62 = v1[667];
  if (v61 == 1)
  {
    v63 = v1[658];
    sub_247C27100((v1 + 302), &unk_27EE63030);
    sub_247C27100(v62, &qword_27EE62BA0);
    v64 = type metadata accessor for FlowResponse(0);
    (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
    sub_247C27100(v63, &qword_27EE63690);
    if (v43)
    {
LABEL_35:
      v65 = v1[657];
      v66 = v1[656];
      v67 = v65;
      sub_247C3FF5C(v66, v65, 0, 0);
      swift_getErrorValue();
      sub_247CC30AC(v1[640], (v1 + 572));
      v68 = *(v1 + 287);
      v69 = v1[576];
      *v177 = *(v1 + 286);
      *(v1 + 579) = v68;
      v1[581] = v69;
      v70 = swift_task_alloc();
      v1[679] = v70;
      *v70 = v1;
      v70[1] = sub_247CA96D8;
      v71 = v1[656];
      v72 = v177;
      goto LABEL_48;
    }

LABEL_38:
    v79 = v1[656];
    sub_247C250C8();
    v80 = swift_allocError();
    *v81 = xmmword_247D22C60;
    *(v81 + 16) = 0x8000000247D2D810;
    *(v81 + 24) = 0;
    *(v81 + 32) = 0xE000000000000000;
    sub_247C3FF5C(v79, v80, 0, 0);

    v1[567] = 3;
    v1[568] = 0xD000000000000014;
    v1[569] = 0x8000000247D2D810;
    v1[570] = 0;
    v1[571] = 0xE000000000000000;
    v82 = swift_task_alloc();
    v1[680] = v82;
    *v82 = v1;
    v82[1] = sub_247CA9834;
    v83 = v1[656];
    v72 = (v1 + 567);
    goto LABEL_47;
  }

  v73 = v1[666];
  v74 = v1[658];
  v75 = v1[656];
  sub_247CB3A20(v1[667], v74, type metadata accessor for FlowResponse);
  sub_247CB3A88(v62, _s5StateVMa);
  v76 = type metadata accessor for FlowResponse(0);
  (*(*(v76 - 8) + 56))(v74, 0, 1, v76);
  sub_247C27100(v74, &qword_27EE63690);
  sub_247C2BD10(v75, v73, &qword_27EE62BA0);
  v77 = v21(v73, 1, v181);
  v78 = v1[666];
  if (v77 == 1)
  {
    sub_247C27100((v1 + 302), &unk_27EE63030);
    sub_247C27100(v78, &qword_27EE62BA0);
    if (v43)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  v84 = (v78 + *(v181 + 28));
  v10 = *v84;
  v11 = v84[1];

  sub_247CB3A88(v78, _s5StateVMa);
  if (v43)
  {
    v85 = v1[657];
    v86 = v1[656];
    v87 = v85;
    sub_247C27100((v1 + 302), &unk_27EE63030);

    sub_247C3FF5C(v86, v85, 0, 0);
    swift_getErrorValue();
    sub_247CC30AC(v1[637], (v1 + 612));
    v88 = *(v1 + 307);
    v89 = v1[616];
    *(v177 + 320) = *(v1 + 306);
    *(v1 + 619) = v88;
    v1[621] = v89;
    v90 = swift_task_alloc();
    v1[678] = v90;
    *v90 = v1;
    v90[1] = sub_247CA944C;
    v83 = v1[656];
    v72 = v177 + 320;
    goto LABEL_47;
  }

  sub_247C2BD10((v1 + 557), (v1 + 597), &unk_27EE631F0);
  sub_247C3D044((v1 + 597), (v1 + 592));
  v6 = v1[595];
  v182 = v1[596];
  __swift_project_boxed_opaque_existential_1(v1 + 592, v6);
  memcpy(v1 + 350, v1 + 302, 0x180uLL);
  if (sub_247C40E90((v1 + 350)) == 1)
  {
    v149 = 0;
    v147 = 0;
    v151 = 0;
    v170 = 0;
    v176 = 0;
    v178 = 0;
    v171 = 0u;
    v153 = 0u;
    v155 = 0u;
    v157 = 0u;
    v159 = 0u;
    v161 = 0u;
    v165 = 0u;
    v168 = 0u;
    v143 = xmmword_247D23E90;
    v145 = 2;
    v163 = 0u;
    v166 = 0u;
    v97 = 1;
    v133 = 0u;
    v135 = 0u;
    v98 = 1;
    v99 = 1;
    v141 = 2;
    v127 = 0u;
    v129 = 0u;
    v123 = 0u;
    v125 = 0u;
    v137 = 0u;
    v100 = v179;
    goto LABEL_55;
  }

LABEL_54:
  v176 = v1[397];
  v178 = v1[396];
  v166 = *(v1 + 197);
  v168 = *(v1 + 195);
  v163 = *(v1 + 196);
  v165 = *(v1 + 194);
  v159 = *(v1 + 193);
  v161 = *(v1 + 192);
  v155 = *(v1 + 190);
  v157 = *(v1 + 191);
  v153 = *(v1 + 189);
  v171 = *(v1 + 188);
  v141 = *(v1 + 3001);
  v145 = *(v1 + 3000);
  v100 = v179;
  v143 = *(v179 + 157);
  v170 = v1[369];
  v99 = *(v179 + 2488);
  v133 = *(v1 + 179);
  v135 = *(v1 + 178);
  v137 = *(v179 + 156);
  v151 = v1[354];
  v98 = *(v179 + 2368);
  v147 = v1[352];
  v97 = *(v179 + 2352);
  v127 = *(v1 + 180);
  v129 = *(v1 + 181);
  v123 = *(v1 + 182);
  v125 = *(v1 + 183);
  v149 = v1[368];
LABEL_55:
  v101 = v1[661];
  v102 = v1[659];
  v103 = v97;
  v131 = v98;
  v139 = v99;
  LOBYTE(__src[0]) = v99;
  sub_247C2BD10(v175 + v173, v102, &unk_27EE631E0);
  v104 = v172(v102, 1, v101);
  v105 = 0;
  if (v104 != 1)
  {
    v174 = v6;
    (*(v1[662] + 32))(v1[663], v1[659], v1[661]);
    sub_247C2BD10((v1 + 302), (v1 + 446), &unk_27EE63030);
    sub_247D1FE98();
    sub_247D1FE38();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v106 = v1[664];
    v107 = v1[663];
    v108 = v1[662];
    v109 = v1[661];
    sub_247D1EF18();
    sub_247D1EE88();
    v105 = v110;
    v111 = *(v108 + 8);
    v111(v106, v109);
    v111(v107, v109);

    sub_247C27100((v1 + 302), &unk_27EE63030);
    v100 = v179;
    v6 = v174;
  }

  v112 = v1[655];
  v1[53] = v105;
  *(v1 + 432) = v104 == 1;
  v1[55] = v147;
  *(v1 + 448) = v103;
  v1[57] = v151;
  *(v1 + 464) = v131;
  *v100 = v135;
  v100[1] = v133;
  v100[2] = v127;
  v100[3] = v129;
  v100[4] = v123;
  v100[5] = v125;
  v1[71] = v149;
  v1[72] = v170;
  *(v1 + 584) = v139;
  *(v100 + 120) = v137;
  *(v100 + 136) = v143;
  *(v1 + 624) = v145;
  *(v1 + 625) = v141;
  v100[10] = v171;
  v100[11] = v153;
  v100[12] = v155;
  v100[13] = v157;
  v100[14] = v161;
  v100[15] = v159;
  v100[16] = v165;
  v100[17] = v168;
  v100[18] = v163;
  v100[19] = v166;
  v1[99] = v178;
  v1[100] = v176;
  *(v1 + 808) = 1;
  v1[102] = 0x6C466873696E6966;
  v1[103] = 0xEA0000000000776FLL;
  memcpy(v1 + 155, v1 + 53, 0x198uLL);
  (*(v182 + 8))(v1 + 155, v6);
  sub_247C318F8((v1 + 53));
  __swift_destroy_boxed_opaque_existential_1((v1 + 592));
  v113 = v112 + OBJC_IVAR____TtC18CosmeticAssessment30DeviceAssessmentViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v114 = v1[655];
    v115 = *(v113 + 8);
    ObjectType = swift_getObjectType();
    (*(v115 + 8))(v114, v10, v11, ObjectType, v115);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_247C27100((v1 + 557), &unk_27EE631F0);
  sub_247C27100((v1 + 602), &qword_27EE63698);

  v117 = v1[1];

  return v117();
}

uint64_t sub_247CA91C0()
{
  v1 = *v0;

  v2 = *(v1 + 5376);
  v3 = *(v1 + 5368);

  return MEMORY[0x2822009F8](sub_247CA931C, v3, v2);
}

uint64_t sub_247CA931C()
{
  v1 = *(v0 + 5408);

  sub_247C27100(v0 + 4456, &unk_27EE631F0);
  sub_247C27100(v0 + 4816, &qword_27EE63698);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CA944C()
{
  v1 = *v0;

  v2 = *(v1 + 5376);
  v3 = *(v1 + 5368);

  return MEMORY[0x2822009F8](sub_247CA95A8, v3, v2);
}

uint64_t sub_247CA95A8()
{
  v1 = *(v0 + 5256);

  sub_247C27100(v0 + 4456, &unk_27EE631F0);
  sub_247C27100(v0 + 4816, &qword_27EE63698);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CA96D8()
{
  v1 = *v0;

  v2 = *(v1 + 5376);
  v3 = *(v1 + 5368);

  return MEMORY[0x2822009F8](sub_247CB4760, v3, v2);
}

uint64_t sub_247CA9834()
{
  v1 = *v0;

  v2 = *(v1 + 5376);
  v3 = *(v1 + 5368);

  return MEMORY[0x2822009F8](sub_247CA9990, v3, v2);
}

uint64_t sub_247CA9990()
{

  sub_247C27100(v0 + 4456, &unk_27EE631F0);
  sub_247C27100(v0 + 4816, &qword_27EE63698);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247CA9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 3232) = v5;
  *(v6 + 3721) = a5;
  *(v6 + 3224) = a4;
  *(v6 + 3216) = a3;
  *(v6 + 3208) = a2;
  *(v6 + 3200) = a1;
  *(v6 + 3240) = _s15DiagnosticStyleOMa(0);
  *(v6 + 3248) = swift_task_alloc();
  *(v6 + 3256) = *(type metadata accessor for FlowResponse.Step.HiddenAction(0) - 8);
  *(v6 + 3264) = swift_task_alloc();
  *(v6 + 3272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  *(v6 + 3280) = swift_task_alloc();
  v7 = sub_247D1EF48();
  *(v6 + 3288) = v7;
  *(v6 + 3296) = *(v7 - 8);
  *(v6 + 3304) = swift_task_alloc();
  *(v6 + 3312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63290);
  *(v6 + 3320) = swift_task_alloc();
  *(v6 + 3328) = swift_task_alloc();
  v8 = type metadata accessor for FileUploadToken(0);
  *(v6 + 3336) = v8;
  *(v6 + 3344) = *(v8 - 8);
  *(v6 + 3352) = swift_task_alloc();
  *(v6 + 3360) = swift_task_alloc();
  v9 = type metadata accessor for RecordedImage.UploadRequestData(0);
  *(v6 + 3368) = v9;
  *(v6 + 3376) = *(v9 - 8);
  *(v6 + 3384) = swift_task_alloc();
  *(v6 + 3392) = swift_task_alloc();
  *(v6 + 3400) = swift_task_alloc();
  *(v6 + 3408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62DE8);
  *(v6 + 3416) = swift_task_alloc();
  *(v6 + 3424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63778);
  *(v6 + 3432) = swift_task_alloc();
  *(v6 + 3440) = swift_task_alloc();
  *(v6 + 3448) = swift_task_alloc();
  *(v6 + 3456) = swift_task_alloc();
  v10 = type metadata accessor for ImageUploadTicket();
  *(v6 + 3464) = v10;
  *(v6 + 3472) = *(v10 - 8);
  *(v6 + 3480) = swift_task_alloc();
  *(v6 + 3488) = swift_task_alloc();
  *(v6 + 3496) = sub_247D1FEA8();
  *(v6 + 3504) = sub_247D1FE98();
  v12 = sub_247D1FE38();
  *(v6 + 3512) = v12;
  *(v6 + 3520) = v11;

  return MEMORY[0x2822009F8](sub_247CA9ED0, v12, v11);
}

uint64_t sub_247CA9ED0()
{
  v1 = *(v0 + 3216);
  v2 = *(v0 + 3208);
  v3 = swift_task_alloc();
  v3[2] = v1;

  v4 = sub_247C94360(sub_247CB1BF4, v3, v2);

  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = &OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData;
  if (v5)
  {
    v7 = 0;
    v8 = *(v0 + 3472);
    v103 = *(v0 + 3464);
    v97 = *(v0 + 3360);
    v121 = v4 & 0xC000000000000001;
    v119 = v4 & 0xFFFFFFFFFFFFFF8;
    v113 = (*(v0 + 3376) + 48);
    v107 = (*(v0 + 3344) + 48);
    v9 = MEMORY[0x277D84F90];
    v95 = *(v0 + 3336);
    v105 = v8;
    v109 = (v8 + 48);
    v111 = (v8 + 56);
    v115 = v5;
    v117 = v4;
    while (1)
    {
      if (v121)
      {
        v11 = MEMORY[0x24C1B8190](v7, v4);
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v7 >= *(v119 + 16))
        {
          goto LABEL_57;
        }

        v11 = *(v4 + 8 * v7 + 32);

        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          v5 = sub_247D203B8();
          goto LABEL_3;
        }
      }

      v13 = *(v0 + 3424);
      v14 = *(v0 + 3368);
      sub_247C2BD10(v11 + *v6, v13, &qword_27EE62DE8);
      v123 = v12;
      if ((*v113)(v13, 1, v14) == 1)
      {
        v15 = v9;
        v16 = v6;
        (*v111)(*(v0 + 3448), 1, 1, *(v0 + 3464));
      }

      else
      {
        v17 = *(v0 + 3408);
        v18 = *(v0 + 3400);
        v19 = *(v0 + 3336);
        v20 = *(v0 + 3328);
        sub_247CB385C(*(v0 + 3424), v17, type metadata accessor for RecordedImage.UploadRequestData);
        sub_247CB3A20(v17, v18, type metadata accessor for RecordedImage.UploadRequestData);
        v21 = OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep;
        v22 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
        sub_247C2BD10(v11 + *(v22 + 36) + v21, v20, &qword_27EE63290);
        v23 = *v107;
        v24 = (*v107)(v20, 1, v19);
        v25 = *(v0 + 3408);
        v26 = *(v0 + 3360);
        if (v24 == 1)
        {
          v99 = *(v0 + 3328);
          v101 = *(v0 + 3336);
          *v26 = 0;
          v97[1] = 0xE000000000000000;
          v97[2] = 0;
          v97[3] = 0xE000000000000000;
          v97[4] = 0;
          v97[5] = 0xE000000000000000;
          v97[6] = 0;
          v97[7] = 0xE000000000000000;
          v15 = v9;

          sub_247D1F188();
          sub_247CB3A88(v25, type metadata accessor for RecordedImage.UploadRequestData);
          v27 = *(v95 + 36);
          v28 = type metadata accessor for Metadata(0);
          (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
          v29 = v23(v99, 1, v101);
          v5 = v115;
          if (v29 != 1)
          {
            sub_247C27100(*(v0 + 3328), &qword_27EE63290);
          }
        }

        else
        {
          v15 = v9;
          v30 = *(v0 + 3328);

          sub_247CB3A88(v25, type metadata accessor for RecordedImage.UploadRequestData);
          sub_247CB385C(v30, v26, type metadata accessor for FileUploadToken);
          v5 = v115;
        }

        v31 = *(v0 + 3464);
        v32 = *(v0 + 3448);
        v33 = *(v0 + 3360);
        sub_247CB385C(*(v0 + 3400), v32, type metadata accessor for RecordedImage.UploadRequestData);
        sub_247CB385C(v33, v32 + *(v103 + 20), type metadata accessor for FileUploadToken);
        (*v111)(v32, 0, 1, v31);
        v16 = &OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData;
      }

      v34 = *(v0 + 3464);
      v35 = *(v0 + 3456);
      sub_247CB1C14(*(v0 + 3448), v35, &qword_27EE63778);

      if ((*v109)(v35, 1, v34) == 1)
      {
        sub_247C27100(*(v0 + 3456), &qword_27EE63778);
        v6 = v16;
        v9 = v15;
        v10 = v123;
        v4 = v117;
      }

      else
      {
        sub_247CB385C(*(v0 + 3456), *(v0 + 3488), type metadata accessor for ImageUploadTicket);
        v9 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_247C80600(0, v15[2] + 1, 1, v15);
        }

        v6 = v16;
        v10 = v123;
        v37 = v9[2];
        v36 = v9[3];
        v4 = v117;
        if (v37 >= v36 >> 1)
        {
          v9 = sub_247C80600(v36 > 1, v37 + 1, 1, v9);
        }

        v38 = *(v0 + 3488);
        v9[2] = v37 + 1;
        sub_247CB385C(v38, v9 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v37, type metadata accessor for ImageUploadTicket);
        v5 = v115;
      }

      ++v7;
      if (v10 == v5)
      {
        goto LABEL_27;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_27:
  *(v0 + 3528) = v9;
  v39 = *(v0 + 3208);

  v40 = v39;
  v93 = v39 >> 62;
  if (v39 >> 62)
  {
    v74 = sub_247D203B8();
    v40 = v39;
    v122 = v74;
  }

  else
  {
    v122 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v9;
  v94 = v40;
  if (v122)
  {
    v41 = 0;
    v4 = v40 & 0xC000000000000001;
    v42 = *(v0 + 3472);
    v106 = *(v0 + 3464);
    v98 = *(v0 + 3352);
    v120 = v40 & 0xFFFFFFFFFFFFFF8;
    v112 = *(v0 + 3208) + 32;
    v118 = (*(v0 + 3376) + 48);
    v104 = (*(v0 + 3344) + 48);
    v124 = MEMORY[0x277D84F90];
    v96 = *(v0 + 3336);
    v108 = v42;
    v110 = v40 & 0xC000000000000001;
    v114 = (v42 + 56);
    v116 = (v42 + 48);
    while (1)
    {
      if (v4)
      {
        v43 = MEMORY[0x24C1B8190](v41, *(v0 + 3208));
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v41 >= *(v120 + 16))
        {
          goto LABEL_59;
        }

        v43 = *(v112 + 8 * v41);

        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_58;
        }
      }

      v45 = *(v0 + 3416);
      v46 = *(v0 + 3368);
      sub_247C2BD10(v43 + *v6, v45, &qword_27EE62DE8);
      if ((*v118)(v45, 1, v46) == 1)
      {
        (*v114)(*(v0 + 3432), 1, 1, *(v0 + 3464));
      }

      else
      {
        v47 = *(v0 + 3392);
        v48 = *(v0 + 3384);
        v49 = *(v0 + 3336);
        v50 = *(v0 + 3320);
        sub_247CB385C(*(v0 + 3416), v47, type metadata accessor for RecordedImage.UploadRequestData);
        sub_247CB3A20(v47, v48, type metadata accessor for RecordedImage.UploadRequestData);
        v51 = OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep;
        v52 = type metadata accessor for FlowResponse.Step.CosmeticCapture(0);
        sub_247C2BD10(v43 + *(v52 + 36) + v51, v50, &qword_27EE63290);
        v53 = *v104;
        v54 = (*v104)(v50, 1, v49);
        v55 = *(v0 + 3392);
        v56 = *(v0 + 3352);
        if (v54 == 1)
        {
          v100 = *(v0 + 3320);
          v102 = *(v0 + 3336);
          *v56 = 0;
          v98[1] = 0xE000000000000000;
          v98[2] = 0;
          v98[3] = 0xE000000000000000;
          v98[4] = 0;
          v98[5] = 0xE000000000000000;
          v98[6] = 0;
          v98[7] = 0xE000000000000000;

          sub_247D1F188();
          sub_247CB3A88(v55, type metadata accessor for RecordedImage.UploadRequestData);
          v57 = *(v96 + 36);
          v58 = type metadata accessor for Metadata(0);
          (*(*(v58 - 8) + 56))(&v56[v57], 1, 1, v58);
          if (v53(v100, 1, v102) != 1)
          {
            sub_247C27100(*(v0 + 3320), &qword_27EE63290);
          }
        }

        else
        {
          v59 = *(v0 + 3320);

          sub_247CB3A88(v55, type metadata accessor for RecordedImage.UploadRequestData);
          sub_247CB385C(v59, v56, type metadata accessor for FileUploadToken);
        }

        v60 = *(v0 + 3464);
        v61 = *(v0 + 3432);
        v62 = *(v0 + 3352);
        sub_247CB385C(*(v0 + 3384), v61, type metadata accessor for RecordedImage.UploadRequestData);
        sub_247CB385C(v62, v61 + *(v106 + 20), type metadata accessor for FileUploadToken);
        (*v114)(v61, 0, 1, v60);
        v6 = &OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_uploadRequestData;
        v4 = v110;
      }

      v63 = *(v0 + 3464);
      v64 = *(v0 + 3440);
      sub_247CB1C14(*(v0 + 3432), v64, &qword_27EE63778);

      if ((*v116)(v64, 1, v63) == 1)
      {
        sub_247C27100(*(v0 + 3440), &qword_27EE63778);
      }

      else
      {
        sub_247CB385C(*(v0 + 3440), *(v0 + 3480), type metadata accessor for ImageUploadTicket);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_247C80600(0, v124[2] + 1, 1, v124);
        }

        v66 = v124[2];
        v65 = v124[3];
        if (v66 >= v65 >> 1)
        {
          v124 = sub_247C80600(v65 > 1, v66 + 1, 1, v124);
        }

        v67 = *(v0 + 3480);
        v124[2] = v66 + 1;
        sub_247CB385C(v67, v124 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v66, type metadata accessor for ImageUploadTicket);
      }

      ++v41;
      if (v44 == v122)
      {
        goto LABEL_53;
      }
    }
  }

  v124 = MEMORY[0x277D84F90];
LABEL_53:
  *(v0 + 3536) = v124;
  v68 = *(v0 + 3216);
  sub_247D1EF38();
  v69 = *(sub_247C88D88() + 16);

  v70 = _s5StateVMa();
  *(v0 + 3544) = v70;
  v71 = *(v68 + *(v70 + 20));
  if (v71 >> 62)
  {
    if (sub_247D203B8() == v69)
    {
      goto LABEL_55;
    }

    v72 = sub_247D203B8();
  }

  else
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72 == v69)
    {
LABEL_55:
      v73 = 1;
      goto LABEL_69;
    }
  }

  if (v93)
  {
    result = sub_247D203B8();
  }

  else
  {
    result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v72, result))
  {
    __break(1u);
    return result;
  }

  v73 = v72 + result == v69;
LABEL_69:
  *(v0 + 3722) = v73;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v76 = qword_27EE72D00;
  v77 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v77 lock];
  sub_247CAD9C4(v76, &_s19AnalyticsManagerKeyON, (v0 + 2536));
  [v77 unlock];
  sub_247C3D044((v0 + 2536), v0 + 2496);

  v78 = v76[2];
  [v78 lock];
  sub_247CAEF98(v76, &_s26ImageUploadDataProviderKeyON, (v0 + 2616));
  [v78 unlock];
  sub_247C3D044((v0 + 2616), v0 + 2576);

  v79 = v76[2];
  [v79 lock];
  sub_247CAF5D8(v76, &_s18ImageValidationKeyON, (v0 + 2696));
  v80 = *(v0 + 3216);
  [v79 unlock];
  sub_247C3D044((v0 + 2696), v0 + 2656);

  sub_247C2BD10(v0 + 2576, v0 + 2776, &unk_27EE63020);
  sub_247C3D044((v0 + 2776), v0 + 2736);
  __swift_project_boxed_opaque_existential_1((v0 + 2736), *(v0 + 2760));
  v81 = *(v80 + 48);
  if (*(v81 + 16) && (v82 = sub_247CCFDA8(0xD00000000000001DLL, 0x8000000247D30750), (v83 & 1) != 0))
  {
    v84 = (*(v81 + 56) + 16 * v82);
    v85 = *v84;
    v86 = v84[1];

    v87 = sub_247CECA84(v85, v86);
    v89 = v88;

    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = v87;
    }
  }

  else
  {
    v90 = 3;
  }

  v91 = swift_task_alloc();
  *(v0 + 3552) = v91;
  *v91 = v0;
  v91[1] = sub_247CAAD6C;

  return sub_247C8414C(v92, v90);
}

uint64_t sub_247CAAD6C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[453] = a1;

    v5 = v4[440];
    v6 = v4[439];
    v7 = sub_247CAC32C;
  }

  else
  {

    v5 = v4[440];
    v6 = v4[439];
    v7 = sub_247CAAEB8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_247CAAEB8()
{
  v1 = *(v0 + 3544);
  v2 = *(v0 + 3216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2736);
  sub_247C2BD10(v0 + 2656, v0 + 2976, &qword_27EE63780);
  sub_247C3D044((v0 + 2976), v0 + 3016);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 3016), *(v0 + 3040));
  v4 = (v2 + *(v1 + 28));
  *(v0 + 3560) = *v4;
  *(v0 + 3568) = v4[1];
  sub_247C58164(0xD000000000000014, 0x8000000247D30790);
  *(v0 + 3576) = v5;
  *(v0 + 3584) = *(v2 + *(v1 + 44));
  v6 = *v3;
  *(v0 + 3592) = *v3;

  return MEMORY[0x2822009F8](sub_247CAAFB4, v6, 0);
}

uint64_t sub_247CAAFB4()
{
  v1 = *(v0 + 3592);
  v19 = *(v0 + 3584);
  v2 = *(v0 + 3576);
  v3 = *(v0 + 3568);
  v4 = *(v0 + 3560);
  v5 = *(v0 + 3536);
  v6 = *(v0 + 3280);
  v7 = *(v0 + 3721);
  v8 = *(v0 + 3224);
  v9 = sub_247D1FEC8();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = sub_247CB3B08(&qword_27EE63788, type metadata accessor for FileStatusProvider);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v1;
  *(v11 + 40) = v4;
  *(v11 + 48) = v3;
  *(v11 + 56) = v5;
  *(v11 + 64) = v8;
  *(v11 + 72) = v7;
  *(v11 + 80) = v19;
  *(v11 + 88) = v2;
  swift_retain_n();

  v12 = sub_247C2D57C(0, 0, v6, &unk_247D25D70, v11);
  *(v0 + 3600) = v12;
  v13 = swift_task_alloc();
  *(v0 + 3608) = v13;
  v14 = type metadata accessor for FileStatusResponse(0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
  *v13 = v0;
  v13[1] = sub_247CAB1D4;
  v16 = *(v0 + 3200);
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v16, v12, v14, v15, v17);
}

uint64_t sub_247CAB1D4()
{
  v2 = *v1;
  *(*v1 + 3616) = v0;

  v3 = *(v2 + 3592);
  if (v0)
  {
    v4 = sub_247CAB868;
  }

  else
  {
    v4 = sub_247CAB300;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_247CAB300()
{

  v1 = *(v0 + 3520);
  v2 = *(v0 + 3512);

  return MEMORY[0x2822009F8](sub_247CAB368, v2, v1);
}

uint64_t sub_247CAB368()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3016);
  v1 = sub_247D1F468();
  v2 = sub_247D20058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_247C1F000, v1, v2, "Finished uploading images.", v3, 2u);
    MEMORY[0x24C1B9080](v3, -1, -1);
  }

  v4 = *(v0 + 3536);
  v5 = *(v0 + 3296);
  v14 = *(v0 + 3288);
  v15 = *(v0 + 3312);
  v18 = *(v0 + 3304);
  v6 = *(v0 + 3224);

  sub_247C2BD10(v0 + 2496, v0 + 2896, &unk_27EE631F0);
  sub_247C3D044((v0 + 2896), v0 + 2936);
  v16 = *(v0 + 2968);
  v17 = *(v0 + 2960);
  __swift_project_boxed_opaque_existential_1((v0 + 2936), v17);
  sub_247C88620(v0 + 2032);
  *v19 = *(v0 + 2041);
  *&v19[3] = *(v0 + 2044);
  v27 = *(v0 + 2169);
  v28 = *(v0 + 2185);
  v29 = *(v0 + 2201);
  v30 = *(v0 + 2217);
  v24 = *(v0 + 2121);
  v25 = *(v0 + 2137);
  v26 = *(v0 + 2153);
  v20 = *(v0 + 2057);
  v21 = *(v0 + 2073);
  v22 = *(v0 + 2089);
  v23 = *(v0 + 2105);
  v39 = *(v0 + 2362);
  v40 = *(v0 + 2378);
  *v41 = *(v0 + 2394);
  *&v41[14] = *(v0 + 2408);
  v35 = *(v0 + 2298);
  v36 = *(v0 + 2314);
  v37 = *(v0 + 2330);
  v38 = *(v0 + 2346);
  v31 = *(v0 + 2234);
  v32 = *(v0 + 2250);
  v33 = *(v0 + 2266);
  v34 = *(v0 + 2282);
  if (*(v6 + 16))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v0 + 2233);
  }

  v8 = *(v4 + 16);

  sub_247D1EF18();
  sub_247D1EE88();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v18, v14);
  *(v0 + 16) = v10;
  *(v0 + 153) = v27;
  *(v0 + 169) = v28;
  *(v0 + 185) = v29;
  *(v0 + 201) = v30;
  *(v0 + 89) = v23;
  *(v0 + 105) = v24;
  *(v0 + 121) = v25;
  *(v0 + 137) = v26;
  *(v0 + 41) = v20;
  *(v0 + 57) = v21;
  *(v0 + 73) = v22;
  *(v0 + 362) = v40;
  *(v0 + 378) = *v41;
  *(v0 + 298) = v36;
  *(v0 + 314) = v37;
  *(v0 + 330) = v38;
  *(v0 + 346) = v39;
  *(v0 + 218) = v31;
  *(v0 + 234) = v32;
  *(v0 + 250) = v33;
  *(v0 + 24) = 0;
  *(v0 + 25) = *v19;
  *(v0 + 28) = *&v19[3];
  *(v0 + 32) = v8;
  *(v0 + 40) = 0;
  *(v0 + 217) = v7;
  *(v0 + 392) = *&v41[14];
  *(v0 + 266) = v34;
  *(v0 + 282) = v35;
  *(v0 + 400) = 1;
  *(v0 + 408) = 0xD000000000000014;
  *(v0 + 416) = 0x8000000247D307B0;
  memcpy((v0 + 424), (v0 + 16), 0x198uLL);
  (*(v16 + 8))(v0 + 424, v17);
  sub_247C318F8(v0 + 16);
  sub_247C27100(v0 + 2656, &qword_27EE63780);
  sub_247C27100(v0 + 2576, &unk_27EE63020);
  sub_247C27100(v0 + 2496, &unk_27EE631F0);
  v11(v15, v14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2936);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_247CAB868()
{

  v1 = *(v0 + 3520);
  v2 = *(v0 + 3512);

  return MEMORY[0x2822009F8](sub_247CAB8D0, v2, v1);
}

uint64_t sub_247CAB8D0()
{
  v56 = (v0 + 3168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3016);
  v1 = *(v0 + 3616);
  *(v0 + 3632) = v1;
  v2 = v1;
  v3 = sub_247D1F468();
  v4 = sub_247D20038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_247C1F000, v3, v4, "Failed to upload images: %{public}@", v5, 0xCu);
    sub_247C27100(v6, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v6, -1, -1);
    MEMORY[0x24C1B9080](v5, -1, -1);
  }

  v59 = *(v0 + 3722);
  v9 = *(v0 + 3536);
  v10 = *(v0 + 3304);
  v11 = *(v0 + 3296);
  v55 = *(v0 + 3288);
  v12 = *(v0 + 3224);

  sub_247C2BD10(v0 + 2496, v0 + 2856, &unk_27EE631F0);
  sub_247C3D044((v0 + 2856), v0 + 2816);
  v57 = *(v0 + 2848);
  v58 = *(v0 + 2840);
  __swift_project_boxed_opaque_existential_1((v0 + 2816), v58);
  sub_247C88620(v0 + 1648);
  *(v0 + 3736) = *(v0 + 1656);
  *v60 = *(v0 + 1657);
  *&v60[3] = *(v0 + 1660);
  *(v0 + 3728) = *(v0 + 1672);
  *v61 = *(v0 + 1673);
  *&v61[3] = *(v0 + 1676);
  *(v0 + 3720) = *(v0 + 1688);
  *&v62[3] = *(v0 + 1692);
  *v62 = *(v0 + 1689);
  v68 = *(v0 + 1792);
  v69 = *(v0 + 1808);
  *v70 = *(v0 + 1824);
  *&v70[9] = *(v0 + 1833);
  v65 = *(v0 + 1744);
  v66 = *(v0 + 1760);
  v67 = *(v0 + 1776);
  v63 = *(v0 + 1712);
  v64 = *(v0 + 1728);
  v13 = *(v0 + 1849);
  v79 = *(v0 + 1978);
  v80 = *(v0 + 1994);
  *v81 = *(v0 + 2010);
  *&v81[14] = *(v0 + 2024);
  v75 = *(v0 + 1914);
  v76 = *(v0 + 1930);
  v77 = *(v0 + 1946);
  v78 = *(v0 + 1962);
  v71 = *(v0 + 1850);
  v72 = *(v0 + 1866);
  v73 = *(v0 + 1882);
  v74 = *(v0 + 1898);
  if (*(v12 + 16))
  {
    v13 = 0;
  }

  v54 = v13;
  *v56 = *(v0 + 1696);
  v14 = *(v9 + 16);

  *(v0 + 3728) = 0;
  swift_getErrorValue();
  v15 = sub_247D205B8();
  v17 = v16;
  sub_247C27100(v56, &unk_27EE63200);
  swift_getErrorValue();
  v18 = sub_247CC595C(*(v0 + 3152));
  *(v0 + 3720) = 0;
  sub_247D1EF18();
  sub_247D1EE88();
  v20 = v19;
  v21 = *(v11 + 8);
  *(v0 + 3640) = v21;
  *(v0 + 3648) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v10, v55);
  *(v0 + 3736) = 0;
  v22 = *(v0 + 3728);
  v23 = *(v0 + 3720);
  *(v0 + 832) = v20;
  *(v0 + 840) = 0;
  *(v0 + 841) = *v60;
  *(v0 + 844) = *&v60[3];
  *(v0 + 848) = v14;
  *(v0 + 856) = v22;
  *(v0 + 857) = *v61;
  *(v0 + 860) = *&v61[3];
  *(v0 + 864) = v18;
  *(v0 + 872) = v23;
  *(v0 + 876) = *&v62[3];
  *(v0 + 873) = *v62;
  *(v0 + 880) = v15;
  *(v0 + 888) = v17;
  *(v0 + 928) = v65;
  *(v0 + 944) = v66;
  *(v0 + 1017) = *&v70[9];
  *(v0 + 992) = v69;
  *(v0 + 1008) = *v70;
  *(v0 + 960) = v67;
  *(v0 + 976) = v68;
  *(v0 + 896) = v63;
  *(v0 + 912) = v64;
  *(v0 + 1033) = v54;
  *(v0 + 1162) = v79;
  *(v0 + 1178) = v80;
  *(v0 + 1194) = *v81;
  *(v0 + 1208) = *&v81[14];
  *(v0 + 1098) = v75;
  *(v0 + 1114) = v76;
  *(v0 + 1130) = v77;
  *(v0 + 1146) = v78;
  *(v0 + 1034) = v71;
  *(v0 + 1050) = v72;
  *(v0 + 1066) = v73;
  *(v0 + 1082) = v74;
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD00000000000001BLL;
  *(v0 + 1232) = 0x8000000247D30770;
  memcpy((v0 + 1240), (v0 + 832), 0x198uLL);
  (*(v57 + 8))(v0 + 1240, v58);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2816);
  if (v59 == 1)
  {
    v24 = *(v0 + 3216) + *(*(v0 + 3544) + 40);
    v25 = *(v24 + *(type metadata accessor for FlowResponse.Step(0) + 20));
    swift_beginAccess();
    v26 = *(v25 + 40);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v0 + 3264);
      v29 = *(v0 + 3256);
      v30 = v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80));

      v34 = 0;
      while (1)
      {
        if (v34 >= *(v26 + 16))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v31, v32, v33);
        }

        sub_247CB3A20(v30 + *(v29 + 72) * v34, *(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v35 = *(v28 + 16);
        if (*(v28 + 24) != 1)
        {
          break;
        }

        if (v35 <= 2)
        {

LABEL_9:
          v31 = sub_247CB3A88(*(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);
          goto LABEL_10;
        }

        if (v35 != 3 && v35 != 5)
        {

LABEL_31:
          v46 = *(v0 + 3272);
          v47 = *(v0 + 3264);
          v48 = *(v0 + 3216);

          sub_247CB385C(v47, v46, type metadata accessor for FlowResponse.Step.HiddenAction);
          *(v0 + 2456) = 0u;
          *(v0 + 2472) = 0u;
          *(v0 + 2488) = 0;
          sub_247C5B128(v48);
          sub_247CB3A88(v46, type metadata accessor for FlowResponse.Step.HiddenAction);
          goto LABEL_32;
        }

        sub_247CB3A88(*(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);

LABEL_10:
        if (v27 == ++v34)
        {

          goto LABEL_22;
        }
      }

      if (v35 == 4)
      {
        goto LABEL_31;
      }

      goto LABEL_9;
    }

LABEL_22:
    v39 = sub_247D1F468();
    v40 = sub_247D20038();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_247C1F000, v39, v40, "Missing hidden action (issue found) for image validation failure.", v41, 2u);
      MEMORY[0x24C1B9080](v41, -1, -1);
    }

    v42 = *(v0 + 3544);
    v43 = *(v0 + 3216);

    sub_247C2BD10(v43 + *(v42 + 48), v0 + 3056, &qword_27EE62FB0);
    sub_247C3D044((v0 + 3056), v0 + 2416);
    v44 = *__swift_project_boxed_opaque_existential_1((v0 + 2416), *(v0 + 2440));
    LOBYTE(v42) = sub_247C7A980();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2416);
    if (v42)
    {

LABEL_32:
      v49 = *(v0 + 3640);
      v50 = *(v0 + 3312);
      v51 = *(v0 + 3288);
      swift_willThrow();
      sub_247C27100(v0 + 2656, &qword_27EE63780);
      sub_247C27100(v0 + 2576, &unk_27EE63020);
      sub_247C27100(v0 + 2496, &unk_27EE631F0);
      v49(v50, v51);

      v52 = *(v0 + 8);

      return v52();
    }

    *(v0 + 3656) = sub_247D1FE98();
    v36 = sub_247D1FE38();
    v33 = v45;
    *(v0 + 3664) = v36;
    *(v0 + 3672) = v45;
    v38 = sub_247CACDB0;
  }

  else
  {
    *(v0 + 3688) = sub_247D1FE98();
    v36 = sub_247D1FE38();
    v33 = v37;
    *(v0 + 3696) = v36;
    *(v0 + 3704) = v37;
    v38 = sub_247CAD29C;
  }

  v31 = v38;
  v32 = v36;

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_247CAC32C()
{
  v60 = (v0 + 3168);
  v1 = *(v0 + 3624);
  sub_247C86B50();
  v2 = swift_allocError();
  *v3 = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2736);
  *(v0 + 3632) = v2;
  v4 = v2;
  v5 = sub_247D1F468();
  v6 = sub_247D20038();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_247C1F000, v5, v6, "Failed to upload images: %{public}@", v7, 0xCu);
    sub_247C27100(v8, &qword_27EE62EE0);
    MEMORY[0x24C1B9080](v8, -1, -1);
    MEMORY[0x24C1B9080](v7, -1, -1);
  }

  v61 = *(v0 + 3722);
  v11 = *(v0 + 3536);
  v12 = *(v0 + 3304);
  v13 = *(v0 + 3296);
  v57 = *(v0 + 3288);
  v14 = *(v0 + 3224);

  sub_247C2BD10(v0 + 2496, v0 + 2856, &unk_27EE631F0);
  sub_247C3D044((v0 + 2856), v0 + 2816);
  v58 = *(v0 + 2848);
  v59 = *(v0 + 2840);
  __swift_project_boxed_opaque_existential_1((v0 + 2816), v59);
  sub_247C88620(v0 + 1648);
  *(v0 + 3736) = *(v0 + 1656);
  *v62 = *(v0 + 1657);
  *&v62[3] = *(v0 + 1660);
  *(v0 + 3728) = *(v0 + 1672);
  *v63 = *(v0 + 1673);
  *&v63[3] = *(v0 + 1676);
  *(v0 + 3720) = *(v0 + 1688);
  *&v64[3] = *(v0 + 1692);
  *v64 = *(v0 + 1689);
  v70 = *(v0 + 1792);
  v71 = *(v0 + 1808);
  *v72 = *(v0 + 1824);
  *&v72[9] = *(v0 + 1833);
  v67 = *(v0 + 1744);
  v68 = *(v0 + 1760);
  v69 = *(v0 + 1776);
  v65 = *(v0 + 1712);
  v66 = *(v0 + 1728);
  v15 = *(v0 + 1849);
  v81 = *(v0 + 1978);
  v82 = *(v0 + 1994);
  *v83 = *(v0 + 2010);
  *&v83[14] = *(v0 + 2024);
  v77 = *(v0 + 1914);
  v78 = *(v0 + 1930);
  v79 = *(v0 + 1946);
  v80 = *(v0 + 1962);
  v73 = *(v0 + 1850);
  v74 = *(v0 + 1866);
  v75 = *(v0 + 1882);
  v76 = *(v0 + 1898);
  if (*(v14 + 16))
  {
    v15 = 0;
  }

  v56 = v15;
  *v60 = *(v0 + 1696);
  v55 = *(v11 + 16);

  *(v0 + 3728) = 0;
  swift_getErrorValue();
  v16 = sub_247D205B8();
  v18 = v17;
  sub_247C27100(v60, &unk_27EE63200);
  swift_getErrorValue();
  v19 = sub_247CC595C(*(v0 + 3152));
  *(v0 + 3720) = 0;
  sub_247D1EF18();
  sub_247D1EE88();
  v21 = v20;
  v22 = *(v13 + 8);
  *(v0 + 3640) = v22;
  *(v0 + 3648) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v12, v57);
  *(v0 + 3736) = 0;
  v23 = *(v0 + 3728);
  v24 = *(v0 + 3720);
  *(v0 + 832) = v21;
  *(v0 + 840) = 0;
  *(v0 + 841) = *v62;
  *(v0 + 844) = *&v62[3];
  *(v0 + 848) = v55;
  *(v0 + 856) = v23;
  *(v0 + 857) = *v63;
  *(v0 + 860) = *&v63[3];
  *(v0 + 864) = v19;
  *(v0 + 872) = v24;
  *(v0 + 876) = *&v64[3];
  *(v0 + 873) = *v64;
  *(v0 + 880) = v16;
  *(v0 + 888) = v18;
  *(v0 + 928) = v67;
  *(v0 + 944) = v68;
  *(v0 + 1017) = *&v72[9];
  *(v0 + 992) = v71;
  *(v0 + 1008) = *v72;
  *(v0 + 960) = v69;
  *(v0 + 976) = v70;
  *(v0 + 896) = v65;
  *(v0 + 912) = v66;
  *(v0 + 1033) = v56;
  *(v0 + 1162) = v81;
  *(v0 + 1178) = v82;
  *(v0 + 1194) = *v83;
  *(v0 + 1208) = *&v83[14];
  *(v0 + 1098) = v77;
  *(v0 + 1114) = v78;
  *(v0 + 1130) = v79;
  *(v0 + 1146) = v80;
  *(v0 + 1034) = v73;
  *(v0 + 1050) = v74;
  *(v0 + 1066) = v75;
  *(v0 + 1082) = v76;
  *(v0 + 1216) = 1;
  *(v0 + 1224) = 0xD00000000000001BLL;
  *(v0 + 1232) = 0x8000000247D30770;
  memcpy((v0 + 1240), (v0 + 832), 0x198uLL);
  (*(v58 + 8))(v0 + 1240, v59);
  sub_247C318F8(v0 + 832);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2816);
  if (v61 == 1)
  {
    v25 = *(v0 + 3216) + *(*(v0 + 3544) + 40);
    v26 = *(v25 + *(type metadata accessor for FlowResponse.Step(0) + 20));
    swift_beginAccess();
    v27 = *(v26 + 40);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v0 + 3264);
      v30 = *(v0 + 3256);
      v31 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));

      v35 = 0;
      while (1)
      {
        if (v35 >= *(v27 + 16))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v32, v33, v34);
        }

        sub_247CB3A20(v31 + *(v30 + 72) * v35, *(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);
        sub_247D1FE98();
        sub_247D1FE38();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v36 = *(v29 + 16);
        if (*(v29 + 24) != 1)
        {
          break;
        }

        if (v36 <= 2)
        {

LABEL_9:
          v32 = sub_247CB3A88(*(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);
          goto LABEL_10;
        }

        if (v36 != 3 && v36 != 5)
        {

LABEL_31:
          v47 = *(v0 + 3272);
          v48 = *(v0 + 3264);
          v49 = *(v0 + 3216);

          sub_247CB385C(v48, v47, type metadata accessor for FlowResponse.Step.HiddenAction);
          *(v0 + 2456) = 0u;
          *(v0 + 2472) = 0u;
          *(v0 + 2488) = 0;
          sub_247C5B128(v49);
          sub_247CB3A88(v47, type metadata accessor for FlowResponse.Step.HiddenAction);
          goto LABEL_32;
        }

        sub_247CB3A88(*(v0 + 3264), type metadata accessor for FlowResponse.Step.HiddenAction);

LABEL_10:
        if (v28 == ++v35)
        {

          goto LABEL_22;
        }
      }

      if (v36 == 4)
      {
        goto LABEL_31;
      }

      goto LABEL_9;
    }

LABEL_22:
    v40 = sub_247D1F468();
    v41 = sub_247D20038();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_247C1F000, v40, v41, "Missing hidden action (issue found) for image validation failure.", v42, 2u);
      MEMORY[0x24C1B9080](v42, -1, -1);
    }

    v43 = *(v0 + 3544);
    v44 = *(v0 + 3216);

    sub_247C2BD10(v44 + *(v43 + 48), v0 + 3056, &qword_27EE62FB0);
    sub_247C3D044((v0 + 3056), v0 + 2416);
    v45 = *__swift_project_boxed_opaque_existential_1((v0 + 2416), *(v0 + 2440));
    LOBYTE(v43) = sub_247C7A980();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2416);
    if (v43)
    {

LABEL_32:
      v50 = *(v0 + 3640);
      v51 = *(v0 + 3312);
      v52 = *(v0 + 3288);
      swift_willThrow();
      sub_247C27100(v0 + 2656, &qword_27EE63780);
      sub_247C27100(v0 + 2576, &unk_27EE63020);
      sub_247C27100(v0 + 2496, &unk_27EE631F0);
      v50(v51, v52);

      v53 = *(v0 + 8);

      return v53();
    }

    *(v0 + 3656) = sub_247D1FE98();
    v37 = sub_247D1FE38();
    v34 = v46;
    *(v0 + 3664) = v37;
    *(v0 + 3672) = v46;
    v39 = sub_247CACDB0;
  }

  else
  {
    *(v0 + 3688) = sub_247D1FE98();
    v37 = sub_247D1FE38();
    v34 = v38;
    *(v0 + 3696) = v37;
    *(v0 + 3704) = v38;
    v39 = sub_247CAD29C;
  }

  v32 = v39;
  v33 = v37;

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_247CACDB0()
{
  v1 = v0[454];
  v2 = v0[406];
  v3 = v0[402];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[460] = v6;
  *v6 = v0;
  v6[1] = sub_247CACEC4;
  v7 = v0[406];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247CACEC4()
{
  v1 = *v0;
  v2 = *(*v0 + 3248);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 3672);
  v4 = *(v1 + 3664);

  return MEMORY[0x2822009F8](sub_247CAD01C, v4, v3);
}

uint64_t sub_247CAD01C()
{

  v1 = *(v0 + 3520);
  v2 = *(v0 + 3512);

  return MEMORY[0x2822009F8](sub_247CAD084, v2, v1);
}

uint64_t sub_247CAD084()
{

  v1 = v0[455];
  v2 = v0[414];
  v3 = v0[411];
  swift_willThrow();
  sub_247C27100((v0 + 332), &qword_27EE63780);
  sub_247C27100((v0 + 322), &unk_27EE63020);
  sub_247C27100((v0 + 312), &unk_27EE631F0);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_247CAD29C()
{
  v1 = v0[454];
  v2 = v0[406];
  v3 = v0[402];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62B70) + 48);
  sub_247CB3A20(v3, v2, _s5StateVMa);
  *(v2 + v4) = v1;
  swift_storeEnumTagMultiPayload();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[464] = v6;
  *v6 = v0;
  v6[1] = sub_247CAD3B0;
  v7 = v0[406];

  return sub_247C8C6E8(v7, 0, 255);
}

uint64_t sub_247CAD3B0()
{
  v1 = *v0;
  v2 = *(*v0 + 3248);

  sub_247CB3A88(v2, _s15DiagnosticStyleOMa);
  v3 = *(v1 + 3704);
  v4 = *(v1 + 3696);

  return MEMORY[0x2822009F8](sub_247CAD508, v4, v3);
}

uint64_t sub_247CAD508()
{

  v1 = *(v0 + 3520);
  v2 = *(v0 + 3512);

  return MEMORY[0x2822009F8](sub_247CB47A8, v2, v1);
}

BOOL sub_247CAD570(uint64_t *a1)
{
  v1 = *a1;
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = _s5StateVMa();
  v7 = v1;
  MEMORY[0x28223BE20](v2);
  v6[2] = &v7;
  v4 = sub_247CCC07C(sub_247CB1DDC, v6, v3);

  return (v4 & 1) == 0;
}

uint64_t sub_247CAD684@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63730);
        if (swift_dynamicCast())
        {
          v12 = v24;
          v13 = swift_endAccess();
          v12(v13);
          *(&v21 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63720);
          *&v20 = swift_allocObject();
          sub_247C5F368(a3, v20 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v20, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63720);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        sub_247C27100(&v20, &qword_27EE63728);
      }
    }

    swift_endAccess();
    v18 = type metadata accessor for AccessibilityNotifier();
    v19 = swift_allocObject();
    a3[3] = v18;
    a3[4] = &off_2859D7200;
    *a3 = v19;
    *(&v21 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63720);
    *&v20 = swift_allocObject();
    sub_247C5F368(a3, v20 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v20, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63720);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_247C27100(&v20, &qword_27EE63728);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v20, a3);
  return swift_endAccess();
}

uint64_t sub_247CAD9C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636B8);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636A8);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636A8);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE636B0);
      }
    }

    swift_endAccess();
    sub_247CBE5DC(a3);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636A8);
    *&v18 = swift_allocObject();
    sub_247C5F368(a3, v18 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v18, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636A8);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE636B0);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

uint64_t sub_247CADCE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636D8);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C8);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C8);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE636D0);
      }
    }

    swift_endAccess();
    result = sub_247D20398();
    __break(1u);
    return result;
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C8);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE636D0);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

id sub_247CADFD0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = a1[4];
  if (*(v5 + 16))
  {
    v6 = sub_247D15DA4(a2);
    if (v7)
    {
      sub_247C30330(*(v5 + 56) + 32 * v6, v24);
      _s23DeviceBackAuthenticatorCMa();
      if (swift_dynamicCast())
      {
        v8 = v23;
        if (v23)
        {
          goto LABEL_17;
        }
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v9 = a1[5];
  if (*(v9 + 16))
  {
    v10 = sub_247D15DA4(a2);
    if (v11)
    {
      sub_247C30330(*(v9 + 56) + 32 * v10, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63748);
      if (swift_dynamicCast())
      {
        v12 = swift_endAccess();
        v23(&v23, v12);
        v13 = _s23DeviceBackAuthenticatorCMa();
        v8 = v23;
        v25 = v13;
        v24[0] = v23;
        swift_beginAccess();

        sub_247C93FD0(v24, a2);
        swift_endAccess();

        return v8;
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v14 = a1[3];
  if (*(v14 + 16))
  {
    v15 = sub_247D15DA4(a2);
    if (v16)
    {
      sub_247C30330(*(v14 + 56) + 32 * v15, v24);
      _s23DeviceBackAuthenticatorCMa();
      if (swift_dynamicCast())
      {
        v8 = v23;
        if (v23)
        {
LABEL_17:
          swift_endAccess();
          return v8;
        }
      }
    }
  }

  swift_endAccess();
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v17 = qword_27EE72D00;
  v18 = *(qword_27EE72D00 + 16);

  [v18 lock];
  v19 = sub_247CAE30C(v17, &_s18CMMotionManagerKeyON);
  if (!v2)
  {
    v20 = v19;
    [v18 unlock];

    v21 = _s23DeviceBackAuthenticatorCMa();
    swift_allocObject();
    v8 = sub_247C62CDC(v20);

    v25 = v21;
    v24[0] = v8;
    swift_beginAccess();

    sub_247C93FD0(v24, a2);
    goto LABEL_17;
  }

  result = [v18 unlock];
  __break(1u);
  return result;
}

id sub_247CAE30C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[4];
  if (*(v4 + 16))
  {
    v5 = sub_247D15DA4(a2);
    if (v6)
    {
      sub_247C30330(*(v4 + 56) + 32 * v5, v22);
      sub_247C3194C(0, &qword_27EE63750);
      if (swift_dynamicCast())
      {
        v7 = v21;
        if (v21)
        {
          goto LABEL_13;
        }
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v8 = a1[5];
  if (*(v8 + 16))
  {
    v9 = sub_247D15DA4(a2);
    if (v10)
    {
      sub_247C30330(*(v8 + 56) + 32 * v9, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63758);
      if (swift_dynamicCast())
      {
        v11 = swift_endAccess();
        v21(&v21, v11);
        v12 = sub_247C3194C(0, &qword_27EE63750);
        v13 = v21;
        v23 = v12;
        v22[0] = v21;
        swift_beginAccess();
        v14 = v13;
        sub_247C93FD0(v22, a2);
        swift_endAccess();

        return v14;
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v16 = a1[3];
  if (*(v16 + 16) && (v17 = sub_247D15DA4(a2), (v18 & 1) != 0) && (sub_247C30330(*(v16 + 56) + 32 * v17, v22), sub_247C3194C(0, &qword_27EE63750), swift_dynamicCast()) && (v7 = v21) != 0)
  {
LABEL_13:
    swift_endAccess();
    return v7;
  }

  else
  {
    swift_endAccess();
    v19 = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    v23 = sub_247C3194C(0, &qword_27EE63750);
    v22[0] = v19;
    swift_beginAccess();
    v20 = v19;
    sub_247C93FD0(v22, a2);
    swift_endAccess();
    return v20;
  }
}

uint64_t sub_247CAE5E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63820);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63368);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63368);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE63818);
      }
    }

    swift_endAccess();
    sub_247C7BD74(a3);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63368);
    *&v18 = swift_allocObject();
    sub_247C5F368(a3, v18 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v18, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63368);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE63818);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

uint64_t sub_247CAE904(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[4];
  if (*(v4 + 16))
  {
    v5 = sub_247D15DA4(a2);
    if (v6)
    {
      sub_247C30330(*(v4 + 56) + 32 * v5, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636E0);
      if (swift_dynamicCast())
      {
        v7 = v22[0];
        if (v22[0])
        {
LABEL_15:
          swift_endAccess();
          return v7;
        }
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v8 = a1[5];
  if (!*(v8 + 16) || (v9 = sub_247D15DA4(a2), (v10 & 1) == 0) || (sub_247C30330(*(v8 + 56) + 32 * v9, &v19), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636E8), !swift_dynamicCast()))
  {
    swift_endAccess();
    swift_beginAccess();
    v13 = a1[3];
    if (!*(v13 + 16) || (v14 = sub_247D15DA4(a2), (v15 & 1) == 0) || (sub_247C30330(*(v13 + 56) + 32 * v14, &v19), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636E0), !swift_dynamicCast()) || (v7 = v22[0]) == 0)
    {
      swift_endAccess();
      v7 = sub_247CEB0C4();
      v17 = v16;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636E0);
      v19 = v7;
      v20 = v17;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_247C93FD0(&v19, a2);
    }

    goto LABEL_15;
  }

  v11 = v22[0];
  v12 = swift_endAccess();
  v11(v22, v12);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636E0);
  v7 = v22[0];
  v19 = v22[0];
  v20 = v22[1];
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_247C93FD0(&v19, a2);
  swift_endAccess();

  return v7;
}

id sub_247CAEBBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v7 = a1[4];
  if (*(v7 + 16))
  {
    v8 = sub_247D15DA4(a2);
    if (v9)
    {
      sub_247C30330(*(v7 + 56) + 32 * v8, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63828);
      if (swift_dynamicCast())
      {
LABEL_12:
        sub_247C3D044(&v25, a3);
        return swift_endAccess();
      }

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_247C27100(&v25, &qword_27EE63830);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v10 = a1[5];
  if (*(v10 + 16))
  {
    v11 = sub_247D15DA4(a2);
    if (v12)
    {
      sub_247C30330(*(v10 + 56) + 32 * v11, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63838);
      if (swift_dynamicCast())
      {
        v13 = v29;
        v14 = swift_endAccess();
        v13(v14);
        *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63828);
        *&v25 = swift_allocObject();
        sub_247C5F368(a3, v25 + 16);
        swift_beginAccess();
        sub_247C93FD0(&v25, a2);
        swift_endAccess();
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v16 = a1[3];
  if (*(v16 + 16))
  {
    v17 = sub_247D15DA4(a2);
    if (v18)
    {
      sub_247C30330(*(v16 + 56) + 32 * v17, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63828);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_247C27100(&v25, &qword_27EE63830);
    }
  }

  swift_endAccess();
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v19 = qword_27EE72D00;
  v20 = *(qword_27EE72D00 + 16);

  [v20 lock];
  v21 = sub_247CAE904(v19, &_s14APIProviderKeyON);
  if (!v3)
  {
    v23 = v21;
    v24 = v22;
    [v20 unlock];

    a3[3] = &type metadata for FlowDataProvider;
    a3[4] = &off_2859DA0C8;
    *a3 = v23;
    a3[1] = v24;
    *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63828);
    *&v25 = swift_allocObject();
    sub_247C5F368(a3, v25 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v25, a2);
    return swift_endAccess();
  }

  result = [v20 unlock];
  __break(1u);
  return result;
}

uint64_t sub_247CAEF98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63770);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63760);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63760);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE63768);
      }
    }

    swift_endAccess();
    sub_247C86844(a3);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63760);
    *&v18 = swift_allocObject();
    sub_247C5F368(a3, v18 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v18, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63760);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE63768);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

uint64_t sub_247CAF2B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63700);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636F0);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636F0);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE636F8);
      }
    }

    swift_endAccess();
    sub_247C913A8(a3);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636F0);
    *&v18 = swift_allocObject();
    sub_247C5F368(a3, v18 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v18, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636F0);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE636F8);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

uint64_t sub_247CAF5D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = a1[4];
  if (!*(v6 + 16) || (v7 = sub_247D15DA4(a2), (v8 & 1) == 0))
  {
LABEL_5:
    swift_endAccess();
    swift_beginAccess();
    v9 = a1[5];
    if (*(v9 + 16))
    {
      v10 = sub_247D15DA4(a2);
      if (v11)
      {
        sub_247C30330(*(v9 + 56) + 32 * v10, &v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637A8);
        if (swift_dynamicCast())
        {
          v12 = v22;
          v13 = swift_endAccess();
          v12(v13);
          *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63798);
          *&v18 = swift_allocObject();
          sub_247C5F368(a3, v18 + 16);
          swift_beginAccess();
          sub_247C93FD0(&v18, a2);
          swift_endAccess();
        }
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v15 = a1[3];
    if (*(v15 + 16))
    {
      v16 = sub_247D15DA4(a2);
      if (v17)
      {
        sub_247C30330(*(v15 + 56) + 32 * v16, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63798);
        if (swift_dynamicCast())
        {
          goto LABEL_12;
        }

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_247C27100(&v18, &qword_27EE637A0);
      }
    }

    swift_endAccess();
    sub_247C93CC8(a3);
    *(&v19 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63798);
    *&v18 = swift_allocObject();
    sub_247C5F368(a3, v18 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v18, a2);
    return swift_endAccess();
  }

  sub_247C30330(*(v6 + 56) + 32 * v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63798);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_247C27100(&v18, &qword_27EE637A0);
    goto LABEL_5;
  }

LABEL_12:
  sub_247C3D044(&v18, a3);
  return swift_endAccess();
}

id sub_247CAF8F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = a1[4];
  if (*(v7 + 16))
  {
    v8 = sub_247D15DA4(a2);
    if (v9)
    {
      sub_247C30330(*(v7 + 56) + 32 * v8, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63708);
      if (swift_dynamicCast())
      {
LABEL_12:
        sub_247C3D044(&v29, a3);
        return swift_endAccess();
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_247C27100(&v29, &qword_27EE63710);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v10 = a1[5];
  if (*(v10 + 16))
  {
    v11 = sub_247D15DA4(a2);
    if (v12)
    {
      sub_247C30330(*(v10 + 56) + 32 * v11, &v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63718);
      if (swift_dynamicCast())
      {
        v13 = swift_endAccess();
        (*&v27[0])(v13);
        *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63708);
        *&v29 = swift_allocObject();
        sub_247C5F368(a3, v29 + 16);
        swift_beginAccess();
        sub_247C93FD0(&v29, a2);
        swift_endAccess();
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v15 = a1[3];
  if (*(v15 + 16))
  {
    v16 = sub_247D15DA4(a2);
    if (v17)
    {
      sub_247C30330(*(v15 + 56) + 32 * v16, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63708);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_247C27100(&v29, &qword_27EE63710);
    }
  }

  v32 = a2;
  swift_endAccess();
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v18 = qword_27EE72D00;
  v19 = *(qword_27EE72D00 + 16);
  swift_retain_n();
  [v19 lock];
  v20 = sub_247CAE904(v18, &_s14APIProviderKeyON);
  if (!v3)
  {
    v22 = v20;
    v23 = v21;
    [v19 unlock];

    v24 = v18[2];
    [v24 lock];
    sub_247CAD9C4(v18, &_s19AnalyticsManagerKeyON, v28);
    [v24 unlock];
    sub_247C3D044(v28, &v29);

    sub_247C2BD10(&v29, v27, &unk_27EE631F0);
    sub_247C3D044(v27, v28);
    v25 = type metadata accessor for TestSuiteDataProvider();
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    v26[21] = 0;
    v26[14] = v22;
    v26[15] = v23;
    sub_247C3D044(v28, (v26 + 16));
    a3[3] = v25;
    a3[4] = &off_2859DAFD8;
    *a3 = v26;
    sub_247C27100(&v29, &unk_27EE631F0);
    *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63708);
    *&v29 = swift_allocObject();
    sub_247C5F368(a3, v29 + 16);
    swift_beginAccess();
    sub_247C93FD0(&v29, v32);
    return swift_endAccess();
  }

  result = [v19 unlock];
  __break(1u);
  return result;
}

uint64_t sub_247CAFDB0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_247CAFE10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_247CAFE20(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_247CAFEBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_247CB03B4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_247CAFF18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = _s5StateVMa();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {

    v7 = type metadata accessor for FlowResponse(0);
    v8 = *(v7 + 36);
    v9 = sub_247D1F198();
    v10 = (*(v9 - 8) + 8);
    v18 = *v10;
    (*v10)(v5 + v8, v9);
    v11 = v5 + *(v7 + 40);
    v12 = type metadata accessor for FlowResponse.Product(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v18(v11 + *(v12 + 24), v9);
    }

    v13 = v5 + v6[8];

    if (*(v13 + 112))
    {
    }

    v14 = v6[9];
    v15 = sub_247D1F488();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
    v18(v5 + v6[10], v9);
    type metadata accessor for FlowResponse.Step(0);

    __swift_destroy_boxed_opaque_existential_1(v5 + v6[12]);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_247CB0274(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_247C2793C;

  return sub_247CA76D0(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_247CB03B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247CB0480(v11, 0, 0, 1, a1, a2);
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
    sub_247C30330(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_247CB0480(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247CB058C(a5, a6);
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
    result = sub_247D202F8();
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

uint64_t sub_247CB058C(uint64_t a1, unint64_t a2)
{
  v3 = sub_247CB05D8(a1, a2);
  sub_247CB0708(&unk_2859D5BB0);
  return v3;
}

uint64_t sub_247CB05D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_247CB07F4(v5, 0);
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

  result = sub_247D202F8();
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
        v10 = sub_247D1FCE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247CB07F4(v10, 0);
        result = sub_247D202A8();
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

uint64_t sub_247CB0708(uint64_t result)
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

  result = sub_247C802D4(result, v11, 1, v3);
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

void *sub_247CB07F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63498);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_247CB0868()
{
  result = qword_27EE636A0;
  if (!qword_27EE636A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE636A0);
  }

  return result;
}

uint64_t sub_247CB08BC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247CB08F4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_247D20538();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  else
  {
    return sub_247D20538() & 1;
  }
}

BOOL sub_247CB09AC(CGRect *a1, CGRect *a2)
{
  if (sub_247D19390((&a1->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep), (&a2->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_captureStep)))
  {
    v4 = *(&a1->origin.y + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
    v5 = *(&a2->origin.y + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name);
    if (v4)
    {
      if (v5)
      {
        v6 = *(&a1->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name) == *(&a2->origin.x + OBJC_IVAR____TtC18CosmeticAssessment13RecordedImage_name) && v4 == v5;
        if (v6 || (sub_247D20538() & 1) != 0)
        {
          return CGRectEqualToRect(a1[1], a2[1]);
        }
      }
    }

    else if (!v5)
    {
      return CGRectEqualToRect(a1[1], a2[1]);
    }
  }

  return 0;
}

uint64_t sub_247CB0A60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247D20258() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_247D20608();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_247CB0BD0(int64_t a1, uint64_t a2)
{
  v40 = sub_247D1EF78();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_247D20258();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_247CB3B08(&qword_27EE63808, MEMORY[0x277CC95F0]);
      v23 = sub_247D1FB48();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void *sub_247CB0EF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE636C0);
  v2 = *v0;
  v3 = sub_247D203C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_247C30330(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_247C30320(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_247CB106C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B0);
  v2 = *v0;
  v3 = sub_247D203C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_247C30330(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247C30320(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_247CB1210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63848);
  v2 = *v0;
  v3 = sub_247D203C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_247CB137C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63738);
  v2 = *v0;
  v3 = sub_247D203C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_247CB14C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63790);
  v2 = *v0;
  v3 = sub_247D203C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_247CB1640()
{
  v1 = v0;
  v33 = sub_247D1EF78();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE637B8);
  v3 = *v0;
  v4 = sub_247D203C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_247CB18C0(void *a1, id a2)
{
  v4 = [a2 viewControllers];
  sub_247C3194C(0, &qword_27EE63250);
  v5 = sub_247D1FDC8();

  if (v5 >> 62)
  {
    v6 = sub_247D203B8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = type metadata accessor for SystemCrossfadeTransitionAnimator();
    sub_247C75538(a1, v7, &off_2859DC9A0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_247D24040;
    *(v8 + 32) = a1;
    v9 = a1;
    v10 = sub_247D1FDB8();

    [a2 setViewControllers:v10 animated:0];
  }
}

unint64_t sub_247CB1A2C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1B8190](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_247CB1A98(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247CA51A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_247CB1B90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247CB1C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CB1C7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_247CB1CD4(uint64_t a1)
{
  v12 = *(v1 + 3);
  v13 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247C92008(a1, v9, v13, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_247CB1E04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CB1E6C()
{
  MEMORY[0x24C1B9150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247CB1EAC()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, ((v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_247CB21BC(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247C99024(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_247CB22EC()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v21 = sub_247D1EF48();
  v3 = *(v21 - 8);
  v4 = *(v3 + 80);
  v20 = *(v3 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + ((v2 + 40) & ~v2);

  v6 = type metadata accessor for FlowResponse(0);
  v7 = *(v6 + 36);
  v8 = sub_247D1F198();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + *(v6 + 40);
  v11 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v9(v10 + *(v11 + 24), v8);
  }

  v19 = v9;

  v12 = v5 + v1[8];

  if (*(v12 + 112))
  {
  }

  v13 = (v18 + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;

  v15 = v1[9];
  v16 = sub_247D1F488();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v19(v5 + v1[10], v8);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v5 + v1[12]);

  (*(v3 + 8))(v0 + v14, v21);

  return MEMORY[0x2821FE8E8](v0, v14 + v20, v2 | v4 | 7);
}

uint64_t sub_247CB26B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(_s5StateVMa() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_247D1EF48() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v7);
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_247C27E44;

  return sub_247C9B348(a1, v11, v12, v13, v1 + v6, v14, v15, v1 + v10);
}

uint64_t sub_247CB283C()
{
  v1 = sub_247D1EF78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = _s5StateVMa();
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v24 = *(*(v6 - 1) + 64);
  v27 = sub_247D1EF48();
  v9 = *(v27 - 8);
  v10 = *(v9 + 80);
  v26 = *(v9 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v25 = v8;
  v11 = v0 + v8;

  v12 = type metadata accessor for FlowResponse(0);
  v13 = *(v12 + 36);
  v14 = sub_247D1F198();
  v28 = *(*(v14 - 8) + 8);
  v28(v11 + v13, v14);
  v15 = v11 + *(v12 + 40);
  v16 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {

    v28(v15 + *(v16 + 24), v14);
  }

  v17 = v11 + v6[8];

  if (*(v17 + 112))
  {
  }

  v18 = v3 | v7 | v10;
  v19 = (v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + v10 + 8) & ~v10;

  v21 = v6[9];
  v22 = sub_247D1F488();
  (*(*(v22 - 8) + 8))(v11 + v21, v22);
  v28(v11 + v6[10], v14);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v11 + v6[12]);

  (*(v9 + 8))(v0 + v20, v27);

  return MEMORY[0x2821FE8E8](v0, v20 + v26, v18 | 7);
}

uint64_t sub_247CB2C5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_247D1EF78() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(_s5StateVMa() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_247D1EF48() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_247C27E44;

  return sub_247C9C5F4(a1, v13, v14, v15, v1 + v6, v1 + v9, v16, v1 + v12);
}

uint64_t sub_247CB2E34()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = v1[9];
  v14 = sub_247D1F488();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_247CB3144(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_247C27E44;

  return sub_247CA0198(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t objectdestroy_33Tm()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_247CB3574(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247CA137C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_247CB366C(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247CA1B48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_247CB3764(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247CA2288(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_247CB385C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CB38C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_247CB391C(uint64_t a1)
{
  v13 = *(v1 + 3);
  v14 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = v1[11];
  v10 = v1[12];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_247C27E44;

  return sub_247CB5C40(a1, v9, v10, v14, v13, v4, v5, v6, v7, v8);
}

uint64_t sub_247CB3A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CB3A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_247CB3AE8(unint64_t result)
{
  if (result != 5)
  {
    return sub_247CB3AF8(result);
  }

  return result;
}

unint64_t sub_247CB3AF8(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_247CB3B08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247CB3B50(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_247CB3B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.Step(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CB3C04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_247C2793C;

  return sub_247C99D04(a1, a2, v7, v6);
}

uint64_t sub_247CB3CB8()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_247CB3FB4(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247C9A344(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_247CB40AC()
{
  v1 = _s5StateVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = type metadata accessor for FlowResponse(0);
  v6 = *(v5 + 36);
  v7 = sub_247D1F198();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = v0 + v3 + *(v5 + 40);
  v10 = type metadata accessor for FlowResponse.Product(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 24), v7);
  }

  v11 = v4 + v1[8];

  if (*(v11 + 112))
  {
  }

  v12 = v1[9];
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v8(v4 + v1[10], v7);
  type metadata accessor for FlowResponse.Step(0);

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v15, v2 | 7);
}

uint64_t sub_247CB43A0(uint64_t a1)
{
  v4 = *(_s5StateVMa() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247C27E44;

  return sub_247C9AF18(a1, v6, v7, v1 + v5);
}

uint64_t sub_247CB4490()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_247C57E04(*(v0 + 40), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_247CB44E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247C27E44;

  return sub_247C98B60(a1, v4, v5, v6, v7, v8);
}

uint64_t _s9FlowErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9FlowErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247CB4708()
{
  result = qword_27EE63840;
  if (!qword_27EE63840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63840);
  }

  return result;
}

uint64_t sub_247CB47B0(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  v13 = *(v6 + 16);
  v14 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_247C80C60(0, *(v13 + 2) + 1, 1, v13);
    *(v6 + 16) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_247C80C60((v16 > 1), v17 + 1, 1, v13);
  }

  *(v13 + 2) = v17 + 1;
  v18 = &v13[48 * v17];
  *(v18 + 4) = v14;
  *(v18 + 10) = a2;
  v18[44] = BYTE4(a2) & 1;
  *(v18 + 6) = a3;
  *(v18 + 7) = a4;
  *(v18 + 8) = a5;
  *(v18 + 9) = a6;
  *(v6 + 16) = v13;
  result = swift_endAccess();
  if (*(v6 + 24) <= v17)
  {
    result = swift_beginAccess();
    if (*(v13 + 2))
    {
      sub_247CB4CC4(0, 1);
      return swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_247CB4904()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3 < *(v0 + 24))
  {
    return 0;
  }

  if (v3)
  {
    v4 = v3 + 1;
    v5 = (v2 + 56);
    while (1)
    {
      result = v4 == 2;
      if (v4 == 2)
      {
        break;
      }

      if (!--v4)
      {
        __break(1u);
        goto LABEL_11;
      }

      v6 = *(v0 + 32);
      if (v6 >= vabdd_f64(*(v5 - 1), v5[5]))
      {
        v7 = *v5;
        v8 = v5[6];
        v5 += 6;
        if (v6 >= vabdd_f64(v7, v8))
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_247CB49A0()
{

  v1 = OBJC_IVAR____TtCC18CosmeticAssessment22RealTimeImageProcessor14FrameValidator_log;
  v2 = sub_247D1F488();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s14FrameValidatorCMa()
{
  result = qword_27EE63858;
  if (!qword_27EE63858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CB4A98()
{
  result = sub_247D1F488();
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

uint64_t sub_247CB4B48(uint64_t *a1, int a2)
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

uint64_t sub_247CB4B90(uint64_t result, int a2, int a3)
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

unint64_t sub_247CB4BEC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
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

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
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

unint64_t sub_247CB4CC4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_247C80C60(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_247CB4BEC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_247CB4D98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_247CB4DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247CB4E34()
{
  type metadata accessor for DataProviderActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EE72C90 = v0;
  return result;
}

uint64_t sub_247CB4E70()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_247CB4EC8()
{
  result = qword_27EE63868;
  if (!qword_27EE63868)
  {
    type metadata accessor for DataProviderActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE63868);
  }

  return result;
}

uint64_t sub_247CB4F1C()
{
  if (qword_27EE62598 != -1)
  {
    swift_once();
  }
}

uint64_t sub_247CB4F78(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DataProviderActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_247CB4FB0()
{
  type metadata accessor for RollingFileLogMirror();
  v0 = swift_allocObject();
  result = sub_247CB4FFC(1936158540, 0xE400000000000000);
  qword_27EE72C98 = v0;
  return result;
}

uint64_t sub_247CB4FFC(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63898);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v27 - v4;
  v35 = sub_247D1EFE8();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_247D1EED8();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_247D1EEB8();
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247D1EEA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247D1EE98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v19 = v15;
  v20 = v33;
  (*(v16 + 104))(v18, *MEMORY[0x277CC9450], v19);
  v21 = v11;
  v22 = v35;
  (*(v12 + 104))(v14, *MEMORY[0x277CC9460], v21);
  v23 = v31;
  (*(v8 + 104))(v10, *MEMORY[0x277CC9468], v32);
  v24 = v36;
  (*(v6 + 104))(v23, *MEMORY[0x277CC9480], v34);
  sub_247D1EFD8();
  result = (*(v20 + 48))(v24, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v28, v24, v22);
    sub_247D1EEC8();
    sub_247D1F478();
    *(v2 + OBJC_IVAR____TtC18CosmeticAssessment20RollingFileLogMirror_fileHandle) = 0;
    v26 = v30;
    *(v2 + 112) = v29;
    *(v2 + 120) = v26;
    return v2;
  }

  return result;
}

uint64_t sub_247CB5474()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC18CosmeticAssessment20RollingFileLogMirror_fileHandle;
  v2 = *(v0 + OBJC_IVAR____TtC18CosmeticAssessment20RollingFileLogMirror_fileHandle);
  if (v2)
  {
    v15[0] = 0;
    if ([v2 synchronizeAndReturnError_])
    {
      v3 = v15[0];
      v4 = *(v0 + v1);
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v15[0];
      v6 = sub_247D1ECA8();

      swift_willThrow();
      v4 = *(v0 + v1);
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v15[0] = 0;
    if ([v4 closeAndReturnError_])
    {
      v7 = v15[0];
    }

    else
    {
      v8 = v15[0];
      v9 = sub_247D1ECA8();

      swift_willThrow();
    }
  }

LABEL_9:

  v10 = OBJC_IVAR____TtC18CosmeticAssessment20RollingFileLogMirror_dateFormat;
  v11 = sub_247D1EEE8();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC18CosmeticAssessment20RollingFileLogMirror_log;
  v13 = sub_247D1F488();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_247CB5620()
{
  sub_247CB5474();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for RollingFileLogMirror()
{
  result = qword_27EE63888;
  if (!qword_27EE63888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CB56A0()
{
  result = sub_247D1EEE8();
  if (v1 <= 0x3F)
  {
    result = sub_247D1F488();
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

uint64_t sub_247CB5788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v22 = (*(a10 + 8) + **(a10 + 8));
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_247C27E44;
  v20.n128_f64[0] = a9;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_247CB5904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v25 = (*(a11 + 16) + **(a11 + 16));
  v21 = swift_task_alloc();
  *(v11 + 16) = v21;
  *v21 = v11;
  v21[1] = sub_247C2793C;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return v25(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23, a11);
}

uint64_t sub_247CB5A88(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247C2793C;

  return v7(a1, a2);
}

uint64_t sub_247CB5BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  a1[4] = a2;
  a1[5] = a3;

  *a1 = a4;
  a1[1] = a5;

  a1[2] = a6;
  a1[3] = a7;
  return result;
}

uint64_t sub_247CB5C40(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 1016) = a3;
  *(v10 + 1008) = a2;
  *(v10 + 1000) = v20;
  *(v10 + 992) = v19;
  *(v10 + 984) = a10;
  *(v10 + 976) = a9;
  *(v10 + 968) = a8;
  *(v10 + 960) = a7;
  *(v10 + 952) = a6;
  *(v10 + 944) = a1;
  v12 = sub_247D20358();
  *(v10 + 1024) = v12;
  *(v10 + 1032) = *(v12 - 8);
  *(v10 + 1040) = swift_task_alloc();
  *(v10 + 1048) = swift_task_alloc();
  v13 = sub_247D20368();
  *(v10 + 1056) = v13;
  *(v10 + 1064) = *(v13 - 8);
  *(v10 + 1072) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
  *(v10 + 1080) = swift_task_alloc();
  *(v10 + 1088) = swift_task_alloc();
  v14 = type metadata accessor for SessionMetadata(0);
  *(v10 + 1096) = v14;
  *(v10 + 1104) = *(v14 - 8);
  *(v10 + 1112) = swift_task_alloc();
  *(v10 + 1120) = swift_task_alloc();
  sub_247D1F1C8();
  *(v10 + 1128) = swift_task_alloc();
  v15 = sub_247D1F1E8();
  *(v10 + 1136) = v15;
  *(v10 + 1144) = *(v15 - 8);
  *(v10 + 1152) = swift_task_alloc();
  *(v10 + 1160) = type metadata accessor for TestStatusRequest(0);
  *(v10 + 1168) = swift_task_alloc();
  *(v10 + 1176) = type metadata accessor for TestStatusResponse(0);
  *(v10 + 1184) = swift_task_alloc();
  v16 = sub_247D1EF48();
  *(v10 + 1192) = v16;
  *(v10 + 1200) = *(v16 - 8);
  *(v10 + 1208) = swift_task_alloc();
  *(v10 + 1216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247CB5F94, a6, 0);
}

uint64_t sub_247CB5F94()
{
  v1 = *(v0 + 952);
  sub_247D1EF18();
  *(v0 + 1224) = *(v1 + 112);
  *(v0 + 921) = 0;
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v12 = *(v0 + 960);
  v13 = *(v0 + 976);
  v4 = swift_task_alloc();
  *(v4 + 16) = v12;
  *(v4 + 32) = v13;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  sub_247CB79D4(&qword_27EE638A8, type metadata accessor for TestStatusRequest);
  sub_247D1F348();

  sub_247D1F1D8();
  v5 = sub_247D1F2F8();
  v7 = v6;
  v8 = *(v0 + 1008);
  (*(*(v0 + 1144) + 8))(*(v0 + 1152), *(v0 + 1136));
  v9 = sub_247CD8184(MEMORY[0x277D84F90]);
  *(v0 + 832) = 0;
  *(v0 + 840) = v5;
  *(v0 + 848) = v7;
  *(v0 + 856) = 1;
  *(v0 + 864) = 0;
  *(v0 + 872) = v9;
  *(v0 + 880) = v8;
  *(v0 + 888) = 0;
  *(v0 + 896) = 0;
  v10 = swift_task_alloc();
  *(v0 + 1232) = v10;
  *v10 = v0;
  v10[1] = sub_247CB62D8;

  return sub_247CCDBE0(v0 + 832, 0);
}

uint64_t sub_247CB62D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[155] = v2;

  v7 = v6[119];
  if (v2)
  {
    sub_247C82A58((v6 + 104));
    v8 = sub_247CB6D24;
  }

  else
  {
    v6[156] = a2;
    v6[157] = a1;
    sub_247C82A58((v6 + 104));
    v8 = sub_247CB6430;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_247CB6430()
{
  v1 = *(v0 + 1240);
  sub_247D1F1B8();
  sub_247D1F1A8();
  sub_247CB79D4(&qword_27EE638B0, type metadata accessor for TestStatusResponse);
  sub_247D1F308();
  if (v1)
  {
    v2 = *(v0 + 1168);
    v3 = type metadata accessor for TestStatusRequest;
LABEL_25:
    sub_247CB790C(v2, v3);
    (*(*(v0 + 1200) + 8))(*(v0 + 1216), *(v0 + 1192));

    v34 = *(v0 + 8);
LABEL_26:

    return v34();
  }

  v4 = *(v0 + 921);
  v5 = *(v0 + 1184);
  sub_247CB790C(*(v0 + 1168), type metadata accessor for TestStatusRequest);
  v6 = *v5;
  v7 = (v6 | v4);
  if (v6 == 1 && (v4 & 1) == 0)
  {
    v8 = *(v0 + 1208);
    v9 = *(v0 + 1200);
    v10 = *(v0 + 1192);
    v11 = *(v0 + 952);
    v52 = v11[20];
    v53 = v11[19];
    __swift_project_boxed_opaque_existential_1(v11 + 16, v53);
    LOBYTE(v7) = 1;
    sub_247D1EF18();
    sub_247D1EE88();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    *(v0 + 424) = v13;
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 448) = 1;
    *(v0 + 456) = 0;
    *(v0 + 464) = 1;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 1;
    *(v0 + 592) = 0u;
    *(v0 + 608) = xmmword_247D23E90;
    *(v0 + 624) = 514;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    *(v0 + 744) = 0u;
    *(v0 + 760) = 0u;
    *(v0 + 712) = 0u;
    *(v0 + 728) = 0u;
    *(v0 + 680) = 0u;
    *(v0 + 696) = 0u;
    *(v0 + 648) = 0u;
    *(v0 + 664) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 808) = 1;
    *(v0 + 816) = 0xD000000000000019;
    *(v0 + 824) = 0x8000000247D30C70;
    memcpy((v0 + 16), (v0 + 424), 0x198uLL);
    (*(v52 + 8))(v0 + 16, v53);
    sub_247C318F8(v0 + 424);
  }

  *(v0 + 922) = v7 & 1;
  v14 = *(v0 + 1184);
  v15 = *(v14 + 24);
  if (*(v14 + 32) == 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (v15 == 2)
    {
LABEL_13:
      sub_247C250C8();
      swift_allocError();
      v17 = "Session is archived.";
      v18 = xmmword_247D22C40;
      goto LABEL_14;
    }

    if (v15 == 1)
    {
LABEL_12:
      sub_247C250C8();
      swift_allocError();
      v17 = "Session is expired.";
      v18 = xmmword_247D22C50;
LABEL_14:
      *v16 = v18;
      *(v16 + 16) = (v17 - 32) | 0x8000000000000000;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xE000000000000000;
LABEL_24:
      swift_willThrow();
      v3 = type metadata accessor for TestStatusResponse;
      v2 = v14;
      goto LABEL_25;
    }
  }

  v19 = *(v0 + 1104);
  v20 = *(v0 + 1096);
  v21 = *(v0 + 1088);
  v22 = *(*(v0 + 1176) + 36);
  sub_247CB7834(v14 + v22, v21);
  v23 = *(v19 + 48);
  v24 = v23(v21, 1, v20);
  v25 = *(v0 + 1120);
  if (v24 == 1)
  {
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    *v25 = 0;
    v25[1] = 0xE000000000000000;
    sub_247D1F188();
    if (v23(v27, 1, v26) != 1)
    {
      sub_247CB78A4(*(v0 + 1088));
    }
  }

  else
  {
    sub_247CB796C(*(v0 + 1088), v25, type metadata accessor for SessionMetadata);
  }

  v28 = *(v0 + 1120);
  v30 = *v28;
  v29 = v28[1];

  sub_247CB790C(v28, type metadata accessor for SessionMetadata);
  if (v30 == 0x4C45434E4143 && v29 == 0xE600000000000000)
  {

LABEL_23:
    v14 = *(v0 + 1184);
    type metadata accessor for TulaError();
    sub_247CB79D4(&qword_27EE634F8, type metadata accessor for TulaError);
    swift_allocError();
    v33 = v32;
    *v32 = 0;
    *(v32 + 8) = 1;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0xE000000000000000;
    sub_247D1F188();
    *v33 = 6;
    *(v33 + 8) = 1;
    *(v33 + 16) = 0xD00000000000002DLL;
    *(v33 + 24) = 0x8000000247D30C40;

    goto LABEL_24;
  }

  v31 = sub_247D20538();

  if (v31)
  {
    goto LABEL_23;
  }

  sub_247D1FF58();
  v36 = *(v0 + 1096);
  v37 = *(v0 + 1080);
  sub_247CB7834(v14 + v22, v37);
  v38 = v23(v37, 1, v36);
  v39 = *(v0 + 1112);
  if (v38 == 1)
  {
    v40 = *(v0 + 1096);
    v41 = *(v0 + 1080);
    *v39 = 0;
    v39[1] = 0xE000000000000000;
    sub_247D1F188();
    if (v23(v41, 1, v40) != 1)
    {
      sub_247CB78A4(*(v0 + 1080));
    }
  }

  else
  {
    sub_247CB796C(*(v0 + 1080), v39, type metadata accessor for SessionMetadata);
  }

  v42 = *(v0 + 1112);
  v44 = *v42;
  v43 = v42[1];

  sub_247CB790C(v42, type metadata accessor for SessionMetadata);
  if (v44 == 0x4F435F4554495553 && v43 == 0xEF444554454C504DLL)
  {

LABEL_37:
    v46 = *(v0 + 1216);
    v47 = *(v0 + 1200);
    v48 = *(v0 + 1192);
    sub_247CB796C(*(v0 + 1184), *(v0 + 944), type metadata accessor for TestStatusResponse);
    (*(v47 + 8))(v46, v48);

    v34 = *(v0 + 8);
    goto LABEL_26;
  }

  v45 = sub_247D20538();

  if (v45)
  {
    goto LABEL_37;
  }

  v49 = sub_247D20688();
  v51 = v50;
  sub_247D205A8();
  *(v0 + 928) = v49;
  *(v0 + 936) = v51;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 1;

  return MEMORY[0x2822009F8](sub_247CB6E84, 0, 0);
}

uint64_t sub_247CB6D24()
{
  sub_247CB790C(v0[146], type metadata accessor for TestStatusRequest);
  (*(v0[150] + 8))(v0[152], v0[149]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247CB6E84()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = sub_247CB79D4(&qword_27EE62DA0, MEMORY[0x277D85928]);
  sub_247D20588();
  sub_247CB79D4(&qword_27EE62DA8, MEMORY[0x277D858F8]);
  sub_247D20378();
  v5 = *(v2 + 8);
  v0[158] = v5;
  v0[159] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[160] = v6;
  *v6 = v0;
  v6[1] = sub_247CB7018;
  v7 = v0[132];
  v8 = v0[131];

  return MEMORY[0x2822008C8](v8, v0 + 113, v7, v4);
}

uint64_t sub_247CB7018()
{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    (*(v2 + 1264))(*(v2 + 1048), *(v2 + 1024));
    v3 = sub_247CB74DC;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1264);
    v6 = *(v2 + 1072);
    v7 = *(v2 + 1064);
    v8 = *(v2 + 1056);
    v9 = *(v2 + 1048);
    v10 = *(v2 + 1024);
    v11 = *(v2 + 952);
    v5(v9, v10);
    (*(v7 + 8))(v6, v8);
    v3 = sub_247CB718C;
    v4 = v11;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_247CB718C()
{
  sub_247CB790C(*(v0 + 1184), type metadata accessor for TestStatusResponse);
  v1 = *(v0 + 1288);
  *(v0 + 921) = *(v0 + 922);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v15 = *(v0 + 960);
  v16 = *(v0 + 976);
  v4 = swift_task_alloc();
  *(v4 + 16) = v15;
  *(v4 + 32) = v16;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  sub_247CB79D4(&qword_27EE638A8, type metadata accessor for TestStatusRequest);
  sub_247D1F348();

  sub_247D1F1D8();
  v5 = sub_247D1F2F8();
  if (v1)
  {
    v7 = *(v0 + 1168);
    (*(*(v0 + 1144) + 8))(*(v0 + 1152), *(v0 + 1136));
    sub_247CB790C(v7, type metadata accessor for TestStatusRequest);
    (*(*(v0 + 1200) + 8))(*(v0 + 1216), *(v0 + 1192));

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v12 = *(v0 + 1008);
    (*(*(v0 + 1144) + 8))(*(v0 + 1152), *(v0 + 1136));
    v13 = sub_247CD8184(MEMORY[0x277D84F90]);
    *(v0 + 832) = 0;
    *(v0 + 840) = v10;
    *(v0 + 848) = v11;
    *(v0 + 856) = 1;
    *(v0 + 864) = 0;
    *(v0 + 872) = v13;
    *(v0 + 880) = v12;
    *(v0 + 888) = 0;
    *(v0 + 896) = 0;
    v14 = swift_task_alloc();
    *(v0 + 1232) = v14;
    *v14 = v0;
    v14[1] = sub_247CB62D8;

    return sub_247CCDBE0(v0 + 832, 0);
  }
}

uint64_t sub_247CB74DC()
{
  v1 = v0[119];
  (*(v0[133] + 8))(v0[134], v0[132]);

  return MEMORY[0x2822009F8](sub_247CB755C, v1, 0);
}

uint64_t sub_247CB755C()
{
  sub_247CB790C(v0[148], type metadata accessor for TestStatusResponse);
  (*(v0[150] + 8))(v0[152], v0[149]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_247CB76BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_247CB7728()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_247CB7748, v2, 0);
}

uint64_t sub_247CB7748()
{
  v1 = *(v0 + 16);
  if (*(v1 + 168))
  {
    type metadata accessor for TestStatusResponse(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62BA8);
    sub_247D1FF28();
  }

  *(v1 + 168) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_247CB7834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CB78A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CB790C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247CB796C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247CB79D4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_247CB7A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247CB7C60(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_247CB7CD0(v4);
    return 0;
  }

  else
  {
    sub_247CB7D38(v4, v8);

    v10 = sub_247C77220();
    v11 = sub_247D1FBB8();
    v12 = [objc_opt_self() _systemImageNamed_variableValue_withConfiguration_];

    sub_247CB7D9C();
    type metadata accessor for InformationViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_247C77220();
    v15 = sub_247D20168();
    sub_247CB7DE8(v8);
    if (v12)
    {

      return v12;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t sub_247CB7C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_247CB7CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CB7D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_247CB7D9C()
{
  result = qword_27EE638B8;
  if (!qword_27EE638B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE638B8);
  }

  return result;
}

uint64_t sub_247CB7DE8(uint64_t a1)
{
  v2 = type metadata accessor for FlowResponse.SFSymbolConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247CB7E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247D1F488();
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

uint64_t sub_247CB7F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_247D1F488();
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

uint64_t _s20VisionRequestHandlerVMa()
{
  result = qword_27EE638C0;
  if (!qword_27EE638C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247CB802C()
{
  result = sub_247D1F488();
  if (v1 <= 0x3F)
  {
    result = sub_247C3194C(319, &qword_27EE638D0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_247CB80C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CE2CB0]) init];
  [v4 setMaximumObservations_];
  sub_247C580D8(0xD000000000000018, 0x8000000247D2EEB0);
  [v4 setMinimumConfidence_];
  sub_247C580D8(0xD000000000000019, 0x8000000247D2EE90);
  [v4 setMinimumAspectRatio_];
  sub_247C580D8(0xD000000000000019, 0x8000000247D2EE70);
  [v4 setMaximumAspectRatio_];
  v5 = "cropRequestQuadratureTolerance";
  sub_247C580D8(0xD000000000000012, 0x8000000247D2EE50);
  [v4 setMinimumSize_];
  sub_247C580D8(0xD00000000000001ELL, 0x8000000247D2EE30);
  [v4 setQuadratureTolerance_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_247D24040;
  *(v6 + 32) = v4;
  v48 = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CE2CB0]);
  v8 = v4;
  v46 = [v7 init];
  if (sub_247C57F80(0xD000000000000018, 0x8000000247D2EED0, 1))
  {
    [v46 setMaximumObservations_];
    sub_247C580D8(0xD000000000000018, 0x8000000247D2EEB0);
    [v46 setMinimumConfidence_];
    sub_247C580D8(0xD000000000000019, 0x8000000247D2EE90);
    [v46 setMinimumAspectRatio_];
    sub_247C580D8(0xD000000000000019, 0x8000000247D2EE70);
    [v46 setMaximumAspectRatio_];
    sub_247C580D8(0xD000000000000012, 0x8000000247D2EE50);
    [v46 setMinimumSize_];
    sub_247C580D8(0xD00000000000001ELL, 0x8000000247D2EE30);
    [v46 setQuadratureTolerance_];
    v9 = v46;
    MEMORY[0x24C1B7C60]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247D1FDE8();
    }

    sub_247D1FE08();
    v6 = v48;
  }

  v10 = *(a2 + *(_s20VisionRequestHandlerVMa() + 20));
  if (v6 >> 62)
  {
    goto LABEL_28;
  }

  sub_247D20548();
  sub_247C3194C(0, &qword_27EE638D8);
  while (1)
  {
    sub_247C3194C(0, &qword_27EE638D8);
    v11 = sub_247D1FDB8();

    v47 = 0;
    v12 = [v10 performRequests:v11 onCVPixelBuffer:a3 orientation:a4 error:&v47];

    if (!v12)
    {
      v20 = v47;

      v21 = sub_247D1ECA8();

      swift_willThrow();
      v22 = v21;
      v23 = sub_247D1F468();
      v24 = sub_247D20038();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v21;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_247C1F000, v23, v24, "Failed crop detection. %@", v25, 0xCu);
        sub_247C34F98(v26);
        MEMORY[0x24C1B9080](v26, -1, -1);
        MEMORY[0x24C1B9080](v25, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v13 = v47;
    v14 = [v8 results];
    if (!v14)
    {

      goto LABEL_55;
    }

    sub_247C3194C(0, &qword_27EE63908);
    v15 = sub_247D1FDC8();

    v47 = MEMORY[0x277D84F90];
    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_30;
    }

LABEL_11:
    v5 = v8;
    v17 = 0;
    v8 = (v15 & 0xC000000000000001);
    while (1)
    {
      if (v8)
      {
        v18 = MEMORY[0x24C1B8190](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v10 = v18;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      MEMORY[0x24C1B7C60]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_247D1FDE8();
      }

      sub_247D1FE08();
      ++v17;
      if (v19 == v16)
      {
        v29 = v47;
        v8 = v5;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_247C3194C(0, &qword_27EE638D8);

    sub_247D203A8();
  }

  v16 = sub_247D203B8();
  if (v16)
  {
    goto LABEL_11;
  }

LABEL_30:
  v29 = MEMORY[0x277D84F90];
LABEL_31:

  if (v29 >> 62)
  {
LABEL_53:
    v12 = sub_247D203B8();
    if (v12)
    {
      goto LABEL_33;
    }

LABEL_54:

    v14 = 0;
    goto LABEL_55;
  }

  v12 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_54;
  }

LABEL_33:
  v5 = (v29 & 0xC000000000000001);
  if ((v29 & 0xC000000000000001) != 0)
  {
    goto LABEL_68;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  for (i = *(v29 + 32); ; i = MEMORY[0x24C1B8190](0, v29))
  {
    v14 = i;
    v45 = v8;
    if (v12 != 1)
    {
      v31 = 1;
      v8 = &selRef_setShadowOffset_;
      while (2)
      {
        v32 = v14;
        v33 = v31;
        while (1)
        {
          if (v5)
          {
            v34 = MEMORY[0x24C1B8190](v33, v29);
          }

          else
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v34 = *(v29 + 8 * v33 + 32);
          }

          v14 = v34;
          v31 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          [v32 confidence];
          v36 = v35;
          [v14 confidence];
          if (v36 < v37)
          {
            break;
          }

          ++v33;
          if (v31 == v12)
          {
            v14 = v32;
            goto LABEL_49;
          }
        }

        if (v31 != v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_49:

    v8 = v45;
LABEL_55:
    v38 = [v46 results];
    if (!v38)
    {
      break;
    }

    v29 = v38;
    sub_247C3194C(0, &qword_27EE63908);
    v39 = sub_247D1FDC8();

    if (v39 >> 62)
    {
      if (!sub_247D203B8())
      {
LABEL_64:

        return v14;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1B8190](0, v39);
      goto LABEL_61;
    }

    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v39 + 32);
LABEL_61:

      return v14;
    }

    __break(1u);
LABEL_68:
    ;
  }

  return v14;
}

void *sub_247CB89FC(void *result, uint64_t *a2, uint64_t a3, __CVBuffer *a4, uint64_t a5)
{
  v70[1] = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *a2;
  if (*(*a2 + 16))
  {
    v10 = result;
    v11 = sub_247CCFDA8(0xD000000000000012, 0x8000000247D2EA60);
    if (v12)
    {
      v13 = (*(v9 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = *v13 == 1702195828 && v15 == 0xE400000000000000;
      if (!v16 && (sub_247D20538() & 1) == 0)
      {
        v17 = v14 == 0x65736C6166 && v15 == 0xE500000000000000;
        if (v17 || (sub_247D20538() & 1) != 0)
        {

          return 0;
        }
      }
    }
  }

  else
  {
    v18 = result;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CE2C60]) init];
  if (*(v9 + 16) && (v20 = sub_247CCFDA8(0xD000000000000023, 0x8000000247D30C90), (v21 & 1) != 0))
  {
    v22 = (*(v9 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];

    v25 = sub_247CECA84(v23, v24);
    v26 = a3;
    v27 = a5;
    v29 = v28;

    v16 = (v29 & 1) == 0;
    a5 = v27;
    a3 = v26;
    if (v16)
    {
      v30 = v25;
    }

    else
    {
      v30 = 256;
    }
  }

  else
  {
    v30 = 256;
  }

  [v19 setMaximumImageDimension_];
  sub_247C580D8(0xD00000000000001FLL, 0x8000000247D30CC0);
  v31 = sub_247D1FFB8();
  [v19 setContrastPivot_];

  sub_247C580D8(0xD000000000000024, 0x8000000247D30CE0);
  [v19 setContrastAdjustment_];
  v32 = v19;
  [v8 boundingBox];
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  if (v34 < 0.0)
  {
    v34 = 0.0;
  }

  [v32 setRegionOfInterest_];

  v37 = *(a3 + *(_s20VisionRequestHandlerVMa() + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_247D24040;
  *(v38 + 32) = v32;
  sub_247C3194C(0, &qword_27EE638D8);
  v39 = v32;
  v40 = sub_247D1FDB8();

  v70[0] = 0;
  LOBYTE(v37) = [v37 performRequests:v40 onCVPixelBuffer:a4 orientation:a5 error:v70];

  if ((v37 & 1) == 0)
  {
    v51 = v70[0];
    v52 = sub_247D1ECA8();

    swift_willThrow();
    CVPixelBufferGetWidth(a4);
    CVPixelBufferGetHeight(a4);
    v53 = v8;
    v54 = v52;
    v39 = sub_247D1F468();
    v55 = sub_247D20038();

    if (!os_log_type_enabled(v39, v55))
    {

      return 0;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70[0] = v58;
    *v56 = 138413058;
    v59 = v52;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v60;
    *v57 = v60;
    *(v56 + 12) = 2082;
    v61 = sub_247D20148();
    v63 = sub_247CB03B4(v61, v62, v70);

    *(v56 + 14) = v63;
    *(v56 + 22) = 2082;
    [v53 boundingBox];
    v64 = sub_247D20138();
    v66 = sub_247CB03B4(v64, v65, v70);

    *(v56 + 24) = v66;
    *(v56 + 32) = 2080;
    [v53 boundingBox];
    v67 = sub_247D20138();
    v69 = sub_247CB03B4(v67, v68, v70);

    *(v56 + 34) = v69;
    _os_log_impl(&dword_247C1F000, v39, v55, "Failed occlusion detection. %@ – %{public}s – %{public}s – %s", v56, 0x2Au);
    sub_247C34F98(v57);
    MEMORY[0x24C1B9080](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B9080](v58, -1, -1);
    MEMORY[0x24C1B9080](v56, -1, -1);

LABEL_39:
    return 0;
  }

  v41 = v70[0];
  v42 = [v39 results];
  if (!v42)
  {

    goto LABEL_39;
  }

  v43 = v42;
  sub_247C3194C(0, &qword_27EE638E0);
  sub_247D1FDC8();

  v70[0] = sub_247CBA178(v44);
  sub_247CB9514(v70);

  v45 = v70[0];
  if ((v70[0] & 0x8000000000000000) != 0 || (v70[0] & 0x4000000000000000) != 0)
  {
    if (sub_247D203B8())
    {
      goto LABEL_31;
    }

LABEL_41:

    return 0;
  }

  if (!*(v70[0] + 2))
  {
    goto LABEL_41;
  }

LABEL_31:
  if ((v45 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x24C1B8190](0, v45);
  }

  else
  {
    if (!*(v45 + 16))
    {
      __break(1u);
    }

    v46 = *(v45 + 32);
  }

  v47 = v46;

  v48 = [v47 topLevelContours];

  sub_247C3194C(0, &qword_27EE638E8);
  v49 = sub_247D1FDC8();

  v50 = sub_247CB910C(v49);

  return v50;
}

unint64_t sub_247CB910C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x24C1B8190](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject childContours];
      sub_247C3194C(0, &qword_27EE638E8);
      v8 = sub_247D1FDC8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_247D203B8();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_247D203B8();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_247D203B8();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_247D202E8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_247D203B8();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_247CBA3AC(&qword_27EE638F0, &qword_27EE62EB0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62EB0);
              v19 = sub_247CEEA9C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
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
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_247D203B8();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void *sub_247CB948C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_247CB9514(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_247CBA400(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_247CB9590(v6);
  return sub_247D20318();
}

void sub_247CB9590(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_247D204C8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_247C3194C(0, &qword_27EE638E0);
        v6 = sub_247D1FDF8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_247CB97A0(v8, v9, a1, v4);
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
    sub_247CB96A4(0, v2, 1, a1);
  }
}

void sub_247CB96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 confidence];
      v15 = v14;
      [v13 confidence];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_247CB97A0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_247CBA164(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_247CB9E18((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_247CBA164(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_247CBA0D8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 confidence];
      v19 = v18;
      [v17 confidence];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 confidence];
        v27 = v26;
        [v25 confidence];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_247C80804(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_247C80804((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
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

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_247CB9E18((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_247CBA164(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_247CBA0D8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 confidence];
    v48 = v47;
    [v46 confidence];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_247CB9E18(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 confidence];
        v35 = v34;
        [v33 confidence];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 confidence];
        v19 = v18;
        [v17 confidence];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_247CBA0D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247CBA164(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_247CBA178(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_247D203B8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_247CB948C(v3, 0);
  sub_247CBA20C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_247CBA20C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_247D203B8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_247D203B8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_247CBA3AC(&qword_27EE63900, &qword_27EE638F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE638F8);
            v9 = sub_247CEEB1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_247C3194C(0, &qword_27EE638E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247CBA3AC(unint64_t *a1, uint64_t *a2)
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

id sub_247CBA414()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = [v1 fontWithDescriptor:v4 size:0.0];

  [v0 setFont_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v6 = [objc_opt_self() systemBlackColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_247CBA5A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visualEffectView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v4] = v6;
  v7 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_hintLabel;
  *&v1[v7] = sub_247CBA414();
  sub_247D1F478();
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_traitChangeRegistration] = 0;
  if (qword_27EE625B8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE72D00;
  v9 = *(qword_27EE72D00 + 16);

  [v9 lock];
  sub_247CAD684(v8, &_s24AccessibilityNotifierKeyON, v19);
  v10 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView__accessibilityNotifier;
  [v9 unlock];
  sub_247C3D044(v19, &v1[v10]);

  *&v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask] = 0;
  v11 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastAnnouncementTime;
  v12 = sub_247D1EF48();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString] = 0;
  sub_247D1EF18();
  sub_247D1EE78();
  v13 = &v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 0;
  *&v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask] = 0;
  v14 = &v1[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration];
  v15 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v15;
  *(v14 + 4) = *(a1 + 32);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_247CBA868();

  return v16;
}

uint64_t sub_247CBA868()
{
  v1 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visualEffectView];
  [v0 addSubview_];
  v2 = [v1 contentView];
  v3 = *&v0[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_hintLabel];
  [v2 addSubview_];

  v46 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_247D24000;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 bottomAnchor];
  v12 = [v0 &selRef_constraintEqualToAnchor_multiplier_ + 5];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 trailingAnchor];
  v15 = [v0 &selRef_tintColor + 4];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  v17 = [v3 topAnchor];
  v18 = [v1 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:8.0];
  *(v4 + 64) = v20;
  v21 = [v3 leadingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:12.0];
  *(v4 + 72) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:8.0];

  *(v4 + 80) = v27;
  v28 = [v1 trailingAnchor];
  v29 = [v3 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:12.0];

  *(v4 + 88) = v30;
  sub_247C3194C(0, &qword_27EE63310);
  v31 = sub_247D1FDB8();

  [v46 activateConstraints_];

  v32 = [v0 layer];
  v33 = [objc_opt_self() blackColor];
  v34 = [v33 CGColor];

  [v32 setShadowColor_];
  v35 = [v0 layer];
  LODWORD(v36) = 0.25;
  [v35 setShadowOpacity_];

  v37 = [v0 layer];
  [v37 setShadowRadius_];

  v38 = [v0 layer];
  [v38 setShadowOffset_];

  [v0 setAlpha_];
  v39 = [v1 layer];
  [v39 setCornerRadius_];

  v40 = [v1 layer];
  [v40 setMasksToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE63988);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_247D23880;
  v42 = sub_247D1F498();
  v43 = MEMORY[0x277D74DB8];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE639F0);
  v44 = sub_247D20158();

  *&v0[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_traitChangeRegistration] = v44;

  return swift_unknownObjectRelease();
}

uint64_t sub_247CBAFA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247D1EF48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  if (*(a1 + 32))
  {
    v11 = sub_247D1F468();
    v12 = sub_247D20058();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_247C1F000, v11, v12, "Hold Still", v13, 2u);
      MEMORY[0x24C1B9080](v13, -1, -1);
    }

    sub_247CBB750(a1);
    return 1;
  }

  sub_247D1EF18();
  v15 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeCaptureInitiated;
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v8, v2 + v15, v4);
  sub_247D1EE88();
  v18 = v17;
  v63 = *(v5 + 8);
  v63(v8, v4);
  v19 = v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration;
  if (*(v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration) >= v18)
  {
    v23 = *a1;
    v24 = *(a1 + 8);
    *v65 = *(a1 + 16);

    sub_247CBD674(v65, &v66);
    v20 = sub_247D1F468();
    v25 = sub_247D20058();

    sub_247C5FCB4(v65);
    if (os_log_type_enabled(v20, v25))
    {
      v22 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v66 = v26;
      *v22 = 136315138;
      *(v22 + 4) = sub_247CB03B4(v23, v24, &v66);
      _os_log_impl(&dword_247C1F000, v20, v25, "Initial cool off ignoring %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x24C1B9080](v26, -1, -1);
      goto LABEL_12;
    }

LABEL_13:

    v63(v10, v4);
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask))
  {
    v20 = sub_247D1F468();
    v21 = sub_247D20058();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_247C1F000, v20, v21, "Visible", v22, 2u);
LABEL_12:
      MEMORY[0x24C1B9080](v22, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v27 = v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint;
  if (*(v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint + 8) && (*(v27 + 32) & 1) != 0)
  {
    v28 = *v27;
    v29 = *v27;
    v30 = *(v2 + OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint + 8);
    LODWORD(v62) = *(v27 + 32);
    sub_247CBD6D0(v29, v30);
    v31 = sub_247D1F468();
    v60 = sub_247D20058();
    v61 = v31;
    if (os_log_type_enabled(v31, v60))
    {
      v32 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v65[0] = v59;
      *v32 = 136315138;

      sub_247CBD714(v28, v30);
      v33 = sub_247CB03B4(v28, v30, v65);

      v34 = v32;
      *(v32 + 4) = v33;
      v35 = v61;
      v36 = v34;
      _os_log_impl(&dword_247C1F000, v61, v60, "Last Hint %s", v34, 0xCu);
      v37 = v59;
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x24C1B9080](v37, -1, -1);
      MEMORY[0x24C1B9080](v36, -1, -1);
    }

    else
    {

      sub_247CBD714(v28, v30);
    }

    v57 = v63;
    sub_247CBB750(a1);
    v57(v10, v4);
    return 1;
  }

  v38 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_timeLastHintHidden;
  swift_beginAccess();
  v16(v8, v2 + v38, v4);
  sub_247D1EE88();
  v40 = v39;
  v41 = v63;
  v63(v8, v4);
  v42 = *(v19 + 8);
  v43 = *a1;
  v44 = *(a1 + 8);
  if (v42 < v40)
  {
    v66 = *(a1 + 16);

    sub_247CBD674(&v66, v64);
    v45 = sub_247D1F468();
    v46 = sub_247D20058();

    sub_247C5FCB4(&v66);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v62 = v45;
      v48 = v47;
      v49 = swift_slowAlloc();
      v50 = v43;
      v51 = v49;
      v64[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_247CB03B4(v50, v44, v64);
      v52 = v62;
      _os_log_impl(&dword_247C1F000, v62, v46, "Show %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x24C1B9080](v51, -1, -1);
      MEMORY[0x24C1B9080](v48, -1, -1);
    }

    else
    {
    }

    sub_247CBB750(a1);
    v41(v10, v4);
    return 1;
  }

  v66 = *(a1 + 16);

  sub_247CBD674(&v66, v64);
  v53 = sub_247D1F468();
  v54 = sub_247D20058();

  sub_247C5FCB4(&v66);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64[0] = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_247CB03B4(v43, v44, v64);
    _os_log_impl(&dword_247C1F000, v53, v54, "Duration between hints ignoring %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x24C1B9080](v56, -1, -1);
    MEMORY[0x24C1B9080](v55, -1, -1);
  }

  v41(v10, v4);
  return 0;
}

void sub_247CBB750(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE62FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9 + 64;
  v11 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_hintLabel];
  v12 = sub_247D1FBB8();
  [v11 setText_];

  v13 = &v2[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint];
  v14 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint];
  v15 = *&v2[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_lastVisibleHint + 8];
  *v13 = v3;
  *(v13 + 1) = v4;
  *(v13 + 2) = v5;
  *(v13 + 3) = v6;
  v13[32] = v7 & 1;
  sub_247CBD714(v14, v15);
  v16 = sub_247D1FEC8();
  v38 = *(*(v16 - 8) + 56);
  v38(v10, 1, 1, v16);
  sub_247D1FEA8();

  v17 = v2;
  v18 = sub_247D1FE98();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  *&v17[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_visibilityTimerTask] = sub_247CD082C(0, 0, v10, &unk_247D263E0, v19);

  v21 = objc_opt_self();
  v22 = *&v17[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_configuration + 32];
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  aBlock[4] = sub_247CBD810;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247CDD038;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);
  v25 = v17;

  [v21 animateWithDuration:v24 animations:v22];
  _Block_release(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE632E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_247D23880;
  v27 = *MEMORY[0x277D76510];
  *(inited + 32) = *MEMORY[0x277D76510];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v28 = v27;
  sub_247CD85F4(inited);
  swift_setDeallocating();
  sub_247C27100(inited + 32, &unk_27EE632E8);
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_247D1FBB8();
  type metadata accessor for Key(0);
  sub_247CBD84C();
  v31 = sub_247D1FAF8();

  v32 = [v29 initWithString:v30 attributes:v31];

  v33 = *&v25[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString];
  *&v25[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_nextAnnouncementString] = v32;

  v34 = OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask;
  if (!*&v25[OBJC_IVAR____TtC18CosmeticAssessment12UserHintView_accessibilityNotifierTask])
  {
    v38(v10, 1, 1, v16);
    v35 = v25;
    v36 = sub_247D1FE98();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = MEMORY[0x277D85700];
    v37[4] = v35;
    *&v25[v34] = sub_247C2D2D0(0, 0, v10, &unk_247D263F0, v37);
  }
}