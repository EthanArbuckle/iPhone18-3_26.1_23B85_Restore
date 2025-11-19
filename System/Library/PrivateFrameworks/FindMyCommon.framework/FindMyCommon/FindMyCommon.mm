double static ReferenceClock.timeInterval.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v13[-v3];
  sub_24AD709EC(v2);
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_2810661C8 != -1)
  {
    v5 = swift_once();
  }

  v7 = qword_2810661D0;
  MEMORY[0x28223BE20](v5);
  *&v13[-16] = sub_24AD70CD4;
  *&v13[-8] = 0;
  os_unfair_lock_lock(v7 + 4);
  sub_24AD70CBC(&v14);
  os_unfair_lock_unlock(v7 + 4);
  v9 = Current - *&v14;
  if (v9 - *(&v14 + 1) > 86400.0)
  {
    MEMORY[0x28223BE20](v8);
    *&v13[-16] = sub_24AD82C2C;
    *&v13[-8] = 0;
    os_unfair_lock_lock(v7 + 4);
    sub_24AD82C3C();
    os_unfair_lock_unlock(v7 + 4);
    v10 = sub_24AD846CC();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    sub_24AD81660(0, 0, v4, &unk_24AD85D18, v11);
  }

  return v9;
}

uint64_t sub_24AD7097C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t static ReferenceClock.now.getter()
{
  static ReferenceClock.timeInterval.getter();

  return sub_24AD844BC();
}

BOOL sub_24AD709EC(uint64_t a1)
{
  if (qword_2810661C8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_2810661D0;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_24AD70BF0(&aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *&v10;
  if ((aBlock & 1) == 0)
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = *MEMORY[0x277CBE778];
    v13 = sub_24AD830FC;
    v14 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_24AD827E0;
    v12 = &block_descriptor_0;
    v5 = _Block_copy(&aBlock);

    v6 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v5];
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  if (qword_2810661F8 != -1)
  {
    swift_once();
  }

  v7 = *&qword_281066200;
  if (*&qword_281066200 >= v2)
  {
    sub_24AD81ED0(0);
  }

  return v7 < v2;
}

double sub_24AD70BF0@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v7);
  if (!v2)
  {
    result = *&v7[1];
    *a1 = v7[0];
    *(a1 + 8) = result;
  }

  return result;
}

double sub_24AD70C3C@<D0>(uint64_t a1@<X8>)
{
  v1 = byte_281066208;
  byte_281066208 = 1;
  *a1 = v1;
  if (qword_2810661E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_2810661E8;
  *(a1 + 8) = qword_2810661E8;
  return result;
}

double sub_24AD70CEC@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

double sub_24AD70D30@<D0>(void *a1@<X8>)
{
  *a1 = qword_2810661C0;
  if (qword_2810661E0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_2810661E8;
  a1[1] = qword_2810661E8;
  return result;
}

uint64_t sub_24AD70DA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AD8452C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD70E54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD8452C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD70EF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AD70F10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AD8448C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AD70FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AD8448C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AD71078()
{
  v18 = sub_24AD8452C();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for StateCaptureHint();
  Description = v5[-1].Description;
  v7 = *(Description + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v19 = v2 | v7;
  v9 = (Description[8] + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v18);
  (Description[1])(v0 + v8, v5);
  v14 = *(v0 + v9 + 8);

  v15 = *(v0 + v10 + 16);

  v16 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v19 | 7);
}

uint64_t sub_24AD71240()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AD7128C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t AnalyticsEvent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AD71410@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_24AD76124(v1 + v3, a1);
}

uint64_t sub_24AD71474(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_24AD76490(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24AD714E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_24AD76124(v1 + v3, a1);
}

uint64_t sub_24AD71544(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_24AD76490(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AnalyticsEvent.__allocating_init(name:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AnalyticsEvent.init(name:)(a1);
  return v5;
}

char *AnalyticsEvent.init(name:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = &v1[*(*v1 + 128)];
  sub_24AD8451C();
  v5 = *(*v1 + 136);
  v6 = sub_24AD8489C();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[*(*v1 + 144)], 1, 1, v6);
  *&v1[*(*v1 + 152)] = MEMORY[0x277D84F98];
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 120)], a1);
  return v1;
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

uint64_t sub_24AD717CC(uint64_t (*a1)(char *))
{
  v2 = sub_24AD848BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  sub_24AD848AC();
  sub_24AD8487C();
  (*(v3 + 8))(v6, v2);
  v11 = sub_24AD8489C();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  return a1(v10);
}

double sub_24AD71940@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v1 + 88);
  v5 = *(*(*v1 + 104) + 16);
  sub_24AD8468C();
  v6 = *(*v1 + 152);
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (, v8 = sub_24AD744D4(v12, v13), v10 = v9, , (v10 & 1) != 0))
  {
    sub_24AD758C0(*(v7 + 56) + 48 * v8, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -1;
  }

  return result;
}

uint64_t sub_24AD71A60(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *v2;
  v3[29] = *v2;
  v5 = *(v4 + 88);
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_getTupleTypeMetadata2();
  v8 = sub_24AD8479C();
  v3[35] = v8;
  v9 = *(v8 - 8);
  v3[36] = v9;
  v10 = *(v9 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD71C04, v2, 0);
}

uint64_t sub_24AD71C04()
{
  v24 = v0;
  if (qword_2810662A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = qword_2810667B8;
  v3 = *(**(v0 + 224) + 120);
  v4 = *(v1 + 80);
  v5 = *(*(v1 + 96) + 16);
  sub_24AD8468C();
  LOBYTE(v2) = sub_24AD725E8(*(v0 + 160), *(v0 + 168), v2);

  if (v2)
  {
    if (qword_281066278 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 224);
    v7 = sub_24AD8455C();
    __swift_project_value_buffer(v7, qword_281066788);

    v8 = sub_24AD8453C();
    v9 = sub_24AD846FC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      sub_24AD8468C();
      v12 = sub_24AD73F2C(*(v0 + 192), *(v0 + 200), &v23);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_24AD6F000, v8, v9, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x24C2300D0](v11, -1, -1);
      MEMORY[0x24C2300D0](v10, -1, -1);
    }

    v14 = *(v0 + 296);
    v13 = *(v0 + 304);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v22 = (*(v0 + 208) + **(v0 + 208));
    v19 = *(*(v0 + 208) + 4);
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_24AD71F38;
    v21 = *(v0 + 216);

    return v22();
  }
}

uint64_t sub_24AD71F38(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_24AD72050, v3, 0);
}

void sub_24AD72050()
{
  v1 = 0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  v63 = *(v0 + 232);
  v5 = *(v2 + 64);
  v58 = v2 + 64;
  v61 = v2;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v57 = (63 - v7) >> 6;
  v59 = *(v0 + 248);
  v67 = (v4 + 32);
  v64 = (*(v0 + 288) + 32);
  v65 = (v3 - 8);
  v62 = (v4 + 8);
  v9 = MEMORY[0x277D84F98];
  v60 = *(v0 + 272);
  if ((v6 & v5) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v1;
LABEL_14:
    v14 = *(v0 + 296);
    v15 = *(v0 + 264);
    v66 = *(v0 + 272);
    v16 = *(v0 + 240);
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = v17 | (v11 << 6);
    (*(v59 + 16))(v15, *(v61 + 48) + *(v59 + 72) * v18, v16);
    sub_24AD7591C(*(v61 + 56) + 48 * v18, v0 + 16);
    v3 = v60;
    v19 = (v14 + *(v60 + 48));
    (*(v59 + 32))(v14, v15, v16);
    v20 = *(v0 + 42);
    v21 = *(v0 + 32);
    *v19 = *(v0 + 16);
    v19[1] = v21;
    *(v19 + 26) = v20;
    v22 = *(v60 - 8);
    (*(v22 + 56))(v14, 0, 1, v66);
    v13 = v11;
LABEL_15:
    v23 = *(v0 + 304);
    v24 = *(v0 + 272);
    (*v64)(v23, *(v0 + 296), *(v0 + 280));
    if ((*(v22 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = (*(v0 + 304) + *(v3 + 48));
    v26 = *(v0 + 240);
    (*v67)(*(v0 + 256));
    v27 = *(v25 + 26);
    v28 = v25[1];
    *(v0 + 64) = *v25;
    *(v0 + 80) = v28;
    *(v0 + 90) = v27;
    v29 = *(*(v63 + 104) + 16);
    sub_24AD8468C();
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    sub_24AD7591C(v0 + 64, v0 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v9;
    v33 = sub_24AD744D4(v31, v30);
    v35 = *(v9 + 16);
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_35;
    }

    v39 = v34;
    if (*(v9 + 24) >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v33;
        sub_24AD755A4();
        v33 = v49;
      }
    }

    else
    {
      sub_24AD74990(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_24AD744D4(v31, v30);
      if ((v39 & 1) != (v40 & 1))
      {

        sub_24AD8495C();
        return;
      }
    }

    v41 = *(v0 + 256);
    v42 = *(v0 + 240);
    if (v39)
    {
      v10 = v33;

      v9 = v68;
      sub_24AD759CC(v0 + 112, v68[7] + 48 * v10);
      sub_24AD75978(v0 + 64);
      (*v62)(v41, v42);
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = v68;
      v68[(v33 >> 6) + 8] |= 1 << v33;
      v43 = (v68[6] + 16 * v33);
      *v43 = v31;
      v43[1] = v30;
      v44 = (v68[7] + 48 * v33);
      v45 = *(v0 + 138);
      v46 = *(v0 + 128);
      *v44 = *(v0 + 112);
      v44[1] = v46;
      *(v44 + 26) = v45;
      sub_24AD75978(v0 + 64);
      (*v62)(v41, v42);
      v47 = v68[2];
      v37 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v37)
      {
        goto LABEL_36;
      }

      v68[2] = v48;
      v1 = v13;
      if (!v8)
      {
LABEL_7:
        if (v57 <= v1 + 1)
        {
          v12 = v1 + 1;
        }

        else
        {
          v12 = v57;
        }

        v13 = v12 - 1;
        while (1)
        {
          v11 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if (v11 >= v57)
          {
            v22 = *v65;
            (*(*v65 + 56))(*(v0 + 296), 1, 1, *(v0 + 272));
            v8 = 0;
            goto LABEL_15;
          }

          v8 = *(v58 + 8 * v11);
          ++v1;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }
    }
  }

  v50 = *(v0 + 320);
  v51 = *(v0 + 224);

  sub_24AD727BC(v9);

  v53 = *(v0 + 296);
  v52 = *(v0 + 304);
  v55 = *(v0 + 256);
  v54 = *(v0 + 264);

  v56 = *(v0 + 8);

  v56();
}

uint64_t sub_24AD725E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24AD849DC();
  sub_24AD8462C();
  v7 = sub_24AD84A0C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24AD8491C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24AD726E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 255)
  {
    sub_24AD761E8(a1, &qword_27EFA7220, &qword_24AD85140);
    sub_24AD74604(a2, a3, &v11);

    return sub_24AD761E8(&v11, &qword_27EFA7220, &qword_24AD85140);
  }

  else
  {
    v6 = *(a1 + 16);
    v11 = *a1;
    v12[0] = v6;
    *(v12 + 9) = *(a1 + 25);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_24AD750D4(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_24AD727BC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v124 = *(*v1 + 152);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v120 = v8;
  v121 = v4;
  while (v7)
  {
LABEL_12:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = *(v3 + 56);
    v16 = (*(v3 + 48) + 16 * v14);
    v17 = v16[1];
    v125 = *v16;
    sub_24AD7591C(v15 + 48 * v14, &v137);
    v122 = v137;
    v123 = v138;
    v18 = v139;
    v19 = v140;

    if (!v17)
    {
    }

    v7 &= v7 - 1;
    v137 = v122;
    v138 = v123;
    v139 = v18;
    v140 = v19;
    v20 = *(*v2 + 152);
    swift_beginAccess();
    v21 = *(v2 + v20);
    if (!*(v21 + 16))
    {
      goto LABEL_24;
    }

    v22 = sub_24AD744D4(v125, v17);
    if ((v23 & 1) == 0)
    {

LABEL_24:
      sub_24AD7591C(&v137, &v132);
      if (v134)
      {
        if (v134 == 1)
        {
          v37 = v132;
          *&v136[8] = MEMORY[0x277D84A28];
          *&v136[16] = sub_24AD76304();
          *&v135 = v37;
          v38 = 2;
        }

        else
        {
          v39 = v132;
          *&v136[8] = MEMORY[0x277D839F8];
          *&v136[16] = sub_24AD76194();
          *&v135 = v39;
          v38 = 3;
        }

        v136[24] = v38;
      }

      else
      {
        v135 = v132;
        *v136 = *v133;
        *&v136[9] = *&v133[9];
      }

      v40 = v124;
      swift_beginAccess();
      sub_24AD758C0(&v135, &v132);
      v41 = *(v2 + v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v126[0] = *(v2 + v40);
      v43 = *&v126[0];
      *(v2 + v40) = 0x8000000000000000;
      v44 = sub_24AD744D4(v125, v17);
      v46 = *(v43 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_81;
      }

      v50 = v45;
      if (*(v43 + 24) >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        v103 = v44;
        sub_24AD753F4();
        v44 = v103;
        if (v50)
        {
          goto LABEL_4;
        }

LABEL_36:
        v11 = *&v126[0];
        *(*&v126[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v52 = (v11[6] + 16 * v44);
        *v52 = v125;
        v52[1] = v17;
        v53 = (v11[7] + 48 * v44);
        v54 = *&v133[9];
        v55 = *v133;
        *v53 = v132;
        v53[1] = v55;
        *(v53 + 25) = v54;
        v56 = v11[2];
        v48 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v48)
        {
          goto LABEL_82;
        }

        v11[2] = v57;
      }

      else
      {
        sub_24AD746C0(v49, isUniquelyReferenced_nonNull_native);
        v44 = sub_24AD744D4(v125, v17);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_88;
        }

LABEL_35:
        if ((v50 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_4:
        v10 = v44;

        v11 = *&v126[0];
        sub_24AD76248(&v132, *(*&v126[0] + 56) + 48 * v10);
      }

      *(v2 + v124) = v11;
      swift_endAccess();
      sub_24AD75978(&v137);
      v12 = &v135;
      goto LABEL_6;
    }

    sub_24AD758C0(*(v21 + 56) + 48 * v22, &v132);

    v135 = v132;
    *v136 = *v133;
    *&v136[9] = *&v133[9];
    sub_24AD7591C(&v137, &v132);
    if (!v134)
    {
      *v131 = v132;
      *&v131[16] = *v133;
      *&v131[25] = *&v133[9];
      goto LABEL_65;
    }

    if (v134 != 1)
    {
      v58 = *&v132;
      sub_24AD758C0(&v135, v126);
      if (v127 != 3)
      {
LABEL_79:

        sub_24AD76358(v126);
        sub_24AD763AC();
        swift_allocError();
        swift_willThrow();

        sub_24AD76358(&v135);
        return sub_24AD75978(&v137);
      }

      sub_24AD70EF8(v126, v128);
      v59 = v129;
      *&v123 = v130;
      v60 = __swift_project_boxed_opaque_existential_1(v128, v129);
      *&v122 = v112;
      v61 = *(*(v59 - 8) + 64);
      MEMORY[0x28223BE20](v60);
      (*(v63 + 16))(v112 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
      v64 = v3;
      v65 = sub_24AD76194();
      v66 = MEMORY[0x277D839F8];
      sub_24AD8458C();
      *&v131[24] = v66;
      *&v131[32] = v65;
      v3 = v64;
      *v131 = v58 + *v126;
      v131[40] = 3;
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
      goto LABEL_65;
    }

    v24 = v132;
    sub_24AD758C0(&v135, v126);
    if (v127 != 2)
    {
      goto LABEL_79;
    }

    v116 = v3;
    v118 = v24;
    sub_24AD70EF8(v126, v128);
    v26 = v129;
    v25 = v130;
    v27 = __swift_project_boxed_opaque_existential_1(v128, v129);
    v117 = v112;
    v28 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v27);
    v115 = v29;
    v30 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v122 = v31;
    (*(v31 + 16))(v30);
    v32 = sub_24AD847DC();
    *&v123 = v25;
    if (v32)
    {
      v33 = sub_24AD847CC();
      v34 = v123;
      if (v33 > 64)
      {
        v119 = v30;
        *&v126[0] = 0x8000000000000000;
        v35 = v26;
        if (sub_24AD847DC())
        {
          v30 = v119;
          v36 = sub_24AD847CC();
          if (v36 < 64)
          {
            v114 = v26;
            goto LABEL_52;
          }

          v113 = v112;
          MEMORY[0x28223BE20](v36);
          v114 = v112 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_24AD76304();
          sub_24AD847AC();
          v73 = *(*(v34 + 32) + 8);
LABEL_45:
          v74 = sub_24AD845DC();
          (*(v122 + 8))(v114, v26);
          if (v74)
          {
            goto LABEL_87;
          }

          goto LABEL_53;
        }

        v67 = sub_24AD847DC();
        v68 = sub_24AD847CC();
        if (v67)
        {
          if (v68 <= 64)
          {
            v112[1] = *(*(v123 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v114 = v112;
            v76 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            v77 = sub_24AD8492C();
            v113 = v112;
            MEMORY[0x28223BE20](v77);
            v79 = v112 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_24AD8490C();
            v80 = *(*(v123 + 32) + 8);
            v81 = sub_24AD845DC();
            (*(v122 + 8))(v79, v35);
            if (v81)
            {
              goto LABEL_87;
            }

LABEL_51:
            v114 = v35;
LABEL_52:
            sub_24AD847BC();
            v30 = v119;
            v26 = v114;
            goto LABEL_53;
          }

          v113 = v112;
          MEMORY[0x28223BE20](v68);
          v114 = v112 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_24AD76304();
          v70 = v123;
          sub_24AD847AC();
          v71 = *(*(v70 + 32) + 8);
          v26 = v35;
          v30 = v119;
          goto LABEL_45;
        }

        if (v68 < 64)
        {
          goto LABEL_51;
        }

        v26 = v35;
        v30 = v119;
      }
    }

LABEL_53:
    if (sub_24AD847CC() > 64 || sub_24AD847CC() == 64 && (sub_24AD847DC() & 1) == 0)
    {
      *&v126[0] = 0x7FFFFFFFFFFFFFFFLL;
      LODWORD(v114) = sub_24AD847DC();
      v119 = v30;
      v82 = sub_24AD847CC();
      if (v114)
      {
        if (v82 >= 65)
        {
          goto LABEL_56;
        }
      }

      else if (v82 >= 64)
      {
LABEL_56:
        v114 = v112;
        MEMORY[0x28223BE20](v82);
        v115 = v112 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_24AD76304();
        v84 = v123;
        sub_24AD847AC();
        v85 = *(*(v84 + 32) + 8);
        v30 = v119;
        v86 = sub_24AD845DC();
        (*(v122 + 8))(v115, v26);
        if (v86)
        {
          goto LABEL_86;
        }

        goto LABEL_63;
      }

      v30 = v119;
      sub_24AD847BC();
    }

LABEL_63:
    v87 = sub_24AD847BC();
    (*(v122 + 8))(v30, v26);
    v48 = __OFADD__(v87, v118);
    v88 = v87 + v118;
    if (v48)
    {
      goto LABEL_85;
    }

    v89 = sub_24AD76304();
    *&v131[8] = v126[0];
    *v131 = v88;
    *&v131[24] = MEMORY[0x277D84A28];
    *&v131[32] = v89;
    v131[40] = 2;
    __swift_destroy_boxed_opaque_existential_0Tm(v128);
    v3 = v116;
LABEL_65:
    v90 = v124;
    swift_beginAccess();
    sub_24AD758C0(v131, &v132);
    v91 = *(v2 + v90);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v128[0] = *(v2 + v90);
    v93 = v128[0];
    *(v2 + v90) = 0x8000000000000000;
    v94 = sub_24AD744D4(v125, v17);
    v96 = *(v93 + 16);
    v97 = (v95 & 1) == 0;
    v48 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v48)
    {
      goto LABEL_83;
    }

    v99 = v95;
    if (*(v93 + 24) < v98)
    {
      sub_24AD746C0(v98, v92);
      v94 = sub_24AD744D4(v125, v17);
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_88;
      }

LABEL_70:
      if ((v99 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }

    if (v92)
    {
      goto LABEL_70;
    }

    v104 = v94;
    sub_24AD753F4();
    v94 = v104;
    if ((v99 & 1) == 0)
    {
LABEL_75:
      v102 = v128[0];
      *(v128[0] + 8 * (v94 >> 6) + 64) |= 1 << v94;
      v105 = (v102[6] + 16 * v94);
      *v105 = v125;
      v105[1] = v17;
      v106 = (v102[7] + 48 * v94);
      v107 = *&v133[9];
      v108 = *v133;
      *v106 = v132;
      v106[1] = v108;
      *(v106 + 25) = v107;
      v109 = v102[2];
      v48 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v48)
      {
        goto LABEL_84;
      }

      v102[2] = v110;
      goto LABEL_77;
    }

LABEL_71:
    v101 = v94;

    v102 = v128[0];
    sub_24AD76248(&v132, *(v128[0] + 56) + 48 * v101);
LABEL_77:
    *(v2 + v124) = v102;
    swift_endAccess();
    sub_24AD76358(&v135);
    sub_24AD75978(&v137);
    v12 = v131;
LABEL_6:
    sub_24AD76358(v12);
    v8 = v120;
    v4 = v121;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_24AD8495C();
  __break(1u);
  return result;
}

uint64_t sub_24AD73500(uint64_t a1)
{
  v2 = v1;
  swift_getErrorValue();
  v4 = sub_24AD8497C();
  v6 = v5;
  v7 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];
  v8 = sub_24AD75A60();
  v17 = v8;
  v14 = v4;
  v15 = v6;
  v18 = 1;
  v9 = *(*v2 + 152);
  swift_beginAccess();
  sub_24AD726E0(&v14, 0x6D6F44726F727265, 0xEB000000006E6961);
  swift_endAccess();
  swift_getErrorValue();
  v10 = sub_24AD8496C();
  v16 = MEMORY[0x277D83B88];
  v17 = sub_24AD75AB4();
  v14 = v10;
  v18 = 2;
  swift_beginAccess();
  sub_24AD726E0(&v14, 0x646F43726F727265, 0xE900000000000065);
  swift_endAccess();
  v14 = a1;
  MEMORY[0x24C22FF80](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7210, &qword_24AD85070);
  v11 = sub_24AD8460C();
  v16 = v7;
  v17 = v8;
  v14 = v11;
  v15 = v12;
  v18 = 1;
  swift_beginAccess();
  sub_24AD726E0(&v14, 0xD000000000000010, 0x800000024AD86320);
  return swift_endAccess();
}

uint64_t sub_24AD736D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_24AD73834();
  sub_24AD727BC(v5);

  v6 = *(v4 + 80);
  v7 = *(*(v4 + 96) + 16);
  v8 = v1 + *(*v1 + 120);
  sub_24AD8468C();
  v9 = *(*v2 + 128);
  v10 = type metadata accessor for AnyAnalyticsEvent();
  v11 = *(v10 + 20);
  v12 = sub_24AD8452C();
  (*(*(v12 - 8) + 16))(&a1[v11], v2 + v9, v12);
  v13 = *(*v2 + 152);
  swift_beginAccess();
  v14 = *(v2 + v13);
  *a1 = v16;
  *(a1 + 1) = v17;
  *&a1[*(v10 + 24)] = v14;
}

uint64_t sub_24AD73834()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = sub_24AD8489C();
  v44 = *(v9 - 8);
  v10 = v44[8];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_24AD8450C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD844FC();
  v21 = sub_24AD844DC();
  (*(v17 + 8))(v20, v16);
  *&v46 = v21;
  v22 = sub_24AD848FC();
  v24 = v23;
  v25 = sub_24AD75A60();
  *&v46 = v22;
  *(&v46 + 1) = v24;
  v47 = MEMORY[0x277D837D0];
  v48 = v25;
  v49 = 1;
  v26 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v26;
  sub_24AD75264(&v46, 0x6D695468636F7065, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v28 = v45;
  sub_24AD71410(v8);
  v29 = v44;
  v30 = v44[6];
  if (v30(v8, 1, v9) != 1)
  {
    v41 = v13;
    v31 = v29[4];
    v42 = v15;
    v31();
    sub_24AD714E0(v6);
    v32 = v30(v6, 1, v9);
    sub_24AD761E8(v6, &qword_27EFA7208, &unk_24AD85060);
    if (v32 == 1)
    {
      sub_24AD717B4();
    }

    v8 = v43;
    sub_24AD714E0(v43);
    if (v30(v8, 1, v9) != 1)
    {
      v33 = v41;
      (v31)(v41, v8, v9);
      v34 = v42;
      sub_24AD8488C();
      v35 = sub_24AD84A3C() / 1000.0;
      v36 = sub_24AD76194();
      *&v46 = v35;
      v47 = MEMORY[0x277D839F8];
      v48 = v36;
      v49 = 3;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v28;
      sub_24AD75264(&v46, 0x6E6F697461727564, 0xE800000000000000, v37);
      v38 = v44[1];
      v38(v33, v9);
      v38(v34, v9);
      return v45;
    }

    (v44[1])(v42, v9);
  }

  sub_24AD761E8(v8, &qword_27EFA7208, &unk_24AD85060);
  return v28;
}

uint64_t AnalyticsEvent.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 128);
  v2 = sub_24AD8452C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AD761E8(v0 + *(*v0 + 136), &qword_27EFA7208, &unk_24AD85060);
  sub_24AD761E8(v0 + *(*v0 + 144), &qword_27EFA7208, &unk_24AD85060);
  v3 = *(v0 + *(*v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AnalyticsEvent.__deallocating_deinit()
{
  AnalyticsEvent.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t AnyAnalyticsEvent.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnyAnalyticsEvent.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnyAnalyticsEvent() + 20);
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnyAnalyticsEvent.eventData.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnyAnalyticsEvent() + 24));
}

uint64_t sub_24AD73F2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AD73FF8(v11, 0, 0, 1, a1, a2);
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
    sub_24AD762A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24AD73FF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AD74104(a5, a6);
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
    result = sub_24AD8486C();
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

uint64_t sub_24AD74104(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AD74150(a1, a2);
  sub_24AD74280(&unk_285E2CA18);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AD74150(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AD7436C(v5, 0);
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

  result = sub_24AD8486C();
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
        v10 = sub_24AD8465C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD7436C(v10, 0);
        result = sub_24AD8484C();
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

uint64_t sub_24AD74280(uint64_t result)
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

  result = sub_24AD743E0(result, v12, 1, v3);
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

void *sub_24AD7436C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7230, &qword_24AD85150);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD743E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7230, &qword_24AD85150);
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

unint64_t sub_24AD744D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AD849DC();
  sub_24AD8462C();
  v6 = sub_24AD84A0C();

  return sub_24AD7454C(a1, a2, v6);
}

unint64_t sub_24AD7454C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AD8491C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_24AD74604@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24AD744D4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AD753F4();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 48 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 25) = *(v14 + 25);
    sub_24AD74F04(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
  }

  return result;
}

uint64_t sub_24AD746C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7228, &qword_24AD85148);
  v41 = a2;
  result = sub_24AD848EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 48 * v24);
      if (v41)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v43 + 9) = *(v28 + 25);
        v42 = v29;
        v43[0] = v30;
      }

      else
      {
        sub_24AD758C0(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v43[0];
      *(v18 + 25) = *(v43 + 9);
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24AD74990(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7238, &qword_24AD85158);
  v41 = a2;
  result = sub_24AD848EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 48 * v24);
      if (v41)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v43 + 10) = *(v28 + 26);
        v42 = v29;
        v43[0] = v30;
      }

      else
      {
        sub_24AD7591C(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v43[0];
      *(v18 + 26) = *(v43 + 10);
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24AD74C60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7218, &qword_24AD85138);
  v39 = a2;
  result = sub_24AD848EC();
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
      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
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

uint64_t sub_24AD74F04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AD8481C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_24AD849DC();

      sub_24AD8462C();
      v15 = sub_24AD84A0C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AD750D4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AD744D4(a2, a3);
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
      sub_24AD746C0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24AD744D4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24AD8495C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24AD753F4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_24AD76248(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 48 * v11);
  v27 = *a1;
  v28 = a1[1];
  *(v26 + 25) = *(a1 + 25);
  *v26 = v27;
  v26[1] = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_24AD75264(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24AD744D4(a2, a3);
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
      sub_24AD74990(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24AD744D4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24AD8495C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24AD755A4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_24AD759CC(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 48 * v11);
  v27 = *a1;
  v28 = a1[1];
  *(v26 + 26) = *(a1 + 26);
  *v26 = v27;
  v26[1] = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_24AD753F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7228, &qword_24AD85148);
  v2 = *v0;
  v3 = sub_24AD848DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_24AD758C0(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
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

void *sub_24AD755A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7238, &qword_24AD85158);
  v2 = *v0;
  v3 = sub_24AD848DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_24AD7591C(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[10];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 26) = v25;
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

        v1 = v27;
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

id sub_24AD75754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7218, &qword_24AD85138);
  v2 = *v0;
  v3 = sub_24AD848DC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24AD75A60()
{
  result = qword_281066268;
  if (!qword_281066268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066268);
  }

  return result;
}

unint64_t sub_24AD75AB4()
{
  result = qword_281066258;
  if (!qword_281066258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066258);
  }

  return result;
}

uint64_t type metadata accessor for AnyAnalyticsEvent()
{
  result = qword_2810662B0;
  if (!qword_2810662B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AD75B58(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    v4 = sub_24AD8452C();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      sub_24AD75FB0();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AnalyticsEvent.append(block:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD75E64;

  return v10(a1, a2);
}

uint64_t sub_24AD75E64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_24AD75FB0()
{
  if (!qword_281066218)
  {
    sub_24AD8489C();
    v0 = sub_24AD8479C();
    if (!v1)
    {
      atomic_store(v0, &qword_281066218);
    }
  }
}

void sub_24AD76030()
{
  sub_24AD8452C();
  if (v0 <= 0x3F)
  {
    sub_24AD760C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AD760C4()
{
  if (!qword_281066250)
  {
    v0 = sub_24AD845BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281066250);
    }
  }
}

uint64_t sub_24AD76124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AD76194()
{
  result = qword_281066260;
  if (!qword_281066260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066260);
  }

  return result;
}

uint64_t sub_24AD761E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AD762A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AD76304()
{
  result = qword_27EFA7240;
  if (!qword_27EFA7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7240);
  }

  return result;
}

unint64_t sub_24AD763AC()
{
  result = qword_27EFA7248;
  if (!qword_27EFA7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7248);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24AD76490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7208, &unk_24AD85060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for StateCaptureReason(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StateCaptureReason(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281066190)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281066190);
    }
  }
}

uint64_t sub_24AD765A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7250, &qword_24AD851A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10];
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v12 = sub_24AD744D4(a2, a3);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24AD762A4(*(a1 + 56) + 32 * v12, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24AD8447C();

  v14 = sub_24AD8448C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_24AD76898(v11);
LABEL_6:
    sub_24AD76844();
    swift_allocError();
    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = 2;
    swift_willThrow();
  }

  return (*(v15 + 32))(a4, v11, v14);
}

uint64_t sub_24AD76770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6 = sub_24AD744D4(a2, a3);
    if (v7)
    {
      sub_24AD762A4(*(a1 + 56) + 32 * v6, v11);
      if (swift_dynamicCast())
      {
        return v10;
      }
    }
  }

  sub_24AD76844();
  swift_allocError();
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = 2;
  swift_willThrow();
}

unint64_t sub_24AD76844()
{
  result = qword_27EFA7258;
  if (!qword_27EFA7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7258);
  }

  return result;
}

uint64_t sub_24AD76898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7250, &qword_24AD851A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchpartyAccount.icloudIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchpartyAccount.dsid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchpartyAccount.token.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SearchpartyAccount.findmy_key_sharing_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 28);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SearchpartyAccount()
{
  result = qword_27EFA7260;
  if (!qword_27EFA7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchpartyAccount.findmy_owner_device_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 32);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.findmyservice_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 36);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.fmadminws_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 40);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.icloud_acsn_gateway_url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 44);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.icloud_fmip_al_service.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchpartyAccount() + 48);
  v4 = sub_24AD8448C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchpartyAccount.init(icloudIdentifier:dsid:token:findmy_key_sharing_url:findmy_owner_device_url:findmyservice_gateway_url:fmadminws_gateway_url:icloud_acsn_gateway_url:icloud_fmip_al_service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v16 = type metadata accessor for SearchpartyAccount();
  v17 = v16[7];
  v18 = sub_24AD8448C();
  v21 = *(*(v18 - 8) + 32);
  (v21)((v18 - 8), &a9[v17], a7, v18);
  v21(&a9[v16[8]], a8, v18);
  v21(&a9[v16[9]], a10, v18);
  v21(&a9[v16[10]], a11, v18);
  v21(&a9[v16[11]], a12, v18);
  v19 = &a9[v16[12]];

  return (v21)(v19, a13, v18);
}

uint64_t sub_24AD76E54()
{
  result = sub_24AD8448C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AD76EE4(id a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AD8448C();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v72 = &v60 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v60 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = [a2 aa_personID];
  if (!v24)
  {
    goto LABEL_9;
  }

  v68 = v10;
  v70 = v6;
  v25 = v24;
  v69 = sub_24AD845FC();
  v27 = v26;

  v28 = [a2 username];
  if (!v28)
  {

LABEL_9:
    sub_24AD76844();
    swift_allocError();
    v42 = xmmword_24AD851C0;
LABEL_12:
    *v41 = v42;
    *(v41 + 16) = 3;
    swift_willThrow();
LABEL_13:

    return;
  }

  v71 = v27;
  v29 = v28;
  v67 = sub_24AD845FC();
  v31 = v30;

  v32 = [a1 credentialForAccount_];
  if (!v32)
  {
LABEL_11:

    sub_24AD76844();
    swift_allocError();
    v42 = xmmword_24AD851B0;
    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v32 credentialItemForKey_];
  if (!v34)
  {

    goto LABEL_11;
  }

  v65 = v33;
  v66 = v31;
  v64 = a3;
  v35 = v34;
  v61 = sub_24AD845FC();
  v37 = v36;

  v38 = [a2 dataclassProperties];
  if (!v38)
  {

    v43 = 0x800000024AD86380;
    v76 = 0u;
    v77 = 0u;
LABEL_21:
    sub_24AD777AC(&v76);
    v50 = v65;
LABEL_23:
    sub_24AD76844();
    swift_allocError();
    *v51 = 0xD00000000000001FLL;
    *(v51 + 8) = v43;
    *(v51 + 16) = 1;
    swift_willThrow();

    goto LABEL_13;
  }

  v39 = v38;
  v62 = a1;
  v63 = v37;
  *&v74 = 0xD00000000000001FLL;
  *(&v74 + 1) = 0x800000024AD86380;
  v60 = 0x800000024AD86380;
  v40 = [v38 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v40)
  {
    sub_24AD847EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  v44 = v64;
  v76 = v74;
  v77 = v75;
  a1 = v62;
  v45 = v71;
  if (!*(&v75 + 1))
  {

    v43 = v60;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7278, &qword_24AD85240);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v50 = v65;
    v43 = v60;
    goto LABEL_23;
  }

  v46 = v74;
  v47 = v66;
  *v44 = v67;
  v44[1] = v47;
  v44[2] = v69;
  v44[3] = v45;
  v48 = v63;
  v44[4] = v61;
  v44[5] = v48;
  v69 = v46;
  v49 = v78;
  sub_24AD765A8(v46, 0xD000000000000016, 0x800000024AD863A0, v23);
  if (v49)
  {
  }

  else
  {
    v52 = v44;
    v53 = type metadata accessor for SearchpartyAccount();
    v54 = v52 + v53[7];
    v55 = v23;
    v56 = v70;
    v78 = *(v73 + 32);
    v78(v54, v55, v70);
    sub_24AD765A8(v69, 0xD000000000000017, 0x800000024AD863C0, v21);
    v78(v64 + v53[8], v21, v56);
    v67 = 0;
    sub_24AD765A8(v69, 0xD000000000000019, 0x800000024AD863E0, v18);
    v78(v64 + v53[9], v18, v56);
    v57 = v69;
    sub_24AD765A8(v69, 0xD000000000000015, 0x800000024AD86400, v15);
    v78(v64 + v53[10], v15, v56);
    v58 = v72;
    sub_24AD765A8(v57, 0xD000000000000017, 0x800000024AD86420, v72);
    v78(v64 + v53[11], v58, v56);
    v59 = v68;
    sub_24AD765A8(v57, 0xD000000000000016, 0x800000024AD86440, v68);

    v78(v64 + v53[12], v59, v56);
  }
}

uint64_t sub_24AD777AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7270, &qword_24AD85238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AD77814()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_27EFA7388);
  v1 = __swift_project_value_buffer(v0, qword_27EFA7388);
  if (qword_27EFA71F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EFA7280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static AppleAccount.fmipAccount.getter(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24AD7796C;

  return sub_24AD78348();
}

uint64_t sub_24AD7796C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD77AA4, 0, 0);
  }
}

uint64_t sub_24AD77AA4()
{
  v10 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_24AD791BC(v1, *(v0 + 32), v9);
    if (v2)
    {
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v5 = *(v0 + 16);
    v6 = v9[3];
    v5[2] = v9[2];
    v5[3] = v6;
    v5[4] = v9[4];
    v7 = v9[1];
    *v5 = v9[0];
    v5[1] = v7;
  }

  else
  {
    v4 = *(v0 + 16);

    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
  }

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t static AppleAccount.searchpartyAccount.getter(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24AD77C08;

  return sub_24AD78348();
}

uint64_t sub_24AD77C08(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD77D40, 0, 0);
  }
}

uint64_t sub_24AD77D40()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = v1;
    sub_24AD76EE4(v3, v5, v4);
    if (v2)
    {

      v6 = v0[1];
      goto LABEL_7;
    }

    v7 = 0;
  }

  else
  {
    v5 = v0[4];
    v7 = 1;
  }

  v8 = v0[2];
  v9 = type metadata accessor for SearchpartyAccount();
  (*(*(v9 - 8) + 56))(v8, v7, 1, v9);

  v6 = v0[1];
LABEL_7:

  return v6();
}

unint64_t AppleAccount.Error.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      sub_24AD8485C();

      v3 = 0xD000000000000012;
    }

    else
    {
      sub_24AD8485C();

      v3 = 0xD000000000000014;
    }

    goto LABEL_7;
  }

  if (*(v0 + 16) == 2)
  {
    sub_24AD8485C();

    v3 = 0xD00000000000001ALL;
LABEL_7:
    v5 = v3;
    MEMORY[0x24C22F760](v2, v1);
    MEMORY[0x24C22F760](41, 0xE100000000000000);
    return v5;
  }

  if (v2 <= 1)
  {
    if (v2 | v1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (v2 ^ 2 | v1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_24AD7804C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7210, &qword_24AD85070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24AD7811C()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_27EFA7280);
  __swift_project_value_buffer(v0, qword_27EFA7280);
  return sub_24AD8454C();
}

uint64_t sub_24AD7819C()
{
  v0 = 0xD000000000000020;
  v1 = 0x800000024AD865D0;
  sub_24AD8441C();
  if (!v4[3])
  {
    sub_24AD777AC(v4);
LABEL_10:
    v0 = 0xD00000000000002ALL;
LABEL_11:
    sub_24AD76844();
    swift_allocError();
    *v3 = v0;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    return swift_willThrow();
  }

  if ((swift_dynamicCast() & 1) == 0 || (v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = 0x800000024AD86600;
  sub_24AD8441C();
  if ((swift_dynamicCast() & 1) == 0 || (v5 & 1) == 0)
  {
    v0 = 0xD000000000000022;
    goto LABEL_11;
  }

  v1 = 0x800000024AD86630;
  sub_24AD8441C();
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_24AD78348()
{
  v1 = sub_24AD84A5C();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();
  v4 = sub_24AD8489C();
  v0[22] = v4;
  v5 = *(v4 - 8);
  v0[23] = v5;
  v6 = *(v5 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v7 = sub_24AD848BC();
  v0[27] = v7;
  v8 = *(v7 - 8);
  v0[28] = v8;
  v9 = *(v8 + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD784E0, 0, 0);
}

uint64_t sub_24AD784E0()
{
  if (MEMORY[0x24C22F4E0]())
  {
    v1 = sub_24AD843CC();
    sub_24AD79110(&qword_27EFA72A0, MEMORY[0x277D08938]);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x800000024AD86580;
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D08930], v1);
    swift_willThrow();
LABEL_4:
    v4 = v0[29];
    v3 = v0[30];
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = v0[21];

    v9 = v0[1];

    return v9();
  }

  sub_24AD7819C();
  v11 = v0[30];
  sub_24AD848AC();
  if (qword_27EFA71F0 != -1)
  {
    swift_once();
  }

  v12 = sub_24AD8455C();
  v0[31] = __swift_project_value_buffer(v12, qword_27EFA7388);
  v13 = sub_24AD8453C();
  v14 = sub_24AD8473C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24AD6F000, v13, v14, "Retrieving aa_primaryAppleAccount...", v15, 2u);
    MEMORY[0x24C2300D0](v15, -1, -1);
  }

  v16 = v0[30];
  v17 = v0[26];

  sub_24AD8487C();
  v18 = [objc_opt_self() defaultStore];
  v0[32] = v18;
  if (!v18)
  {
    v21 = v0[30];
    v22 = v0[27];
    v23 = v0[28];
    v24 = v0[26];
    v25 = v0[22];
    v26 = v0[23];
    sub_24AD76844();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 3;
    swift_willThrow();
    (*(v26 + 8))(v24, v25);
    (*(v23 + 8))(v21, v22);
    goto LABEL_4;
  }

  v19 = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD788D0;
  v20 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7298, qword_24AD853A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD7804C;
  v0[13] = &block_descriptor;
  v0[14] = v20;
  [v19 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD788D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_24AD78E24;
  }

  else
  {
    v3 = sub_24AD789E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD789E0()
{
  v62 = v0;
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    (*(*(v0 + 184) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 176));
    (*(v5 + 16))(v4, v2, v6);
    v7 = sub_24AD8453C();
    v8 = sub_24AD8473C();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 200);
    v59 = v10;
    v60 = *(v0 + 208);
    if (v9)
    {
      log = v7;
      v58 = v1;
      v16 = *(v0 + 184);
      v15 = *(v0 + 192);
      v56 = v8;
      v18 = *(v0 + 168);
      v17 = *(v0 + 176);
      v54 = *(v0 + 216);
      v19 = *(v0 + 160);
      v52 = *(v0 + 152);
      buf = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61 = v55;
      *buf = 136315138;
      sub_24AD8487C();
      sub_24AD84A4C();
      sub_24AD79110(&qword_281066220, MEMORY[0x277D858F8]);
      v51 = sub_24AD84A2C();
      v21 = v20;
      (*(v19 + 8))(v18, v52);
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = *(v12 + 8);
      v13 = v54;
      v23(v11, v54);
      v22(v14, v17);
      v24 = sub_24AD73F2C(v51, v21, &v61);

      *(buf + 4) = v24;
      _os_log_impl(&dword_24AD6F000, log, v56, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x24C2300D0](v55, -1, -1);
      MEMORY[0x24C2300D0](buf, -1, -1);

      v22(v60, v17);
      v1 = v58;
    }

    else
    {
      v40 = *(v0 + 176);
      v41 = *(v0 + 184);

      v23 = *(v12 + 8);
      v23(v11, v13);
      v42 = *(v41 + 8);
      v42(v14, v40);
      v42(v60, v40);
    }

    v23(v59, v13);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v46 = *(v0 + 200);
    v45 = *(v0 + 208);
    v47 = *(v0 + 192);
    v48 = *(v0 + 168);

    v49 = *(v0 + 8);
    v50 = *(v0 + 256);

    return v49(v50, v1);
  }

  else
  {

    v25 = *(v0 + 240);
    v26 = *(v0 + 216);
    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);
    sub_24AD76844();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 3;
    swift_willThrow();
    (*(v30 + 8))(v28, v29);
    (*(v27 + 8))(v25, v26);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);
    v36 = *(v0 + 192);
    v37 = *(v0 + 168);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_24AD78E24()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[23];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[33];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t getEnumTagSinglePayload for AppleAccount(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppleAccount(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_12FindMyCommon12AppleAccountO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AD79044(uint64_t a1, unsigned int a2)
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

uint64_t sub_24AD7908C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AD790D0(uint64_t result, unsigned int a2)
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

uint64_t sub_24AD79110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24AD791BC(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v7 = [a1 aa_personID];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_24AD845FC();
  v11 = v10;

  v12 = [a1 username];
  if (!v12)
  {

LABEL_7:
    sub_24AD76844();
    swift_allocError();
    v21 = xmmword_24AD851C0;
LABEL_8:
    *v20 = v21;
    v22 = 3;
LABEL_22:
    *(v20 + 16) = v22;
    swift_willThrow();

    return;
  }

  v49 = v3;
  v44 = v9;
  v13 = v12;
  v14 = sub_24AD845FC();
  v16 = v15;

  v17 = [a1 dataclassProperties];
  if (!v17)
  {

    v47 = 0u;
    v48 = 0u;
LABEL_19:
    sub_24AD777AC(&v47);
LABEL_21:
    sub_24AD76844();
    swift_allocError();
    *v20 = 0xD000000000000021;
    *(v20 + 8) = 0x800000024AD86660;
    v22 = 1;
    goto LABEL_22;
  }

  v18 = v17;
  v42 = v14;
  v43 = a3;
  *&v45 = 0xD000000000000021;
  *(&v45 + 1) = 0x800000024AD86660;
  v19 = [v17 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v19)
  {
    sub_24AD847EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {

    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7278, &qword_24AD85240);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v23 = [a1 aa_fmipAccount];
  v24 = v16;
  if (!v23)
  {
LABEL_26:

    sub_24AD76844();
    swift_allocError();
    v21 = xmmword_24AD851B0;
    goto LABEL_8;
  }

  v25 = v23;
  v26 = [a2 credentialForAccount_];
  if (!v26)
  {
    v27 = v25;
LABEL_25:

    goto LABEL_26;
  }

  v27 = v26;
  v28 = [v26 credentialItemForKey_];
  if (!v28)
  {

    goto LABEL_25;
  }

  v29 = v28;
  v39 = sub_24AD845FC();
  v41 = v30;

  v31 = [a1 aa_authToken];
  if (v31)
  {
    v32 = v31;
    v38 = sub_24AD845FC();
    v40 = v33;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v34 = sub_24AD76770(v45, 0x6E74736F48707061, 0xEB00000000656D61);
  if (v49)
  {
  }

  else
  {
    v36 = v34;
    v49 = v35;

    *v43 = v42;
    v43[1] = v24;
    v43[2] = v44;
    v43[3] = v11;
    v43[4] = v38;
    v43[5] = v40;
    v43[6] = v39;
    v43[7] = v41;
    v37 = v49;
    v43[8] = v36;
    v43[9] = v37;
  }
}

uint64_t FMIPAccount.icloudIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMIPAccount.dsid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPAccount.authToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FMIPAccount.appToken.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FMIPAccount.appHostName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24AD7972C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24AD79774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AD797D8()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_2810667A0);
  v1 = __swift_project_value_buffer(v0, qword_2810667A0);
  if (qword_281066278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066788);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD798A0()
{
  result = sub_24AD7A740(MEMORY[0x277D84F90]);
  qword_2810667B8 = result;
  return result;
}

void static AnalyticsPublisher.publish(event:)(uint64_t *a1)
{
  v2 = type metadata accessor for AnyAnalyticsEvent();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v35 - v8);
  if (MEMORY[0x24C22F4E0](v7))
  {
    if (qword_2810662A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24AD8455C();
    __swift_project_value_buffer(v10, qword_2810667A0);
    v35 = sub_24AD8453C();
    v11 = sub_24AD8473C();
    if (os_log_type_enabled(v35, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AD6F000, v35, v11, "AnalyticsPublisher not submitting analytics during unit tests.", v12, 2u);
      MEMORY[0x24C2300D0](v12, -1, -1);
    }

    v13 = v35;
  }

  else
  {
    if (qword_2810662A8 != -1)
    {
      swift_once();
    }

    if (sub_24AD725E8(*a1, a1[1], qword_2810667B8))
    {
      if (qword_2810662A0 != -1)
      {
        swift_once();
      }

      v14 = sub_24AD8455C();
      __swift_project_value_buffer(v14, qword_2810667A0);
      sub_24AD7B708(a1, v6);
      v15 = sub_24AD8453C();
      v16 = sub_24AD846FC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v36 = v18;
        *v17 = 136446210;
        v19 = *v6;
        v20 = v6[1];

        sub_24AD7B76C(v6);
        v21 = sub_24AD73F2C(v19, v20, &v36);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_24AD6F000, v15, v16, "AnalyticsPublisher not submitting disallowed analytics event %{public}s to CA.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x24C2300D0](v18, -1, -1);
        MEMORY[0x24C2300D0](v17, -1, -1);
      }

      else
      {

        sub_24AD7B76C(v6);
      }
    }

    else
    {
      sub_24AD7A7D8(*(a1 + *(v2 + 24)));
      if (qword_2810662A0 != -1)
      {
        swift_once();
      }

      v22 = sub_24AD8455C();
      __swift_project_value_buffer(v22, qword_2810667A0);
      sub_24AD7B708(a1, v9);

      v23 = sub_24AD8453C();
      v24 = sub_24AD846FC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v25 = 136446466;
        v27 = *v9;
        v28 = v9[1];

        sub_24AD7B76C(v9);
        v29 = sub_24AD73F2C(v27, v28, &v36);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2082;
        sub_24AD7B7C8();
        v30 = sub_24AD845AC();
        v32 = sub_24AD73F2C(v30, v31, &v36);

        *(v25 + 14) = v32;
        _os_log_impl(&dword_24AD6F000, v23, v24, "Analytics: %{public}s, %{public}s.", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C2300D0](v26, -1, -1);
        MEMORY[0x24C2300D0](v25, -1, -1);
      }

      else
      {

        sub_24AD7B76C(v9);
      }

      v33 = sub_24AD845EC();
      sub_24AD7B7C8();
      v34 = sub_24AD8459C();

      AnalyticsSendEvent();
    }
  }
}

uint64_t sub_24AD79DFC()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066788);
  __swift_project_value_buffer(v0, qword_281066788);
  return sub_24AD8454C();
}

uint64_t sub_24AD79E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AD849DC();
  sub_24AD8462C();
  v9 = sub_24AD84A0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AD8491C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AD7A22C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AD79FCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  result = sub_24AD8483C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AD849DC();
      sub_24AD8462C();
      result = sub_24AD84A0C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AD7A22C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AD79FCC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AD7A3AC();
      goto LABEL_16;
    }

    sub_24AD7A508(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AD849DC();
  sub_24AD8462C();
  result = sub_24AD84A0C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AD8491C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AD8494C();
  __break(1u);
  return result;
}

void *sub_24AD7A3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  v2 = *v0;
  v3 = sub_24AD8482C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_24AD7A508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B0, &unk_24AD85450);
  result = sub_24AD8483C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AD849DC();

      sub_24AD8462C();
      result = sub_24AD84A0C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AD7A740(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22F810](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AD79E7C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24AD7A7D8(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v131 = a1;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (v4)
  {
LABEL_12:
    v13 = __clz(__rbit64(v4)) | (v6 << 6);
    v14 = *(v131 + 56);
    v15 = (*(v131 + 48) + 16 * v13);
    v16 = v15[1];
    v134 = *v15;
    sub_24AD758C0(v14 + 48 * v13, &v141);
    v132 = v142;
    v133 = v141;
    v17 = v143;
    v18 = v144;

    if (!v16)
    {
      goto LABEL_97;
    }

    v4 &= v4 - 1;
    v141 = v133;
    v142 = v132;
    v143 = v17;
    v144 = v18;
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        sub_24AD70EF8(&v141, v138);
        sub_24AD7B824(v138, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72A8, &qword_24AD85448);
        if (swift_dynamicCast())
        {
          v28 = sub_24AD84A1C();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v7;
          v30 = sub_24AD744D4(v134, v16);
          v32 = v7[2];
          v33 = (v31 & 1) == 0;
          v10 = __OFADD__(v32, v33);
          v34 = v32 + v33;
          if (v10)
          {
            goto LABEL_102;
          }

          v35 = v31;
          if (v7[3] < v34)
          {
            sub_24AD74C60(v34, isUniquelyReferenced_nonNull_native);
            v30 = sub_24AD744D4(v134, v16);
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_110;
            }

            goto LABEL_48;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_48:
            if ((v35 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v120 = v30;
            sub_24AD75754();
            v30 = v120;
            if ((v35 & 1) == 0)
            {
LABEL_49:
              v7 = v136[0];
              *(v136[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
              v81 = (v7[6] + 16 * v30);
              *v81 = v134;
              v81[1] = v16;
              *(v7[7] + 8 * v30) = v28;
              v82 = v7[2];
              v10 = __OFADD__(v82, 1);
              v11 = v82 + 1;
              if (v10)
              {
                goto LABEL_107;
              }

              goto LABEL_5;
            }
          }

          goto LABEL_80;
        }

        v65 = v139;
        v66 = v140;
        v67 = __swift_project_boxed_opaque_existential_1(v138, v139);
        v129 = v125;
        v68 = *(*(v65 - 8) + 64);
        MEMORY[0x28223BE20](v67);
        v128 = v69;
        v70 = v125 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v132 = v71;
        (*(v71 + 16))(v70);
        v72 = sub_24AD847DC();
        *&v133 = v66;
        if (v72)
        {
          v73 = sub_24AD847CC();
          v74 = v133;
          if (v73 > 64)
          {
            v130 = v70;
            v136[0] = 0x8000000000000000;
            v75 = v65;
            if (sub_24AD847DC())
            {
              v70 = v130;
              v76 = sub_24AD847CC();
              if (v76 < 64)
              {
                v127 = v65;
                goto LABEL_63;
              }

              v126 = v125;
              MEMORY[0x28223BE20](v76);
              v127 = v125 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_24AD76304();
              sub_24AD847AC();
              v89 = *(*(v74 + 32) + 8);
LABEL_56:
              v90 = sub_24AD845DC();
              (*(v132 + 8))(v127, v65);
              if (v90)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v83 = sub_24AD847DC();
              v84 = sub_24AD847CC();
              if (v83)
              {
                if (v84 > 64)
                {
                  v126 = v125;
                  MEMORY[0x28223BE20](v84);
                  v127 = v125 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_24AD76304();
                  v86 = v133;
                  sub_24AD847AC();
                  v87 = *(*(v86 + 32) + 8);
                  v65 = v75;
                  v70 = v130;
                  goto LABEL_56;
                }

                v125[1] = *(*(v133 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v127 = v125;
                v92 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                MEMORY[0x28223BE20](AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v93 = sub_24AD8492C();
                v126 = v125;
                MEMORY[0x28223BE20](v93);
                v95 = v125 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_24AD8490C();
                v96 = *(*(v133 + 32) + 8);
                v97 = sub_24AD845DC();
                (*(v132 + 8))(v95, v75);
                if (v97)
                {
                  goto LABEL_109;
                }
              }

              else if (v84 >= 64)
              {
                v65 = v75;
                v70 = v130;
                goto LABEL_64;
              }

              v127 = v75;
LABEL_63:
              sub_24AD847BC();
              v70 = v130;
              v65 = v127;
            }
          }
        }

LABEL_64:
        if (sub_24AD847CC() <= 64 && (sub_24AD847CC() != 64 || (sub_24AD847DC() & 1) != 0))
        {
LABEL_74:
          sub_24AD847BC();
          (*(v132 + 8))(v70, v65);
          v28 = sub_24AD849CC();
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v7;
          v30 = sub_24AD744D4(v134, v16);
          v105 = v7[2];
          v106 = (v104 & 1) == 0;
          v10 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          if (v10)
          {
            goto LABEL_103;
          }

          v108 = v104;
          if (v7[3] >= v107)
          {
            if ((v103 & 1) == 0)
            {
              v121 = v30;
              sub_24AD75754();
              v30 = v121;
              if ((v108 & 1) == 0)
              {
LABEL_94:
                v7 = v136[0];
                *(v136[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
                v122 = (v7[6] + 16 * v30);
                *v122 = v134;
                v122[1] = v16;
                *(v7[7] + 8 * v30) = v28;
                v123 = v7[2];
                v10 = __OFADD__(v123, 1);
                v11 = v123 + 1;
                if (v10)
                {
                  __break(1u);
LABEL_97:

                  return v7;
                }

                goto LABEL_5;
              }

              goto LABEL_80;
            }
          }

          else
          {
            sub_24AD74C60(v107, v103);
            v30 = sub_24AD744D4(v134, v16);
            if ((v108 & 1) != (v109 & 1))
            {
              goto LABEL_110;
            }
          }

          if ((v108 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_80;
        }

        v136[0] = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v127) = sub_24AD847DC();
        v130 = v70;
        v98 = sub_24AD847CC();
        if (v127)
        {
          if (v98 >= 65)
          {
            goto LABEL_67;
          }
        }

        else if (v98 >= 64)
        {
LABEL_67:
          v127 = v125;
          MEMORY[0x28223BE20](v98);
          v128 = v125 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_24AD76304();
          v100 = v133;
          sub_24AD847AC();
          v101 = *(*(v100 + 32) + 8);
          v70 = v130;
          v102 = sub_24AD845DC();
          (*(v132 + 8))(v128, v65);
          if (v102)
          {
            goto LABEL_108;
          }

          goto LABEL_74;
        }

        v70 = v130;
        sub_24AD847BC();
        goto LABEL_74;
      }

      sub_24AD70EF8(&v141, v138);
      v52 = v139;
      v53 = __swift_project_boxed_opaque_existential_1(v138, v139);
      v54 = *(*(v52 - 8) + 64);
      MEMORY[0x28223BE20](v53);
      (*(v56 + 16))(v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_24AD76194();
      sub_24AD8458C();
      v28 = sub_24AD846DC();
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v7;
      v58 = sub_24AD744D4(v134, v16);
      v60 = v7[2];
      v61 = (v59 & 1) == 0;
      v10 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v10)
      {
        goto LABEL_101;
      }

      v63 = v59;
      if (v7[3] >= v62)
      {
        if ((v57 & 1) == 0)
        {
          v117 = v58;
          sub_24AD75754();
          v58 = v117;
          if ((v63 & 1) == 0)
          {
LABEL_88:
            v7 = v137;
            v137[(v58 >> 6) + 8] |= 1 << v58;
            v118 = (v7[6] + 16 * v58);
            *v118 = v134;
            v118[1] = v16;
            *(v7[7] + 8 * v58) = v28;
            v119 = v7[2];
            v10 = __OFADD__(v119, 1);
            v11 = v119 + 1;
            if (v10)
            {
              goto LABEL_104;
            }

            goto LABEL_5;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_24AD74C60(v62, v57);
        v58 = sub_24AD744D4(v134, v16);
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_110;
        }
      }

      if ((v63 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_46:
      v80 = v58;

      v7 = v137;
LABEL_81:
      v110 = v7[7];
      v111 = *(v110 + 8 * v80);
      *(v110 + 8 * v80) = v28;

LABEL_6:
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    else
    {
      if (v18)
      {
        sub_24AD70EF8(&v141, v138);
        v37 = v139;
        v38 = v140;
        v39 = __swift_project_boxed_opaque_existential_1(v138, v139);
        v40 = *(*(v37 - 8) + 64);
        MEMORY[0x28223BE20](v39);
        (*(v42 + 16))(v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        v43 = *(v38 + 40);
        v44 = *(*(*(v38 + 8) + 8) + 8);
        sub_24AD8467C();
        v28 = sub_24AD845EC();

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = v7;
        v30 = sub_24AD744D4(v134, v16);
        v47 = v7[2];
        v48 = (v46 & 1) == 0;
        v10 = __OFADD__(v47, v48);
        v49 = v47 + v48;
        if (v10)
        {
          goto LABEL_100;
        }

        v50 = v46;
        if (v7[3] >= v49)
        {
          if ((v45 & 1) == 0)
          {
            v116 = v30;
            sub_24AD75754();
            v30 = v116;
            if ((v50 & 1) == 0)
            {
LABEL_4:
              v7 = v136[0];
              *(v136[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
              v8 = (v7[6] + 16 * v30);
              *v8 = v134;
              v8[1] = v16;
              *(v7[7] + 8 * v30) = v28;
              v9 = v7[2];
              v10 = __OFADD__(v9, 1);
              v11 = v9 + 1;
              if (v10)
              {
                goto LABEL_105;
              }

LABEL_5:
              v7[2] = v11;
              goto LABEL_6;
            }

            goto LABEL_80;
          }
        }

        else
        {
          sub_24AD74C60(v49, v45);
          v30 = sub_24AD744D4(v134, v16);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_110;
          }
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_80:
        v80 = v30;

        v7 = v136[0];
        goto LABEL_81;
      }

      v135 = v133;
      v19 = sub_24AD8469C();
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v7;
      v21 = sub_24AD744D4(v134, v16);
      v23 = v7[2];
      v24 = (v22 & 1) == 0;
      v10 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v10)
      {
        goto LABEL_99;
      }

      v26 = v22;
      if (v7[3] >= v25)
      {
        if (v20)
        {
          goto LABEL_39;
        }

        v112 = v21;
        sub_24AD75754();
        v21 = v112;
        if ((v26 & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_40:
        v77 = v21;

        v7 = v138[0];
        v78 = *(v138[0] + 56);
        v79 = *(v78 + 8 * v77);
        *(v78 + 8 * v77) = v19;
      }

      else
      {
        sub_24AD74C60(v25, v20);
        v21 = sub_24AD744D4(v134, v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_110;
        }

LABEL_39:
        if (v26)
        {
          goto LABEL_40;
        }

LABEL_83:
        v7 = v138[0];
        *(v138[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v113 = (v7[6] + 16 * v21);
        *v113 = v134;
        v113[1] = v16;
        *(v7[7] + 8 * v21) = v19;
        v114 = v7[2];
        v10 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v10)
        {
          goto LABEL_106;
        }

        v7[2] = v115;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      goto LABEL_97;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      v6 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
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
  result = sub_24AD8495C();
  __break(1u);
  return result;
}

uint64_t sub_24AD7B708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyAnalyticsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD7B76C(uint64_t a1)
{
  v2 = type metadata accessor for AnyAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AD7B7C8()
{
  result = qword_281066228;
  if (!qword_281066228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066228);
  }

  return result;
}

uint64_t sub_24AD7B824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t StateCaptureHint.version.getter()
{
  return *v0;
}

{
  return *v0;
}

uint64_t StateCaptureHint.requestor.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void StateCaptureHint.api.getter(_BYTE *a1@<X8>)
{
  *a1 = *(v1 + 24);
}

{
  *a1 = *(v1 + 24);
}

void StateCaptureHint.reason.getter(_DWORD *a1@<X8>)
{
  *a1 = *(v1 + 28);
}

{
  *a1 = *(v1 + 28);
}

uint64_t StateCaptureHint.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = v0[7];
  sub_24AD8485C();

  v4 = sub_24AD848FC();
  MEMORY[0x24C22F760](v4);

  v5 = 0xE600000000000000;
  MEMORY[0x24C22F760](0x203A69706120, 0xE600000000000000);
  v6 = 0xE600000000000000;
  v7 = 0x746C7561662ELL;
  if (v2 != 1)
  {
    v7 = 0x747365757165722ELL;
    v6 = 0xE800000000000000;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x726F7272652ELL;
  }

  if (v2)
  {
    v5 = v6;
  }

  MEMORY[0x24C22F760](v8, v5);

  MEMORY[0x24C22F760](0x3A6E6F7361657220, 0xE900000000000020);
  v9 = StateCaptureReason.description.getter();
  MEMORY[0x24C22F760](v9);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x6E6F69737265765BLL;
}

{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 24);
  v5 = v0[7];

  sub_24AD8485C();

  v6 = sub_24AD848FC();
  MEMORY[0x24C22F760](v6);

  v7 = 0xE600000000000000;
  MEMORY[0x24C22F760](0x203A69706120, 0xE600000000000000);
  v8 = 0x746C7561662ELL;
  v9 = 0xE800000000000000;
  if (v4 == 1)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x747365757165722ELL;
  }

  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x726F7272652ELL;
  }

  if (v4)
  {
    v7 = v9;
  }

  MEMORY[0x24C22F760](v10, v7);

  MEMORY[0x24C22F760](0x3A6E6F7361657220, 0xE900000000000020);
  v11 = StateCaptureReason.description.getter();
  MEMORY[0x24C22F760](v11);

  MEMORY[0x24C22F760](0x736575716572202CLL, 0xED0000203A726F74);
  if (v2)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0x296C6C756E28;
  }

  if (!v2)
  {
    v2 = 0xE600000000000000;
  }

  MEMORY[0x24C22F760](v12, v2);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x6E6F69737265765BLL;
}

uint64_t StateCaptureHint.init(version:requestor:api:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 28) = v7;
  return result;
}

{
  v6 = *a4;
  v7 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v6;
  *(a6 + 28) = v7;
  return result;
}

uint64_t StateCaptureHintAPI.description.getter()
{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

FindMyCommon::StateCaptureHintAPI_optional __swiftcall StateCaptureHintAPI.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StateCaptureHintAPI.rawValue.getter()
{
  return *v0 + 1;
}

{
  return *v0 + 1;
}

uint64_t sub_24AD7BAE8()
{
  v1 = *v0;
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7BB30()
{
  v1 = *v0;
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7BB7C()
{
  v1 = 0x746C7561662ELL;
  if (*v0 != 1)
  {
    v1 = 0x747365757165722ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7272652ELL;
  }
}

uint64_t StateCaptureReason.rawValue.getter()
{
  return *v0;
}

{
  return *v0;
}

uint64_t StateCaptureReason.init(rawValue:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

void static StateCaptureReason.general.getter(_DWORD *a1@<X8>)
{
  *a1 = 1;
}

{
  *a1 = 1;
}

void static StateCaptureReason.networking.getter(_DWORD *a1@<X8>)
{
  *a1 = 2;
}

{
  *a1 = 2;
}

void static StateCaptureReason.cellular.getter(_DWORD *a1@<X8>)
{
  *a1 = 4;
}

{
  *a1 = 4;
}

void static StateCaptureReason.authentication.getter(_DWORD *a1@<X8>)
{
  *a1 = 8;
}

{
  *a1 = 8;
}

uint64_t sub_24AD7BC10@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void static StateCaptureReason.all.getter(_DWORD *a1@<X8>)
{
  *a1 = 15;
}

{
  *a1 = 15;
}

uint64_t StateCaptureReason.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AD7C504(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AD7C504((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6172656E65672ELL;
  *(v5 + 5) = 0xE800000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AD7C504((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6B726F7774656E2ELL;
    *(v8 + 5) = 0xEB00000000676E69;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_24AD7C504((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x616C756C6C65632ELL;
  *(v11 + 5) = 0xE900000000000072;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24AD7C504((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x746E65687475612ELL;
    *(v14 + 5) = 0xEF6E6F6974616369;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B8, &qword_24AD85460);
  sub_24AD7C0FC();
  v15 = sub_24AD845CC();
  v17 = v16;

  MEMORY[0x24C22F760](v15, v17);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 91;
}

{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AD7C504(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AD7C504((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6172656E65672ELL;
  *(v5 + 5) = 0xE800000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AD7C504((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6B726F7774656E2ELL;
    *(v8 + 5) = 0xEB00000000676E69;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_24AD7C504((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x616C756C6C65632ELL;
  *(v11 + 5) = 0xE900000000000072;
  if ((v1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AD7C504(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24AD7C504((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x746E65687475612ELL;
    *(v14 + 5) = 0xEF6E6F6974616369;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72B8, &qword_24AD85460);
  sub_24AD7C0FC();
  v15 = sub_24AD845CC();
  v17 = v16;

  MEMORY[0x24C22F760](v15, v17);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 91;
}

BOOL sub_24AD7BF98(_DWORD *a1, int *a2)
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

_DWORD *sub_24AD7BFC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24AD7BFF4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_24AD7C0CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_24AD7C0FC()
{
  result = qword_281066248;
  if (!qword_281066248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA72B8, &qword_24AD85460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066248);
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

uint64_t StateCaptureStateData.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StateCaptureStateData.data.getter()
{
  v1 = *(v0 + 16);
  sub_24AD7C610(v1, *(v0 + 24));
  return v1;
}

{
  v1 = *(v0 + 24);
  sub_24AD7C610(v1, *(v0 + 32));
  return v1;
}

void StateCaptureStateData.init(type:title:data:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

unint64_t StateCaptureStateData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24AD8485C();

  MEMORY[0x24C22F760](v1, v2);
  MEMORY[0x24C22F760](0x203A6174616420, 0xE700000000000000);
  v5 = sub_24AD8449C();
  MEMORY[0x24C22F760](v5);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t StateCaptureStateData.init(title:codable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_24AD8446C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_24AD8445C();
  v12 = sub_24AD8444C();
  if (v4)
  {
  }

  else
  {
    v14 = v12;
    v15 = v13;

    *a4 = a1;
    a4[1] = a2;
    a4[2] = v14;
    a4[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a3);
}

uint64_t StateCaptureDateType.description.getter()
{
  return 0x696C61697265732ELL;
}

{
  v1 = 0x75626F746F72702ELL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C61697265732ELL;
  }
}

uint64_t sub_24AD7C418()
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

uint64_t sub_24AD7C484()
{
  sub_24AD849DC();
  sub_24AD849FC();
  return sub_24AD84A0C();
}

char *sub_24AD7C504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72F0, &qword_24AD859A0);
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

uint64_t sub_24AD7C610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24AD7C668()
{
  result = qword_27EFA72C0;
  if (!qword_27EFA72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72C0);
  }

  return result;
}

unint64_t sub_24AD7C6C0()
{
  result = qword_27EFA72C8;
  if (!qword_27EFA72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72C8);
  }

  return result;
}

unint64_t sub_24AD7C718()
{
  result = qword_27EFA72D0;
  if (!qword_27EFA72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72D0);
  }

  return result;
}

unint64_t sub_24AD7C770()
{
  result = qword_27EFA72D8;
  if (!qword_27EFA72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72D8);
  }

  return result;
}

unint64_t sub_24AD7C7C8()
{
  result = qword_27EFA72E0;
  if (!qword_27EFA72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72E0);
  }

  return result;
}

unint64_t sub_24AD7C820()
{
  result = qword_27EFA72E8;
  if (!qword_27EFA72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA72E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AD7C880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24AD7C8DC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for StateCaptureHint()
{
  return &type metadata for StateCaptureHint;
}

{
  return &type metadata for StateCaptureHint;
}

uint64_t getEnumTagSinglePayload for StateCaptureHintAPI(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateCaptureHintAPI(uint64_t result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for StateCaptureHintAPI()
{
  return &type metadata for StateCaptureHintAPI;
}

{
  return &type metadata for StateCaptureHintAPI;
}

ValueMetadata *type metadata accessor for StateCaptureReason()
{
  return &type metadata for StateCaptureReason;
}

{
  return &type metadata for StateCaptureReason;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24AD7CAC8(uint64_t a1, int a2)
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

uint64_t sub_24AD7CB10(uint64_t result, int a2, int a3)
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

ValueMetadata *type metadata accessor for StateCaptureStateData()
{
  return &type metadata for StateCaptureStateData;
}

{
  return &type metadata for StateCaptureStateData;
}

ValueMetadata *type metadata accessor for StateCaptureDateType()
{
  return &type metadata for StateCaptureDateType;
}

{
  return &type metadata for StateCaptureDateType;
}

uint64_t sub_24AD7CB74()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066410);
  v1 = __swift_project_value_buffer(v0, qword_281066410);
  if (qword_281066280 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t StateCapture.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v4 = sub_24AD8452C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StateCapture.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  return sub_24AD7E824(a1, a2, StateCapture.init(_:));
}

{
  return sub_24AD7E824(a1, a2, StateCapture.init(_:));
}

uint64_t StateCapture.init(_:)(uint64_t a1, uint64_t a2)
{
  return sub_24AD7E898(a1, a2, &unk_285E2D0C0, sub_24AD80CF0);
}

{
  return sub_24AD7E898(a1, a2, &unk_285E2D0E8, sub_24AD80DB0);
}

uint64_t sub_24AD7CCEC@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a5;
  v85 = a4;
  v82 = a2;
  v83 = a3;
  v86 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7318, &qword_24AD85A20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v66 - v9;
  v69 = type metadata accessor for StateCaptureDateType();
  Description = v69[-1].Description;
  v10 = Description[8];
  MEMORY[0x28223BE20](v69);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StateCaptureHint();
  v81 = v12[-1].Description;
  v13 = v81[8];
  MEMORY[0x28223BE20](v12);
  v79 = v14;
  v90 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_24AD8452C();
  v80 = *(v89 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v89);
  v78 = v16;
  v88 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v66 - v19;
  v21 = type metadata accessor for StateCaptureReason();
  v22 = v21[-1].Description;
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v25 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for StateCaptureHintAPI();
  v27 = v26[-1].Description;
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD8440C();
  v77 = dispatch_semaphore_create(0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7330, &qword_24AD85A38);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v87 = sub_24AD843FC();
  v76 = StateCaptureHint.version.getter();
  v34 = StateCaptureHint.requestor.getter();
  v74 = v35;
  v75 = v34;
  StateCaptureHint.api.getter(v30);
  v36 = StateCaptureHintAPI.rawValue.getter();
  result = (v27[1])(v30, v26);
  v73 = v36 - 1;
  if ((v36 - 1) > 2)
  {
    __break(1u);
  }

  else
  {
    StateCaptureHint.reason.getter(v25);
    v71 = StateCaptureReason.rawValue.getter();
    (v22[1])(v25, v21);
    v38 = sub_24AD846CC();
    v39 = *(*(v38 - 8) + 56);
    v72 = v20;
    v39(v20, 1, 1, v38);
    v40 = v80;
    (*(v80 + 16))(v88, v82, v89);
    v41 = v81;
    (v81[2])(v90, a1, v12);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = (v78 + *(v41 + 80) + v42) & ~*(v41 + 80);
    v44 = (v79 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 39) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = v12;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    (*(v40 + 32))(v48 + v42, v88, v89);
    (v41[4])(v48 + v43, v90, v82);
    v49 = (v48 + v44);
    v50 = v85;
    *v49 = v83;
    v49[1] = v50;
    v51 = v48 + v45;
    *v51 = v76;
    v52 = v74;
    *(v51 + 8) = v75;
    *(v51 + 16) = v52;
    *(v51 + 24) = v73;
    *(v51 + 28) = v71;
    *(v48 + v46) = v87;
    v53 = v77;
    *(v48 + v47) = v77;
    *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;

    v54 = v53;
    sub_24AD81660(0, 0, v72, &unk_24AD85A48, v48);

    sub_24AD8477C();
    sub_24AD843DC();
    v55 = v92;
    if (!v92)
    {

      v64 = 1;
      v62 = v86;
      goto LABEL_6;
    }

    v56 = v91;
    v57 = v93;
    v58 = v94;

    sub_24AD7C610(v57, v58);
    v59 = v70;
    StateCaptureDateType.init(rawValue:)(1u);
    v60 = Description;
    v61 = v69;
    result = (Description[6])(v59, 1, v69);
    v62 = v86;
    if (result != 1)
    {
      v63 = v67;
      (v60[4])(v67, v59, v61);
      StateCaptureStateData.init(type:title:data:)(v63, v56, v55, v57, v58, v62);
      sub_24AD81098(v56, v55, v57, v58);

      v64 = 0;
LABEL_6:
      v65 = type metadata accessor for StateCaptureStateData();
      return (*(v65[-1].Description + 7))(v62, v64, 1, v65);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AD7D44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 + 176) = v28;
  *(v8 + 144) = v26;
  *(v8 + 160) = v27;
  *(v8 + 424) = a8;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  v9 = sub_24AD84A5C();
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v12 = type metadata accessor for StateCaptureHint();
  *(v8 + 208) = v12;
  Description = v12[-1].Description;
  *(v8 + 216) = Description;
  v14 = Description[8] + 15;
  *(v8 + 224) = swift_task_alloc();
  v15 = sub_24AD8452C();
  *(v8 + 232) = v15;
  v16 = *(v15 - 8);
  *(v8 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v18 = sub_24AD8489C();
  *(v8 + 280) = v18;
  v19 = *(v18 - 8);
  *(v8 + 288) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v21 = sub_24AD848BC();
  *(v8 + 352) = v21;
  v22 = *(v21 - 8);
  *(v8 + 360) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD7D704, 0, 0);
}

uint64_t sub_24AD7D704()
{
  v45 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  sub_24AD848AC();
  sub_24AD8487C();
  if (qword_281066408 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 272);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = sub_24AD8455C();
  *(v0 + 376) = __swift_project_value_buffer(v11, qword_281066410);
  v12 = *(v5 + 16);
  *(v0 + 384) = v12;
  *(v0 + 392) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3, v10, v4);
  (*(v7 + 16))(v6, v9, v8);
  v13 = sub_24AD8453C();
  v14 = sub_24AD8473C();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 272);
  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v21 = *(v0 + 208);
  if (v15)
  {
    v41 = v14;
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v22 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
    v23 = sub_24AD848FC();
    v39 = v21;
    log = v13;
    v24 = v20;
    v26 = v25;
    v27 = *(v17 + 8);
    v27(v16, v18);
    v28 = sub_24AD73F2C(v23, v26, &v44);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    sub_24AD81138(&qword_281066270, type metadata accessor for StateCaptureHint);
    v29 = sub_24AD848FC();
    v31 = v30;
    (*(v19 + 8))(v24, v39);
    v32 = sub_24AD73F2C(v29, v31, &v44);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_24AD6F000, log, v41, "Running state capture %{public}s: hint: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v42, -1, -1);
    MEMORY[0x24C2300D0](v22, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v20, v21);
    v27 = *(v17 + 8);
    v27(v16, v18);
  }

  *(v0 + 400) = v27;
  v33 = *(v0 + 160);
  v34 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 424);
  *(v0 + 56) = *(v0 + 144);
  *(v0 + 72) = v33;
  *(v0 + 76) = HIDWORD(v33);
  v43 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  *(v0 + 408) = v36;
  *v36 = v0;
  v36[1] = sub_24AD7DB20;
  v37 = *(v0 + 136);

  return v43(v0 + 16, v0 + 48);
}

uint64_t sub_24AD7DB20()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_24AD7E18C;
  }

  else
  {
    v3 = sub_24AD7DC34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD7DC34()
{
  v83 = v0;
  loga = v0[48];
  v69 = v0[49];
  v1 = v0[46];
  v79 = v0[47];
  v2 = v0[42];
  v72 = v0[43];
  v75 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v57 = v0[33];
  v59 = v0[29];
  v62 = v0[41];
  v5 = v0[14];
  v7 = v0[2];
  v6 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  sub_24AD8487C();
  (loga)(v57, v5, v59);
  v10 = *(v3 + 16);
  v10(v62, v72, v4);
  v10(v75, v2, v4);
  sub_24AD8104C(v7, v6, v9, v8);
  v11 = sub_24AD8453C();
  v12 = sub_24AD8473C();
  v80 = v7;
  v73 = v8;
  v76 = v9;
  sub_24AD81098(v7, v6, v9, v8);
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[50];
  v78 = v6;
  if (v13)
  {
    v63 = v12;
    log = v11;
    v15 = v0[33];
    v16 = v0[29];
    v17 = v0[30];
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v82 = v60;
    *v18 = 136446722;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
    v19 = sub_24AD848FC();
    v21 = v20;
    v14(v15, v16);
    v22 = sub_24AD73F2C(v19, v21, &v82);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    if (v6)
    {

      v23 = v80;
      v24 = v6;
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    v33 = v0[40];
    v32 = v0[41];
    v35 = v0[35];
    v34 = v0[36];
    v37 = v0[24];
    v36 = v0[25];
    v71 = v0[23];
    v38 = sub_24AD73F2C(v23, v24, &v82);

    *(v18 + 14) = v38;
    *(v18 + 22) = 2080;
    sub_24AD84A4C();
    sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8]);
    v39 = sub_24AD84A2C();
    v41 = v40;
    (*(v37 + 8))(v36, v71);
    v42 = *(v34 + 8);
    v42(v33, v35);
    v70 = v42;
    v42(v32, v35);
    v43 = sub_24AD73F2C(v39, v41, &v82);

    *(v18 + 24) = v43;
    _os_log_impl(&dword_24AD6F000, log, v63, "State capture duration: %{public}s [%s]: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v60, -1, -1);
    MEMORY[0x24C2300D0](v18, -1, -1);
  }

  else
  {
    v25 = v0[40];
    v26 = v0[41];
    v27 = v0[35];
    v28 = v0[36];
    logb = v0[33];
    v29 = v0[29];
    v30 = v0[30];

    v31 = *(v28 + 8);
    v31(v25, v27);
    v70 = v31;
    v31(v26, v27);
    v14(logb, v29);
  }

  v45 = v0[21];
  v44 = v0[22];
  v0[10] = v80;
  v0[11] = v78;
  v0[12] = v76;
  v0[13] = v73;
  sub_24AD8104C(v80, v78, v76, v73);
  sub_24AD843EC();
  sub_24AD8478C();
  sub_24AD81098(v80, v78, v76, v73);
  v46 = v0[45];
  v47 = v0[46];
  v49 = v0[43];
  v48 = v0[44];
  v50 = v0[41];
  v55 = v0[40];
  v56 = v0[39];
  v58 = v0[38];
  v61 = v0[37];
  v51 = v0[35];
  v64 = v0[34];
  logc = v0[33];
  v74 = v0[32];
  v77 = v0[31];
  v52 = v0[28];
  v81 = v0[25];
  v70(v0[42], v51);
  v70(v49, v51);
  (*(v46 + 8))(v47, v48);

  v53 = v0[1];

  return v53();
}

uint64_t sub_24AD7E18C()
{
  v87 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  (*(v0 + 384))(*(v0 + 256), *(v0 + 112), *(v0 + 232));
  MEMORY[0x24C22FF80](v1);
  v4 = sub_24AD8453C();
  v5 = sub_24AD8471C();

  if (os_log_type_enabled(v4, v5))
  {
    v79 = *(v0 + 400);
    v82 = *(v0 + 416);
    v6 = *(v0 + 256);
    v7 = *(v0 + 232);
    v75 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v86 = v10;
    *v8 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
    v11 = sub_24AD848FC();
    v13 = v12;
    v79(v6, v7);
    v14 = sub_24AD73F2C(v11, v13, &v86);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    MEMORY[0x24C22FF80](v82);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_24AD6F000, v4, v5, "Error from StateCapture handler %{public}s: %@", v8, 0x16u);
    sub_24AD761E8(v9, &qword_27EFA7320, &qword_24AD85A28);
    MEMORY[0x24C2300D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x24C2300D0](v10, -1, -1);
    MEMORY[0x24C2300D0](v8, -1, -1);
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 256);
    v18 = *(v0 + 232);
    v19 = *(v0 + 240);

    v16(v17, v18);
  }

  v20 = *(v0 + 384);
  v21 = *(v0 + 368);
  v72 = *(v0 + 392);
  v76 = *(v0 + 344);
  v23 = *(v0 + 304);
  v22 = *(v0 + 312);
  v24 = *(v0 + 288);
  v80 = *(v0 + 296);
  v83 = *(v0 + 376);
  v25 = *(v0 + 280);
  v26 = *(v0 + 248);
  v27 = *(v0 + 232);
  v28 = *(v0 + 112);
  sub_24AD8487C();
  v20(v26, v28, v27);
  v29 = *(v24 + 16);
  v29(v23, v76, v25);
  v29(v80, v22, v25);
  v30 = sub_24AD8453C();
  v31 = sub_24AD8473C();
  v32 = os_log_type_enabled(v30, v31);
  v84 = *(v0 + 400);
  v34 = *(v0 + 296);
  v33 = *(v0 + 304);
  v36 = *(v0 + 280);
  v35 = *(v0 + 288);
  v38 = *(v0 + 240);
  v37 = *(v0 + 248);
  v39 = *(v0 + 232);
  if (v32)
  {
    v81 = v31;
    v40 = *(v0 + 200);
    v68 = *(v0 + 192);
    v73 = *(v0 + 184);
    v66 = *(v0 + 296);
    v41 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v86 = v77;
    *v41 = 136446466;
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
    log = v30;
    v42 = sub_24AD848FC();
    v64 = v33;
    v44 = v43;
    v84(v37, v39);
    v45 = sub_24AD73F2C(v42, v44, &v86);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    sub_24AD84A4C();
    sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8]);
    v46 = sub_24AD84A2C();
    v48 = v47;
    (*(v68 + 8))(v40, v73);
    v49 = *(v35 + 8);
    v49(v66, v36);
    v49(v64, v36);
    v50 = sub_24AD73F2C(v46, v48, &v86);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_24AD6F000, log, v81, "State capture duration: %{public}s: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v77, -1, -1);
    MEMORY[0x24C2300D0](v41, -1, -1);
  }

  else
  {

    v49 = *(v35 + 8);
    v49(v34, v36);
    v49(v33, v36);
    v84(v37, v39);
  }

  v51 = *(v0 + 416);
  v52 = *(v0 + 176);
  sub_24AD8478C();

  v53 = *(v0 + 360);
  v54 = *(v0 + 368);
  v56 = *(v0 + 344);
  v55 = *(v0 + 352);
  v57 = *(v0 + 336);
  v62 = *(v0 + 328);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v67 = *(v0 + 296);
  v58 = *(v0 + 280);
  v69 = *(v0 + 272);
  loga = *(v0 + 264);
  v74 = *(v0 + 256);
  v78 = *(v0 + 248);
  v59 = *(v0 + 224);
  v85 = *(v0 + 200);
  v49(*(v0 + 312), v58);
  v49(v56, v58);
  (*(v53 + 8))(v54, v55);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_24AD7E824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return a3(a1, a2);
}

uint64_t sub_24AD7E898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a1;
  v89 = a4;
  v87 = a3;
  v5 = v4;
  v91 = a2;
  v94 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA72F8, &qword_24AD859B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v78 - v8;
  v9 = type metadata accessor for StateCaptureHandle();
  Description = v9[-1].Description;
  v96 = v9;
  v10 = Description[8];
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v78 - v13;
  v97 = sub_24AD8452C();
  v93 = *(v97 - 8);
  v84 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v97);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v20 = sub_24AD8474C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v22 = sub_24AD8457C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_24AD8475C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_queue;
  sub_24AD80C40();
  (*(v25 + 104))(v28, *MEMORY[0x277D85268], v24);
  sub_24AD8456C();
  v98[0] = MEMORY[0x277D84F90];
  sub_24AD81138(&qword_281066238, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7300, &qword_24AD859B8);
  sub_24AD80C8C();
  sub_24AD8480C();
  v30 = v91;
  v31 = v29;
  *(v4 + v29) = sub_24AD8476C();
  sub_24AD8451C();
  v32 = v93;
  v33 = v93 + 16;
  v34 = *(v93 + 16);
  v80 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v35 = v97;
  v34(v4 + OBJC_IVAR____TtC12FindMyCommon12StateCapture_id, v19, v97);
  v36 = v85;
  v92 = v19;
  v81 = v33;
  v82 = v34;
  v34(v85, v19, v35);
  v37 = v32;
  v38 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v39 = (v84 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v38, v36, v35);
  v42 = (v41 + v39);
  *v42 = v88;
  v42[1] = v30;
  v43 = Description;
  *(v41 + v40) = v94;
  v44 = *(v5 + v31);
  v45 = v86;

  v46 = v44;
  os_state_add_handler(queue:block:)(v89, v41, v45);

  v47 = v96;
  if ((v43[6])(v45, 1, v96) == 1)
  {
    v48 = *(v37 + 8);
    v49 = v97;
    v48(v92, v97);

    sub_24AD761E8(v45, &qword_27EFA72F8, &qword_24AD859B0);
    v48((v5 + v80), v49);

    v50 = *(*v5 + 48);
    v51 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v94 = v41;
    v52 = v92;
    v53 = v90;
    (v43[4])(v90, v45, v47);
    v54 = v43[2];
    v54(v5 + OBJC_IVAR____TtC12FindMyCommon12StateCapture_handle, v53, v47);
    if (qword_281066408 != -1)
    {
      swift_once();
    }

    v55 = sub_24AD8455C();
    __swift_project_value_buffer(v55, qword_281066410);
    v56 = v83;
    v82(v83, v52, v97);

    v57 = sub_24AD8453C();
    v58 = sub_24AD8470C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      LODWORD(v87) = v58;
      v60 = v97;
      v89 = v5;
      v61 = v59;
      v88 = swift_slowAlloc();
      v98[0] = v88;
      *v61 = 136446466;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
      v62 = sub_24AD848FC();
      v64 = v63;
      v93 = *(v93 + 8);
      (v93)(v56, v60);
      v65 = sub_24AD73F2C(v62, v64, v98);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v66 = v79;
      v67 = v96;
      v54(v79, (v89 + OBJC_IVAR____TtC12FindMyCommon12StateCapture_handle), v96);
      sub_24AD81138(&qword_27EFA7308, type metadata accessor for StateCaptureHandle);
      v68 = sub_24AD848FC();
      v70 = v69;
      v71 = Description[1];
      v71(v66, v67);
      v72 = sub_24AD73F2C(v68, v70, v98);

      *(v61 + 14) = v72;
      _os_log_impl(&dword_24AD6F000, v57, v87, "Added handler: %{public}s %s", v61, 0x16u);
      v73 = v88;
      swift_arrayDestroy();
      MEMORY[0x24C2300D0](v73, -1, -1);
      v74 = v61;
      v5 = v89;
      MEMORY[0x24C2300D0](v74, -1, -1);

      v71(v90, v67);
      (v93)(v92, v60);
    }

    else
    {

      v75 = *(v93 + 8);
      v76 = v97;
      v75(v56, v97);
      (Description[1])(v90, v96);
      v75(v92, v76);
    }
  }

  return v5;
}

uint64_t sub_24AD7F214@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, int *)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a4;
  v156 = a3;
  v169 = a2;
  v157 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7318, &qword_24AD85A20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v128 - v8;
  v130 = type metadata accessor for StateCaptureDateType();
  Description = v130[-1].Description;
  v9 = Description[8];
  MEMORY[0x28223BE20](v130);
  v129 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_24AD84A5C();
  v135 = *(v136 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for StateCaptureHint();
  v153 = v154[-1].Description;
  v13 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_24AD8452C();
  v170 = *(v165 - 8);
  isa = v170[8].isa;
  v16 = MEMORY[0x28223BE20](v165);
  v142 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v159 = &v128 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v128 - v22;
  v162 = sub_24AD8489C();
  v158 = *(v162 - 8);
  v24 = *(v158 + 64);
  v25 = MEMORY[0x28223BE20](v162);
  v140 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v141 = &v128 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v143 = &v128 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v160 = &v128 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v137 = &v128 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v161 = &v128 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v128 - v37;
  v148 = sub_24AD848BC();
  v147 = *(v148 - 8);
  v39 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v41 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StateCaptureReason();
  v43 = v42[-1].Description;
  v44 = v43[8];
  MEMORY[0x28223BE20](v42);
  v46 = (&v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for StateCaptureHintAPI();
  v48 = v47[-1].Description;
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v128 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = StateCaptureHint.version.getter();
  v149 = StateCaptureHint.requestor.getter();
  v151 = v52;
  v167 = a1;
  StateCaptureHint.api.getter(v51);
  v53 = StateCaptureHintAPI.rawValue.getter();
  result = (v48[1])(v51, v47);
  if ((v53 - 1) > 2)
  {
    __break(1u);
  }

  else
  {
    v146 = v53 - 1;
    StateCaptureHint.reason.getter(v46);
    v145 = StateCaptureReason.rawValue.getter();
    (v43[1])(v46, v42);
    sub_24AD848AC();
    sub_24AD8487C();
    v166 = v41;
    v55 = v38;
    if (qword_281066408 != -1)
    {
      swift_once();
    }

    v56 = sub_24AD8455C();
    v57 = __swift_project_value_buffer(v56, qword_281066410);
    v58 = v170;
    v59 = v170[2].isa;
    v60 = v165;
    v163 = v170 + 2;
    v59(v23, v169, v165);
    v61 = v153;
    v62 = v152;
    v63 = v154;
    (*(v153 + 16))(v152, v167, v154);
    v164 = v57;
    v64 = sub_24AD8453C();
    v133 = sub_24AD8473C();
    v144 = v64;
    v65 = os_log_type_enabled(v64, v133);
    v168 = v55;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v138 = v59;
      v68 = v67;
      v176[0] = v67;
      *v66 = 136446466;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
      v69 = sub_24AD848FC();
      v71 = v70;
      v167 = v58[1].isa;
      v167(v23, v60);
      v72 = sub_24AD73F2C(v69, v71, v176);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2082;
      sub_24AD81138(&qword_281066270, type metadata accessor for StateCaptureHint);
      v73 = sub_24AD848FC();
      v75 = v74;
      (*(v61 + 8))(v62, v63);
      v76 = sub_24AD73F2C(v73, v75, v176);
      v60 = v165;

      *(v66 + 14) = v76;
      v77 = v144;
      _os_log_impl(&dword_24AD6F000, v144, v133, "Running state capture %{public}s: hint: %{public}s)", v66, 0x16u);
      swift_arrayDestroy();
      v78 = v68;
      v59 = v138;
      MEMORY[0x24C2300D0](v78, -1, -1);
      MEMORY[0x24C2300D0](v66, -1, -1);
    }

    else
    {

      (*(v61 + 8))(v62, v63);
      v167 = v58[1].isa;
      v167(v23, v60);
    }

    v80 = v159;
    v79 = v160;
    v171 = v150;
    v172 = v149;
    v173 = v151;
    v174 = v146;
    v175 = v145;
    v156(v176, &v171);
    v81 = v161;

    v82 = v176[0];
    v83 = v176[1];
    v84 = v176[3];
    v156 = v176[2];
    sub_24AD8487C();
    v59(v80, v169, v60);
    v85 = v158;
    v86 = *(v158 + 16);
    v87 = v137;
    v88 = v162;
    v86(v137, v168, v162);
    v86(v79, v81, v88);
    v89 = v156;
    sub_24AD8104C(v82, v83, v156, v84);
    v90 = sub_24AD8453C();
    v91 = sub_24AD8473C();
    v169 = v82;
    v164 = v83;
    v92 = v83;
    v93 = v84;
    sub_24AD81098(v82, v92, v89, v84);
    if (os_log_type_enabled(v90, v91))
    {
      v94 = v88;
      LODWORD(v154) = v91;
      v163 = v90;
      v95 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v176[0] = v153;
      *v95 = 136446722;
      sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
      v96 = v159;
      v97 = v165;
      v98 = sub_24AD848FC();
      v100 = v99;
      v167(v96, v97);
      v101 = sub_24AD73F2C(v98, v100, v176);

      *(v95 + 4) = v101;
      *(v95 + 12) = 2080;
      v102 = v164;
      v155 = v84;
      if (v164)
      {

        v103 = v169;
        v104 = v102;
      }

      else
      {
        v103 = 0;
        v104 = 0xE000000000000000;
      }

      v109 = v85;
      v110 = sub_24AD73F2C(v103, v104, v176);

      *(v95 + 14) = v110;
      *(v95 + 22) = 2080;
      v111 = v134;
      sub_24AD84A4C();
      sub_24AD81138(&qword_281066220, MEMORY[0x277D858F8]);
      v112 = v137;
      v113 = v160;
      v114 = sub_24AD84A2C();
      v116 = v115;
      (*(v135 + 8))(v111, v136);
      v117 = v113;
      v105 = *(v109 + 8);
      v105(v117, v94);
      v105(v112, v94);
      v118 = sub_24AD73F2C(v114, v116, v176);

      *(v95 + 24) = v118;
      v119 = v163;
      _os_log_impl(&dword_24AD6F000, v163, v154, "State capture duration: %{public}s [%s]: %s", v95, 0x20u);
      v120 = v153;
      swift_arrayDestroy();
      MEMORY[0x24C2300D0](v120, -1, -1);
      MEMORY[0x24C2300D0](v95, -1, -1);

      v105(v161, v94);
      v107 = v168;
      v108 = v169;
      v106 = Description;
      v93 = v155;
      v89 = v156;
    }

    else
    {

      v105 = *(v85 + 8);
      v105(v160, v88);
      v105(v87, v88);
      v167(v159, v165);
      v105(v161, v88);
      v106 = Description;
      v107 = v168;
      v108 = v169;
      v102 = v164;
    }

    v121 = v157;
    v122 = v132;
    if (!v102)
    {
      v105(v107, v162);
      v126 = 1;
      goto LABEL_16;
    }

    v170 = v105;
    sub_24AD8104C(v108, v102, v89, v93);

    sub_24AD7C610(v89, v93);
    StateCaptureDateType.init(rawValue:)(1u);
    v123 = v130;
    result = (v106[6])(v122, 1, v130);
    if (result != 1)
    {
      v124 = v93;
      v125 = v129;
      (v106[4])(v129, v122, v123);
      StateCaptureStateData.init(type:title:data:)(v125, v108, v102, v89, v124, v121);
      sub_24AD81098(v108, v102, v89, v124);
      sub_24AD81098(v108, v102, v89, v124);
      (v170)(v168, v162);
      v126 = 0;
LABEL_16:
      (*(v147 + 8))(v166, v148);
      v127 = type metadata accessor for StateCaptureStateData();
      return (*(v127[-1].Description + 7))(v121, v126, 1, v127);
    }
  }

  __break(1u);
  return result;
}

uint64_t StateCapture.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for StateCaptureHandle();
  Description = v2[-1].Description;
  v4 = Description[8];
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281066408 != -1)
  {
    swift_once();
  }

  v7 = sub_24AD8455C();
  __swift_project_value_buffer(v7, qword_281066410);

  v8 = sub_24AD8453C();
  v9 = sub_24AD8470C();

  v10 = 0x281066000;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446466;
    sub_24AD8452C();
    sub_24AD81138(qword_281066438, MEMORY[0x277CC95F0]);
    v13 = sub_24AD848FC();
    v15 = sub_24AD73F2C(v13, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_24AD81138(&qword_27EFA7308, type metadata accessor for StateCaptureHandle);
    v16 = sub_24AD848FC();
    v18 = sub_24AD73F2C(v16, v17, &v25);
    v10 = 0x281066000uLL;

    *(v11 + 14) = v18;
    _os_log_impl(&dword_24AD6F000, v8, v9, "Removing handler: %{public}s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2300D0](v12, -1, -1);
    MEMORY[0x24C2300D0](v11, -1, -1);
  }

  v19 = *(v10 + 1064);
  (Description[2])(v6, v1 + v19, v2);
  os_state_remove_handler(_:)(v6);
  v20 = Description[1];
  v20(v6, v2);
  v21 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v22 = sub_24AD8452C();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);

  v20((v1 + v19), v2);
  return v1;
}

uint64_t StateCapture.__deallocating_deinit()
{
  StateCapture.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AD80B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12FindMyCommon12StateCapture_id;
  v5 = sub_24AD8452C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AD80BC0()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066288);
  __swift_project_value_buffer(v0, qword_281066288);
  return sub_24AD8454C();
}

unint64_t sub_24AD80C40()
{
  result = qword_281066230;
  if (!qword_281066230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281066230);
  }

  return result;
}

unint64_t sub_24AD80C8C()
{
  result = qword_281066240;
  if (!qword_281066240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA7300, &qword_24AD859B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066240);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AD8452C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AD80DC8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24AD8452C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + v7);

  return a2(a1, v2 + v5, v9, v10, v11);
}

uint64_t type metadata accessor for StateCapture()
{
  result = qword_2810663F8;
  if (!qword_2810663F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD80F34()
{
  result = sub_24AD8452C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for StateCaptureHandle();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of StateCapture.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

void sub_24AD8104C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_24AD7C610(a3, a4);
  }
}

void sub_24AD81098(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_24AD810E4(a3, a4);
  }
}

uint64_t sub_24AD810E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AD81138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AD81180(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_24AD8452C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  Description = type metadata accessor for StateCaptureHint()[-1].Description;
  v8 = (v5 + v6 + *(Description + 80)) & ~*(Description + 80);
  v9 = (Description[8] + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v1 + 24);
  v26 = *(v1 + 16);
  v13 = (v1 + v9);
  v23 = v13[1];
  v24 = *v13;
  v22 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v14 = *(v1 + v10 + 16);
  v16 = *(v1 + v10 + 24) | (*(v1 + v10 + 28) << 32);
  v17 = *(v1 + v11);
  v18 = *(v1 + v12);
  v19 = *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_24AD75E64;

  return sub_24AD7D44C(a1, v26, v25, v1 + v5, v1 + v8, v24, v23, v22);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AD813B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD813EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AD81438(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AD81484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AD814C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AD8150C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24AD81558()
{
  result = qword_27EFA7338;
  if (!qword_27EFA7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7338);
  }

  return result;
}

uint64_t sub_24AD815AC()
{
  sub_24AD849DC();
  MEMORY[0x24C22FB10](0);
  return sub_24AD84A0C();
}

uint64_t sub_24AD81618()
{
  sub_24AD849DC();
  MEMORY[0x24C22FB10](0);
  return sub_24AD84A0C();
}

uint64_t sub_24AD81660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AD82F1C(a3, v27 - v11);
  v13 = sub_24AD846CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AD761E8(v12, &qword_27EFA7328, &qword_24AD85A30);
  }

  else
  {
    sub_24AD846BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AD846AC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AD8461C() + 32;
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

      sub_24AD761E8(a3, &qword_27EFA7328, &qword_24AD85A30);

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

  sub_24AD761E8(a3, &qword_27EFA7328, &qword_24AD85A30);
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

uint64_t sub_24AD81950()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_2810661A8);
  v1 = __swift_project_value_buffer(v0, qword_2810661A8);
  if (qword_281066198 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281066770);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD81A18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7348, &unk_24AD85D88);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_2810661D0 = result;
  return result;
}

uint64_t sub_24AD81A58()
{
  type metadata accessor for ReferenceClock.IsolationDomain();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27EFA7340 = v0;
  return result;
}

uint64_t sub_24AD81A98()
{
  v0 = sub_24AD8450C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AD844EC();
  sub_24AD844CC();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  qword_281066200 = v6;
  return result;
}

double sub_24AD81B70()
{
  if (qword_2810661F8 != -1)
  {
    swift_once();
  }

  result = *&qword_281066200;
  qword_2810661E8 = qword_281066200;
  return result;
}

double static ReferenceClock.convert(toSystem:)(double a1)
{
  v2 = TMIsAutomaticTimeEnabled()();
  if (!v2)
  {
    v3 = sub_24AD709EC(v2);
    if (qword_2810661C8 != -1)
    {
      v3 = swift_once();
    }

    v4 = qword_2810661D0;
    MEMORY[0x28223BE20](v3);
    os_unfair_lock_lock(v4 + 4);
    sub_24AD82BC0(&v6);
    os_unfair_lock_unlock(v4 + 4);
    return v6 + a1;
  }

  return a1;
}

double static ReferenceClock.convert(toReference:)(double a1)
{
  v2 = TMIsAutomaticTimeEnabled()();
  if (!v2)
  {
    v3 = sub_24AD709EC(v2);
    if (qword_2810661C8 != -1)
    {
      v3 = swift_once();
    }

    v4 = qword_2810661D0;
    MEMORY[0x28223BE20](v3);
    os_unfair_lock_lock(v4 + 4);
    sub_24AD8311C(&v6);
    os_unfair_lock_unlock(v4 + 4);
    return a1 - v6;
  }

  return a1;
}

uint64_t sub_24AD81DA4()
{
  if (qword_27EFA7200 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFA7340;

  return MEMORY[0x2822009F8](sub_24AD81E38, v0, 0);
}

uint64_t sub_24AD81E38()
{
  sub_24AD81ED0(1);
  v1 = *(v0 + 8);

  return v1();
}

void static ReferenceClock.calibrate()(uint64_t a1)
{
  if (!sub_24AD709EC(a1))
  {

    sub_24AD81ED0(0);
  }
}

void sub_24AD81ED0(char a1)
{
  v2 = sub_24AD8450C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v7 = qword_2810661D0;
    (MEMORY[0x28223BE20])();
    v49 = sub_24AD82EC8;
    v50 = 0;
    os_unfair_lock_lock(v7 + 4);
    sub_24AD82ED8(v54);
    os_unfair_lock_unlock(v7 + 4);
    if (LOBYTE(v54[0]) != 1)
    {
      return;
    }
  }

  sub_24AD8441C();
  if (!v54[3])
  {
    sub_24AD761E8(v54, &qword_27EFA7270, &qword_24AD85238);
LABEL_32:
    if (qword_2810661A0 != -1)
    {
      swift_once();
    }

    v45 = sub_24AD8455C();
    __swift_project_value_buffer(v45, qword_2810661A8);
    v46 = sub_24AD8453C();
    v47 = sub_24AD8472C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_24AD6F000, v46, v47, "Missing com.apple.timed entitlement!", v48, 2u);
      MEMORY[0x24C2300D0](v48, -1, -1);
    }

    sub_24AD848CC();
    __break(1u);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v53 != 1)
  {
    goto LABEL_32;
  }

  v8 = TMIsAutomaticTimeEnabled()();
  if (v8)
  {
    if (qword_2810661C8 != -1)
    {
      v8 = swift_once();
    }

    v9 = qword_2810661D0;
    MEMORY[0x28223BE20](v8);
    v49 = sub_24AD82EB0;
    v50 = 0;
    os_unfair_lock_lock(v9 + 4);
    sub_24AD83180();
    os_unfair_lock_unlock(v9 + 4);
    if (qword_2810661A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24AD8455C();
    __swift_project_value_buffer(v10, qword_2810661A8);
    v11 = sub_24AD8453C();
    v12 = sub_24AD8473C();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_29;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v54[0] = v14;
    *v13 = 136446210;
    static ReferenceClock.timeInterval.getter();
    sub_24AD844BC();
    sub_24AD82E58();
    v15 = sub_24AD848FC();
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    v18 = sub_24AD73F2C(v15, v17, v54);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AD6F000, v11, v12, "ReferenceClock calibrated: %{public}s delta: 0.0 uncertainty: 0.0", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x24C2300D0](v14, -1, -1);
    v19 = v13;
LABEL_28:
    MEMORY[0x24C2300D0](v19, -1, -1);
LABEL_29:

    return;
  }

  if (qword_2810661A0 != -1)
  {
    swift_once();
  }

  v20 = sub_24AD8455C();
  __swift_project_value_buffer(v20, qword_2810661A8);
  v21 = sub_24AD8453C();
  v22 = sub_24AD8473C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24AD6F000, v21, v22, "Automatic time is DISABLED", v23, 2u);
    MEMORY[0x24C2300D0](v23, -1, -1);
  }

  *&v24 = COERCE_DOUBLE(sub_24AD82D44());
  if ((v26 & 0x100000000) == 0)
  {
    v27 = v25;
    v52 = v26;
    v28 = *&v24;
    v29 = v25;
    Current = CFAbsoluteTimeGetCurrent();
    if (v29 > 1.0)
    {
      v31 = sub_24AD8453C();
      v32 = sub_24AD8471C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = v27;
        *(v33 + 12) = 1024;
        *(v33 + 14) = v52;
        _os_log_impl(&dword_24AD6F000, v31, v32, "TMGMReferenceTime reports high uncertainty: %f (reliability: %d", v33, 0x12u);
        MEMORY[0x24C2300D0](v33, -1, -1);
      }
    }

    v34 = Current - v28;
    if (qword_2810661C8 != -1)
    {
      swift_once();
    }

    v35 = qword_2810661D0;
    v36 = (MEMORY[0x28223BE20])();
    *(&v51 - 4) = v34;
    *(&v51 - 3) = v27;
    MEMORY[0x28223BE20](v36);
    v49 = sub_24AD82DD4;
    v50 = v37;
    os_unfair_lock_lock(v35 + 4);
    sub_24AD83180();
    os_unfair_lock_unlock(v35 + 4);
    v11 = sub_24AD8453C();
    v38 = sub_24AD8473C();
    if (!os_log_type_enabled(v11, v38))
    {
      goto LABEL_29;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v39 = 136446722;
    static ReferenceClock.timeInterval.getter();
    sub_24AD844BC();
    sub_24AD82E58();
    v41 = sub_24AD848FC();
    v43 = v42;
    (*(v3 + 8))(v6, v2);
    v44 = sub_24AD73F2C(v41, v43, v54);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v34;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v27;
    _os_log_impl(&dword_24AD6F000, v11, v38, "ReferenceClock calibrated: %{public}s delta: %f uncertainty: %f", v39, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x24C2300D0](v40, -1, -1);
    v19 = v39;
    goto LABEL_28;
  }
}

CFAbsoluteTime static ReferenceClock.calibrationAge.getter(uint64_t a1)
{
  v1 = sub_24AD709EC(a1);
  if (qword_2810661C8 != -1)
  {
    v1 = swift_once();
  }

  v2 = qword_2810661D0;
  MEMORY[0x28223BE20](v1);
  os_unfair_lock_lock(v2 + 4);
  sub_24AD83134(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;
  return CFAbsoluteTimeGetCurrent() - *&v3 - *(&v3 + 1);
}

uint64_t sub_24AD827A4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD827E0(uint64_t a1)
{
  v2 = sub_24AD8443C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24AD8442C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_24AD828D4()
{
  qword_2810661C0 = 0;
  qword_2810661F0 = 0;
  if (qword_2810661E0 != -1)
  {
    swift_once();
  }

  qword_2810661E8 = CFAbsoluteTimeGetCurrent();
  byte_2810661D8 = 0;
}

uint64_t sub_24AD8294C()
{
  v0 = sub_24AD8455C();
  __swift_allocate_value_buffer(v0, qword_281066770);
  __swift_project_value_buffer(v0, qword_281066770);
  return sub_24AD8454C();
}

uint64_t sub_24AD829D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD82AC8;

  return v7(a1);
}

uint64_t sub_24AD82AC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_24AD82BD8@<D0>(void *a1@<X8>)
{
  result = *&qword_2810661C0;
  *a1 = qword_2810661C0;
  return result;
}

double sub_24AD82BE8@<D0>(double *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_24AD82C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AD82C64()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD75E64;

  return sub_24AD81D88();
}

uint64_t sub_24AD82D44()
{
  v2 = *MEMORY[0x277D85DE8];
  TMGetReferenceTime(_:_:_:)();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AD82DD4()
{
  v1 = v0[3];
  v2 = v0[4];
  qword_2810661C0 = v0[2];
  qword_2810661F0 = v1;
  if (qword_2810661E0 != -1)
  {
    result = swift_once();
  }

  qword_2810661E8 = v2;
  byte_2810661D8 = 0;
  return result;
}

unint64_t sub_24AD82E58()
{
  result = qword_281066210;
  if (!qword_281066210)
  {
    sub_24AD8450C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281066210);
  }

  return result;
}

void *sub_24AD82ED8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_24AD82F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA7328, &qword_24AD85A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD82F8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD83164;

  return sub_24AD829D0(a1, v5);
}

uint64_t sub_24AD83044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD75E64;

  return sub_24AD829D0(a1, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NonModularSPI::StateCaptureHintAPI_optional __swiftcall StateCaptureHintAPI.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AD837F0()
{
  v1 = 0x75626F746F72702ELL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C61697265732ELL;
  }
}

_BYTE *StateCaptureStateData.init(type:title:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t StateCaptureStateData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24AD8485C();

  v6 = 0xE700000000000000;
  v7 = 0x6D6F747375632ELL;
  if (v1 == 1)
  {
    v7 = 0x75626F746F72702ELL;
    v6 = 0xE900000000000066;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x696C61697265732ELL;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xEB0000000064657ALL;
  }

  MEMORY[0x24C22F760](v8, v9);

  MEMORY[0x24C22F760](0x203A656C74697420, 0xE800000000000000);
  MEMORY[0x24C22F760](v2, v3);
  MEMORY[0x24C22F760](0x203A6174616420, 0xE700000000000000);
  v10 = sub_24AD8449C();
  MEMORY[0x24C22F760](v10);

  MEMORY[0x24C22F760](93, 0xE100000000000000);
  return 0x203A657079745BLL;
}

unint64_t StateCaptureHandle.description.getter()
{
  v1 = *v0;
  sub_24AD8485C();

  sub_24AD83F24();
  v2 = sub_24AD8466C();
  MEMORY[0x24C22F760](v2);

  MEMORY[0x24C22F760](62, 0xE100000000000000);
  return 0xD000000000000017;
}

void os_state_add_handler(queue:block:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_24AD83F78;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24AD83ECC;
  v9[3] = &block_descriptor_1;
  v7 = _Block_copy(v9);

  v8 = os_state_add_handler();
  _Block_release(v7);
  *a3 = v8;
  *(a3 + 8) = v8 == 0;
}

uint64_t sub_24AD83BEC(int *a1, void (*a2)(void *__return_ptr, int *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v7 = a1[4];
  v6 = a1[5];
  if (v5)
  {
    v5 = sub_24AD8464C();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0x2010002u >> (8 * v7);
  v18 = v4;
  v19 = v5;
  v20 = v9;
  if (v7 >= 4)
  {
    LOBYTE(v10) = 2;
  }

  v21 = v10;
  v22 = v6;
  a2(v23, &v18);

  v11 = v24;
  if (!v24)
  {
    return 0;
  }

  v12 = v23[0];
  v13 = v23[1];
  v14 = v25;
  v15 = v26;
  v16 = sub_24AD83CDC();
  sub_24AD84300(v12, v13, v11, v14, v15);
  return v16;
}

uint64_t sub_24AD83CDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_8:
    LODWORD(v7) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = v7;
  }

LABEL_11:
  if (__OFADD__(v7, 200))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = calloc(v7 + 200, 1uLL);
  if (v11)
  {
    v12 = v11;
    *v11 = v1 + 1;
    v13 = (v11 + 34);
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_25;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      v10 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (!v10)
      {
LABEL_22:
        if ((v14 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v14))
          {
            goto LABEL_26;
          }

          __break(1u);
LABEL_25:
          LODWORD(v14) = 0;
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v6)
    {
      LODWORD(v14) = BYTE6(v5);
LABEL_26:
      v11[1] = v14;
      v17 = sub_24AD8461C();
      strlcpy(v13, (v17 + 32), 0x40uLL);

      if (v6 > 1)
      {
        if (v6 != 2 || !__OFSUB__(*(v4 + 24), *(v4 + 16)))
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else if (!v6)
      {
        goto LABEL_34;
      }

      if (!__OFSUB__(HIDWORD(v4), v4))
      {
LABEL_34:
        sub_24AD844AC();
        return v12;
      }

      goto LABEL_39;
    }

    LODWORD(v14) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = v14;
    goto LABEL_22;
  }

LABEL_40:
  result = sub_24AD848CC();
  __break(1u);
  return result;
}

uint64_t sub_24AD83ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

unint64_t sub_24AD83F24()
{
  result = qword_27EFA7350;
  if (!qword_27EFA7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7350);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AD83F9C()
{
  result = qword_27EFA7358;
  if (!qword_27EFA7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7358);
  }

  return result;
}

unint64_t sub_24AD83FF4()
{
  result = qword_27EFA7360;
  if (!qword_27EFA7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7360);
  }

  return result;
}

unint64_t sub_24AD8404C()
{
  result = qword_27EFA7368;
  if (!qword_27EFA7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7368);
  }

  return result;
}

unint64_t sub_24AD840A4()
{
  result = qword_27EFA7370;
  if (!qword_27EFA7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7370);
  }

  return result;
}

unint64_t sub_24AD840FC()
{
  result = qword_27EFA7378;
  if (!qword_27EFA7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7378);
  }

  return result;
}

unint64_t sub_24AD84154()
{
  result = qword_27EFA7380;
  if (!qword_27EFA7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA7380);
  }

  return result;
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

uint64_t sub_24AD841FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AD84244(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for StateCaptureHandle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StateCaptureHandle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_24AD84300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {

    sub_24AD810E4(a4, a5);
  }
}