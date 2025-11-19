unint64_t sub_22D764720()
{
  result = qword_27DA020A0;
  if (!qword_27DA020A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020A0);
  }

  return result;
}

uint64_t sub_22D764778@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v24 = sub_22D81A768();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v25;
  sub_22D81A778();
  v18 = *(v13 + 56);
  v13 += 56;
  v18(v17, 0, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v19 = *(v13 + 16);
  v20 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_22D81DF60;
  sub_22D81A738();
  v21 = v26;
  sub_22D81A2C8();
  v22 = sub_22D81A2B8();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_22D764B90(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22D764BB0, 0, 0);
}

uint64_t sub_22D764BB0()
{
  v1 = v0[8];
  result = sub_22D81A0B8();
  v18 = v0[2];
  v17 = *(v18 + 16);
  if (v17)
  {
    v3 = 0;
    v4 = (v18 + 48);
    while (v3 < *(v18 + 16))
    {
      v7 = *v4;
      v8 = qword_280CD1F18;
      v19 = *(v4 - 1);
      sub_22D81A398();
      sub_22D81A198();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = qword_280CD1F20;
      sub_22D819FE8();
      v11 = v0[5];
      v10 = v0[6];
      v12 = objc_opt_self();
      sub_22D81B838();

      MEMORY[0x2318D1A50](v11, v10);
      v13 = sub_22D81B2B8();

      [v12 logInfo_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = sub_22D81B2B8();

        [v5 didRemoveWorldClockWithNameWithManager:v9 name:v6];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v3;

      v4 += 3;
      if (v17 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v15 = v0[7];

    v0[5] = sub_22D7B72C8(0);
    sub_22D757BF8();
    sub_22D819F98();

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_22D764E4C()
{
  v1 = *v0;
  sub_22D81A0B8();
  return v3;
}

unint64_t sub_22D764E84()
{
  result = qword_27DA020A8;
  if (!qword_27DA020A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020A8);
  }

  return result;
}

unint64_t sub_22D764EDC()
{
  result = qword_27DA020B0;
  if (!qword_27DA020B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020B0);
  }

  return result;
}

unint64_t sub_22D764F34()
{
  result = qword_27DA020B8;
  if (!qword_27DA020B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020B8);
  }

  return result;
}

uint64_t sub_22D764FD8()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D765198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA020D8, &qword_22D81F470);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA020E0, &qword_22D81F478);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA020E8, &unk_22D81F4A8);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D765340(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D764B90(a1, v4);
}

uint64_t sub_22D7653E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D765454();
  *a1 = result;
  return result;
}

uint64_t sub_22D765408(uint64_t a1)
{
  v2 = sub_22D764E84();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D765454()
{
  v0 = sub_22D81A428();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v37 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = v32 - v10;
  v11 = sub_22D81A748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22D81A958();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_22D81B2A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v33 = sub_22D81A768();
  v20 = *(v33 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v33);
  v32[1] = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v34 = v32 - v24;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA020D0, &qword_22D81F458);
  sub_22D81B228();
  sub_22D81A948();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v12 + 104);
  v26(v15, v25, v11);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v26(v15, v25, v11);
  v27 = v41;
  sub_22D81A778();
  (*(v20 + 56))(v27, 0, 1, v33);
  v42 = 0;
  sub_22D81B228();
  *v15 = type metadata accessor for MTAppIntentsManager();
  v26(v15, *MEMORY[0x277CC9120], v11);
  sub_22D81A948();
  sub_22D81A778();
  v28 = v36;
  sub_22D819F88();
  v29 = sub_22D819F78();
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 0, 1, v29);
  v30(v37, 1, 1, v29);
  (*(v39 + 104))(v38, *MEMORY[0x277CBA308], v40);
  sub_22D75AD48();
  return sub_22D81A108();
}

unint64_t sub_22D7659F0()
{
  result = qword_27DA020F0;
  if (!qword_27DA020F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020F0);
  }

  return result;
}

unint64_t sub_22D765A48()
{
  result = qword_27DA020F8;
  if (!qword_27DA020F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA020F8);
  }

  return result;
}

uint64_t sub_22D765AEC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D765E78()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76603C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02118, qword_22D81F600);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D766114(uint64_t a1)
{
  *(v2 + 24) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22D7661AC;

  return MTStopwatchManager.viewModelForCurrentStopwatch()();
}

uint64_t sub_22D7661AC(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D7662E0, 0, 0);
  }
}

uint64_t sub_22D7662E0()
{
  v1 = v0[5];
  if (v1)
  {
    sub_22D75F1BC();
  }

  v2 = v0[3];
  v0[2] = sub_22D7B72C8(2);
  sub_22D757BF8();
  sub_22D819F98();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22D766390(uint64_t a1)
{
  v2 = sub_22D7663DC();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D7663DC()
{
  result = qword_27DA02110;
  if (!qword_27DA02110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02110);
  }

  return result;
}

unint64_t sub_22D766434()
{
  result = qword_27DA02120;
  if (!qword_27DA02120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02120);
  }

  return result;
}

unint64_t sub_22D76648C()
{
  result = qword_27DA02128;
  if (!qword_27DA02128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02128);
  }

  return result;
}

uint64_t sub_22D766530@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v24 = sub_22D81A768();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v25;
  sub_22D81A778();
  v18 = *(v13 + 56);
  v13 += 56;
  v18(v17, 0, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v19 = *(v13 + 16);
  v20 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_22D81DF60;
  sub_22D81A738();
  v21 = v26;
  sub_22D81A2C8();
  v22 = sub_22D81A2B8();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_22D766910(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D766930, 0, 0);
}

uint64_t sub_22D766930()
{
  if (qword_27DA01A18 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  sub_22D81A0B8();
  v4 = v0[3];
  v3 = v0[4];
  sub_22D819FE8();

  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_22D7BC1BC();
  v9 = v8;

  v0[2] = v7;
  v0[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D7674C4();
  sub_22D819FC8();

  v10 = v0[1];

  return v10();
}

uint64_t sub_22D766A50()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D766C0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02168, &qword_22D81F788);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02170, &qword_22D81F790);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02178, &unk_22D81F7C0);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D766DC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D766910(a1, v4);
}

uint64_t sub_22D766E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D766ED4();
  *a1 = result;
  return result;
}

uint64_t sub_22D766E88(uint64_t a1)
{
  v2 = sub_22D767470();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D766ED4()
{
  v0 = sub_22D81A428();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v31 - v10;
  v11 = sub_22D81A748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22D81A958();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_22D81B2A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v32 = sub_22D81A768();
  v20 = *(v32 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v22);
  v31 = &v31 - v23;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F00, &qword_22D81EF68);
  sub_22D81B228();
  sub_22D81A948();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v12 + 104);
  v25(v15, v24, v11);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v25(v15, v24, v11);
  v26 = v39;
  sub_22D81A778();
  (*(v20 + 56))(v26, 0, 1, v32);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_22D81B228();
  *v15 = type metadata accessor for MTAppIntentsManager();
  v25(v15, *MEMORY[0x277CC9120], v11);
  sub_22D81A948();
  sub_22D81A778();
  v27 = v34;
  sub_22D819F88();
  v28 = sub_22D819F78();
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 0, 1, v28);
  v29(v35, 1, 1, v28);
  (*(v37 + 104))(v36, *MEMORY[0x277CBA308], v38);
  sub_22D75AD48();
  return sub_22D81A108();
}

unint64_t sub_22D767470()
{
  result = qword_27DA02150;
  if (!qword_27DA02150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02150);
  }

  return result;
}

unint64_t sub_22D7674C4()
{
  result = qword_27DA02158;
  if (!qword_27DA02158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D767548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02158);
  }

  return result;
}

unint64_t sub_22D767548()
{
  result = qword_27DA02160;
  if (!qword_27DA02160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02160);
  }

  return result;
}

uint64_t StopwatchContext.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22D81A398();
  return v1;
}

uint64_t StopwatchContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22D81B328();
}

void StopwatchContext.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22D81B2C8();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static StopwatchContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08();
  }
}

uint64_t sub_22D76767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22D81BB08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22D767714(uint64_t a1)
{
  v2 = sub_22D7678C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D767750(uint64_t a1)
{
  v2 = sub_22D7678C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StopwatchContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02188, &qword_22D81F7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC38();
  sub_22D81BA78();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22D7678C8()
{
  result = qword_280CD2BF8;
  if (!qword_280CD2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BF8);
  }

  return result;
}

uint64_t StopwatchContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t StopwatchContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02190, &unk_22D81F7D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC28();
  if (!v2)
  {
    v11 = sub_22D81B9E8();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22D767AF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02188, &qword_22D81F7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC38();
  sub_22D81BA78();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22D767C30()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t sub_22D767C7C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22D81B328();
}

uint64_t sub_22D767C84()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t sub_22D767CCC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08();
  }
}

uint64_t static StopwatchActivityAttributes.version.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27DA02180 = a1;
  return result;
}

uint64_t sub_22D767DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v5 = sub_22D81A8C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_22D767E6C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_22D767F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v4 = sub_22D81A8C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_22D76800C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v4 = sub_22D81A8C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22D7680FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_22D81A398();
}

uint64_t sub_22D768168@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D7681BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t StopwatchActivityAttributes.__allocating_init(_:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v7 = *a1;
  v6 = a1[1];
  sub_22D81A8B8();
  v8 = (v5 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v8 = v7;
  v8[1] = v6;
  return v5;
}

uint64_t StopwatchActivityAttributes.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_22D81A8B8();
  v4 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v4 = v2;
  v4[1] = v3;
  return v1;
}

id StopwatchActivityAttributes.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  sub_22D81A8B8();
  result = [a1 identifier];
  if (result)
  {
    v8 = result;
    v9 = sub_22D81B2C8();
    v11 = v10;

    v12 = (v6 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v12 = v9;
    v12[1] = v11;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id StopwatchActivityAttributes.init(_:)(void *a1)
{
  sub_22D81A8B8();
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D81B2C8();
    v7 = v6;

    v8 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v8 = v5;
    v8[1] = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D768458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v10 - v3;
  v5 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v10[1] = v6;
  v10[2] = v7;
  v8 = sub_22D81A8C8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_22D76858C();
  sub_22D7685E0();
  sub_22D768634();
  sub_22D81A398();
  return sub_22D81ABE8();
}

unint64_t sub_22D76858C()
{
  result = qword_280CD2BE0;
  if (!qword_280CD2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BE0);
  }

  return result;
}

unint64_t sub_22D7685E0()
{
  result = qword_280CD1FD8[0];
  if (!qword_280CD1FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD1FD8);
  }

  return result;
}

unint64_t sub_22D768634()
{
  result = qword_280CD1FD0;
  if (!qword_280CD1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1FD0);
  }

  return result;
}

uint64_t sub_22D768688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022D829120 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22D768770(uint64_t a1)
{
  v2 = sub_22D768BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7687AC(uint64_t a1)
{
  v2 = sub_22D768BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StopwatchActivityAttributes.deinit()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context + 8);

  return v0;
}

uint64_t StopwatchActivityAttributes.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D76890C(void *a1)
{
  v2 = v1;
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02198, &qword_22D81F7E8);
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D768BF0();
  sub_22D81BC38();
  v14 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v14, v4);
  v24 = 0;
  sub_22D769130(&unk_280CD2900, MEMORY[0x277CC9578]);
  v15 = v20;
  sub_22D81BAB8();
  (*(v5 + 8))(v8, v4);
  if (!v15)
  {
    v16 = (v2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v22 = v17;
    v23 = v18;
    v25 = 1;
    sub_22D7685E0();
    sub_22D81A398();
    sub_22D81BAB8();
  }

  return (*(v21 + 8))(v12, v9);
}

unint64_t sub_22D768BF0()
{
  result = qword_280CD2AE8[0];
  if (!qword_280CD2AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2AE8);
  }

  return result;
}

uint64_t StopwatchActivityAttributes.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  StopwatchActivityAttributes.init(from:)(a1);
  return v5;
}

uint64_t StopwatchActivityAttributes.init(from:)(uint64_t *a1)
{
  v4 = sub_22D81A8C8();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021A0, &qword_22D81F7F0);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - v9;
  v22 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  sub_22D81A8B8();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D768BF0();
  sub_22D81BC28();
  if (v2)
  {
    (*(v23 + 8))(v1 + v22, v4);
    type metadata accessor for StopwatchActivityAttributes();
    v13 = *(*v1 + 48);
    v14 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v7;
    LOBYTE(v24) = 0;
    sub_22D769130(&unk_280CD2E60, MEMORY[0x277CC9578]);
    v12 = v20;
    sub_22D81BA28();
    v16 = v22;
    swift_beginAccess();
    (*(v23 + 40))(v1 + v16, v21, v4);
    swift_endAccess();
    v26 = 1;
    sub_22D76858C();
    sub_22D81BA28();
    (*(v19 + 8))(v10, v12);
    v17 = v25;
    v18 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v18 = v24;
    v18[1] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t type metadata accessor for StopwatchActivityAttributes()
{
  result = qword_280CD2AB8;
  if (!qword_280CD2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D76904C()
{
  result = qword_280CD1FC8;
  if (!qword_280CD1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1FC8);
  }

  return result;
}

uint64_t sub_22D769130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D769184@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for StopwatchActivityAttributes();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = StopwatchActivityAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_22D769204(uint64_t a1, int a2)
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

uint64_t sub_22D76924C(uint64_t result, int a2, int a3)
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

uint64_t sub_22D7692A0()
{
  result = sub_22D81A8C8();
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

uint64_t dispatch thunk of StopwatchActivityAttributes.__allocating_init(_:)()
{
  return (*(v0 + 144))();
}

{
  return (*(v0 + 152))();
}

id sub_22D7694D4(void *a1)
{
  v2 = sub_22D81ABC8();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2);
  v96 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021C8, &unk_22D81FCB0);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v85 - v10;
  v12 = sub_22D81ABA8();
  v100 = *(v12 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v12);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000023, 0x800000022D8292F0);
  v15 = [a1 identifier];
  v93 = v11;
  if (v15)
  {
    v16 = v15;
    v17 = sub_22D81B2C8();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = objc_opt_self();
  v109 = v17;
  v110 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v22 = sub_22D81B2B8();

  [v20 logInfo_];

  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = sub_22D81B2C8();
  v27 = v26;

  v28 = v111;
  swift_beginAccess();
  if (*(*(v28 + 112) + 16))
  {
    sub_22D81A398();
    sub_22D807780(v25, v27);
    v30 = v29;

    if (v30)
    {
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD000000000000029, 0x800000022D829360);
      v31 = [a1 identifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_22D81B2C8();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v103 = v33;
      v104 = v35;
      sub_22D81B908();

      MEMORY[0x2318D1A50](0x6974726F6261202CLL, 0xEA0000000000676ELL);
      v82 = sub_22D81B2B8();

      [v20 logInfo_];

      sub_22D76B3F8();
      swift_allocError();
      *v83 = 1;
      return swift_willThrow();
    }
  }

  else
  {
  }

  v85 = v21;
  v86 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D0, &qword_22D826860);
  v36 = *(sub_22D81AB58() - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_22D81DF60;
  v90 = v39;
  v40 = (v39 + v38);
  *v40 = 0xD000000000000014;
  v40[1] = 0x800000022D829320;
  v89 = 0x800000022D829320;
  v41 = *MEMORY[0x277CB9338];
  (*(v36 + 104))();
  v42 = type metadata accessor for StopwatchActivityAttributes();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  sub_22D81A8B8();
  v87 = a1;
  result = [a1 identifier];
  if (!result)
  {
    goto LABEL_26;
  }

  v46 = result;
  v47 = sub_22D81B2C8();
  v49 = v48;

  v91 = v45;
  v50 = (v45 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v50 = v47;
  v50[1] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D8, &unk_22D81FCC0);
  v51 = v100;
  v52 = *(v100 + 72);
  v53 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_22D81E100;
  v55 = *(v51 + 104);
  v55(v54 + v53, *MEMORY[0x277CB94E8], v12);
  v55(v54 + v53 + v52, *MEMORY[0x277CB94E0], v12);
  v55(v54 + v53 + 2 * v52, *MEMORY[0x277CB94F8], v12);
  v107 = &type metadata for MobileTimerFeatureFlags;
  v108 = sub_22D76B44C();
  LOBYTE(v105) = 2;
  LOBYTE(v49) = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(&v105);
  if (v49)
  {
    v56 = v88;
    v55(v88, *MEMORY[0x277CB94F0], v12);
    v58 = *(v54 + 16);
    v57 = *(v54 + 24);
    if (v58 >= v57 >> 1)
    {
      v54 = sub_22D7ED46C(v57 > 1, v58 + 1, 1, v54);
    }

    v59 = v91;
    *(v54 + 16) = v58 + 1;
    (*(v100 + 32))(v54 + v53 + v58 * v52, v56, v12);
  }

  else
  {
    v59 = v91;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021B8, &qword_22D81FCA8);
  v101 = v59;
  swift_beginAccess();
  v60 = *v50;
  v61 = v50[1];
  v103 = v60;
  v104 = v61;
  v62 = sub_22D81A8C8();
  (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
  sub_22D76858C();
  sub_22D7685E0();
  sub_22D768634();
  sub_22D81A398();
  v63 = v93;
  sub_22D81ABE8();
  sub_22D81A398();
  v64 = v96;
  sub_22D81ABB8();
  v65 = v97;
  v66 = sub_22D81AB38();
  if (v65)
  {

    (*(v98 + 8))(v64, v99);
    (*(v94 + 8))(v63, v95);
  }

  v67 = v66;
  (*(v98 + 8))(v64, v99);
  (*(v94 + 8))(v63, v95);
  v68 = v87;
  result = [v87 identifier];
  if (!result)
  {
    goto LABEL_27;
  }

  v69 = result;

  v70 = sub_22D81B2C8();
  v72 = v71;

  v73 = v111;
  swift_beginAccess();
  sub_22D81A198();
  v74 = *(v73 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v73 + 112);
  *(v73 + 112) = 0x8000000000000000;
  sub_22D80BDE8(v67, v70, v72, isUniquelyReferenced_nonNull_native);

  *(v73 + 112) = v101;
  swift_endAccess();
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D829340);
  v76 = sub_22D81AAE8();
  MEMORY[0x2318D1A50](v76);

  MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8292D0);
  v77 = [v68 identifier];
  if (v77)
  {
    v78 = v77;
    v79 = sub_22D81B2C8();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v101 = v79;
  v102 = v81;
  sub_22D81B908();

  v84 = sub_22D81B2B8();

  [v86 logInfo_];
}

uint64_t sub_22D76A00C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = sub_22D81AB88();
  v21 = *(v26 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_22D81B838();

  v24 = 0xD000000000000024;
  v25 = 0x800000022D829280;
  MEMORY[0x2318D1A50](a1, a2);
  v10 = sub_22D81B2B8();

  [v9 logInfo_];

  swift_beginAccess();
  v11 = *(v2 + 112);
  if (*(v11 + 16))
  {
    v12 = *(v3 + 112);
    sub_22D81A398();
    v13 = sub_22D807780(a1, a2);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);
      sub_22D81A198();

      v22 = 0;
      v23 = 0xE000000000000000;
      sub_22D81B838();

      v22 = 0xD00000000000001BLL;
      v23 = 0x800000022D8292B0;
      v16 = sub_22D81AAE8();
      MEMORY[0x2318D1A50](v16);

      MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8292D0);
      MEMORY[0x2318D1A50](a1, a2);
      v17 = sub_22D81B2B8();

      [v9 logInfo_];

      v22 = 0;
      v23 = 0;
      sub_22D81AB78();
      sub_22D81AB18();
      (*(v21 + 8))(v8, v26);
      swift_beginAccess();
      sub_22D81A398();
      sub_22D803AC0(0, a1, a2);
      swift_endAccess();
    }
  }

  sub_22D76B3F8();
  swift_allocError();
  *v19 = 0;
  return swift_willThrow();
}

uint64_t sub_22D76A30C()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021B8, &qword_22D81FCA8);
  v2 = sub_22D81AAC8();
  if (v2 >> 62)
  {
    v12 = v2;
    v3 = sub_22D81B938();
    v2 = v12;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = v2;
    sub_22D81A198();
    sub_22D76B2E4(v4, v1, &v13);

    v5 = objc_opt_self();
    sub_22D81B838();
    type metadata accessor for StopwatchSessionsProvider();
    sub_22D81B908();
    MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D829230);
    v6 = v13;
    v7 = MEMORY[0x2318D1B50](v13, MEMORY[0x277D837D0]);
    MEMORY[0x2318D1A50](v7);

    v8 = sub_22D81B2B8();

    [v5 logInfo_];
  }

  else
  {

    v9 = objc_opt_self();
    v10 = sub_22D81B2B8();
    [v9 logInfo_];

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22D76A4F8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  sub_22D81AAD8();
  v6 = (v20 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  sub_22D81A398();

  swift_beginAccess();
  sub_22D81A198();
  v9 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + 112);
  *(a2 + 112) = 0x8000000000000000;
  sub_22D80BDE8(v5, v8, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 112) = v19;
  swift_endAccess();
  sub_22D81AAD8();
  v11 = (v20 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  sub_22D81A398();

  v14 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((result & 1) == 0)
  {
    result = sub_22D7ED494(0, *(v14 + 16) + 1, 1, v14);
    v14 = result;
    *a3 = result;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_22D7ED494((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
    *a3 = result;
  }

  *(v14 + 16) = v17 + 1;
  v18 = v14 + 16 * v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = v12;
  return result;
}

uint64_t sub_22D76A6A8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D76A704()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D76A74C()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D76A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22D76A7C4, 0, 0);
}

uint64_t sub_22D76A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56))
  {
    return MEMORY[0x2822009F8](sub_22D76A7EC, *(v3 + 48), 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22D76A7EC()
{
  v1 = *(v0 + 48);
  sub_22D7694D4(*(v0 + 56));
  *(v0 + 64) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D76A89C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22D81B838();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D829210);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8291F0);
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D81B2C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[8];
  v9 = objc_opt_self();
  v0[4] = v5;
  v0[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v10 = v0[2];
  v11 = v0[3];
  v12 = sub_22D81B2B8();

  [v9 logError_];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22D76AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22D76AAB8, 0, 0);
}

uint64_t sub_22D76AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56))
  {
    return MEMORY[0x2822009F8](sub_22D76AAE0, *(v3 + 48), 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22D76AAE0()
{
  v1 = [*(v0 + 56) identifier];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 48);
    v6 = sub_22D81B2C8();
    v8 = v7;

    sub_22D76A00C(v6, v8);
    *(v0 + 64) = 0;

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    __break(1u);
    return MEMORY[0x2822009F8](0, v2, v3);
  }
}

uint64_t sub_22D76ABE0()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22D81B838();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D8291D0);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8291F0);
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D81B2C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[8];
  v9 = objc_opt_self();
  v0[4] = v5;
  v0[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v10 = v0[2];
  v11 = v0[3];
  v12 = sub_22D81B2B8();

  [v9 logError_];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22D76ADD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a3;
  v16 = a3;
  sub_22D81A198();
  sub_22D75D890(0, 0, v13, a7, v15);
}

unint64_t sub_22D76AF10()
{
  result = qword_27DA021A8;
  if (!qword_27DA021A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021A8);
  }

  return result;
}

unint64_t sub_22D76AF68()
{
  result = qword_27DA021B0;
  if (!qword_27DA021B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021B0);
  }

  return result;
}

unint64_t sub_22D76AFC0()
{
  result = qword_280CD2AD8;
  if (!qword_280CD2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2AD8);
  }

  return result;
}

unint64_t sub_22D76B018()
{
  result = qword_280CD2AE0;
  if (!qword_280CD2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2AE0);
  }

  return result;
}

unint64_t sub_22D76B070()
{
  result = qword_280CD2BE8;
  if (!qword_280CD2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BE8);
  }

  return result;
}

unint64_t sub_22D76B0C8()
{
  result = qword_280CD2BF0;
  if (!qword_280CD2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BF0);
  }

  return result;
}

uint64_t sub_22D76B11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D76AA98(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D76B224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D76A7A4(a1, v4, v5, v7, v6);
}

unint64_t sub_22D76B2E4(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318D1F70](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_22D76A4F8(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      sub_22D81A198();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_22D81B938();
      v6 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_22D76B3F8()
{
  result = qword_27DA021C0;
  if (!qword_27DA021C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021C0);
  }

  return result;
}

unint64_t sub_22D76B44C()
{
  result = qword_280CD2650;
  if (!qword_280CD2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationDataProvider.Use(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocationDataProvider.Use(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D76B5F4()
{
  result = qword_27DA021E0;
  if (!qword_27DA021E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021E0);
  }

  return result;
}

uint64_t sub_22D76B6E4()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_22D76B784()
{
  result = qword_27DA021E8;
  if (!qword_27DA021E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021E8);
  }

  return result;
}

unint64_t sub_22D76B7DC()
{
  result = qword_27DA021F0;
  if (!qword_27DA021F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021F0);
  }

  return result;
}

uint64_t sub_22D76B868@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D76BBF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22D76BC8C;

  return MTStopwatchManager.viewModelForCurrentStopwatch()();
}

uint64_t sub_22D76BC8C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D76BDC0, 0, 0);
  }
}

uint64_t sub_22D76BDC0()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = sub_22D761574();
    v3 = [v2 state];

    if (v3 == 1)
    {
      sub_22D760E80();
    }

    else
    {
      sub_22D75E998();
    }
  }

  v4 = v0[2];
  sub_22D819FD8();
  v5 = v0[1];

  return v5();
}

uint64_t sub_22D76BE68()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76C02C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02218, qword_22D81FFE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D76C104(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D76BBF4(a1);
}

uint64_t sub_22D76C1A4(uint64_t a1)
{
  v2 = sub_22D76C23C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D76C1E4()
{
  result = qword_27DA021F8;
  if (!qword_27DA021F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021F8);
  }

  return result;
}

unint64_t sub_22D76C23C()
{
  result = qword_27DA02200;
  if (!qword_27DA02200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02200);
  }

  return result;
}

unint64_t sub_22D76C2A4()
{
  result = qword_27DA02220;
  if (!qword_27DA02220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02220);
  }

  return result;
}

uint64_t sub_22D76C2FC()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76C4B8@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v24 = sub_22D81A768();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v25;
  sub_22D81A778();
  v18 = *(v13 + 56);
  v13 += 56;
  v18(v17, 0, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v19 = *(v13 + 16);
  v20 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_22D81DF60;
  sub_22D81A738();
  v21 = v26;
  sub_22D81A2C8();
  v22 = sub_22D81A2B8();
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_22D76C890(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22D81A918();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(type metadata accessor for AlarmEntity() - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D76C9A8, 0, 0);
}

uint64_t sub_22D76C9A8()
{
  if (qword_27DA019E0 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = v0[4];
    v2 = qword_27DA0D378;
    sub_22D81A0B8();
    v3 = v0[2];
    v22 = *(v3 + 16);
    if (!v22)
    {
      break;
    }

    v4 = 0;
    v21 = v0[8];
    v20 = v3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v5 = v0[6];
    v6 = (v5 + 16);
    v7 = (v5 + 8);
    while (v4 < *(v3 + 16))
    {
      v8 = v0[9];
      v9 = v0[7];
      v10 = v0[5];
      sub_22D76D5B4(v20 + *(v21 + 72) * v4, v8);
      (*v6)(v9, v8, v10);
      sub_22D750754(v8);
      sub_22D81A8D8();
      (*v7)(v9, v10);
      v11 = sub_22D81B2B8();

      v12 = [v2 alarmWithIDString_];

      if (v12)
      {
        if ([v12 isSleepAlarm])
        {
          v17 = v0[9];
          v18 = v0[7];

          sub_22D76D618();
          swift_allocError();
          swift_willThrow();

          v16 = v0[1];
          goto LABEL_11;
        }
      }

      if (v22 == ++v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_9:
  v13 = v0[9];
  v14 = v0[7];
  v15 = v0[3];

  sub_22D819FD8();

  v16 = v0[1];
LABEL_11:

  return v16();
}

unint64_t sub_22D76CC3C()
{
  result = qword_27DA02228;
  if (!qword_27DA02228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02228);
  }

  return result;
}

unint64_t sub_22D76CC94()
{
  result = qword_27DA02230;
  if (!qword_27DA02230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02230);
  }

  return result;
}

unint64_t sub_22D76CCEC()
{
  result = qword_27DA02238;
  if (!qword_27DA02238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02238);
  }

  return result;
}

uint64_t sub_22D76CDAC()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76CF74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D76C890(a1, v4);
}

uint64_t sub_22D76D014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D76D088();
  *a1 = result;
  return result;
}

uint64_t sub_22D76D03C(uint64_t a1)
{
  v2 = sub_22D76CC3C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D76D088()
{
  v0 = sub_22D81A428();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = v30 - v10;
  v11 = sub_22D81A748();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22D81A958();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_22D81B2A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_22D81A768();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  v30[1] = v30 - v24;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02240, &qword_22D8201A0);
  sub_22D81B228();
  sub_22D81A948();
  v25 = *(v12 + 104);
  v25(v15, *MEMORY[0x277CC9110], v11);
  sub_22D81A778();
  (*(v21 + 56))(v31, 1, 1, v20);
  v38 = 0;
  sub_22D81B228();
  *v15 = type metadata accessor for MTAppIntentsManager();
  v25(v15, *MEMORY[0x277CC9120], v11);
  sub_22D81A948();
  sub_22D81A778();
  v26 = v33;
  sub_22D819F88();
  v27 = sub_22D819F78();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v28(v34, 1, 1, v27);
  (*(v36 + 104))(v35, *MEMORY[0x277CBA308], v37);
  sub_22D7506FC();
  return sub_22D81A108();
}

uint64_t sub_22D76D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D76D618()
{
  result = qword_27DA02248;
  if (!qword_27DA02248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02248);
  }

  return result;
}

unint64_t sub_22D76D680()
{
  result = qword_27DA02250;
  if (!qword_27DA02250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02250);
  }

  return result;
}

unint64_t sub_22D76D6D8()
{
  result = qword_27DA02258;
  if (!qword_27DA02258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02258);
  }

  return result;
}

unint64_t sub_22D76D730()
{
  result = qword_27DA02260;
  if (!qword_27DA02260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02260);
  }

  return result;
}

uint64_t sub_22D76D7BC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D76DB40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D76DB60, 0, 0);
}

uint64_t sub_22D76DB60()
{
  v1 = [*(v0 + 24) timersSync];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() firstActiveTimerFromTimers_];

    if ([v3 state])
    {
      v4 = *(v0 + 24);
      v5 = [v3 timerByUpdatingWithState_];
      v6 = [v4 updateTimer_];

      v3 = v6;
    }
  }

  v7 = *(v0 + 16);
  sub_22D819FD8();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D76DC80()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76DE40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02280, &qword_22D820408);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D76DF18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D76DB40(a1, v4);
}

id sub_22D76DFB8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  *a1 = result;
  return result;
}

uint64_t sub_22D76DFF4(uint64_t a1)
{
  v2 = sub_22D76E040();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D76E040()
{
  result = qword_27DA02278;
  if (!qword_27DA02278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02278);
  }

  return result;
}

uint64_t sub_22D76E094(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_22D81B4F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  v10 = a1;
  sub_22D75D890(0, 0, v6, &unk_22D820440, v8);
}

uint64_t sub_22D76E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D76E1C0, 0, 0);
}

uint64_t sub_22D76E1C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D76E1EC, v1, 0);
}

uint64_t sub_22D76E1EC()
{
  v1 = *(v0 + 32);
  sub_22D770C14(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D76E24C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D76E1A0(a1, v4, v5, v7, v6);
}

uint64_t sub_22D76E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_22D81B4F8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v6;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a1;
  v18[10] = a2;
  sub_22D81A398();
  v19 = v6;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v16, &unk_22D820450, v18);
}

uint64_t sub_22D76E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76E5A8, 0, 0);
}

uint64_t sub_22D76E5A8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[4];
  v5 = *(v3[2] + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  v3[9] = v5;
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!v3[6])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v3[8])
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](a1, v5, a3);
  }

  a1 = sub_22D76E5F8;
  a3 = 0;
  return MEMORY[0x2822009F8](a1, v5, a3);
}

uint64_t sub_22D76E5F8()
{
  v1 = v0[9];
  sub_22D77151C(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76E664(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22D744B08;

  return sub_22D76E574(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_22D76E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v15 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  *(v16 + 5) = a1;
  *(v16 + 6) = a2;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = v3;
  sub_22D81A398();
  sub_22D75D890(0, 0, v13, &unk_22D820460, v16);
}

uint64_t sub_22D76EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22D76EAF4, 0, 0);
}

uint64_t sub_22D76EAF4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22D76EB20, v1, 0);
}

uint64_t sub_22D76EB20()
{
  v1 = v0[6];
  sub_22D771A84(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76EB84(uint64_t a1)
{
  v4 = *(sub_22D81A8C8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D76EAD0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_22D76EEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a3;
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
  v17 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v20 = v23;
  v19 = v24;
  *(v18 + 4) = v5;
  *(v18 + 5) = v20;
  *(v18 + 6) = a2;
  *(v18 + 7) = v19;
  *(v18 + 8) = a4;
  (*(v10 + 32))(&v18[v17], &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v21 = v5;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v15, &unk_22D820470, v18);
}

uint64_t sub_22D76F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_22D76F12C, 0, 0);
}

uint64_t sub_22D76F12C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22D76F158, v1, 0);
}

uint64_t sub_22D76F158()
{
  v1 = v0[8];
  sub_22D771F94(v0[3], v0[4], v0[5], v0[6], v0[7]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76F1C0(uint64_t a1)
{
  v4 = *(sub_22D81A8C8() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_22D744B08;

  return sub_22D76F0FC(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22D76F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  v15 = v4;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v12, &unk_22D820480, v14);
}

uint64_t sub_22D76F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76F6C4, 0, 0);
}

uint64_t sub_22D76F6C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_22D76F6F0, v1, 0);
}

uint64_t sub_22D76F6F0()
{
  v1 = v0[7];
  sub_22D7724D0(v0[3], v0[4], v0[5], v0[6]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76F758(uint64_t a1)
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
  v11[1] = sub_22D744B08;

  return sub_22D76F69C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D76F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76F9C0, 0, 0);
}

uint64_t sub_22D76F9C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76F9EC, v1, 0);
}

uint64_t sub_22D76F9EC()
{
  v1 = v0[5];
  sub_22D772978(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76FA50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76F99C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D76FB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76FB7C, 0, 0);
}

uint64_t sub_22D76FB7C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76FBA8, v1, 0);
}

uint64_t sub_22D76FBA8()
{
  v1 = v0[5];
  sub_22D772E98(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76FC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76FB58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D76FD34()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D76FD60, v1, 0);
}

uint64_t sub_22D76FD60()
{
  v1 = *(v0 + 24);
  sub_22D784644();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D76FDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76FD14(a1, v4, v5, v6);
}

uint64_t sub_22D76FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76FEEC, 0, 0);
}

uint64_t sub_22D76FEEC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76FF18, v1, 0);
}

uint64_t sub_22D76FF18()
{
  v1 = v0[5];
  sub_22D7736AC(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D76FF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76FEC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7700A8, 0, 0);
}

uint64_t sub_22D7700A8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D7700D4, v1, 0);
}

uint64_t sub_22D7700D4()
{
  v1 = v0[5];
  sub_22D773BCC(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D770138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D770084(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770220(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_22D81B4F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;
  v9 = v1;
  sub_22D75D890(0, 0, v6, &unk_22D8204E0, v8);
}

uint64_t sub_22D770328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D770348, 0, 0);
}

uint64_t sub_22D770348()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D770374, v1, 0);
}

uint64_t sub_22D770374()
{
  v1 = v0[4];
  sub_22D773304(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D7703D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D770328(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7705C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;
  sub_22D81A398();
  sub_22D75D890(0, 0, v11, a4, v13);
}

uint64_t sub_22D7706D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7706F8, 0, 0);
}

uint64_t sub_22D7706F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D770724, v1, 0);
}

uint64_t sub_22D770724()
{
  v1 = v0[5];
  sub_22D7740EC(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D770788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7706D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_22D81B2C8();
  v13 = v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v11;
  v15[6] = v13;
  v16 = a1;
  sub_22D75D890(0, 0, v10, a5, v15);
}

id MTReporterProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MTReporterProxy.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor;
  type metadata accessor for Reporter();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = MEMORY[0x277D84F90];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02290, &qword_22D8204F8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v7 + 120) = sub_22D775364();
  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = sub_22D77F3C8(qword_280CD17C8, v12, type metadata accessor for Reporter);
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v13;
  v14[4] = v7;
  swift_retain_n();
  sub_22D75D890(0, 0, v5, &unk_22D820508, v14);

  *&v1[v6] = v7;
  v15 = type metadata accessor for MTReporterProxy();
  v17.receiver = v1;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

id MTReporterProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTReporterProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D770C14(void *a1)
{
  v34 = a1;
  v33 = type metadata accessor for AlarmReport(0);
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v29 = &v28 - v10;
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  swift_beginAccess();
  v32 = v1;
  v12 = *(v1 + 112);
  v13 = *(v12 + 16);
  result = sub_22D81A398();
  if (v13)
  {
    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      sub_22D77FDE0(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v8, type metadata accessor for AlarmReport);
      v16 = &v8[*(v33 + 112)];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = [v34 alarmIDString];
      v20 = sub_22D81B2C8();
      v22 = v21;

      if (v18 == v20 && v17 == v22)
      {

LABEL_12:

        v27 = v29;
        sub_22D785624(v8, v29, type metadata accessor for AlarmReport);
        v26 = v30;
        sub_22D785624(v27, v30, type metadata accessor for AlarmReport);
        sub_22D770EF0(v34);
        goto LABEL_13;
      }

      v24 = sub_22D81BB08();

      if (v24)
      {
        goto LABEL_12;
      }

      ++v15;
      result = sub_22D77FE48(v8, type metadata accessor for AlarmReport);
      if (v13 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v25 = v34;
    v26 = v31;
    sub_22D771248(v25, v31);
LABEL_13:
    sub_22D77460C(v26);
    return sub_22D77FE48(v26, type metadata accessor for AlarmReport);
  }

  return result;
}

void sub_22D770EF0(void *a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = [a1 firedDate];
  if (v18)
  {
    v19 = v18;
    sub_22D81A878();

    (*(v4 + 32))(v17, v10, v3);
    (*(v4 + 56))(v17, 0, 1, v3);
  }

  else
  {
    v20 = type metadata accessor for AlarmReport(0);
    sub_22D7640C4(v1 + *(v20 + 24), v17, &qword_27DA02000, &qword_22D81F160);
  }

  v21 = type metadata accessor for AlarmReport(0);
  sub_22D77FD70(v17, v1 + v21[6]);
  v22 = [a1 dismissedDate];
  if (v22)
  {
    v23 = v22;
    sub_22D81A878();

    (*(v4 + 32))(v15, v8, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
  }

  else
  {
    sub_22D7640C4(v1 + v21[20], v15, &qword_27DA02000, &qword_22D81F160);
  }

  sub_22D77FD70(v15, v1 + v21[20]);
  v24 = [a1 sound];
  v25 = [v24 isSilent];

  *(v1 + v21[23]) = v25;
  *(v1 + v21[25]) = MTisDeviceUnlocked() ^ 1;
  *(v1 + v21[22]) = [objc_opt_self() isOverrideAlarm_];
  v26 = [a1 sound];
  v27 = [v26 mediaItemIdentifier];

  if (v27)
  {
  }

  *(v1 + v21[24]) = v27 != 0;
}

void sub_22D771248(void *a1@<X0>, char *a2@<X8>)
{
  v3 = type metadata accessor for AlarmReport(0);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = v3[6];
  v5 = sub_22D81A8C8();
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[v3[7]], 1, 1, v5);
  v6(&a2[v3[8]], 1, 1, v5);
  v6(&a2[v3[9]], 1, 1, v5);
  v7 = &a2[v3[10]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[v3[11]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v6(&a2[v3[12]], 1, 1, v5);
  v6(&a2[v3[13]], 1, 1, v5);
  v6(&a2[v3[14]], 1, 1, v5);
  v6(&a2[v3[15]], 1, 1, v5);
  v9 = &a2[v3[16]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v6(&a2[v3[17]], 1, 1, v5);
  v10 = &a2[v3[18]];
  *v10 = 0;
  v10[8] = 1;
  v6(&a2[v3[19]], 1, 1, v5);
  v6(&a2[v3[20]], 1, 1, v5);
  v11 = v3[21];
  a2[v3[22]] = 0;
  a2[v3[23]] = 0;
  a2[v3[24]] = 0;
  a2[v3[25]] = 0;
  *&a2[v3[26]] = MEMORY[0x277D84F90];
  v12 = &a2[v3[27]];
  *v12 = 0xD000000000000025;
  *(v12 + 1) = 0x800000022D829600;
  v13 = [a1 alarmIDString];
  v14 = sub_22D81B2C8();
  v16 = v15;

  v17 = &a2[v3[28]];
  *v17 = v14;
  v17[1] = v16;
  a2[v11] = [a1 isSleepAlarm];
  sub_22D770EF0(a1);
}

uint64_t sub_22D77151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v44 - v11;
  v12 = type metadata accessor for AlarmReport(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  swift_beginAccess();
  v50 = v6;
  v23 = *(v6 + 112);
  v24 = *(v23 + 16);
  result = sub_22D81A398();
  if (v24)
  {
    v26 = 0;
    while (v26 < *(v23 + 16))
    {
      sub_22D77FDE0(v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v26, v17, type metadata accessor for AlarmReport);
      v27 = &v17[v12[28]];
      v28 = *v27 == a5 && *(v27 + 1) == a6;
      if (v28 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v17, v20, type metadata accessor for AlarmReport);
        sub_22D785624(v20, v22, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v26;
      result = sub_22D77FE48(v17, type metadata accessor for AlarmReport);
      if (v24 == v26)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v22 = 0u;
    *(v22 + 1) = 0u;
    v29 = v12[6];
    v30 = sub_22D81A8C8();
    v31 = *(*(v30 - 8) + 56);
    v31(&v22[v29], 1, 1, v30);
    v31(&v22[v12[7]], 1, 1, v30);
    v31(&v22[v12[8]], 1, 1, v30);
    v31(&v22[v12[9]], 1, 1, v30);
    v32 = &v22[v12[10]];
    *v32 = 0;
    *(v32 + 1) = 0;
    v33 = &v22[v12[11]];
    *v33 = 0;
    *(v33 + 1) = 0;
    v31(&v22[v12[12]], 1, 1, v30);
    v31(&v22[v12[13]], 1, 1, v30);
    v31(&v22[v12[14]], 1, 1, v30);
    v31(&v22[v12[15]], 1, 1, v30);
    v34 = &v22[v12[16]];
    *v34 = 0;
    *(v34 + 1) = 0;
    v31(&v22[v12[17]], 1, 1, v30);
    v35 = &v22[v12[18]];
    *v35 = 0;
    v35[8] = 1;
    v31(&v22[v12[19]], 1, 1, v30);
    v31(&v22[v12[20]], 1, 1, v30);
    v22[v12[21]] = 0;
    v22[v12[22]] = 0;
    v22[v12[23]] = 0;
    v22[v12[24]] = 0;
    v22[v12[25]] = 0;
    *&v22[v12[26]] = MEMORY[0x277D84F90];
    v36 = &v22[v12[27]];
    *v36 = 0xD000000000000025;
    *(v36 + 1) = 0x800000022D829600;
    v37 = &v22[v12[28]];
    *v37 = a5;
    *(v37 + 1) = a6;
    sub_22D81A398();
LABEL_12:
    v38 = *(v22 + 1);
    v39 = v46;
    sub_22D81A398();

    *v22 = v45;
    *(v22 + 1) = v39;
    v40 = *(v22 + 3);
    v41 = v48;
    sub_22D81A398();

    *(v22 + 2) = v47;
    *(v22 + 3) = v41;
    v42 = v49;
    sub_22D81A8B8();
    v43 = sub_22D81A8C8();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_22D77FD70(v42, &v22[v12[7]]);
    sub_22D77460C(v22);
    return sub_22D77FE48(v22, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D771A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = type metadata accessor for AlarmReport(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  swift_beginAccess();
  v37 = v3;
  v16 = *(v3 + 112);
  v17 = *(v16 + 16);
  result = sub_22D81A398();
  if (v17)
  {
    v19 = 0;
    while (v19 < *(v16 + 16))
    {
      sub_22D77FDE0(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v11, type metadata accessor for AlarmReport);
      v20 = &v11[v6[28]];
      v21 = *v20 == a1 && *(v20 + 1) == a2;
      if (v21 || (sub_22D81BB08() & 1) != 0)
      {

        v31 = v35;
        sub_22D785624(v11, v35, type metadata accessor for AlarmReport);
        sub_22D785624(v31, v15, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v19;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v17 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v15 = 0u;
    *(v15 + 1) = 0u;
    v22 = v6[6];
    v23 = sub_22D81A8C8();
    v24 = *(*(v23 - 8) + 56);
    v24(&v15[v22], 1, 1, v23);
    v24(&v15[v6[7]], 1, 1, v23);
    v24(&v15[v6[8]], 1, 1, v23);
    v24(&v15[v6[9]], 1, 1, v23);
    v25 = &v15[v6[10]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v15[v6[11]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v24(&v15[v6[12]], 1, 1, v23);
    v24(&v15[v6[13]], 1, 1, v23);
    v24(&v15[v6[14]], 1, 1, v23);
    v24(&v15[v6[15]], 1, 1, v23);
    v27 = &v15[v6[16]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v24(&v15[v6[17]], 1, 1, v23);
    v28 = &v15[v6[18]];
    *v28 = 0;
    v28[8] = 1;
    v24(&v15[v6[19]], 1, 1, v23);
    v24(&v15[v6[20]], 1, 1, v23);
    v15[v6[21]] = 0;
    v15[v6[22]] = 0;
    v15[v6[23]] = 0;
    v15[v6[24]] = 0;
    v15[v6[25]] = 0;
    *&v15[v6[26]] = MEMORY[0x277D84F90];
    v29 = &v15[v6[27]];
    *v29 = 0xD000000000000025;
    *(v29 + 1) = 0x800000022D829600;
    v30 = &v15[v6[28]];
    *v30 = a1;
    *(v30 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = v6[8];
    sub_22D764440(&v15[v32], &qword_27DA02000, &qword_22D81F160);
    v33 = sub_22D81A8C8();
    v34 = *(v33 - 8);
    (*(v34 + 16))(&v15[v32], v36, v33);
    (*(v34 + 56))(&v15[v32], 0, 1, v33);
    sub_22D77460C(v15);
    return sub_22D77FE48(v15, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D771F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v40 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  swift_beginAccess();
  v44 = v5;
  v18 = *(v5 + 112);
  v19 = *(v18 + 16);
  result = sub_22D81A398();
  if (v19)
  {
    v21 = 0;
    while (v21 < *(v18 + 16))
    {
      sub_22D77FDE0(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v13, type metadata accessor for AlarmReport);
      v22 = &v13[v8[28]];
      v23 = *v22 == a1 && *(v22 + 1) == a2;
      if (v23 || (sub_22D81BB08() & 1) != 0)
      {

        v33 = v40;
        sub_22D785624(v13, v40, type metadata accessor for AlarmReport);
        sub_22D785624(v33, v17, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v21;
      result = sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      if (v19 == v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v17 = 0u;
    *(v17 + 1) = 0u;
    v24 = v8[6];
    v25 = sub_22D81A8C8();
    v26 = *(*(v25 - 8) + 56);
    v26(&v17[v24], 1, 1, v25);
    v26(&v17[v8[7]], 1, 1, v25);
    v26(&v17[v8[8]], 1, 1, v25);
    v26(&v17[v8[9]], 1, 1, v25);
    v27 = &v17[v8[10]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v28 = &v17[v8[11]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v26(&v17[v8[12]], 1, 1, v25);
    v26(&v17[v8[13]], 1, 1, v25);
    v26(&v17[v8[14]], 1, 1, v25);
    v26(&v17[v8[15]], 1, 1, v25);
    v29 = &v17[v8[16]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v26(&v17[v8[17]], 1, 1, v25);
    v30 = &v17[v8[18]];
    *v30 = 0;
    v30[8] = 1;
    v26(&v17[v8[19]], 1, 1, v25);
    v26(&v17[v8[20]], 1, 1, v25);
    v17[v8[21]] = 0;
    v17[v8[22]] = 0;
    v17[v8[23]] = 0;
    v17[v8[24]] = 0;
    v17[v8[25]] = 0;
    *&v17[v8[26]] = MEMORY[0x277D84F90];
    v31 = &v17[v8[27]];
    *v31 = 0xD000000000000025;
    *(v31 + 1) = 0x800000022D829600;
    v32 = &v17[v8[28]];
    *v32 = a1;
    *(v32 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v34 = &v17[v8[10]];
    v35 = *(v34 + 1);
    v36 = v42;
    sub_22D81A398();

    *v34 = v41;
    *(v34 + 1) = v36;
    v37 = v8[12];
    sub_22D764440(&v17[v37], &qword_27DA02000, &qword_22D81F160);
    v38 = sub_22D81A8C8();
    v39 = *(v38 - 8);
    (*(v39 + 16))(&v17[v37], v43, v38);
    (*(v39 + 56))(&v17[v37], 0, 1, v38);
    sub_22D77460C(v17);
    return sub_22D77FE48(v17, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D7724D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v37 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  swift_beginAccess();
  v40 = v4;
  v17 = *(v4 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v12, type metadata accessor for AlarmReport);
      v21 = &v12[v7[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        v32 = v37;
        sub_22D785624(v12, v37, type metadata accessor for AlarmReport);
        sub_22D785624(v32, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v12, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v7[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v7[7]], 1, 1, v24);
    v25(&v16[v7[8]], 1, 1, v24);
    v25(&v16[v7[9]], 1, 1, v24);
    v26 = &v16[v7[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v7[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v7[12]], 1, 1, v24);
    v25(&v16[v7[13]], 1, 1, v24);
    v25(&v16[v7[14]], 1, 1, v24);
    v25(&v16[v7[15]], 1, 1, v24);
    v28 = &v16[v7[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v7[17]], 1, 1, v24);
    v29 = &v16[v7[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v7[19]], 1, 1, v24);
    v25(&v16[v7[20]], 1, 1, v24);
    v16[v7[21]] = 0;
    v16[v7[22]] = 0;
    v16[v7[23]] = 0;
    v16[v7[24]] = 0;
    v16[v7[25]] = 0;
    *&v16[v7[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v7[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v7[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v33 = &v16[v7[11]];
    v34 = *(v33 + 1);
    v35 = v39;
    sub_22D81A398();

    *v33 = v38;
    *(v33 + 1) = v35;
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D772978(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v38 = v2;
  v19 = *(v2 + 112);
  v20 = *(v19 + 16);
  result = sub_22D81A398();
  if (v20)
  {
    v22 = 0;
    while (v22 < *(v19 + 16))
    {
      sub_22D77FDE0(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v13, type metadata accessor for AlarmReport);
      v23 = &v13[v8[28]];
      v24 = *v23 == a1 && *(v23 + 1) == a2;
      if (v24 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v13, v16, type metadata accessor for AlarmReport);
        sub_22D785624(v16, v18, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v22;
      result = sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      if (v20 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v18 = 0u;
    *(v18 + 1) = 0u;
    v25 = v8[6];
    v26 = sub_22D81A8C8();
    v27 = *(*(v26 - 8) + 56);
    v27(&v18[v25], 1, 1, v26);
    v27(&v18[v8[7]], 1, 1, v26);
    v27(&v18[v8[8]], 1, 1, v26);
    v27(&v18[v8[9]], 1, 1, v26);
    v28 = &v18[v8[10]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v18[v8[11]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v27(&v18[v8[12]], 1, 1, v26);
    v27(&v18[v8[13]], 1, 1, v26);
    v27(&v18[v8[14]], 1, 1, v26);
    v27(&v18[v8[15]], 1, 1, v26);
    v30 = &v18[v8[16]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v27(&v18[v8[17]], 1, 1, v26);
    v31 = &v18[v8[18]];
    *v31 = 0;
    v31[8] = 1;
    v27(&v18[v8[19]], 1, 1, v26);
    v27(&v18[v8[20]], 1, 1, v26);
    v18[v8[21]] = 0;
    v18[v8[22]] = 0;
    v18[v8[23]] = 0;
    v18[v8[24]] = 0;
    v18[v8[25]] = 0;
    *&v18[v8[26]] = MEMORY[0x277D84F90];
    v32 = &v18[v8[27]];
    *v32 = 0xD000000000000025;
    *(v32 + 1) = 0x800000022D829600;
    v33 = &v18[v8[28]];
    *v33 = a1;
    *(v33 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v34 = v37;
    sub_22D81A8B8();
    v35 = sub_22D81A8C8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_22D77FD70(v34, &v18[v8[9]]);
    sub_22D77460C(v18);
    return sub_22D77FE48(v18, type metadata accessor for AlarmReport);
  }

  return result;
}

size_t sub_22D772E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v36 - v6;
  v40 = type metadata accessor for AlarmReport(0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  swift_beginAccess();
  result = *(v3 + 112);
  v17 = *(result + 16);
  if (v17)
  {
    v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = result + v38;
    v19 = *(v7 + 72);
    v36[1] = result;
    sub_22D81A398();
    v37 = v15;
    while (1)
    {
      sub_22D77FDE0(v18, v15, type metadata accessor for AlarmReport);
      sub_22D77FDE0(v15, v13, type metadata accessor for AlarmReport);
      v21 = v41;
      sub_22D81A8B8();
      v22 = sub_22D81A8C8();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      v23 = v40;
      sub_22D77FD70(v21, &v13[*(v40 + 56)]);
      v24 = &v13[*(v23 + 64)];
      v25 = *(v24 + 1);
      v26 = v43;
      sub_22D81A398();

      *v24 = v42;
      *(v24 + 1) = v26;
      v28 = *(v3 + 112);
      MEMORY[0x28223BE20](v27);
      v36[-2] = v13;
      sub_22D81A398();
      v29 = sub_22D774900(sub_22D7863BC, &v36[-4], v28);
      LOBYTE(v24) = v30;

      if (v24)
      {
        sub_22D77FDE0(v13, v39, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v31 = *(v3 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 112) = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_22D7ED5C8(0, v31[2] + 1, 1, v31);
          *(v3 + 112) = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_22D7ED5C8(v33 > 1, v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        sub_22D785624(v39, v31 + v38 + v34 * v19, type metadata accessor for AlarmReport);
        *(v3 + 112) = v31;
      }

      else
      {
        swift_beginAccess();
        v35 = *(v3 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 112) = v35;
        if (result)
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v35);
          v35 = result;
          *(v3 + 112) = result;
          if ((v29 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v29 >= v35[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v13, v35 + v38 + v29 * v19);
        *(v3 + 112) = v35;
      }

      swift_endAccess();
      v20 = *(v3 + 120);
      sub_22D81A198();
      sub_22D77670C(v13);

      v15 = v37;
      sub_22D77FE48(v37, type metadata accessor for AlarmReport);
      sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      v18 += v19;
      if (!--v17)
      {
      }
    }
  }

  return result;
}

size_t sub_22D773304(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v32 = type metadata accessor for AlarmReport(0);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  swift_beginAccess();
  result = *(v2 + 112);
  v13 = *(result + 16);
  if (v13)
  {
    v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = result + v30;
    v15 = *(v3 + 72);
    v28[1] = result;
    sub_22D81A398();
    v29 = v11;
    while (1)
    {
      sub_22D77FDE0(v14, v11, type metadata accessor for AlarmReport);
      v17 = sub_22D77FDE0(v11, v9, type metadata accessor for AlarmReport);
      v18 = &v9[*(v32 + 72)];
      *v18 = v33;
      v18[8] = 0;
      v19 = *(v2 + 112);
      MEMORY[0x28223BE20](v17);
      v28[-2] = v9;
      sub_22D81A398();
      v20 = sub_22D774900(sub_22D7863BC, &v28[-4], v19);
      v22 = v21;

      if (v22)
      {
        sub_22D77FDE0(v9, v31, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v23 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_22D7ED5C8(0, v23[2] + 1, 1, v23);
          *(v2 + 112) = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_22D7ED5C8(v25 > 1, v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        sub_22D785624(v31, v23 + v30 + v26 * v15, type metadata accessor for AlarmReport);
        *(v2 + 112) = v23;
      }

      else
      {
        swift_beginAccess();
        v27 = *(v2 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v27;
        if (result)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v27);
          v27 = result;
          *(v2 + 112) = result;
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v20 >= v27[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v9, v27 + v30 + v20 * v15);
        *(v2 + 112) = v27;
      }

      swift_endAccess();
      v16 = *(v2 + 120);
      sub_22D81A198();
      sub_22D77670C(v9);

      v11 = v29;
      sub_22D77FE48(v29, type metadata accessor for AlarmReport);
      sub_22D77FE48(v9, type metadata accessor for AlarmReport);
      v14 += v15;
      if (!--v13)
      {
      }
    }
  }

  return result;
}

uint64_t sub_22D7736AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v38 = v2;
  v19 = *(v2 + 112);
  v20 = *(v19 + 16);
  result = sub_22D81A398();
  if (v20)
  {
    v22 = 0;
    while (v22 < *(v19 + 16))
    {
      sub_22D77FDE0(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v13, type metadata accessor for AlarmReport);
      v23 = &v13[v8[28]];
      v24 = *v23 == a1 && *(v23 + 1) == a2;
      if (v24 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v13, v16, type metadata accessor for AlarmReport);
        sub_22D785624(v16, v18, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v22;
      result = sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      if (v20 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v18 = 0u;
    *(v18 + 1) = 0u;
    v25 = v8[6];
    v26 = sub_22D81A8C8();
    v27 = *(*(v26 - 8) + 56);
    v27(&v18[v25], 1, 1, v26);
    v27(&v18[v8[7]], 1, 1, v26);
    v27(&v18[v8[8]], 1, 1, v26);
    v27(&v18[v8[9]], 1, 1, v26);
    v28 = &v18[v8[10]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v18[v8[11]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v27(&v18[v8[12]], 1, 1, v26);
    v27(&v18[v8[13]], 1, 1, v26);
    v27(&v18[v8[14]], 1, 1, v26);
    v27(&v18[v8[15]], 1, 1, v26);
    v30 = &v18[v8[16]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v27(&v18[v8[17]], 1, 1, v26);
    v31 = &v18[v8[18]];
    *v31 = 0;
    v31[8] = 1;
    v27(&v18[v8[19]], 1, 1, v26);
    v27(&v18[v8[20]], 1, 1, v26);
    v18[v8[21]] = 0;
    v18[v8[22]] = 0;
    v18[v8[23]] = 0;
    v18[v8[24]] = 0;
    v18[v8[25]] = 0;
    *&v18[v8[26]] = MEMORY[0x277D84F90];
    v32 = &v18[v8[27]];
    *v32 = 0xD000000000000025;
    *(v32 + 1) = 0x800000022D829600;
    v33 = &v18[v8[28]];
    *v33 = a1;
    *(v33 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v34 = v37;
    sub_22D81A8B8();
    v35 = sub_22D81A8C8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_22D77FD70(v34, &v18[v8[13]]);
    sub_22D77460C(v18);
    return sub_22D77FE48(v18, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D773BCC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v38 = v2;
  v19 = *(v2 + 112);
  v20 = *(v19 + 16);
  result = sub_22D81A398();
  if (v20)
  {
    v22 = 0;
    while (v22 < *(v19 + 16))
    {
      sub_22D77FDE0(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v13, type metadata accessor for AlarmReport);
      v23 = &v13[v8[28]];
      v24 = *v23 == a1 && *(v23 + 1) == a2;
      if (v24 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v13, v16, type metadata accessor for AlarmReport);
        sub_22D785624(v16, v18, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v22;
      result = sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      if (v20 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v18 = 0u;
    *(v18 + 1) = 0u;
    v25 = v8[6];
    v26 = sub_22D81A8C8();
    v27 = *(*(v26 - 8) + 56);
    v27(&v18[v25], 1, 1, v26);
    v27(&v18[v8[7]], 1, 1, v26);
    v27(&v18[v8[8]], 1, 1, v26);
    v27(&v18[v8[9]], 1, 1, v26);
    v28 = &v18[v8[10]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v18[v8[11]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v27(&v18[v8[12]], 1, 1, v26);
    v27(&v18[v8[13]], 1, 1, v26);
    v27(&v18[v8[14]], 1, 1, v26);
    v27(&v18[v8[15]], 1, 1, v26);
    v30 = &v18[v8[16]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v27(&v18[v8[17]], 1, 1, v26);
    v31 = &v18[v8[18]];
    *v31 = 0;
    v31[8] = 1;
    v27(&v18[v8[19]], 1, 1, v26);
    v27(&v18[v8[20]], 1, 1, v26);
    v18[v8[21]] = 0;
    v18[v8[22]] = 0;
    v18[v8[23]] = 0;
    v18[v8[24]] = 0;
    v18[v8[25]] = 0;
    *&v18[v8[26]] = MEMORY[0x277D84F90];
    v32 = &v18[v8[27]];
    *v32 = 0xD000000000000025;
    *(v32 + 1) = 0x800000022D829600;
    v33 = &v18[v8[28]];
    *v33 = a1;
    *(v33 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v34 = v37;
    sub_22D81A8B8();
    v35 = sub_22D81A8C8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_22D77FD70(v34, &v18[v8[17]]);
    sub_22D77460C(v18);
    return sub_22D77FE48(v18, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D7740EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  swift_beginAccess();
  v38 = v2;
  v19 = *(v2 + 112);
  v20 = *(v19 + 16);
  result = sub_22D81A398();
  if (v20)
  {
    v22 = 0;
    while (v22 < *(v19 + 16))
    {
      sub_22D77FDE0(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v13, type metadata accessor for AlarmReport);
      v23 = &v13[v8[28]];
      v24 = *v23 == a1 && *(v23 + 1) == a2;
      if (v24 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v13, v16, type metadata accessor for AlarmReport);
        sub_22D785624(v16, v18, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v22;
      result = sub_22D77FE48(v13, type metadata accessor for AlarmReport);
      if (v20 == v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v18 = 0u;
    *(v18 + 1) = 0u;
    v25 = v8[6];
    v26 = sub_22D81A8C8();
    v27 = *(*(v26 - 8) + 56);
    v27(&v18[v25], 1, 1, v26);
    v27(&v18[v8[7]], 1, 1, v26);
    v27(&v18[v8[8]], 1, 1, v26);
    v27(&v18[v8[9]], 1, 1, v26);
    v28 = &v18[v8[10]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v18[v8[11]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v27(&v18[v8[12]], 1, 1, v26);
    v27(&v18[v8[13]], 1, 1, v26);
    v27(&v18[v8[14]], 1, 1, v26);
    v27(&v18[v8[15]], 1, 1, v26);
    v30 = &v18[v8[16]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v27(&v18[v8[17]], 1, 1, v26);
    v31 = &v18[v8[18]];
    *v31 = 0;
    v31[8] = 1;
    v27(&v18[v8[19]], 1, 1, v26);
    v27(&v18[v8[20]], 1, 1, v26);
    v18[v8[21]] = 0;
    v18[v8[22]] = 0;
    v18[v8[23]] = 0;
    v18[v8[24]] = 0;
    v18[v8[25]] = 0;
    *&v18[v8[26]] = MEMORY[0x277D84F90];
    v32 = &v18[v8[27]];
    *v32 = 0xD000000000000025;
    *(v32 + 1) = 0x800000022D829600;
    v33 = &v18[v8[28]];
    *v33 = a1;
    *(v33 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v34 = v37;
    sub_22D81A8B8();
    v35 = sub_22D81A8C8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_22D77FD70(v34, &v18[v8[19]]);
    sub_22D77460C(v18);
    return sub_22D77FE48(v18, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D77460C(uint64_t a1)
{
  v3 = type metadata accessor for AlarmReport(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v1 + 112);
  v20 = a1;
  sub_22D81A398();
  v9 = sub_22D774900(sub_22D785604, v19, v8);
  v11 = v10;

  if (v11)
  {
    sub_22D77FDE0(a1, v7, type metadata accessor for AlarmReport);
    swift_beginAccess();
    v12 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_22D7ED5C8(0, v12[2] + 1, 1, v12);
      *(v1 + 112) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_22D7ED5C8(v14 > 1, v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    sub_22D785624(v7, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, type metadata accessor for AlarmReport);
    *(v1 + 112) = v12;
    goto LABEL_11;
  }

  swift_beginAccess();
  v16 = *(v1 + 112);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v16;
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22D781BCC(v16);
  v16 = result;
  *(v1 + 112) = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v9 < v16[2])
  {
    sub_22D78568C(a1, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
    *(v1 + 112) = v16;
LABEL_11:
    swift_endAccess();
    v18 = *(v1 + 120);
    sub_22D81A198();
    sub_22D77670C(a1);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22D774890(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AlarmReport(0) + 112);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08() & 1;
  }
}

uint64_t sub_22D774900(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for AlarmReport(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22D7749EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = type metadata accessor for AlarmReport(0);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90);
  v4[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C0, &qword_22D820A98);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D774B6C, a4, 0);
}

uint64_t sub_22D774B6C()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  sub_22D7640C4(*(v0[7] + 120) + *(**(v0[7] + 120) + 128), v2, &qword_27DA023B8, &qword_22D820A90);
  v4 = *(v3 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C8, &qword_22D820AA0);
  sub_22D81B558();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D0, &qword_22D820AA8);
  (*(*(v6 - 8) + 8))(v2 + v4, v6);
  (*(*(v5 - 8) + 8))(v2, v5);
  v8 = sub_22D77F3C8(qword_280CD17C8, v7, type metadata accessor for Reporter);
  v0[18] = v8;
  v9 = v0[7];
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_22D774D38;
  v12 = v0[17];
  v13 = v0[15];

  return MEMORY[0x2822003E8](v0 + 5, v9, v8, v13);
}

uint64_t sub_22D774D38()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22D774E48, v2, 0);
}

uint64_t sub_22D774E48()
{
  v1 = v0[5];
  v2 = v0[6];
  if (v2)
  {
    v3 = v0[7];
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v8 = *(v3 + 112);
    v9 = v8[2];
    v58 = v2;
    v10 = 0;
    if (v9)
    {
      while (1)
      {
        v11 = v0[9];
        v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v13 = *(v11 + 72);
        v14 = (v8 + v12 + v13 * v10 + *(v0[8] + 112));
        isUniquelyReferenced_nonNull_native = *v14;
        v5 = v14[1];
        if (*v14 == v1 && v2 == v5)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_22D81BB08();
        if (isUniquelyReferenced_nonNull_native)
        {
          break;
        }

        if (v9 == ++v10)
        {
          v10 = v9;
          goto LABEL_15;
        }
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_70;
      }

      if (v10 + 1 == v9)
      {
LABEL_15:
        v9 = v8[2];
        if (v9 >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      else
      {
        v43 = v10 + 1;
        v44 = v8[2];
        v45 = v12 + v13 * (v10 + 1);
        while (v43 < v44)
        {
          v46 = v0[12];
          v47 = v0[8];
          sub_22D77FDE0(v8 + v45, v46, type metadata accessor for AlarmReport);
          v48 = (v46 + *(v47 + 112));
          v49 = v0[12];
          if (*v48 == v1 && v58 == v48[1])
          {
            isUniquelyReferenced_nonNull_native = sub_22D77FE48(v0[12], type metadata accessor for AlarmReport);
          }

          else
          {
            v51 = sub_22D81BB08();
            isUniquelyReferenced_nonNull_native = sub_22D77FE48(v49, type metadata accessor for AlarmReport);
            if ((v51 & 1) == 0)
            {
              if (v43 != v10)
              {
                if (v10 < 0)
                {
                  goto LABEL_64;
                }

                v52 = v8[2];
                if (v10 >= v52)
                {
                  goto LABEL_65;
                }

                isUniquelyReferenced_nonNull_native = sub_22D77FDE0(v8 + v12 + v10 * v13, v0[11], type metadata accessor for AlarmReport);
                if (v43 >= v52)
                {
                  goto LABEL_66;
                }

                v53 = v0[7];
                sub_22D77FDE0(v8 + v45, v0[10], type metadata accessor for AlarmReport);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v53 + 112) = v8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v57 = v0[7];
                  isUniquelyReferenced_nonNull_native = sub_22D781BCC(v8);
                  v8 = isUniquelyReferenced_nonNull_native;
                  *(v57 + 112) = isUniquelyReferenced_nonNull_native;
                }

                if (v10 >= v8[2])
                {
                  goto LABEL_67;
                }

                v54 = v0[7];
                isUniquelyReferenced_nonNull_native = sub_22D785B70(v0[10], v8 + v12 + v10 * v13);
                *(v54 + 112) = v8;
                if (v43 >= v8[2])
                {
                  goto LABEL_68;
                }

                v55 = v0[7];
                isUniquelyReferenced_nonNull_native = sub_22D785B70(v0[11], v8 + v45);
                *(v55 + 112) = v8;
              }

              ++v10;
            }
          }

          v56 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_60;
          }

          v44 = v8[2];
          ++v43;
          v45 += v13;
          if (v56 == v44)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_17:
    v22 = v10 - v9;
    if (!__OFADD__(v9, v10 - v9))
    {
      v23 = v0[7];
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *(v23 + 112) = v8;
      if (!v24 || v10 > v8[3] >> 1)
      {
        v25 = v0[7];
        if (v9 <= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = v9;
        }

        v8 = sub_22D7ED5C8(v24, v26, 1, v8);
        *(v25 + 112) = v8;
      }

      v27 = v0[8];
      v28 = v0[9];
      v29 = v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v30 = *(v28 + 72);
      v31 = v30 * v10;
      isUniquelyReferenced_nonNull_native = swift_arrayDestroy();
      if (v9 != v10)
      {
        v5 = &v29[v30 * v9];
        v6 = v8[2] - v9;
        if (v31 < v30 * v9 || &v29[v30 * v10] >= &v5[v6 * v30])
        {
          v33 = v0[8];
          isUniquelyReferenced_nonNull_native = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v31 != v30 * v9)
        {
          v34 = v0[8];
          isUniquelyReferenced_nonNull_native = swift_arrayInitWithTakeBackToFront();
        }

        v35 = v8[2];
        v36 = __OFADD__(v35, v22);
        v37 = v35 + v22;
        if (v36)
        {
          goto LABEL_69;
        }

        v8[2] = v37;
      }

      *(v0[7] + 112) = v8;
      swift_endAccess();

      v38 = v0[18];
      v39 = v0[7];
      v40 = *(MEMORY[0x277D85798] + 4);
      v41 = swift_task_alloc();
      v0[19] = v41;
      *v41 = v0;
      v41[1] = sub_22D774D38;
      v42 = v0[17];
      v7 = v0[15];
      isUniquelyReferenced_nonNull_native = (v0 + 5);
      v5 = v39;
      v6 = v38;

      return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v5, v6, v7);
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v5, v6, v7);
  }

  v16 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_22D775324()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

char *sub_22D775364()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v36 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D8, &qword_22D820AB0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v36 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E0, &qword_22D820AB8);
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E8, &qword_22D820AC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v17 = sub_22D81B678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F0, &qword_22D820AC8);
  v18 = swift_allocObject();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F8, &qword_22D820AD0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_22D81AD28();
  v23 = MEMORY[0x277D84FA0];
  v18[2] = v22;
  v18[3] = 0x4014000000000000;
  v18[4] = v17;
  v18[5] = v23;
  *(v0 + 2) = v18;
  v24 = &v1[*(*v1 + 128)];
  LODWORD(v17) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90) + 48);
  v25 = *MEMORY[0x277D85778];
  (*(v13 + 104))(v16, v25, v12);
  sub_22D81B508();
  (*(v13 + 8))(v16, v12);
  __asm { FMOV            V0.2D, #2.0 }

  *&v1[*(*v1 + 136)] = _Q0;
  v31 = *(v1 + 2);
  type metadata accessor for AlarmReport(0);
  (*(v5 + 104))(v8, v25, v37);
  sub_22D81A198();
  sub_22D81B588();

  (*(v36 + 32))(&v1[*(*v1 + 120)], v11, v38);
  v32 = sub_22D81B4F8();
  v33 = v39;
  (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v1;
  sub_22D81A198();
  sub_22D75D890(0, 0, v33, &unk_22D820AE0, v34);

  return v1;
}

uint64_t sub_22D7757E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7749EC(a1, v4, v5, v6);
}

uint64_t sub_22D775B48(void *a1)
{
  v13 = MEMORY[0x277D83428] + 64;
  v2 = a1[10];
  result = sub_22D81B578();
  if (v4 <= 0x3F)
  {
    v14 = *(result - 8) + 64;
    v5 = *(a1[12] + 48);
    swift_getAssociatedTypeWitness();
    result = sub_22D81B578();
    if (v6 <= 0x3F)
    {
      v7 = *(result - 8);
      result = sub_22D81B548();
      if (v8 <= 0x3F)
      {
        v9 = *(result - 8);
        swift_getTupleTypeLayout2();
        v15 = &v12;
        v10 = a1[11];
        result = swift_checkMetadataState();
        if (v11 <= 0x3F)
        {
          v16 = *(result - 8) + 64;
          v17 = MEMORY[0x277D84F80] + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22D775CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90);
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02400, &qword_22D820AE8);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = type metadata accessor for AlarmReport(0);
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v4[14] = *(v13 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02408, &qword_22D820AF0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02410, &qword_22D820AF8);
  v4[19] = v15;
  v16 = *(v15 - 8);
  v4[20] = v16;
  v17 = *(v16 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D775F88, 0, 0);
}

uint64_t sub_22D775F88()
{
  v1 = v0[21];
  v2 = v0[4];
  v3 = *(*v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E0, &qword_22D820AB8);
  sub_22D81B558();
  v4 = *v2;
  v0[22] = *(*v2 + 136);
  v0[23] = *(v4 + 128);
  v0[24] = 0;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_22D7760A4;
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_22D7760A4()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22D7761A0, 0, 0);
}

uint64_t sub_22D7761A0()
{
  v1 = v0[18];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[15];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v9 = v0[6];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[24];
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[15];
    v16 = v0[11];
    v17 = (v0[4] + v0[22]);
    sub_22D785624(v1, v14, type metadata accessor for AlarmReport);
    sub_22D77FDE0(v14, v15, type metadata accessor for AlarmReport);
    v18 = *v17;
    v19 = v17[1];
    sub_22D77FDE0(v15, v13, type metadata accessor for AlarmReport);
    v20 = sub_22D77FF48(v18, v19);
    v21 = swift_task_alloc();
    *(v21 + 16) = v15;
    v22 = sub_22D77E5B4(sub_22D785CD0, v21, v20);
    v53 = v12;

    v23 = sub_22D77E434(v22);

    v24 = *(v2 + 104);
    v25 = *(v13 + v24);

    *(v13 + v24) = v23;
    sub_22D77FE48(v15, type metadata accessor for AlarmReport);
    sub_22D784A84(v13);
    sub_22D7640C4(v13 + *(v2 + 24), v16, &qword_27DA02000, &qword_22D81F160);
    v26 = sub_22D81A8C8();
    LODWORD(v13) = (*(*(v26 - 8) + 48))(v16, 1, v26);
    sub_22D764440(v16, &qword_27DA02000, &qword_22D81F160);
    v27 = v0[16];
    v28 = v0[12];
    if (v13 != 1 && *(v27 + *(v28 + 108) + 8))
    {
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[13];
      v32 = v0[10];
      v33 = v0[4];
      v34 = sub_22D81B4F8();
      (*(*(v34 - 8) + 56))(v32, 1, 1, v34);
      sub_22D77FDE0(v27, v29, type metadata accessor for AlarmReport);
      v35 = (*(v31 + 80) + 40) & ~*(v31 + 80);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v33;
      sub_22D785624(v29, v36 + v35, type metadata accessor for AlarmReport);
      sub_22D81A198();
      sub_22D75D890(0, 0, v32, &unk_22D820B08, v36);

      v27 = v0[16];
      v28 = v0[12];
    }

    v52 = v0[17];
    v37 = v0[8];
    v38 = v0[9];
    v39 = v0[6];
    v40 = v0[7];
    v41 = v0[5];
    sub_22D7640C4(v0[4] + v0[23], v39, &qword_27DA023B8, &qword_22D820A90);
    v42 = *(v41 + 48);
    v43 = (v27 + *(v28 + 112));
    v44 = v43[1];
    v0[2] = *v43;
    v0[3] = v44;
    sub_22D81A398();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D0, &qword_22D820AA8);
    sub_22D81B528();
    (*(v37 + 8))(v38, v40);
    sub_22D77FE48(v52, type metadata accessor for AlarmReport);
    sub_22D77FE48(v27, type metadata accessor for AlarmReport);
    (*(*(v45 - 8) + 8))(v39 + v42, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C8, &qword_22D820AA0);
    (*(*(v46 - 8) + 8))(v39, v46);
    v0[24] = v53;
    v47 = *(MEMORY[0x277D85798] + 4);
    v48 = swift_task_alloc();
    v0[25] = v48;
    *v48 = v0;
    v48[1] = sub_22D7760A4;
    v49 = v0[21];
    v50 = v0[18];
    v51 = v0[19];

    return MEMORY[0x2822003E8](v50, 0, 0, v51);
  }
}

uint64_t sub_22D77670C(uint64_t a1)
{
  v3 = sub_22D81B0C8();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81B108();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AlarmReport(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v14 = sub_22D81B678();
  sub_22D77FDE0(a1, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmReport);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_22D785624(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AlarmReport);
  aBlock[4] = sub_22D7856F0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);
  sub_22D81A198();

  sub_22D81B0E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D77F3C8(&qword_280CD29A0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D7548B0(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28);
  sub_22D81B788();
  MEMORY[0x2318D1DA0](0, v10, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v3);
  return (*(v20 + 8))(v10, v21);
}

uint64_t sub_22D776ABC(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 16);
  sub_22D81A198();
  sub_22D81AD18();
}

uint64_t sub_22D776B08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_22D81A198();
  v1(v3);
}

uint64_t sub_22D776B6C()
{
  v16 = v0;
  v1 = v0[8];
  v2 = (v1 + *(type metadata accessor for AlarmReport(0) + 108));
  if (v2[1])
  {
    v3 = *v2;
    v4 = sub_22D77BD64();
    v5 = sub_22D77D8E4(v4);

    if (v5[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02418, &unk_22D820B10);
      v6 = sub_22D81B978();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v15 = v6;
    v7 = sub_22D81A398();
    sub_22D781C1C(v7, 1, &v15);

    v8 = v15;
    v9 = sub_22D81B2B8();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v0[6] = sub_22D785E00;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22D77DB34;
    v0[5] = &block_descriptor_232;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v11);
  }

  v13 = v0[1];

  return v13();
}

char *sub_22D776D5C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 120);
  v4 = v1[10];
  v5 = sub_22D81B578();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *(*v0 + 128);
  v7 = *(v1[12] + 48);
  swift_getAssociatedTypeWitness();
  sub_22D81B578();
  sub_22D81B548();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(&v0[v6], TupleTypeMetadata2);
  (*(*(v1[11] - 8) + 8))(&v0[*(*v0 + 136)]);
  return v0;
}

uint64_t sub_22D776F04()
{
  sub_22D776D5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22D7775A0()
{
  sub_22D777740(319, &qword_280CD1590);
  if (v0 <= 0x3F)
  {
    sub_22D77778C(319, &qword_280CD2E58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22D777740(319, &qword_280CD14F0);
      if (v2 <= 0x3F)
      {
        sub_22D77778C(319, &qword_280CD1588, type metadata accessor for AlarmConcern, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22D777740(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22D81B718();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22D77778C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22D777810(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D777898()
{
  sub_22D77792C(319, &qword_280CD2918);
  if (v0 <= 0x3F)
  {
    sub_22D77792C(319, &qword_280CD2910);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22D77792C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_22D81A8C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22D777994()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v170 = &v162 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v168 = &v162 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v167 = &v162 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v162 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v165 = &v162 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v164 = &v162 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v162 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v162 = &v162 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v162 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v162 - v26;
  v178 = 0;
  v179 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D829630);
  v28 = type metadata accessor for AlarmReport(0);
  MEMORY[0x2318D1A50](*(v1 + *(v28 + 112)), *(v1 + *(v28 + 112) + 8));
  MEMORY[0x2318D1A50](0x3A6465726946090ALL, 0xE900000000000020);
  v169 = v28;
  sub_22D7640C4(v0 + *(v28 + 24), v27, &qword_27DA02000, &qword_22D81F160);
  v29 = sub_22D81A8C8();
  v30 = *(v29 - 8);
  v174 = *(v30 + 48);
  v175 = v30 + 48;
  v31 = v174(v27, 1, v29);
  v171 = v6;
  v172 = v30;
  if (v31 == 1)
  {
    sub_22D764440(v27, &qword_27DA02000, &qword_22D81F160);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v35 = sub_22D81B2B8();
    [v34 setDateFormat_];

    v36 = sub_22D81A818();
    v37 = [v34 stringFromDate_];

    v32 = sub_22D81B2C8();
    v33 = v38;

    (*(v30 + 8))(v27, v29);
  }

  v39 = v29;
  v176 = v32;
  v177 = v33;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  v40 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v40);

  MEMORY[0x2318D1A50](0x656C69537369090ALL, 0xEC000000203A746ELL);
  v41 = v169;
  if (*(v1 + v169[23]))
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (*(v1 + v169[23]))
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v42, v43);

  MEMORY[0x2318D1A50](0x6964654D7369090ALL, 0xEB00000000203A61);
  if (*(v1 + v41[24]))
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (*(v1 + v41[24]))
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v44, v45);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D829650);
  if (*(v1 + v41[25]))
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (*(v1 + v41[25]))
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v46, v47);

  MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D829670);
  sub_22D7640C4(v1 + v41[7], v25, &qword_27DA02000, &qword_22D81F160);
  if (v174(v25, 1, v39) == 1)
  {
    sub_22D764440(v25, &qword_27DA02000, &qword_22D81F160);
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v50 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v51 = sub_22D81B2B8();
    [v50 setDateFormat_];

    v52 = sub_22D81A818();
    v53 = [v50 stringFromDate_];

    v48 = sub_22D81B2C8();
    v49 = v54;

    (*(v172 + 8))(v25, v39);
  }

  v55 = v165;
  v176 = v48;
  v177 = v49;
  v56 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v56);

  MEMORY[0x2318D1A50](0xD00000000000001ALL, 0x800000022D829690);
  v57 = v162;
  sub_22D7640C4(v1 + v41[8], v162, &qword_27DA02000, &qword_22D81F160);
  if (v174(v57, 1, v39) == 1)
  {
    sub_22D764440(v57, &qword_27DA02000, &qword_22D81F160);
    v58 = 0;
    v59 = 0;
    v60 = v172;
  }

  else
  {
    v61 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v62 = sub_22D81B2B8();
    [v61 setDateFormat_];

    v63 = sub_22D81A818();
    v64 = [v61 stringFromDate_];

    v58 = sub_22D81B2C8();
    v59 = v65;

    v60 = v172;
    (*(v172 + 8))(v57, v39);
  }

  v176 = v58;
  v177 = v59;
  v66 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v66);

  MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8296B0);
  v67 = v1[1];
  v176 = *v1;
  v177 = v67;
  sub_22D81A398();
  v68 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v68);

  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D8296D0);
  v69 = v1[3];
  v176 = v1[2];
  v177 = v69;
  sub_22D81A398();
  v70 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v70);

  MEMORY[0x2318D1A50](0xD000000000000014, 0x800000022D8296F0);
  v71 = (v1 + v41[10]);
  v72 = v71[1];
  v176 = *v71;
  v177 = v72;
  sub_22D81A398();
  v73 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v73);

  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D829710);
  v74 = v163;
  sub_22D7640C4(v1 + v41[12], v163, &qword_27DA02000, &qword_22D81F160);
  if (v174(v74, 1, v39) == 1)
  {
    sub_22D764440(v74, &qword_27DA02000, &qword_22D81F160);
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v78 = sub_22D81B2B8();
    [v77 setDateFormat_];

    v79 = sub_22D81A818();
    v80 = [v77 stringFromDate_];

    v75 = sub_22D81B2C8();
    v81 = v55;
    v82 = v74;
    v76 = v83;

    v84 = v82;
    v55 = v81;
    (*(v60 + 8))(v84, v39);
  }

  v176 = v75;
  v177 = v76;
  v85 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v85);

  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D829730);
  v86 = (v1 + v41[11]);
  v87 = v86[1];
  v176 = *v86;
  v177 = v87;
  sub_22D81A398();
  v88 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v88);

  MEMORY[0x2318D1A50](0xD000000000000014, 0x800000022D829750);
  v89 = v164;
  sub_22D7640C4(v1 + v41[9], v164, &qword_27DA02000, &qword_22D81F160);
  if (v174(v89, 1, v39) == 1)
  {
    sub_22D764440(v89, &qword_27DA02000, &qword_22D81F160);
    v90 = 0;
    v91 = 0;
    v92 = v172;
  }

  else
  {
    v93 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v94 = sub_22D81B2B8();
    [v93 setDateFormat_];

    v95 = sub_22D81A818();
    v96 = [v93 stringFromDate_];

    v90 = sub_22D81B2C8();
    v91 = v97;

    v92 = v172;
    (*(v172 + 8))(v89, v39);
  }

  v176 = v90;
  v177 = v91;
  v98 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v98);

  MEMORY[0x2318D1A50](0xD00000000000001ELL, 0x800000022D829770);
  sub_22D7640C4(v1 + v41[13], v55, &qword_27DA02000, &qword_22D81F160);
  if (v174(v55, 1, v39) == 1)
  {
    sub_22D764440(v55, &qword_27DA02000, &qword_22D81F160);
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v102 = sub_22D81B2B8();
    [v101 setDateFormat_];

    v103 = sub_22D81A818();
    v104 = [v101 stringFromDate_];

    v99 = sub_22D81B2C8();
    v100 = v105;

    (*(v92 + 8))(v55, v39);
  }

  v176 = v99;
  v177 = v100;
  v106 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v106);

  MEMORY[0x2318D1A50](0xD000000000000015, 0x800000022D829790);
  v107 = v166;
  sub_22D7640C4(v1 + v41[14], v166, &qword_27DA02000, &qword_22D81F160);
  if (v174(v107, 1, v39) == 1)
  {
    sub_22D764440(v107, &qword_27DA02000, &qword_22D81F160);
    v108 = 0;
    v109 = 0;
  }

  else
  {
    v110 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v111 = sub_22D81B2B8();
    [v110 setDateFormat_];

    v112 = sub_22D81A818();
    v113 = [v110 stringFromDate_];

    v108 = sub_22D81B2C8();
    v109 = v114;

    (*(v92 + 8))(v107, v39);
  }

  v115 = v167;
  v176 = v108;
  v177 = v109;
  v116 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v116);

  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8297B0);
  v117 = (v1 + v41[16]);
  v118 = v117[1];
  v176 = *v117;
  v177 = v118;
  sub_22D81A398();
  v119 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v119);

  MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D8297D0);
  v120 = v1 + v41[18];
  v121 = *v120;
  LOBYTE(v120) = v120[8];
  v176 = v121;
  LOBYTE(v177) = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02398, &qword_22D820A18);
  v122 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v122);

  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8297F0);
  sub_22D7640C4(v1 + v41[15], v115, &qword_27DA02000, &qword_22D81F160);
  if (v174(v115, 1, v39) == 1)
  {
    sub_22D764440(v115, &qword_27DA02000, &qword_22D81F160);
    v123 = 0;
    v124 = 0;
  }

  else
  {
    v125 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v126 = sub_22D81B2B8();
    [v125 setDateFormat_];

    v127 = sub_22D81A818();
    v128 = [v125 stringFromDate_];

    v123 = sub_22D81B2C8();
    v124 = v129;

    (*(v92 + 8))(v115, v39);
  }

  v176 = v123;
  v177 = v124;
  v130 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v130);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D829810);
  v131 = v168;
  sub_22D7640C4(v1 + v41[17], v168, &qword_27DA02000, &qword_22D81F160);
  if (v174(v131, 1, v39) == 1)
  {
    sub_22D764440(v131, &qword_27DA02000, &qword_22D81F160);
    v132 = 0;
    v133 = 0;
  }

  else
  {
    v134 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v135 = sub_22D81B2B8();
    [v134 setDateFormat_];

    v136 = sub_22D81A818();
    v137 = [v134 stringFromDate_];

    v132 = sub_22D81B2C8();
    v133 = v138;

    (*(v92 + 8))(v131, v39);
  }

  v176 = v132;
  v177 = v133;
  v139 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v139);

  MEMORY[0x2318D1A50](0xD000000000000011, 0x800000022D829830);
  v140 = v170;
  sub_22D7640C4(v1 + v41[19], v170, &qword_27DA02000, &qword_22D81F160);
  if (v174(v140, 1, v39) == 1)
  {
    sub_22D764440(v140, &qword_27DA02000, &qword_22D81F160);
    v141 = 0;
    v142 = 0;
  }

  else
  {
    v143 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v144 = sub_22D81B2B8();
    [v143 setDateFormat_];

    v145 = sub_22D81A818();
    v146 = [v143 stringFromDate_];

    v141 = sub_22D81B2C8();
    v142 = v147;

    (*(v92 + 8))(v140, v39);
  }

  v148 = v171;
  v176 = v141;
  v177 = v142;
  v149 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v149);

  MEMORY[0x2318D1A50](0x73696D736944090ALL, 0xED0000203A646573);
  sub_22D7640C4(v1 + v41[20], v148, &qword_27DA02000, &qword_22D81F160);
  if (v174(v148, 1, v39) == 1)
  {
    sub_22D764440(v148, &qword_27DA02000, &qword_22D81F160);
    v150 = 0;
    v151 = 0;
  }

  else
  {
    v152 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v153 = sub_22D81B2B8();
    [v152 setDateFormat_];

    v154 = sub_22D81A818();
    v155 = [v152 stringFromDate_];

    v150 = sub_22D81B2C8();
    v151 = v156;

    (*(v92 + 8))(v148, v39);
  }

  v176 = v150;
  v177 = v151;
  v157 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v157);

  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D829850);
  v158 = *(v1 + v41[26]);
  v159 = type metadata accessor for AlarmConcern(0);
  v160 = MEMORY[0x2318D1B50](v158, v159);
  MEMORY[0x2318D1A50](v160);

  return v178;
}

unint64_t sub_22D778EC0(char a1)
{
  result = 0x7461446465726966;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
    case 23:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x697463416576696CLL;
      break;
    case 7:
    case 11:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6E656449656E6F74;
      break;
    case 13:
      result = 0x616C50646E756F73;
      break;
    case 14:
      result = 0x7065526F69647561;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x657373696D736964;
      break;
    case 17:
      result = 0x7065656C537369;
      break;
    case 18:
      result = 0x69727265764F7369;
      break;
    case 19:
      result = 0x746E656C69537369;
      break;
    case 20:
      result = 0x616964654D7369;
      break;
    case 21:
      result = 0x744164656B636F6CLL;
      break;
    case 22:
      result = 0x736E7265636E6F63;
      break;
    case 24:
      result = 25705;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_22D7791A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02378, &unk_22D820A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D77FD1C();
  sub_22D81BC38();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v52) = 0;
  sub_22D81BA38();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v52) = 1;
    sub_22D81BA38();
    v15 = type metadata accessor for AlarmReport(0);
    v16 = v15[6];
    LOBYTE(v52) = 2;
    sub_22D81A8C8();
    sub_22D77F3C8(&unk_280CD2900, 255, MEMORY[0x277CC9578]);
    sub_22D81BA68();
    v17 = v15[7];
    LOBYTE(v52) = 3;
    sub_22D81BA68();
    v18 = v15[8];
    LOBYTE(v52) = 4;
    sub_22D81BA68();
    v19 = v15[9];
    LOBYTE(v52) = 5;
    sub_22D81BA68();
    v20 = (v3 + v15[10]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v52) = 6;
    sub_22D81BA38();
    v23 = (v3 + v15[11]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v52) = 7;
    sub_22D81BA38();
    v26 = v15[12];
    LOBYTE(v52) = 8;
    sub_22D81BA68();
    v27 = v15[13];
    LOBYTE(v52) = 9;
    sub_22D81BA68();
    v28 = v15[14];
    LOBYTE(v52) = 10;
    sub_22D81BA68();
    v29 = v15[15];
    LOBYTE(v52) = 11;
    sub_22D81BA68();
    v30 = (v3 + v15[16]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v52) = 12;
    sub_22D81BA38();
    v33 = v15[17];
    LOBYTE(v52) = 13;
    sub_22D81BA68();
    v34 = v3 + v15[18];
    v35 = *v34;
    v36 = v34[8];
    LOBYTE(v52) = 14;
    sub_22D81BA58();
    v37 = v15[19];
    LOBYTE(v52) = 15;
    sub_22D81BA68();
    v38 = v15[20];
    LOBYTE(v52) = 16;
    sub_22D81BA68();
    v39 = *(v3 + v15[21]);
    LOBYTE(v52) = 17;
    sub_22D81BA88();
    v40 = *(v3 + v15[22]);
    LOBYTE(v52) = 18;
    sub_22D81BA88();
    v41 = *(v3 + v15[23]);
    LOBYTE(v52) = 19;
    sub_22D81BA88();
    v42 = *(v3 + v15[24]);
    LOBYTE(v52) = 20;
    sub_22D81BA88();
    v43 = *(v3 + v15[25]);
    LOBYTE(v52) = 21;
    sub_22D81BA88();
    v52 = *(v3 + v15[26]);
    v51[15] = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02368, &qword_22D820A00);
    sub_22D77FEA8(&unk_27DA02388, qword_280CD24E8);
    sub_22D81BAB8();
    v44 = (v3 + v15[27]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v52) = 23;
    sub_22D81BA38();
    v47 = (v3 + v15[28]);
    v48 = *v47;
    v49 = v47[1];
    LOBYTE(v52) = 24;
    sub_22D81BA78();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22D779818(uint64_t a1)
{
  v2 = v1;
  v123 = type metadata accessor for AlarmConcern(0);
  v106 = *(v123 - 8);
  v4 = *(v106 + 64);
  v5 = MEMORY[0x28223BE20](v123);
  v115 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v117 = &v106 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v124 = &v106 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v106 - v11;
  v13 = sub_22D81A8C8();
  v118 = *(v13 - 8);
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v13);
  v119 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v114 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v106 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v106 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v106 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v106 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v108 = &v106 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v106 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v106 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v106 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v106 - v40;
  v42 = *(v2 + 1);
  v122 = a1;
  if (v42)
  {
    v43 = *v2;
    sub_22D81BBE8();
    sub_22D81B328();
    if (*(v2 + 3))
    {
LABEL_3:
      v44 = *(v2 + 2);
      sub_22D81BBE8();
      sub_22D81B328();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22D81BBE8();
    if (*(v2 + 3))
    {
      goto LABEL_3;
    }
  }

  sub_22D81BBE8();
LABEL_6:
  v45 = v119;
  v116 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(&v2[v116[6]], v41, &qword_27DA02000, &qword_22D81F160);
  v46 = v118;
  v47 = *(v118 + 48);
  v121 = v118 + 48;
  v48 = v47;
  if (v47(v41, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v46 + 32))(v45, v41, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v46 + 8))(v45, v13);
  }

  v120 = v12;
  v49 = v116;
  sub_22D7640C4(&v2[v116[7]], v39, &qword_27DA02000, &qword_22D81F160);
  if (v48(v39, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v46 + 32))(v45, v39, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v46 + 8))(v45, v13);
  }

  v50 = v107;
  sub_22D7640C4(&v2[v49[8]], v36, &qword_27DA02000, &qword_22D81F160);
  if (v48(v36, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v46 + 32))(v45, v36, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v46 + 8))(v45, v13);
  }

  sub_22D7640C4(&v2[v49[9]], v50, &qword_27DA02000, &qword_22D81F160);
  if (v48(v50, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v46 + 32))(v45, v50, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v46 + 8))(v45, v13);
  }

  v51 = &v2[v49[10]];
  v52 = v108;
  if (v51[1])
  {
    v53 = *v51;
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v54 = &v2[v49[11]];
  if (v54[1])
  {
    v55 = *v54;
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v56 = v118;
  sub_22D7640C4(&v2[v49[12]], v52, &qword_27DA02000, &qword_22D81F160);
  if (v48(v52, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v52, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v57 = v109;
  sub_22D7640C4(&v2[v49[13]], v109, &qword_27DA02000, &qword_22D81F160);
  if (v48(v57, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v57, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v58 = v110;
  sub_22D7640C4(&v2[v49[14]], v110, &qword_27DA02000, &qword_22D81F160);
  if (v48(v58, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v58, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v59 = v111;
  sub_22D7640C4(&v2[v49[15]], v111, &qword_27DA02000, &qword_22D81F160);
  if (v48(v59, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v59, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v60 = &v2[v49[16]];
  v61 = v114;
  if (v60[1])
  {
    v62 = *v60;
    sub_22D81BBE8();
    v56 = v118;
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v63 = v112;
  sub_22D7640C4(&v2[v49[17]], v112, &qword_27DA02000, &qword_22D81F160);
  if (v48(v63, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v63, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v64 = &v2[v49[18]];
  if (v64[8] == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    v65 = *v64;
    sub_22D81BBE8();
    v66 = v65;
    v56 = v118;
    MEMORY[0x2318D22E0](v66);
  }

  v67 = v113;
  sub_22D7640C4(&v2[v49[19]], v113, &qword_27DA02000, &qword_22D81F160);
  if (v48(v67, 1, v13) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v67, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  sub_22D7640C4(&v2[v49[20]], v61, &qword_27DA02000, &qword_22D81F160);
  v68 = v48(v61, 1, v13);
  v121 = v13;
  if (v68 == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v56 + 32))(v45, v61, v13);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578]);
    sub_22D81B1D8();
    (*(v56 + 8))(v45, v13);
  }

  v69 = v117;
  v70 = v2[v49[21]];
  sub_22D81BBE8();
  v71 = v2[v49[22]];
  sub_22D81BBE8();
  v72 = v2[v49[23]];
  sub_22D81BBE8();
  v73 = v2[v49[24]];
  sub_22D81BBE8();
  v74 = v2[v49[25]];
  sub_22D81BBE8();
  v75 = v49[26];
  v114 = v2;
  v76 = *&v2[v75];
  MEMORY[0x2318D22E0](*(v76 + 16));
  v77 = *(v76 + 16);
  v78 = v120;
  if (v77)
  {
    v79 = v76 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v80 = (v118 + 8);
    v81 = *(v106 + 72);
    do
    {
      sub_22D77FDE0(v79, v78, type metadata accessor for AlarmConcern);
      sub_22D77FDE0(v78, v124, type metadata accessor for AlarmConcern);
      v82 = -1;
      v83 = v78;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v91 = v115;
          sub_22D77FDE0(v124, v115, type metadata accessor for AlarmConcern);
          v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
          v92 = v119;
          sub_22D81A888();
          sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
          v93 = v121;
          v94 = sub_22D81B1F8();
          v95 = *v80;
          (*v80)(v92, v93);
          v95(v91, v93);
          if (v94)
          {
            sub_22D81A888();
            v96 = v118;
            v97 = sub_22D81B1F8();
            v95(v92, v93);
            v95((v91 + v96), v93);
            if (v97)
            {
              v82 = 1010;
            }

            else
            {
              v82 = -1;
            }
          }

          else
          {
            v95((v91 + v118), v93);
            v82 = -1;
          }

          v69 = v117;
          v83 = v120;
          break;
        case 2u:
          v82 = 1001;
          break;
        case 3u:
          v82 = 1002;
          break;
        case 4u:
          v82 = 1003;
          break;
        case 5u:
          v82 = 1004;
          break;
        case 6u:
          v82 = 1005;
          break;
        case 7u:
          v82 = 1006;
          break;
        case 8u:
          v82 = 1007;
          break;
        case 9u:
          v82 = 1008;
          break;
        case 0xAu:
          v82 = 1011;
          break;
        case 0xBu:
          v82 = 1012;
          break;
        case 0xCu:
          break;
        default:
          sub_22D77FDE0(v124, v69, type metadata accessor for AlarmConcern);
          v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
          v84 = v80;
          v85 = v119;
          sub_22D81A888();
          sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
          v86 = v121;
          v87 = sub_22D81B1F8();
          v88 = *v84;
          (*v84)(v85, v86);
          v88(v69, v86);
          if (v87)
          {
            sub_22D81A888();
            v89 = v118;
            v90 = sub_22D81B1F8();
            v88(v85, v86);
            v88((v69 + v89), v86);
            if (v90)
            {
              v82 = 1009;
            }

            else
            {
              v82 = -1;
            }
          }

          else
          {
            v88((v69 + v118), v86);
            v82 = -1;
          }

          v83 = v120;
          v80 = v84;
          break;
      }

      sub_22D77FE48(v124, type metadata accessor for AlarmConcern);
      MEMORY[0x2318D22E0](v82);
      sub_22D77FE48(v83, type metadata accessor for AlarmConcern);
      v79 += v81;
      --v77;
      v78 = v83;
    }

    while (v77);
  }

  v98 = v116;
  v99 = v114;
  v100 = &v114[v116[27]];
  if (*(v100 + 1))
  {
    v101 = *v100;
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v102 = &v99[v98[28]];
  v103 = *v102;
  v104 = *(v102 + 1);
  return sub_22D81B328();
}

uint64_t sub_22D77ABE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v110 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v112 = v108 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v113 = v108 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v114 = v108 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v115 = v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v116 = v108 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v117 = v108 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v118 = v108 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v119 = v108 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v122 = v108 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v108 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02350, &qword_22D8209F8);
  v28 = *(v27 - 8);
  v120 = v27;
  v121 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v108 - v30;
  v32 = type metadata accessor for AlarmReport(0);
  v33 = *(*(v32 - 1) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v34 + 24);
  v38 = sub_22D81A8C8();
  v39 = *(*(v38 - 8) + 56);
  v135 = v37;
  v39(v36 + v37, 1, 1, v38);
  v131 = v32[7];
  v39(v36 + v131, 1, 1, v38);
  v134 = v32[8];
  v39(v36 + v134, 1, 1, v38);
  v133 = v32[9];
  v39(v36 + v133, 1, 1, v38);
  v132 = v32[12];
  v39(v36 + v132, 1, 1, v38);
  v130 = v32[13];
  v39(v36 + v130, 1, 1, v38);
  v129 = v32[14];
  v39(v36 + v129, 1, 1, v38);
  v128 = v32[15];
  v39(v36 + v128, 1, 1, v38);
  v127 = v32[17];
  v39(v36 + v127, 1, 1, v38);
  v125 = v32[19];
  v39(v36 + v125, 1, 1, v38);
  v124 = v32[20];
  v39(v36 + v124, 1, 1, v38);
  v123 = 0x800000022D829600;
  v40 = a1[3];
  v41 = a1[4];
  v126 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v40);
  sub_22D77FD1C();
  v42 = v136;
  sub_22D81BC28();
  if (v42)
  {
    v136 = v42;
    v122 = MEMORY[0x277D84F90];
    v46 = v126;
    v48 = v134;
    v47 = v135;
    v49 = v131;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v46);

    sub_22D764440(v36 + v47, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v49, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v48, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v133, &qword_27DA02000, &qword_22D81F160);

    sub_22D764440(v36 + v132, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v130, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v129, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v128, &qword_27DA02000, &qword_22D81F160);

    sub_22D764440(v36 + v127, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v125, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v36 + v124, &qword_27DA02000, &qword_22D81F160);
  }

  v43 = v26;
  v44 = v122;
  LOBYTE(v138) = 0;
  v45 = v120;
  *v36 = sub_22D81B9A8();
  v36[1] = v51;
  LOBYTE(v138) = 1;
  v109 = v31;
  v52 = sub_22D81B9A8();
  v136 = 0;
  v36[2] = v52;
  v36[3] = v53;
  v108[1] = v53;
  LOBYTE(v138) = 2;
  v54 = v43;
  v55 = sub_22D77F3C8(&unk_280CD2E60, 255, MEMORY[0x277CC9578]);
  v56 = v136;
  sub_22D81B9D8();
  v136 = v56;
  if (v56 || (sub_22D77FD70(v54, v36 + v135), LOBYTE(v138) = 3, v57 = v136, sub_22D81B9D8(), (v136 = v57) != 0))
  {
    (*(v121 + 8))(v109, v45);
    v122 = MEMORY[0x277D84F90];
    v46 = v126;
    v49 = v131;
LABEL_8:
    v48 = v134;
    v47 = v135;
    goto LABEL_4;
  }

  v49 = v131;
  sub_22D77FD70(v44, v36 + v131);
  LOBYTE(v138) = 4;
  v58 = v119;
  v59 = v136;
  sub_22D81B9D8();
  v136 = v59;
  if (v59 || (sub_22D77FD70(v58, v36 + v134), LOBYTE(v138) = 5, v60 = v118, v61 = v136, sub_22D81B9D8(), (v136 = v61) != 0))
  {
LABEL_13:
    (*(v121 + 8))(v109, v120);
    v122 = MEMORY[0x277D84F90];
    v46 = v126;
    goto LABEL_8;
  }

  v122 = v55;
  sub_22D77FD70(v60, v36 + v133);
  LOBYTE(v138) = 6;
  v62 = v136;
  v63 = sub_22D81B9A8();
  if (v62)
  {
    v136 = v62;
    goto LABEL_13;
  }

  v65 = (v36 + v32[10]);
  *v65 = v63;
  v65[1] = v64;
  v119 = v64;
  LOBYTE(v138) = 7;
  v66 = sub_22D81B9A8();
  v67 = (v36 + v32[11]);
  *v67 = v66;
  v67[1] = v68;
  v118 = v68;
  LOBYTE(v138) = 8;
  v69 = v117;
  sub_22D81B9D8();
  v136 = 0;
  sub_22D77FD70(v69, v36 + v132);
  LOBYTE(v138) = 9;
  v70 = v136;
  sub_22D81B9D8();
  v136 = v70;
  if (v70)
  {
    goto LABEL_18;
  }

  sub_22D77FD70(v116, v36 + v130);
  LOBYTE(v138) = 10;
  v71 = v136;
  sub_22D81B9D8();
  v136 = v71;
  if (v71)
  {
    goto LABEL_18;
  }

  sub_22D77FD70(v115, v36 + v129);
  LOBYTE(v138) = 11;
  v72 = v136;
  sub_22D81B9D8();
  v136 = v72;
  if (v72 || (sub_22D77FD70(v114, v36 + v128), LOBYTE(v138) = 12, v73 = v136, v74 = sub_22D81B9A8(), v117 = v75, (v136 = v73) != 0))
  {
LABEL_18:
    (*(v121 + 8))(v109, v120);
    v122 = MEMORY[0x277D84F90];
    v46 = v126;
    v48 = v134;
    v47 = v135;
    v49 = v131;
    goto LABEL_4;
  }

  v76 = (v36 + v32[16]);
  v77 = v117;
  *v76 = v74;
  v76[1] = v77;
  LOBYTE(v138) = 13;
  v78 = v136;
  sub_22D81B9D8();
  v136 = v78;
  if (v78)
  {
    goto LABEL_29;
  }

  sub_22D77FD70(v113, v36 + v127);
  LOBYTE(v138) = 14;
  v79 = v136;
  v80 = sub_22D81B9C8();
  v136 = v79;
  if (v79)
  {
    goto LABEL_29;
  }

  v82 = v36 + v32[18];
  *v82 = v80;
  v82[8] = v81 & 1;
  LOBYTE(v138) = 15;
  v83 = v136;
  sub_22D81B9D8();
  v136 = v83;
  if (v83)
  {
    goto LABEL_29;
  }

  sub_22D77FD70(v112, v36 + v125);
  LOBYTE(v138) = 16;
  v84 = v136;
  sub_22D81B9D8();
  v136 = v84;
  if (v84)
  {
    goto LABEL_29;
  }

  sub_22D77FD70(v110, v36 + v124);
  LOBYTE(v138) = 17;
  v85 = v136;
  v86 = sub_22D81B9F8();
  v136 = v85;
  if (v85)
  {
    goto LABEL_29;
  }

  *(v36 + v32[21]) = v86 & 1;
  LOBYTE(v138) = 18;
  v87 = v136;
  v88 = sub_22D81B9F8();
  v136 = v87;
  if (v87)
  {
    goto LABEL_29;
  }

  *(v36 + v32[22]) = v88 & 1;
  LOBYTE(v138) = 19;
  v89 = v136;
  v90 = sub_22D81B9F8();
  v136 = v89;
  if (v89)
  {
    goto LABEL_29;
  }

  *(v36 + v32[23]) = v90 & 1;
  LOBYTE(v138) = 20;
  v91 = v136;
  v92 = sub_22D81B9F8();
  v136 = v91;
  if (v91)
  {
    goto LABEL_29;
  }

  *(v36 + v32[24]) = v92 & 1;
  LOBYTE(v138) = 21;
  v93 = v136;
  v94 = sub_22D81B9F8();
  v136 = v93;
  if (v93 || (*(v36 + v32[25]) = v94 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02368, &qword_22D820A00), v137 = 22, sub_22D77FEA8(&qword_27DA02370, &qword_280CD24C0), v95 = v136, sub_22D81BA28(), (v136 = v95) != 0))
  {
LABEL_29:
    (*(v121 + 8))(v109, v120);
    v122 = MEMORY[0x277D84F90];
LABEL_30:
    v46 = v126;
    v48 = v134;
    v47 = v135;
    v49 = v131;
    goto LABEL_4;
  }

  v96 = v32[26];
  v122 = v138;
  *(v36 + v96) = v138;
  LOBYTE(v138) = 23;
  v97 = v136;
  v98 = sub_22D81B9A8();
  v136 = v97;
  if (v97)
  {
    (*(v121 + 8))(v109, v120);
    goto LABEL_30;
  }

  v100 = v99;
  v101 = (v36 + v32[27]);
  *v101 = v98;
  v101[1] = v99;
  LOBYTE(v138) = 24;
  v102 = v136;
  v103 = sub_22D81B9E8();
  v136 = v102;
  if (v102)
  {
    (*(v121 + 8))(v109, v120);
    v123 = v100;
    goto LABEL_30;
  }

  v105 = v103;
  v106 = v104;
  (*(v121 + 8))(v109, v120);
  v107 = (v36 + v32[28]);
  *v107 = v105;
  v107[1] = v106;
  sub_22D77FDE0(v36, v111, type metadata accessor for AlarmReport);
  __swift_destroy_boxed_opaque_existential_0(v126);
  return sub_22D77FE48(v36, type metadata accessor for AlarmReport);
}

uint64_t sub_22D77BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D784CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22D77BC24(uint64_t a1)
{
  v2 = sub_22D77FD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D77BC60(uint64_t a1)
{
  v2 = sub_22D77FD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D77BC9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 112));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D77BCB0()
{
  sub_22D81BBC8();
  sub_22D779818(v1);
  return sub_22D81BC18();
}

uint64_t sub_22D77BCF4()
{
  sub_22D81BBC8();
  sub_22D779818(v1);
  return sub_22D81BC18();
}

uint64_t sub_22D77BD64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v238 = &v228 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v235 = &v228 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v234 = &v228 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v233 = &v228 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v232 = &v228 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v231 = &v228 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v230 = &v228 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v229 = &v228 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v228 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v228 - v26;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D84F98];
  *(v28 + 16) = MEMORY[0x277D84F98];
  v242 = type metadata accessor for AlarmReport(0);
  v30 = (v1 + *(v242 + 112));
  v31 = *v30;
  v32 = v30[1];
  v33 = sub_22D81B2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v247 = v29;
  sub_22D80BF64(v33, 0, isUniquelyReferenced_nonNull_native);
  *(v28 + 16) = v247;
  v35 = v1[1];
  if (v35)
  {
    v36 = *v1;
    v37 = MEMORY[0x277D837D8];
    v38 = MEMORY[0x277D83808];
    v39 = MEMORY[0x277D837D0];
  }

  else
  {
    v36 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v249 = 0;
  }

  v247 = v36;
  v248 = v35;
  v250 = v39;
  v251 = v38;
  v252 = v37;
  sub_22D81A398();
  sub_22D77E078(1, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v40 = v1[3];
  if (v40)
  {
    v41 = v1[2];
    v42 = MEMORY[0x277D837D8];
    v43 = MEMORY[0x277D83808];
    v44 = MEMORY[0x277D837D0];
  }

  else
  {
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v249 = 0;
  }

  v247 = v41;
  v248 = v40;
  v250 = v44;
  v251 = v43;
  v252 = v42;
  sub_22D81A398();
  sub_22D77E078(2, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 24), v27, &qword_27DA02000, &qword_22D81F160);
  v45 = sub_22D81A8C8();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v240 = v46 + 48;
  v241 = v47;
  v48 = v47(v27, 1, v45);
  v239 = v46;
  v236 = v6;
  v237 = v28 + 16;
  if (v48 == 1)
  {
    sub_22D764440(v27, &qword_27DA02000, &qword_22D81F160);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v53 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v54 = sub_22D81B2B8();
    [v53 setDateFormat_];

    v55 = sub_22D81A818();
    v56 = [v53 stringFromDate_];

    v57 = v28;
    v58 = sub_22D81B2C8();
    v49 = v59;

    v46 = v239;
    (*(v46 + 8))(v27, v45);
    v247 = v58;
    v28 = v57;
    v52 = MEMORY[0x277D837D8];
    v51 = MEMORY[0x277D83808];
    v50 = MEMORY[0x277D837D0];
  }

  v248 = v49;
  v250 = v50;
  v251 = v51;
  v252 = v52;
  sub_22D77E078(3, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 28), v25, &qword_27DA02000, &qword_22D81F160);
  v60 = v241(v25, 1, v45);
  v61 = v229;
  if (v60 == 1)
  {
    sub_22D764440(v25, &qword_27DA02000, &qword_22D81F160);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v66 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v67 = sub_22D81B2B8();
    [v66 setDateFormat_];

    v68 = sub_22D81A818();
    v69 = [v66 stringFromDate_];

    v70 = sub_22D81B2C8();
    v62 = v71;

    v46 = v239;
    (*(v239 + 8))(v25, v45);
    v247 = v70;
    v65 = MEMORY[0x277D837D8];
    v64 = MEMORY[0x277D83808];
    v63 = MEMORY[0x277D837D0];
  }

  v72 = v230;
  v248 = v62;
  v250 = v63;
  v251 = v64;
  v252 = v65;
  sub_22D77E078(4, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 32), v61, &qword_27DA02000, &qword_22D81F160);
  if (v241(v61, 1, v45) == 1)
  {
    sub_22D764440(v61, &qword_27DA02000, &qword_22D81F160);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v77 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v78 = sub_22D81B2B8();
    [v77 setDateFormat_];

    v79 = sub_22D81A818();
    v80 = [v77 stringFromDate_];

    v81 = v28;
    v82 = v1;
    v83 = v72;
    v84 = v45;
    v85 = v61;
    v86 = v46;
    v87 = sub_22D81B2C8();
    v73 = v88;

    v89 = v85;
    v45 = v84;
    v72 = v83;
    v1 = v82;
    v28 = v81;
    (*(v86 + 8))(v89, v45);
    v247 = v87;
    v76 = MEMORY[0x277D837D8];
    v75 = MEMORY[0x277D83808];
    v74 = MEMORY[0x277D837D0];
  }

  v90 = v233;
  v248 = v73;
  v250 = v74;
  v251 = v75;
  v252 = v76;
  sub_22D77E078(5, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 36), v72, &qword_27DA02000, &qword_22D81F160);
  if (v241(v72, 1, v45) == 1)
  {
    sub_22D764440(v72, &qword_27DA02000, &qword_22D81F160);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v95 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v96 = sub_22D81B2B8();
    [v95 setDateFormat_];

    v97 = sub_22D81A818();
    v98 = [v95 stringFromDate_];

    v99 = sub_22D81B2C8();
    v91 = v100;

    (*(v239 + 8))(v72, v45);
    v247 = v99;
    v94 = MEMORY[0x277D837D8];
    v93 = MEMORY[0x277D83808];
    v92 = MEMORY[0x277D837D0];
  }

  v101 = v231;
  v248 = v91;
  v250 = v92;
  v251 = v93;
  v252 = v94;
  sub_22D77E078(6, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v102 = (v1 + *(v242 + 40));
  v103 = v102[1];
  if (v103)
  {
    v104 = *v102;
    v105 = MEMORY[0x277D837D8];
    v106 = MEMORY[0x277D83808];
    v107 = MEMORY[0x277D837D0];
  }

  else
  {
    v104 = 0;
    v107 = 0;
    v106 = 0;
    v105 = 0;
    v249 = 0;
  }

  v247 = v104;
  v248 = v103;
  v250 = v107;
  v251 = v106;
  v252 = v105;
  sub_22D81A398();
  sub_22D77E078(7, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v108 = (v1 + *(v242 + 44));
  v109 = v108[1];
  if (v109)
  {
    v110 = *v108;
    v111 = MEMORY[0x277D837D8];
    v112 = MEMORY[0x277D83808];
    v113 = MEMORY[0x277D837D0];
  }

  else
  {
    v110 = 0;
    v113 = 0;
    v112 = 0;
    v111 = 0;
    v249 = 0;
  }

  v247 = v110;
  v248 = v109;
  v250 = v113;
  v251 = v112;
  v252 = v111;
  sub_22D81A398();
  sub_22D77E078(8, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 48), v101, &qword_27DA02000, &qword_22D81F160);
  if (v241(v101, 1, v45) == 1)
  {
    sub_22D764440(v101, &qword_27DA02000, &qword_22D81F160);
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v118 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v119 = sub_22D81B2B8();
    [v118 setDateFormat_];

    v120 = sub_22D81A818();
    v121 = [v118 stringFromDate_];

    v122 = sub_22D81B2C8();
    v114 = v123;

    (*(v239 + 8))(v101, v45);
    v247 = v122;
    v117 = MEMORY[0x277D837D8];
    v116 = MEMORY[0x277D83808];
    v115 = MEMORY[0x277D837D0];
  }

  v124 = v232;
  v248 = v114;
  v250 = v115;
  v251 = v116;
  v252 = v117;
  sub_22D77E078(9, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 52), v124, &qword_27DA02000, &qword_22D81F160);
  if (v241(v124, 1, v45) == 1)
  {
    sub_22D764440(v124, &qword_27DA02000, &qword_22D81F160);
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v129 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v130 = sub_22D81B2B8();
    [v129 setDateFormat_];

    v131 = sub_22D81A818();
    v132 = [v129 stringFromDate_];

    v133 = sub_22D81B2C8();
    v125 = v134;

    (*(v239 + 8))(v124, v45);
    v247 = v133;
    v128 = MEMORY[0x277D837D8];
    v127 = MEMORY[0x277D83808];
    v126 = MEMORY[0x277D837D0];
  }

  v248 = v125;
  v250 = v126;
  v251 = v127;
  v252 = v128;
  sub_22D77E078(10, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 56), v90, &qword_27DA02000, &qword_22D81F160);
  if (v241(v90, 1, v45) == 1)
  {
    sub_22D764440(v90, &qword_27DA02000, &qword_22D81F160);
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v139 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v140 = sub_22D81B2B8();
    [v139 setDateFormat_];

    v141 = sub_22D81A818();
    v142 = [v139 stringFromDate_];

    v143 = sub_22D81B2C8();
    v135 = v144;

    (*(v239 + 8))(v90, v45);
    v247 = v143;
    v138 = MEMORY[0x277D837D8];
    v137 = MEMORY[0x277D83808];
    v136 = MEMORY[0x277D837D0];
  }

  v145 = v234;
  v248 = v135;
  v250 = v136;
  v251 = v137;
  v252 = v138;
  sub_22D77E078(11, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 60), v145, &qword_27DA02000, &qword_22D81F160);
  if (v241(v145, 1, v45) == 1)
  {
    sub_22D764440(v145, &qword_27DA02000, &qword_22D81F160);
    v146 = 0;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v150 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v151 = sub_22D81B2B8();
    [v150 setDateFormat_];

    v152 = sub_22D81A818();
    v153 = [v150 stringFromDate_];

    v154 = sub_22D81B2C8();
    v146 = v155;

    (*(v239 + 8))(v145, v45);
    v247 = v154;
    v149 = MEMORY[0x277D837D8];
    v148 = MEMORY[0x277D83808];
    v147 = MEMORY[0x277D837D0];
  }

  v156 = v235;
  v248 = v146;
  v250 = v147;
  v251 = v148;
  v252 = v149;
  sub_22D77E078(12, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v157 = (v1 + *(v242 + 64));
  v158 = v157[1];
  if (v158)
  {
    v159 = *v157;
    v160 = MEMORY[0x277D837D8];
    v161 = MEMORY[0x277D83808];
    v162 = MEMORY[0x277D837D0];
  }

  else
  {
    v159 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 0;
    v249 = 0;
  }

  v247 = v159;
  v248 = v158;
  v250 = v162;
  v251 = v161;
  v252 = v160;
  sub_22D81A398();
  sub_22D77E078(13, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v242 + 68), v156, &qword_27DA02000, &qword_22D81F160);
  if (v241(v156, 1, v45) == 1)
  {
    sub_22D764440(v156, &qword_27DA02000, &qword_22D81F160);
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v167 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v168 = sub_22D81B2B8();
    [v167 setDateFormat_];

    v169 = sub_22D81A818();
    v170 = [v167 stringFromDate_];

    v171 = sub_22D81B2C8();
    v163 = v172;

    (*(v239 + 8))(v156, v45);
    v247 = v171;
    v166 = MEMORY[0x277D837D8];
    v165 = MEMORY[0x277D83808];
    v164 = MEMORY[0x277D837D0];
  }

  v248 = v163;
  v250 = v164;
  v251 = v165;
  v252 = v166;
  sub_22D77E078(14, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v173 = v238;
  sub_22D7640C4(v1 + *(v242 + 76), v238, &qword_27DA02000, &qword_22D81F160);
  if (v241(v173, 1, v45) == 1)
  {
    sub_22D764440(v238, &qword_27DA02000, &qword_22D81F160);
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v178 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v179 = sub_22D81B2B8();
    [v178 setDateFormat_];

    v180 = v238;
    v181 = sub_22D81A818();
    v182 = [v178 stringFromDate_];

    v183 = sub_22D81B2C8();
    v174 = v184;

    (*(v239 + 8))(v180, v45);
    v247 = v183;
    v177 = MEMORY[0x277D837D8];
    v176 = MEMORY[0x277D83808];
    v175 = MEMORY[0x277D837D0];
  }

  v248 = v174;
  v250 = v175;
  v251 = v176;
  v252 = v177;
  sub_22D77E078(15, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v185 = v236;
  sub_22D7640C4(v1 + *(v242 + 80), v236, &qword_27DA02000, &qword_22D81F160);
  if (v241(v185, 1, v45) == 1)
  {
    sub_22D764440(v185, &qword_27DA02000, &qword_22D81F160);
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v247 = 0;
    v249 = 0;
  }

  else
  {
    v190 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v191 = sub_22D81B2B8();
    [v190 setDateFormat_];

    v192 = sub_22D81A818();
    v193 = [v190 stringFromDate_];

    v194 = sub_22D81B2C8();
    v186 = v195;

    (*(v239 + 8))(v185, v45);
    v247 = v194;
    v189 = MEMORY[0x277D837D8];
    v188 = MEMORY[0x277D83808];
    v187 = MEMORY[0x277D837D0];
  }

  v248 = v186;
  v250 = v187;
  v251 = v188;
  v252 = v189;
  sub_22D77E078(16, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v196 = v242;
  v197 = *(v1 + *(v242 + 84));
  v198 = MEMORY[0x277D839B0];
  v199 = MEMORY[0x277D839D0];
  v250 = MEMORY[0x277D839B0];
  v251 = MEMORY[0x277D839D0];
  v200 = MEMORY[0x277D839B8];
  v252 = MEMORY[0x277D839B8];
  LOBYTE(v247) = v197;
  sub_22D77E078(17, &v247, v28, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v201 = *(v1 + v196[22]);
  v250 = v198;
  v251 = v199;
  v252 = v200;
  LOBYTE(v247) = v201;
  sub_22D77E078(18, &v247, v28, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v202 = *(v1 + v196[23]);
  v250 = v198;
  v251 = v199;
  v252 = v200;
  LOBYTE(v247) = v202;
  sub_22D77E078(19, &v247, v28, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v203 = *(v1 + v196[24]);
  v250 = v198;
  v251 = v199;
  v252 = v200;
  LOBYTE(v247) = v203;
  sub_22D77E078(20, &v247, v28, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v204 = *(v1 + v196[25]);
  v250 = v198;
  v251 = v199;
  v252 = v200;
  LOBYTE(v247) = v204;
  sub_22D77E078(21, &v247, v28, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  v205 = *(v1 + v196[26]);
  v206 = *(v205 + 16);
  v207 = MEMORY[0x277D84F90];
  if (v206)
  {
    v240 = v28;
    v246 = MEMORY[0x277D84F90];
    sub_22D7E8A48(0, v206, 0);
    v207 = v246;
    v208 = type metadata accessor for AlarmConcern(0);
    v209 = *(v208 - 8);
    v241 = (v205 + ((*(v209 + 80) + 32) & ~*(v209 + 80)));
    v242 = v209;
    v210 = sub_22D77F3C8(&unk_280CD24A8, 255, type metadata accessor for AlarmConcern);
    v211 = 0;
    do
    {
      v212 = v206;
      v250 = v208;
      v251 = v210;
      v213 = __swift_allocate_boxed_opaque_existential_1(&v247);
      sub_22D77FDE0(v241 + *(v242 + 72) * v211, v213, type metadata accessor for AlarmConcern);
      v246 = v207;
      v215 = *(v207 + 16);
      v214 = *(v207 + 24);
      if (v215 >= v214 >> 1)
      {
        sub_22D7E8A48((v214 > 1), v215 + 1, 1);
        v207 = v246;
      }

      ++v211;
      v216 = v250;
      v217 = __swift_mutable_project_boxed_opaque_existential_1(&v247, v250);
      v218 = *(*(v216 - 8) + 64);
      MEMORY[0x28223BE20](v217);
      v220 = &v228 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v221 + 16))(v220);
      v244 = v208;
      v245 = v210;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v243);
      sub_22D785624(v220, boxed_opaque_existential_1, type metadata accessor for AlarmConcern);
      *(v207 + 16) = v215 + 1;
      sub_22D749DBC(&v243, v207 + 40 * v215 + 32);
      __swift_destroy_boxed_opaque_existential_0(&v247);
      v206 = v212;
    }

    while (v212 != v211);
    v28 = v240;
  }

  v223 = sub_22D77E1A4(v207);
  v225 = v224;

  v250 = MEMORY[0x277D837D0];
  v251 = MEMORY[0x277D83808];
  v252 = MEMORY[0x277D837D8];
  v247 = v223;
  v248 = v225;
  sub_22D77E078(22, &v247, v28, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v247, &qword_27DA02420, &qword_22D820B20);
  swift_beginAccess();
  v226 = *(v28 + 16);
  sub_22D81A398();

  return v226;
}

id sub_22D77D8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x277D84F90];
  sub_22D7E89A4(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_22D81B798();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v28 = v3 + 72;
  v29 = v1;
  v30 = v9;
  v31 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v32 = v8;
    v12 = *(*(v3 + 56) + 8 * v7);
    v13 = sub_22D77DBD0(*(*(v3 + 48) + v7));
    v33 = v14;
    v34 = v13;
    v15 = v3;
    v17 = *(v35 + 16);
    v16 = *(v35 + 24);
    result = v12;
    v18 = result;
    if (v17 >= v16 >> 1)
    {
      result = sub_22D7E89A4((v16 > 1), v17 + 1, 1);
    }

    *(v35 + 16) = v17 + 1;
    v19 = (v35 + 24 * v17);
    v19[4] = v34;
    v19[5] = v33;
    v19[6] = v18;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v31;
    v20 = *(v31 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v15;
    v21 = *(v15 + 36);
    v9 = v30;
    if (v30 != v21)
    {
      goto LABEL_26;
    }

    v22 = v20 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v28 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_22D785E08(v7, v30, 0);
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_22D785E08(v7, v30, 0);
    }

LABEL_4:
    v8 = v32 + 1;
    v7 = v10;
    if (v32 + 1 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_22D77DB34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_22D81A198();
  v4 = v1(v3);

  if (v4)
  {
    sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
    v5 = sub_22D81B158();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_22D77DBD0(char a1)
{
  result = 0x64496D72616C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x7461446465726966;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x697463416576696CLL;
      break;
    case 8:
    case 12:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6E656449656E6F74;
      break;
    case 14:
      result = 0x616C50646E756F73;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x657373696D736964;
      break;
    case 17:
      result = 0x7065656C537369;
      break;
    case 18:
      result = 0x69727265764F7369;
      break;
    case 19:
      result = 0x746E656C69537369;
      break;
    case 20:
      result = 0x616964654D7369;
      break;
    case 21:
      result = 0x744164656B636F6CLL;
      break;
    case 22:
      result = 0x736E7265636E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22D77DE74(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22D77DBD0(*a1);
  v5 = v4;
  if (v3 == sub_22D77DBD0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();
  }

  return v8 & 1;
}

uint64_t sub_22D77DEFC()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D77DBD0(v1);
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D77DF60()
{
  sub_22D77DBD0(*v0);
  sub_22D81B328();
}

uint64_t sub_22D77DFB4()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D77DBD0(v1);
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D77E014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22D7854B8();
  *a2 = result;
  return result;
}

unint64_t sub_22D77E044@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22D77DBD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22D77E078(char a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_22D7640C4(a2, v14, &qword_27DA02420, &qword_22D820B20);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02438, &qword_22D820B30);
    sub_22D759CA0(0, a4, a5);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v9 = v12;
      v10 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      sub_22D80BF64(v9, a1, isUniquelyReferenced_nonNull_native);
      *(a3 + 16) = v13;
      swift_endAccess();
    }
  }

  else
  {
    sub_22D764440(v14, &qword_27DA02420, &qword_22D820B20);
  }
}

uint64_t sub_22D77E1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22D7E8A28(0, v1, 0);
    v4 = v25;
    v5 = a1 + 32;
    do
    {
      sub_22D75CCD8(v5, v24);
      v6 = v24[4];
      __swift_project_boxed_opaque_existential_0(v24, v24[3]);
      v7 = *(v6 + 5);
      sub_22D81B3D8();
      __swift_destroy_boxed_opaque_existential_0(v24);
      v8 = v24[5];
      v25 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22D7E8A28((v9 > 1), v10 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v24[0] = v4;
  sub_22D81A398();
  sub_22D781298(v24);

  v11 = v24[0];
  v12 = *(v24[0] + 2);
  if (v12)
  {
    v24[0] = v2;
    sub_22D7E8A08(0, v12, 0);
    v13 = 32;
    v14 = v24[0];
    do
    {
      v25 = *&v11[v13];
      v15 = sub_22D81BAD8();
      v24[0] = v14;
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v20 = v15;
        v21 = v16;
        sub_22D7E8A08((v17 > 1), v18 + 1, 1);
        v16 = v21;
        v15 = v20;
        v14 = v24[0];
      }

      *(v14 + 2) = v18 + 1;
      v19 = &v14[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v24[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02428, &qword_22D820B28);
  sub_22D7548B0(&qword_280CD1580, &unk_27DA02428, &qword_22D820B28);
  v22 = sub_22D81B1E8();

  return v22;
}

uint64_t sub_22D77E434(uint64_t a1)
{
  v2 = type metadata accessor for AlarmConcern(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22D7E89C4(0, v7, 0);
    v8 = v16;
    v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10 = a1 + v9;
    v11 = *(v3 + 72);
    do
    {
      sub_22D77FDE0(v10, v6, type metadata accessor for AlarmConcern);
      v16 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22D7E89C4(v12 > 1, v13 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      sub_22D785624(v6, v8 + v9 + v13 * v11, type metadata accessor for AlarmConcern);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void *sub_22D77E5B4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02440, &qword_22D820B38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v28 = type metadata accessor for AlarmConcern(0);
  v10 = *(*(v28 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v28);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v25 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = (a3 + 32);
  v23 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x277D84F90];
  v24 = a1;
  while (1)
  {
    v27 = *v16;
    sub_22D81A198();
    a1(&v27);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v28) == 1)
    {
      sub_22D764440(v9, &qword_27DA02440, &qword_22D820B38);
    }

    else
    {
      v19 = v25;
      sub_22D785624(v9, v25, type metadata accessor for AlarmConcern);
      sub_22D785624(v19, v26, type metadata accessor for AlarmConcern);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22D7ED5A0(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_22D7ED5A0(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_22D785624(v26, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for AlarmConcern);
      a1 = v24;
    }

    ++v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

unint64_t sub_22D77E894()
{
  v1 = v0;
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for AlarmConcern(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D77FDE0(v1, v13, type metadata accessor for AlarmConcern);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7369206D72616C41;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
      v30 = v3[4];
      v30(v9, v13, v2);
      v30(v7, &v13[v29], v2);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD00000000000002CLL, 0x800000022D8298B0);
      v31 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v32 = sub_22D81B2B8();
      [v31 setDateFormat_];

      v33 = sub_22D81A818();
      v34 = [v31 stringFromDate_];

      v35 = sub_22D81B2C8();
      v37 = v36;

      MEMORY[0x2318D1A50](v35, v37);

      MEMORY[0x2318D1A50](0x6570706F7473202CLL, 0xEB00000000203A64);
      v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v38 = sub_22D81B2B8();
      [v25 setDateFormat_];

      v27 = sub_22D81A818();
      v28 = [v25 stringFromDate_];
      goto LABEL_6;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 8:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      return result;
    case 11:
      result = 0x6C6120616964654DLL;
      break;
    default:
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
      v17 = v3[4];
      v17(v9, v13, v2);
      v17(v7, &v13[v16], v2);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD00000000000002BLL, 0x800000022D8298E0);
      v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v19 = sub_22D81B2B8();
      [v18 setDateFormat_];

      v20 = sub_22D81A818();
      v21 = [v18 stringFromDate_];

      v22 = sub_22D81B2C8();
      v24 = v23;

      MEMORY[0x2318D1A50](v22, v24);

      MEMORY[0x2318D1A50](0x73696D736964202CLL, 0xED0000203A646573);
      v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v26 = sub_22D81B2B8();
      [v25 setDateFormat_];

      v27 = sub_22D81A818();
      v28 = [v25 stringFromDate_];
LABEL_6:
      v39 = v28;

      v40 = sub_22D81B2C8();
      v42 = v41;

      MEMORY[0x2318D1A50](v40, v42);

      v43 = v45;
      v44 = v3[1];
      v44(v7, v2);
      v44(v9, v2);
      result = v43;
      break;
  }

  return result;
}

uint64_t sub_22D77F0C4()
{
  sub_22D81BBC8();
  v0 = sub_22D77F8B8();
  MEMORY[0x2318D22E0](v0);
  return sub_22D81BC18();
}

uint64_t sub_22D77F134()
{
  sub_22D81BBC8();
  v0 = sub_22D77F8B8();
  MEMORY[0x2318D22E0](v0);
  return sub_22D81BC18();
}

uint64_t sub_22D77F17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmConcern(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(sub_22D78550C(a1))
  {
    case 9u:
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
      sub_22D81A888();
      sub_22D81A888();
      break;
    case 0xAu:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
      sub_22D81A888();
      sub_22D81A888();
      break;
    default:
      break;
  }

  swift_storeEnumTagMultiPayload();
  sub_22D785624(v8, a2, type metadata accessor for AlarmConcern);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_22D77F354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D77F8B8();
  *a1 = result;
  return result;
}

uint64_t sub_22D77F3C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22D77F410(void *a1)
{
  a1[1] = sub_22D77F3C8(&qword_280CD24B8, 255, type metadata accessor for AlarmConcern);
  a1[2] = sub_22D77F3C8(&qword_280CD24C0, 255, type metadata accessor for AlarmConcern);
  a1[3] = sub_22D77F3C8(qword_280CD24E8, 255, type metadata accessor for AlarmConcern);
  a1[4] = sub_22D77F3C8(&qword_280CD24E0, 255, type metadata accessor for AlarmConcern);
  result = sub_22D77F3C8(&qword_280CD24C8, 255, type metadata accessor for AlarmConcern);
  a1[5] = result;
  return result;
}

unint64_t sub_22D77F524()
{
  result = qword_27DA02300;
  if (!qword_27DA02300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02300);
  }

  return result;
}

unint64_t sub_22D77F57C()
{
  result = qword_27DA02308;
  if (!qword_27DA02308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02308);
  }

  return result;
}

unint64_t sub_22D77F5D4()
{
  result = qword_27DA02310;
  if (!qword_27DA02310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02310);
  }

  return result;
}

unint64_t sub_22D77F62C()
{
  result = qword_27DA02318;
  if (!qword_27DA02318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02318);
  }

  return result;
}

unint64_t sub_22D77F684()
{
  result = qword_280CD2648;
  if (!qword_280CD2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2648);
  }

  return result;
}

uint64_t sub_22D77F730(void *a1)
{
  a1[1] = sub_22D77F3C8(&qword_280CD25F0, 255, type metadata accessor for AlarmReport);
  a1[2] = sub_22D77F3C8(&unk_280CD25F8, 255, type metadata accessor for AlarmReport);
  a1[3] = sub_22D77F3C8(&unk_280CD2610, 255, type metadata accessor for AlarmReport);
  a1[4] = sub_22D77F3C8(&unk_280CD2638, 255, type metadata accessor for AlarmReport);
  a1[5] = sub_22D77F3C8(&qword_280CD2630, 255, type metadata accessor for AlarmReport);
  result = sub_22D77F3C8(&qword_280CD2608, 255, type metadata accessor for AlarmReport);
  a1[6] = result;
  return result;
}

uint64_t sub_22D77F8B8()
{
  v1 = v0;
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlarmConcern(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  sub_22D77FDE0(v1, &v27 - v15, type metadata accessor for AlarmConcern);
  v17 = -1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22D77FDE0(v16, v11, type metadata accessor for AlarmConcern);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
      sub_22D81A888();
      sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
      v23 = sub_22D81B1F8();
      v20 = *(v3 + 8);
      v20(v6, v2);
      v20(v11, v2);
      if ((v23 & 1) == 0)
      {
        v25 = &v11[v22];
        goto LABEL_22;
      }

      sub_22D81A888();
      v24 = sub_22D81B1F8();
      v20(v6, v2);
      v20(&v11[v22], v2);
      if (v24)
      {
        v17 = 1010;
      }

      else
      {
        v17 = -1;
      }

      break;
    case 2u:
      v17 = 1001;
      break;
    case 3u:
      v17 = 1002;
      break;
    case 4u:
      v17 = 1003;
      break;
    case 5u:
      v17 = 1004;
      break;
    case 6u:
      v17 = 1005;
      break;
    case 7u:
      v17 = 1006;
      break;
    case 8u:
      v17 = 1007;
      break;
    case 9u:
      v17 = 1008;
      break;
    case 0xAu:
      v17 = 1011;
      break;
    case 0xBu:
      v17 = 1012;
      break;
    case 0xCu:
      break;
    default:
      sub_22D77FDE0(v16, v14, type metadata accessor for AlarmConcern);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
      sub_22D81A888();
      sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578]);
      v19 = sub_22D81B1F8();
      v20 = *(v3 + 8);
      v20(v6, v2);
      v20(v14, v2);
      if (v19)
      {
        sub_22D81A888();
        v21 = sub_22D81B1F8();
        v20(v6, v2);
        v20(&v14[v18], v2);
        if (v21)
        {
          v17 = 1009;
        }

        else
        {
          v17 = -1;
        }
      }

      else
      {
        v25 = &v14[v18];
LABEL_22:
        v20(v25, v2);
        v17 = -1;
      }

      break;
  }

  sub_22D77FE48(v16, type metadata accessor for AlarmConcern);
  return v17;
}

unint64_t sub_22D77FD1C()
{
  result = qword_27DA02358;
  if (!qword_27DA02358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02358);
  }

  return result;
}

uint64_t sub_22D77FD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D77FDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D77FE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D77FEA8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02368, &qword_22D820A00);
    sub_22D77F3C8(a2, 255, type metadata accessor for AlarmConcern);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D77FF48(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02448, &qword_22D820B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D820420;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v4 + 32) = sub_22D785EC8;
  *(v4 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v4 + 48) = sub_22D785ED0;
  *(v4 + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v4 + 64) = sub_22D785ED8;
  *(v4 + 72) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 80) = sub_22D785EE0;
  *(v4 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 96) = sub_22D785EE8;
  *(v4 + 104) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 112) = sub_22D785EF0;
  *(v4 + 120) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 128) = sub_22D785EF8;
  *(v4 + 136) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 144) = sub_22D785F00;
  *(v4 + 152) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 160) = sub_22D785F08;
  *(v4 + 168) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 176) = sub_22D785F10;
  *(v4 + 184) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 192) = sub_22D785F18;
  *(v4 + 200) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v4 + 208) = sub_22D785F20;
  *(v4 + 216) = v16;
  return v4;
}

uint64_t sub_22D7801B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v8 + 24), v7, &qword_27DA02000, &qword_22D81F160);
  v9 = sub_22D81A8C8();
  v10 = 1;
  v11 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
  v12 = type metadata accessor for AlarmConcern(0);
  if (v11 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  return (*(*(v12 - 8) + 56))(a2, v10, 1, v12);
}

uint64_t sub_22D780318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7803B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D780448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v8 + 28), v7, &qword_27DA02000, &qword_22D81F160);
  v9 = sub_22D81A8C8();
  v10 = 1;
  v11 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
  v12 = type metadata accessor for AlarmConcern(0);
  if (v11 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  return (*(*(v12 - 8) + 56))(a2, v10, 1, v12);
}

uint64_t sub_22D7805A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v8 + 32), v7, &qword_27DA02000, &qword_22D81F160);
  v9 = sub_22D81A8C8();
  v10 = 1;
  v11 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
  v12 = type metadata accessor for AlarmConcern(0);
  if (v11 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  return (*(*(v12 - 8) + 56))(a2, v10, 1, v12);
}

uint64_t sub_22D780708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 40) + 8);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7807B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmReport(0);
  if (*(a1 + *(v4 + 44) + 8) || *(a1 + *(v4 + 100)) == 1)
  {
    v5 = type metadata accessor for AlarmConcern(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a2;
    v9 = 1;
  }

  else
  {
    v11 = type metadata accessor for AlarmConcern(0);
    swift_storeEnumTagMultiPayload();
    v6 = *(*(v11 - 8) + 56);
    v8 = a2;
    v9 = 0;
    v7 = v11;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_22D780898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v8 + 48), v7, &qword_27DA02000, &qword_22D81F160);
  v9 = sub_22D81A8C8();
  v10 = 1;
  v11 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_22D764440(v7, &qword_27DA02000, &qword_22D81F160);
  v12 = type metadata accessor for AlarmConcern(0);
  if (v11 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  return (*(*(v12 - 8) + 56))(a2, v10, 1, v12);
}

uint64_t sub_22D7809F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_22D81A8C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v32 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = type metadata accessor for AlarmReport(0);
  v20 = a1;
  sub_22D7640C4(a1 + *(v19 + 24), v11, &qword_27DA02000, &qword_22D81F160);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_22D764440(v11, &qword_27DA02000, &qword_22D81F160);
LABEL_7:
    v27 = type metadata accessor for AlarmConcern(0);
    return (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  }

  v22 = v11;
  v23 = *(v13 + 32);
  v23(v18, v22, v12);
  sub_22D7640C4(v20 + *(v19 + 80), v9, &qword_27DA02000, &qword_22D81F160);
  if (v21(v9, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
    goto LABEL_7;
  }

  v24 = v32;
  v23(v32, v9, v12);
  sub_22D81A7F8();
  if (v25 > a3)
  {
    v26 = *(v13 + 8);
    v26(v24, v12);
    v26(v18, v12);
    goto LABEL_7;
  }

  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
  v30 = v33;
  v23(v33, v18, v12);
  v23(&v30[v29], v24, v12);
  v31 = type metadata accessor for AlarmConcern(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_22D780D9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D1>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_22D81A8C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v32 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = type metadata accessor for AlarmReport(0);
  v20 = a1;
  sub_22D7640C4(a1 + *(v19 + 68), v11, &qword_27DA02000, &qword_22D81F160);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_22D764440(v11, &qword_27DA02000, &qword_22D81F160);
LABEL_7:
    v27 = type metadata accessor for AlarmConcern(0);
    return (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  }

  v22 = v11;
  v23 = *(v13 + 32);
  v23(v18, v22, v12);
  sub_22D7640C4(v20 + *(v19 + 76), v9, &qword_27DA02000, &qword_22D81F160);
  if (v21(v9, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
    goto LABEL_7;
  }

  v24 = v32;
  v23(v32, v9, v12);
  sub_22D81A7F8();
  if (v25 > a3)
  {
    v26 = *(v13 + 8);
    v26(v24, v12);
    v26(v18, v12);
    goto LABEL_7;
  }

  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
  v30 = v33;
  v23(v33, v18, v12);
  v23(&v30[v29], v24, v12);
  v31 = type metadata accessor for AlarmConcern(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_22D781140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 92));
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7811EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 96));
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D781298(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22D792FD8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22D81BAC8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22D81B468();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22D781FAC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}