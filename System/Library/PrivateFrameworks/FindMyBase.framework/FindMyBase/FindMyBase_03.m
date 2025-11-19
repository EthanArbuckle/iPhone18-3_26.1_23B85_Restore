void *sub_1DF5DEFBC(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1DF63371C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_1DF5A0B98(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1DF5DF15C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B70, &qword_1DF6395D0);
  v2 = *v0;
  v3 = sub_1DF63371C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v30 = v1;
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
        v22 = 112 * v17;
        sub_1DF5A7C1C(*(v2 + 56) + 112 * v17, v31);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v26 = v31[1];
        v25 = v31[2];
        *v24 = v31[0];
        v27 = v31[3];
        v28 = v31[4];
        v29 = v31[6];
        v24[5] = v31[5];
        v24[6] = v29;
        v24[3] = v27;
        v24[4] = v28;
        v24[1] = v26;
        v24[2] = v25;
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

        v1 = v30;
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

uint64_t sub_1DF5DF31C()
{
  v1 = sub_1DF63203C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DF63202C();
  sub_1DF63288C();
  swift_getWitnessTable();
  sub_1DF63201C();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t os_activity(name:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 88) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF5DF4B8, 0, 0);
}

uint64_t sub_1DF5DF4B8(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 48);
  v4 = *(v2 + 32);
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v5 = hackyCreateActivity(_:dso:)(v4, a2, *(v2 + 88), &dword_1DF59A000);
  *(v2 + 64) = v5;
  os_activity_scope_enter(v5, (v2 + 16));
  v11 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  *(v2 + 72) = v7;
  *v7 = v2;
  v7[1] = sub_1DF5DF604;
  v8 = *(v2 + 56);
  v9 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1DF5DF604()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DF5DF7E0;
  }

  else
  {
    v3 = sub_1DF5DF744;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5DF744()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0->opaque[1];
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1DF5DF7E0()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[4].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v2 = v0->opaque[1];
  v3 = v0[5].opaque[0];
  v4 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1DF5DF87C()
{
  qword_1ED8E5D88 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1DF5DF8B8()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6910);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6910);
  if (qword_1ED8E4A80 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E6940);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCAlarm.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCAlarm.init(identifier:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5DFA20, 0, 0);
}

uint64_t sub_1DF5DFA20()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  *v3 = v0[3];
  v3[1] = v1;
  v4 = type metadata accessor for XPCAlarm(0);
  sub_1DF5E15B4(v2, v3 + *(v4 + 20), type metadata accessor for XPCAlarm.Criteria);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5DFAE8;
  v6 = v0[2];

  return sub_1DF5DFC58();
}

uint64_t sub_1DF5DFAE8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5DFBE4, 0, 0);
}

uint64_t sub_1DF5DFBE4()
{
  sub_1DF5E161C(*(v0 + 40), type metadata accessor for XPCAlarm.Criteria);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5DFC58()
{
  v1[2] = v0;
  v2 = type metadata accessor for XPCAlarm(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5DFCEC, 0, 0);
}

uint64_t sub_1DF5DFCEC()
{
  v19 = v0;
  _s10FindMyBase8XPCAlarmV10unregister10identifierySS_tFZ_0(**(v0 + 16), *(*(v0 + 16) + 8));
  if (qword_1ED8E4A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E6910);
  sub_1DF5E15B4(v2, v1, type metadata accessor for XPCAlarm);
  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = XPCAlarm.description.getter();
    v12 = v11;
    sub_1DF5E161C(v7, type metadata accessor for XPCAlarm);
    v13 = sub_1DF59EEC8(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Registering %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  else
  {

    sub_1DF5E161C(v7, type metadata accessor for XPCAlarm);
  }

  v14 = *(v0 + 32);
  v15 = *(v0 + 16) + *(*(v0 + 24) + 20);
  sub_1DF5E0090();
  sub_1DF632A7C();
  sub_1DF632A7C();
  xpc_set_event();

  swift_unknownObjectRelease();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t XPCAlarm.description.getter()
{
  sub_1DF63347C();

  v5 = type metadata accessor for XPCAlarm(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B88, &qword_1DF639600);
  v1 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  MEMORY[0x1E12D82E0](*v0, v0[1]);
  MEMORY[0x1E12D82E0](0x6972657469726320, 0xEB00000000203A61);
  v2 = v0 + *(v5 + 20);
  v3 = XPCAlarm.Criteria.description.getter();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1DF5E0090()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  result = sub_1DF6324DC();
  v4 = ceil(v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = 1000000000 * v4;
  if ((v4 * 1000000000) >> 64 != v5 >> 63)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  xpc_dictionary_set_date(v1, "Date", v5);
  v6 = *(v0 + *(type metadata accessor for XPCAlarm.Criteria(0) + 20));
  if ((v6 & 2) != 0)
  {
    xpc_dictionary_set_BOOL(v1, "ShouldWake", 0);
  }

  if ((v6 & 4) != 0)
  {
    xpc_dictionary_set_BOOL(v1, "UserVisible", 1);
  }

  return v1;
}

uint64_t XPCAlarm.Criteria.Options.description.getter()
{
  v1 = *v0;
  if ((*v0 & 2) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DF5C1294(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF5C1294((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, ".shouldNotWake");
  v5[47] = -18;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DF5C1294((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, ".userVisible");
    v8[45] = 0;
    *(v8 + 23) = -5120;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v9 = sub_1DF6328DC();
  v11 = v10;

  MEMORY[0x1E12D82E0](v9, v11);

  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 91;
}

uint64_t XPCAlarm.Criteria.init(date:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DF63252C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for XPCAlarm.Criteria(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t XPCAlarm.Criteria.description.getter()
{
  v1 = v0;
  sub_1DF63347C();

  v2 = type metadata accessor for XPCAlarm.Criteria(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B90, &qword_1DF639608);
  v3 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](0x203A6574616420, 0xE700000000000000);
  if (qword_1ECE42358 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECE42360;
  v5 = sub_1DF63248C();
  v6 = [v4 stringFromDate_];

  v7 = sub_1DF63298C();
  v9 = v8;

  MEMORY[0x1E12D82E0](v7, v9);

  MEMORY[0x1E12D82E0](0x203A6C61636F6C20, 0xE800000000000000);
  if (qword_1ED8E4A20 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED8E4A28;
  v11 = sub_1DF63248C();
  v12 = [v10 stringFromDate_];

  v13 = sub_1DF63298C();
  v15 = v14;

  MEMORY[0x1E12D82E0](v13, v15);

  MEMORY[0x1E12D82E0](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v18 = *(v1 + *(v2 + 20));
  v16 = XPCAlarm.Criteria.Options.description.getter();
  MEMORY[0x1E12D82E0](v16);

  return 60;
}

BOOL static XPCAlarm.Criteria.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DF6324EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for XPCAlarm.Criteria(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1DF5E074C()
{
  if (*v0)
  {
    result = 0x736E6F6974706FLL;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1DF5E0780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

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

uint64_t sub_1DF5E0874(uint64_t a1)
{
  v2 = sub_1DF5E10BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5E08B0(uint64_t a1)
{
  v2 = sub_1DF5E10BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCAlarm.Criteria.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B98, &qword_1DF639610);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E10BC();
  sub_1DF633AFC();
  v14 = 0;
  sub_1DF63252C();
  sub_1DF5E1164(&qword_1ECE42BA8);
  sub_1DF63385C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for XPCAlarm.Criteria(0) + 20));
    v12[15] = 1;
    sub_1DF5E1110();
    sub_1DF63385C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t XPCAlarm.Criteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1DF63252C();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42BB8, &qword_1DF639618);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for XPCAlarm.Criteria(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E10BC();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_1DF5E1164(&qword_1ECE42BC0);
  v19 = v30;
  v20 = v28;
  sub_1DF6337CC();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1DF5E11A8();
  sub_1DF6337CC();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_1DF5E15B4(v22, v26, type metadata accessor for XPCAlarm.Criteria);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF5E161C(v22, type metadata accessor for XPCAlarm.Criteria);
}

uint64_t sub_1DF5E0E98()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6940);
  __swift_project_value_buffer(v0, qword_1ED8E6940);
  return sub_1DF63269C();
}

uint64_t _s10FindMyBase8XPCAlarmV10unregister10identifierySS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (qword_1ED8E4A58 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6910);

  v5 = sub_1DF63268C();
  v6 = sub_1DF63318C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF59EEC8(a1, a2, &v10);
    _os_log_impl(&dword_1DF59A000, v5, v6, "Unregistering %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  sub_1DF632A7C();
  sub_1DF632A7C();
  xpc_set_event();
}

unint64_t sub_1DF5E10BC()
{
  result = qword_1ECE42BA0;
  if (!qword_1ECE42BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BA0);
  }

  return result;
}

unint64_t sub_1DF5E1110()
{
  result = qword_1ECE42BB0;
  if (!qword_1ECE42BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BB0);
  }

  return result;
}

uint64_t sub_1DF5E1164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF63252C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF5E11A8()
{
  result = qword_1ECE42BC8;
  if (!qword_1ECE42BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BC8);
  }

  return result;
}

unint64_t sub_1DF5E1200()
{
  result = qword_1ECE42BD0;
  if (!qword_1ECE42BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BD0);
  }

  return result;
}

unint64_t sub_1DF5E1258()
{
  result = qword_1ECE42BD8;
  if (!qword_1ECE42BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BD8);
  }

  return result;
}

unint64_t sub_1DF5E12B0()
{
  result = qword_1ECE42390;
  if (!qword_1ECE42390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42390);
  }

  return result;
}

unint64_t sub_1DF5E1308()
{
  result = qword_1ECE42388;
  if (!qword_1ECE42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42388);
  }

  return result;
}

uint64_t sub_1DF5E1384()
{
  result = type metadata accessor for XPCAlarm.Criteria(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF5E1428()
{
  result = sub_1DF63252C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF5E14B0()
{
  result = qword_1ECE42BE0;
  if (!qword_1ECE42BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BE0);
  }

  return result;
}

unint64_t sub_1DF5E1508()
{
  result = qword_1ECE42BE8;
  if (!qword_1ECE42BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BE8);
  }

  return result;
}

unint64_t sub_1DF5E1560()
{
  result = qword_1ECE42BF0;
  if (!qword_1ECE42BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42BF0);
  }

  return result;
}

uint64_t sub_1DF5E15B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF5E161C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TimeZone.gmt.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE42BF8, &qword_1DF639A58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1DF6325FC();
  v6 = sub_1DF63262C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5E1808(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1DF633C4C();
  *a4 = result;
  return result;
}

uint64_t sub_1DF5E1880(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1DF5E18E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DF59D2C8;

  return v8();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5E1A34, 0, 0);
}

uint64_t sub_1DF5E1A34()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);
  swift_allocObject();
  v6 = sub_1DF5B2178(v4, v3, v5);
  *(v0 + 64) = v6;
  v12 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1DF5E1B70;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return v12(v10, v6);
}

uint64_t sub_1DF5E1B70()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DF5BE018;
  }

  else
  {
    v3 = sub_1DF5E1C84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5E1C84()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5E1D18, 0, 0);
}

uint64_t sub_1DF5E1D18()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5E1DF0;
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v8, v6, v7, v9, &unk_1DF639A80, v2);
}

uint64_t sub_1DF5E1DF0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5E1F2C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF5E1F2C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1DF5E1F90(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C8;

  return v8(a1);
}

void *Transaction.deinit()
{
  sub_1DF5B4934();
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Transaction.description.getter()
{
  MEMORY[0x1E12D82E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_1DF5E2114()
{
  MEMORY[0x1E12D82E0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 0x3A4E58545BLL;
}

uint64_t sub_1DF5E2170()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6A08);
  __swift_project_value_buffer(v0, qword_1ED8E6A08);
  return sub_1DF63269C();
}

uint64_t sub_1DF5E21F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1DF5E2218(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF59D2C8;

  return sub_1DF5E1F90(a1, a2, v7);
}

uint64_t sub_1DF5E22F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5E18E0(a1, v4, v5, v7);
}

uint64_t dispatch thunk of IsolatedCustomStringConvertible.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF5E24CC;

  return v9(a1, a2);
}

uint64_t sub_1DF5E24CC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BufferedData();
  v9 = swift_allocObject();
  v9[3] = a3;
  v9[4] = 0;
  v9[2] = a2;
  sub_1DF5A3A94(a2, a3);
  v12[3] = &type metadata for _BinaryDecoder;
  v12[4] = &off_1F5A94D08;
  v12[0] = v9;
  v12[1] = 0;
  v10 = *(a5 + 8);

  v10(v12, a4, a5);
}

uint64_t BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = 0;
  v8[3] = &type metadata for _BinaryDecoder;
  v6 = *(a4 + 8);

  return v6(v8, a3, a4);
}

{

  v7 = sub_1DF5C30E4(a2);
  v9 = v8;

  type metadata accessor for BufferedData();
  v10 = swift_allocObject();
  v10[3] = v9;
  v10[4] = 0;
  v10[2] = v7;
  v13[3] = &type metadata for _BinaryDecoder;
  v13[4] = &off_1F5A94D08;
  v13[0] = v10;
  v13[1] = 0;
  v11 = *(a4 + 8);

  v11(v13, a3, a4);
}

uint64_t sub_1DF5E281C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for BinaryDecodingContainer();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  a1[3] = v4;
  a1[4] = &off_1F5A94CD0;
  *a1 = v5;
}

BOOL sub_1DF5E2888()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v5 = v1 + 24;
  v4 = *(v1 + 24);
  v3 = *(v5 + 8);
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v2 = 0;
      return v3 == v2;
    }

    v9 = v2 + 16;
    v7 = *(v2 + 16);
    v8 = *(v9 + 8);
    v10 = __OFSUB__(v8, v7);
    v2 = v8 - v7;
    if (!v10)
    {
      return v3 == v2;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v2 = BYTE6(v4);
    return v3 == v2;
  }

  v10 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (!v10)
  {
    v2 = v2;
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5E28EC()
{
  v2 = v1;
  v3 = sub_1DF63368C();
  v4 = v3 / 8;
  v5 = *(v0 + 16);
  v6 = *(v5 + 32);

  result = sub_1DF5FA238(v3 / 8, v6);
  if (v2)
  {
  }

  v9 = *(v5 + 32);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  v13 = v8;
  *(v5 + 32) = v11;

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      if (v3 > 7)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v10 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v10)
    {
      if (v17 < v4)
      {
        goto LABEL_11;
      }

LABEL_16:
      MEMORY[0x1EEE9AC00](result);
      sub_1DF6323AC();
      return sub_1DF5B33C0(v12, v13);
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v14)
  {
    if (BYTE6(v13) >= v4)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_1DF5E3264();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_1DF5B33C0(v12, v13);
  }

  if (!__OFSUB__(HIDWORD(v12), v12))
  {
    if (HIDWORD(v12) - v12 >= v4)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1DF5E2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(*(a4 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  sub_1DF63392C();
  v15 = a1;
  v16 = a2;
  return sub_1DF5C0858(a5, sub_1DF5E32D4, v14, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v12);
}

uint64_t sub_1DF5E2C30(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DF632A1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  v11 = *(v10 + 32);

  result = sub_1DF5FA238(0x7FFFFFFFFFFFFFFFLL, v11);
  if (v3)
  {

    return a1;
  }

  v14 = *(v10 + 32);
  v15 = __OFADD__(v14, 0x7FFFFFFFFFFFFFFFLL);
  v16 = v14 + 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v17 = result;
    v18 = v13;
    *(v10 + 32) = v16;

    (*(v6 + 16))(v9, a1, v5);
    v19 = sub_1DF6329AC();
    if (v20)
    {
      a1 = v19;
    }

    else
    {
      sub_1DF5E3264();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
    }

    sub_1DF5B33C0(v17, v18);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5E2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v9[3] = &type metadata for _BinaryDecoder;
  v9[4] = &off_1F5A94D08;
  v9[0] = v6;
  v7 = *(a3 + 8);

  return v7(v9, a2, a3);
}

uint64_t sub_1DF5E2E6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v4 + 32);

  result = sub_1DF5FA238(a1, v5);
  v7 = result;
  v9 = v8;
  if (v2)
  {

    return v7;
  }

  v10 = *(v4 + 32);
  v11 = __OFADD__(v10, a1);
  v12 = v10 + a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 32) = v12;

  v13 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (!a1)
      {
        return v7;
      }

      goto LABEL_11;
    }

    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    v11 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v11)
    {
      if (v16 == a1)
      {
        return v7;
      }

LABEL_11:
      sub_1DF5E3264();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
      sub_1DF5B33C0(v7, v9);
      return v7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v13)
  {
    if (BYTE6(v9) == a1)
    {
      return v7;
    }

    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    if (HIDWORD(v7) - v7 == a1)
    {
      return v7;
    }

    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1DF5E2FA4()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    v6 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v3);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_14;
  }

  v6 = HIDWORD(v2) - v2;
LABEL_11:
  if (v6 >= v4)
  {

    sub_1DF5A3A94(v2, v3);
    sub_1DF63241C();
    sub_1DF5B33C0(v2, v3);

    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1DF5E3088()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5E31D0(uint64_t *a1, int a2)
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

uint64_t sub_1DF5E3218(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF5E3264()
{
  result = qword_1ECE42C20;
  if (!qword_1ECE42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C20);
  }

  return result;
}

void *sub_1DF5E32D4(void *result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return memmove(result, v2, *(v1 + 24) - v2);
    }
  }

  return result;
}

uint64_t Bit.description.getter()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

FindMyBase::Bit_optional __swiftcall Bit.init(rawValue:)(FindMyBase::Bit_optional rawValue)
{
  if (rawValue.value == FindMyBase_Bit_one)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == FindMyBase_Bit_zero)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DF5E3334()
{
  result = qword_1ECE42C28;
  if (!qword_1ECE42C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C28);
  }

  return result;
}

uint64_t sub_1DF5E3388()
{
  v1 = *v0;
  sub_1DF633A6C();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5E33FC()
{
  v1 = *v0;
  sub_1DF633A6C();
  sub_1DF633A8C();
  return sub_1DF633AAC();
}

_BYTE *sub_1DF5E3440@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DF5E3460()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t withinActor<A, B>(_:block:)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF59D2C8;

  return v9(a1, a2);
}

uint64_t MultiAwait.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t MultiAwait.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t sub_1DF5E360C()
{
  v1 = *(v0 + 16);
  sub_1DF5E37F8();
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1DF5E36E8;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1DF5E36E8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5AD2A8, v2, 0);
}

unint64_t sub_1DF5E37F8()
{
  result = qword_1ECE42C30;
  if (!qword_1ECE42C30)
  {
    type metadata accessor for MultiAwait();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C30);
  }

  return result;
}

uint64_t sub_1DF5E3870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429F8, &qword_1DF638C28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_1DF6325AC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63259C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1DF5C5BDC(v5, v9);
  return swift_endAccess();
}

uint64_t sub_1DF5E39F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  swift_beginAccess();
  v6 = *(v0 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v17 = v0;
  v18 = v2 + 16;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v9; result = (*(v2 + 8))(v5, v1))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v2 + 16))(v5, *(v6 + 56) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    sub_1DF632E3C();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v15 = *(v17 + 112);
      *(v17 + 112) = MEMORY[0x1E69E7CC8];
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t MultiAwait.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MultiAwait.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of MultiAwait.await()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C8;

  return v6();
}

uint64_t XPCActivity.Criteria.Options.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1DF5C1294(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF5C1294((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DF5C1294((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1DF5C1294((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x80000001DF635150;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1DF5C1294((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001DF635130;
  }

  if ((v1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1DF5C1294((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((v1 & 0x20) == 0)
    {
LABEL_26:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else if ((v1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1DF5C1294((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((v1 & 0x40) == 0)
  {
LABEL_27:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_1DF5C1294((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((v1 & 0x80) == 0)
  {
LABEL_28:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_1DF5C1294((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x80000001DF635110;
  if ((v1 & 0x100) == 0)
  {
LABEL_29:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_1DF5C1294((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x80000001DF6350F0;
  if ((v1 & 0x200) == 0)
  {
LABEL_30:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_1DF5C1294((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((v1 & 0x400) == 0)
  {
LABEL_31:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1DF5C1294((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x80000001DF6350D0;
  if ((v1 & 0x800) == 0)
  {
LABEL_32:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_1DF5C1294((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((v1 & 0x1000) == 0)
  {
LABEL_33:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_1DF5C1294((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((v1 & 0x2000) == 0)
  {
LABEL_34:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_1DF5C1294((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x80000001DF6350B0;
  if ((v1 & 0x4000) == 0)
  {
LABEL_35:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_1DF5C1294((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000012;
  *(v47 + 5) = 0x80000001DF635090;
  if ((v1 & 0x8000) == 0)
  {
LABEL_36:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_1DF5C1294((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000013;
  *(v50 + 5) = 0x80000001DF635070;
  if ((v1 & 0x10000) != 0)
  {
LABEL_98:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DF5C1294(0, *(v2 + 2) + 1, 1, v2);
    }

    v52 = *(v2 + 2);
    v51 = *(v2 + 3);
    if (v52 >= v51 >> 1)
    {
      v2 = sub_1DF5C1294((v51 > 1), v52 + 1, 1, v2);
    }

    *(v2 + 2) = v52 + 1;
    v53 = &v2[16 * v52];
    *(v53 + 4) = 0xD000000000000013;
    *(v53 + 5) = 0x80000001DF635050;
  }

LABEL_103:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v54 = sub_1DF6328DC();
  v56 = v55;

  MEMORY[0x1E12D82E0](v54, v56);

  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 91;
}

_BYTE *XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = *result;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = v7;
  return result;
}

uint64_t XPCActivity.Criteria.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_1DF63347C();
  MEMORY[0x1E12D82E0](60, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C38, &qword_1DF639D70);
  v7 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v7);

  MEMORY[0x1E12D82E0](0x7469726F69727020, 0xEB00000000203A79);
  if (v1)
  {
    v8 = 0x6E65746E69616D2ELL;
  }

  else
  {
    v8 = 0x7974696C6974752ELL;
  }

  if (v1)
  {
    v9 = 0xEC00000065636E61;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  MEMORY[0x1E12D82E0](v8, v9);

  MEMORY[0x1E12D82E0](0x746165706572203BLL, 0xED0000203A676E69);
  if (v2)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12D82E0](v10, v11);

  MEMORY[0x1E12D82E0](0x3A79616C6564203BLL, 0xE900000000000020);
  v12 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v12);

  MEMORY[0x1E12D82E0](0x506563617267203BLL, 0xEF203A646F697265);
  v13 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v13);

  MEMORY[0x1E12D82E0](0x767265746E69203BLL, 0xEC000000203A6C61);
  v14 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v14);

  MEMORY[0x1E12D82E0](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v15 = XPCActivity.Criteria.Options.description.getter();
  MEMORY[0x1E12D82E0](v15);

  return 0;
}

uint64_t sub_1DF5E4BC4()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF5E4C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF5E6294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF5E4CBC(uint64_t a1)
{
  v2 = sub_1DF5E5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5E4CF8(uint64_t a1)
{
  v2 = sub_1DF5E5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCActivity.Criteria.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C40, &qword_1DF639D78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v16 = v1[1];
  v10 = *(v1 + 1);
  v15[2] = *(v1 + 2);
  v15[3] = v10;
  v11 = *(v1 + 3);
  v15[0] = *(v1 + 4);
  v15[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E5C74();
  sub_1DF633AFC();
  v24 = v9;
  v23 = 0;
  sub_1DF5E5CC8();
  sub_1DF63385C();
  if (!v2)
  {
    v13 = v15[0];
    v22 = 1;
    sub_1DF63384C();
    v21 = 2;
    sub_1DF63386C();
    v20 = 3;
    sub_1DF63386C();
    v19 = 4;
    sub_1DF63386C();
    v17 = v13;
    v18 = 5;
    sub_1DF5E5D1C();
    sub_1DF63385C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t XPCActivity.Criteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C60, &qword_1DF639D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5E5C74();
  sub_1DF633ADC();
  if (!v2)
  {
    v26 = 0;
    sub_1DF5E5D70();
    sub_1DF6337CC();
    v11 = v27;
    v25 = 1;
    v12 = sub_1DF6337BC();
    v24 = 2;
    v19 = sub_1DF6337DC();
    v23 = 3;
    v18 = sub_1DF6337DC();
    v22 = 4;
    v17 = sub_1DF6337DC();
    v21 = 5;
    sub_1DF5E5DC4();
    sub_1DF6337CC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v12 & 1;
    v14 = v20;
    v15 = v17;
    v16 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF5E526C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9D68]))
  {
    v4 = sub_1DF632B2C();
    if (qword_1ED8E4B58 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1ED8E4B60 && v5 == *algn_1ED8E4B68)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_1DF63394C();

      v8 = ~v7 & 1;
    }

    v10 = xpc_dictionary_get_BOOL(a1, *MEMORY[0x1E69E9D88]);
    int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9C68]);
    v12 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9C98]);
    v13 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69E9CB0]);
    result = sub_1DF5E5400(a1, &v18);
    v14 = v18;
    v15 = 256;
    if (!v10)
    {
      v15 = 0;
    }

    *a2 = v15 | v8;
    a2[1] = int64;
    a2[2] = v12;
    a2[3] = v13;
    a2[4] = v14;
  }

  else
  {
    result = swift_unknownObjectRelease();
    *a2 = 2;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  return result;
}

uint64_t sub_1DF5E5400@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (!*MEMORY[0x1E69E9D58])
  {
    __break(1u);
    goto LABEL_54;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(result, *MEMORY[0x1E69E9D58]);
  if (!*MEMORY[0x1E69E9DC8])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DC8]);
  if (!*MEMORY[0x1E69E9DD8])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DD8]);
  if (!*MEMORY[0x1E69E9DF0])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DF0]);
  if (!*MEMORY[0x1E69E9D98])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D98]);
  if (!*MEMORY[0x1E69E9DA0])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DA0]);
  if (!*MEMORY[0x1E69E9DA8])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DA8]);
  if (!*MEMORY[0x1E69E9DB8])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v10 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DB8]);
  if (!*MEMORY[0x1E69E9DB0])
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v11 = v4;
  if (v5)
  {
    v11 = v4 | 4;
  }

  if (v6)
  {
    v11 |= 2uLL;
  }

  if (v7)
  {
    v11 |= 8uLL;
  }

  if (v8)
  {
    v11 |= 0x10uLL;
  }

  if (v9)
  {
    v11 |= 0x20uLL;
  }

  if (v10)
  {
    v11 |= 0x40uLL;
  }

  if (result)
  {
    v12 = v11 | 0x80;
  }

  else
  {
    v12 = v11;
  }

  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DB0]);
  if (result)
  {
    v13 = v12 | 0x100;
  }

  else
  {
    v13 = v12;
  }

  if (!*MEMORY[0x1E69E9C80])
  {
    goto LABEL_62;
  }

  v14 = xpc_dictionary_get_dictionary(v3, *MEMORY[0x1E69E9C80]);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DF632A7C();
    string = xpc_dictionary_get_string(v15, (v16 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v13 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C40]);
  if (!*MEMORY[0x1E69E9D00])
  {
    goto LABEL_63;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D00]);
  if (!*MEMORY[0x1E69E9C60])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C60]);
  if (!*MEMORY[0x1E69E9C78])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v20 = result;
  result = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C78]);
  if (!*MEMORY[0x1E69E9C58])
  {
LABEL_66:
    __break(1u);
    return result;
  }

  v21 = v13 | 0x200;
  if (!v18)
  {
    v21 = v13;
  }

  if (v19)
  {
    v21 |= 0x400uLL;
  }

  if (v20)
  {
    v21 |= 0x800uLL;
  }

  if (result)
  {
    v22 = v21 | 0x1000;
  }

  else
  {
    v22 = v21;
  }

  if (xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9C58]))
  {
    v22 |= 0x4000uLL;
  }

  if (xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9D60]))
  {
    v23 = v22 | 0x8000;
  }

  else
  {
    v23 = v22;
  }

  v24 = xpc_dictionary_get_BOOL(v3, *MEMORY[0x1E69E9DC0]);
  result = swift_unknownObjectRelease();
  v25 = v23 | 0x10000;
  if (!v24)
  {
    v25 = v23;
  }

  *a2 = v25;
  return result;
}

void sub_1DF5E5758()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  v9 = MEMORY[0x1E69E9D78];
  if (v1)
  {
    v9 = MEMORY[0x1E69E9D70];
  }

  xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *v9);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D88], v2);
  xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9C68], v3);
  xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9C98], v4);
  if (v2 == 1)
  {
    xpc_dictionary_set_int64(v8, *MEMORY[0x1E69E9CB0], v5);
  }

  if (v6)
  {
    if (!*MEMORY[0x1E69E9D58])
    {
      __break(1u);
      goto LABEL_55;
    }

    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D58], 1);
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!*MEMORY[0x1E69E9DC8])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DC8], 1);
LABEL_11:
  if ((v6 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!*MEMORY[0x1E69E9DD8])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DD8], 1);
LABEL_14:
  if ((v6 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!*MEMORY[0x1E69E9DF0])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DF0], 1);
LABEL_17:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!*MEMORY[0x1E69E9D98])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D98], 1);
LABEL_20:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!*MEMORY[0x1E69E9DA0])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DA0], 1);
LABEL_23:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!*MEMORY[0x1E69E9DA8])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DA8], 1);
LABEL_26:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!*MEMORY[0x1E69E9DB8])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DB8], 1);
LABEL_29:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!*MEMORY[0x1E69E9DB0])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DB0], 1);
LABEL_32:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = sub_1DF632A7C();
  v12 = sub_1DF632A7C();
  xpc_dictionary_set_string(v10, (v11 + 32), (v12 + 32));

  if (!*MEMORY[0x1E69E9C80])
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x1E69E9C80], v10);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v6 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C40], 1);
  }

  if ((v6 & 0x400) != 0)
  {
    if (*MEMORY[0x1E69E9D00])
    {
      xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D00], 1);
      goto LABEL_40;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_40:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!*MEMORY[0x1E69E9C60])
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C60], 1);
LABEL_43:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!*MEMORY[0x1E69E9C78])
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C78], 1);
LABEL_46:
  if ((v6 & 0x4000) != 0)
  {
    if (*MEMORY[0x1E69E9C58])
    {
      xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9C58], 1);
      goto LABEL_49;
    }

LABEL_67:
    __break(1u);
    return;
  }

LABEL_49:
  if ((v6 & 0x8000) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9D60], 1);
  }

  if ((v6 & 0x10000) != 0)
  {
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x1E69E9DC0], 1);
  }
}

BOOL _s10FindMyBase11XPCActivityC8CriteriaV2eeoiySbAE_AEtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v20 = *(a2 + 4);
  v21 = *(a1 + 24);
  v11 = *a1 == 0;
  if (*a1)
  {
    v12 = 0x616E65746E69616DLL;
  }

  else
  {
    v12 = 0x7974696C697475;
  }

  if (v11)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v14 = 0x616E65746E69616DLL;
  }

  else
  {
    v14 = 0x7974696C697475;
  }

  if (*a2)
  {
    v15 = 0xEB0000000065636ELL;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v12 != v14 || v13 != v15)
  {
    v19 = v5;
    v17 = sub_1DF63394C();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }

    if (v2 != v7)
    {
      return result;
    }

    if (v4 != v8)
    {
      return result;
    }

    if (v3 != v9)
    {
      return result;
    }

    v5 = v19;
    if (v21 != v10)
    {
      return result;
    }

    return v5 == v20;
  }

  result = 0;
  if (v2 == v7 && v4 == v8 && v3 == v9 && v21 == v10)
  {
    return v5 == v20;
  }

  return result;
}

unint64_t sub_1DF5E5C74()
{
  result = qword_1ECE42C48;
  if (!qword_1ECE42C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C48);
  }

  return result;
}

unint64_t sub_1DF5E5CC8()
{
  result = qword_1ECE42C50;
  if (!qword_1ECE42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C50);
  }

  return result;
}

unint64_t sub_1DF5E5D1C()
{
  result = qword_1ECE42C58;
  if (!qword_1ECE42C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C58);
  }

  return result;
}

unint64_t sub_1DF5E5D70()
{
  result = qword_1ECE42C68;
  if (!qword_1ECE42C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C68);
  }

  return result;
}

unint64_t sub_1DF5E5DC4()
{
  result = qword_1ECE42C70;
  if (!qword_1ECE42C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C70);
  }

  return result;
}

unint64_t sub_1DF5E5E1C()
{
  result = qword_1ECE42C78;
  if (!qword_1ECE42C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C78);
  }

  return result;
}

unint64_t sub_1DF5E5E74()
{
  result = qword_1ECE42C80;
  if (!qword_1ECE42C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C80);
  }

  return result;
}

unint64_t sub_1DF5E5ECC()
{
  result = qword_1ECE42518;
  if (!qword_1ECE42518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42518);
  }

  return result;
}

unint64_t sub_1DF5E5F24()
{
  result = qword_1ECE42510;
  if (!qword_1ECE42510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42510);
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

uint64_t sub_1DF5E5F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF5E5FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s8CriteriaV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8CriteriaV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF5E6190()
{
  result = qword_1ECE42C88;
  if (!qword_1ECE42C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C88);
  }

  return result;
}

unint64_t sub_1DF5E61E8()
{
  result = qword_1ECE42C90;
  if (!qword_1ECE42C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C90);
  }

  return result;
}

unint64_t sub_1DF5E6240()
{
  result = qword_1ECE42C98;
  if (!qword_1ECE42C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42C98);
  }

  return result;
}

uint64_t sub_1DF5E6294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (sub_1DF63394C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF63394C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DF5E6498()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4C18);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E4C18);
  if (qword_1ED8E4C38 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E4C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AsyncStreamProvider.finished.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  v3 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E664C, v0, v2);
  return v5;
}

uint64_t AsyncStreamProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncStreamProvider.init()();
  return v0;
}

uint64_t *AsyncStreamProvider.init()()
{
  v1 = *v0;
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF6327DC();
  sub_1DF63288C();
  v3 = sub_1DF5A6090();

  v0[2] = v3;
  *(v0 + 24) = 0;
  return v0;
}

Swift::Void __swiftcall AsyncStreamProvider.finish()()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = sub_1DF632F0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v21 = v0;
  v8 = v0[2];
  v24 = v2;
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ED8E6150);
  v9 = sub_1DF63288C();
  sub_1DF63286C();
  v19[2] = v9;
  v20 = v8;
  sub_1DF5A61A8(sub_1DF5E91D0, v23, v8);
  v19[1] = 0;
  v10 = v25;
  v11 = v25 + 64;
  v12 = 1 << *(v25 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v25 + 64);
  v15 = (v12 + 63) >> 6;
  v22 = v4 + 16;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v4 + 16))(v7, *(v10 + 56) + *(v4 + 72) * (v18 | (v17 << 6)), v3);
    sub_1DF632EFC();
    (*(v4 + 8))(v7, v3);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      sub_1DF5A61A8(sub_1DF5E91EC, v21, v20);

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1DF5E6A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1DF6325AC();
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150);

  v5 = sub_1DF6327DC();

  *a1 = v5;
  *a2 = v4;
  return result;
}

uint64_t AsyncStreamProvider.stream(initialEvents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5E6BE4(v8, a2, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DF5E6BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a2;
  v67 = a1;
  v5 = *v3;
  v6 = type metadata accessor for Transaction();
  v66 = v3;
  v7 = *(v5 + 80);
  v63 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v72 = (&v59 - v10);
  v71 = sub_1DF632EBC();
  v64 = *(v71 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - v13;
  v74 = *(v7 - 8);
  v62 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v59 - v14;
  v15 = sub_1DF632EDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v76 = sub_1DF632F0C();
  v65 = *(v76 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v22 = &v59 - v21;
  v23 = sub_1DF6325AC();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v59 - v28;
  sub_1DF63259C();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8650], v15);
  v75 = v22;
  v73 = TupleTypeMetadata2;
  sub_1DF632EAC();
  (*(v16 + 8))(v19, v15);
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v30 = sub_1DF6326AC();
  __swift_project_value_buffer(v30, qword_1ED8E4C18);
  v32 = v68;
  v31 = v69;
  (*(v68 + 16))(v27, v29, v69);
  swift_bridgeObjectRetain_n();
  v33 = sub_1DF63268C();
  v34 = sub_1DF63318C();
  v35 = v29;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v61 = v34;
    v37 = v36;
    v60 = swift_slowAlloc();
    v78[0] = v60;
    *v37 = 136446466;
    sub_1DF5A9208(&unk_1ED8E4A10);
    v38 = v33;
    v39 = sub_1DF6338DC();
    v41 = v40;
    (*(v32 + 8))(v27, v31);
    v42 = sub_1DF59EEC8(v39, v41, v78);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    v43 = sub_1DF632D9C();

    *(v37 + 14) = v43;

    _os_log_impl(&dword_1DF59A000, v38, v61, "%{public}s: initialEvents: %ld", v37, 0x16u);
    v44 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1E12D9D80](v44, -1, -1);
    MEMORY[0x1E12D9D80](v37, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v32 + 8))(v27, v31);
  }

  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v45 = v78[0];
  if (v78[0])
  {
    if (sub_1DF632D9C())
    {
      v63 = v35;
      v46 = 0;
      v47 = (v74 + 16);
      v48 = (v74 + 32);
      v49 = (v64 + 8);
      while (1)
      {
        v50 = sub_1DF632D8C();
        sub_1DF632D5C();
        if (v50)
        {
          (*(v74 + 16))(v77, a3 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v46, v7);
          v51 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          result = sub_1DF6334BC();
          if (v62 != 8)
          {
            __break(1u);
            return result;
          }

          v78[0] = result;
          (*v47)(v77, v78, v7);
          swift_unknownObjectRelease();
          v51 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:

            v56 = v67;
            v32 = v68;
            v31 = v69;
            v57 = v75;
            v35 = v63;
            goto LABEL_23;
          }
        }

        v52 = v72;
        v53 = *(v73 + 48);
        *v72 = v45;
        (*v48)(v52 + v53, v77, v7);

        v54 = v70;
        sub_1DF632EEC();
        (*v49)(v54, v71);
        ++v46;
        if (v51 == sub_1DF632D9C())
        {
          goto LABEL_19;
        }
      }
    }

    v57 = v75;
  }

  else
  {
    swift_allocObject();
    v58 = sub_1DF5B2178("AsyncStreamProvider.yield", 25, 2);
    v57 = v75;
    sub_1DF5E81F8(v58, a3, v75, v7);
  }

  v56 = v67;
LABEL_23:
  sub_1DF5E8520(v35, v57);
  (*(v65 + 8))(v57, v76);
  return (*(v32 + 32))(v56, v35, v31);
}

uint64_t AsyncStreamProvider.description.getter()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  v3 = CustomStringConvertible.typeDescription.getter(v1, WitnessTable);
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  v4 = CustomStringConvertible<>.addressDescription.getter();
  MEMORY[0x1E12D82E0](v4);

  MEMORY[0x1E12D82E0](15913, 0xE200000000000000);
  return 60;
}

uint64_t AsyncStreamProvider.yield(value:transaction:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1DF5E75F8(a1, a2);
  }

  else
  {
    if (qword_1ED8E6098 != -1)
    {
      swift_once();
    }

    sub_1DF633C5C();
    v5 = v6;
    if (!v6)
    {
      type metadata accessor for Transaction();
      swift_allocObject();
      v5 = sub_1DF5B2178("AsyncStreamProvider.yield", 25, 2);
    }

    sub_1DF5E75F8(a1, v5);
  }
}

uint64_t sub_1DF5E75F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a1;
  v114 = a2;
  v4 = *v2;
  type metadata accessor for Transaction();
  v5 = *(v4 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v111 = &v92 - v8;
  v110 = sub_1DF632EBC();
  v125 = *(v110 - 8);
  v9 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v92 - v10;
  v112 = TupleTypeMetadata2;
  v11 = sub_1DF632F0C();
  v97 = *(v11 - 8);
  v12 = *(v97 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v128 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v92 - v15;
  v16 = sub_1DF6325AC();
  v96 = *(v16 - 8);
  v17 = *(v96 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v107 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v127 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - v22;
  v23 = swift_getTupleTypeMetadata2();
  v118 = sub_1DF63327C();
  v115 = *(v118 - 8);
  v24 = *(v115 + 64);
  v25 = MEMORY[0x1EEE9AC00](v118);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v92 - v28;
  v29 = *(v3 + 16);
  v120 = v5;
  v130 = v5;
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E928C, v129, v29);
  v98 = v131;
  v30 = sub_1DF63285C();
  if (qword_1ED8E4C10 != -1)
  {
LABEL_27:
    swift_once();
  }

  v31 = sub_1DF6326AC();
  v32 = __swift_project_value_buffer(v31, qword_1ED8E4C18);

  v106 = v32;
  v33 = sub_1DF63268C();
  v34 = sub_1DF63315C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = &unk_1DF638000;
  v121 = v3;
  v119 = v16;
  v126 = v27;
  if (v35)
  {
    v37 = v30;
    v38 = v11;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v131 = v40;
    *v39 = 136446466;
    v41 = AsyncStreamProvider.description.getter();
    v43 = v42;

    v44 = sub_1DF59EEC8(v41, v43, &v131);

    *(v39 + 4) = v44;
    v36 = &unk_1DF638000;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v37;
    _os_log_impl(&dword_1DF59A000, v33, v34, "%{public}s: Yielding value to %ld clients.", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1E12D9D80](v40, -1, -1);
    v45 = v39;
    v27 = v126;
    v11 = v38;
    MEMORY[0x1E12D9D80](v45, -1, -1);
  }

  else
  {
  }

  v30 = 0;
  v47 = v98 + 64;
  v48 = 1 << *(v98 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v3 = v49 & *(v98 + 64);
  v50 = (v48 + 63) >> 6;
  v116 = v23 - 8;
  v124 = (v96 + 16);
  v93 = v97 + 16;
  v123 = (v96 + 32);
  v122 = (v97 + 32);
  v115 += 32;
  v103 = (v96 + 8);
  v102 = v120 - 8;
  v101 = (v125 + 8);
  v100 = (v97 + 8);
  *&v46 = v36[478];
  v92 = v46;
  v125 = v23;
  v105 = v98 + 64;
  v104 = v50;
  v108 = v11;
  while (1)
  {
    if (!v3)
    {
      if (v50 <= v30 + 1)
      {
        v58 = v30 + 1;
      }

      else
      {
        v58 = v50;
      }

      v59 = v58 - 1;
      v16 = v119;
      while (1)
      {
        v57 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v57 >= v50)
        {
          v3 = 0;
          v71 = 1;
          v30 = v59;
          goto LABEL_21;
        }

        v3 = *(v47 + 8 * v57);
        ++v30;
        if (v3)
        {
          v30 = v57;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v57 = v30;
    v16 = v119;
LABEL_20:
    v60 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v61 = v60 | (v57 << 6);
    v62 = v98;
    v63 = v96;
    v64 = v94;
    (*(v96 + 16))(v94, *(v98 + 48) + *(v96 + 72) * v61, v16);
    v65 = *(v62 + 56);
    v66 = v97;
    v67 = v95;
    (*(v97 + 16))(v95, v65 + *(v97 + 72) * v61, v11);
    v68 = *(v125 + 48);
    v69 = *(v63 + 32);
    v27 = v126;
    v70 = v64;
    v23 = v125;
    v69(v126, v70, v16);
    (*(v66 + 32))(&v27[v68], v67, v11);
    v71 = 0;
LABEL_21:
    v72 = *(v23 - 8);
    (*(v72 + 56))(v27, v71, 1, v23);
    v73 = v117;
    (*v115)(v117, v27, v118);
    if ((*(v72 + 48))(v73, 1, v23) == 1)
    {
    }

    v74 = *(v23 + 48);
    v75 = v127;
    (*v123)(v127, v73, v16);
    (*v122)(v128, &v73[v74], v11);
    v76 = v107;
    (*v124)(v107, v75, v16);

    v77 = sub_1DF63268C();
    v78 = sub_1DF63315C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v76;
      v80 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v131 = v99;
      *v80 = v92;
      v81 = AsyncStreamProvider.description.getter();
      v83 = v82;

      v84 = sub_1DF59EEC8(v81, v83, &v131);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2082;
      sub_1DF5A9208(&unk_1ED8E4A10);
      v85 = sub_1DF6338DC();
      v87 = v86;
      v88 = v79;
      v51 = *v103;
      (*v103)(v88, v16);
      v89 = sub_1DF59EEC8(v85, v87, &v131);

      *(v80 + 14) = v89;
      _os_log_impl(&dword_1DF59A000, v77, v78, "%{public}s: Yielding value to %{public}s.", v80, 0x16u);
      v90 = v99;
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v90, -1, -1);
      MEMORY[0x1E12D9D80](v80, -1, -1);
    }

    else
    {

      v51 = *v103;
      (*v103)(v76, v16);
    }

    v52 = *(v112 + 48);
    v53 = v111;
    v54 = v113;
    *v111 = v114;
    (*(*(v120 - 8) + 16))(&v53[v52], v54);

    v55 = v109;
    v11 = v108;
    v56 = v128;
    sub_1DF632EEC();
    (*v101)(v55, v110);
    (*v100)(v56, v11);
    v51(v127, v16);
    v23 = v125;
    v27 = v126;
    v47 = v105;
    v50 = v104;
  }
}

uint64_t AsyncStreamProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AsyncStreamProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5E81F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  type metadata accessor for Transaction();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v25 - v8;
  v31 = v10;
  v30 = sub_1DF632EBC();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - v14;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v25 = v17;
  v33 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DF632D9C();
  if (result)
  {
    v19 = 0;
    v27 = (v15 + 32);
    v28 = (v15 + 16);
    v26 = (v11 + 8);
    v20 = v32;
    do
    {
      v21 = sub_1DF632D8C();
      sub_1DF632D5C();
      if (v21)
      {
        result = (*(v15 + 16))(v33, a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, a4);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1DF6334BC();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v34 = result;
        (*v28)(v33, &v34, a4);
        result = swift_unknownObjectRelease();
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v23 = *(v31 + 48);
      *v9 = v20;
      (*v27)(&v9[v23], v33, a4);
      sub_1DF632F0C();

      v24 = v29;
      sub_1DF632EEC();
      (*v26)(v24, v30);
      result = sub_1DF632D9C();
      ++v19;
    }

    while (v22 != result);
  }

  return result;
}

uint64_t sub_1DF5E8520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v39 = *v2;
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v40 = v9;
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF6326AC();
  __swift_project_value_buffer(v12, qword_1ED8E4C18);
  v13 = *(v6 + 16);
  v42 = a1;
  v37 = v13;
  v38 = v6 + 16;
  v13(v11, a1, v5);

  v14 = sub_1DF63268C();
  v15 = sub_1DF63318C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44[0] = v17;
    *v16 = 136446466;

    v18 = AsyncStreamProvider.description.getter();
    v20 = v19;

    v21 = sub_1DF59EEC8(v18, v20, v44);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    sub_1DF5A9208(&unk_1ED8E4A10);
    v22 = sub_1DF6338DC();
    v24 = v23;
    (*(v6 + 8))(v11, v5);
    v25 = sub_1DF59EEC8(v22, v24, v44);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1DF59A000, v14, v15, "%{public}s: Added new client: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v17, -1, -1);
    MEMORY[0x1E12D9D80](v16, -1, -1);
  }

  else
  {

    v26 = (*(v6 + 8))(v11, v5);
  }

  v27 = v3[2];
  MEMORY[0x1EEE9AC00](v26);
  v28 = *(v39 + 80);
  v30 = v42;
  v29 = v43;
  *(&v36 - 4) = v28;
  *(&v36 - 3) = v30;
  *(&v36 - 2) = v29;
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150);
  v31 = sub_1DF63288C();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)(sub_1DF5E92AC, (&v36 - 6), v27, v31, MEMORY[0x1E69E7CA8] + 8);
  v32 = v41;
  v37(v41, v30, v5);
  v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  *(v34 + 24) = v3;
  (*(v6 + 32))(v34 + v33, v32, v5);

  return sub_1DF632ECC();
}

uint64_t sub_1DF5E89B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  v5 = sub_1DF632F0C();
  v6 = sub_1DF63327C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DF6325AC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v9, a3, v5);
  (*(v14 + 56))(v9, 0, 1, v5);
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

void sub_1DF5E8BB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E4C10 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF6326AC();
  __swift_project_value_buffer(v10, qword_1ED8E4C18);
  (*(v6 + 16))(v9, a1, v5);

  v11 = sub_1DF63268C();
  v12 = sub_1DF63318C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136446466;

    v16 = AsyncStreamProvider.description.getter();
    v27 = v4;
    v18 = v17;

    v19 = sub_1DF59EEC8(v16, v18, v29);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    sub_1DF5A9208(&unk_1ED8E4A10);
    v20 = sub_1DF6338DC();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = sub_1DF59EEC8(v20, v22, v29);
    v4 = v27;

    *(v14 + 14) = v23;
    _os_log_impl(&dword_1DF59A000, v11, v12, "%{public}s: Removing terminated client: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v15, -1, -1);
    v24 = v14;
    a1 = v28;
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  else
  {

    v25 = (*(v6 + 8))(v9, v5);
  }

  v26 = v2[2];
  MEMORY[0x1EEE9AC00](v25);
  *(&v27 - 2) = *(v4 + 80);
  *(&v27 - 1) = a1;
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  sub_1DF632F0C();
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF63288C();
  sub_1DF5A61A8(sub_1DF5E9330, (&v27 - 4), v26);
}

uint64_t sub_1DF5E8F80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  swift_getTupleTypeMetadata2();
  v3 = sub_1DF632F0C();
  v4 = sub_1DF63327C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = sub_1DF6325AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  sub_1DF5A9208(&qword_1ED8E6150);
  sub_1DF63288C();
  return sub_1DF6328AC();
}

uint64_t sub_1DF5E9150()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4C40);
  __swift_project_value_buffer(v0, qword_1ED8E4C40);
  return sub_1DF63269C();
}

void sub_1DF5E92CC()
{
  v1 = *(sub_1DF6325AC() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v0 + 24);
  sub_1DF5E8BB4(v2);
}

uint64_t sub_1DF5E934C()
{
  v0 = sub_1DF6325DC();
  __swift_allocate_value_buffer(v0, qword_1ED8E4BD8);
  __swift_project_value_buffer(v0, qword_1ED8E4BD8);
  return sub_1DF6325BC();
}

uint64_t static Locale.en_US_POSIX.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6325DC();
  v3 = __swift_project_value_buffer(v2, qword_1ED8E4BD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Locale.acceptLanguageCode.getter()
{
  if (*(sub_1DF6325CC() + 16))
  {
    v0 = objc_opt_self();
    v1 = sub_1DF632D2C();

    v2 = [v0 minimizedLanguagesFromLanguages_];

    sub_1DF632D3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
    sub_1DF5BC754();
    v3 = sub_1DF6328DC();
  }

  else
  {

    return 0x53552D6E65;
  }

  return v3;
}

uint64_t DateIntervalParsingStrategy.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

uint64_t DateIntervalParsingStrategy.parse(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CA0, &qword_1DF63A230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v60 - v8;
  v66[0] = 47;
  v66[1] = 0xE100000000000000;
  v65 = v66;

  v10 = sub_1DF5EA7B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DF5EABCC, v64, a1, a2, v9);
  v62 = v3;
  v11 = *(v10 + 16);
  if (v11)
  {
    v66[0] = MEMORY[0x1E69E7CC0];
    sub_1DF5DB1D8(0, v11, 0);
    v12 = v66[0];
    v13 = (v10 + 56);
    do
    {
      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      v18 = MEMORY[0x1E12D8260](v15, v14, v16, v17);
      v20 = v19;

      v66[0] = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_1DF5DB1D8((v21 > 1), v22 + 1, 1);
        v12 = v66[0];
      }

      v12[2] = v22 + 1;
      v23 = &v12[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v13 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v12[2] != 2)
  {
    goto LABEL_12;
  }

  v24 = v12[4];
  v25 = v12[5];
  result = sub_1DF632A6C();
  if (v12[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    v29 = v27;
    v30 = v12[6];
    v31 = v12[7];

    v32 = sub_1DF632A6C();
    v34 = v33;

    v61 = v28;
    v35 = sub_1DF5EAC78(1);
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = MEMORY[0x1E12D8260](v35, v37, v39, v41);
    v44 = v43;

    v45 = v32;
    v46 = sub_1DF5EAC78(1);
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v53 = MEMORY[0x1E12D8260](v46, v48, v50, v52);
    v55 = v54;

    v56 = sub_1DF5EAD14(v42, v44, v53, v55);
    if (v56 == 3)
    {

LABEL_12:

LABEL_13:
      sub_1DF5EAC24();
      swift_allocError();
      return swift_willThrow();
    }

    v57 = v67;
    sub_1DF5E99EC(v61, v29, v45, v34, v56, v67);

    v58 = sub_1DF6320DC();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_1DF59CB50(v57, &qword_1ECE42CA0, &qword_1DF63A230);
      goto LABEL_13;
    }

    return (*(v59 + 32))(v63, v57, v58);
  }

  return result;
}

uint64_t sub_1DF5E99EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v81 = a3;
  v82 = a4;
  v85 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v77 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = sub_1DF63252C();
  v22 = *(v21 - 8);
  v83 = v21;
  v84 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v77 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v77 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v79 = &v77 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v80 = &v77 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v77 - v39;
  if (!a5)
  {
    v48 = v38;
    v86 = a1;
    v87 = a2;
    sub_1DF5EB884();

    sub_1DF63253C();
    v50 = v83;
    v51 = v84;
    (*(v84 + 56))(v18, 0, 1, v83);
    (*(v51 + 32))(v32, v18, v50);
    v52 = v82;

    sub_1DF5EAEB8(v81, v52);
    if ((v53 & 1) == 0)
    {
      v66 = v80;
      sub_1DF63249C();
      v67 = *(v51 + 16);
      v67(v79, v32, v50);
      v67(v48, v66, v50);
      v64 = v85;
      sub_1DF6320CC();
      v68 = *(v51 + 8);
      v68(v66, v50);
      v68(v32, v50);
      goto LABEL_14;
    }

    (*(v51 + 8))(v32, v50);
LABEL_12:
    v60 = sub_1DF6320DC();
    return (*(*(v60 - 8) + 56))(v85, 1, 1, v60);
  }

  if (a5 != 1)
  {
    v86 = a1;
    v87 = a2;
    sub_1DF5EB884();

    sub_1DF63253C();
    v55 = v83;
    v54 = v84;
    v77 = *(v84 + 56);
    v77(v15, 0, 1, v83);
    v56 = *(v54 + 32);
    v57 = v15;
    v58 = v55;
    v56(v29, v57, v55);
    v86 = v81;
    v87 = v82;

    v59 = v78;
    sub_1DF63253C();
    v77(v59, 0, 1, v58);
    v56(v26, v59, v58);
    sub_1DF5EB8D8();
    v70 = sub_1DF6328FC();
    if ((v70 & 1) == 0)
    {
      v72 = v84;
      v73 = *(v84 + 16);
      v73(v80, v29, v58);
      v73(v79, v26, v58);
      v74 = v85;
      sub_1DF6320CC();
      v75 = *(v72 + 8);
      v75(v26, v58);
      v75(v29, v58);
      v76 = sub_1DF6320DC();
      return (*(*(v76 - 8) + 56))(v74, 0, 1, v76);
    }

    v71 = *(v84 + 8);
    v71(v26, v58);
    v71(v29, v58);
    goto LABEL_12;
  }

  v41 = v38;

  sub_1DF5EAEB8(a1, a2);
  if ((v42 & 1) == 0)
  {
    v86 = v81;
    v87 = v82;
    sub_1DF5EB884();

    sub_1DF63253C();
    v49 = v84;
    v61 = v83;
    (*(v84 + 56))(v20, 0, 1, v83);
    (*(v49 + 32))(v40, v20, v61);
    v62 = v80;
    sub_1DF6324AC();
    v63 = *(v49 + 16);
    v63(v79, v62, v61);
    v63(v41, v40, v61);
    v64 = v85;
    sub_1DF6320CC();
    v65 = *(v49 + 8);
    v65(v62, v61);
    v65(v40, v61);
LABEL_14:
    v69 = sub_1DF6320DC();
    return (*(*(v69 - 8) + 56))(v64, 0, 1, v69);
  }

  v43 = sub_1DF6320DC();
  v44 = *(*(v43 - 8) + 56);
  v45 = v43;
  v46 = v85;

  return v44(v46, 1, 1, v45);
}

uint64_t sub_1DF5EA2D4(uint64_t a1)
{
  v2 = sub_1DF5EAE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5EA310(uint64_t a1)
{
  v2 = sub_1DF5EAE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateIntervalParsingStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CB0, &qword_1DF63A238);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5EAE64();
  sub_1DF633AFC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DF5EA50C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CB0, &qword_1DF63A238);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF5EAE64();
  sub_1DF633AFC();
  return (*(v3 + 8))(v6, v2);
}

Swift::Double_optional __swiftcall Double.init(string:)(Swift::String string)
{
  v1 = sub_1DF5EAEB8(string._countAndFlagsBits, string._object);
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1DF5EA6A8()
{
  sub_1DF6321AC();
  sub_1DF6321CC();
  sub_1DF63216C();
  sub_1DF63218C();
  return sub_1DF6321EC();
}

unint64_t sub_1DF5EA7B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DF632C0C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DF5C13A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DF5C13A0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DF632BEC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DF632AEC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DF632AEC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DF632C0C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DF5C13A0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DF632C0C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DF5C13A0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DF5C13A0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DF632AEC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5EAB74(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C() & 1;
  }
}

uint64_t sub_1DF5EABCC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C() & 1;
  }
}

unint64_t sub_1DF5EAC24()
{
  result = qword_1ECE42CA8;
  if (!qword_1ECE42CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CA8);
  }

  return result;
}

uint64_t sub_1DF5EAC78(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF632AFC();

    return sub_1DF632C0C();
  }

  return result;
}

uint64_t sub_1DF5EAD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 80 && a2 == 0xE100000000000000;
  v7 = v6;
  if (v6 || (sub_1DF63394C() & 1) != 0)
  {
    if ((a3 != 80 || a4 != 0xE100000000000000) && (sub_1DF63394C() & 1) == 0)
    {

      return 1;
    }

    if (v7)
    {

LABEL_15:

      return 2;
    }
  }

  v8 = sub_1DF63394C();

  if (v8)
  {
    goto LABEL_15;
  }

  if (a3 == 80 && a4 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    v10 = sub_1DF63394C();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_1DF5EAE64()
{
  result = qword_1ECE42CB8;
  if (!qword_1ECE42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CB8);
  }

  return result;
}

uint64_t sub_1DF5EAEB8(uint64_t a1, uint64_t a2)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF63209C();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE42BF8, &qword_1DF639A58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42CF8, &qword_1DF63A4E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  v55 = sub_1DF63221C();
  v16 = *(v55 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DF6325EC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = sub_1DF63262C();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_1DF63220C();
  sub_1DF63207C();
  v59 = a2;
  v60[0] = 0;
  v58 = a1;
  sub_1DF632BFC();
  v22 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v23 = sub_1DF63295C();

  v24 = [v22 initWithString_];

  sub_1DF63324C();
  if (v25)
  {

    sub_1DF63324C();
    v27 = v26 != 0;
    if (v26)
    {
    }

    while (([v24 isAtEnd] & 1) == 0)
    {
      if (![v24 scanInteger_])
      {
        goto LABEL_56;
      }

      v29 = sub_1DF63325C();
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = v29;
      v32 = v30;
      if (v29 == 89 && v30 == 0xE100000000000000 || (sub_1DF63394C() & 1) != 0 || v31 == 21593 && v32 == 0xE200000000000000 || (sub_1DF63394C() & 1) != 0)
      {
        sub_1DF6321BC();
      }

      else if (v31 == 77 && v32 == 0xE100000000000000 || ((v43 = sub_1DF63394C(), v31 == 21581) ? (v44 = v32 == 0xE200000000000000) : (v44 = 0), !v44 ? (v45 = 0) : (v45 = 1), (v43 & 1) != 0 || (v45 & 1) != 0 || (sub_1DF63394C() & 1) != 0))
      {
        if (v27)
        {
          sub_1DF6321FC();
        }

        else
        {
          sub_1DF6321DC();
        }
      }

      else if (v31 == 68 && v32 == 0xE100000000000000 || ((v46 = sub_1DF63394C(), v31 == 21572) ? (v47 = v32 == 0xE200000000000000) : (v47 = 0), !v47 ? (v48 = 0) : (v48 = 1), (v46 & 1) != 0 || (v48 & 1) != 0 || (sub_1DF63394C() & 1) != 0))
      {
        sub_1DF63217C();
      }

      else if (v31 == 72 && v32 == 0xE100000000000000 || (sub_1DF63394C() & 1) != 0)
      {
        sub_1DF63219C();
      }

      if ((v32 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v33 = v31 & 0xFFFFFFFFFFFFLL;
      }

      v34 = sub_1DF632AFC();
      if (v35)
      {
        v34 = 15;
      }

      if (4 * v33 < v34 >> 14)
      {
        __break(1u);
      }

      v36 = sub_1DF632C0C();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      if (v40 == 84 && v42 == 0xE100000000000000 && !(v36 >> 16) && v38 >> 16 == 1)
      {

        v27 = 1;
      }

      else
      {
        v28 = sub_1DF6338CC();

        v27 |= v28;
      }
    }

    sub_1DF5EA6A8();
    v51 = v50;

    v49 = v51;
  }

  else
  {
LABEL_56:

    v49 = 0;
  }

  (*(v56 + 8))(v7, v57);
  (*(v16 + 8))(v19, v55);
  v52 = *MEMORY[0x1E69E9840];
  return v49;
}

unint64_t sub_1DF5EB5F0()
{
  result = qword_1ECE42CC0;
  if (!qword_1ECE42CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CC0);
  }

  return result;
}

unint64_t sub_1DF5EB648()
{
  result = qword_1ECE42CC8;
  if (!qword_1ECE42CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CC8);
  }

  return result;
}

unint64_t sub_1DF5EB6A0()
{
  result = qword_1ECE42CD0;
  if (!qword_1ECE42CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CD0);
  }

  return result;
}

unint64_t sub_1DF5EB6F8()
{
  result = qword_1ECE42CD8;
  if (!qword_1ECE42CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CD8);
  }

  return result;
}

unint64_t sub_1DF5EB750()
{
  result = qword_1ECE42CE0;
  if (!qword_1ECE42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CE0);
  }

  return result;
}

unint64_t sub_1DF5EB7D8()
{
  result = qword_1ECE42CE8;
  if (!qword_1ECE42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CE8);
  }

  return result;
}

unint64_t sub_1DF5EB830()
{
  result = qword_1ECE42CF0;
  if (!qword_1ECE42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42CF0);
  }

  return result;
}

unint64_t sub_1DF5EB884()
{
  result = qword_1ECE42D08;
  if (!qword_1ECE42D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42D08);
  }

  return result;
}

unint64_t sub_1DF5EB8D8()
{
  result = qword_1ECE42D10;
  if (!qword_1ECE42D10)
  {
    sub_1DF63252C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42D10);
  }

  return result;
}

uint64_t Duration.formattedDescription.getter(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_1DF633B5C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF633B3C();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF633BAC();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DF633BBC();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v21 = sub_1DF633B7C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DF638990;
  sub_1DF633B6C();
  sub_1DF5EC2B4(v25);
  swift_setDeallocating();
  (*(v22 + 8))(v25 + v24, v21);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v34 + 8))(v5, v35);
  (*(v32 + 8))(v9, v33);
  (*(v30 + 8))(v13, v31);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v26 = sub_1DF6325DC();
  __swift_project_value_buffer(v26, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v27 = v37;
  v28 = *(v36 + 8);
  v28(v18, v37);
  sub_1DF5EC7C8(&qword_1ED8E4B78, MEMORY[0x1E696A218]);
  sub_1DF633BCC();
  v28(v20, v27);
  return v40;
}

uint64_t static Duration.description<A>(_:_:units:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v3 = sub_1DF633B5C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF633B3C();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF633BAC();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF633BBC();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1DF6335EC();
  v35 = v44;
  v36 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v22 = sub_1DF633B7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DF638990;
  (*(v23 + 16))(v26 + v25, v32, v22);
  sub_1DF5EC2B4(v26);
  swift_setDeallocating();
  (*(v23 + 8))(v26 + v25, v22);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v39 + 8))(v6, v40);
  (*(v37 + 8))(v10, v38);
  (*(v33 + 8))(v14, v34);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v27 = sub_1DF6325DC();
  __swift_project_value_buffer(v27, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v28 = v42;
  v29 = *(v41 + 8);
  v29(v19, v42);
  sub_1DF5EC7C8(&qword_1ED8E4B78, MEMORY[0x1E696A218]);
  sub_1DF633BCC();
  v29(v21, v28);
  return v43;
}

uint64_t Duration.nanoseconds.getter()
{
  result = _ss8DurationV10FindMyBaseE7secondss5Int64Vvg_0();
  v2 = 1000000000 * result;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v2 + v1 / 1000000000;
  if (__OFADD__(v2, v1 / 1000000000))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5EC2B4(uint64_t a1)
{
  v2 = sub_1DF633B7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D28, &qword_1DF63A500);
    v10 = sub_1DF63342C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1DF5EC7C8(&unk_1ED8E4B80, MEMORY[0x1E696A1C0]);
      v18 = sub_1DF6328BC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1DF5EC7C8(&qword_1ECE42D30, MEMORY[0x1E696A1C0]);
          v25 = sub_1DF63292C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DF5EC5D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D20, &qword_1DF63A4F8);
    v3 = sub_1DF63342C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1DF63298C();
      sub_1DF633A6C();
      v29 = v7;
      sub_1DF632ACC();
      v9 = sub_1DF633AAC();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1DF63298C();
        v20 = v19;
        if (v18 == sub_1DF63298C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1DF63394C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DF5EC7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF5EC810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v3 = sub_1DF633B5C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF633B3C();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF633BAC();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF633BBC();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1DF6335AC();
  sub_1DF5F22D0(&qword_1ECE422D8, MEMORY[0x1E69E87E8]);
  sub_1DF6335EC();
  v33 = v44;
  v34 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D18, &qword_1DF63A4E8);
  v22 = sub_1DF633B7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DF638990;
  (*(v23 + 16))(v26 + v25, v32, v22);
  sub_1DF5EC2B4(v26);
  swift_setDeallocating();
  (*(v23 + 8))(v26 + v25, v22);
  swift_deallocClassInstance();
  sub_1DF633B9C();
  sub_1DF633B2C();
  sub_1DF633B4C();
  sub_1DF63200C();

  (*(v39 + 8))(v6, v40);
  (*(v37 + 8))(v10, v38);
  (*(v35 + 8))(v14, v36);
  if (qword_1ED8E4BD0 != -1)
  {
    swift_once();
  }

  v27 = sub_1DF6325DC();
  __swift_project_value_buffer(v27, qword_1ED8E4BD8);
  sub_1DF633B8C();
  v28 = v42;
  v29 = *(v41 + 8);
  v29(v19, v42);
  sub_1DF5F22D0(&qword_1ED8E4B78, MEMORY[0x1E696A218]);
  sub_1DF633BCC();
  v29(v21, v28);
  return v43;
}

uint64_t sub_1DF5ECCFC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DF5ECD68()
{
  v1 = (v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t TimeTracker.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1DF6335BC();
  v4 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  *(v3 + v4) = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  v5 = (v3 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  *v5 = 0;
  v5[1] = 0;
  return v3;
}

uint64_t TimeTracker.init()()
{
  swift_defaultActor_initialize();
  sub_1DF6335BC();
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  *(v0 + v1) = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  v2 = (v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  *v2 = 0;
  v2[1] = 0;
  return v0;
}

uint64_t sub_1DF5ECE90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13[-v7];
  v9 = (v2 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = a1;
  v9[1] = a2;

  sub_1DF63356C();
  v11 = sub_1DF6335AC();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1DF5C5A04(v8, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1DF5ECFE8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_1DF59F184(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v18 = sub_1DF6335AC();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v17 = 0;
    goto LABEL_6;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = sub_1DF6335AC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v8, v14 + *(v16 + 72) * v13, v15);

  v17 = 1;
  (*(v16 + 56))(v8, 0, 1, v15);
LABEL_6:
  sub_1DF59CB50(v8, &qword_1ECE42A20, &qword_1DF638C58);
  return v17;
}

uint64_t sub_1DF5ED1D0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v68 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v4 = *(*(v78 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v77 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v9 = *(v8 - 8);
  v79 = v8;
  v80 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v67 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - v15;
  v17 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v86 = MEMORY[0x1E69E7CC0];

    sub_1DF5DB1F8(0, v19, 0);
    v20 = v86;
    v21 = v18 + 64;
    v22 = -1 << *(v18 + 32);
    v23 = sub_1DF6333DC();
    v24 = 0;
    v25 = *(v18 + 36);
    v70 = v18 + 72;
    v71 = v19;
    v74 = v18 + 64;
    v75 = v16;
    v72 = v25;
    v73 = v18;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(v18 + 32))
    {
      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_37;
      }

      if (v25 != *(v18 + 36))
      {
        goto LABEL_38;
      }

      v82 = 1 << v23;
      v83 = v23 >> 6;
      v81 = v24;
      v27 = v78;
      v28 = *(v78 + 48);
      v29 = *(v18 + 56);
      v30 = (*(v18 + 48) + 16 * v23);
      v32 = *v30;
      v31 = v30[1];
      v33 = v23;
      v34 = sub_1DF6335AC();
      v35 = *(v34 - 8);
      v36 = *(v35 + 72);
      v84 = v20;
      v85 = v33;
      v37 = v29 + v36 * v33;
      v38 = *(v35 + 16);
      v39 = v76;
      v38(&v76[v28], v37, v34);
      v40 = v77;
      *v77 = v32;
      *(v40 + 8) = v31;
      v41 = *(v27 + 48);
      v42 = &v39[v28];
      v20 = v84;
      (*(v35 + 32))(v40 + v41, v42, v34);
      v43 = v75;
      v38(v75 + *(v79 + 48), v40 + v41, v34);
      *v43 = v32;
      v43[1] = v31;
      swift_bridgeObjectRetain_n();
      sub_1DF59CB50(v40, &qword_1ECE42D40, &qword_1DF63A508);
      v86 = v20;
      v3 = *(v20 + 16);
      v44 = *(v20 + 24);
      if (v3 >= v44 >> 1)
      {
        sub_1DF5DB1F8(v44 > 1, v3 + 1, 1);
        v20 = v86;
      }

      *(v20 + 16) = v3 + 1;
      sub_1DF5F2268(v43, v20 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v3, &qword_1ECE42A28, &qword_1DF638C60);
      v18 = v73;
      v21 = v74;
      v26 = 1 << *(v73 + 32);
      if (v85 >= v26)
      {
        goto LABEL_39;
      }

      v45 = *(v74 + 8 * v83);
      if ((v45 & v82) == 0)
      {
        goto LABEL_40;
      }

      LODWORD(v25) = v72;
      if (v72 != *(v73 + 36))
      {
        goto LABEL_41;
      }

      v46 = v45 & (-2 << (v85 & 0x3F));
      if (v46)
      {
        v26 = __clz(__rbit64(v46)) | v85 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v3 = v83 << 6;
        v47 = v83 + 1;
        v48 = (v70 + 8 * v83);
        while (v47 < (v26 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v3 += 64;
          ++v47;
          if (v50)
          {
            sub_1DF5DC9EC(v85, v72, 0);
            v26 = __clz(__rbit64(v49)) + v3;
            goto LABEL_4;
          }
        }

        sub_1DF5DC9EC(v85, v72, 0);
      }

LABEL_4:
      v24 = v81 + 1;
      v23 = v26;
      if (v81 + 1 == v71)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_21:
    v86 = v20;

    sub_1DF5EFFF4(&v86, &qword_1ECE42A28, &qword_1DF638C60, sub_1DF5F1F3C);

    v51 = v86;
    v52 = *(v86 + 16);
    if (!v52)
    {
LABEL_35:

      return 0;
    }

    v53 = 0;
    v3 = &qword_1DF638C60;
    while (v53 < *(v51 + 16))
    {
      v54 = v51 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v55 = *(v80 + 72);
      v56 = v67;
      sub_1DF59CC98(v54 + v55 * v53, v67, &qword_1ECE42A28, &qword_1DF638C60);
      if (*v56 == v68 && v56[1] == v69)
      {
        sub_1DF59CB50(v56, &qword_1ECE42A28, &qword_1DF638C60);
LABEL_32:
        if (!v53)
        {
          goto LABEL_35;
        }

        if (v53 <= *(v51 + 16))
        {
          v60 = v66;
          sub_1DF59CC98(v54 + v55 * (v53 - 1), v66, &qword_1ECE42A28, &qword_1DF638C60);

          v61 = *v60;
          v62 = *(v60 + 1);
          v63 = *(v79 + 48);
          v64 = sub_1DF6335AC();
          (*(*(v64 - 8) + 8))(&v60[v63], v64);
          return v61;
        }

        goto LABEL_43;
      }

      v58 = v56;
      v59 = sub_1DF63394C();
      sub_1DF59CB50(v58, &qword_1ECE42A28, &qword_1DF638C60);
      if (v59)
      {
        goto LABEL_32;
      }

      if (v52 == ++v53)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DF5ED878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF633B7C();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6335AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (*(v22 + 16))
  {

    v23 = sub_1DF59F184(a1, a2);
    if (v24)
    {
      (*(v11 + 16))(v18, *(v22 + 56) + *(v11 + 72) * v23, v10);

      (*(v11 + 32))(v20, v18, v10);
      sub_1DF63356C();
      sub_1DF633B6C();
      v25 = sub_1DF5EC810(v20, v15, v9);
      (*(v29 + 8))(v9, v30);
      v26 = *(v11 + 8);
      v26(v15, v10);
      v26(v20, v10);
      return v25;
    }
  }

  return 7104878;
}

uint64_t sub_1DF5EDB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a3;
  v42 = a4;
  v8 = sub_1DF6335AC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v22 = *(v4 + v21);
  if (*(v22 + 16))
  {

    v23 = sub_1DF59F184(a1, a2);
    if (v24)
    {
      v25 = *(v22 + 56);
      v37 = v9[9];
      v38 = v9[2];
      v39 = v15;
      v38(v18, v25 + v37 * v23, v8);

      v26 = v9[4];
      v26(v20, v18, v8);
      v27 = *(v5 + v21);
      if (*(v27 + 16))
      {
        v28 = *(v5 + v21);

        v29 = sub_1DF59F184(v41, v42);
        if (v30)
        {
          v31 = v40;
          v38(v40, *(v27 + 56) + v29 * v37, v8);

          v32 = v39;
          v26(v39, v31, v8);
          v33 = sub_1DF63359C();
          v34 = v9[1];
          v34(v32, v8);
          v34(v20, v8);
          return v33;
        }
      }

      (v9[1])(v20, v8);
    }

    else
    {
    }
  }

  return sub_1DF633C0C();
}

uint64_t sub_1DF5EDDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v8 = sub_1DF633B7C();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF6335AC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v24 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v25 = *(v4 + v24);
  if (*(v25 + 16))
  {

    v26 = sub_1DF59F184(a1, a2);
    if (v27)
    {
      v28 = *(v25 + 56) + v12[9] * v26;
      v29 = v12[2];
      v42 = v12[9];
      v43 = v29;
      v29(v21, v28, v11);

      v30 = v21;
      v31 = v12[4];
      v31(v23, v30, v11);
      v32 = *(v5 + v24);
      if (*(v32 + 16))
      {
        v33 = *(v5 + v24);

        v34 = sub_1DF59F184(v48, v49);
        if (v35)
        {
          v43(v16, *(v32 + 56) + v34 * v42, v11);

          v36 = v44;
          v31(v44, v16, v11);
          v37 = v45;
          sub_1DF633B6C();
          v38 = sub_1DF5EC810(v23, v36, v37);
          (*(v46 + 8))(v37, v47);
          v39 = v12[1];
          v39(v36, v11);
          v39(v23, v11);
          return v38;
        }
      }

      (v12[1])(v23, v11);
    }

    else
    {
    }
  }

  return 7104878;
}

uint64_t sub_1DF5EE120()
{
  v105 = sub_1DF633B7C();
  v101 = *(v105 - 8);
  v1 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1DF6335AC();
  v3 = *(v130 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v130);
  v103 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v102 = &v101 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v106 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v101 - v11;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v12 = *(*(v122 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v122);
  v121 = (&v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v101 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v16 = *(v123 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v123);
  v109 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v101 - v20);
  v22 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v111 = v0;
  v110 = v22;
  v23 = *(v0 + v22);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v124 = v3;
  if (!v24)
  {
LABEL_21:
    v131 = v25;

    sub_1DF5EFFF4(&v131, &qword_1ECE42A28, &qword_1DF638C60, sub_1DF5F1F3C);

    v57 = v131;
    v58 = *(v131 + 16);
    if (!v58)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v59 = *(v123 + 48);
    v60 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v61 = v109;
    sub_1DF59CC98(v131 + v60, v109, &qword_1ECE42A28, &qword_1DF638C60);
    v63 = *v61;
    v62 = v61[1];
    v64 = v3[1];
    v126 = v59;
    v127 = v64;
    v128 = (v3 + 1);
    v64(v61 + v59, v130);
    v65 = v58 - 1;
    v118 = v57;
    if (v58 == 1)
    {
      v66 = MEMORY[0x1E69E7CC0];
LABEL_24:

      return v66;
    }

    v68 = *(v16 + 72);
    v122 = (v3 + 4);
    v123 = (v3 + 2);
    v119 = v101 + 8;
    v125 = v68;
    v69 = v57 + v68 + v60;
    v66 = MEMORY[0x1E69E7CC0];
    v70 = v62;
    v71 = v109;
    while (1)
    {
      sub_1DF59CC98(v69, v71, &qword_1ECE42A28, &qword_1DF638C60);
      v72 = v71[1];
      v129 = *v71;
      v73 = *(v111 + v110);
      if (!*(v73 + 16))
      {
        goto LABEL_36;
      }

      v74 = *(v111 + v110);

      v75 = sub_1DF59F184(v63, v70);
      if ((v76 & 1) == 0)
      {
        break;
      }

      v77 = *(v73 + 56);
      v78 = v3;
      v120 = v3[9];
      v79 = v3[2];
      v80 = v106;
      v81 = v130;
      v121 = v79;
      v79(v106, v77 + v120 * v75, v130);

      v82 = v78[4];
      v82(v108, v80, v81);
      v83 = *(v111 + v110);
      if (!*(v83 + 16))
      {
        goto LABEL_35;
      }

      v84 = *(v111 + v110);

      v85 = sub_1DF59F184(v129, v72);
      if ((v86 & 1) == 0)
      {

LABEL_35:
        (v127)(v108, v130);
LABEL_36:
        v94 = 0xE300000000000000;
        v92 = 7104878;
        goto LABEL_37;
      }

      v87 = v103;
      v88 = v130;
      v121(v103, *(v83 + 56) + v85 * v120, v130);

      v89 = v102;
      v82(v102, v87, v88);
      v90 = v104;
      sub_1DF633B6C();
      v91 = v89;
      v92 = sub_1DF5EC810(v108, v89, v90);
      v94 = v93;
      (*v119)(v90, v105);
      v95 = v91;
      v96 = v127;
      (v127)(v95, v130);
      v96(v108, v130);
LABEL_37:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1DF5C15B0(0, v66[2] + 1, 1, v66);
      }

      v98 = v66[2];
      v97 = v66[3];
      if (v98 >= v97 >> 1)
      {
        v66 = sub_1DF5C15B0((v97 > 1), v98 + 1, 1, v66);
      }

      v66[2] = v98 + 1;
      v99 = &v66[6 * v98];
      v99[4] = v63;
      v99[5] = v70;
      v63 = v129;
      v100 = v130;
      v99[6] = v129;
      v99[7] = v72;
      v99[8] = v92;
      v99[9] = v94;
      v71 = v109;
      (v127)(v109 + v126, v100);
      v3 = v124;
      v69 += v125;
      v70 = v72;
      if (!--v65)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_36;
  }

  v131 = MEMORY[0x1E69E7CC0];

  sub_1DF5DB1F8(0, v24, 0);
  v25 = v131;
  v26 = v23 + 64;
  v27 = -1 << *(v23 + 32);
  v28 = sub_1DF6333DC();
  v29 = v3;
  v30 = 0;
  v31 = *(v23 + 36);
  v118 = (v29 + 2);
  v116 = v29 + 4;
  v107 = v23 + 72;
  v119 = v16;
  v112 = v24;
  v114 = v23 + 64;
  v113 = v31;
  v117 = v21;
  v115 = v23;
  while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v23 + 32))
  {
    if ((*(v26 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
    {
      goto LABEL_44;
    }

    if (v31 != *(v23 + 36))
    {
      goto LABEL_45;
    }

    v126 = 1 << v28;
    v127 = v28 >> 6;
    v125 = v30;
    v33 = v122;
    v34 = *(v122 + 48);
    v35 = *(v23 + 56);
    v36 = (*(v23 + 48) + 16 * v28);
    v37 = *v36;
    v38 = v36[1];
    v39 = v124;
    v40 = v35 + v124[9] * v28;
    v41 = v124[2];
    v42 = v120;
    v128 = v28;
    v129 = v25;
    v43 = v130;
    v41(&v120[v34], v40, v130);
    v44 = v121;
    *v121 = v37;
    *(v44 + 8) = v38;
    v45 = *(v33 + 48);
    v46 = v39[4];
    v21 = v117;
    v46(v44 + v45, &v42[v34], v43);
    v47 = v43;
    v25 = v129;
    v41(v21 + *(v123 + 48), v44 + v45, v47);
    *v21 = v37;
    v21[1] = v38;
    swift_bridgeObjectRetain_n();
    sub_1DF59CB50(v44, &qword_1ECE42D40, &qword_1DF63A508);
    v131 = v25;
    v49 = *(v25 + 16);
    v48 = *(v25 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1DF5DB1F8(v48 > 1, v49 + 1, 1);
      v25 = v131;
    }

    *(v25 + 16) = v49 + 1;
    v16 = v119;
    sub_1DF5F2268(v21, v25 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v119 + 72) * v49, &qword_1ECE42A28, &qword_1DF638C60);
    v23 = v115;
    v32 = 1 << *(v115 + 32);
    if (v128 >= v32)
    {
      goto LABEL_46;
    }

    v26 = v114;
    v50 = *(v114 + 8 * v127);
    if ((v50 & v126) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v31) = v113;
    if (v113 != *(v115 + 36))
    {
      goto LABEL_48;
    }

    v51 = v50 & (-2 << (v128 & 0x3F));
    if (v51)
    {
      v32 = __clz(__rbit64(v51)) | v128 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v52 = v127 << 6;
      v53 = v127 + 1;
      v54 = (v107 + 8 * v127);
      while (v53 < (v32 + 63) >> 6)
      {
        v56 = *v54++;
        v55 = v56;
        v52 += 64;
        ++v53;
        if (v56)
        {
          sub_1DF5DC9EC(v128, v113, 0);
          v32 = __clz(__rbit64(v55)) + v52;
          goto LABEL_4;
        }
      }

      sub_1DF5DC9EC(v128, v113, 0);
    }

LABEL_4:
    v30 = v125 + 1;
    v28 = v32;
    if (v125 + 1 == v112)
    {

      v3 = v124;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DF5EEB6C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v67 = a1;
  v64 = sub_1DF633B7C();
  v86 = *(v64 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = (&v61 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v79 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v78 = (&v61 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D48, &qword_1DF63A510);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = *(v6 + 56);
  v70 = (&v61 - v24);
  v76 = v23;
  v77 = v6 + 56;
  v23();
  v25 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = *(v26 + 16);
  v85 = v10;
  if (v27)
  {
    v28 = sub_1DF5EF6B4(v27, 0);
    v29 = sub_1DF5F1B10(&v87, v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v27, v26);
    v83 = v89;
    v84 = v29;
    v81 = v91;
    v82 = v90;
    swift_bridgeObjectRetain_n();
    sub_1DF5DF418();
    if (v84 != v27)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v81 = v16;
  v87 = v28;
  sub_1DF5EFFF4(&v87, &qword_1ECE42D40, &qword_1DF63A508, sub_1DF5F1F84);

  v30 = v87[2];
  v31 = v70;
  if (v30)
  {
    v75 = v22;
    v74 = *(v9 + 48);
    v73 = *(v5 + 48);
    v32 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v61 = v87;
    v33 = v87 + v32;
    v72 = (v6 + 48);
    v69 = MEMORY[0x1E69E7CC0];
    v62 = (v86 + 8);
    v71 = *(v85 + 72);
    v34 = v81;
    v66 = v5;
    v65 = v9;
    do
    {
      v86 = v30;
      v38 = v78;
      sub_1DF59CC98(v33, v78, &qword_1ECE42D40, &qword_1DF63A508);
      v39 = v38[1];
      v40 = *(v9 + 48);
      v82 = *v38;
      *v34 = v82;
      *(v34 + 1) = v39;
      v41 = sub_1DF6335AC();
      v42 = *(v41 - 8);
      v84 = *(v42 + 32);
      v85 = v41;
      v83 = v42 + 32;
      v84(&v34[v40], v38 + v74);
      v43 = v75;
      sub_1DF59CC98(v31, v75, &qword_1ECE42D48, &qword_1DF63A510);
      if ((*v72)(v43, 1, v5) == 1)
      {
        sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
        sub_1DF59CB50(v43, &qword_1ECE42D48, &qword_1DF63A510);
      }

      else
      {
        v44 = v43;
        v45 = v80;
        sub_1DF5F2268(v44, v80, &qword_1ECE42A28, &qword_1DF638C60);
        v46 = *(v5 + 48);
        sub_1DF63359C();
        if (sub_1DF633BFC())
        {
          v31 = v70;
          sub_1DF59CB50(v70, &qword_1ECE42D48, &qword_1DF63A510);
          v9 = v65;
        }

        else
        {
          v47 = v45[1];
          v87 = *v45;
          v88 = v47;

          MEMORY[0x1E12D82E0](15917, 0xE200000000000000);
          MEMORY[0x1E12D82E0](v82, v39);
          MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
          v48 = v63;
          sub_1DF633B6C();
          v49 = sub_1DF5EC810(v45 + v46, &v34[v40], v48);
          v51 = v50;
          (*v62)(v48, v64);
          MEMORY[0x1E12D82E0](v49, v51);

          v52 = v87;
          v53 = v88;
          v54 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1DF5C1294(0, *(v54 + 2) + 1, 1, v54);
          }

          v9 = v65;
          v56 = *(v54 + 2);
          v55 = *(v54 + 3);
          v31 = v70;
          if (v56 >= v55 >> 1)
          {
            v54 = sub_1DF5C1294((v55 > 1), v56 + 1, 1, v54);
          }

          sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
          *(v54 + 2) = v56 + 1;
          v69 = v54;
          v57 = &v54[16 * v56];
          *(v57 + 4) = v52;
          *(v57 + 5) = v53;
        }

        sub_1DF59CB50(v80, &qword_1ECE42A28, &qword_1DF638C60);
        v5 = v66;
      }

      v34 = v81;
      v35 = v79;
      sub_1DF59CC98(v81, v79, &qword_1ECE42D40, &qword_1DF63A508);
      v36 = v35[1];
      v37 = *(v9 + 48);
      *v31 = *v35;
      v31[1] = v36;
      (v84)(v31 + v73, v35 + v37, v85);
      (v76)(v31, 0, 1, v5);
      sub_1DF59CB50(v34, &qword_1ECE42D40, &qword_1DF63A508);
      v33 += v71;
      v30 = v86 - 1;
    }

    while (v86 != 1);

    v58 = v69;
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  v87 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v59 = sub_1DF6328DC();

  sub_1DF59CB50(v31, &qword_1ECE42D48, &qword_1DF63A510);
  return v59;
}

uint64_t sub_1DF5EF418()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC8];
}

uint64_t TimeTracker.deinit()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_clock;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint);

  v4 = *(v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TimeTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FindMyBase11TimeTracker_clock;
  v2 = sub_1DF6335CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_checkpoint);

  v4 = *(v0 + OBJC_IVAR____TtC10FindMyBase11TimeTracker_lastCheckpointName + 8);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1DF5EF5A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1DF5EF624(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D78, &qword_1DF63A5B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

size_t sub_1DF5EF6B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D58, &qword_1DF63A598);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DF5EF7BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D68, &qword_1DF63A5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B60, &qword_1DF6393E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF5EF904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D80, &qword_1DF63A5C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DF5EFA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1DF5EFB04(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D70, &qword_1DF63A5B0);
  v10 = *(type metadata accessor for ImageOffset() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ImageOffset() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DF5EFCDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42918, &qword_1DF638908);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1DF5EFE0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1DF5EFFF4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = sub_1DF5F00C8(v12, a2, a3);
  *a1 = v9;
  return result;
}

uint64_t sub_1DF5F00C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = sub_1DF6338BC();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v10 = sub_1DF632D7C();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_1DF5F0474(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_1DF5F0224(0, v6, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1DF5F0224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v42 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v32 - v20;
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v39 = -v23;
    v40 = v22;
    v25 = a1 - a3;
    v33 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v37 = v24;
    v38 = a3;
    v35 = v26;
    v36 = v25;
    v27 = v42;
    while (1)
    {
      sub_1DF59CC98(v26, v21, a5, a6);
      sub_1DF59CC98(v24, v17, a5, a6);
      v28 = *(v27 + 48);
      v29 = sub_1DF63358C();
      sub_1DF59CB50(v17, a5, a6);
      result = sub_1DF59CB50(v21, a5, a6);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v25 = v36 - 1;
        v26 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_1DF5F2268(v26, v41, a5, a6);
      v27 = v42;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF5F2268(v30, v24, a5, a6);
      v24 += v39;
      v26 += v39;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5F0474(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v117 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v129 = *(v10 - 8);
  v11 = *(v129 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v122 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v115 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v133 = &v115 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v132 = &v115 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v134 = *v117;
    if (!v134)
    {
      goto LABEL_138;
    }

    v10 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v118;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v10;
LABEL_102:
      v135 = result;
      v10 = *(result + 16);
      if (v10 >= 2)
      {
        while (1)
        {
          v110 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v111 = a3;
          v112 = *(result + 16 * v10);
          v113 = result;
          a3 = *(result + 16 * (v10 - 1) + 40);
          sub_1DF5F0DAC(v110 + *(v129 + 72) * v112, v110 + *(v129 + 72) * *(result + 16 * (v10 - 1) + 32), v110 + *(v129 + 72) * a3, v134, a5, a6);
          if (v40)
          {
          }

          if (a3 < v112)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_1DF5F1340(v113);
          }

          if (v10 - 2 >= *(v113 + 2))
          {
            goto LABEL_126;
          }

          v114 = &v113[16 * v10];
          *v114 = v112;
          *(v114 + 1) = a3;
          v135 = v113;
          sub_1DF5F12B4(v10 - 1);
          result = v135;
          v10 = *(v135 + 16);
          a3 = v111;
          if (v10 <= 1)
          {
          }
        }
      }
    }

LABEL_132:
    result = sub_1DF5F1340(v10);
    goto LABEL_102;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v134 = v10;
  v119 = a3;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v123 = v22;
    v121 = v23;
    if (v24 >= v20)
    {
      v39 = v24;
      v40 = v118;
    }

    else
    {
      v25 = v23;
      v26 = *a3;
      v27 = *(v129 + 72);
      v28 = *a3 + v27 * v24;
      v29 = v132;
      sub_1DF59CC98(v28, v132, a5, a6);
      v30 = v26 + v27 * v25;
      v31 = v133;
      sub_1DF59CC98(v30, v133, a5, a6);
      v32 = *(v10 + 48);
      LODWORD(v128) = sub_1DF63358C();
      sub_1DF59CB50(v31, a5, a6);
      result = sub_1DF59CB50(v29, a5, a6);
      v33 = v121 + 2;
      v130 = v27;
      v34 = v26 + v27 * (v121 + 2);
      while (v20 != v33)
      {
        v35 = v132;
        sub_1DF59CC98(v34, v132, a5, a6);
        v36 = v133;
        sub_1DF59CC98(v28, v133, a5, a6);
        v37 = *(v134 + 48);
        v38 = sub_1DF63358C() & 1;
        sub_1DF59CB50(v36, a5, a6);
        result = sub_1DF59CB50(v35, a5, a6);
        ++v33;
        v34 += v130;
        v28 += v130;
        if ((v128 & 1) != v38)
        {
          v39 = v33 - 1;
          goto LABEL_12;
        }
      }

      v39 = v20;
LABEL_12:
      a4 = v116;
      v10 = v134;
      v40 = v118;
      a3 = v119;
      v23 = v121;
      if (v128)
      {
        if (v39 < v121)
        {
          goto LABEL_129;
        }

        if (v121 < v39)
        {
          v41 = v130 * (v39 - 1);
          v42 = v39;
          v43 = v39 * v130;
          v128 = v39;
          v44 = v121;
          v45 = v121 * v130;
          do
          {
            if (v44 != --v42)
            {
              v46 = *v119;
              if (!*v119)
              {
                goto LABEL_135;
              }

              sub_1DF5F2268(v46 + v45, v122, a5, a6);
              if (v45 < v41 || v46 + v45 >= v46 + v43)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1DF5F2268(v122, v46 + v41, a5, a6);
            }

            ++v44;
            v41 -= v130;
            v43 -= v130;
            v45 += v130;
          }

          while (v44 < v42);
          v40 = v118;
          a3 = v119;
          a4 = v116;
          v10 = v134;
          v23 = v121;
          v39 = v128;
        }
      }
    }

    v47 = a3[1];
    if (v39 >= v47)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v39, v23))
    {
      goto LABEL_128;
    }

    if (v39 - v23 >= a4)
    {
LABEL_35:
      v49 = v39;
      goto LABEL_36;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_130;
    }

    if (v23 + a4 >= v47)
    {
      v48 = a3[1];
    }

    else
    {
      v48 = v23 + a4;
    }

    if (v48 < v23)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v39 == v48)
    {
      goto LABEL_35;
    }

    v118 = v40;
    v97 = *(v129 + 72);
    v98 = *a3 + v97 * (v39 - 1);
    v99 = -v97;
    v100 = v121 - v39;
    v130 = *a3;
    v120 = v97;
    v101 = v130 + v39 * v97;
    v124 = v48;
LABEL_90:
    v127 = v98;
    v128 = v39;
    v125 = v101;
    v126 = v100;
    v102 = v98;
LABEL_91:
    v103 = v132;
    sub_1DF59CC98(v101, v132, a5, a6);
    v104 = v133;
    sub_1DF59CC98(v102, v133, a5, a6);
    v105 = *(v10 + 48);
    v106 = sub_1DF63358C();
    sub_1DF59CB50(v104, a5, a6);
    result = sub_1DF59CB50(v103, a5, a6);
    if (v106)
    {
      break;
    }

    v10 = v134;
LABEL_89:
    v39 = v128 + 1;
    v98 = v127 + v120;
    v100 = v126 - 1;
    v101 = v125 + v120;
    v49 = v124;
    if (v128 + 1 != v124)
    {
      goto LABEL_90;
    }

    v40 = v118;
    a3 = v119;
LABEL_36:
    if (v49 < v121)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v123;
    }

    else
    {
      result = sub_1DF5C14AC(0, *(v123 + 2) + 1, 1, v123);
      v22 = result;
    }

    v51 = *(v22 + 2);
    v50 = *(v22 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_1DF5C14AC((v50 > 1), v51 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v52;
    v53 = &v22[16 * v51];
    *(v53 + 4) = v121;
    *(v53 + 5) = v49;
    v130 = *v117;
    if (!v130)
    {
      goto LABEL_137;
    }

    v124 = v49;
    if (v51)
    {
      v10 = v134;
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v22 + 4);
          v56 = *(v22 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_57:
          if (v58)
          {
            goto LABEL_116;
          }

          v71 = &v22[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_119;
          }

          v77 = &v22[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_123;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v81 = &v22[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_71:
        if (v76)
        {
          goto LABEL_118;
        }

        v84 = &v22[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_121;
        }

        if (v87 < v75)
        {
          goto LABEL_4;
        }

LABEL_78:
        v10 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v92 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v93 = a3;
        v94 = v22;
        v95 = *&v22[16 * v10 + 32];
        a3 = *&v22[16 * v54 + 40];
        sub_1DF5F0DAC(v92 + *(v129 + 72) * v95, v92 + *(v129 + 72) * *&v22[16 * v54 + 32], v92 + *(v129 + 72) * a3, v130, a5, a6);
        if (v40)
        {
        }

        if (a3 < v95)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1DF5F1340(v94);
        }

        if (v10 >= *(v94 + 2))
        {
          goto LABEL_113;
        }

        v96 = &v94[16 * v10];
        *(v96 + 4) = v95;
        *(v96 + 5) = a3;
        v135 = v94;
        result = sub_1DF5F12B4(v54);
        v22 = v135;
        v52 = *(v135 + 16);
        v10 = v134;
        a3 = v93;
        if (v52 <= 1)
        {
          goto LABEL_4;
        }
      }

      v59 = &v22[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_114;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_115;
      }

      v66 = &v22[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_117;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_120;
      }

      if (v70 >= v62)
      {
        v88 = &v22[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_124;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    v10 = v134;
LABEL_4:
    v118 = v40;
    v20 = a3[1];
    v21 = v124;
    a4 = v116;
    if (v124 >= v20)
    {
      goto LABEL_99;
    }
  }

  if (v130)
  {
    v107 = v131;
    sub_1DF5F2268(v101, v131, a5, a6);
    v10 = v134;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF5F2268(v107, v102, a5, a6);
    v102 += v99;
    v101 += v99;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
  return result;
}

uint64_t sub_1DF5F0DAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v51 = a3;
  v49 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v50 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v51 - a2;
  if (v51 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v54 = a1;
  v53 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v20;
    if (v20 >= 1)
    {
      v28 = -v16;
      v29 = a4 + v20;
      v44 = a1;
      v45 = a4;
      v43 = v28;
      do
      {
        v41 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v46 = v30;
        while (1)
        {
          v32 = v51;
          if (v30 <= a1)
          {
            v54 = v30;
            v52 = v41;
            goto LABEL_59;
          }

          v42 = v27;
          v51 += v28;
          v33 = v29 + v28;
          v34 = v47;
          v35 = v49;
          sub_1DF59CC98(v29 + v28, v47, a5, v49);
          v36 = v31;
          v37 = v31;
          v38 = v48;
          sub_1DF59CC98(v37, v48, a5, v35);
          v39 = *(v50 + 48);
          v40 = sub_1DF63358C();
          sub_1DF59CB50(v38, a5, v35);
          sub_1DF59CB50(v34, a5, v35);
          if (v40)
          {
            break;
          }

          v27 = v33;
          if (v32 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v36;
            v28 = v43;
          }

          else
          {
            v31 = v36;
            v28 = v43;
            if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v33;
          a1 = v44;
          v30 = v46;
          if (v33 <= v45)
          {
            a2 = v46;
            goto LABEL_58;
          }
        }

        if (v32 < v46 || v51 >= v46)
        {
          a2 = v36;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v28 = v43;
        }

        else
        {
          a2 = v36;
          v27 = v42;
          v28 = v43;
          if (v32 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v44;
      }

      while (v29 > v45);
    }

LABEL_58:
    v54 = a2;
    v52 = v27;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v19;
    v52 = a4 + v19;
    if (v19 >= 1 && a2 < v51)
    {
      v22 = v47;
      do
      {
        v23 = v49;
        sub_1DF59CC98(a2, v22, a5, v49);
        v24 = v48;
        sub_1DF59CC98(a4, v48, a5, v23);
        v25 = *(v50 + 48);
        v26 = sub_1DF63358C();
        sub_1DF59CB50(v24, a5, v23);
        sub_1DF59CB50(v22, a5, v23);
        if (v26)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v54 = a1;
      }

      while (a4 < v46 && a2 < v51);
    }
  }

LABEL_59:
  sub_1DF5F1354(&v54, &v53, &v52, a5, v49);
  return 1;
}

uint64_t sub_1DF5F12B4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF5F1340(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DF5F1354(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DF5F143C(void (*a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = sub_1DF6322FC();
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  result = MEMORY[0x1EEE9AC00](v18);
  v40 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_17:
    a3 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v35 = v12;
  v22 = (v41 + 32);
  v23 = (v41 + 48);
  v24 = 1;
  v38 = a3;
  v39 = (v41 + 56);
  v36 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33 = a1;
  v34 = (v41 + 48);
  while (a4)
  {
    v25 = a4;
    v42 = MEMORY[0x1E12D9570]();
    if ([v25 nextObject])
    {
      v37 = a4;
      v26 = v15;
      sub_1DF63339C();
      swift_unknownObjectRelease();
      sub_1DF5A27C4(v43, v44);
      sub_1DF5A27C4(v44, v43);
      v27 = v35;
      if (swift_dynamicCast())
      {
        v28 = *v39;
        (*v39)(v27, 0, 1, v18);
        v29 = v27;
        v15 = v26;
        (*v22)(v26, v29, v18);
        v28(v26, 0, 1, v18);
        v23 = v34;
        a4 = v37;
        goto LABEL_12;
      }

      v30 = *v39;
      (*v39)(v27, 1, 1, v18);
      sub_1DF59CB50(v27, &qword_1ECE42D50, &qword_1DF63AAE0);
      v15 = v26;
      v30(v26, 1, 1, v18);
    }

    else
    {

      (*v39)(v15, 1, 1, v18);
    }

    a4 = 0;
LABEL_12:
    objc_autoreleasePoolPop(v42);

    sub_1DF5F2268(v15, v17, &qword_1ECE42D50, &qword_1DF63AAE0);
    if ((*v23)(v17, 1, v18) == 1)
    {
      goto LABEL_19;
    }

    a1 = *v22;
    v31 = v40;
    (*v22)(v40, v17, v18);
    a1(a2, v31, v18);
    a3 = v38;
    if (v38 == v24)
    {
      goto LABEL_20;
    }

    a2 += *(v41 + 72);
    if (__OFADD__(v24++, 1))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  (*v39)(v17, 1, 1, v18);
LABEL_19:
  sub_1DF59CB50(v17, &qword_1ECE42D50, &qword_1DF63AAE0);
  a3 = v24 - 1;
LABEL_20:
  a1 = v33;
LABEL_21:
  *a1 = a4;
  return a3;
}

uint64_t sub_1DF5F1844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v8)
    {
      v9 = a4 >> 32;
    }

    else
    {
      v9 = BYTE6(a5);
    }

    if (a2)
    {
      goto LABEL_6;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v8 == 2)
  {
    v9 = *(a4 + 24);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }
  }

LABEL_6:
  if (!a3)
  {
    v10 = 0;
    goto LABEL_45;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v21 = a3;
  v22 = a1;
  v10 = 0;
  v11 = a3 - 1;
  while (1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a4 + 16);
LABEL_14:
        if (v9 == v12)
        {
          goto LABEL_46;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = a4;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (!v9)
    {
LABEL_46:
      a1 = v22;
      goto LABEL_45;
    }

LABEL_17:
    if (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_55;
      }

      if (v9 < *(a4 + 16))
      {
        goto LABEL_49;
      }

      if (v9 >= *(a4 + 24))
      {
        goto LABEL_51;
      }

      v15 = sub_1DF63211C();
      if (!v15)
      {
        goto LABEL_57;
      }

      v16 = v15;
      a1 = sub_1DF63214C();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      if (v9 < a4 || v9 >= a4 >> 32)
      {
        goto LABEL_50;
      }

      v18 = sub_1DF63211C();
      if (!v18)
      {
        goto LABEL_56;
      }

      v16 = v18;
      a1 = sub_1DF63214C();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_52;
      }

LABEL_33:
      v14 = *(v16 + v17);
      goto LABEL_34;
    }

    if (v9 >= BYTE6(a5))
    {
      goto LABEL_48;
    }

    v23 = a4;
    v24 = a5;
    v25 = BYTE2(a5);
    v26 = BYTE3(a5);
    v27 = BYTE4(a5);
    v28 = BYTE5(a5);
    v14 = *(&v23 + v9);
LABEL_34:
    *(a2 + v10) = v14;
    if (v11 == v10)
    {
      break;
    }

    if (__OFADD__(++v10, 1))
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v10 = v21;
  a1 = v22;
LABEL_45:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v9;
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1DF5F1B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D40, &qword_1DF63A508);
  v43 = *(v46 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v44 = &v40 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  v47 = a2;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = v14;
    v41 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    v42 = a3;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = *(a4 + 56);
      v26 = a4;
      v27 = (*(a4 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = sub_1DF6335AC();
      v31 = *(v30 - 8);
      v32 = v25 + *(v31 + 72) * v24;
      v33 = v45;
      (*(v31 + 16))(&v45[*(v46 + 48)], v32, v30);
      *v33 = v28;
      v33[1] = v29;
      v34 = v33;
      v35 = v44;
      sub_1DF5F2268(v34, v44, &qword_1ECE42D40, &qword_1DF63A508);
      v36 = v35;
      v37 = v47;
      sub_1DF5F2268(v36, v47, &qword_1ECE42D40, &qword_1DF63A508);
      a3 = v42;
      if (v19 == v42)
      {

        a1 = v41;
        a4 = v26;
        goto LABEL_23;
      }

      a1 = (v37 + *(v43 + 72));
      v47 = a1;

      result = v19;
      v38 = __OFADD__(v19++, 1);
      a4 = v26;
      v17 = v23;
      if (v38)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v39 = v17 + 1;
    }

    else
    {
      v39 = v18;
    }

    v23 = v39 - 1;
    a3 = result;
    a1 = v41;
LABEL_23:
    v14 = v40;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DF5F1DE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TimeTracker()
{
  result = qword_1ECE42520;
  if (!qword_1ECE42520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF5F2020()
{
  result = sub_1DF6335CC();
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

uint64_t sub_1DF5F2268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF5F22D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KeyedThrottle.__allocating_init(throttleInterval:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  KeyedThrottle.init(throttleInterval:)(a1, a2);
  return v7;
}

uint64_t KeyedThrottle.throttle(key:block:)(uint64_t a1, uint64_t (*a2)(uint64_t), char *a3)
{
  v71 = a3;
  v72 = a2;
  v5 = *v3;
  v6 = sub_1DF6335CC();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v66 - v12;
  v14 = sub_1DF6335AC();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v66 - v25;
  v27 = *(v3 + qword_1ED8E4B38);
  v69 = a1;
  v80 = a1;
  v81 = v3;
  v28 = *(v5 + 80);
  v73 = v3;
  v67 = *(v5 + 88);
  v68 = v28;
  sub_1DF63288C();
  v29 = *(*v27 + *MEMORY[0x1E69E6B68] + 16);
  v30 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v27 + v30));
  sub_1DF5F34F0((v27 + v29), v13);
  os_unfair_lock_unlock((v27 + v30));
  LODWORD(v30) = *v13;
  v31 = *(v10 + 72);
  v32 = &v13[*(v10 + 56)];
  v77 = v26;
  sub_1DF5F350C(v32, v26);
  v33 = v79;
  v34 = *(v79 + 32);
  v78 = v22;
  v34(v22, &v13[v31], v14);
  if (v30 == 1)
  {
    v35 = v76;
    sub_1DF6335BC();
    v36 = sub_1DF63356C();
    v37 = v72(v36);
    v38 = v70;
    sub_1DF63356C();
    v71 = v20;
    sub_1DF63359C();
    v72 = v39;
    v70 = *(v33 + 8);
    v40 = (v70)(v38, v14);
    v41 = v14;
    if ((v37 & 1) == 0)
    {
      v66 = v14;
      MEMORY[0x1EEE9AC00](v40);
      v42 = v67;
      *(&v66 - 6) = v68;
      *(&v66 - 5) = v42;
      v43 = v77;
      v44 = v78;
      *(&v66 - 4) = v69;
      *(&v66 - 3) = v44;
      *(&v66 - 2) = v43;
      v45 = *(*v27 + *MEMORY[0x1E69E6B68] + 16);
      v46 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v27 + v46));
      sub_1DF5F3F90((v27 + v45));
      os_unfair_lock_unlock((v27 + v46));
      v41 = v66;
    }

    v47 = *(v73 + qword_1ED8E4B40);
    v48 = *(v73 + qword_1ED8E4B40 + 8);
    if (sub_1DF633BFC())
    {
      if (qword_1ED8E5958 != -1)
      {
        swift_once();
      }

      v49 = sub_1DF6326AC();
      __swift_project_value_buffer(v49, qword_1ED8E69A0);
      swift_retain_n();
      v50 = sub_1DF63268C();
      v51 = sub_1DF63316C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v82[0] = v69;
        *v52 = 136446466;
        v53 = sub_1DF633BEC();
        v55 = sub_1DF59EEC8(v53, v54, v82);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2082;

        v56 = sub_1DF633BEC();
        v58 = v57;

        v59 = sub_1DF59EEC8(v56, v58, v82);

        *(v52 + 14) = v59;
        _os_log_impl(&dword_1DF59A000, v50, v51, "KeyedThrottle: Running time of block (%{public}s) was longer than throttleInterval (%{public}s)", v52, 0x16u);
        v60 = v69;
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v60, -1, -1);
        MEMORY[0x1E12D9D80](v52, -1, -1);

        (v70)(v71, v41);
        (*(v74 + 8))(v76, v75);
LABEL_16:
        v33 = v79;
        goto LABEL_17;
      }
    }

    (v70)(v71, v41);
    (*(v74 + 8))(v35, v75);
    goto LABEL_16;
  }

  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v61 = sub_1DF6326AC();
  __swift_project_value_buffer(v61, qword_1ED8E69A0);
  v62 = sub_1DF63268C();
  v63 = sub_1DF63318C();
  v41 = v14;
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1DF59A000, v62, v63, "KeyedThrottle: Not dispatching, event is throttled", v64, 2u);
    MEMORY[0x1E12D9D80](v64, -1, -1);
  }

LABEL_17:
  (*(v33 + 8))(v78, v41);
  return sub_1DF59CB50(v77, &qword_1ECE42A20, &qword_1DF638C58);
}

uint64_t *KeyedThrottle.init(throttleInterval:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DF6335BC();
  v6 = qword_1ED8E4B38;
  v7 = *(v5 + 80);
  v8 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v9 = sub_1DF632D6C();
  v10 = sub_1DF5F4198(v9, v7, v8, *(v5 + 88));

  v15 = v10;
  v11 = sub_1DF63288C();
  v12 = sub_1DF5A610C(&v15, v11);

  *(v2 + v6) = v12;
  v13 = (v2 + qword_1ED8E4B40);
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

uint64_t KeyedThrottle.__allocating_init(throttleInterval:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  KeyedThrottle.init(throttleInterval:)();
  return v3;
}

uint64_t *KeyedThrottle.init(throttleInterval:)()
{
  v1 = *v0;
  sub_1DF6335BC();
  v2 = qword_1ED8E4B38;
  v3 = *(v1 + 80);
  v4 = sub_1DF6335AC();
  swift_getTupleTypeMetadata2();
  v5 = sub_1DF632D6C();
  v6 = sub_1DF5F4198(v5, v3, v4, *(v1 + 88));

  v13 = v6;
  v7 = sub_1DF63288C();
  v8 = sub_1DF5A610C(&v13, v7);

  *(v0 + v2) = v8;
  v9 = sub_1DF633C1C();
  v10 = (v0 + qword_1ED8E4B40);
  *v10 = v9;
  v10[1] = v11;
  return v0;
}

uint64_t sub_1DF5F2D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v47 = a5;
  v8 = sub_1DF6335AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v43[0] = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v43 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v43 - v23;
  v43[1] = a1;
  v44 = a3;
  v25 = *a1;
  v26 = *(v25 + 16);
  v46 = a2;
  if (v26 && (v27 = sub_1DF59F184(a2, a3), (v28 & 1) != 0))
  {
    (*(v9 + 16))(v24, *(v25 + 56) + *(v9 + 72) * v27, v8);
    v29 = *(v9 + 56);
    v29(v24, 0, 1, v8);
  }

  else
  {
    v29 = *(v9 + 56);
    v29(v24, 1, 1, v8);
  }

  v30 = v45;
  sub_1DF63356C();
  sub_1DF5F45A4(v24, v22);
  if ((*(v9 + 48))(v22, 1, v8) == 1)
  {
    sub_1DF59CB50(v22, &qword_1ECE42A20, &qword_1DF638C58);
    v31 = v46;
  }

  else
  {
    v32 = v43[0];
    (*(v9 + 32))(v43[0], v22, v8);
    sub_1DF63359C();
    v33 = *(v30 + qword_1ED8E4B40);
    v34 = *(v30 + qword_1ED8E4B40 + 8);
    v35 = sub_1DF633BFC();
    (*(v9 + 8))(v32, v8);
    v31 = v46;
    if ((v35 & 1) == 0)
    {
      v36 = 0;
      goto LABEL_10;
    }
  }

  (*(v9 + 16))(v19, v14, v8);
  v36 = 1;
  v29(v19, 0, 1, v8);
  v37 = v44;

  sub_1DF5C5A04(v19, v31, v37);
LABEL_10:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 64);
  v41 = v47;
  *v47 = v36;
  sub_1DF5F350C(v24, &v41[v39]);
  return (*(v9 + 32))(&v41[v40], v14, v8);
}

uint64_t sub_1DF5F30F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v44 = a2;
  v45 = a4;
  v6 = *a3;
  v7 = *(*a3 + 80);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = v39 - v9;
  v10 = sub_1DF6335AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v39[0] = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v40 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v39 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v39 - v24;
  v43 = a1;
  v26 = *a1;
  v27 = v44;
  v39[1] = *(v6 + 88);
  sub_1DF63289C();
  sub_1DF63356C();
  sub_1DF5F45A4(v25, v23);
  if ((*(v11 + 48))(v23, 1, v10) == 1)
  {
    sub_1DF59CB50(v23, &qword_1ECE42A20, &qword_1DF638C58);
  }

  else
  {
    v28 = v39[0];
    (*(v11 + 32))(v39[0], v23, v10);
    sub_1DF63359C();
    v29 = *(a3 + qword_1ED8E4B40);
    v30 = *(a3 + qword_1ED8E4B40 + 8);
    v31 = sub_1DF633BFC();
    (*(v11 + 8))(v28, v10);
    if ((v31 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_6;
    }
  }

  (*(v41 + 16))(v42, v27, v7);
  v32 = v40;
  (*(v11 + 16))(v40, v16, v10);
  v33 = 1;
  (*(v11 + 56))(v32, 0, 1, v10);
  sub_1DF63288C();
  sub_1DF6328AC();
LABEL_6:
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D88, &qword_1DF63A5C8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 64);
  v37 = v45;
  *v45 = v33;
  sub_1DF5F350C(v25, &v37[v35]);
  return (*(v11 + 32))(&v37[v36], v16, v10);
}