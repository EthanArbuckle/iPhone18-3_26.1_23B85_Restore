id sub_22D7433BC()
{
  result = [objc_allocWithZone(type metadata accessor for MTAppIntentsManager()) init];
  qword_280CD1F20 = result;
  return result;
}

uint64_t sub_22D743768()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D7437A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D7437E0()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22D7438DC, 0, 0);
}

uint64_t sub_22D7438DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_22D81B5A8())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_22D744DA4(v1);
LABEL_5:
    v3 = v0[7];

    v4 = v0[1];

    return v4();
  }

  v8 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_22D744C00;

  return v8();
}

uint64_t sub_22D743A58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return sub_22D743B10(a1, v5);
}

uint64_t sub_22D743B10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D744B08;

  return v6();
}

uint64_t sub_22D743BF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22D744B08;

  return sub_22D743CB8(v2, v3, v4, v5, v6);
}

uint64_t sub_22D743CB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 41) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D743D8C, 0, 0);
}

uint64_t sub_22D743D8C()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor);
  *(v0 + 112) = v1;
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D743E0C, v1, 0);
}

uint64_t sub_22D743E0C()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = sub_22D743E84(*(v0 + 41));

  return MEMORY[0x2822009F8](sub_22D744254, 0, 0);
}

uint64_t sub_22D743E84(int a1)
{
  v35 = a1;
  v33 = sub_22D81AF78();
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22D81AFD8();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v34 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
  v13 = sub_22D81AAC8();
  v14 = v13;
  v36 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
LABEL_16:
    v15 = sub_22D81B938();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v30 = v14 & 0xFFFFFFFFFFFFFF8;
      v31 = v14 & 0xC000000000000001;
      v28 = (v5 + 8);
      v29 = (v10 + 8);
      v27 = (v1 + 88);
      v26 = *MEMORY[0x277CB9A00];
      v24 = v9;
      v25 = (v1 + 8);
      while (1)
      {
        if (v31)
        {
          v10 = MEMORY[0x2318D1F70](v16, v14);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v21 = v36;
            goto LABEL_18;
          }
        }

        else
        {
          if (v16 >= *(v30 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v10 = *(v14 + 8 * v16 + 32);
          sub_22D81A198();
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_13;
          }
        }

        v1 = v15;
        v18 = v14;
        v19 = v34;
        sub_22D81AB08();
        sub_22D81ABF8();
        (*v29)(v19, v9);
        sub_22D81AF88();
        (*v28)(v8, v32);
        v5 = v33;
        v20 = (*v27)(v4, v33);
        (*v25)(v4, v5);
        if (((v20 != v26) ^ v35))
        {
          sub_22D81B888();
          v5 = *(v36 + 16);
          sub_22D81B8A8();
          v9 = v24;
          sub_22D81B8B8();
          sub_22D81B898();
        }

        else
        {
        }

        v14 = v18;
        v15 = v1;
        ++v16;
        if (v17 == v1)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_18:

  return v21;
}

char *sub_22D744254()
{
  v34 = v0;
  v1 = *(v0 + 120);
  v33 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_31:
    v2 = sub_22D81B938();
    v3 = *(v0 + 120);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = 0;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v6 = v3 + 32;
    v7 = (*(v0 + 96) + 8);
    while (1)
    {
      if (v32)
      {
        MEMORY[0x2318D1F70](v5, *(v0 + 120));
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v13 = v33;
          v14 = *(v0 + 120);
          v4 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v8 = *(v6 + 8 * v5);
        sub_22D81A198();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      v10 = *(v0 + 104);
      v11 = *(v0 + 88);
      sub_22D81AAD8();
      v1 = v10;
      sub_22D81AE28();
      (*v7)(v10, v11);
      if (*(v0 + 40) == 3 || *(v0 + 32) != *(v0 + 80))
      {
      }

      else
      {
        sub_22D81B888();
        v12 = *(v33 + 16);
        sub_22D81B8A8();
        sub_22D81B8B8();
        v1 = &v33;
        sub_22D81B898();
      }

      ++v5;
      if (v9 == v2)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v15 = sub_22D81B938();
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_33:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v15 = *(v13 + 16);
  if (!v15)
  {
    goto LABEL_33;
  }

LABEL_21:
  v33 = v4;
  result = sub_22D7E8A08(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = v33;
  v19 = v13;
  v31 = v13 & 0xC000000000000001;
  v20 = v13;
  do
  {
    if (v31)
    {
      v21 = MEMORY[0x2318D1F70](v17, v19);
    }

    else
    {
      v21 = *(v19 + 8 * v17 + 32);
      sub_22D81A198();
    }

    *(v0 + 48) = v21;
    sub_22D81A198();
    swift_getAtKeyPath();

    v23 = *(v0 + 16);
    v22 = *(v0 + 24);
    v33 = v18;
    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22D7E8A08((v24 > 1), v25 + 1, 1);
      v18 = v33;
    }

    ++v17;
    *(v18 + 16) = v25 + 1;
    v26 = v18 + 16 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v19 = v20;
  }

  while (v15 != v17);

LABEL_34:
  v27 = *(v0 + 104);
  v28 = *(v0 + 72);
  (*(v0 + 64))(v18);

  v29 = *(v0 + 8);

  return v29();
}

char *sub_22D7445A4()
{
  v34 = v0;
  v1 = *(v0 + 112);
  v33 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_31:
    v2 = sub_22D81B938();
    v3 = *(v0 + 112);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = 0;
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v6 = v3 + 32;
    v7 = (*(v0 + 96) + 8);
    while (1)
    {
      if (v32)
      {
        MEMORY[0x2318D1F70](v5, *(v0 + 112));
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v13 = v33;
          v14 = *(v0 + 112);
          v4 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v8 = *(v6 + 8 * v5);
        sub_22D81A198();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      v10 = *(v0 + 104);
      v11 = *(v0 + 88);
      sub_22D81AAD8();
      v1 = v10;
      sub_22D81AE28();
      (*v7)(v10, v11);
      if (*(v0 + 40) == 3 || *(v0 + 32) != *(v0 + 80))
      {
      }

      else
      {
        sub_22D81B888();
        v12 = *(v33 + 16);
        sub_22D81B8A8();
        sub_22D81B8B8();
        v1 = &v33;
        sub_22D81B898();
      }

      ++v5;
      if (v9 == v2)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v15 = sub_22D81B938();
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_33:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v15 = *(v13 + 16);
  if (!v15)
  {
    goto LABEL_33;
  }

LABEL_21:
  v33 = v4;
  result = sub_22D7E8A08(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = v33;
  v19 = v13;
  v31 = v13 & 0xC000000000000001;
  v20 = v13;
  do
  {
    if (v31)
    {
      v21 = MEMORY[0x2318D1F70](v17, v19);
    }

    else
    {
      v21 = *(v19 + 8 * v17 + 32);
      sub_22D81A198();
    }

    *(v0 + 48) = v21;
    sub_22D81A198();
    swift_getAtKeyPath();

    v23 = *(v0 + 16);
    v22 = *(v0 + 24);
    v33 = v18;
    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22D7E8A08((v24 > 1), v25 + 1, 1);
      v18 = v33;
    }

    ++v17;
    *(v18 + 16) = v25 + 1;
    v26 = v18 + 16 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v19 = v20;
  }

  while (v15 != v17);

LABEL_34:
  v27 = *(v0 + 104);
  v28 = *(v0 + 72);
  (*(v0 + 64))(v18);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22D744A68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D81A8D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_22D744A9C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22D81B418();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22D744B0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22D744C00()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_22D744DA4(v4);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_22D7437E0;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x2822003E8](v1 + 2, 0, 0, v9);
}

uint64_t sub_22D744DA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_104Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D744E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81ACA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22D744EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D81ACA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmValidating(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlarmValidating(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22D7450C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D7451C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E60, &unk_22D81E9D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D745254@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D745280@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D7452AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D7452D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D74541C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D74548C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D7454D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_22D745530()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D745568()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D7455B0()
{
  MEMORY[0x2318D2E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D7455F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D74569C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D745794@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D7457C0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27DA02180;
  return result;
}

uint64_t sub_22D74580C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27DA02180 = v1;
  return result;
}

uint64_t sub_22D74585C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D7459F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 104));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22D745ABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 104)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22D745D64()
{
  v1 = type metadata accessor for AlarmReport(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v29 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v12 = v1[7];
  if (!v11(v5 + v12, 1, v9))
  {
    (*(v10 + 8))(v5 + v12, v9);
  }

  v13 = v1[8];
  if (!v11(v5 + v13, 1, v9))
  {
    (*(v10 + 8))(v5 + v13, v9);
  }

  v14 = v1[9];
  if (!v11(v5 + v14, 1, v9))
  {
    (*(v10 + 8))(v5 + v14, v9);
  }

  v15 = *(v5 + v1[10] + 8);

  v16 = *(v5 + v1[11] + 8);

  v17 = v1[12];
  if (!v11(v5 + v17, 1, v9))
  {
    (*(v10 + 8))(v5 + v17, v9);
  }

  v18 = v1[13];
  if (!v11(v5 + v18, 1, v9))
  {
    (*(v10 + 8))(v5 + v18, v9);
  }

  v19 = v1[14];
  if (!v11(v5 + v19, 1, v9))
  {
    (*(v10 + 8))(v5 + v19, v9);
  }

  v20 = v1[15];
  if (!v11(v5 + v20, 1, v9))
  {
    (*(v10 + 8))(v5 + v20, v9);
  }

  v21 = *(v5 + v1[16] + 8);

  v22 = v1[17];
  if (!v11(v5 + v22, 1, v9))
  {
    (*(v10 + 8))(v5 + v22, v9);
  }

  v23 = v1[19];
  if (!v11(v5 + v23, 1, v9))
  {
    (*(v10 + 8))(v5 + v23, v9);
  }

  v24 = v1[20];
  if (!v11(v5 + v24, 1, v9))
  {
    (*(v10 + 8))(v5 + v24, v9);
  }

  v25 = *(v5 + v1[26]);

  v26 = *(v5 + v1[27] + 8);

  v27 = *(v5 + v1[28] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v29, v2 | 7);
}

uint64_t sub_22D746180()
{
  v1 = type metadata accessor for AlarmReport(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v30 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v1[6];
  v10 = sub_22D81A8C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v13 = v1[7];
  if (!v12(v6 + v13, 1, v10))
  {
    (*(v11 + 8))(v6 + v13, v10);
  }

  v14 = v1[8];
  if (!v12(v6 + v14, 1, v10))
  {
    (*(v11 + 8))(v6 + v14, v10);
  }

  v15 = v1[9];
  if (!v12(v6 + v15, 1, v10))
  {
    (*(v11 + 8))(v6 + v15, v10);
  }

  v16 = *(v6 + v1[10] + 8);

  v17 = *(v6 + v1[11] + 8);

  v18 = v1[12];
  if (!v12(v6 + v18, 1, v10))
  {
    (*(v11 + 8))(v6 + v18, v10);
  }

  v19 = v1[13];
  if (!v12(v6 + v19, 1, v10))
  {
    (*(v11 + 8))(v6 + v19, v10);
  }

  v20 = v1[14];
  if (!v12(v6 + v20, 1, v10))
  {
    (*(v11 + 8))(v6 + v20, v10);
  }

  v21 = v1[15];
  if (!v12(v6 + v21, 1, v10))
  {
    (*(v11 + 8))(v6 + v21, v10);
  }

  v22 = *(v6 + v1[16] + 8);

  v23 = v1[17];
  if (!v12(v6 + v23, 1, v10))
  {
    (*(v11 + 8))(v6 + v23, v10);
  }

  v24 = v1[19];
  if (!v12(v6 + v24, 1, v10))
  {
    (*(v11 + 8))(v6 + v24, v10);
  }

  v25 = v1[20];
  if (!v12(v6 + v25, 1, v10))
  {
    (*(v11 + 8))(v6 + v25, v10);
  }

  v26 = *(v6 + v1[26]);

  v27 = *(v6 + v1[27] + 8);

  v28 = *(v6 + v1[28] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v30, v2 | 7);
}

uint64_t sub_22D746590()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D7465D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D7466F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0B8();
  *a2 = v5;
  return result;
}

uint64_t sub_22D746730(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_22D81A0C8();
}

uint64_t sub_22D746768@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0B8();
  *a2 = v5;
  return result;
}

uint64_t sub_22D7467A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  sub_22D81A398();
  return sub_22D81A0C8();
}

uint64_t sub_22D746804()
{
  v1 = sub_22D81A7A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D746924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81A918();
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

uint64_t sub_22D7469E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D81A918();
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

uint64_t sub_22D746A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 20));
  result = sub_22D81A008();
  *a2 = result;
  return result;
}

uint64_t sub_22D746ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 28));
  result = sub_22D81A008();
  *a2 = result;
  return result;
}

uint64_t sub_22D746B20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 32));
  result = sub_22D81A008();
  *a2 = result;
  return result;
}

uint64_t sub_22D746B64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 36));
  result = sub_22D81A008();
  *a2 = result;
  return result;
}

uint64_t sub_22D746BA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 36));
  result = sub_22D819FE8();
  *a2 = v5;
  return result;
}

uint64_t sub_22D746BFC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for AlarmEntity() + 36));
  return sub_22D819FF8();
}

uint64_t sub_22D746C4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 32));
  result = sub_22D819FE8();
  *a2 = v5;
  return result;
}

uint64_t sub_22D746CA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for AlarmEntity() + 32));
  return sub_22D819FF8();
}

uint64_t sub_22D746CF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 28));
  result = sub_22D819FE8();
  *a2 = v5;
  return result;
}

uint64_t sub_22D746D44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for AlarmEntity() + 28));
  return sub_22D819FF8();
}

uint64_t sub_22D746D94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmEntity() + 20));
  result = sub_22D819FE8();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_22D746DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SolarPosition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22D746EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SolarPosition(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22D746FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22D74705C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarCycle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22D7470CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D747108()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D7471A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22D74720C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22D74727C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22D81AAB8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22D81A8C8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22D7473A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22D81AAB8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22D81A8C8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22D7474C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22D81AAB8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22D74753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22D81AAB8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22D7475B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D747618()
{
  v1 = (type metadata accessor for TimeString(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for TextClockDescriptor(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(*v5 + 64);
  v8 = v2 | v6;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = (v0 + v3);
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  v14 = *(v11 + 7);

  v15 = v1[11];
  v16 = sub_22D81AAB8();
  v17 = *(*(v16 - 8) + 8);
  v17(&v11[v15], v16);
  v18 = v1[12];
  v19 = sub_22D81A8C8();
  (*(*(v19 - 8) + 8))(&v11[v18], v19);
  v17((v0 + v5[7] + v7), v16);

  return MEMORY[0x2821FE8E8](v0, v7 + v21, v8 | 7);
}

uint64_t sub_22D7477FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22D747844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D74788C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D7478D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22D747A18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22D747A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocationAccuracy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22D747B04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationAccuracy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22D747BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D747C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_22D747D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D747DA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22D747E34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D747E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22D747EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22D747F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D748010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D81A8C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_22D7480D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22D74813C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22D7481AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D748274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D7482E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D74832C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D748364()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03230, &unk_22D823B90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D7483F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_22D748454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

unint64_t sub_22D7484CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22D748500(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_22D748500(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22D7485F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22D748648(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22D7488DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D74891C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D748D2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D748DD0()
{
  MEMORY[0x2318D2E50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D748E0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D748EB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D748F50(uint64_t result)
{
  if (result)
  {
    return sub_22D81A198();
  }

  return result;
}

uint64_t sub_22D748F64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D748FAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D748FEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D74902C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D7490F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22D81A8C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22D7491FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22D81A918();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22D81A8C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22D749304()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D749390()
{
  v1 = sub_22D81AFD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 4);

  v12 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v13 = sub_22D81AC68();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v8], 1, v13))
  {
    (*(v14 + 8))(&v0[v8], v13);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_22D749544()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22D749720()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D7497EC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22D749888()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D7498C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 200);
  return sub_22D81A398();
}

uint64_t sub_22D749918()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A78, &unk_22D826E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D7499AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D7499F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03A98, &qword_22D826F40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D749AC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D749BD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03B80, &unk_22D8274A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D749C68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D749C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

uint64_t sub_22D749CC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_22D81A0D8();
  *a2 = result;
  return result;
}

unint64_t sub_22D749D50()
{
  if (*v0)
  {
    result = 0x747865746E6F63;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22D749DBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id getHKSPSleepStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKSPSleepStoreClass_softClass;
  v7 = getHKSPSleepStoreClass_softClass;
  if (!getHKSPSleepStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKSPSleepStoreClass_block_invoke;
    v3[3] = &unk_278770A50;
    v3[4] = &v4;
    __getHKSPSleepStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22D74C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKHealthStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKHealthStoreClass_softClass;
  v7 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKHealthStoreClass_block_invoke;
    v3[3] = &unk_278770A50;
    v3[4] = &v4;
    __getHKHealthStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22D74C314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKSPSleepStoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SleepLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278770A70;
    v7 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SleepLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKSPSleepStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKSPSleepStoreClass_block_invoke_cold_1();
  }

  getHKSPSleepStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278770AA8;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HealthKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22D74ECA4(uint64_t a1, uint64_t *a2)
{
  v3 = (type metadata accessor for MTLogger() - 8);
  v4 = *(*v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81ACA8();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = &v6[v3[7]];
  *v9 = 0xD000000000000015;
  *(v9 + 1) = 0x800000022D828220;
  sub_22D81AC98();
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  return sub_22D74F100(v6);
}

uint64_t static MTLogger.appIntents.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA019A0 != -1)
  {
    swift_once();
  }

  v2 = sub_22D81ACA8();
  v3 = __swift_project_value_buffer(v2, qword_27DA019A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for MTLogger()
{
  result = qword_280CD1850;
  if (!qword_280CD1850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D74EF18()
{
  result = sub_22D81ACA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22D74EFBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D74EFDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

BOOL sub_22D74F034(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22D74F064@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22D74F100(uint64_t a1)
{
  v2 = type metadata accessor for MTLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22D74F170(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_22D74F1E0()
{
  result = qword_27DA01BE0;
  if (!qword_27DA01BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01BE0);
  }

  return result;
}

unint64_t sub_22D74F238()
{
  result = qword_27DA01BE8;
  if (!qword_27DA01BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01BE8);
  }

  return result;
}

unint64_t sub_22D74F2F8()
{
  result = qword_27DA01BF0;
  if (!qword_27DA01BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01BF0);
  }

  return result;
}

uint64_t sub_22D74F34C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v21 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_22D81A958() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_22D81B2A8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v21 = sub_22D81A768();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  sub_22D81B228();
  sub_22D81A948();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v13(v7, v12, v3);
  v14 = v22;
  sub_22D81A778();
  v15 = *(v10 + 56);
  v10 += 56;
  v15(v14, 0, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v16 = *(v10 + 16);
  v17 = (*(v10 + 24) + 32) & ~*(v10 + 24);
  *(swift_allocObject() + 16) = xmmword_22D81DF60;
  sub_22D81A738();
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D74F720(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_22D81A7A8();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for AlarmEntity();
  v2[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D74F810, 0, 0);
}

uint64_t sub_22D74F810()
{
  v13 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  v0[26] = v13;
  v1 = [objc_opt_self() defaultWorkspace];
  v0[27] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[24];
    v4 = v0[25];
    v5 = v0[22];
    v6 = v0[23];
    v7 = v0[20];
    v8 = v0[21];
    sub_22D81A0B8();
    v9 = *(v4 + *(v3 + 24));
    sub_22D819FE8();
    sub_22D750754(v4);
    v10 = sub_22D81A788();
    v0[28] = v10;
    (*(v5 + 8))(v6, v8);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22D74F9F8;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C30, &qword_22D81E0E8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22D74FC5C;
    v0[13] = &block_descriptor;
    v0[14] = v11;
    [v2 openURL:v10 configuration:v13 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_22D74F9F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_22D74FBB4;
  }

  else
  {
    v3 = sub_22D74FB08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D74FB08()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  sub_22D819FD8();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22D74FBB4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[23];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[29];

  return v7();
}

uint64_t sub_22D74FC5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_22D81B168();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22D74FD58()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_22D81A958() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_22D81B2A8() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D74FF38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D74F720(a1, v4);
}

uint64_t sub_22D74FFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7500F8();
  *a1 = result;
  return result;
}

uint64_t sub_22D750000(uint64_t a1)
{
  v2 = sub_22D74F2F8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D75004C()
{
  result = qword_27DA01BF8;
  if (!qword_27DA01BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01C00, &unk_22D81ED10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01BF8);
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

uint64_t sub_22D7500F8()
{
  v0 = sub_22D81A428();
  v41 = *(v0 - 8);
  v42 = v0;
  v1 = *(v41 + 64);
  (MEMORY[0x28223BE20])();
  v40 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0) - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v33 - v12;
  v13 = sub_22D81A748();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D81A958();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_22D81B2A8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v34 = sub_22D81A768();
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C20, &qword_22D827490);
  sub_22D81B228();
  sub_22D81A948();
  v26 = *MEMORY[0x277CC9110];
  v27 = *(v14 + 104);
  v33 = v14 + 104;
  v27(v17, v26, v13);
  sub_22D81A778();
  (*(v22 + 56))(v43, 1, 1, v34);
  v28 = type metadata accessor for AlarmEntity();
  (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
  sub_22D81B228();
  sub_22D81A948();
  v27(v17, v26, v13);
  sub_22D81A778();
  v29 = v38;
  sub_22D819F88();
  v30 = sub_22D819F78();
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 0, 1, v30);
  v31(v39, 1, 1, v30);
  (*(v41 + 104))(v40, *MEMORY[0x277CBA308], v42);
  sub_22D7506FC();
  return sub_22D81A108();
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

unint64_t sub_22D7506FC()
{
  result = qword_27DA01C28;
  if (!qword_27DA01C28)
  {
    type metadata accessor for AlarmEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C28);
  }

  return result;
}

uint64_t sub_22D750754(uint64_t a1)
{
  v2 = type metadata accessor for AlarmEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D7507C0(uint64_t a1, uint64_t a2)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22D7508BC()
{
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](0);
  return sub_22D81BC18();
}

uint64_t sub_22D750928()
{
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](0);
  return sub_22D81BC18();
}

uint64_t sub_22D750978()
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

uint64_t sub_22D750B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22D81A768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22D81B228();
  sub_22D81A948();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_22D81A778();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_22D81A488();
}

uint64_t sub_22D750DF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70696B736E75;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1885956979;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x70696B736E75;
  if (*a2 != 1)
  {
    v6 = 0x656C67676F74;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1885956979;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();
  }

  return v9 & 1;
}

unint64_t sub_22D750EE4()
{
  result = qword_27DA01C48;
  if (!qword_27DA01C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C48);
  }

  return result;
}

uint64_t sub_22D750F38()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D750FCC()
{
  *v0;
  *v0;
  sub_22D81B328();
}

uint64_t sub_22D75104C()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7510DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22D753F7C();
  *a2 = result;
  return result;
}

void sub_22D75110C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x70696B736E75;
  if (v2 != 1)
  {
    v4 = 0x656C67676F74;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1885956979;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_22D751160()
{
  result = qword_27DA01C50;
  if (!qword_27DA01C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C50);
  }

  return result;
}

unint64_t sub_22D7511B8()
{
  result = qword_27DA01C58;
  if (!qword_27DA01C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C58);
  }

  return result;
}

unint64_t sub_22D751210()
{
  result = qword_27DA01C60;
  if (!qword_27DA01C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C60);
  }

  return result;
}

unint64_t sub_22D751274()
{
  result = qword_27DA01C68;
  if (!qword_27DA01C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C68);
  }

  return result;
}

unint64_t sub_22D7512C8()
{
  result = qword_27DA01C70;
  if (!qword_27DA01C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C70);
  }

  return result;
}

unint64_t sub_22D75131C()
{
  result = qword_27DA01C78;
  if (!qword_27DA01C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C78);
  }

  return result;
}

unint64_t sub_22D751374()
{
  result = qword_27DA01C80;
  if (!qword_27DA01C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C80);
  }

  return result;
}

unint64_t sub_22D75141C()
{
  result = qword_27DA01C88;
  if (!qword_27DA01C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C88);
  }

  return result;
}

uint64_t sub_22D751470(uint64_t a1)
{
  v2 = sub_22D75141C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D7514C0()
{
  result = qword_27DA01C90;
  if (!qword_27DA01C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C90);
  }

  return result;
}

unint64_t sub_22D751518()
{
  result = qword_27DA01C98;
  if (!qword_27DA01C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01C98);
  }

  return result;
}

unint64_t sub_22D751570()
{
  result = qword_27DA01CA0;
  if (!qword_27DA01CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01CA0);
  }

  return result;
}

uint64_t sub_22D7515C8(uint64_t a1)
{
  v2 = sub_22D751374();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D75166C()
{
  result = qword_27DA01CB8;
  if (!qword_27DA01CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01CB8);
  }

  return result;
}

unint64_t sub_22D7516C4()
{
  result = qword_27DA01CC0;
  if (!qword_27DA01CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01CC0);
  }

  return result;
}

uint64_t sub_22D751768@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_22D751B10@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D38, &qword_22D81E588);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D40, &qword_22D81E590);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v21 - v12;
  v32 = 2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D48, &qword_22D81E598);
  v23 = sub_22D7538C0();
  sub_22D75131C();
  sub_22D7548B0(&qword_27DA01D50, &qword_27DA01D48, &qword_22D81E598);
  v24 = v13;
  sub_22D81A548();
  sub_22D7548B0(&qword_27DA01D58, &qword_27DA01D40, &qword_22D81E590);
  v14 = v7;
  sub_22D81A4C8();
  v22 = *(v31 + 8);
  v31 += 8;
  v22(v11, v7);
  v15 = v26;
  sub_22D81A598();
  sub_22D7548B0(&qword_27DA01D60, &qword_27DA01D38, &qword_22D81E588);
  v16 = v27;
  v17 = v28;
  sub_22D81A4C8();
  v18 = *(v29 + 8);
  v18(v15, v17);
  v19 = v25;
  sub_22D81A4B8();
  v18(v16, v17);
  return (v22)(v19, v14);
}

uint64_t sub_22D751F24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D68, &qword_22D81E5A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D70, &qword_22D81E5A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D48, &qword_22D81E598);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_22D7538C0();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D78, &unk_22D81E5B0);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  sub_22D81A3B8();
  v15 = sub_22D7548B0(&qword_27DA01D50, &qword_27DA01D48, &qword_22D81E598);
  MEMORY[0x2318D0B50](v12, &type metadata for EditSleepAlarmIntent, v7, v15);
  v16 = *(v8 + 8);
  v16(v12, v7);
  MEMORY[0x2318D0B40](v14, &type metadata for EditSleepAlarmIntent, v7, v15);
  return (v16)(v14, v7);
}

uint64_t sub_22D752218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v3[53] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7522BC, 0, 0);
}

uint64_t sub_22D7522BC()
{
  v1 = *(v0 + 408);
  sub_22D81A0B8();
  if (*(v0 + 488))
  {
    if (*(v0 + 488) == 1)
    {
      v2 = v0 + 80;
      v3 = objc_opt_self();
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 490;
      *(v0 + 88) = sub_22D7527A0;
      v4 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01CF8, &qword_22D81E540);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_22D752D34;
      *(v0 + 296) = &block_descriptor_14;
      *(v0 + 304) = v4;
      [v3 turnNextSleepAlarmEnabled:1 completion:v0 + 272];
    }

    else
    {
      v2 = v0 + 16;
      v7 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 489;
      *(v0 + 24) = sub_22D7528B0;
      v8 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01CF8, &qword_22D81E540);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_22D752D34;
      *(v0 + 232) = &block_descriptor_0;
      *(v0 + 240) = v8;
      [v7 toggleNextSleepAlarmWithCompletion_];
    }
  }

  else
  {
    v2 = v0 + 144;
    v5 = objc_opt_self();
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 491;
    *(v0 + 152) = sub_22D7525A4;
    v6 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01CF8, &qword_22D81E540);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_22D752D34;
    *(v0 + 360) = &block_descriptor_17;
    *(v0 + 368) = v6;
    [v5 turnNextSleepAlarmEnabled:0 completion:v0 + 336];
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_22D7525A4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_22D752B70;
  }

  else
  {
    v3 = sub_22D7526B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7526B4()
{
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *(v1 + 16) = *(v0 + 408);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 472) = v3;
  *v3 = v0;
  v3[1] = sub_22D7529C0;
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xE900000000000029, sub_22D754558, v1, v5);
}

uint64_t sub_22D7527A0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_22D752BE0;
  }

  else
  {
    v3 = sub_22D7526B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7528B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = sub_22D752C54;
  }

  else
  {
    v3 = sub_22D7526B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7529C0()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_22D752CC8;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_22D752ADC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D752ADC()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[50];
  sub_22D754560();
  sub_22D819FC8();
  sub_22D75463C(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D752B70()
{
  v1 = v0[55];
  swift_willThrow();
  v2 = v0[54];
  v3 = v0[55];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D752BE0()
{
  v1 = v0[56];
  swift_willThrow();
  v2 = v0[56];
  v3 = v0[54];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D752C54()
{
  v1 = v0[57];
  swift_willThrow();
  v2 = v0[57];
  v3 = v0[54];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D752CC8()
{
  v1 = v0[58];

  v2 = v0[60];
  v3 = v0[54];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D752D34(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_22D752E00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = [a3 nextSleepAlarm];
  if (v10)
  {
    v11 = v10;
    v22 = *(v6 + 16);
    v22(v9, a1, v5);
    v21 = a1;
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v20 = *(v6 + 32);
    v20(v13 + v12, v9, v5);
    v27 = sub_22D7546F8;
    v28 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v19 = &v25;
    v25 = sub_22D753268;
    v26 = &block_descriptor_20;
    v14 = _Block_copy(&aBlock);

    v15 = [v11 addSuccessBlock_];
    _Block_release(v14);

    v22(v9, v21, v5);
    v16 = swift_allocObject();
    v20(v16 + v12, v9, v5);
    v27 = sub_22D7547BC;
    v28 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_22D7532C0;
    v26 = &block_descriptor_26;
    v17 = _Block_copy(&aBlock);

    v18 = [v11 addFailureBlock_];
    _Block_release(v17);
  }

  else
  {
    sub_22D7546A4();
    aBlock = swift_allocError();
    sub_22D81B4A8();
  }
}

uint64_t sub_22D753114(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v8 - v4;
  sub_22D754864();
  if ([a1 isKindOfClass_])
  {
    sub_22D7546A4();
    v8[1] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548);
    return sub_22D81B4A8();
  }

  else
  {
    sub_22D78B5EC(a1, v5);
    v7 = type metadata accessor for AlarmEntity();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D753270(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548);
  return sub_22D81B4A8();
}

void sub_22D7532C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22D81A198();
  v5 = a2;
  v4();
}

uint64_t sub_22D753334()
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

uint64_t sub_22D7534F0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D28, &qword_22D81E580);
  v5 = sub_22D7548B0(&qword_27DA01D30, &qword_27DA01D28, &qword_22D81E580);

  return MEMORY[0x28210C568](KeyPath, sub_22D751B10, 0, v4, a2, v5);
}

uint64_t sub_22D7535BC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D752218(a1, v5, v4);
}

uint64_t sub_22D753668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D753FC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22D753690(uint64_t a1)
{
  v2 = sub_22D7538C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D7536CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22D753714(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EditSleepAlarmIntent.EditSleepAlarmOperation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EditSleepAlarmIntent.EditSleepAlarmOperation(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D7538C0()
{
  result = qword_27DA01CE8;
  if (!qword_27DA01CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01CE8);
  }

  return result;
}

unint64_t sub_22D753914()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41 - v5;
  v57 = sub_22D81A748();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = sub_22D81A768();
  v13 = *(v58 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D88, &unk_22D81E5C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D90, &qword_22D8275D0);
  v49 = v15;
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v45 = 2 * v16;
  v18 = swift_allocObject();
  v47 = v18;
  *(v18 + 16) = xmmword_22D81E100;
  v19 = (v18 + v17);
  v43 = *(v15 + 48);
  *v19 = 0;
  sub_22D81B228();
  sub_22D81A948();
  v42 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v56 = v6 + 104;
  v21 = v44;
  v20(v44);
  v22 = v20;
  v41 = v20;
  sub_22D81A778();
  v23 = *(v13 + 56);
  v53 = v13 + 56;
  v54 = v23;
  v24 = v46;
  v23(v46, 1, 1, v58);
  v51 = sub_22D81A328();
  v25 = *(v51 - 8);
  v50 = *(v25 + 56);
  v52 = v25 + 56;
  v26 = v48;
  v50(v48, 1, 1, v51);
  v55 = v19;
  v27 = v24;
  v28 = v26;
  sub_22D81A338();
  v29 = &v19[v16];
  v30 = v49;
  v43 = *(v49 + 48);
  *v29 = 1;
  sub_22D81B228();
  sub_22D81A948();
  v31 = v21;
  v32 = v21;
  v33 = v42;
  (v22)(v32, v42, v57);
  v34 = v31;
  sub_22D81A778();
  v35 = v27;
  v36 = v27;
  v37 = v58;
  v54(v36, 1, 1, v58);
  v50(v28, 1, 1, v51);
  sub_22D81A338();
  v38 = &v55[v45];
  v45 = *(v30 + 48);
  *v38 = 2;
  sub_22D81B228();
  sub_22D81A948();
  v41(v34, v33, v57);
  sub_22D81A778();
  v54(v35, 1, 1, v37);
  v50(v28, 1, 1, v51);
  sub_22D81A338();
  v39 = sub_22D81800C(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v39;
}

uint64_t sub_22D753F7C()
{
  v0 = sub_22D81B998();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22D753FC8()
{
  v0 = sub_22D81A428();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  MEMORY[0x28223BE20](v0);
  v37 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = v32 - v10;
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
  v20 = sub_22D81A768();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v23);
  v32[1] = v32 - v24;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01CF0, &qword_22D81E528);
  sub_22D81B228();
  sub_22D81A948();
  v25 = *(v12 + 104);
  v25(v15, *MEMORY[0x277CC9110], v11);
  sub_22D81A778();
  (*(v21 + 56))(v33, 1, 1, v20);
  v40 = 0;
  sub_22D81B228();
  *v15 = type metadata accessor for MTAppIntentsManager();
  v25(v15, *MEMORY[0x277CC9120], v11);
  sub_22D81A948();
  sub_22D81A778();
  v26 = v35;
  sub_22D819F88();
  v27 = sub_22D819F78();
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 0, 1, v27);
  v28(v36, 1, 1, v27);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  sub_22D75141C();
  v29 = sub_22D81A0F8();
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v30 = qword_27DA0D378;
  return v29;
}

unint64_t sub_22D754560()
{
  result = qword_27DA01D00;
  if (!qword_27DA01D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01C10, &unk_22D827470);
    sub_22D7545E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01D00);
  }

  return result;
}

unint64_t sub_22D7545E4()
{
  result = qword_27DA01D08;
  if (!qword_27DA01D08)
  {
    type metadata accessor for AlarmEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01D08);
  }

  return result;
}

uint64_t sub_22D75463C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C10, &unk_22D827470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7546A4()
{
  result = qword_27DA01D18;
  if (!qword_27DA01D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01D18);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D7547D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D10, &unk_22D81E548) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_22D754864()
{
  result = qword_27DA01D20;
  if (!qword_27DA01D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA01D20);
  }

  return result;
}

uint64_t sub_22D7548B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for EditSleepAlarmIntent.ActionError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EditSleepAlarmIntent.ActionError(_WORD *result, int a2, int a3)
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

unint64_t sub_22D7549E4()
{
  result = qword_27DA01D98;
  if (!qword_27DA01D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01D98);
  }

  return result;
}

unint64_t sub_22D754A5C()
{
  result = qword_27DA01DA0;
  if (!qword_27DA01DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DA0);
  }

  return result;
}

uint64_t sub_22D754B74()
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

uint64_t sub_22D754D30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E68, &qword_22D81E9E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E70, &qword_22D81E9E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D755F18();
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E78, &qword_22D81EA18);
  sub_22D81A3D8();

  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E80, &qword_22D81EA48);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3C8();
}

uint64_t sub_22D754F50()
{
  swift_getKeyPath();
  sub_22D755F18();
  v0 = sub_22D81A198();

  swift_getKeyPath();
  sub_22D81A198();
  v1 = sub_22D81A198();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22D81E6B0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_22D81A198();
  v3 = sub_22D81A398();

  return v3;
}

uint64_t sub_22D755044@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v28 = &v25 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v26 = sub_22D81A768();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v26);
  v27 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81B228();
  sub_22D81A948();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v5 + 104);
  v17(v8, v16, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v17(v8, v16, v4);
  v18 = v28;
  sub_22D81A778();
  v19 = *(v13 + 56);
  v13 += 56;
  v19(v18, 0, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  v20 = *(v13 + 16);
  v21 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_22D81E6C0;
  sub_22D81A738();
  sub_22D81A738();
  sub_22D81A738();
  sub_22D81A738();
  sub_22D81A738();
  v22 = v29;
  sub_22D81A2C8();
  v23 = sub_22D81A2B8();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_22D755484(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for AlarmEntity();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_22D81A708();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D755580, 0, 0);
}

uint64_t sub_22D755580()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = **(v0 + 72);
  sub_22D81A0B8();
  v5 = sub_22D81A658();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    sub_22D81A0B8();
    v11 = sub_22D81A6A8();
    v13 = v12;
    v8(v9, v10);
    if ((v13 & 1) == 0)
    {
      if ((v11 | v5) < 0)
      {
        __break(1u);
        return MEMORY[0x2822007B8]();
      }

      v19 = *(v0 + 72);
      v20 = [objc_allocWithZone(MEMORY[0x277D296F0]) initWithHour:v5 minute:v11];
      *(v0 + 128) = v20;
      v21 = *(v19 + 8);
      sub_22D81A0B8();
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = [objc_opt_self() mainBundle];
      v25 = sub_22D81A718();
      v27 = v26;

      if (v22)
      {
        if (v23 == v25 && v22 == v27)
        {

LABEL_17:
          v32 = *(v0 + 72);
          v33 = *(v32 + 24);
          sub_22D81A0B8();
          [v20 setAllowsSnooze_];
          v34 = *(v32 + 16);
          sub_22D81A0B8();
          v35 = *(v0 + 48);
          if (v35)
          {
            v36 = *(v35 + 16);
            if (v36)
            {
              v37 = 0;
              v38 = 32;
              do
              {
                v39 = qword_22D81EB88[*(v35 + v38)];
                if ((v39 & v37) != 0)
                {
                  v39 = 0;
                }

                v37 |= v39;
                ++v38;
                --v36;
              }

              while (v36);

              [v20 setRepeatSchedule_];
            }

            else
            {
            }
          }

          v40 = swift_task_alloc();
          *(v0 + 136) = v40;
          *(v40 + 16) = v20;
          v41 = *(MEMORY[0x277D859E0] + 4);
          v42 = swift_task_alloc();
          *(v0 + 144) = v42;
          *v42 = v0;
          v42[1] = sub_22D75598C;

          return MEMORY[0x2822007B8]();
        }

        v28 = sub_22D81BB08();

        if (v28)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      sub_22D81A0B8();
      if (*(v0 + 40))
      {
        v29 = *(v0 + 32);
        v30 = *(v0 + 40);
        v31 = sub_22D81B2B8();
      }

      else
      {
        v31 = 0;
      }

      [v20 setTitle_];

      goto LABEL_17;
    }
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = *(v0 + 88);
  sub_22D757B58();
  swift_allocError();
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22D75598C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22D755AA4, 0, 0);
}

uint64_t sub_22D755AA4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 128);
  sub_22D78B5EC(v6, v3);
  *(v0 + 56) = sub_22D7B72C8(1);
  sub_22D757BB4(&qword_27DA01D08);
  sub_22D757BF8();
  sub_22D819FA8();

  sub_22D750754(v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_22D755BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E60, &unk_22D81E9D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if (qword_27DA019E0 != -1)
  {
    swift_once();
  }

  v9 = [qword_27DA0D378 addAlarm_];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_22D757C4C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D78A760;
    aBlock[3] = &block_descriptor_1;
    v13 = _Block_copy(aBlock);

    v14 = [v10 addCompletionBlock_];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D755DEC()
{
  v1 = *(v0 + 8);
  sub_22D81A0B8();
  return v3;
}

void (*sub_22D755E54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_22D81A0A8();
  return sub_22D755EC8;
}

void sub_22D755EC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_22D755F18()
{
  result = qword_27DA01DA8;
  if (!qword_27DA01DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DA8);
  }

  return result;
}

unint64_t sub_22D755F70()
{
  result = qword_27DA01DB0;
  if (!qword_27DA01DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DB0);
  }

  return result;
}

unint64_t sub_22D755FC8()
{
  result = qword_27DA01DB8;
  if (!qword_27DA01DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DB8);
  }

  return result;
}

uint64_t sub_22D75606C()
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

uint64_t sub_22D756230(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_22D7562DC;

  return sub_22D755484(a1);
}

uint64_t sub_22D7562DC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_22D7563D0@<D0>(uint64_t a1@<X8>)
{
  sub_22D7568F4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_22D756414(uint64_t a1)
{
  v2 = sub_22D755F18();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D756454()
{
  result = qword_27DA01DC0;
  if (!qword_27DA01DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DC0);
  }

  return result;
}

unint64_t sub_22D7564A8()
{
  result = qword_27DA01DC8;
  if (!qword_27DA01DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DC8);
  }

  return result;
}

unint64_t sub_22D756500()
{
  result = qword_27DA01DD0;
  if (!qword_27DA01DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01DD8, qword_22D81E830);
    sub_22D7564A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01DD0);
  }

  return result;
}

uint64_t sub_22D756584(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22D756614;

  return sub_22D757850();
}

uint64_t sub_22D756614(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
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

uint64_t sub_22D756768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22D7567B0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22D756808(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22D7ED274(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22D7568F4@<X0>(char **a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E08, &qword_22D81E978);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E10, &unk_22D81E980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v64 - v6;
  v7 = sub_22D81A428();
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v88 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v64 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E18, &unk_22D81E990);
  v16 = *(v82 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v82);
  v71 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v85 = &v64 - v21;
  v22 = sub_22D81A748();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_22D81A958();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_22D81B2A8();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_22D81A768();
  v75 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v86 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v84 = &v64 - v36;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E20, &qword_22D81E9A0);
  sub_22D81B228();
  sub_22D81A948();
  v74 = *MEMORY[0x277CC9110];
  v37 = *(v23 + 104);
  v69 = v22;
  v37(v26);
  v73 = v37;
  sub_22D81A778();
  v76 = *(v32 + 56);
  v83 = v32 + 56;
  v76(v85, 1, 1, v31);
  (*(v16 + 104))(v71, *MEMORY[0x277CB9EE8], v82);
  sub_22D81B228();
  v82 = type metadata accessor for MTAppIntentsManager();
  *v26 = v82;
  v72 = *MEMORY[0x277CC9120];
  v37(v26);
  v38 = v23 + 104;
  sub_22D81A948();
  sub_22D81A778();
  v39 = v87;
  sub_22D819F88();
  v78 = sub_22D819F78();
  v40 = *(v78 - 8);
  v79 = *(v40 + 56);
  v80 = v40 + 56;
  v79(v39, 0, 1, v78);
  v77 = *MEMORY[0x277CBA308];
  v81 = *(v90 + 104);
  v90 += 104;
  v81(v88);
  v41 = v85;
  v71 = sub_22D81A128();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E28, &qword_22D81E9A8);
  sub_22D81B228();
  sub_22D81A948();
  v42 = v74;
  v43 = v69;
  v44 = v73;
  (v73)(v26, v74, v69);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v44(v26, v42, v43);
  v70 = v38;
  sub_22D81A778();
  v76(v41, 0, 1, v75);
  v45 = sub_22D81B208();
  v91 = 0;
  v92 = 0;
  (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
  sub_22D81B228();
  *v26 = v82;
  v46 = v72;
  v44(v26, v72, v43);
  sub_22D81A948();
  sub_22D81A778();
  v47 = v87;
  sub_22D819F88();
  v79(v47, 0, 1, v78);
  (v81)(v88, v77, v89);
  v65 = sub_22D81A138();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E30, &qword_22D81E9B0);
  sub_22D81B228();
  sub_22D81A948();
  v48 = v74;
  v49 = v73;
  (v73)(v26, v74, v43);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v49(v26, v48, v43);
  v50 = v85;
  sub_22D81A778();
  v76(v50, 0, 1, v75);
  v91 = MEMORY[0x277D84F90];
  sub_22D81B228();
  *v26 = v82;
  v49(v26, v46, v43);
  sub_22D81A948();
  sub_22D81A778();
  v51 = v87;
  sub_22D819F88();
  v52 = v78;
  v53 = v79;
  v79(v51, 0, 1, v78);
  v53(v66, 1, 1, v52);
  (v81)(v88, v77, v89);
  sub_22D7577A8();
  sub_22D7577FC();
  v54 = v85;
  v66 = sub_22D81A0E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E48, &qword_22D81E9B8);
  sub_22D81B228();
  sub_22D81A948();
  v55 = v74;
  v56 = v69;
  v57 = v73;
  (v73)(v26, v74, v69);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v57(v26, v55, v56);
  sub_22D81A778();
  v76(v54, 0, 1, v75);
  LOBYTE(v91) = 1;
  v58 = sub_22D81B488();
  (*(*(v58 - 8) + 56))(v67, 1, 1, v58);
  sub_22D81B228();
  *v26 = v82;
  v57(v26, v72, v56);
  sub_22D81A948();
  sub_22D81A778();
  v59 = v87;
  sub_22D819F88();
  v79(v59, 0, 1, v78);
  (v81)(v88, v77, v89);
  v60 = sub_22D81A148();
  result = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v62 = v68;
  v63 = v65;
  *v68 = v71;
  v62[1] = v63;
  v62[2] = v66;
  v62[3] = v60;
  v62[4] = result;
  return result;
}

unint64_t sub_22D7577A8()
{
  result = qword_27DA01E38;
  if (!qword_27DA01E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E38);
  }

  return result;
}

unint64_t sub_22D7577FC()
{
  result = qword_27DA01E40;
  if (!qword_27DA01E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E40);
  }

  return result;
}

uint64_t sub_22D757850()
{
  v1 = sub_22D81ACA8();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_22D81AA48();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D757968, 0, 0);
}

uint64_t sub_22D757968()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_22D81A9F8();
  v4 = sub_22D81A988();
  v5 = (*(v2 + 8))(v1, v3);
  v7 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 < 7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v6 = (2 * v7) | 1;
      v5 = &unk_2840D4E28;
      v8 = &unk_2840D4E28;
      if (v4 == 1)
      {
LABEL_5:
        sub_22D763988(v5, v5 + 32, 0, v6);
        sub_22D756808(v9);
        goto LABEL_9;
      }

LABEL_14:
      v22 = v5;
      v23 = v6;
      sub_22D763988(v5, v5 + 32, v7, 0xFuLL);
      v6 = v23;
      v8 = v24;
      v5 = v22;
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v0[4];
  sub_22D81AC98();
  v11 = sub_22D81AC88();
  v12 = sub_22D81B608();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[3];
  v14 = v0[4];
  v16 = v0[2];
  if (v13)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22D741000, v11, v12, "Unexpected value > weekdays count, bailing out.", v17, 2u);
    MEMORY[0x2318D2D80](v17, -1, -1);
  }

  (*(v15 + 8))(v14, v16);
  v8 = MEMORY[0x277D84F90];
LABEL_9:
  v18 = v0[7];
  v19 = v0[4];

  v20 = v0[1];

  return v20(v8);
}

unint64_t sub_22D757B58()
{
  result = qword_27DA01E50;
  if (!qword_27DA01E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E50);
  }

  return result;
}

uint64_t sub_22D757BB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlarmEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22D757BF8()
{
  result = qword_27DA01E58;
  if (!qword_27DA01E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E58);
  }

  return result;
}

uint64_t sub_22D757C4C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E60, &unk_22D81E9D0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_22D81B4B8();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D757CE4()
{
  result = qword_27DA01E90;
  if (!qword_27DA01E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E90);
  }

  return result;
}

unint64_t sub_22D757D3C()
{
  result = qword_27DA01E98;
  if (!qword_27DA01E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01E98);
  }

  return result;
}

unint64_t sub_22D757D94()
{
  result = qword_27DA01EA0;
  if (!qword_27DA01EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01EA0);
  }

  return result;
}

uint64_t sub_22D757E38@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_22D7581C4()
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

uint64_t sub_22D758388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01EC8, &unk_22D81ED20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D758460(uint64_t a1)
{
  *(v2 + 24) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22D7584F8;

  return MTStopwatchManager.viewModelForCurrentStopwatch()();
}

uint64_t sub_22D7584F8(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_22D75862C, 0, 0);
  }
}

uint64_t sub_22D75862C()
{
  v1 = v0[5];
  if (v1)
  {
    sub_22D75FE90();
  }

  v2 = v0[3];
  v0[2] = sub_22D7B72C8(2);
  sub_22D757BF8();
  sub_22D819F98();

  v3 = v0[1];

  return v3();
}

id sub_22D7586DC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D29718]) init];
  *a1 = result;
  return result;
}

uint64_t sub_22D758718(uint64_t a1)
{
  v2 = sub_22D758764();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D758764()
{
  result = qword_27DA01EC0;
  if (!qword_27DA01EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01EC0);
  }

  return result;
}

uint64_t sub_22D7587D8()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED0, &qword_22D81ED68);
  *v4 = v0;
  v4[1] = sub_22D7588E0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000010, 0x800000022D828880, sub_22D7590B4, v2, v5);
}

uint64_t sub_22D7588E0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22D759CEC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22D7589FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7589FC()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[2];
    }

    result = sub_22D81B938();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v6 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2318D1F70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[3];

  v6 = MTStopwatchManager.viewModel(for:)(v4);

LABEL_11:
  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_22D758B10()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED0, &qword_22D81ED68);
  *v4 = v0;
  v4[1] = sub_22D758C18;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000010, 0x800000022D828880, sub_22D759CF4, v2, v5);
}

uint64_t sub_22D758C18()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22D758D50;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22D758D34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D758D50()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_22D758DB4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED8, &unk_22D81EE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = [a2 getStopwatches];
  if (v9)
  {
    v10 = v9;
    v23 = *(v5 + 16);
    v23(v8, a1, v4);
    v22 = a1;
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    v21 = *(v5 + 32);
    v21(v12 + v11, v8, v4);
    v28 = sub_22D759B34;
    v29 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v20 = &v26;
    v26 = sub_22D759130;
    v27 = &block_descriptor_2;
    v13 = _Block_copy(&aBlock);
    v14 = v10;

    v15 = [v14 addSuccessBlock_];
    _Block_release(v13);

    v23(v8, v22, v4);
    v16 = swift_allocObject();
    v21(v16 + v11, v8, v4);
    v28 = sub_22D759BF8;
    v29 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_22D7532C0;
    v27 = &block_descriptor_11;
    v17 = _Block_copy(&aBlock);
    v18 = v14;

    v19 = [v18 addFailureBlock_];

    _Block_release(v17);
  }
}

uint64_t sub_22D7590BC()
{
  sub_22D759CA0(0, &qword_280CD2D80, 0x277D29710);
  sub_22D81B928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED8, &unk_22D81EE08);
  return sub_22D81B4B8();
}

void sub_22D759130(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22D81A198();
  v5 = a2;
  v4();
}

uint64_t sub_22D759198(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED8, &unk_22D81EE08);
  return sub_22D81B4A8();
}

uint64_t MTStopwatchManager.viewModel(for:)(void *a1)
{
  [a1 mutableCopy];
  sub_22D81B758();
  swift_unknownObjectRelease();
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v2 = objc_allocWithZone(DefaultDateProvider);
  v3 = v8;
  v4 = [v2 init];
  objc_allocWithZone(type metadata accessor for StopwatchViewModel());
  v5 = v1;
  v6 = StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)(v8, v1, 0, v4, 0, 0);

  return v6;
}

void __swiftcall StopwatchAutoFormatter.init()(MobileTimerSupport::StopwatchAutoFormatter *__return_ptr retstr)
{
  retstr->underOneHourFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->underTenHourFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->underHundredHourFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->underThousandHourFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->underYearFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->dayOverYearFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->overYearFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  retstr->overThousandYearFormatter.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  *&retstr->oneHour = xmmword_22D81ED30;
  *&retstr->hundredHours = xmmword_22D81ED40;
  *&retstr->threeSixtyFiveDays = xmmword_22D81ED50;
  v2 = *&retstr->underHundredHourFormatter.super.super.isa;
  v13 = *&retstr->underOneHourFormatter.super.super.isa;
  v3 = *&retstr->underYearFormatter.super.super.isa;
  v4 = *&retstr->overYearFormatter.super.super.isa;
  v14 = v2;
  v15 = v3;
  v5 = *&retstr->oneHour;
  v6 = *&retstr->threeSixtyFiveDays;
  v18 = *&retstr->hundredHours;
  v19 = v6;
  retstr->nineNinetyNineYears = 3.1504464e10;
  v20 = 0x421D573FE2000000;
  v16 = v4;
  v17 = v5;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = *(&v4 + 1);
  v11 = v4;
  sub_22D759994(&v13, v12);
  [v7 setAllowedUnits_];
  [v7 setUnitsStyle_];
  [v7 setZeroFormattingBehavior_];
  [*(&v7 + 1) setAllowedUnits_];
  [v10 setZeroFormattingBehavior_];
  [v8 setAllowedUnits_];
  [v8 setUnitsStyle_];
  [*(&v8 + 1) setAllowedUnits_];
  [*(&v8 + 1) setUnitsStyle_];
  [v9 setAllowedUnits_];
  [v9 setUnitsStyle_];
  [v9 setZeroFormattingBehavior_];
  [*(&v9 + 1) setAllowedUnits_];
  [*(&v9 + 1) setUnitsStyle_];
  [*(&v9 + 1) setZeroFormattingBehavior_];
  [v11 setAllowedUnits_];
  [v11 setUnitsStyle_];
  [v11 setZeroFormattingBehavior_];
  [v10 setAllowedUnits_];
  [v10 setUnitsStyle_];
  [v10 setZeroFormattingBehavior_];
  sub_22D7599CC(&v13);
}

Swift::String_optional __swiftcall StopwatchAutoFormatter.formatInterval(_:padSingleLeadingZero:)(Swift::Double _, Swift::Bool padSingleLeadingZero)
{
  v5 = sub_22D81BC58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81BC68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + 64);
  if (v18 < 0.0)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v13 = *(v2 + 48);
  v19 = *(v2 + 56);
  v21 = *(v2 + 72);
  v20 = *(v2 + 80);
  v23 = *(v2 + 88);
  v22 = *(v2 + 96);
  v25 = *(v2 + 104);
  v24 = *(v2 + 112);
  if (_ >= 0.0 && v18 > _)
  {
    if (!padSingleLeadingZero)
    {
      v30 = v15;
      sub_22D81BCB8();
      sub_22D81BC48();
      sub_22D81A5A8();
      (*(v6 + 8))(v9, v5);
      sub_22D7599FC();
      sub_22D81BC78();
      (*(v11 + 8))(v17, v30);
      v13 = v32[0];
      v14 = v32[1];
      goto LABEL_47;
    }

    v13 = [*v2 stringFromTimeInterval_];
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_47;
  }

  if (v18 > v21)
  {
    goto LABEL_41;
  }

  if (v18 > _ || v21 <= _)
  {
    if (v21 <= v20)
    {
      if (v21 <= _ && v20 > _)
      {
        v13 = [*(v2 + 16) stringFromTimeInterval_];
        if (!v13)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      if (v20 <= v23)
      {
        if (v20 <= _ && v23 > _)
        {
          v13 = [*(v2 + 24) stringFromTimeInterval_];
          if (!v13)
          {
            goto LABEL_11;
          }

          goto LABEL_6;
        }

        if (v23 <= v22)
        {
          if (v23 <= _ && v22 > _)
          {
            v13 = [*(v2 + 32) stringFromTimeInterval_];
            if (!v13)
            {
              goto LABEL_11;
            }

            goto LABEL_6;
          }

          if (v22 <= v25)
          {
            if (v22 <= _ && v25 > _)
            {
              v13 = [*(v2 + 40) stringFromTimeInterval_];
              if (!v13)
              {
                goto LABEL_11;
              }

              goto LABEL_6;
            }

            if (v25 <= v24)
            {
              if (v25 > _ || v24 <= _)
              {
                v13 = [*(v2 + 56) stringFromTimeInterval_];
                if (!v13)
                {
                  goto LABEL_11;
                }
              }

              else
              {
                v13 = [v13 stringFromTimeInterval_];
                if (!v13)
                {
                  goto LABEL_11;
                }
              }

              goto LABEL_6;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = [*(v2 + 8) stringFromTimeInterval_];
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_6:
  v26 = v13;
  v27 = sub_22D81B2C8();
  v29 = v28;

  v14 = v29;
  v13 = v27;
LABEL_47:
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

unint64_t sub_22D7599FC()
{
  result = qword_280CD14E0;
  if (!qword_280CD14E0)
  {
    sub_22D81BC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD14E0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_22D759A80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_22D759AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED8, &unk_22D81EE08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22D759C10(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01ED8, &unk_22D81EE08) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_22D759CA0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_22D759CFC()
{
  result = qword_27DA01EE0;
  if (!qword_27DA01EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01EE0);
  }

  return result;
}

unint64_t sub_22D759D54()
{
  result = qword_27DA01EE8;
  if (!qword_27DA01EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01EE8);
  }

  return result;
}

uint64_t sub_22D759DF8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_22D75A210(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D75A230, 0, 0);
}

uint64_t sub_22D75A230()
{
  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  sub_22D81A0B8();
  v4 = v0[3];
  v3 = v0[4];
  sub_22D819FE8();

  sub_22D7BCCBC(v0[2], v0[3]);

  v0[2] = sub_22D7B72C8(0);
  sub_22D757BF8();
  sub_22D819F98();

  v5 = v0[1];

  return v5();
}

uint64_t sub_22D75A340()
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

uint64_t sub_22D75A4F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F18, &qword_22D81EF80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F20, &qword_22D81EF88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F28, &unk_22D81EFB8);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D75A698(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D75A210(a1, v4);
}

uint64_t sub_22D75A738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D75A7AC();
  *a1 = result;
  return result;
}

uint64_t sub_22D75A760(uint64_t a1)
{
  v2 = sub_22D75AD9C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D75A7AC()
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
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F00, &qword_22D81EF68);
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
  v43 = 0;
  v44 = 0;
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

unint64_t sub_22D75AD48()
{
  result = qword_27DA01F08;
  if (!qword_27DA01F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01F08);
  }

  return result;
}

unint64_t sub_22D75AD9C()
{
  result = qword_27DA01F10;
  if (!qword_27DA01F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01F10);
  }

  return result;
}

unint64_t sub_22D75ADF4()
{
  result = qword_27DA01F30;
  if (!qword_27DA01F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01F30);
  }

  return result;
}

unint64_t sub_22D75AE4C()
{
  result = qword_27DA01F38;
  if (!qword_27DA01F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01F38);
  }

  return result;
}

uint64_t sub_22D75AEF0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_22D75B27C()
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

uint64_t sub_22D75B440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F58, &unk_22D81F110);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D75B518(uint64_t a1)
{
  *(v2 + 24) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_22D75B5B0;

  return MTStopwatchManager.viewModelForCurrentStopwatch()();
}

uint64_t sub_22D75B5B0(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_22D75B6E4, 0, 0);
  }
}

uint64_t sub_22D75B6E4()
{
  v1 = v0[5];
  if (v1)
  {
    sub_22D760804();
  }

  v2 = v0[3];
  v0[2] = sub_22D7B72C8(2);
  sub_22D757BF8();
  sub_22D819F98();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22D75B794(uint64_t a1)
{
  v2 = sub_22D75B7E0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D75B7E0()
{
  result = qword_27DA01F50;
  if (!qword_27DA01F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA01F50);
  }

  return result;
}

uint64_t sub_22D75B8A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_22D75B910()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_22D75B958(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = v6;
  v73 = a6;
  v66 = a5;
  v74 = a4;
  v75 = a2;
  v76 = a3;
  v72 = a1;
  v71 = sub_22D81B668();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22D81B628();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_22D81B108();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_broadcastUpdates] = 0;
  v67 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_delegate;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink] = 0;
  v70 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v16 = sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v68 = "Reset the Stopwatch";
  v69 = v16;
  sub_22D81B0E8();
  aBlock = MEMORY[0x277D84F90];
  sub_22D764364(&unk_280CD2D70, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FE0, &unk_22D81F120);
  sub_22D7548B0(&qword_280CD2D90, &qword_27DA02FE0, &unk_22D81F120);
  sub_22D81B788();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v71);
  v17 = v72;
  result = sub_22D81B6A8();
  *&v6[v70] = result;
  v19 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_updatedCancellable];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapAddedCancellable];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_clearAllLapsCancellable];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_startLapTimerCancellable];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_pauseLapTimerCancellable];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapLapTimerCancellable];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v25 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resetLapTimerCancellable];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v26 = &v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resumeLapTimerCancellable];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  if (!v17)
  {
    goto LABEL_27;
  }

  *&v6[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_internalStopwatch] = v17;
  result = swift_unknownObjectWeakAssign();
  v27 = v75;
  if (!v75)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  type metadata accessor for SyncManager();
  v28 = swift_allocObject();
  swift_unknownObjectRetain();
  v29 = v17;
  result = swift_defaultActor_initialize();
  *(v28 + 112) = v27;
  *&v7[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager] = v28;
  if (!v74)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *&v7[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider] = v74;
  v30 = type metadata accessor for StopwatchViewModel();
  v85.receiver = v7;
  v85.super_class = v30;
  swift_unknownObjectRetain();
  v31 = objc_msgSendSuper2(&v85, sel_init);
  v71 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v32 = *&v31[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22D75C378;
  *(v34 + 24) = v33;
  v83 = sub_22D75C3C4;
  v84 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_22D75BA3C;
  v82 = &block_descriptor_3;
  v35 = _Block_copy(&aBlock);
  v36 = v29;
  v37 = v31;
  v38 = v36;
  v39 = v37;
  v40 = v32;
  sub_22D81A198();

  dispatch_sync(v40, v35);
  v72 = v38;

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = v66;
  if (v66)
  {
    sub_22D75C440();
  }

  v39[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_broadcastUpdates] = v73 & 1;
  aBlock = 0;
  v80 = 0xE000000000000000;
  sub_22D81B838();
  v42 = [v39 description];
  v43 = sub_22D81B2C8();
  v45 = v44;

  MEMORY[0x2318D1A50](v43, v45);

  v46 = MEMORY[0x2318D1A50](0xD000000000000026, 0x800000022D8289B0);
  v47 = *&v31[v71];
  MEMORY[0x28223BE20](v46);
  *&v65[-16] = v39;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v48 = v47;
  sub_22D81B688();

  v49 = v77;
  v50 = [v77 identifier];

  if (v50)
  {
    v51 = sub_22D81B2C8();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v77 = v51;
  v78 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D8289E0);
  v54 = [*&v39[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_internalStopwatch] identifier];
  if (v54)
  {
    v55 = v54;
    v56 = sub_22D81B2C8();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v77 = v56;
  v78 = v58;
  sub_22D81B908();

  MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D828A00);
  if (v41)
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v41)
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v59, v60);

  MEMORY[0x2318D1A50](0xD000000000000015, 0x800000022D828A20);
  if (v73)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v73)
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  v63 = objc_opt_self();
  MEMORY[0x2318D1A50](v61, v62);

  v64 = sub_22D81B2B8();

  [v63 logInfo_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v39;
}

void sub_22D75C378()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_internalStopwatch);
  *(v1 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_internalStopwatch) = v2;
  v3 = v2;
}

uint64_t sub_22D75C3C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

id sub_22D75C404@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_internalStopwatch);
  *a1 = v2;
  return v2;
}

uint64_t sub_22D75C440()
{
  v1 = objc_opt_self();
  sub_22D81B838();
  v2 = [v0 description];
  sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000023, 0x800000022D828EF0);
  v3 = sub_22D81B2B8();

  [v1 logInfo_];

  sub_22D761C14();
  sub_22D762380(MEMORY[0x277D29628], sub_22D764718, sub_22D7645A8, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapAddedCancellable);
  sub_22D761F6C();
  sub_22D762380(MEMORY[0x277D29620], sub_22D764718, sub_22D764560, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_startLapTimerCancellable);
  sub_22D762380(MEMORY[0x277D29608], sub_22D764718, sub_22D76453C, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_pauseLapTimerCancellable);
  sub_22D762380(MEMORY[0x277D29600], sub_22D764718, sub_22D764518, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapLapTimerCancellable);
  sub_22D762380(MEMORY[0x277D29610], sub_22D764718, sub_22D7644F4, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resetLapTimerCancellable);
  return sub_22D762380(MEMORY[0x277D29618], sub_22D76435C, sub_22D7643AC, &OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resumeLapTimerCancellable);
}

id StopwatchViewModel.__deallocating_deinit()
{
  StopwatchViewModel.unregisterNotifications()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopwatchViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StopwatchViewModel.unregisterNotifications()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_updatedCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v2, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v3 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapAddedCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v3, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v4 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_clearAllLapsCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v4, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v5 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_startLapTimerCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v5, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v6 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_pauseLapTimerCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v6, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v7 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_lapLapTimerCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v7, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v8 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resetLapTimerCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v8, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }

  v9 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_resumeLapTimerCancellable;
  swift_beginAccess();
  sub_22D7640C4(v1 + v9, v12, &qword_27DA01FE8, &unk_22D81F130);
  if (v13)
  {
    sub_22D75CCD8(v12, v10);
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
    __swift_project_boxed_opaque_existential_0(v10, v11);
    sub_22D81ACB8();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_22D764440(v12, &qword_27DA01FE8, &unk_22D81F130);
  }
}

uint64_t sub_22D75CCD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D75CEDC(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22D7646F0;
  *(v5 + 24) = v4;
  v12[4] = sub_22D7646F4;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22D75BA3C;
  v12[3] = &block_descriptor_14_0;
  v6 = _Block_copy(v12);
  v7 = v3;
  v8 = v1;
  v9 = a1;
  sub_22D81A198();

  dispatch_sync(v7, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_22D75D11C(int a1, double a2)
{
  v3 = v2;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v45 - v7;
  v8 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v9 = *&v2[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v47 = v3;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v10 = v9;
  sub_22D81B688();

  v11 = v49;
  v12 = [v49 laps];

  if (v12)
  {
    sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
    v13 = sub_22D81B438();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v51 = v13;
  sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
  v14 = sub_22D81B6E8();
  MEMORY[0x2318D1B10]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22D81B458();
  }

  v15 = sub_22D81B478();
  v16 = *&v3[v8];
  MEMORY[0x28223BE20](v15);
  *(&v45 - 2) = v3;
  v18 = v17;
  sub_22D81B688();

  v19 = v49;
  v20 = sub_22D81B418();

  [v19 setLaps_];

  v21 = *&v3[v8];
  MEMORY[0x28223BE20](v22);
  *(&v45 - 2) = v3;
  v24 = v23;
  sub_22D81B688();

  v25 = v49;
  [v49 previousLapsTotalInterval];
  [v25 setPreviousLapsTotalInterval_];

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_22D81B838();
  v27 = [v3 description];
  v28 = sub_22D81B2C8();
  v30 = v29;

  MEMORY[0x2318D1A50](v28, v30);

  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D828EB0);
  sub_22D81B5C8();
  v31 = MEMORY[0x2318D1A50](0xD000000000000016, 0x800000022D828ED0);
  v32 = *&v3[v8];
  MEMORY[0x28223BE20](v31);
  *(&v45 - 2) = v3;
  v34 = v33;
  sub_22D81B688();

  v35 = v48;
  v36 = [v48 laps];

  if (v36)
  {
    v37 = sub_22D81B438();
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_opt_self();
  v48 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02020, &qword_22D81F278);
  sub_22D81B908();

  v39 = sub_22D81B2B8();

  [v38 logInfo_];

  if (v46)
  {
    v40 = sub_22D81B4F8();
    v41 = v45;
    (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v3;
    v42[5] = v14;
    v43 = v3;
    sub_22D75D890(0, 0, v41, &unk_22D81F288, v42);
  }

  else
  {
  }
}

uint64_t sub_22D75D6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_22D75D6D8, 0, 0);
}

uint64_t sub_22D75D6D8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 40) = v1;
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D75D758, v1, 0);
}

uint64_t sub_22D75D758()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + 112);
  v4 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
  *(swift_task_alloc() + 16) = v2;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v5 = v4;
  sub_22D81B688();

  v6 = v0[2];
  v7 = [v3 didAddLap:v1 forStopwatch:v6 sender:v2];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22D75D890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22D7640C4(a3, v27 - v11, &unk_27DA01FF0, &qword_22D81FC70);
  v13 = sub_22D81B4F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_22D81A198();
  if (v15 == 1)
  {
    sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
  }

  else
  {
    sub_22D81B4E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22D81B498();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22D81B308() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_22D81A198();
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

      sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);

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

  sub_22D764440(a3, &unk_27DA01FF0, &qword_22D81FC70);
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

uint64_t sub_22D75DB90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v7 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v20 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v8 = v7;
  sub_22D81B688();

  v9 = v21;
  sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
  v10 = sub_22D81B418();
  [v9 setLaps_];

  v11 = *&v1[v6];
  v19 = v1;
  v12 = v11;
  sub_22D81B688();

  v13 = v21;
  [v21 setPreviousLapsTotalInterval_];

  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v16 = v1;
  sub_22D75D890(0, 0, v5, &unk_22D81F148, v15);
}

uint64_t sub_22D75DDCC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D75DE4C, v1, 0);
}

uint64_t sub_22D75DE4C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v3 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
  *(swift_task_alloc() + 16) = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v4 = v3;
  sub_22D81B688();

  v5 = v0[2];
  v6 = [v2 didClearAllLapsForStopwatch:v5 sender:v1];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D75DF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D75DDAC(a1, v4, v5, v6);
}

void sub_22D75E070()
{
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_updateTime];
  v2 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink;
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink);
  *(v0 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setFrameInterval_];
  }

  v5 = *(v0 + v2);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 currentRunLoop];
    [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];
  }
}

void sub_22D75E1D4()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink;
  [*(v0 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_22D75E298()
{
  v1 = v0;
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v79[-v8];
  v10 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v11 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
  v80 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v12 = v11;
  sub_22D81B688();

  v13 = v81;
  v14 = [v81 startDate];

  if (v14)
  {
    sub_22D81A878();

    (*(v3 + 32))(v9, v7, v2);
    sub_22D81A848();
    if (v16 <= 0.0)
    {
      v20 = -v16;
    }

    else
    {
      v17 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink;
      [*(v1 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_displayLink) invalidate];
      v18 = *(v1 + v17);
      *(v1 + v17) = 0;

      Strong = swift_unknownObjectWeakLoadStrong();
      v20 = 0.0;
      if (Strong)
      {
        [Strong didPauseStopwatch];
        swift_unknownObjectRelease();
      }
    }

    v15 = (*(v3 + 8))(v9, v2);
  }

  else
  {
    v20 = 0.0;
  }

  v21 = *(v1 + v10);
  MEMORY[0x28223BE20](v15);
  *&v79[-16] = v1;
  v23 = v22;
  sub_22D81B688();

  v24 = v81;
  v25 = *(v1 + v10);
  MEMORY[0x28223BE20](v26);
  *&v79[-16] = v1;
  v28 = v27;
  sub_22D81B688();

  v29 = v81;
  [v81 offset];
  v31 = v30;

  [v24 setCurrentInterval_];
  v32 = *(v1 + v10);
  MEMORY[0x28223BE20](v33);
  *&v79[-16] = v1;
  v35 = v34;
  sub_22D81B688();

  v36 = v81;
  [v81 currentInterval];
  v38 = v37;

  v39 = *(v1 + v10);
  MEMORY[0x28223BE20](v40);
  *&v79[-16] = v1;
  v42 = v41;
  sub_22D81B688();

  v43 = v81;
  [v81 previousLapsTotalInterval];
  v45 = v44;

  v46 = v38 + v45;
  v47 = objc_opt_self();
  v48 = [v47 _timeAdjustedFor30fpsDisplay_];
  v50 = v49;
  v51 = *(v1 + v10);
  MEMORY[0x28223BE20](v48);
  *&v79[-16] = v1;
  v53 = v52;
  sub_22D81B688();

  v54 = v81;
  [v81 currentInterval];
  v56 = v55;

  [v47 _timeAdjustedFor30fpsDisplay_];
  v58 = v57;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v60 = result;
    v61 = *(v1 + v10);
    MEMORY[0x28223BE20](result);
    *&v79[-16] = v1;
    v63 = v62;
    sub_22D81B688();

    v64 = v81;
    [v81 currentInterval];
    v66 = v65;

    v67 = *(v1 + v10);
    MEMORY[0x28223BE20](v68);
    *&v79[-16] = v1;
    v70 = v69;
    sub_22D81B688();

    v71 = v81;
    v72 = [v81 state];

    v73 = *(v1 + v10);
    MEMORY[0x28223BE20](v74);
    *&v79[-16] = v1;
    v76 = v75;
    sub_22D81B688();

    v77 = v81;
    v78 = [v81 state];

    [v60 didUpdateCurrentInterval:v72 == 2 adjustedCurrentInterval:v78 == 0 totalInterval:v66 adjustedTotalInterval:v58 isStopwatchRunning:v46 isStopwatchStopped:v50];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22D75E998()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - v4;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v12 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v61 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v13 = v12;
  sub_22D81B688();

  v14 = v64;
  v15 = [v64 state];

  if (v15 == 2)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_22D81B838();
    v17 = [v1 description];
    v18 = sub_22D81B2C8();
    v20 = v19;

    MEMORY[0x2318D1A50](v18, v20);

    v21 = MEMORY[0x2318D1A50](0xD000000000000024, 0x800000022D828A40);
    v22 = *&v1[v11];
    MEMORY[0x28223BE20](v21);
    *(&v59 - 2) = v1;
    v24 = v23;
    sub_22D81B688();

    v25 = v62;
    v26 = [v62 identifier];

    if (v26)
    {
      v27 = sub_22D81B2C8();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v49 = objc_opt_self();
    v62 = v27;
    v63 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D828A70);
    v50 = sub_22D81B2B8();

    [v49 logInfo_];
  }

  else
  {
    v60 = v7;
    v30 = *&v1[v11];
    MEMORY[0x28223BE20](v16);
    *(&v59 - 2) = v1;
    v32 = v31;
    sub_22D81B688();

    v33 = v64;
    sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
    v34 = sub_22D81B418();
    [v33 setLaps_];

    v35 = *&v1[v11];
    MEMORY[0x28223BE20](v36);
    *(&v59 - 2) = v1;
    v38 = v37;
    sub_22D81B688();

    v39 = v64;
    [v64 setOffset_];

    v40 = *&v1[v11];
    MEMORY[0x28223BE20](v41);
    *(&v59 - 2) = v1;
    v43 = v42;
    sub_22D81B688();

    v44 = v64;
    v45 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
    swift_beginAccess();
    v46 = [*&v1[v45] date];
    if (v46)
    {
      v47 = v46;
      sub_22D81A878();

      v48 = sub_22D81A818();
      (*(v60 + 8))(v10, v6);
    }

    else
    {
      v48 = 0;
    }

    [v44 setStartDate_];

    v51 = *&v1[v11];
    MEMORY[0x28223BE20](v52);
    *(&v59 - 2) = v1;
    v54 = v53;
    sub_22D81B688();

    v55 = v62;
    [v62 setState_];

    v56 = sub_22D81B4F8();
    (*(*(v56 - 8) + 56))(v5, 1, 1, v56);
    v57 = swift_allocObject();
    v57[2] = 0;
    v57[3] = 0;
    v57[4] = v1;
    v58 = v1;
    sub_22D75D890(0, 0, v5, &unk_22D81F158, v57);
  }
}

uint64_t sub_22D75F058()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D75F0E0, v1, 0);
}

uint64_t sub_22D75F0E0()
{
  sub_22D75FCFC(*(*(v0 + 32) + 112), v0 + 16, sub_22D7646F8, &selRef_didStartLapTimerForStopwatch_sender_);

  MEMORY[0x2318D2E50](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_22D75F1BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v93 - v4;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v93 - v16;
  v95 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v18 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v97 = v1;
  v19 = sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v20 = v18;
  v96 = v19;
  sub_22D81B688();

  v21 = v98;
  v22 = [v98 state];

  if (v22 == 1)
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_22D81B838();
    v24 = [v1 description];
    v25 = sub_22D81B2C8();
    v27 = v26;

    MEMORY[0x2318D1A50](v25, v27);

    v28 = MEMORY[0x2318D1A50](0xD000000000000024, 0x800000022D828A90);
    v29 = *&v1[v95];
    MEMORY[0x28223BE20](v28);
    *(&v93 - 2) = v1;
    v31 = v30;
    sub_22D81B688();

    v32 = v100;
    v33 = [v100 identifier];

    if (v33)
    {
      v34 = sub_22D81B2C8();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v76 = objc_opt_self();
    v100 = v34;
    v101 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    v77 = "te is nil, aborting";
    v78 = 0xD00000000000001CLL;
LABEL_14:
    MEMORY[0x2318D1A50](v78, v77 | 0x8000000000000000);
    v92 = sub_22D81B2B8();

    [v76 logInfo_];

    return;
  }

  v94 = v5;
  v37 = *&v1[v95];
  MEMORY[0x28223BE20](v23);
  *(&v93 - 2) = v1;
  v39 = v38;
  sub_22D81B688();

  v40 = v98;
  v41 = [v98 startDate];

  if (!v41)
  {
    (*(v7 + 56))(v17, 1, 1, v6);
    sub_22D764440(v17, &qword_27DA02000, &qword_22D81F160);
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_22D81B838();
    v79 = [v1 description];
    v80 = sub_22D81B2C8();
    v82 = v81;

    MEMORY[0x2318D1A50](v80, v82);

    v83 = MEMORY[0x2318D1A50](0xD000000000000024, 0x800000022D828A90);
    v84 = *&v1[v95];
    MEMORY[0x28223BE20](v83);
    *(&v93 - 2) = v1;
    v86 = v85;
    sub_22D81B688();

    v87 = v100;
    v88 = [v100 identifier];

    if (v88)
    {
      v89 = sub_22D81B2C8();
      v91 = v90;
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    v76 = objc_opt_self();
    v100 = v89;
    v101 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    v77 = "rror for stopwatch: ";
    v78 = 0xD000000000000023;
    goto LABEL_14;
  }

  sub_22D81A878();

  (*(v7 + 56))(v17, 0, 1, v6);
  v42 = sub_22D764440(v17, &qword_27DA02000, &qword_22D81F160);
  v43 = *&v1[v95];
  MEMORY[0x28223BE20](v42);
  *(&v93 - 2) = v1;
  v45 = v44;
  sub_22D81B688();

  v93 = v98;
  v46 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
  swift_beginAccess();
  v47 = *&v1[v46];
  v48 = [swift_unknownObjectRetain() date];
  if (v48)
  {
    v49 = v48;
    sub_22D81A878();

    v50 = *&v1[v95];
    MEMORY[0x28223BE20](v51);
    *(&v93 - 2) = v1;
    v53 = v52;
    sub_22D81B688();

    v54 = v100;
    v55 = [v100 startDate];

    if (v55)
    {
      swift_unknownObjectRelease();
      sub_22D81A878();

      sub_22D81A7F8();
      v57 = v56;
      v58 = *(v7 + 8);
      v58(v11, v6);
      v58(v13, v6);
      v59 = v93;
      [v93 offset];
      [v59 setOffset_];

      v61 = v95;
      v62 = *&v1[v95];
      MEMORY[0x28223BE20](v63);
      *(&v93 - 2) = v1;
      v65 = v64;
      sub_22D81B688();

      v66 = v100;
      [v100 setStartDate_];

      v67 = *&v1[v61];
      MEMORY[0x28223BE20](v68);
      *(&v93 - 2) = v1;
      v70 = v69;
      sub_22D81B688();

      v71 = v100;
      [v100 setState_];

      v72 = sub_22D81B4F8();
      v73 = v94;
      (*(*(v72 - 8) + 56))(v94, 1, 1, v72);
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v1;
      v75 = v1;
      sub_22D75D890(0, 0, v73, &unk_22D81F170, v74);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22D75FBE0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D75FC68, v1, 0);
}

uint64_t sub_22D75FC68()
{
  sub_22D75FCFC(*(*(v0 + 32) + 112), v0 + 16, sub_22D7646F8, &selRef_didPauseLapTimerForStopwatch_sender_);

  MEMORY[0x2318D2E50](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_22D75FCFC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
    v8 = MEMORY[0x28223BE20](Strong);
    sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
    v9 = v7;
    sub_22D81B688();

    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
}

void sub_22D75FE90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v76 - v4;
  v81 = sub_22D81A8C8();
  v78 = *(v81 - 8);
  v5 = *(v78 + 64);
  v6 = MEMORY[0x28223BE20](v81);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v76 - v12;
  v13 = objc_opt_self();
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_22D81B838();
  v14 = [v0 description];
  v15 = sub_22D81B2C8();
  v17 = v16;

  v83 = v15;
  v84 = v17;
  MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D828B10);
  v18 = sub_22D81B2B8();

  v79 = v13;
  [v13 logInfo_];

  v19 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v20 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v82 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v21 = v20;
  sub_22D81B688();

  v22 = v83;
  v23 = [v83 state];

  if (v23 == 2)
  {
    v24 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
    swift_beginAccess();
    v25 = *&v1[v24];
    v26 = [swift_unknownObjectRetain() date];
    if (v26)
    {
      v27 = v26;
      swift_unknownObjectRelease();
      sub_22D81A878();

      v28 = v78;
      v29 = (*(v78 + 32))(v80, v11, v81);
      v30 = *&v1[v19];
      MEMORY[0x28223BE20](v29);
      *(&v76 - 2) = v1;
      v32 = v31;
      sub_22D81B688();

      v33 = v85;
      v34 = [v85 startDate];

      if (v34)
      {
        sub_22D81A878();

        v35 = v80;
        sub_22D81A7F8();
        v37 = v36;
        v79 = *(v28 + 8);
        v38 = v8;
        v39 = v81;
        v40 = v79(v38, v81);
        v41 = *&v1[v19];
        MEMORY[0x28223BE20](v40);
        *(&v76 - 2) = v1;
        v43 = v42;
        sub_22D81B688();

        v44 = v85;
        [v85 offset];
        v46 = v45;

        sub_22D75D11C(0, v37 + v46);
        v47 = *&v1[v19];
        MEMORY[0x28223BE20](v48);
        *(&v76 - 2) = v1;
        v50 = v49;
        sub_22D81B688();

        v51 = v85;
        v52 = sub_22D81A818();
        [v51 setStartDate_];

        v53 = *&v1[v19];
        MEMORY[0x28223BE20](v54);
        *(&v76 - 2) = v1;
        v56 = v55;
        sub_22D81B688();

        v57 = v85;
        [v85 setOffset_];

        v58 = sub_22D81B4F8();
        v59 = v77;
        (*(*(v58 - 8) + 56))(v77, 1, 1, v58);
        v60 = swift_allocObject();
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = v1;
        v61 = v1;
        sub_22D75D890(0, 0, v59, &unk_22D81F180, v60);

        v79(v35, v39);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_22D81B838();
    v62 = [v1 description];
    v63 = sub_22D81B2C8();
    v65 = v64;

    MEMORY[0x2318D1A50](v63, v65);

    v66 = MEMORY[0x2318D1A50](0xD000000000000022, 0x800000022D828B30);
    v67 = *&v1[v19];
    MEMORY[0x28223BE20](v66);
    *(&v76 - 2) = v1;
    v69 = v68;
    sub_22D81B688();

    v70 = v85;
    v71 = [v85 identifier];

    if (v71)
    {
      v72 = sub_22D81B2C8();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0;
    }

    v85 = v72;
    v86 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D828B60);
    v75 = sub_22D81B2B8();

    [v79 logInfo_];
  }
}

uint64_t sub_22D7606A0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D760728, v1, 0);
}

uint64_t sub_22D760728()
{
  sub_22D75FCFC(*(*(v0 + 32) + 112), v0 + 16, sub_22D7646F8, &selRef_didLapLapTimerForStopwatch_sender_);

  MEMORY[0x2318D2E50](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_22D760804()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44[-v4];
  v6 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v7 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v45 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v8 = v7;
  sub_22D81B688();

  v9 = v48;
  v10 = [v48 state];

  if (v10)
  {
    v12 = *&v1[v6];
    MEMORY[0x28223BE20](v11);
    *&v44[-16] = v1;
    v14 = v13;
    sub_22D81B688();

    v15 = v48;
    [v48 setStartDate_];

    v16 = *&v1[v6];
    MEMORY[0x28223BE20](v17);
    *&v44[-16] = v1;
    v19 = v18;
    sub_22D81B688();

    v20 = v48;
    [v48 setOffset_];

    v21 = *&v1[v6];
    MEMORY[0x28223BE20](v22);
    *&v44[-16] = v1;
    v24 = v23;
    sub_22D81B688();

    v25 = v48;
    [v48 setState_];

    sub_22D75DB90();
    sub_22D75E298();
    v26 = sub_22D81B4F8();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v1;
    v28 = v1;
    sub_22D75D890(0, 0, v5, &unk_22D81F190, v27);
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_22D81B838();
    v29 = [v1 description];
    v30 = sub_22D81B2C8();
    v32 = v31;

    MEMORY[0x2318D1A50](v30, v32);

    v33 = MEMORY[0x2318D1A50](0xD000000000000024, 0x800000022D828B80);
    v34 = *&v1[v6];
    MEMORY[0x28223BE20](v33);
    *&v44[-16] = v1;
    v36 = v35;
    sub_22D81B688();

    v37 = v46;
    v38 = [v46 identifier];

    if (v38)
    {
      v39 = sub_22D81B2C8();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = objc_opt_self();
    v46 = v39;
    v47 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D828BB0);
    v43 = sub_22D81B2B8();

    [v42 logInfo_];
  }
}

uint64_t sub_22D760D1C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D760DA4, v1, 0);
}

uint64_t sub_22D760DA4()
{
  sub_22D75FCFC(*(*(v0 + 32) + 112), v0 + 16, sub_22D7646F8, &selRef_didResetLapTimerForStopwatch_sender_);

  MEMORY[0x2318D2E50](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_22D760E80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - v4;
  v6 = sub_22D81A8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v12 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v51 = v1;
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v13 = v12;
  sub_22D81B688();

  v14 = v52;
  v15 = [v52 state];

  if (v15 == 1)
  {
    v50 = v5;
    v17 = *&v1[v11];
    MEMORY[0x28223BE20](v16);
    *(&v49 - 2) = v1;
    v19 = v18;
    sub_22D81B688();

    v20 = v52;
    v21 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_dateProvider;
    swift_beginAccess();
    v22 = [*&v1[v21] date];
    if (v22)
    {
      v23 = v22;
      sub_22D81A878();

      v24 = sub_22D81A818();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v24 = 0;
    }

    [v20 setStartDate_];

    v38 = *&v1[v11];
    MEMORY[0x28223BE20](v39);
    *(&v49 - 2) = v1;
    v41 = v40;
    sub_22D81B688();

    v42 = v54;
    [v54 setState_];

    v43 = sub_22D81B4F8();
    v44 = v50;
    (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v1;
    v46 = v1;
    sub_22D75D890(0, 0, v44, &unk_22D81F1A0, v45);
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_22D81B838();
    v25 = [v1 description];
    v26 = sub_22D81B2C8();
    v28 = v27;

    MEMORY[0x2318D1A50](v26, v28);

    v29 = MEMORY[0x2318D1A50](0xD000000000000025, 0x800000022D828BD0);
    v30 = *&v1[v11];
    MEMORY[0x28223BE20](v29);
    *(&v49 - 2) = v1;
    v32 = v31;
    sub_22D81B688();

    v33 = v54;
    v34 = [v54 identifier];

    if (v34)
    {
      v35 = sub_22D81B2C8();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v47 = objc_opt_self();
    v54 = v35;
    v55 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D81B908();

    MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D828C00);
    v48 = sub_22D81B2B8();

    [v47 logInfo_];
  }
}

uint64_t sub_22D761410()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_syncManager);
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  sub_22D81A198();

  return MEMORY[0x2822009F8](sub_22D761498, v1, 0);
}

uint64_t sub_22D761498()
{
  sub_22D75FCFC(*(*(v0 + 32) + 112), v0 + 16, sub_22D7646F8, &selRef_didResumeLapTimerForStopwatch_sender_);

  MEMORY[0x2318D2E50](v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void *sub_22D761574()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_22D81B838();
  v3 = [v0 description];
  v4 = sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000015, 0x800000022D828C20);
  v5 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue;
  v6 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v7 = v6;
  sub_22D81B688();

  v8 = [v15 description];
  v9 = sub_22D81B2C8();
  v11 = v10;

  MEMORY[0x2318D1A50](v9, v11);

  v12 = sub_22D81B2B8();

  [v2 logInfo_];

  v13 = *&v1[v5];
  sub_22D81B688();

  [v4 copy];
  sub_22D81B758();
  swift_unknownObjectRelease();
  sub_22D759CA0(0, &qword_280CD2D80, 0x277D29710);
  swift_dynamicCast();
  return v15;
}

uint64_t sub_22D7617FC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v4 = v3;
  sub_22D81B688();

  result = [v27 laps];
  if (result)
  {
    v6 = result;
    sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
    v7 = sub_22D81B438();

    if (a1 < 0)
    {
      goto LABEL_36;
    }

    v6 = (v7 >> 62);
    if (v7 >> 62)
    {
      goto LABEL_37;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
    {
      goto LABEL_5;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v20 = sub_22D81B938();
    if (!v20)
    {
    }

    while (1)
    {
      v7 = 0;
      v6 = (a1 & 0xC000000000000001);
      v21 = 0.0;
      while (1)
      {
        if (v6)
        {
          v22 = MEMORY[0x2318D1F70](v7, a1);
        }

        else
        {
          if (v7 >= *(a1 + 16))
          {
            goto LABEL_35;
          }

          v22 = *(a1 + 8 * v7 + 32);
        }

        v23 = v22;
        v24 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v22 doubleValue];
        v26 = v25;

        v21 = v21 + v26;
        ++v7;
        if (v24 == v20)
        {
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_22D81B938();
      if (result < 0)
      {
        goto LABEL_45;
      }

      if (sub_22D81B938() < a1)
      {
        goto LABEL_39;
      }

LABEL_5:
      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_22D81A398();
        if (a1)
        {
          v8 = 0;
          do
          {
            v9 = v8 + 1;
            sub_22D81B858();
            v8 = v9;
          }

          while (a1 != v9);
        }
      }

      else
      {
        sub_22D81A398();
      }

      if (v6)
      {
        v11 = sub_22D81B948();
        v12 = v14;
        v10 = v15;
        v13 = v16;

        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        v11 = v7 & 0xFFFFFFFFFFFFFF8;
        v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
        v13 = (2 * a1) | 1;
        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      sub_22D81BB18();
      swift_unknownObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);

      if (__OFSUB__(v13 >> 1, v10))
      {
        break;
      }

      if (v19 != (v13 >> 1) - v10)
      {
        goto LABEL_43;
      }

      a1 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (!a1)
      {
        a1 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }

LABEL_23:
      if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v20 = *(a1 + 16);
      if (!v20)
      {
      }
    }

    __break(1u);
LABEL_43:
    swift_unknownObjectRelease_n();
LABEL_15:
    sub_22D763A48(v11, v12, v10, v13);
    a1 = v17;
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

id StopwatchViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22D761C14()
{
  v1 = v0;
  v2 = sub_22D81B6C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02028, &qword_22D81F290);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  v12 = [objc_opt_self() defaultCenter];
  v13 = *MEMORY[0x277D29640];
  sub_22D81B6D8();

  *(swift_allocObject() + 16) = v1;
  sub_22D764364(&qword_280CD2980, MEMORY[0x277CC9DB0]);
  v14 = v1;
  sub_22D81AD38();

  (*(v3 + 8))(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D7548B0(&qword_280CD29A8, &qword_27DA02028, &qword_22D81F290);
  v15 = sub_22D81AD58();

  (*(v8 + 8))(v11, v7);
  v19[3] = sub_22D81ACF8();
  v19[4] = MEMORY[0x277CBCDA0];
  v19[0] = v15;
  v16 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_updatedCancellable;
  swift_beginAccess();
  sub_22D7643D0(v19, v14 + v16);
  return swift_endAccess();
}

uint64_t sub_22D761F6C()
{
  v1 = v0;
  v2 = sub_22D81B6C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02028, &qword_22D81F290);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = objc_opt_self();
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_22D81B838();
  v13 = [v0 description];
  v14 = sub_22D81B2C8();
  v16 = v15;

  v28 = v14;
  v29 = v16;
  MEMORY[0x2318D1A50](0xD00000000000002BLL, 0x800000022D828F20);
  v17 = sub_22D81B2B8();

  [v12 logInfo_];

  v18 = *MEMORY[0x277D295F8];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  sub_22D81B6D8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D764364(&qword_280CD2980, MEMORY[0x277CC9DB0]);
  sub_22D81AD38();

  (*(v3 + 8))(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D7548B0(&qword_280CD29A8, &qword_27DA02028, &qword_22D81F290);
  v22 = v26;
  v23 = sub_22D81AD58();

  (*(v27 + 8))(v11, v22);
  v30 = sub_22D81ACF8();
  v31 = MEMORY[0x277CBCDA0];
  v28 = v23;
  v24 = OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_clearAllLapsCancellable;
  swift_beginAccess();
  sub_22D7643D0(&v28, v1 + v24);
  return swift_endAccess();
}

uint64_t sub_22D762380(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v24[2] = a3;
  v25 = a4;
  v24[1] = a2;
  v6 = v4;
  v7 = sub_22D81B6C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02028, &qword_22D81F290);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *a1;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 defaultCenter];
  sub_22D81B6D8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D764364(&qword_280CD2980, MEMORY[0x277CC9DB0]);
  sub_22D81AD38();

  (*(v8 + 8))(v11, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D7548B0(&qword_280CD29A8, &qword_27DA02028, &qword_22D81F290);
  v21 = sub_22D81AD58();

  (*(v13 + 8))(v16, v12);
  v26[3] = sub_22D81ACF8();
  v26[4] = MEMORY[0x277CBCDA0];
  v26[0] = v21;
  v22 = *v25;
  swift_beginAccess();
  sub_22D7643D0(v26, v6 + v22);
  return swift_endAccess();
}

uint64_t sub_22D762778(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D81A618();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = *MEMORY[0x277D29638];
  sub_22D81B2C8();
  sub_22D81B7E8();
  if (!*(v4 + 16) || (v6 = sub_22D80773C(v23), (v7 & 1) == 0))
  {

    sub_22D7644A0(v23);
LABEL_9:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  sub_22D7507C0(*(v4 + 56) + 32 * v6, &v24);
  sub_22D7644A0(v23);

  if (!*(&v25 + 1))
  {
LABEL_10:
    sub_22D764440(&v24, &unk_27DA02030, qword_22D81F298);
    goto LABEL_11;
  }

  sub_22D759CA0(0, &qword_280CD2D80, 0x277D29710);
  if (swift_dynamicCast())
  {
    v8 = v23[0];
    v9 = [v23[0] identifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22D81B2C8();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v16 = *(a2 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
    MEMORY[0x28223BE20](v9);
    sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
    v17 = v16;
    sub_22D81B688();

    v18 = v23[0];
    v19 = [v23[0] identifier];

    if (v19)
    {
      v20 = sub_22D81B2C8();
      v22 = v21;

      if (!v13)
      {

        if (!v22)
        {
          v14 = 1;
          return v14 & 1;
        }

        goto LABEL_24;
      }

      if (v22)
      {
        if (v11 != v20 || v13 != v22)
        {
          v14 = sub_22D81BB08();

          return v14 & 1;
        }

        goto LABEL_22;
      }
    }

    else if (!v13)
    {
LABEL_22:

      v14 = 1;
      return v14 & 1;
    }

LABEL_24:
  }

LABEL_11:
  v14 = 0;
  return v14 & 1;
}

void sub_22D762A44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *MEMORY[0x277D29638];
    v5 = sub_22D81B2C8();
    v7 = sub_22D7645B0(v5, v6, a1, &qword_280CD2D80, 0x277D29710);

    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_22D762B18(v7);
      }
    }
  }
}

uint64_t sub_22D762B18(void *a1)
{
  [a1 mutableCopy];
  sub_22D81B758();
  swift_unknownObjectRelease();
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  swift_dynamicCast();
  v2 = aBlock[6];
  v3 = *&v1[OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22D7646F0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22D7646F4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_170;
  v6 = _Block_copy(aBlock);
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_22D81A198();

  dispatch_sync(v7, v6);

  _Block_release(v6);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D762CE8()
{
  v0 = sub_22D81A618();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  v2 = *MEMORY[0x277D29638];
  v35[5] = sub_22D81B2C8();
  v35[6] = v3;
  sub_22D81B7E8();
  if (!*(v1 + 16) || (v4 = sub_22D80773C(v35), (v5 & 1) == 0))
  {

    sub_22D7644A0(v35);
LABEL_9:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_10;
  }

  sub_22D7507C0(*(v1 + 56) + 32 * v4, &v36);
  sub_22D7644A0(v35);

  if (!*(&v37 + 1))
  {
LABEL_10:
    sub_22D764440(&v36, &unk_27DA02030, qword_22D81F298);
    goto LABEL_11;
  }

  sub_22D759CA0(0, &qword_280CD2D80, 0x277D29710);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_25;
    }

    v13 = Strong;
    v14 = [Strong sourceIdentifier];

    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = sub_22D81B2C8();
    v17 = v16;

    v18 = sub_22D81A618();
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x277D29648];
      sub_22D81B2C8();
      sub_22D81B7E8();
      if (*(v19 + 16) && (v21 = sub_22D80773C(v35), (v22 & 1) != 0))
      {
        sub_22D7507C0(*(v19 + 56) + 32 * v21, &v36);
        sub_22D7644A0(v35);

        if (*(&v37 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v35[0] != v15 || v35[1] != v17)
            {
              v34 = sub_22D81BB08();

              v23 = v34 ^ 1;
              return v23 & 1;
            }
          }

          goto LABEL_41;
        }
      }

      else
      {

        sub_22D7644A0(v35);
        v36 = 0u;
        v37 = 0u;
      }
    }

    else
    {

      v36 = 0u;
      v37 = 0u;
    }

    sub_22D764440(&v36, &unk_27DA02030, qword_22D81F298);
LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  v6 = v35[0];
  v7 = [v35[0] identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22D81B2C8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_31;
  }

  v26 = *(v25 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_accessQueue);
  v27 = MEMORY[0x28223BE20](v25);
  sub_22D759CA0(0, &qword_280CD2988, 0x277D296F8);
  v28 = v26;
  sub_22D81B688();

  v29 = v36;
  v30 = [v36 identifier];

  if (v30)
  {
    v31 = sub_22D81B2C8();
    v33 = v32;
  }

  else
  {
LABEL_31:
    v31 = 0;
    v33 = 0;
  }

  if (!v11)
  {

    if (!v33)
    {
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_41;
  }

  if (!v33)
  {

LABEL_41:

    goto LABEL_25;
  }

  if (v9 == v31 && v11 == v33)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_22D81BB08();
  }

  return v23 & 1;
}

void sub_22D763190(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *MEMORY[0x277D29630];
    v5 = sub_22D81B2C8();
    v7 = sub_22D7645B0(v5, v6, a1, &unk_280CD2970, 0x277CCABB0);

    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = *MEMORY[0x277D29638];
        v11 = sub_22D81B2C8();
        v13 = sub_22D7645B0(v11, v12, a1, &qword_280CD2D80, 0x277D29710);

        if (v13)
        {
          swift_beginAccess();
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            sub_22D762B18(v13);
          }

          swift_beginAccess();
          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16 && (v17 = v16, v18 = swift_unknownObjectWeakLoadStrong(), v17, v18))
          {
            [v7 doubleValue];
            [v18 didAddLap_];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_22D76333C(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *MEMORY[0x277D29638];
    v8 = sub_22D81B2C8();
    v10 = sub_22D7645B0(v8, v9, a1, &qword_280CD2D80, 0x277D29710);

    if (v10)
    {
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        sub_22D762B18(v10);
      }

      swift_beginAccess();
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13 && (v14 = v13, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
      {
        [v15 *a3];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

Swift::String_optional __swiftcall StopwatchViewModel.sourceIdentifier()()
{
  if (*(v0 + OBJC_IVAR____TtC18MobileTimerSupport18StopwatchViewModel_broadcastUpdates) == 1)
  {
    sub_22D81B708();
    v1 = sub_22D81BAD8();
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_22D76358C()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7635C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D75F038(a1, v4, v5, v6);
}

uint64_t sub_22D763678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D75FBC0(a1, v4, v5, v6);
}

uint64_t sub_22D76372C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D760680(a1, v4, v5, v6);
}

uint64_t sub_22D7637E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D760CFC(a1, v4, v5, v6);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D7638D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7613F0(a1, v4, v5, v6);
}

void sub_22D763988(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02010, &unk_22D81F258);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22D763A48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_22D759CA0(0, &unk_280CD2970, 0x277CCABB0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22D763F20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02008, &qword_22D81F250);
      v7 = *(type metadata accessor for AlarmEntity() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for AlarmEntity() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_22D7640C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D76412C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B08;

  return sub_22D7E859C(a1, v5);
}

uint64_t sub_22D7641E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7E859C(a1, v5);
}

uint64_t sub_22D76429C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D75D6B8(a1, v4, v5, v7, v6);
}

uint64_t sub_22D764364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D7643D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE8, &unk_22D81F130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D764440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22D7645B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v9 = sub_22D81A618();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  sub_22D81A398();
  sub_22D81B7E8();
  if (!*(v10 + 16) || (v11 = sub_22D80773C(v14), (v12 & 1) == 0))
  {

    sub_22D7644A0(v14);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_22D7507C0(*(v10 + 56) + 32 * v11, &v15);
  sub_22D7644A0(v14);

  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_22D764440(&v15, &unk_27DA02030, qword_22D81F298);
    return 0;
  }

  sub_22D759CA0(0, a4, a5);
  if (swift_dynamicCast())
  {
    return v14[0];
  }

  return 0;
}