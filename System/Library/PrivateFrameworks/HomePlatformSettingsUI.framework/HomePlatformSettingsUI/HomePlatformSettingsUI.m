void sub_25429675C(void *a1)
{
  v2 = v1;
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5C0, &qword_2542AE750);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2542AE740;
  v6 = [a1 centerXAnchor];
  v7 = [v2 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [a1 centerYAnchor];
  v10 = [v2 centerYAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  sub_254296980();
  v12 = sub_2542AD76C();

  [v4 activateConstraints_];
}

void *sub_25429691C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_254296980()
{
  result = qword_27F5DD5C8;
  if (!qword_27F5DD5C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DD5C8);
  }

  return result;
}

void type metadata accessor for SDBetaManagerErrorType()
{
  if (!qword_27F5DD5D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F5DD5D0);
    }
  }
}

id sub_254296A30(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  swift_getMetatypeMetadata();
  sub_2542AD72C();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = sub_2542AD70C();

  v4 = sub_2542AD70C();

  v5 = [v2 initWithSubsystem:v3 category:v4];

  return v5;
}

void sub_254296B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_254296A30(a4, a5);
  v7 = sub_2542AD70C();
  [v6 ulog:a1 message:v7];
}

unint64_t sub_254296BE8(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Loader();
  sub_254296B0C();
  return 0xD000000000000020;
}

uint64_t sub_254296C1C(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setMaximumFractionDigits_];
  if (a1 >= 0.001)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v5 = [v2 stringFromNumber_];

    if (v5)
    {
      v6 = sub_2542AD71C();

      v7 = v6;
      MEMORY[0x259C07F10](115, 0xE100000000000000);
    }

    else
    {
      v7 = 0;
      sub_2542AD81C();
    }

    return v7;
  }

  else
  {

    return 0x736D31203CLL;
  }
}

uint64_t sub_254296D70()
{
  *(v1 + 88) = v0;
  *(v1 + 96) = *v0;
  return MEMORY[0x2822009F8](sub_254296DB8, v0, 0);
}

uint64_t sub_254296DB8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  sub_2542AD8AC();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD000000000000021, 0x80000002542B0150);
  v3 = *(v2 + 144);
  *(v0 + 16) = *(v2 + 128);
  *(v0 + 32) = v3;
  sub_2542AD8CC();
  sub_254296B28(60, *(v0 + 40), *(v0 + 48), v1, &off_2866408A0);

  v4 = *(v2 + 128);
  if (*(v2 + 144) <= 1u)
  {
    if (!*(v2 + 144))
    {
      v5 = *(*(v0 + 88) + 168);
      if ((v5 & 0x8000000000000000) != 0 || v5 < v4)
      {
        v6 = swift_task_alloc();
        *(v0 + 120) = v6;
        *v6 = v0;
        v7 = sub_2542972EC;
LABEL_16:
        v6[1] = v7;
        v21 = *(v0 + 88);

        return sub_2542977D8();
      }

      goto LABEL_9;
    }

    v9 = *(v0 + 88);
    goto LABEL_11;
  }

  v8 = *(v2 + 136);
  if (*(v2 + 144) == 2)
  {
    v9 = *(v0 + 88);
    v10 = *(v9 + 168);
    if ((v10 & 0x8000000000000000) == 0 && v10 >= v8)
    {
LABEL_9:
      sub_254298F54();
      v12 = swift_allocError();
      v13 = 2;
LABEL_13:
      *v11 = v13;
      swift_willThrow();
      sub_2542AD8AC();
      *(v0 + 56) = 0;
      *(v0 + 64) = 0xE000000000000000;
      MEMORY[0x259C07F10](0xD000000000000021, 0x80000002542B0180);
      *(v0 + 72) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
      sub_2542AD8CC();
      v15 = *(v0 + 56);
      v14 = *(v0 + 64);
      *(v0 + 80) = type metadata accessor for XPCConnectionManager();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5F0, &unk_2542AFA30);
      sub_2542AD72C();
      v16 = objc_allocWithZone(MEMORY[0x277D02878]);
      v17 = sub_2542AD70C();
      v18 = sub_2542AD70C();

      v19 = [v16 initWithSubsystem:v17 category:v18];

      v20 = sub_2542AD70C();

      [v19 ulog:60 message:v20];

      goto LABEL_20;
    }

LABEL_11:
    if (!*(v9 + 160))
    {
      v23 = sub_254297B68(*(v2 + 128));
      v24 = *(v9 + 160);
      *(v9 + 160) = v23;

      goto LABEL_20;
    }

    sub_254298F54();
    v12 = swift_allocError();
    v13 = 1;
    goto LABEL_13;
  }

  if (!(v4 | v8))
  {
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v7 = sub_2542971B8;
    goto LABEL_16;
  }

LABEL_20:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2542971B8()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_254297420, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2542972EC()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_2542975FC, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_254297420()
{
  v1 = v0[14];
  sub_2542AD8AC();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD000000000000021, 0x80000002542B0180);
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v2 = v0[7];
  v3 = v0[8];
  v0[10] = type metadata accessor for XPCConnectionManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5F0, &unk_2542AFA30);
  sub_2542AD72C();
  v4 = objc_allocWithZone(MEMORY[0x277D02878]);
  v5 = sub_2542AD70C();
  v6 = sub_2542AD70C();

  v7 = [v4 initWithSubsystem:v5 category:v6];

  v8 = sub_2542AD70C();

  [v7 ulog:60 message:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2542975FC()
{
  v1 = v0[16];
  sub_2542AD8AC();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD000000000000021, 0x80000002542B0180);
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v2 = v0[7];
  v3 = v0[8];
  v0[10] = type metadata accessor for XPCConnectionManager();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5F0, &unk_2542AFA30);
  sub_2542AD72C();
  v4 = objc_allocWithZone(MEMORY[0x277D02878]);
  v5 = sub_2542AD70C();
  v6 = sub_2542AD70C();

  v7 = [v4 initWithSubsystem:v5 category:v6];

  v8 = sub_2542AD70C();

  [v7 ulog:60 message:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2542977F8()
{
  v1 = v0[3];
  sub_2542AD8AC();

  v5 = *(v1 + 168);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[3];
    v0[2] = v7;
    v9 = sub_2542AD90C();
    MEMORY[0x259C07F10](v9);

    MEMORY[0x259C07F10](41, 0xE100000000000000);
    sub_2542A6CD8(0xD000000000000015, 0x80000002542B0130);

    v10 = *(v8 + 160);
    *(v8 + 160) = 0;

    sub_2542AD7BC();
    v0[4] = sub_2542AD7AC();
    v11 = sub_2542AD79C();
    v13 = v12;
    v2 = sub_254297944;
    v3 = v11;
    v4 = v13;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_254297944()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v2 + 152);
    *(v2 + 152) = 0;
  }

  v5 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_2542979CC, v5, 0);
}

void sub_2542979CC()
{
  v2 = *(v0 + 24);
  v3 = *(v2 + 168);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 168) = v5;
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_254297A74;
    v7 = *(v0 + 24);

    sub_254298478();
  }
}

uint64_t sub_254297A74()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_254297B68(double a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2542AD8AC();
  MEMORY[0x259C07F10](0xD000000000000017, 0x80000002542B0110);
  sub_2542AD81C();
  MEMORY[0x259C07F10](0x73646E6F63657320, 0xE800000000000000);
  sub_2542A6CD8(v9, v10);

  v5 = sub_2542AD7DC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = a1;
  *(v7 + 40) = v6;
  return sub_25429820C(0, 0, v4, &unk_2542AE918, v7);
}

uint64_t sub_254297D1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  return MEMORY[0x2822009F8](sub_254297D40, 0, 0);
}

uint64_t sub_254297D40(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  *v6 = v1;
  v6[1] = sub_254297E28;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_254297E28()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_254297F5C, 0, 0);
  }
}

uint64_t sub_254297F5C()
{
  v1 = v0[8];
  sub_2542AD7FC();
  if (v1)
  {
    v2 = v0[1];
LABEL_3:

    return v2();
  }

  v4 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
    v2 = v0[1];
    goto LABEL_3;
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_25429806C;

  return sub_2542977D8();
}

uint64_t sub_25429806C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2542981A8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2542981A8()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25429820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_2542992CC(a3, v23 - v9);
  v11 = sub_2542AD7DC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25429933C(v10);
  }

  else
  {
    sub_2542AD7CC();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2542AD79C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2542AD73C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_25429933C(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25429933C(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_254298478()
{
  v1[8] = v0;
  v1[9] = *v0;
  sub_2542AD7BC();
  v1[10] = sub_2542AD7AC();
  v3 = sub_2542AD79C();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_254298538, v3, v2);
}

uint64_t sub_254298538()
{
  v1 = v0[8];
  if (*(v1 + 152))
  {
    v2 = v0[10];

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_2542A6CD8(0x676E697472617453, 0xE800000000000000);

    return MEMORY[0x2822009F8](sub_2542985F8, v1, 0);
  }
}

uint64_t sub_2542985F8()
{
  v1 = v0[8];
  v0[13] = *(v1 + 112);
  v0[14] = *(v1 + 120);
  v2 = v0[11];
  v3 = v0[12];
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_254298680, v2, v3);
}

uint64_t sub_254298680()
{
  v1 = v0[13];
  v2 = v0[10];

  if (v1)
  {
    v4 = v0[13];
    v3 = v0[14];
    ObjectType = swift_getObjectType();
    v6 = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    v7 = v0[8];
    v8 = v0[9];
    v0[6] = sub_254298ED8;
    v0[7] = v7;
    v9 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2542AD3F8;
    v0[5] = &block_descriptor;
    v10 = _Block_copy(v0 + 2);
    v11 = v0[7];

    [v6 setInterruptionHandler_];
    _Block_release(v10);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v0[6] = sub_254298F08;
    v0[7] = v12;
    v0[2] = v9;
    v0[3] = 1107296256;
    v0[4] = sub_2542AD3F8;
    v0[5] = &block_descriptor_25;
    v13 = _Block_copy(v0 + 2);
    v14 = v0[7];

    [v6 setInvalidationHandler_];
    _Block_release(v13);
    [v6 resume];
    sub_2542A6CD8(0xD000000000000012, 0x80000002542B00F0);
    v15 = *(v7 + 152);
    *(v7 + 152) = v6;
  }

  else
  {
    sub_254298F54();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_2542988D0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v9 - v1;
  v3 = sub_2542AD7DC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_2542AD7BC();

  v5 = sub_2542AD7AC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_25429F47C(0, 0, v2, &unk_2542AE908, v6);
}

uint64_t sub_254298A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2542AD7BC();
  v4[7] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_254298ABC, v6, v5);
}

uint64_t sub_254298ABC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_254298BC0;

    return sub_254296D70();
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_254298BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_254298D04, v5, v4);
}

uint64_t sub_254298D04()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_254298D78()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  v2 = *(v0 + 160);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ReconnectPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_254298E88(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_254298EA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254298F54()
{
  result = qword_27F5DD5D8;
  if (!qword_27F5DD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD5D8);
  }

  return result;
}

uint64_t sub_254298FA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_254298FE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254299020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542990D4;

  return sub_254298A24(a1, v4, v5, v6);
}

uint64_t sub_2542990D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2542991C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254299208(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2542990D4;

  return sub_254297D1C(v6, a1, v4, v5, v7);
}

uint64_t sub_2542992CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25429933C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for XPCConnectionManager.ManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCConnectionManager.ManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254299514()
{
  result = qword_27F5DD5F8;
  if (!qword_27F5DD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD5F8);
  }

  return result;
}

uint64_t sub_25429957C()
{
  v1 = *v0;
  sub_2542AD99C();
  MEMORY[0x259C08160](v1);
  return sub_2542AD9BC();
}

uint64_t sub_2542995F0()
{
  v1 = *v0;
  sub_2542AD99C();
  MEMORY[0x259C08160](v1);
  return sub_2542AD9BC();
}

id sub_254299664()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2542AD4DC();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2542997A0(uint64_t a1, int a2)
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

uint64_t sub_2542997E8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_25429984C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_254299894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22HomePlatformSettingsUI15LocalizedStringVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22HomePlatformSettingsUI14StatusInfoViewV0E0O(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_254299984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD610, &qword_2542AEC78);
  v3 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v113 = &v92 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD618, &qword_2542AEC80);
  v5 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v109 = (&v92 - v6);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD620, &qword_2542AEC88);
  v7 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v110 = &v92 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD628, &qword_2542AEC90);
  v9 = (*(*(v108 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = &v92 - v10;
  v12 = sub_2542AD60C();
  v101 = *(v12 - 8);
  v13 = v101[8];
  (MEMORY[0x28223BE20])();
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD630, &qword_2542AEC98);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v20 = &v92 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD638, &qword_2542AECA0) - 8) + 64);
  v22 = (MEMORY[0x28223BE20])();
  v23 = MEMORY[0x28223BE20](v22);
  v27 = &v92 - v26;
  v28 = *a1;
  v29 = *(a1 + 8);
  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v32 = *(a1 + 32);
  if (*(a1 + 80))
  {
    if (*(a1 + 80) == 1)
    {
      v102 = *(a1 + 16);
      v103 = v28;
      v104 = v32;
      v105 = v30;
      v33 = *(a1 + 40);
      v34 = *(a1 + 48);
      v35 = *(a1 + 56);
      v36 = *(a1 + 64);
      v37 = *(a1 + 72);
      v100 = v33;
      v101 = v37;
      v106 = v29;
      v98 = v36;
      v99 = v35;
      v97 = v34;
      sub_25429A940(a1, &v133);
      if (v29)
      {
        v38 = v104;
        sub_25429AA98(v103, v29, v102, v105, v104);
        v96 = v38;

        v39 = sub_2542AD64C();
        v94 = v40;
        v95 = v39;
        v42 = v41;
        v93 = v43;
        KeyPath = swift_getKeyPath();
        v45 = sub_2542AD63C();
        v46 = swift_getKeyPath();
        v47 = v42 & 1;
        LOBYTE(v133) = v42 & 1;
        v48 = sub_2542AD69C();
        v29 = swift_getKeyPath();

        *&v150 = v95;
        *(&v150 + 1) = v94;
        LOBYTE(v151) = v47;
        *(&v151 + 1) = v93;
        *&v152 = KeyPath;
        v36 = v98;
        v35 = v99;
        BYTE8(v152) = 1;
        *&v153 = v46;
        v33 = v100;
        *(&v153 + 1) = v45;
        v34 = v97;
      }

      else
      {
        v48 = 0;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
      }

      *&v154 = v29;
      *(&v154 + 1) = v48;
      v61 = v101;
      if (v34)
      {
        sub_25429AA98(v33, v34, v35, v36, v101);
        v96 = v61;

        v62 = sub_2542AD64C();
        v94 = v63;
        v95 = v62;
        v65 = v64;
        v93 = v66;
        v67 = swift_getKeyPath();
        v68 = sub_2542AD62C();
        v69 = swift_getKeyPath();
        v70 = v65 & 1;
        LOBYTE(v133) = v65 & 1;
        v71 = sub_2542AD69C();
        v72 = swift_getKeyPath();

        *&v145 = v95;
        *(&v145 + 1) = v94;
        LOBYTE(v146) = v70;
        *(&v146 + 1) = v93;
        *&v147 = v67;
        BYTE8(v147) = 1;
        *&v148 = v69;
        *(&v148 + 1) = v68;
      }

      else
      {
        v72 = 0;
        v71 = 0;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
      }

      *&v149 = v72;
      *(&v149 + 1) = v71;
      v128 = v152;
      v129 = v153;
      v126 = v150;
      v127 = v151;
      v143[3] = v148;
      v143[4] = v149;
      v143[1] = v146;
      v143[2] = v147;
      v130 = v154;
      v131[0] = v150;
      v131[3] = v153;
      v131[4] = v154;
      v131[1] = v151;
      v131[2] = v152;
      v118 = v152;
      v119 = v153;
      v116 = v150;
      v117 = v151;
      v132[2] = v147;
      v132[3] = v148;
      v132[0] = v145;
      v132[1] = v146;
      v120 = v154;
      v121 = v145;
      v124 = v148;
      v125 = v149;
      v122 = v146;
      v123 = v147;
      v132[4] = v149;
      v133 = v150;
      v136 = v153;
      v137 = v154;
      v134 = v151;
      v135 = v152;
      v142 = v149;
      v143[0] = v145;
      v140 = v147;
      v141 = v148;
      v138 = v145;
      v139 = v146;
      sub_25429A978(&v150, v115, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429A978(&v145, v115, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429A978(v131, v115, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429A978(v132, v115, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429A9E0(v143, &qword_27F5DD660, &qword_2542AECB0);
      v144[2] = v128;
      v144[3] = v129;
      v144[4] = v130;
      v144[0] = v126;
      v144[1] = v127;
      sub_25429A9E0(v144, &qword_27F5DD660, &qword_2542AECB0);
      v73 = v123;
      v74 = v109;
      v109[6] = v122;
      v74[7] = v73;
      v75 = v125;
      v74[8] = v124;
      v74[9] = v75;
      v76 = v119;
      v74[2] = v118;
      v74[3] = v76;
      v77 = v121;
      v74[4] = v120;
      v74[5] = v77;
      v78 = v117;
      *v74 = v116;
      v74[1] = v78;
      swift_storeEnumTagMultiPayload();
      sub_25429A978(&v133, v115, &qword_27F5DD668, &qword_2542AECB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD658, &qword_2542AECA8);
      sub_25429AE18(&qword_27F5DD648, &qword_27F5DD628, &qword_2542AEC90);
      sub_25429AE18(&qword_27F5DD650, &qword_27F5DD658, &qword_2542AECA8);
      v79 = v110;
      sub_2542AD5EC();
      sub_25429A978(v79, v113, &qword_27F5DD620, &qword_2542AEC88);
      swift_storeEnumTagMultiPayload();
      sub_25429A818();
      sub_2542AD5EC();
      sub_25429A9E0(&v133, &qword_27F5DD668, &qword_2542AECB8);
      sub_25429A9E0(&v145, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429A9E0(&v150, &qword_27F5DD660, &qword_2542AECB0);
      sub_25429AA40(v100, v97, v99, v98, v101);
      sub_25429AA40(v103, v106, v102, v105, v104);
      return sub_25429A9E0(v79, &qword_27F5DD620, &qword_2542AEC88);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_25429A818();
      return sub_2542AD5EC();
    }
  }

  else
  {
    v96 = v25;
    v97 = v24;
    v99 = v23;
    v100 = v11;
    v102 = v31;
    v103 = v28;
    v105 = v30;
    v106 = v29;
    v49 = v27;
    v104 = v32;
    sub_25429AA98(v28, v106, v31, v30, v32);
    sub_2542AD53C();
    sub_2542AD5FC();
    sub_25429AE18(&qword_27F5DD670, &qword_27F5DD630, &qword_2542AEC98);
    sub_25429ABE8();
    v98 = v49;
    sub_2542AD67C();
    (v101[1])(v15, v12);
    (*(v17 + 8))(v20, v16);
    if (v106)
    {
      sub_25429A940(a1, &v133);
      v101 = v104;

      v50 = sub_2542AD64C();
      v103 = v51;
      v104 = v50;
      v53 = v52;
      v102 = v54;
      v95 = swift_getKeyPath();
      v55 = sub_2542AD62C();
      v56 = swift_getKeyPath();
      v57 = v53 & 1;
      LOBYTE(v133) = v53 & 1;
      v58 = sub_2542AD69C();
      v59 = swift_getKeyPath();

      *&v133 = v104;
      *(&v133 + 1) = v103;
      LOBYTE(v134) = v57;
      *(&v134 + 1) = v102;
      *&v135 = v95;
      BYTE8(v135) = 1;
      *&v136 = v56;
      *(&v136 + 1) = v55;
    }

    else
    {
      v59 = 0;
      v58 = 0;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
    }

    *&v137 = v59;
    *(&v137 + 1) = v58;
    v80 = v96;
    v81 = v97;
    v82 = *(v97 + 16);
    v83 = v99;
    (v82)(v96, v98, v99);
    v147 = v135;
    v148 = v136;
    v149 = v137;
    v145 = v133;
    v146 = v134;
    v84 = v100;
    v82();
    v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD680, &qword_2542AED50) + 48));
    v87 = v148;
    v86 = v149;
    v153 = v148;
    v154 = v149;
    v89 = v146;
    v88 = v147;
    v151 = v146;
    v152 = v147;
    v90 = v145;
    v150 = v145;
    v85[2] = v147;
    v85[3] = v87;
    v85[4] = v86;
    *v85 = v90;
    v85[1] = v89;
    v115[3] = v87;
    v115[4] = v86;
    v115[1] = v89;
    v115[2] = v88;
    v115[0] = v90;
    sub_25429A978(&v133, v144, &qword_27F5DD660, &qword_2542AECB0);
    sub_25429A978(&v150, v144, &qword_27F5DD660, &qword_2542AECB0);
    sub_25429A9E0(v115, &qword_27F5DD660, &qword_2542AECB0);
    v106 = *(v81 + 8);
    v106(v80, v83);
    sub_25429A978(v84, v109, &qword_27F5DD628, &qword_2542AEC90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD658, &qword_2542AECA8);
    sub_25429AE18(&qword_27F5DD648, &qword_27F5DD628, &qword_2542AEC90);
    sub_25429AE18(&qword_27F5DD650, &qword_27F5DD658, &qword_2542AECA8);
    v91 = v110;
    sub_2542AD5EC();
    sub_25429A978(v91, v113, &qword_27F5DD620, &qword_2542AEC88);
    swift_storeEnumTagMultiPayload();
    sub_25429A818();
    sub_2542AD5EC();
    sub_25429A9E0(&v133, &qword_27F5DD660, &qword_2542AECB0);
    sub_25429AC40(a1);
    sub_25429A9E0(v91, &qword_27F5DD620, &qword_2542AEC88);
    sub_25429A9E0(v100, &qword_27F5DD628, &qword_2542AEC90);
    return (v106)(v98, v99);
  }
}

uint64_t sub_25429A73C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v3;
  v17[4] = *(v1 + 64);
  v18 = *(v1 + 80);
  v4 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v4;
  *a1 = sub_2542AD5BC();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD600, &qword_2542AEC68);
  sub_254299984(v17, a1 + *(v5 + 44));
  v6 = sub_2542AD61C();
  sub_2542AD52C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD608, &qword_2542AEC70);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_25429A818()
{
  result = qword_27F5DD640;
  if (!qword_27F5DD640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD620, &qword_2542AEC88);
    sub_25429AE18(&qword_27F5DD648, &qword_27F5DD628, &qword_2542AEC90);
    sub_25429AE18(&qword_27F5DD650, &qword_27F5DD658, &qword_2542AECA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD640);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25429A978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25429A9E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_25429AA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_25429AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

uint64_t sub_25429AAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542AD56C();
  *a1 = result;
  return result;
}

uint64_t sub_25429AB38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2542AD58C();
  *a1 = result;
  return result;
}

uint64_t sub_25429AB64(uint64_t *a1)
{
  v1 = *a1;

  return sub_2542AD59C();
}

uint64_t sub_25429AB90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2542AD54C();
  *a1 = result;
  return result;
}

uint64_t sub_25429ABBC(uint64_t *a1)
{
  v1 = *a1;

  return sub_2542AD55C();
}

unint64_t sub_25429ABE8()
{
  result = qword_27F5DD678;
  if (!qword_27F5DD678)
  {
    sub_2542AD60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD678);
  }

  return result;
}

uint64_t sub_25429AC74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25429ACC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_25429AD1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

unint64_t sub_25429AD60()
{
  result = qword_27F5DD688;
  if (!qword_27F5DD688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD608, &qword_2542AEC70);
    sub_25429AE18(&qword_27F5DD690, &qword_27F5DD698, &qword_2542AEE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD688);
  }

  return result;
}

uint64_t sub_25429AE18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_25429AEC0@<X0>(char **a1@<X8>)
{
  result = sub_25429B0E8();
  *a1 = result;
  return result;
}

char *sub_25429AEE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6B8, qword_2542AEEB8);
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

char *sub_25429AFF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6B0, &qword_2542AEEB0);
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

char *sub_25429B0E8()
{
  v0 = sub_25429AFF4(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_25429AFF4((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_25429AFF4((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 0x80;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v0 = sub_25429AFF4((v1 > 1), v2 + 3, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v0[v5 + 32] = 1;
  if (v3 < (v2 + 4))
  {
    v0 = sub_25429AFF4((v1 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v2 + 4;
  v0[v6 + 32] = -127;
  return v0;
}

uint64_t getEnumTagSinglePayload for DeviceModel.Configuration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceModel.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DeviceModel.Size(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceModel.Size(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25429B560(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25429B5B8()
{
  result = qword_27F5DD6D0;
  if (!qword_27F5DD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD6D0);
  }

  return result;
}

uint64_t sub_25429B62C()
{
  sub_2542AD7BC();
  *(v0 + 96) = sub_2542AD7AC();
  v2 = sub_2542AD79C();

  return MEMORY[0x2822009F8](sub_25429B6C0, v2, v1);
}

uint64_t sub_25429B6C0()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = *(v2 + 152);
  v0[13] = v3;
  v4 = v3;

  return MEMORY[0x2822009F8](sub_25429B738, v2, 0);
}

uint64_t sub_25429B738()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = [v1 remoteObjectProxy];
    sub_2542AD88C();
    swift_unknownObjectRelease();
    sub_25429C9C8((v0 + 2), (v0 + 6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5DD6F0, &qword_2542AEFC0);
    v3 = swift_dynamicCast();
    v4 = v0[13];
    if (v3)
    {

      v5 = v0[10];
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v6 = v0[1];

      return v6(v5);
    }

    sub_25429CA78();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    sub_25429CA78();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_25429B8CC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_25429B95C;

  return sub_25429B60C();
}

uint64_t sub_25429B95C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 152);

    return MEMORY[0x2822009F8](sub_25429BAA4, v8, 0);
  }
}

uint64_t sub_25429BAA4()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_2542AD4EC();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_25429BBD4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6E0, &unk_2542AEFB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542A4820;
  v0[13] = &block_descriptor_32;
  v0[14] = v4;
  [v1 receiveWithCarrySettingsHomeID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25429BBD4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_25429BD5C;
  }

  else
  {
    v5 = sub_25429BCF4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25429BCF4()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_25429BD5C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t sub_25429BF64(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2542AD50C();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  sub_2542AD4FC();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_25429C090;

  return sub_25429B8CC(v8);
}

uint64_t sub_25429C090()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = sub_2542AD4CC();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_25429C27C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = swift_task_alloc();
  v3[21] = v4;
  *v4 = v3;
  v4[1] = sub_25429C310;

  return sub_25429B60C();
}

uint64_t sub_25429C310(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 160);

    return MEMORY[0x2822009F8](sub_25429C458, v8, 0);
  }
}

uint64_t sub_25429C458()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_2542AD4EC();
  v0[23] = v4;
  sub_2542AD50C();
  sub_25429C960();
  v5 = sub_2542AD83C();
  v0[24] = v5;
  v0[2] = v0;
  v0[3] = sub_25429C5B4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6E0, &unk_2542AEFB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542A4820;
  v0[13] = &block_descriptor_0;
  v0[14] = v6;
  [v1 receiveWithCarrySettingsHomeID:v4 identifiers:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25429C5B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_25429C744;
  }

  else
  {
    v5 = sub_25429C6D4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25429C6D4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25429C744()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[25];
  v6 = v0[1];

  return v6();
}

unint64_t sub_25429C960()
{
  result = qword_27F5DD6D8;
  if (!qword_27F5DD6D8)
  {
    sub_2542AD50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD6D8);
  }

  return result;
}

uint64_t sub_25429C9C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25429CA78()
{
  result = qword_27F5DD6E8;
  if (!qword_27F5DD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD6E8);
  }

  return result;
}

uint64_t sub_25429CACC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_2542AD50C();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  sub_2542AD4FC();
  sub_25429C960();
  v10 = sub_2542AD84C();
  v4[7] = v10;

  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_25429CC2C;

  return sub_25429C27C(v9, v10);
}

uint64_t sub_25429CC2C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  (*(v8 + 8))(v7, v9);

  v12 = *(v3 + 48);
  if (v2)
  {
    v13 = sub_2542AD4CC();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 48), 0);
  }

  v15 = v4 + 40;
  v14 = *(v4 + 40);
  _Block_release(*(v15 + 8));

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_25429CE3C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25429CE8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2542990D4;

  return sub_25429CACC(v2, v3, v5, v4);
}

uint64_t sub_25429CF4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25429D22C;

  return sub_2542A58A0(v2, v3, v5);
}

uint64_t sub_25429D010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25429D22C;

  return sub_2542A5988(a1, v4, v5, v7);
}

uint64_t sub_25429D0DC()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25429D124()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25429D22C;

  return sub_25429BF64(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25429D230()
{
  v1[19] = v0;
  sub_2542AD7BC();
  v1[20] = sub_2542AD7AC();
  v3 = sub_2542AD79C();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2822009F8](sub_25429D2C8, v3, v2);
}

uint64_t sub_25429D2C8()
{
  v1 = v0[19];
  sub_2542AD8AC();
  MEMORY[0x259C07F10](0xD000000000000032, 0x80000002542B0410);
  MEMORY[0x259C07F10](*(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID), *(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID + 8));
  sub_2542A6D04(0, 0xE000000000000000);

  v0[23] = mach_absolute_time();
  v2 = objc_opt_self();
  v3 = *(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_query);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25429D47C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD7A0, &qword_2542AF078);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25429D978;
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v2 executeQuery:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25429D47C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25429D584, v2, v1);
}

uint64_t sub_25429D584()
{
  v1 = v0[20];

  v2 = v0[18];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v21 = v0[18];
    }

    result = sub_2542AD8DC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v22 = v0[23];

    sub_2542AD8AC();

    v23 = mach_absolute_time();
    v13 = v23 >= v22;
    result = v23 - v22;
    if (!v13)
    {
      goto LABEL_23;
    }

    UpTicksToSecondsF();
    v25 = sub_254296C1C(v24);
    MEMORY[0x259C07F10](v25);

    v0[10] = type metadata accessor for RemoteViewControllerClient();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD790, &qword_2542AF068);
    sub_2542AD72C();
    v26 = objc_allocWithZone(MEMORY[0x277D02878]);
    v27 = sub_2542AD70C();
    v28 = sub_2542AD70C();

    v29 = [v26 initWithSubsystem:v27 category:v28];

    v30 = sub_2542AD70C();

    [v29 ulog:60 message:v30];

    sub_25429E678();
    swift_allocError();
    swift_willThrow();
    v31 = v0[1];

    return v31();
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C08070](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = v0[19];

  v7 = [objc_allocWithZone(MEMORY[0x277CC5E78]) initWithExtensionIdentity_];
  v8 = [objc_allocWithZone(MEMORY[0x277CC5E70]) initWithConfiguration_];
  v9 = sub_25429D9EC();
  if (v9)
  {
    v10 = v9;
    [v8 setPlaceholderView_];
  }

  v11 = v0[23];
  [v8 setDelegate_];
  sub_2542AD8AC();

  v12 = mach_absolute_time();
  v13 = v12 >= v11;
  result = v12 - v11;
  if (!v13)
  {
    __break(1u);
    goto LABEL_22;
  }

  UpTicksToSecondsF();
  v15 = sub_254296C1C(v14);
  MEMORY[0x259C07F10](v15);

  MEMORY[0x259C07F10](8238, 0xE200000000000000);
  v16 = [v8 description];
  v17 = sub_2542AD71C();
  v19 = v18;

  MEMORY[0x259C07F10](v17, v19);

  sub_2542A6D04(0xD000000000000023, 0x80000002542B0470);

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_25429D978(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_25429E710();
  **(*(v1 + 64) + 40) = sub_2542AD77C();

  return MEMORY[0x282200948](v1);
}

id sub_25429D9EC()
{
  v1 = v0;
  v31 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v32 = 2;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD798, &qword_2542AF070));
  v3 = sub_2542AD5CC();
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    v7 = OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl;
    v8 = *(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl);
    *(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl) = v3;
    v9 = v3;

    if (qword_27F5DD598 != -1)
    {
      swift_once();
    }

    v11 = qword_27F5DEB98;
    v10 = unk_27F5DEBA0;
    v12 = byte_27F5DEBA8;
    v13 = qword_27F5DEBB0;
    v14 = qword_27F5DEBB8;
    v15 = qword_27F5DEBB8;

    v16 = sub_2542AD5DC();
    v18 = v17[1];
    v27 = *v17;
    v28 = v18;
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v32 = *(v17 + 80);
    v31 = v21;
    v29 = v19;
    v30 = v20;
    *v17 = v11;
    *(v17 + 1) = v10;
    *(v17 + 2) = v12;
    *(v17 + 3) = v13;
    *(v17 + 4) = v14;
    v22 = v25;
    *(v17 + 40) = v24;
    *(v17 + 9) = v26;
    *(v17 + 56) = v22;
    *(v17 + 80) = 0;
    sub_25429AC40(&v27);
    v16(v23, 0);

    result = *(v1 + v7);
    if (result)
    {
      return [result view];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25429DC14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewControllerClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25429DED4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock;
  v3 = *(v0 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    else
    {

      v6 = mach_absolute_time();
      *(v3 + 40) = v6;
      *(v3 + 48) = 0;
      *(v3 + 16) = 1;
      if (*(v3 + 32))
      {

        v5 = 0xE700000000000000;
        v4 = 0x646570706F7473;
      }

      else
      {
        v7 = *(v3 + 24);
        v8 = v6 >= v7;
        result = v6 - v7;
        if (!v8)
        {
          __break(1u);
          return result;
        }

        UpTicksToSecondsF();
        v4 = sub_254296C1C(v10);
        v5 = v11;
      }
    }
  }

  else
  {
    v5 = 0xE100000000000000;
    v4 = 63;
  }

  v12 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_2542AD8AC();

  MEMORY[0x259C07F10](v4, v5);

  sub_2542A6D04(0xD000000000000035, 0x80000002542B03D0);

  v13 = v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25429E080(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    v1 = sub_2542AD94C();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x259C07F10](v1, v3);

  sub_2542A6D04(0xD00000000000002FLL, 0x80000002542B03A0);
}

void sub_25429E118(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock;
  v5 = *(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {

      v8 = mach_absolute_time();
      *(v5 + 40) = v8;
      *(v5 + 48) = 0;
      *(v5 + 16) = 1;
      if (*(v5 + 32))
      {

        v7 = 0xE700000000000000;
        v6 = 0x646570706F7473;
      }

      else
      {
        if (v8 < *(v5 + 24))
        {
          __break(1u);
          return;
        }

        UpTicksToSecondsF();
        v6 = sub_254296C1C(v9);
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0xE100000000000000;
    v6 = 63;
  }

  v11 = *(v2 + v4);
  *(v2 + v4) = 0;

  sub_2542AD8AC();

  *&v47[0] = 0xD00000000000002FLL;
  *(&v47[0] + 1) = 0x80000002542B02E0;
  if (a1)
  {
    swift_getErrorValue();
    v12 = sub_2542AD94C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x259C07F10](v12, v14);

  MEMORY[0x259C07F10](0x726170657270202CLL, 0xEF203A6E6F697461);
  MEMORY[0x259C07F10](v6, v7);

  *&v47[0] = type metadata accessor for RemoteViewControllerClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD790, &qword_2542AF068);
  sub_2542AD72C();
  v15 = objc_allocWithZone(MEMORY[0x277D02878]);
  v16 = sub_2542AD70C();
  v17 = sub_2542AD70C();

  v18 = [v15 initWithSubsystem:v16 category:v17];

  v19 = sub_2542AD70C();

  [v18 ulog:90 message:v19];

  v20 = *(v2 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl);
  if (v20)
  {
    v21 = v20;
    sub_2542A6D04(0xD000000000000020, 0x80000002542B0370);
    if (qword_27F5DD5A0 != -1)
    {
      swift_once();
    }

    v22 = *algn_27F5DEBC8;
    v44 = byte_27F5DEBD0;
    v45 = qword_27F5DEBC0;
    v23 = qword_27F5DEBD8;
    v24 = unk_27F5DEBE0;
    v25 = qword_27F5DD5A8;

    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v28 = qword_27F5DEBE8;
    v27 = unk_27F5DEBF0;
    v29 = byte_27F5DEBF8;
    v30 = qword_27F5DEC00;
    v31 = qword_27F5DEC08;
    v32 = qword_27F5DEC08;

    v33 = sub_2542AD5DC();
    v35 = *v34;
    v47[1] = v34[1];
    v36 = v34[2];
    v37 = v34[3];
    v38 = v34[4];
    v48 = *(v34 + 80);
    v47[3] = v37;
    v47[4] = v38;
    v47[2] = v36;
    v47[0] = v35;
    *v34 = v45;
    *(v34 + 1) = v22;
    *(v34 + 2) = v44;
    *(v34 + 3) = v23;
    *(v34 + 4) = v24;
    *(v34 + 5) = v28;
    *(v34 + 6) = v27;
    *(v34 + 7) = v29;
    *(v34 + 8) = v30;
    *(v34 + 9) = v31;
    *(v34 + 80) = 1;
    sub_25429AC40(v47);
    v33(v46, 0);
  }

  else
  {
    sub_2542AD72C();
    v39 = objc_allocWithZone(MEMORY[0x277D02878]);
    v40 = sub_2542AD70C();
    v41 = sub_2542AD70C();

    v42 = [v39 initWithSubsystem:v40 category:v41];

    v43 = sub_2542AD70C();
    [v42 ulog:90 message:v43];
  }
}

uint64_t sub_25429E5C8()
{
  sub_2542A6D04(0xD000000000000027, 0x80000002542B02B0);
  type metadata accessor for Stopwatch();
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 24) = mach_absolute_time();
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock);
  *(v0 + OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock) = v1;
}

unint64_t sub_25429E678()
{
  result = qword_27F5DD7A8;
  if (!qword_27F5DD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD7A8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25429E710()
{
  result = qword_27F5DD7B0;
  if (!qword_27F5DD7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DD7B0);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.wrap(subViewController:)(UIViewController *subViewController)
{
  v3 = [(UIViewController *)subViewController view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [(UIView *)v3 removeFromSuperview];

  [(UIViewController *)subViewController removeFromParentViewController];
  [(UIViewController *)subViewController willMoveToParentViewController:v1];
  [v1 addChildViewController_];
  v5 = [(UIViewController *)subViewController view];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubviewToBounds:v6 with:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

      v9 = [objc_opt_self() systemGroupedBackgroundColor];
      [(UIView *)v6 setBackgroundColor:v9];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:

  [(UIViewController *)subViewController didMoveToParentViewController:v1];
}

void sub_25429E8D4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIViewController.wrap(subViewController:)(v4);
}

id sub_25429E93C(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = a2;
  if (!a2)
  {
    v13 = v6;
  }

  v14 = a2;
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 addSubview_];
  v15 = [a1 topAnchor];
  v16 = [v13 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a3];

  v18 = [v13 rightAnchor];
  v19 = [a1 rightAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:a6];

  v21 = [v13 bottomAnchor];
  v22 = [a1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a5];

  v24 = [a1 leftAnchor];
  v25 = [v13 leftAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:a4];

  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5C0, &qword_2542AE750);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2542AF080;
  *(v28 + 32) = v17;
  *(v28 + 40) = v20;
  *(v28 + 48) = v23;
  *(v28 + 56) = v26;
  sub_254296980();
  v29 = v17;
  v30 = v20;
  v31 = v23;
  v32 = v26;
  v33 = sub_2542AD76C();

  [v27 activateConstraints_];

  return v29;
}

void sub_25429EC00(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v13 = a1;
  v14 = sub_25429E93C(v12, 0, a2, a3, a4, a5);
  v16 = v15;
  v18 = v17;
  v20 = v19;
}

uint64_t sub_25429ECBC()
{
  if (*(v0 + 32) & 1) != 0 || (*(v0 + 48))
  {
    if (*(v0 + 16))
    {
      return 0x646570706F7473;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    result = v3 - v2;
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      UpTicksToSecondsF();
      return sub_254296C1C(v4);
    }
  }

  return result;
}

uint64_t sub_25429ED78()
{
  if (*v0)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

unint64_t sub_25429EDB0()
{
  result = qword_27F5DD820;
  if (!qword_27F5DD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD820);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClientError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25429EF7C()
{
  result = qword_27F5DD828;
  if (!qword_27F5DD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD828);
  }

  return result;
}

uint64_t sub_25429EFD0()
{
  MEMORY[0x259C07F10](v0[4], v0[5]);
  MEMORY[0x259C07F10](34, 0xE100000000000000);
  v1 = sub_25429AEE8(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_25429AEE8((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 574451054;
  *(v4 + 5) = 0xE400000000000000;
  v5 = v0[1];
  if (v5)
  {
    v6 = *v0;
    MEMORY[0x259C07F10](v0[2], v0[3]);
    MEMORY[0x259C07F10](2629666, 0xE300000000000000);
    MEMORY[0x259C07F10](v6, v5);
    MEMORY[0x259C07F10](41, 0xE100000000000000);
    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_25429AEE8((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = 0x223D70756F7267;
    *(v9 + 5) = 0xE700000000000000;
  }

  v10 = v0[9];
  if (v10)
  {
    v11 = v0[8];
    MEMORY[0x259C07F10](v0[10], v0[11]);
    MEMORY[0x259C07F10](2629666, 0xE300000000000000);
    MEMORY[0x259C07F10](v11, v10);
    MEMORY[0x259C07F10](41, 0xE100000000000000);
    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = sub_25429AEE8((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v14 = &v1[16 * v13];
    *(v14 + 4) = 0x223D72696170;
    *(v14 + 5) = 0xE600000000000000;
  }

  v15 = v0[13];
  if (v15)
  {
    v16 = v0[12];
    MEMORY[0x259C07F10](v0[14], v0[15]);
    MEMORY[0x259C07F10](2629666, 0xE300000000000000);
    MEMORY[0x259C07F10](v16, v15);
    MEMORY[0x259C07F10](41, 0xE100000000000000);
    v18 = *(v1 + 2);
    v17 = *(v1 + 3);
    if (v18 >= v17 >> 1)
    {
      v1 = sub_25429AEE8((v17 > 1), v18 + 1, 1, v1);
    }

    *(v1 + 2) = v18 + 1;
    v19 = &v1[16 * v18];
    *(v19 + 4) = 0x223D6D6F6F72;
    *(v19 + 5) = 0xE600000000000000;
  }

  MEMORY[0x259C07F10](v0[6], v0[7]);
  v21 = *(v1 + 2);
  v20 = *(v1 + 3);
  if (v21 >= v20 >> 1)
  {
    v1 = sub_25429AEE8((v20 > 1), v21 + 1, 1, v1);
  }

  *(v1 + 2) = v21 + 1;
  v22 = &v1[16 * v21];
  *(v22 + 4) = 1030513773;
  *(v22 + 5) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD830, &qword_2542AF288);
  sub_25429F324();
  v23 = sub_2542AD6FC();

  return v23;
}

unint64_t sub_25429F324()
{
  result = qword_27F5DD838;
  if (!qword_27F5DD838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD830, &qword_2542AF288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD838);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SS2id_SS4nametSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_25429F3C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25429F40C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_25429F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2542992CC(a3, v26 - v10);
  v12 = sub_2542AD7DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25429A9E0(v11, &qword_27F5DD5E0, &qword_2542AF3A0);
  }

  else
  {
    sub_2542AD7CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2542AD79C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2542AD73C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD860, &qword_2542AF458);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_25429A9E0(a3, &qword_27F5DD5E0, &qword_2542AF3A0);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25429A9E0(a3, &qword_27F5DD5E0, &qword_2542AF3A0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD860, &qword_2542AF458);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25429F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2542992CC(a3, v27 - v11);
  v13 = sub_2542AD7DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25429A9E0(v12, &qword_27F5DD5E0, &qword_2542AF3A0);
  }

  else
  {
    sub_2542AD7CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2542AD79C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2542AD73C() + 32;
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

      sub_25429A9E0(a3, &qword_27F5DD5E0, &qword_2542AF3A0);

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

  sub_25429A9E0(a3, &qword_27F5DD5E0, &qword_2542AF3A0);
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

char *CarrySettingsViewController.init(withHomeID:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - v6;
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  sub_2542AD8AC();

  *&v63[0] = 0xD000000000000011;
  *(&v63[0] + 1) = 0x80000002542B05C0;
  v7 = sub_2542AD50C();
  sub_2542A3C68(&qword_27F5DD840, MEMORY[0x277CC95F0]);
  v36 = a1;
  v8 = sub_2542AD90C();
  MEMORY[0x259C07F10](v8);

  sub_254296BB0(*&v63[0], *(&v63[0] + 1), ObjectType, &off_286641948);

  v9 = *(v7 - 8);
  (*(v9 + 16))(&v1[OBJC_IVAR____HPSUICarrySettingsViewController_homeID], a1, v7);
  *&v1[OBJC_IVAR____HPSUICarrySettingsViewController_identifiers] = MEMORY[0x277D84FA0];
  v41.receiver = v1;
  v41.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v41, sel_init);
  LOBYTE(v57) = 1;
  v39 = 1;
  v40 = 1;
  *&v42 = 0x6E6F697461727564;
  *(&v42 + 1) = 0xEB00000000636553;
  LODWORD(v43) = 0;
  BYTE4(v43) = 1;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = 0;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = 0x65736143657375;
  *v46 = 0xE700000000000000;
  *&v46[8] = xmmword_2542AF380;
  v47[0] = 0x6E6F697461727564;
  v47[1] = 0xEB00000000636553;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = 0;
  v53 = 1;
  v54 = 0x65736143657375;
  v55 = 0xE700000000000000;
  v56 = xmmword_2542AF380;
  v11 = v10;
  sub_25429FFF4(&v42, v63);
  sub_2542A0050(v47);
  v59 = v44;
  v60 = v45;
  v61 = *v46;
  v62 = *&v46[16];
  v57 = v42;
  v58 = v43;
  v12 = &v11[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  swift_beginAccess();
  v13 = *(v12 + 1);
  v63[0] = *v12;
  v63[1] = v13;
  v14 = *(v12 + 2);
  v15 = *(v12 + 3);
  v16 = *(v12 + 4);
  v64 = *(v12 + 10);
  v63[3] = v15;
  v63[4] = v16;
  v63[2] = v14;
  v17 = v60;
  *(v12 + 2) = v59;
  *(v12 + 3) = v17;
  *(v12 + 4) = v61;
  *(v12 + 10) = v62;
  v18 = v58;
  *v12 = v57;
  *(v12 + 1) = v18;
  sub_25429A9E0(v63, &qword_27F5DD848, &qword_2542AF3A8);
  v19 = type metadata accessor for RemoteViewControllerClient();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_delegate + 8] = 0;
  v21 = swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock] = 0;
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl] = 0;
  *(v21 + 8) = &off_286641130;
  swift_unknownObjectWeakAssign();
  v22 = &v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID];
  *v22 = 0xD00000000000002CLL;
  *(v22 + 1) = 0x80000002542B05E0;
  v23 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v24 = v11;
  v25 = sub_2542AD70C();
  v26 = [v23 initWithExtensionPointIdentifier_];

  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_query] = v26;
  v38.receiver = v20;
  v38.super_class = v19;
  v27 = objc_msgSendSuper2(&v38, sel_init);

  v28 = *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient];
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = v27;

  v29 = sub_2542AD7DC();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v32 = sub_2542AD7AC();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v31;

  sub_25429F780(0, 0, v30, &unk_2542AF3B8, v33);

  (*(v9 + 8))(v36, v7);
  return v24;
}

uint64_t sub_2542A00A4()
{
  MEMORY[0x259C087E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *CarrySettingsViewController.init(withHomeID:homeKitIdentifiers:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v40 - v8;
  *&v67[0] = 0;
  *(&v67[0] + 1) = 0xE000000000000000;
  sub_2542AD8AC();

  *&v67[0] = 0xD000000000000011;
  *(&v67[0] + 1) = 0x80000002542B05C0;
  v9 = sub_2542AD50C();
  v10 = MEMORY[0x277CC95F0];
  sub_2542A3C68(&qword_27F5DD840, MEMORY[0x277CC95F0]);
  v40 = a1;
  v11 = sub_2542AD90C();
  MEMORY[0x259C07F10](v11);

  MEMORY[0x259C07F10](0x6669746E65646920, 0xED00002073726569);
  sub_2542A3C68(&qword_27F5DD6D8, v10);
  v12 = sub_2542AD85C();
  MEMORY[0x259C07F10](v12);

  sub_254296BB0(*&v67[0], *(&v67[0] + 1), ObjectType, &off_286641948);

  v13 = *(v9 - 8);
  (*(v13 + 16))(&v2[OBJC_IVAR____HPSUICarrySettingsViewController_homeID], a1, v9);
  *&v2[OBJC_IVAR____HPSUICarrySettingsViewController_identifiers] = a2;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v45, sel_init);
  LOBYTE(v61) = 1;
  v43 = 1;
  v44 = 1;
  *&v46 = 0x6E6F697461727564;
  *(&v46 + 1) = 0xEB00000000636553;
  LODWORD(v47) = 0;
  BYTE4(v47) = 1;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = 0;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 0x65736143657375;
  *v50 = 0xE700000000000000;
  *&v50[8] = xmmword_2542AF380;
  v51[0] = 0x6E6F697461727564;
  v51[1] = 0xEB00000000636553;
  v52 = 0;
  v53 = 1;
  v54 = 0;
  v55 = 1;
  v56 = 0;
  v57 = 1;
  v58 = 0x65736143657375;
  v59 = 0xE700000000000000;
  v60 = xmmword_2542AF380;
  v15 = v14;
  sub_25429FFF4(&v46, v67);
  sub_2542A0050(v51);
  v63 = v48;
  v64 = v49;
  v65 = *v50;
  v66 = *&v50[16];
  v61 = v46;
  v62 = v47;
  v16 = &v15[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  swift_beginAccess();
  v17 = *(v16 + 1);
  v67[0] = *v16;
  v67[1] = v17;
  v18 = *(v16 + 2);
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v68 = *(v16 + 10);
  v67[3] = v19;
  v67[4] = v20;
  v67[2] = v18;
  v21 = v64;
  *(v16 + 2) = v63;
  *(v16 + 3) = v21;
  *(v16 + 4) = v65;
  *(v16 + 10) = v66;
  v22 = v62;
  *v16 = v61;
  *(v16 + 1) = v22;
  sub_25429A9E0(v67, &qword_27F5DD848, &qword_2542AF3A8);
  v23 = type metadata accessor for RemoteViewControllerClient();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_delegate + 8] = 0;
  v25 = swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock] = 0;
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl] = 0;
  *(v25 + 8) = &off_286641130;
  swift_unknownObjectWeakAssign();
  v26 = &v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID];
  *v26 = 0xD00000000000002CLL;
  *(v26 + 1) = 0x80000002542B05E0;
  v27 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v28 = v15;
  v29 = sub_2542AD70C();
  v30 = [v27 initWithExtensionPointIdentifier_];

  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_query] = v30;
  v42.receiver = v24;
  v42.super_class = v23;
  v31 = objc_msgSendSuper2(&v42, sel_init);

  v32 = *&v28[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient];
  *&v28[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = v31;

  v33 = sub_2542AD7DC();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v36 = sub_2542AD7AC();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v35;

  sub_25429F780(0, 0, v34, &unk_2542AF3C0, v37);

  (*(v13 + 8))(v40, v9);
  return v28;
}

Swift::Void __swiftcall CarrySettingsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [v5 standardAppearance];
    [v5 setScrollEdgeAppearance_];
  }
}

Swift::Void __swiftcall CarrySettingsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setScrollEdgeAppearance_];
  }
}

uint64_t sub_2542A0B30()
{
  v1[2] = v0;
  v2 = sub_2542AD50C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_2542AD7BC();
  v1[6] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_2542A0C24, v6, v5);
}

uint64_t sub_2542A0C24()
{
  v1 = v0[2];
  sub_2542A7D40(0x676E697472617453, 0xEC00000043505820);
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc;
  if (*(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc))
  {
    v3 = v0[6];

    v4 = v0[5];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[2];
    type metadata accessor for XPCConnectionManager();
    v8 = swift_allocObject();
    v0[9] = v8;
    v9 = v7;
    swift_defaultActor_initialize();
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
    *(v8 + 168) = 0;
    *(v8 + 112) = v9;
    *(v8 + 120) = &off_286641140;
    *(v8 + 128) = xmmword_2542AF390;
    *(v8 + 144) = 2;
    v10 = *(v1 + v2);
    *(v1 + v2) = v8;

    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_2542A0DA8;

    return sub_254298478();
  }
}

uint64_t sub_2542A0DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_2542A11FC;
  }

  else
  {
    v7 = sub_2542A0EE4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542A0EE4()
{
  v1 = v0[2];
  (*(v0[4] + 16))(v0[5], v1 + OBJC_IVAR____HPSUICarrySettingsViewController_homeID, v0[3]);
  v2 = *(v1 + OBJC_IVAR____HPSUICarrySettingsViewController_identifiers);
  v0[12] = v2;

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2542A0FC8;
  v4 = v0[9];
  v5 = v0[5];

  return sub_25429C27C(v5, v2);
}

uint64_t sub_2542A0FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 64);
  v10 = *(v2 + 56);
  if (v0)
  {
    v11 = sub_2542A127C;
  }

  else
  {
    v11 = sub_2542A1184;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2542A1184()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2542A11FC()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2542A127C()
{
  v1 = v0[14];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2542A132C()
{
  v1 = OBJC_IVAR____HPSUICarrySettingsViewController_homeID;
  v2 = sub_2542AD50C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____HPSUICarrySettingsViewController_identifiers);
}

id CarrySettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2542A16D0()
{
  sub_2542A7D40(0x6E69676542646964, 0xEF676E6974736F48);
  sub_2542A9768();
  v1 = *(v0 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC);
  if (v1)
  {
    v2 = v1;
    sub_2542A7D40(0xD00000000000001CLL, 0x80000002542B06B0);
    sub_2542A75D0(v2);
  }
}

char *sub_2542A1780()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC];
  if (!v1)
  {
    sub_25429CA78();
    swift_allocError();
    *v7 = 2;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v10[0] = 0;
  v2 = [v1 makeXPCConnectionWithError_];
  v3 = v10[0];
  if (!v2)
  {
    v0 = v10[0];
    sub_2542AD4DC();

    goto LABEL_6;
  }

  v0 = v2;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 interfaceWithProtocol_];
  [v0 setRemoteObjectInterface_];

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_2542A18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2542AD7BC();
  v4[10] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_2542A1980, v6, v5);
}

uint64_t sub_2542A1980()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_2542A1C38;

    return sub_2542A2804();
  }

  else
  {
    v5 = v0[10];

    sub_25429CA78();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_2542AD8AC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x259C07F10](0xD00000000000001ELL, 0x80000002542B06D0);
    v0[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
    sub_2542AD8CC();
    v8 = v0[5];
    v9 = v0[6];
    v0[8] = type metadata accessor for CarrySettingsViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
    sub_2542AD72C();
    v10 = objc_allocWithZone(MEMORY[0x277D02878]);
    v11 = sub_2542AD70C();
    v12 = sub_2542AD70C();

    v13 = [v10 initWithSubsystem:v11 category:v12];

    v14 = sub_2542AD70C();

    [v13 ulog:60 message:v14];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2542A1C38()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_2542A1D74;
  }

  else
  {
    v7 = sub_2542A3DE4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542A1D74()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  sub_2542AD8AC();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD00000000000001ELL, 0x80000002542B06D0);
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v4 = v0[5];
  v5 = v0[6];
  v0[8] = type metadata accessor for CarrySettingsViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
  sub_2542AD72C();
  v6 = objc_allocWithZone(MEMORY[0x277D02878]);
  v7 = sub_2542AD70C();
  v8 = sub_2542AD70C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_2542AD70C();

  [v9 ulog:60 message:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2542A1F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25429D22C;

  return sub_2542A18E8(a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2542A2064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542990D4;

  return sub_2542A18E8(a1, v4, v5, v6);
}

uint64_t sub_2542A2118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2542AD7BC();
  v4[10] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_2542A21B0, v6, v5);
}

uint64_t sub_2542A21B0()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_2542A2468;

    return sub_2542A2C48();
  }

  else
  {
    v5 = v0[10];

    sub_25429CA78();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_2542AD8AC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x259C07F10](0xD00000000000001ELL, 0x80000002542B06D0);
    v0[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
    sub_2542AD8CC();
    v8 = v0[5];
    v9 = v0[6];
    v0[8] = type metadata accessor for BetaEnrollmentViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD868, &qword_2542AFA40);
    sub_2542AD72C();
    v10 = objc_allocWithZone(MEMORY[0x277D02878]);
    v11 = sub_2542AD70C();
    v12 = sub_2542AD70C();

    v13 = [v10 initWithSubsystem:v11 category:v12];

    v14 = sub_2542AD70C();

    [v13 ulog:60 message:v14];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2542A2468()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_2542A260C;
  }

  else
  {
    v7 = sub_2542A25A4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542A25A4()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2542A260C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  sub_2542AD8AC();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD00000000000001ELL, 0x80000002542B06D0);
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v4 = v0[5];
  v5 = v0[6];
  v0[8] = type metadata accessor for BetaEnrollmentViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD868, &qword_2542AFA40);
  sub_2542AD72C();
  v6 = objc_allocWithZone(MEMORY[0x277D02878]);
  v7 = sub_2542AD70C();
  v8 = sub_2542AD70C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_2542AD70C();

  [v9 ulog:60 message:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2542A2804()
{
  v1[6] = v0;
  sub_2542AD7BC();
  v1[7] = sub_2542AD7AC();
  v3 = sub_2542AD79C();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_2542A289C, v3, v2);
}

uint64_t sub_2542A289C()
{
  v1 = v0[6];
  sub_2542A7D40(0xD00000000000001ELL, 0x80000002542B06F0);
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
  [*(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner) setHidden_];
  [*(v1 + v2) startAnimating];
  type metadata accessor for BaseExtensionViewController();
  v4 = sub_2542A756C();
  if (*(v3 + 8))
  {
    v5 = v3;
    sub_2542A7D3C(0x7472617453, 0xE500000000000000);
    *(v5 + 24) = mach_absolute_time();
    *(v5 + 32) = 0;
  }

  (v4)(v0 + 2, 0);
  v6 = *(v0[6] + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient);
  v0[10] = v6;
  if (v6)
  {
    v6;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_2542A2A7C;

    return sub_25429D230();
  }

  else
  {
    v9 = v0[7];

    sub_25429CA78();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2542A2A7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_2542A3DE8;
  }

  else
  {

    *(v4 + 104) = a1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_2542A2BAC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2542A2BAC()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];

  v4 = *(v3 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC);
  *(v3 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC) = v1;
  v5 = v1;

  sub_2542A75D0(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2542A2C48()
{
  v1[6] = v0;
  sub_2542AD7BC();
  v1[7] = sub_2542AD7AC();
  v3 = sub_2542AD79C();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_2542A2CE0, v3, v2);
}

uint64_t sub_2542A2CE0()
{
  v1 = v0[6];
  sub_2542A6E6C(0xD00000000000001ELL, 0x80000002542B06F0);
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
  [*(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner) setHidden_];
  [*(v1 + v2) startAnimating];
  type metadata accessor for BaseExtensionViewController();
  v4 = sub_2542A756C();
  if (*(v3 + 8))
  {
    v5 = v3;
    sub_2542A7D3C(0x7472617453, 0xE500000000000000);
    *(v5 + 24) = mach_absolute_time();
    *(v5 + 32) = 0;
  }

  (v4)(v0 + 2, 0);
  v6 = *(v0[6] + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient);
  v0[10] = v6;
  if (v6)
  {
    v6;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_2542A2EC0;

    return sub_25429D230();
  }

  else
  {
    v9 = v0[7];

    sub_25429CA78();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2542A2EC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_2542A308C;
  }

  else
  {

    *(v4 + 104) = a1;
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = sub_2542A2FF0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2542A2FF0()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];

  v4 = *(v3 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC);
  *(v3 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC) = v1;
  v5 = v1;

  sub_2542A7B98(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2542A308C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2542A30F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542A31F0;

  return v7(a1);
}

uint64_t sub_2542A31F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2542A32E8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2542A33DC;

  return v6(v2 + 32);
}

uint64_t sub_2542A33DC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s22HomePlatformSettingsUI05CarryC14ViewControllerC010shouldShoweC6Button03forA2ID14withCompletiony10Foundation4UUIDV_ySb_So7NSErrorCSgtYbctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v6 = sub_2542AD6AC();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2542AD6CC();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2542AD70C();
  v15 = MGGetBoolAnswer();

  aBlock = 0;
  v27 = 0xE000000000000000;
  sub_2542AD8AC();

  aBlock = 0xD00000000000002DLL;
  v27 = 0x80000002542B0710;
  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x259C07F10](v16, v17);

  sub_254296BB0(aBlock, v27, v4, &off_286641948);

  sub_2542A3B98();
  v18 = sub_2542AD86C();
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = a3;
  *(v19 + 32) = v15;
  v30 = sub_2542A3C1C;
  v31 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2542AD3F8;
  v29 = &block_descriptor_2;
  v20 = _Block_copy(&aBlock);

  sub_2542AD6BC();
  v25 = MEMORY[0x277D84F90];
  sub_2542A3C68(&qword_27F5DD878, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD880, &qword_2542AF478);
  sub_2542A3CB0();
  sub_2542AD89C();
  MEMORY[0x259C08030](0, v13, v9, v20);
  _Block_release(v20);

  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

uint64_t type metadata accessor for CarrySettingsViewController()
{
  result = qword_27F5DD850;
  if (!qword_27F5DD850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542A38D4()
{
  result = sub_2542AD50C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2542A39B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2542A39F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2542A3A28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25429D22C;

  return sub_2542A32E8(a1, v5);
}

uint64_t sub_2542A3AE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2542990D4;

  return sub_2542A32E8(a1, v5);
}

unint64_t sub_2542A3B98()
{
  result = qword_27F5DD870;
  if (!qword_27F5DD870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DD870);
  }

  return result;
}

uint64_t sub_2542A3BE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2542A3C68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2542A3CB0()
{
  result = qword_27F5DD888;
  if (!qword_27F5DD888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD880, &qword_2542AF478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD888);
  }

  return result;
}

uint64_t sub_2542A3D14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25429D22C;

  return sub_2542A30F8(a1, v5);
}

uint64_t sub_2542A3E04(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Loader.CacheEntry();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2542A3EAC()
{
  v1 = *v0;
  v2 = v0[15];
  sub_2542A4338(v0[14]);
  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Loader.CacheEntry();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2542A3F48()
{
  sub_2542A3EAC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2542A3FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DD5E8, &unk_2542AE920);
  result = sub_2542AD7EC();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2542A404C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_2542A4164(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_2542A4338(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2542A4378(uint64_t a1, uint64_t a2)
{
  sub_254296BB0(0xD000000000000036, 0x80000002542B0820, v2, &off_2866413C8);
  v5 = [swift_getObjCClassFromMetadata() sharedManager];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v2;
    v9[4] = sub_2542A47B0;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_2542A46F8;
    v9[3] = &block_descriptor_3;
    v8 = _Block_copy(v9);

    [v6 queryProgramsForSystemAccountsWithPlatforms:16 disableBuildPrefixMatching:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2542A44B8(unint64_t a1, uint64_t a2, uint64_t (*a3)(_BOOL8), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_2542AD8AC();
    MEMORY[0x259C07F10](0xD00000000000002CLL, 0x80000002542B0880);
    type metadata accessor for SDBetaManagerErrorType();
    sub_2542AD8CC();
    sub_254296B28(60, 0, 0xE000000000000000, a5, &off_2866413C8);
  }

  if (a1)
  {
    sub_2542AD8AC();

    if (a1 >> 62)
    {
      sub_2542AD8DC();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = sub_2542AD90C();
    MEMORY[0x259C07F10](v9);

    MEMORY[0x259C07F10](0xD000000000000010, 0x80000002542B08D0);
    v10 = sub_2542A47D4();
    v11 = MEMORY[0x259C07F40](a1, v10);
    MEMORY[0x259C07F10](v11);

    sub_254296BB0(0x20646E756F46, 0xE600000000000000, a5, &off_2866413C8);

    if (a1 >> 62)
    {
      v12 = sub_2542AD8DC();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 != 0;
  }

  else
  {
    sub_254296B28(60, 0xD00000000000001ELL, 0x80000002542B08B0, a5, &off_2866413C8);
    v13 = 0;
  }

  return a3(v13);
}

uint64_t sub_2542A46F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2542A47D4();
    v4 = sub_2542AD77C();
  }

  v6(v4, a3);
}

uint64_t sub_2542A4778()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2542A47D4()
{
  result = qword_27F5DD998;
  if (!qword_27F5DD998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DD998);
  }

  return result;
}

uint64_t sub_2542A4820(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2542A48EC()
{
  sub_2542AD7BC();
  *(v0 + 96) = sub_2542AD7AC();
  v2 = sub_2542AD79C();

  return MEMORY[0x2822009F8](sub_2542A4980, v2, v1);
}

uint64_t sub_2542A4980()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = *(v2 + 152);
  v0[13] = v3;
  v4 = v3;

  return MEMORY[0x2822009F8](sub_2542A49F8, v2, 0);
}

uint64_t sub_2542A49F8()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = [v1 remoteObjectProxy];
    sub_2542AD88C();
    swift_unknownObjectRelease();
    sub_25429C9C8((v0 + 2), (v0 + 6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD9A0, &qword_2542AF610);
    v3 = swift_dynamicCast();
    v4 = v0[13];
    if (v3)
    {

      v5 = v0[10];
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v6 = v0[1];

      return v6(v5);
    }

    sub_25429CA78();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    sub_25429CA78();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2542A4B8C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_2542A4C1C;

  return sub_2542A48CC();
}

uint64_t sub_2542A4C1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *v2;
  *(*v2 + 168) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 152);

    return MEMORY[0x2822009F8](sub_2542A4D64, v8, 0);
  }
}

uint64_t sub_2542A4D64()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_2542AD4EC();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_25429BBD4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6E0, &unk_2542AEFB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542A4820;
  v0[13] = &block_descriptor_44;
  v0[14] = v4;
  [v1 receiveWithBetaEnrollmentHomeID:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2542A5020(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2542AD50C();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  sub_2542AD4FC();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_25429C090;

  return sub_2542A4B8C(v8);
}

uint64_t sub_2542A514C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = swift_task_alloc();
  v3[21] = v4;
  *v4 = v3;
  v4[1] = sub_2542A51E0;

  return sub_2542A48CC();
}

uint64_t sub_2542A51E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 160);

    return MEMORY[0x2822009F8](sub_2542A5328, v8, 0);
  }
}

uint64_t sub_2542A5328()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_2542AD4EC();
  v0[23] = v4;
  sub_2542AD50C();
  sub_25429C960();
  v5 = sub_2542AD83C();
  v0[24] = v5;
  v0[2] = v0;
  v0[3] = sub_25429C5B4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD6E0, &unk_2542AEFB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2542A4820;
  v0[13] = &block_descriptor_4;
  v0[14] = v6;
  [v1 receiveWithBetaEnrollmentHomeID:v4 identifiers:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2542A5630(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_2542AD50C();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[5] = v9;
  v4[6] = _Block_copy(a3);
  sub_2542AD4FC();
  sub_25429C960();
  v10 = sub_2542AD84C();
  v4[7] = v10;

  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_25429CC2C;

  return sub_2542A514C(v9, v10);
}

uint64_t sub_2542A5790()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2542A57E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2542990D4;

  return sub_2542A5630(v2, v3, v5, v4);
}

uint64_t sub_2542A58A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25429D22C;

  return v7();
}

uint64_t sub_2542A5988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2542990D4;

  return v8();
}

uint64_t sub_2542A5A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2542992CC(a3, v25 - v11);
  v13 = sub_2542AD7DC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25429933C(v12);
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

  sub_2542AD7CC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2542AD79C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2542AD73C() + 32;
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

    sub_25429933C(a3);

    return v23;
  }

LABEL_8:
  sub_25429933C(a3);
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

uint64_t sub_2542A5D30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2542A5D68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25429D22C;

  return sub_2542A30F8(a1, v5);
}

uint64_t sub_2542A5E20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2542990D4;

  return sub_2542A30F8(a1, v5);
}

uint64_t sub_2542A5ED8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2542A5F20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25429D22C;

  return sub_2542A5020(v2, v3, v4);
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2542A6008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_2542A6050(uint64_t result, int a2, int a3)
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
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIcon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_2542A636C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_2542A63B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2542A6418()
{
  result = qword_27F5DD9A8;
  if (!qword_27F5DD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD9A8);
  }

  return result;
}

unint64_t sub_2542A646C(char a1)
{
  result = 0x6F6C2E656C707061;
  switch(a1)
  {
    case 1:
      result = 0x7674656C707061;
      break;
    case 2:
      result = 0x63756F74646F7069;
      break;
    case 3:
      result = 0x656E6F687069;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x6D6F682E64617069;
      break;
    case 7:
      result = 0x63706F746B736564;
      break;
    case 8:
      result = 0x696E696D63616DLL;
      break;
    case 9:
      result = 0x696475747363616DLL;
      break;
    case 10:
      result = 0x672E6F727063616DLL;
      break;
    case 11:
      result = 0x672E6F727063616DLL;
      break;
    case 12:
      result = 0x672E6F727063616DLL;
      break;
    case 13:
      result = 0x6F63706F7470616CLL;
      break;
    case 14:
      result = 0x746177656C707061;
      break;
    case 15:
      result = 0x646F70656D6F68;
      break;
    case 16:
      result = 0x2E646F70656D6F68;
      break;
    case 17:
    case 18:
      result = 0x6D646F70656D6F68;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x6165707369666968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2542A6750(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2542A646C(*a1);
  v5 = v4;
  if (v3 == sub_2542A646C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2542AD91C();
  }

  return v8 & 1;
}

uint64_t sub_2542A67D8()
{
  v1 = *v0;
  sub_2542AD99C();
  sub_2542A646C(v1);
  sub_2542AD74C();

  return sub_2542AD9BC();
}

uint64_t sub_2542A683C()
{
  sub_2542A646C(*v0);
  sub_2542AD74C();
}

uint64_t sub_2542A6890()
{
  v1 = *v0;
  sub_2542AD99C();
  sub_2542A646C(v1);
  sub_2542AD74C();

  return sub_2542AD9BC();
}

uint64_t sub_2542A68F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2542A69A4();
  *a2 = result;
  return result;
}

unint64_t sub_2542A6920@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2542A646C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2542A6950()
{
  result = qword_27F5DD9B0;
  if (!qword_27F5DD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD9B0);
  }

  return result;
}

uint64_t sub_2542A69A4()
{
  v0 = sub_2542AD92C();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

void sub_2542A6A10()
{
  v0 = sub_2542AD70C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27F5DEB90 = v1;
}

uint64_t getEnumTagSinglePayload for RemoteViewControllerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RemoteViewControllerError(_WORD *result, int a2, int a3)
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

unint64_t sub_2542A6BD0()
{
  result = qword_27F5DD9B8;
  if (!qword_27F5DD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DD9B8);
  }

  return result;
}

uint64_t sub_2542A6C2C()
{
  sub_2542AD99C();
  MEMORY[0x259C08160](0);
  return sub_2542AD9BC();
}

uint64_t sub_2542A6C98()
{
  sub_2542AD99C();
  MEMORY[0x259C08160](0);
  return sub_2542AD9BC();
}

void sub_2542A6D34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD9F0, &unk_2542AFC00);
  sub_2542AD72C();
  v0 = objc_allocWithZone(MEMORY[0x277D02878]);
  v1 = sub_2542AD70C();
  v2 = sub_2542AD70C();

  v3 = [v0 initWithSubsystem:v1 category:v2];

  v4 = sub_2542AD70C();
  [v3 ulog:40 message:v4];
}

void sub_2542A6E98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  a4(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_2542AD72C();
  v8 = objc_allocWithZone(MEMORY[0x277D02878]);
  v9 = sub_2542AD70C();
  v10 = sub_2542AD70C();

  v11 = [v8 initWithSubsystem:v9 category:v10];

  v12 = sub_2542AD70C();
  [v11 ulog:40 message:v12];
}

id sub_2542A6FA8()
{
  *&v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC] = 0;
  v1 = &v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 10) = 0;
  *&v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = 0;
  v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] = 0;
  *&v0[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc] = 0;
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseExtensionViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2542A7084(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC] = 0;
  v6 = &v3[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *&v3[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = 0;
  v3[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] = 0;
  *&v3[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc] = 0;
  v7 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  if (a2)
  {
    v8 = sub_2542AD70C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for BaseExtensionViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id sub_2542A71EC(void *a1)
{
  *&v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC] = 0;
  v3 = &v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  *&v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = 0;
  v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] = 0;
  *&v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc] = 0;
  v4 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseExtensionViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_2542A72F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2542A6E98(0x4C64694477656956, 0xEB0000000064616FLL, a3, type metadata accessor for BaseExtensionViewController, &qword_27F5DD9F8, &qword_2542AFA48);
  result = [v3 view];
  if (result)
  {
    v6 = result;
    v7 = *&v4[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner];
    sub_25429675C(v7);

    v8 = *&v4[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC];
    if (v8)
    {
      v9 = v8;
      sub_2542A6E98(0xD00000000000001CLL, 0x80000002542B06B0, v10, type metadata accessor for BaseExtensionViewController, &qword_27F5DD9F8, &qword_2542AFA48);
      sub_2542A7880(v9);
    }

    v11.receiver = v4;
    v11.super_class = type metadata accessor for BaseExtensionViewController();
    return objc_msgSendSuper2(&v11, sel_viewDidLoad);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BaseExtensionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2542A75D0(uint64_t a1)
{
  v2 = v1;
  result = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled;
  if ((v2[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
    sub_2542AD72C();
    v6 = objc_allocWithZone(MEMORY[0x277D02878]);
    v7 = sub_2542AD70C();
    v8 = sub_2542AD70C();

    v9 = [v6 initWithSubsystem:v7 category:v8];

    v10 = sub_2542AD70C();
    [v9 ulog:40 message:v10];

    v11 = mach_absolute_time();
    [v2 wrapWithSubViewController_];
    v2[v5] = 1;
    sub_2542AD8AC();

    v12 = mach_absolute_time();
    v13 = v12 >= v11;
    result = (v12 - v11);
    if (v13)
    {
      UpTicksToSecondsF();
      v15 = sub_254296C1C(v14);
      MEMORY[0x259C07F10](v15);

      sub_2542AD72C();
      v16 = objc_allocWithZone(MEMORY[0x277D02878]);
      v17 = sub_2542AD70C();
      v18 = sub_2542AD70C();

      v19 = [v16 0x279773822];

      v20 = sub_2542AD70C();

      [v19 ulog:40 message:v20];

      v21 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
      [*&v2[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner] setHidden_];
      return [*&v2[v21] stopAnimating];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_2542A7880(id result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled;
  if ((v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] & 1) == 0)
  {
    v4 = result;
    type metadata accessor for BaseExtensionViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD9F8, &qword_2542AFA48);
    sub_2542AD72C();
    v5 = objc_allocWithZone(MEMORY[0x277D02878]);
    v6 = sub_2542AD70C();
    v7 = sub_2542AD70C();

    v8 = [v5 initWithSubsystem:v6 category:v7];

    v9 = sub_2542AD70C();
    [v8 ulog:40 message:v9];

    v10 = mach_absolute_time();
    [v2 wrapWithSubViewController_];
    v2[v3] = 1;
    sub_2542AD8AC();

    v11 = mach_absolute_time();
    v12 = v11 >= v10;
    result = (v11 - v10);
    if (v12)
    {
      UpTicksToSecondsF();
      v14 = sub_254296C1C(v13);
      MEMORY[0x259C07F10](v14);

      sub_2542AD72C();
      v15 = objc_allocWithZone(MEMORY[0x277D02878]);
      v16 = sub_2542AD70C();
      v17 = sub_2542AD70C();

      v18 = [v15 0x279773822];

      v19 = sub_2542AD70C();

      [v18 ulog:40 message:v19];

      v20 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
      [*&v2[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner] setHidden_];
      return [*&v2[v20] stopAnimating];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2542A7B48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_2542A7B98(id result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled;
  if ((v1[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCInstalled] & 1) == 0)
  {
    v4 = result;
    sub_2542A6E98(0xD000000000000014, 0x80000002542B0A10, 0, type metadata accessor for BetaEnrollmentViewController, &qword_27F5DD868, &qword_2542AFA40);
    v5 = mach_absolute_time();
    [v2 wrapWithSubViewController_];
    v2[v3] = 1;
    sub_2542AD8AC();

    v6 = mach_absolute_time();
    v7 = v6 >= v5;
    result = (v6 - v5);
    if (v7)
    {
      UpTicksToSecondsF();
      v9 = sub_254296C1C(v8);
      MEMORY[0x259C07F10](v9);

      sub_2542A6E98(0xD000000000000014, 0x80000002542B0A30, 0, type metadata accessor for BetaEnrollmentViewController, &qword_27F5DD868, &qword_2542AFA40);

      v10 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner;
      [*&v2[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_spinner] setHidden_];
      v11 = *&v2[v10];

      return [v11 stopAnimating];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_2542A7D58()
{
  result = qword_27F5DDA00;
  if (!qword_27F5DDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DDA00);
  }

  return result;
}

uint64_t sub_2542A7DD4()
{
  if (qword_27F5DD590 != -1)
  {
    swift_once();
  }

  v0 = qword_27F5DEB90;
  v1 = qword_27F5DEB90;
  result = sub_2542AD5AC();
  qword_27F5DEB98 = result;
  unk_27F5DEBA0 = v3;
  byte_27F5DEBA8 = v4 & 1;
  qword_27F5DEBB0 = v5;
  unk_27F5DEBB8 = v0;
  return result;
}

uint64_t sub_2542A7E5C()
{
  if (qword_27F5DD590 != -1)
  {
    swift_once();
  }

  v0 = qword_27F5DEB90;
  v1 = qword_27F5DEB90;
  result = sub_2542AD5AC();
  qword_27F5DEBC0 = result;
  *algn_27F5DEBC8 = v3;
  byte_27F5DEBD0 = v4 & 1;
  qword_27F5DEBD8 = v5;
  unk_27F5DEBE0 = v0;
  return result;
}

uint64_t sub_2542A7EF0()
{
  if (qword_27F5DD590 != -1)
  {
    swift_once();
  }

  v0 = qword_27F5DEB90;
  v1 = qword_27F5DEB90;
  result = sub_2542AD5AC();
  qword_27F5DEBE8 = result;
  unk_27F5DEBF0 = v3;
  byte_27F5DEBF8 = v4 & 1;
  qword_27F5DEC00 = v5;
  unk_27F5DEC08 = v0;
  return result;
}

uint64_t sub_2542A7FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v4;
  return v3(v8);
}

uint64_t sub_2542A8124(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 152);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542990D4;

  return v9(a1, a2);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2542A8260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2542A82A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2542A830C()
{
  v1 = v0;
  v2 = &byte_2866405D0;
  v3 = qword_2866405C0;
  do
  {
    if (!v3)
    {
      sub_2542AD8AC();

      v25 = 0xD000000000000010;
      v26 = 0x80000002542B0B10;
      v24 = qword_27F5DDA08;
      v23 = off_27F5DDA10;

      MEMORY[0x259C07F10](v24, v23);

      MEMORY[0x259C07F10](0xD000000000000020, 0x80000002542B0B30);
      sub_2542A7D3C(0xD000000000000010, 0x80000002542B0B10);

      sub_2542A94E4();
      swift_allocError();
      v22 = 3;
      goto LABEL_7;
    }

    v4 = *v2++;
    --v3;
  }

  while (v4);
  v26 = 0xE800000000000000;
  sub_2542AD8AC();

  aBlock = 0x3D746E657645;
  v28 = 0xE600000000000000;
  v5 = qword_27F5DDA08;
  v6 = off_27F5DDA10;

  MEMORY[0x259C07F10](v5, v6);

  MEMORY[0x259C07F10](0x616F6C796170202CLL, 0xEA00000000003D64);
  sub_2542A8A24();
  sub_2542A8D8C();
  v7 = sub_2542AD6EC();
  v9 = v8;

  MEMORY[0x259C07F10](v7, v9);

  MEMORY[0x259C07F10](0x3D746E657645, 0xE600000000000000);

  v25 = &_s17ViewServiceLaunchVN;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD9F0, &unk_2542AFC00);
  sub_2542AD72C();
  v10 = objc_allocWithZone(MEMORY[0x277D02878]);
  v11 = sub_2542AD70C();
  v12 = sub_2542AD70C();

  v13 = [v10 initWithSubsystem:v11 category:v12];

  v14 = sub_2542AD70C();

  [v13 ulog:40 message:v14];

  v15 = sub_2542AD70C();

  v16 = swift_allocObject();
  v17 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 64);
  *(v16 + 96) = *(v1 + 80);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v31 = sub_2542A9580;
  v32 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2542A8890;
  v30 = &block_descriptor_5;
  v19 = _Block_copy(&aBlock);
  sub_25429FFF4(v1, &v25);

  v20 = AnalyticsSendEventLazy();
  _Block_release(v19);

  if (v20)
  {
    return;
  }

  sub_2542A94E4();
  swift_allocError();
  v22 = 2;
LABEL_7:
  *v21 = 0;
  v21[1] = v22;
  swift_willThrow();
}

uint64_t sub_2542A8740(uint64_t a1)
{
  *(v15 + 13) = *(a1 + 13);
  v15[0] = *a1;
  v2 = MEMORY[0x277D84F98];
  if ((BYTE4(v15[1]) & 1) == 0)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    LODWORD(v4) = v15[1];
    v5 = [v3 initWithFloat_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2542A90F4(v5, *&v15[0], *(&v15[0] + 1), isUniquelyReferenced_nonNull_native);
    sub_2542A926C(v15);
  }

  if (*(a1 + 80))
  {
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = *(a1 + 56);
    v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v11 = sub_2542AD70C();
    v12 = [v10 initWithString_];

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2542A90F4(v12, v9, v8, v13);
  }

  return v2;
}

id sub_2542A8890(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2542A8D8C();
    v5 = sub_2542AD6DC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2542A891C()
{
  sub_2542AD8AC();

  v0 = qword_27F5DDA08;
  v1 = off_27F5DDA10;

  MEMORY[0x259C07F10](v0, v1);

  MEMORY[0x259C07F10](0x616F6C796170202CLL, 0xEA00000000003D64);
  sub_2542A8A24();
  sub_2542A8D8C();
  v2 = sub_2542AD6EC();
  v4 = v3;

  MEMORY[0x259C07F10](v2, v4);

  return 0x3D746E657645;
}

uint64_t sub_2542A8A24()
{
  v1 = v0;
  *(v15 + 13) = *(v0 + 13);
  v15[0] = *v0;
  v2 = MEMORY[0x277D84F98];
  if ((BYTE4(v15[1]) & 1) == 0)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    LODWORD(v4) = v15[1];
    v5 = [v3 initWithFloat_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2542A90F4(v5, *&v15[0], *(&v15[0] + 1), isUniquelyReferenced_nonNull_native);
    sub_2542A926C(v15);
  }

  if (v1[10])
  {
    v8 = v1[8];
    v7 = v1[9];
    v9 = v1[7];
    v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v11 = sub_2542AD70C();
    v12 = [v10 initWithString_];

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2542A90F4(v12, v9, v8, v13);
  }

  return v2;
}

void sub_2542A8B74()
{
  if (v0[2] & 1) != 0 || (v0[3])
  {
    *(v0 + 4) = 0;
    *(v0 + 20) = 1;
    *(v0 + 3) = 0;
    *(v0 + 32) = 1;
    v1 = v0 + 3;
    *(v0 + 5) = 0;
LABEL_6:
    *v1 = 1;
    return;
  }

  if (*(v0 + 5) >= *(v0 + 3))
  {
    v1 = v0 + 3;
    UpTicksToSecondsF();
    v3 = v2;
    MEMORY[0x259C07F10](0x6E6F697461727544, 0xEA0000000000203ALL);
    sub_2542AD82C();
    MEMORY[0x259C07F10](115, 0xE100000000000000);
    sub_2542A7D3C(0, 0xE000000000000000);

    *(v0 + 4) = v3;
    *(v0 + 20) = 0;
    v6 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = *(v0 + 10);
    v4 = *v0;
    v5 = v0[1];
    sub_2542A830C();
    *(v0 + 4) = 0;
    *(v0 + 20) = 1;
    *(v0 + 3) = 0;
    *(v0 + 32) = 1;
    *(v0 + 5) = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2542A8CC4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return sub_2542A891C();
}

unint64_t sub_2542A8D10(uint64_t a1)
{
  result = sub_2542A8D38();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2542A8D38()
{
  result = qword_27F5DDA18;
  if (!qword_27F5DDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DDA18);
  }

  return result;
}

unint64_t sub_2542A8D8C()
{
  result = qword_27F5DDA20;
  if (!qword_27F5DDA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DDA20);
  }

  return result;
}

unint64_t sub_2542A8DD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2542AD99C();
  sub_2542AD74C();
  v6 = sub_2542AD9BC();

  return sub_2542A92C0(a1, a2, v6);
}

uint64_t sub_2542A8E50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DDA28, &qword_2542AFBF8);
  v39 = a2;
  result = sub_2542AD8FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2542AD99C();
      sub_2542AD74C();
      result = sub_2542AD9BC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2542A90F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2542A8DD8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2542A8E50(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2542A8DD8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2542AD93C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2542A9378();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_2542A92C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2542AD91C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_2542A9378()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DDA28, &qword_2542AFBF8);
  v2 = *v0;
  v3 = sub_2542AD8EC();
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

unint64_t sub_2542A94E4()
{
  result = qword_27F5DDA30;
  if (!qword_27F5DDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DDA30);
  }

  return result;
}

uint64_t sub_2542A9538()
{
  v1 = v0[3];

  v2 = v0[10];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2542A9580()
{
  v1 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v1;
  v4[4] = *(v0 + 80);
  v5 = *(v0 + 96);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  return sub_2542A8740(v4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_22HomePlatformSettingsUI14AnalyticsErrorO(uint64_t a1)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2542A960C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2542A966C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2542A96C8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_2542A9724(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2542A9768()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - v3;
  v19[0] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
  sub_2542AD72C();
  v5 = objc_allocWithZone(MEMORY[0x277D02878]);
  v6 = sub_2542AD70C();
  v7 = sub_2542AD70C();

  v8 = [v5 initWithSubsystem:v6 category:v7];

  v9 = sub_2542AD70C();
  [v8 ulog:40 message:v9];

  type metadata accessor for BaseExtensionViewController();
  v11 = sub_2542A756C();
  if (*(v10 + 8))
  {
    v12 = v10;
    sub_2542A7D3C(1886352467, 0xE400000000000000);
    *(v12 + 40) = mach_absolute_time();
    *(v12 + 48) = 0;
    sub_2542A8B74();
  }

  (v11)(v19, 0);
  v13 = sub_2542AD7DC();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v15 = sub_2542AD7AC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;

  sub_25429F780(0, 0, v4, &unk_2542AFD88, v16);
}

uint64_t sub_2542A9A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13[-v2];
  sub_2542A6E6C(0x6E69676542646964, 0xEF676E6974736F48);
  type metadata accessor for BaseExtensionViewController();
  v5 = sub_2542A756C();
  if (*(v4 + 8))
  {
    v6 = v4;
    sub_2542A7D3C(1886352467, 0xE400000000000000);
    *(v6 + 40) = mach_absolute_time();
    *(v6 + 48) = 0;
    sub_2542A8B74();
  }

  (v5)(v13, 0);
  v7 = sub_2542AD7DC();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v9 = sub_2542AD7AC();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_25429F780(0, 0, v3, &unk_2542AFD70, v10);
}

uint64_t sub_2542A9C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2542AD7BC();
  v4[10] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_2542A9C9C, v6, v5);
}

uint64_t sub_2542A9C9C()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_2542A9F54;

    return sub_2542A0B30();
  }

  else
  {
    v5 = v0[10];

    sub_25429CA78();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_2542AD8AC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x259C07F10](0xD000000000000019, 0x80000002542B0C90);
    v0[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
    sub_2542AD8CC();
    v8 = v0[5];
    v9 = v0[6];
    v0[8] = type metadata accessor for CarrySettingsViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
    sub_2542AD72C();
    v10 = objc_allocWithZone(MEMORY[0x277D02878]);
    v11 = sub_2542AD70C();
    v12 = sub_2542AD70C();

    v13 = [v10 initWithSubsystem:v11 category:v12];

    v14 = sub_2542AD70C();

    [v13 ulog:60 message:v14];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2542A9F54()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_2542AA090;
  }

  else
  {
    v7 = sub_2542A3DE4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542AA090()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  sub_2542AD8AC();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD000000000000019, 0x80000002542B0C90);
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v4 = v0[5];
  v5 = v0[6];
  v0[8] = type metadata accessor for CarrySettingsViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5DD890, &unk_2542AFA20);
  sub_2542AD72C();
  v6 = objc_allocWithZone(MEMORY[0x277D02878]);
  v7 = sub_2542AD70C();
  v8 = sub_2542AD70C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_2542AD70C();

  [v9 ulog:60 message:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2542AA288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2542AD7BC();
  v4[10] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_2542AA320, v6, v5);
}

uint64_t sub_2542AA320()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_2542AA5D8;

    return sub_2542ABE28();
  }

  else
  {
    v5 = v0[10];

    sub_25429CA78();
    v6 = swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_2542AD8AC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x259C07F10](0xD000000000000019, 0x80000002542B0C90);
    v0[7] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
    sub_2542AD8CC();
    v8 = v0[5];
    v9 = v0[6];
    v0[8] = type metadata accessor for BetaEnrollmentViewController();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD868, &qword_2542AFA40);
    sub_2542AD72C();
    v10 = objc_allocWithZone(MEMORY[0x277D02878]);
    v11 = sub_2542AD70C();
    v12 = sub_2542AD70C();

    v13 = [v10 initWithSubsystem:v11 category:v12];

    v14 = sub_2542AD70C();

    [v13 ulog:60 message:v14];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2542AA5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_2542AA714;
  }

  else
  {
    v7 = sub_2542A25A4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542AA714()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  sub_2542AD8AC();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x259C07F10](0xD000000000000019, 0x80000002542B0C90);
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E8, &unk_2542AE920);
  sub_2542AD8CC();
  v4 = v0[5];
  v5 = v0[6];
  v0[8] = type metadata accessor for BetaEnrollmentViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD868, &qword_2542AFA40);
  sub_2542AD72C();
  v6 = objc_allocWithZone(MEMORY[0x277D02878]);
  v7 = sub_2542AD70C();
  v8 = sub_2542AD70C();

  v9 = [v6 initWithSubsystem:v7 category:v8];

  v10 = sub_2542AD70C();

  [v9 ulog:60 message:v10];

  v11 = v0[1];

  return v11();
}

char *BetaEnrollmentViewController.init(withHomeID:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - v6;
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  sub_2542AD8AC();

  *&v63[0] = 0xD000000000000011;
  *(&v63[0] + 1) = 0x80000002542B0B80;
  v7 = sub_2542AD50C();
  sub_2542A3C68(&qword_27F5DD840, MEMORY[0x277CC95F0]);
  v36 = a1;
  v8 = sub_2542AD90C();
  MEMORY[0x259C07F10](v8);

  sub_254296BB0(*&v63[0], *(&v63[0] + 1), ObjectType, &off_286641948);

  v9 = *(v7 - 8);
  (*(v9 + 16))(&v1[OBJC_IVAR____HPSUIBetaEnrollmentViewController_homeID], a1, v7);
  *&v1[OBJC_IVAR____HPSUIBetaEnrollmentViewController_identifiers] = MEMORY[0x277D84FA0];
  v41.receiver = v1;
  v41.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v41, sel_init);
  LOBYTE(v57) = 1;
  v39 = 1;
  v40 = 1;
  *&v42 = 0x6E6F697461727564;
  *(&v42 + 1) = 0xEB00000000636553;
  LODWORD(v43) = 0;
  BYTE4(v43) = 1;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = 0;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = 0x65736143657375;
  *v46 = 0xE700000000000000;
  *&v46[8] = xmmword_2542AFCC0;
  v47[0] = 0x6E6F697461727564;
  v47[1] = 0xEB00000000636553;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = 0;
  v53 = 1;
  v54 = 0x65736143657375;
  v55 = 0xE700000000000000;
  v56 = xmmword_2542AFCC0;
  v11 = v10;
  sub_25429FFF4(&v42, v63);
  sub_2542A0050(v47);
  v59 = v44;
  v60 = v45;
  v61 = *v46;
  v62 = *&v46[16];
  v57 = v42;
  v58 = v43;
  v12 = &v11[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  swift_beginAccess();
  v13 = *(v12 + 1);
  v63[0] = *v12;
  v63[1] = v13;
  v14 = *(v12 + 2);
  v15 = *(v12 + 3);
  v16 = *(v12 + 4);
  v64 = *(v12 + 10);
  v63[3] = v15;
  v63[4] = v16;
  v63[2] = v14;
  v17 = v60;
  *(v12 + 2) = v59;
  *(v12 + 3) = v17;
  *(v12 + 4) = v61;
  *(v12 + 10) = v62;
  v18 = v58;
  *v12 = v57;
  *(v12 + 1) = v18;
  sub_2542AAE80(v63);
  v19 = type metadata accessor for RemoteViewControllerClient();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_delegate + 8] = 0;
  v21 = swift_unknownObjectWeakInit();
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock] = 0;
  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl] = 0;
  *(v21 + 8) = &off_286641CC0;
  swift_unknownObjectWeakAssign();
  v22 = &v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID];
  *v22 = 0xD00000000000002CLL;
  *(v22 + 1) = 0x80000002542B05E0;
  v23 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v24 = v11;
  v25 = sub_2542AD70C();
  v26 = [v23 initWithExtensionPointIdentifier_];

  *&v20[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_query] = v26;
  v38.receiver = v20;
  v38.super_class = v19;
  v27 = objc_msgSendSuper2(&v38, sel_init);

  v28 = *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient];
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = v27;

  v29 = sub_2542AD7DC();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v32 = sub_2542AD7AC();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v31;

  sub_25429F780(0, 0, v30, &unk_2542AFCD0, v33);

  (*(v9 + 8))(v36, v7);
  return v24;
}

uint64_t sub_2542AAE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD848, &qword_2542AF3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542AAEE8()
{
  MEMORY[0x259C087E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2542AAF24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25429D22C;

  return sub_2542A2118(a1, v4, v5, v6);
}

char *BetaEnrollmentViewController.init(withHomeID:homeKitIdentifiers:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v40 - v8;
  *&v67[0] = 0;
  *(&v67[0] + 1) = 0xE000000000000000;
  sub_2542AD8AC();

  *&v67[0] = 0xD000000000000011;
  *(&v67[0] + 1) = 0x80000002542B0B80;
  v9 = sub_2542AD50C();
  v10 = MEMORY[0x277CC95F0];
  sub_2542A3C68(&qword_27F5DD840, MEMORY[0x277CC95F0]);
  v40 = a1;
  v11 = sub_2542AD90C();
  MEMORY[0x259C07F10](v11);

  MEMORY[0x259C07F10](0x6669746E65646920, 0xED00002073726569);
  sub_2542A3C68(&qword_27F5DD6D8, v10);
  v12 = sub_2542AD85C();
  MEMORY[0x259C07F10](v12);

  sub_254296BB0(*&v67[0], *(&v67[0] + 1), ObjectType, &off_286641948);

  v13 = *(v9 - 8);
  (*(v13 + 16))(&v2[OBJC_IVAR____HPSUIBetaEnrollmentViewController_homeID], a1, v9);
  *&v2[OBJC_IVAR____HPSUIBetaEnrollmentViewController_identifiers] = a2;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v45, sel_init);
  LOBYTE(v61) = 1;
  v43 = 1;
  v44 = 1;
  *&v46 = 0x6E6F697461727564;
  *(&v46 + 1) = 0xEB00000000636553;
  LODWORD(v47) = 0;
  BYTE4(v47) = 1;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = 0;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 0x65736143657375;
  *v50 = 0xE700000000000000;
  *&v50[8] = xmmword_2542AFCC0;
  v51[0] = 0x6E6F697461727564;
  v51[1] = 0xEB00000000636553;
  v52 = 0;
  v53 = 1;
  v54 = 0;
  v55 = 1;
  v56 = 0;
  v57 = 1;
  v58 = 0x65736143657375;
  v59 = 0xE700000000000000;
  v60 = xmmword_2542AFCC0;
  v15 = v14;
  sub_25429FFF4(&v46, v67);
  sub_2542A0050(v51);
  v63 = v48;
  v64 = v49;
  v65 = *v50;
  v66 = *&v50[16];
  v61 = v46;
  v62 = v47;
  v16 = &v15[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_launchAnalytics];
  swift_beginAccess();
  v17 = *(v16 + 1);
  v67[0] = *v16;
  v67[1] = v17;
  v18 = *(v16 + 2);
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v68 = *(v16 + 10);
  v67[3] = v19;
  v67[4] = v20;
  v67[2] = v18;
  v21 = v64;
  *(v16 + 2) = v63;
  *(v16 + 3) = v21;
  *(v16 + 4) = v65;
  *(v16 + 10) = v66;
  v22 = v62;
  *v16 = v61;
  *(v16 + 1) = v22;
  sub_2542AAE80(v67);
  v23 = type metadata accessor for RemoteViewControllerClient();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_delegate + 8] = 0;
  v25 = swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_hostingPreparationClock] = 0;
  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_statusInfoViewCtrl] = 0;
  *(v25 + 8) = &off_286641CC0;
  swift_unknownObjectWeakAssign();
  v26 = &v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_extensionID];
  *v26 = 0xD00000000000002CLL;
  *(v26 + 1) = 0x80000002542B05E0;
  v27 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v28 = v15;
  v29 = sub_2542AD70C();
  v30 = [v27 initWithExtensionPointIdentifier_];

  *&v24[OBJC_IVAR____TtC22HomePlatformSettingsUI26RemoteViewControllerClient_query] = v30;
  v42.receiver = v24;
  v42.super_class = v23;
  v31 = objc_msgSendSuper2(&v42, sel_init);

  v32 = *&v28[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient];
  *&v28[OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_remoteVCClient] = v31;

  v33 = sub_2542AD7DC();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2542AD7BC();

  v36 = sub_2542AD7AC();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v35;

  sub_25429F780(0, 0, v34, &unk_2542AFCD8, v37);

  (*(v13 + 8))(v40, v9);
  return v28;
}

uint64_t sub_2542AB654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2542990D4;

  return sub_2542A2118(a1, v4, v5, v6);
}

void *sub_2542AB7F0()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_hostVC);
  if (!v2)
  {
    sub_25429CA78();
    swift_allocError();
    *v9 = 2;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v13[0] = 0;
  v3 = [v2 makeXPCConnectionWithError_];
  v4 = v13[0];
  if (!v3)
  {
    v10 = v13[0];
    sub_2542AD4DC();

    goto LABEL_6;
  }

  v1 = v3;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];
  [v1 setRemoteObjectInterface_];

  [v1 setExportedObject_];
  v8 = [v5 interfaceWithProtocol_];
  [v1 setExportedInterface_];

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

Swift::Void __swiftcall BetaEnrollmentViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  v2 = v1;
  sub_2542AD8AC();

  v4 = toParent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DDA38, &unk_2542AFCE0);
  v5 = sub_2542AD72C();
  MEMORY[0x259C07F10](v5);

  sub_2542A6E6C(0xD000000000000014, 0x80000002542B0BA0);

  if (toParent)
  {
    v6 = [(UIViewController_optional *)v4 view];
    if (v6)
    {
      v7 = v6;
      v8 = [v2 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 backgroundColor];
        [v9 setBackgroundColor_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

Swift::Void __swiftcall BetaEnrollmentViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    v6 = [v5 standardAppearance];
    [v5 setScrollEdgeAppearance_];
  }
}

Swift::Void __swiftcall BetaEnrollmentViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setScrollEdgeAppearance_];
  }
}

uint64_t sub_2542ABE28()
{
  v1[2] = v0;
  v2 = sub_2542AD50C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_2542AD7BC();
  v1[6] = sub_2542AD7AC();
  v6 = sub_2542AD79C();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_2542ABF1C, v6, v5);
}

uint64_t sub_2542ABF1C()
{
  v1 = v0[2];
  sub_2542A6E6C(0x676E697472617453, 0xEC00000043505820);
  v2 = OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc;
  if (*(v1 + OBJC_IVAR____TtC22HomePlatformSettingsUI27BaseExtensionViewController_xpc))
  {
    v3 = v0[6];

    v4 = v0[5];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[2];
    type metadata accessor for XPCConnectionManager();
    v8 = swift_allocObject();
    v0[9] = v8;
    v9 = v7;
    swift_defaultActor_initialize();
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
    *(v8 + 168) = 0;
    *(v8 + 112) = v9;
    *(v8 + 120) = &off_286641CB0;
    *(v8 + 128) = xmmword_2542AF390;
    *(v8 + 144) = 2;
    v10 = *(v1 + v2);
    *(v1 + v2) = v8;

    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_2542AC0A0;

    return sub_254298478();
  }
}

uint64_t sub_2542AC0A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_2542A11FC;
  }

  else
  {
    v7 = sub_2542AC1DC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2542AC1DC()
{
  v1 = v0[2];
  (*(v0[4] + 16))(v0[5], v1 + OBJC_IVAR____HPSUIBetaEnrollmentViewController_homeID, v0[3]);
  v2 = *(v1 + OBJC_IVAR____HPSUIBetaEnrollmentViewController_identifiers);
  v0[12] = v2;

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2542A0FC8;
  v4 = v0[9];
  v5 = v0[5];

  return sub_2542A514C(v5, v2);
}

uint64_t sub_2542AC2F0()
{
  v1 = OBJC_IVAR____HPSUIBetaEnrollmentViewController_homeID;
  v2 = sub_2542AD50C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____HPSUIBetaEnrollmentViewController_identifiers);
}

id BetaEnrollmentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2542AD068(0, &qword_27F5DDA40, 0x277D4D310);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v3;

  sub_2542A4378(sub_2542ACAD0, v6);
}

uint64_t static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:homeKitIdentifiers:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2542AD068(0, &qword_27F5DDA40, 0x277D4D310);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v4;

  sub_2542A4378(sub_2542AD40C, v7);
}

uint64_t sub_2542AC6BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  v5 = a1;
  v25 = a1;
  v6 = sub_2542AD6AC();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2542AD6CC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  aBlock = 0;
  v32 = 0xE000000000000000;
  sub_2542AD8AC();
  v37 = aBlock;
  v38 = v32;
  MEMORY[0x259C07F10](0xD00000000000002CLL, 0x80000002542B0CB0);
  if (v5)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v5)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x259C07F10](v14, v15);

  MEMORY[0x259C07F10](0xD00000000000001ALL, 0x80000002542B0CE0);
  v34 = &type metadata for Feature;
  v35 = sub_2542ACCB8();
  v16 = sub_2542AD51C();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  if (v16)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x259C07F10](v17, v18);

  sub_254296BB0(v37, v38, a4, &off_286641948);

  sub_2542AD068(0, &qword_27F5DD870, 0x277D85C78);
  v19 = sub_2542AD86C();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v26;
  *(v20 + 24) = v21;
  *(v20 + 32) = v25;
  v35 = sub_2542A3C1C;
  v36 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2542AD3F8;
  v34 = &block_descriptor_68;
  v22 = _Block_copy(&aBlock);

  sub_2542AD6BC();
  v37 = MEMORY[0x277D84F90];
  sub_2542A3C68(&qword_27F5DD878, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD880, &qword_2542AF478);
  sub_2542A3CB0();
  sub_2542AD89C();
  MEMORY[0x259C08030](0, v13, v9, v22);
  _Block_release(v22);

  (*(v30 + 8))(v9, v6);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_2542ACA98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t static BetaEnrollmentViewController.isMultiSeedingEnrollmentEnabled()()
{
  v2[3] = &type metadata for Feature;
  v2[4] = sub_2542ACCB8();
  v0 = sub_2542AD51C();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0 & 1;
}

unint64_t sub_2542ACCB8()
{
  result = qword_27F5DDA48;
  if (!qword_27F5DDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DDA48);
  }

  return result;
}

Swift::Void __swiftcall BetaEnrollmentViewController.didFinishEnrollment()()
{
  v1 = v0;
  v2 = sub_2542AD6AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2542AD6CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &type metadata for Feature;
  v19 = sub_2542ACCB8();
  v12 = sub_2542AD51C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v12)
  {
    sub_2542AD068(0, &qword_27F5DD870, 0x277D85C78);
    v13 = sub_2542AD86C();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v19 = sub_2542AD0E8;
    v20 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2542AD3F8;
    v18 = &block_descriptor_6;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    sub_2542AD6BC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2542A3C68(&qword_27F5DD878, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD880, &qword_2542AF478);
    sub_2542A3CB0();
    sub_2542AD89C();
    MEMORY[0x259C08030](0, v11, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
    sub_2542A6E6C(0xD00000000000003ALL, 0x80000002542B0BC0);
  }
}

uint64_t sub_2542AD068(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2542AD0B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for BetaEnrollmentViewController()
{
  result = qword_27F5DDA50;
  if (!qword_27F5DDA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2542AD1F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2542AD24C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25429D22C;

  return sub_2542AA288(a1, v4, v5, v6);
}

uint64_t sub_2542AD300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25429D22C;

  return sub_2542A9C04(a1, v4, v5, v6);
}

uint64_t sub_2542AD3B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2542AD42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2542AD474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}