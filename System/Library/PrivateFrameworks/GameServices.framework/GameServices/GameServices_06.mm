uint64_t sub_1D84C32CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84C33C4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[8];
  v6 = v0[19];
  v7 = v0[16];

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_511();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D84C3474()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_16_1();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[19];
    v15 = v5[16];

    OUTLINED_FUNCTION_69_2();

    return v16(v3);
  }
}

uint64_t sub_1D84C35B8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D84C3660(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84B2420;

  return DistributedActivitiesMessageExtensionServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

unint64_t sub_1D84C37F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39848, &qword_1D85962E8);
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84C3880(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39890, &qword_1D8596300);
    sub_1D84C3D90(v4);
    OUTLINED_FUNCTION_150();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D84C3918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v4);
  v5 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v5);
}

uint64_t sub_1D84C398C()
{
  v1 = *v0;
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v2);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D84C3A10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedActivitiesMessageExtensionServiceProtocol();
  OUTLINED_FUNCTION_0_4();
  sub_1D84C3D90(v3);
  sub_1D843EE3C();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D84C3CD8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  result = sub_1D84C3D90(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84C3D90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.refreshGameActivity(game:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  OUTLINED_FUNCTION_54();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_176(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_191(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_204();
  v10 = (OUTLINED_FUNCTION_296(v0, v1, v2) + 16);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  v7 = OUTLINED_FUNCTION_310();

  return v8(v7);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 24);
  OUTLINED_FUNCTION_54();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_176(v16);
  *v17 = v18;
  v17[1] = sub_1D8442FA8;

  return v20(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_204();
  v10 = (OUTLINED_FUNCTION_296(v0, v1, v2) + 32);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  v7 = OUTLINED_FUNCTION_310();

  return v8(v7);
}

uint64_t sub_1D84C4238()
{
  OUTLINED_FUNCTION_148();
  v2 = v1;
  OUTLINED_FUNCTION_153();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  OUTLINED_FUNCTION_69_2();

  return v7(v2);
}

uint64_t DefaultGameActivityEnvironment.language.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t DefaultGameActivityEnvironment.language.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = OUTLINED_FUNCTION_507_0(v0);
  OUTLINED_FUNCTION_4_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_394_0();

  return v5(v4);
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.setter()
{
  v3 = OUTLINED_FUNCTION_85_1();
  v4 = OUTLINED_FUNCTION_507_0(v3);
  OUTLINED_FUNCTION_4_0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v2, v0);
}

uint64_t DefaultGameActivityEnvironment.partyStartURL.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for DefaultGameActivityEnvironment(v0) + 20);
  return OUTLINED_FUNCTION_106();
}

uint64_t DefaultGameActivityEnvironment.init(language:partyStartURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v7 = OUTLINED_FUNCTION_507_0(0);
  OUTLINED_FUNCTION_4_0(v7);
  v9 = *(v8 + 32);

  return v9(&a4[v4], a3);
}

uint64_t static DefaultGameActivityEnvironment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_263_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D8581AB8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DefaultGameActivityEnvironment(0) + 20);

  return sub_1D8580D58();
}

uint64_t sub_1D84C4610()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_216_1();
  v3 = v3 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == OUTLINED_FUNCTION_195_1() && v0 == v5)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1D84C468C(char a1)
{
  if (a1)
  {
    return 0x6174537974726170;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_1D84C46D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C4610();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C4700()
{
  sub_1D84C48E8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C4738()
{
  sub_1D84C48E8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t DefaultGameActivityEnvironment.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39BE0, &qword_1D859A788);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_200();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v14, v15);
  sub_1D84C48E8();
  OUTLINED_FUNCTION_377_0();
  v16 = *v4;
  v17 = v4[1];
  sub_1D8581A08();
  if (!v2)
  {
    v18 = *(type metadata accessor for DefaultGameActivityEnvironment(0) + 20);
    OUTLINED_FUNCTION_378_0();
    sub_1D8580D78();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v19);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1D84C48E8()
{
  result = qword_1ECA47130;
  if (!qword_1ECA47130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47130);
  }

  return result;
}

uint64_t DefaultGameActivityEnvironment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D85812B8();
  v3 = *(type metadata accessor for DefaultGameActivityEnvironment(0) + 20);
  sub_1D8580D78();
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v4);
  OUTLINED_FUNCTION_188();
  return sub_1D85811E8();
}

unint64_t sub_1D84C49BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t DefaultGameActivityEnvironment.hashValue.getter()
{
  OUTLINED_FUNCTION_379();
  v1 = *v0;
  v2 = v0[1];
  sub_1D85812B8();
  OUTLINED_FUNCTION_507_0(0);
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v3);
  OUTLINED_FUNCTION_524_0();
  return sub_1D8581B98();
}

void DefaultGameActivityEnvironment.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v27 = sub_1D8580D78();
  v4 = OUTLINED_FUNCTION_1(v27);
  v26 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v10 = v9 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39BF8, &qword_1D859A790);
  OUTLINED_FUNCTION_1(v28);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for DefaultGameActivityEnvironment(0);
  v15 = OUTLINED_FUNCTION_4_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v18 = v3[3];
  v19 = v3[4];
  v20 = OUTLINED_FUNCTION_344_1();
  OUTLINED_FUNCTION_260(v20, v21);
  sub_1D84C48E8();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v1 = sub_1D8581908();
    v1[1] = v22;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v23);
    sub_1D8581958();
    v24 = OUTLINED_FUNCTION_387_0();
    v25(v24);
    (*(v26 + 32))(v1 + *(v14 + 20), v10, v27);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_6_2();
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C4D60(uint64_t a1, uint64_t a2)
{
  sub_1D8581B58();
  v4 = *v2;
  v5 = v2[1];
  sub_1D85812B8();
  v6 = *(a2 + 20);
  sub_1D8580D78();
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v7);
  OUTLINED_FUNCTION_524_0();
  return sub_1D8581B98();
}

GameServices::ActivityInstanceDeletionResult __swiftcall ActivityInstanceDeletionResult.init(deleted:remaining:)(Swift::Int deleted, Swift::Int remaining)
{
  *v2 = deleted;
  v2[1] = remaining;
  result.remaining = remaining;
  result.deleted = deleted;
  return result;
}

uint64_t static ActivityInstanceDeletionResult.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t sub_1D84C4E28()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646574656C6564 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6E696E69616D6572 && v0 == 0xE900000000000067)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1D84C4ED0(char a1)
{
  if (a1)
  {
    return 0x6E696E69616D6572;
  }

  else
  {
    return 0x646574656C6564;
  }
}

uint64_t sub_1D84C4F14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C4E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C4F3C()
{
  sub_1D84C50E0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C4F74()
{
  sub_1D84C50E0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ActivityInstanceDeletionResult.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C08, &qword_1D859A798);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_110();
  v10 = *v0;
  v15 = v0[1];
  v11 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84C50E0();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_232();
  sub_1D8581A38();
  if (!v1)
  {
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_232();
    sub_1D8581A38();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_291();
  v14(v13);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D84C50E0()
{
  result = qword_1ECA47138;
  if (!qword_1ECA47138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47138);
  }

  return result;
}

uint64_t ActivityInstanceDeletionResult.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1DA7191F0](*v0);
  return MEMORY[0x1DA7191F0](v1);
}

uint64_t ActivityInstanceDeletionResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_379();
  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

void ActivityInstanceDeletionResult.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C10, &qword_1D859A7A0);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_160();
  v12 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84C50E0();
  sub_1D8581BA8();
  if (!v0)
  {
    v13 = sub_1D8581938();
    OUTLINED_FUNCTION_378_0();
    v14 = sub_1D8581938();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C536C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D8581B58();
  v3 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v3);
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

uint64_t static GameActivityDefinitionFilter.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4 >> 5)
  {
    case 1u:
      if ((v7 & 0xE0) != 0x20)
      {
        v53 = *(a1 + 8);

        goto LABEL_23;
      }

      v39 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        OUTLINED_FUNCTION_491_0();
        v20 = sub_1D8581AB8();
        v41 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v41, v42, v43);
        v44 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v44, v45, v46);
        goto LABEL_11;
      }

      sub_1D84C55D0(v39, v3, v4);
      v64 = OUTLINED_FUNCTION_150();
      sub_1D84C55D0(v64, v65, v7);
      v66 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v66, v67, v68);
      v69 = OUTLINED_FUNCTION_150();
      sub_1D84C55FC(v69, v70, v7);
      v20 = 1;
      return v20 & 1;
    case 2u:
      if ((v7 & 0xE0) == 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    case 3u:
      if ((v7 & 0xE0) != 0x60)
      {
        goto LABEL_23;
      }

      v35 = sub_1D84C5B38(*a1, *a2);
      goto LABEL_10;
    case 4u:
      if ((v7 & 0xE0) != 0x80)
      {
        goto LABEL_23;
      }

      v33 = *a1;
      v34 = *a2;
      v35 = sub_1D844AB18();
LABEL_10:
      v20 = v35;
LABEL_11:
      v36 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v36, v37, v38);
      v30 = OUTLINED_FUNCTION_95_1();
      goto LABEL_12;
    case 5u:
      if ((v7 & 0xE0) != 0xA0)
      {
        goto LABEL_23;
      }

LABEL_20:
      v47 = OUTLINED_FUNCTION_98_0();
      sub_1D84C55FC(v47, v48, v49);
      v50 = OUTLINED_FUNCTION_95_1();
      sub_1D84C55FC(v50, v51, v52);
      v20 = v5 ^ v2 ^ 1;
      return v20 & 1;
    default:
      if (v7 >= 0x20)
      {
        OUTLINED_FUNCTION_150();
        sub_1D84C55F4();
LABEL_23:
        v54 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55FC(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v60, v61, v62);
        v20 = 0;
      }

      else
      {
        v73[0] = *a1;
        v73[1] = v3;
        v74 = v4 & 1;
        v71[0] = v5;
        v71[1] = v6;
        v72 = v7 & 1;
        v8 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v8, v9, v10);
        v11 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v11, v12, v13);
        v14 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55D0(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55D0(v17, v18, v19);
        v20 = static GameActivityStaticStat.== infix(_:_:)(v73, v71);
        v21 = OUTLINED_FUNCTION_98_0();
        sub_1D84C55FC(v21, v22, v23);
        v24 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v24, v25, v26);
        v27 = OUTLINED_FUNCTION_95_1();
        sub_1D84C55FC(v27, v28, v29);
        v30 = OUTLINED_FUNCTION_98_0();
LABEL_12:
        sub_1D84C55FC(v30, v31, v32);
      }

      return v20 & 1;
  }
}

uint64_t sub_1D84C55D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 5 == 1)
  {
  }

  if (!(a3 >> 5))
  {
    return sub_1D84C55F4();
  }

  return result;
}

uint64_t sub_1D84C55FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 5 == 1)
  {
  }

  if (!(a3 >> 5))
  {
    return sub_1D84C5620();
  }

  return result;
}

uint64_t sub_1D84C5628(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v5 = 0x64657469766E69;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x64656E696F6ALL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x64657469766E69;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x64656E696F6ALL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1952867692;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5754(unsigned __int8 a1, char a2)
{
  v2 = 0x6465766965636572;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6465766965636572;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E69646E6570;
      break;
    case 2:
      v5 = 0x65726576696C6564;
      goto LABEL_5;
    case 3:
      v5 = 0x65737365636F7270;
LABEL_5:
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
      break;
    case 2:
      v2 = 0x65726576696C6564;
      goto LABEL_10;
    case 3:
      v2 = 0x65737365636F7270;
LABEL_10:
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C58A0(unsigned __int8 a1, char a2)
{
  v2 = 0x746553746F6ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746553746F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x696C616974696E69;
      v3 = 0xEB0000000064657ALL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 0x657472617473;
      goto LABEL_6;
    case 3:
      v5 = 0x646573756170;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v6 = 0x656D75736572;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6465646E65;
      break;
    case 6:
      v3 = 0x80000001D8585CA0;
      v5 = 0xD000000000000012;
      break;
    case 7:
      v5 = 0xD000000000000017;
      v7 = "participantChanged";
      goto LABEL_9;
    case 8:
      v3 = 0x80000001D8585CE0;
      v5 = 0xD00000000000001ALL;
      break;
    case 9:
      v5 = 0xD000000000000017;
      v7 = "achievementProgressUpdated";
LABEL_9:
      v3 = v7 | 0x8000000000000000;
      break;
    case 10:
      v3 = 0x80000001D8585D20;
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x696C616974696E69;
      v8 = 0xEB0000000064657ALL;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v9 = 0x657472617473;
      goto LABEL_19;
    case 3:
      v2 = 0x646573756170;
      break;
    case 4:
      v8 = 0xE700000000000000;
      v9 = 0x656D75736572;
LABEL_19:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6465646E65;
      break;
    case 6:
      v8 = 0x80000001D8585CA0;
      v2 = 0xD000000000000012;
      break;
    case 7:
      v2 = 0xD000000000000017;
      v10 = "participantChanged";
      goto LABEL_22;
    case 8:
      v8 = 0x80000001D8585CE0;
      v2 = 0xD00000000000001ALL;
      break;
    case 9:
      v2 = 0xD000000000000017;
      v10 = "achievementProgressUpdated";
LABEL_22:
      v8 = v10 | 0x8000000000000000;
      break;
    case 10:
      v8 = 0x80000001D8585D20;
      v2 = 0xD000000000000011;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8581AB8();
  }

  return v12 & 1;
}

uint64_t sub_1D84C5B38(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E6F7268636E7973;
    }

    else
    {
      v5 = 0x6F7268636E797361;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000073756FLL;
    }

    else
    {
      v6 = 0xEC00000073756F6ELL;
    }
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E6F7268636E7973;
    }

    else
    {
      v3 = 0x6F7268636E797361;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000073756FLL;
    }

    else
    {
      v2 = 0xEC00000073756F6ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5C58(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701602409;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657669746361;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x646573756170;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6465646E65;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701602409;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657669746361;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x646573756170;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6465646E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D84C5DAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1952543859 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84C5E14()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_430_0() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == OUTLINED_FUNCTION_237() && v0 == 0xEA00000000006E6FLL;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x7669686372417369 && v0 == 0xEA00000000006465;
      if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_335_1();
        v8 = v3 && v0 == v7;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v1 == OUTLINED_FUNCTION_223() && v0 == v9;
          if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_184_0();
            if (v1 == v12 && v11 == v0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_94_0();
              OUTLINED_FUNCTION_369();
              if (v1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D84C5F78()
{
  OUTLINED_FUNCTION_430_0();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_237();
      break;
    case 2:
      OUTLINED_FUNCTION_443_0();
      break;
    case 3:
      OUTLINED_FUNCTION_249_0();
      break;
    case 4:
      OUTLINED_FUNCTION_223();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84C602C()
{
  OUTLINED_FUNCTION_395_0();
  v2 = v2 && v1 == 0xE200000000000000;
  if (v2)
  {

    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v3 = v0 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1D84C60BC()
{
  sub_1D84D7B58();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C60F4()
{
  sub_1D84D7B58();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84C5E14();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C615C()
{
  sub_1D84D790C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C6194()
{
  sub_1D84D790C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C61F4()
{
  sub_1D84D7B04();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C622C()
{
  sub_1D84D7B04();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6264()
{
  sub_1D84D7AB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C629C()
{
  sub_1D84D7AB0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C62D4()
{
  sub_1D84D7A08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C630C()
{
  sub_1D84D7A08();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C6344()
{
  sub_1D84D79B4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C637C()
{
  sub_1D84D79B4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C63B4()
{
  sub_1D84D7960();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C63EC()
{
  sub_1D84D7960();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityDefinitionFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C18, &qword_1D859A7A8);
  v48 = OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C20, &qword_1D859A7B0);
  v47 = OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_196();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C28, &qword_1D859A7B8);
  v46 = OUTLINED_FUNCTION_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_196();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C30, &qword_1D859A7C0);
  v45 = OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_196();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C38, &qword_1D859A7C8);
  v44 = OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_160();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C40, &qword_1D859A7D0);
  OUTLINED_FUNCTION_1(v23);
  v43 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_128();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C48, &qword_1D859A7D8);
  v51 = OUTLINED_FUNCTION_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_250_0();
  v49 = v0[1];
  v50 = *v0;
  v32 = *(v0 + 16);
  v33 = v2[4];
  OUTLINED_FUNCTION_260(v2, v2[3]);
  sub_1D84D790C();
  sub_1D8581BB8();
  switch(v32 >> 5)
  {
    case 1u:
      sub_1D84D7B04();
      OUTLINED_FUNCTION_101_0();
      v40 = v44;
      OUTLINED_FUNCTION_256_2();
      sub_1D8581A08();
      goto LABEL_8;
    case 2u:
      sub_1D84D7AB0();
      OUTLINED_FUNCTION_101_0();
      v40 = v45;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A18();
      goto LABEL_8;
    case 3u:
      sub_1D84D7A08();
      OUTLINED_FUNCTION_101_0();
      sub_1D84D7A5C();
      v40 = v46;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 4u:
      OUTLINED_FUNCTION_482_0();
      sub_1D84D79B4();
      OUTLINED_FUNCTION_101_0();
      sub_1D8466A84();
      v40 = v47;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_488_0();
      sub_1D84D7960();
      OUTLINED_FUNCTION_101_0();
      v40 = v48;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A18();
LABEL_8:
      v41 = OUTLINED_FUNCTION_275();
      v42(v41, v40);
      v37 = OUTLINED_FUNCTION_276();
      v39 = v23;
      break;
    default:
      sub_1D84D7B58();
      OUTLINED_FUNCTION_516_0();
      sub_1D84D7BAC();
      sub_1D8581A58();
      v34 = *(v43 + 8);
      v35 = OUTLINED_FUNCTION_228();
      v36(v35);
      v37 = OUTLINED_FUNCTION_275();
      v39 = v51;
      break;
  }

  v38(v37, v39);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityDefinitionFilter.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  switch(v3 >> 5)
  {
    case 1u:
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_188();

      return sub_1D85812B8();
    case 2u:
      v6 = 2;
      goto LABEL_12;
    case 3u:
      MEMORY[0x1DA7191F0](3);
      if (!v1)
      {
        OUTLINED_FUNCTION_332_1();
      }

      sub_1D85812B8();

    case 4u:
      MEMORY[0x1DA7191F0](4);
      sub_1D846779C();
      return sub_1D85811E8();
    case 5u:
      v6 = 5;
LABEL_12:
      MEMORY[0x1DA7191F0](v6);
      return sub_1D8581B78();
    default:
      OUTLINED_FUNCTION_429();
      if (v3)
      {
        OUTLINED_FUNCTION_447();
      }

      else
      {
        OUTLINED_FUNCTION_429();
      }

      v4 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_235_0();
      sub_1D848211C(v8);
      OUTLINED_FUNCTION_293_1();
      return sub_1D85811E8();
  }
}

uint64_t GameActivityDefinitionFilter.hashValue.getter()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  GameActivityDefinitionFilter.hash(into:)();
  return sub_1D8581B98();
}

void GameActivityDefinitionFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v91 = v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C70, &qword_1D859A7F0);
  OUTLINED_FUNCTION_1(v89);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C78, &qword_1D859A7F8);
  OUTLINED_FUNCTION_1(v90);
  v92 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  v93 = v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C80, &qword_1D859A800);
  OUTLINED_FUNCTION_1(v88);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_409_0(v16);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C88, &qword_1D859A808);
  OUTLINED_FUNCTION_1(v87);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_196();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C90, &qword_1D859A810);
  OUTLINED_FUNCTION_1(v86);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_128();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C98, &qword_1D859A818);
  OUTLINED_FUNCTION_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_129();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CA0, &unk_1D859A820);
  OUTLINED_FUNCTION_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_199();
  v31 = v3[3];
  v32 = v3[4];
  v94 = v3;
  v33 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v33, v34);
  sub_1D84D790C();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (!v0)
  {
    v35 = sub_1D8581968();
    sub_1D8440880(v35, 0);
    v37 = v36;
    if (v39 != v38 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = *(v43 + v41);
      sub_1D84408DC(v41 + 1, v40, v37, v43, v41, v42);
      v48 = v47;
      v50 = v49;
      swift_unknownObjectRelease();
      if (v48 == (v50 >> 1))
      {
        v51 = v0;
        switch(v46)
        {
          case 1:
            sub_1D84D7B04();
            OUTLINED_FUNCTION_173_0();
            v51 = 0;
            v75 = v1;
            sub_1D8581908();
            OUTLINED_FUNCTION_343_1();
            swift_unknownObjectRelease();
            v77 = OUTLINED_FUNCTION_110_2();
            v78(v77);
            v79 = OUTLINED_FUNCTION_106_1();
            v80(v79);
            v76 = 32;
            v48 = v94;
            break;
          case 2:
            sub_1D84D7AB0();
            OUTLINED_FUNCTION_173_0();
            OUTLINED_FUNCTION_411_0();
            v62 = sub_1D8581918();
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_110_2();
            v64(v63);
            v65 = OUTLINED_FUNCTION_36_2();
            v66(v65);
            v75 = v62 & 1;
            v76 = 64;
            break;
          case 3:
            sub_1D84D7A08();
            OUTLINED_FUNCTION_173_0();
            OUTLINED_FUNCTION_411_0();
            sub_1D84E8B94();
            OUTLINED_FUNCTION_243_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v67 = OUTLINED_FUNCTION_110_2();
            v68(v67);
            v69 = OUTLINED_FUNCTION_36_2();
            v70(v69);
            v75 = 3;
            v76 = 96;
            break;
          case 4:
            OUTLINED_FUNCTION_482_0();
            sub_1D84D79B4();
            OUTLINED_FUNCTION_173_0();
            OUTLINED_FUNCTION_411_0();
            sub_1D847387C();
            OUTLINED_FUNCTION_259_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            (*(v92 + 8))(v93, v90);
            v60 = OUTLINED_FUNCTION_36_2();
            v61(v60);
            v51 = 0;
            v75 = v95;
            v76 = 0x80;
            break;
          case 5:
            OUTLINED_FUNCTION_488_0();
            sub_1D84D7960();
            OUTLINED_FUNCTION_173_0();
            OUTLINED_FUNCTION_411_0();
            v81 = sub_1D8581918();
            swift_unknownObjectRelease();
            v82 = OUTLINED_FUNCTION_212_0();
            v83(v82, v89);
            v84 = OUTLINED_FUNCTION_36_2();
            v85(v84);
            v51 = 0;
            v75 = v81 & 1;
            v76 = -96;
            break;
          default:
            LOBYTE(v95) = 0;
            sub_1D84D7B58();
            OUTLINED_FUNCTION_173_0();
            OUTLINED_FUNCTION_411_0();
            sub_1D84E8BE8();
            OUTLINED_FUNCTION_243_1();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_110_2();
            v72(v71);
            v73 = OUTLINED_FUNCTION_36_2();
            v74(v73);
            v75 = v95;
            v51 = v96;
            v76 = v97;
            break;
        }

        *v91 = v75;
        *(v91 + 8) = v51;
        *(v91 + 16) = v76;
        __swift_destroy_boxed_opaque_existential_1(v48);
        goto LABEL_10;
      }
    }

    v52 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v54 = &type metadata for GameActivityDefinitionFilter;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v56 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v52);
    (*(v57 + 104))(v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = OUTLINED_FUNCTION_36_2();
    v59(v58);
  }

  __swift_destroy_boxed_opaque_existential_1(v94);
LABEL_10:
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84C75DC()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  GameActivityDefinitionFilter.hash(into:)();
  return sub_1D8581B98();
}

uint64_t static GameActivityFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_12;
      }

      v42 = OUTLINED_FUNCTION_183();
      v20 = sub_1D84C78BC(v42, v43);
      v44 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C3C(v44, v45, 1);
      v46 = OUTLINED_FUNCTION_506();
      sub_1D84E8C3C(v46, v47, 1);
      v48 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v48, v49, 1);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 1;
      goto LABEL_19;
    case 2:
      if (v7 == 2)
      {
        v32 = OUTLINED_FUNCTION_183();
        v20 = sub_1D84C78BC(v32, v33);
        v34 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v34, v35, 2);
        v36 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v36, v37, 2);
        v38 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v38, v39, 2);
        v27 = OUTLINED_FUNCTION_506();
        v29 = 2;
        goto LABEL_19;
      }

LABEL_12:
      v50 = *a1;
      goto LABEL_21;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_22;
      }

      v20 = sub_1D84C5C58(*a1, *a2);
      v40 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v40, v41, 3);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 3;
      goto LABEL_19;
    case 4:
      if (v7 != 4)
      {
        goto LABEL_22;
      }

      v20 = sub_1D84C5754(*a1, *a2);
      v30 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v30, v31, 4);
      v27 = OUTLINED_FUNCTION_506();
      v29 = 4;
      goto LABEL_19;
    case 5:
      if (v7 != 5)
      {
        goto LABEL_20;
      }

      v51 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v20 = OUTLINED_FUNCTION_333_0();
        v53 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v53, v54, 5);
        v55 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v55, v56, 5);
        v57 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v57, v58, 5);
        v27 = OUTLINED_FUNCTION_506();
        v29 = 5;
        goto LABEL_19;
      }

      sub_1D84E8C3C(v51, v2, 5);
      v67 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C3C(v67, v68, 5);
      v69 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v69, v70, 5);
      v71 = OUTLINED_FUNCTION_146_1();
      sub_1D84E8C7C(v71, v72, 5);
      v20 = 1;
      break;
    default:
      if (*(a2 + 16))
      {
LABEL_20:
        v59 = *(a1 + 8);
LABEL_21:

LABEL_22:
        v60 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v60, v61, v7);
        v62 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v62, v63, v4);
        v64 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v64, v65, v7);
        v20 = 0;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v8, v9, 0);
        v10 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v10, v11, 0);
        v12 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C3C(v12, v13, 0);
        v14 = OUTLINED_FUNCTION_506();
        sub_1D84E8C3C(v14, v15, 0);
        v16 = OUTLINED_FUNCTION_146_1();
        v20 = sub_1D844A4B0(v16, v17, v6, v5, v18, v19);
        v21 = OUTLINED_FUNCTION_146_1();
        sub_1D84E8C7C(v21, v22, 0);
        v23 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v23, v24, 0);
        v25 = OUTLINED_FUNCTION_506();
        sub_1D84E8C7C(v25, v26, 0);
        v27 = OUTLINED_FUNCTION_146_1();
        v29 = 0;
LABEL_19:
        sub_1D84E8C7C(v27, v28, v29);
      }

      break;
  }

  return v20 & 1;
}

uint64_t sub_1D84C78BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D8581AB8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D84C7948(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for AchievementProgress();
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DB0, &qword_1D859A9C0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v37 - v7;
  v9 = type metadata accessor for GameActivityRuntimeStat(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v45 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  if (!v20 || a1 == a2)
  {
    return 1;
  }

  v38 = v19;
  v39 = &v37 - v18;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v42 = *(v17 + 72);
  v43 = v8;
  v37 = v13;
  while (1)
  {
    sub_1D84EA648();
    sub_1D84EA648();
    v24 = &v8[*(v44 + 48)];
    sub_1D84EA648();
    sub_1D84EA648();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v26 = v38;
    sub_1D84EA648();
    v27 = v26[1];
    v28 = v26[5];
    v29 = v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_15;
    }

    v30 = v26[4];
    v31 = *v24;
    v32 = *(v24 + 1);
    v33 = *(v24 + 4);
    v34 = *(v24 + 5);
    v51 = *v26;
    v52 = v27;
    v53 = *(v26 + 1);
    v54 = v30;
    v55 = v28;
    v46 = v31;
    v47 = v32;
    v48 = *(v24 + 1);
    v49 = v33;
    v50 = v34;
    sub_1D84BB658();
    v35 = sub_1D8581208();

    v8 = v43;

    sub_1D84EB2B8();
    v9 = v29;
    if ((v35 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    v23 += v42;
    v22 += v42;
    if (!--v20)
    {
      return 1;
    }
  }

  sub_1D84EA648();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D84EB32C();
    sub_1D84C49BC(&unk_1ECA39DB8);
    v25 = sub_1D8581208();
    v8 = v43;
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    sub_1D84EB2B8();
    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  sub_1D84EB2B8();
LABEL_15:
  sub_1D8436E18(v8, &qword_1ECA39DB0, &qword_1D859A9C0);
LABEL_16:
  sub_1D84EB2B8();
  sub_1D84EB2B8();
  return 0;
}

uint64_t sub_1D84C7E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84C7F00()
{
  sub_1D843BFB4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C7F38()
{
  sub_1D843BFB4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C7F70()
{
  sub_1D843C008();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C7FA8()
{
  sub_1D843C008();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C8008()
{
  sub_1D84E8E60();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C8040()
{
  sub_1D84E8E60();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C80C0()
{
  sub_1D84E8E0C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C80F8()
{
  sub_1D84E8E0C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C8130()
{
  sub_1D84E8DB8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C8168()
{
  sub_1D84E8DB8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C81A0()
{
  sub_1D84E8CBC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C81D8()
{
  sub_1D84E8CBC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84C8210()
{
  sub_1D84E8D10();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84C8248()
{
  sub_1D84E8D10();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameActivityFilter.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v7 = 1;
      goto LABEL_11;
    case 2:
      v7 = 2;
LABEL_11:
      MEMORY[0x1DA7191F0](v7);
      v8 = OUTLINED_FUNCTION_188();

      result = sub_1D84E849C(v8, v9);
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);

      result = sub_1D84C8B98();
      break;
    case 4:
      MEMORY[0x1DA7191F0](4);

      result = sub_1D84C8974();
      break;
    case 5:
      MEMORY[0x1DA7191F0](5);
      OUTLINED_FUNCTION_188();

      result = sub_1D85812B8();
      break;
    default:
      OUTLINED_FUNCTION_429();
      v3 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_235_0();
      sub_1D848211C(v5);
      OUTLINED_FUNCTION_293_1();
      result = sub_1D85811E8();
      break;
  }

  return result;
}

uint64_t GameActivityFilter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8581B58();
  switch(v3)
  {
    case 1:
      v7 = 1;
      goto LABEL_7;
    case 2:
      v7 = 2;
LABEL_7:
      MEMORY[0x1DA7191F0](v7);
      sub_1D84E849C(v9, v1);
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);
      sub_1D84C8B98();
      break;
    case 4:
      MEMORY[0x1DA7191F0](4);
      sub_1D84C8974();
      break;
    case 5:
      MEMORY[0x1DA7191F0](5);
      sub_1D85812B8();
      break;
    default:
      MEMORY[0x1DA7191F0](0);
      v4 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v6);
      OUTLINED_FUNCTION_525_0();
      break;
  }

  return sub_1D8581B98();
}

uint64_t sub_1D84C8538()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  GameActivityFilter.hash(into:)();
  return sub_1D8581B98();
}

GameServices::GameActivityUpdateContext_optional __swiftcall GameActivityUpdateContext.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 11;
  if (v2 < 0xB)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void GameActivityUpdateContext.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_445_0(0x657472617473);
      break;
    case 3:
      OUTLINED_FUNCTION_379_0();
      break;
    case 4:
      OUTLINED_FUNCTION_445_0(0x656D75736572);
      break;
    case 7:
    case 9:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

void sub_1D84C86E8(void *a1@<X8>)
{
  GameActivityUpdateContext.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D84C8710()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AF8();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84C8758()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AF8();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84C87D8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_379();
  a2(v5, a1);
  return sub_1D8581B98();
}

uint64_t sub_1D84C8828()
{
  sub_1D85812B8();
}

uint64_t sub_1D84C88D0()
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8974()
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8A2C()
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8B98()
{
  sub_1D85812B8();
}

uint64_t sub_1D84C8C84()
{
  sub_1D8581B58();
  sub_1D85812B8();

  return sub_1D8581B98();
}

uint64_t sub_1D84C8D3C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1D8581B58();
  a3(v6, a2);
  return sub_1D8581B98();
}

void *static $DistributedGameActivityServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v5);
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v6);
  OUTLINED_FUNCTION_368();
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedGameActivityServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameActivityServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedGameActivityServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D84C8F7C()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedGameActivityServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameActivityServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameActivityServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_33_0();
  sub_1D84C49BC(v3);
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v4);

  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_7_0();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedGameActivityServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D84C91D0@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameActivityServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84C925C()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D84C92BC()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D84C9338()
{
  OUTLINED_FUNCTION_475();
  v13 = v1;
  OUTLINED_FUNCTION_204();
  v2 = *v0;
  v4 = *v3;
  v5 = v3[1];
  v7 = *v6;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_176(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_191(v9);
  v11 = OUTLINED_FUNCTION_188();

  return (sub_1D84C93E8)(v11);
}

uint64_t sub_1D84C93E8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 185) = a3;
  *(v4 + 56) = a1;
  v5 = sub_1D8581018();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v4 + 128) = v11;
  v12 = *(v11 - 8);
  *(v4 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84C9580, 0, 0);
}

uint64_t sub_1D84C9580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 72);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 72);
    *(v13 + 152) = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v51 = *(v13 + 144);
      v52 = *(v13 + 120);
      v53 = *(v13 + 96);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
    }

    v29 = *(v13 + 144);
    v30 = *(v13 + 64);
    *(v13 + 40) = *(v13 + 56);
    *(v13 + 48) = v30;

    v31 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v33);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    v37 = *(v13 + 120);
    *(v13 + 184) = *(v13 + 185);
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    v38 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      v42 = *(v13 + 136);
      v41 = *(v13 + 144);
      v44 = *(v13 + 120);
      v43 = *(v13 + 128);
      v45 = *(v13 + 104);
      v46 = *(v13 + 112);

      v47 = OUTLINED_FUNCTION_52();
      v48(v47);
      v49 = OUTLINED_FUNCTION_51_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v62 = *(v13 + 96);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v63 = swift_task_alloc();
    *(v13 + 168) = v63;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v64);
    OUTLINED_FUNCTION_217();
    *v63 = v65;
    v63[1] = sub_1D84C98D0;
    v66 = *(v13 + 96);
    v67 = *(v13 + 72);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859E550);
    v16 = swift_task_alloc();
    *(v13 + 160) = v16;
    *v16 = v13;
    v16[1] = sub_1D849AABC;
    v17 = *(v13 + 64);
    v18 = *(v13 + 72);
    v19 = *(v13 + 185);
    OUTLINED_FUNCTION_207_0(*(v13 + 56));
    OUTLINED_FUNCTION_240();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84C98D0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84C99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[18];
  v20 = v12[15];
  v21 = v12[12];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_1D8581018();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 128) = v10;
  v12 = *(v11 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_39(v13);
  *(v1 + 152) = v14;
  v16 = *(v15 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 168) = v17;
  OUTLINED_FUNCTION_39(v17);
  *(v1 + 176) = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_332();
  v22 = *v5;
  v23 = v5[1];
  *(v1 + 184) = v21;
  *(v1 + 192) = v22;
  *(v1 + 200) = v23;
  *(v1 + 250) = *v3;
  v24 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84C9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 112);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 112);
    v17 = *(v14 + 88);
    v18 = *(*(v14 + 96) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 208) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v59 = *(v14 + 184);
      v60 = *(v14 + 160);
      v61 = *(v14 + 136);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
    }

    v37 = *(v14 + 200);
    v38 = *(v14 + 184);
    *(v14 + 56) = *(v14 + 192);
    *(v14 + 64) = v37;

    v39 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    v45 = *(v14 + 160);
    *(v14 + 249) = *(v14 + 250);
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    v46 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      v50 = *(v14 + 176);
      v49 = *(v14 + 184);
      v52 = *(v14 + 160);
      v51 = *(v14 + 168);
      v53 = *(v14 + 144);
      v54 = *(v14 + 152);

      v55 = OUTLINED_FUNCTION_52();
      v56(v55);
      v57 = OUTLINED_FUNCTION_51_0();
      v58(v57);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v70 = *(v14 + 136);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v71 = swift_task_alloc();
    *(v14 + 216) = v71;
    *v71 = v14;
    OUTLINED_FUNCTION_145_0(v71);
    OUTLINED_FUNCTION_53(v72);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v73, v74, v75, v76, v77, v78, v79);
  }

  else
  {
    v20 = *(v14 + 192);
    v19 = *(v14 + 200);
    v21 = *(v14 + 104);
    *(v14 + 72) = *(v14 + 112);
    *(v14 + 40) = v20;
    LOBYTE(v20) = *(v14 + 250);
    *(v14 + 48) = v19;
    *(v14 + 248) = v20;
    v22 = *(*(v21 + 16) + 8);
    OUTLINED_FUNCTION_54();
    v81 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v14 + 232) = v26;
    *v26 = v14;
    v26[1] = sub_1D84CA178;
    v27 = *(v14 + 88);
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v81, a12, a13, a14);
  }
}

uint64_t sub_1D84C9FC0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84CA0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[23];
  v20 = v12[20];
  v21 = v12[17];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D84CA178()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[30] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[23];
    v13 = v3[20];
    v14 = v3[17];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D84CA2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_266();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[28];
  v20 = v12[23];
  v21 = v12[20];
  v22 = v12[17];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D84CA370()
{
  OUTLINED_FUNCTION_174();
  v1 = *v0;
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_24(&unk_1D859E548);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_176(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_191(v6);
  v8 = OUTLINED_FUNCTION_188();

  return v10(v8);
}

uint64_t sub_1D84CA40C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CA538, 0, 0);
}

uint64_t sub_1D84CA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[9];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[9];
    v13[16] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      v43 = v13[15];
      v44 = v13[12];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    v28 = v13[15];
    v29 = v13[8];
    v13[5] = v13[7];
    v13[6] = v29;

    v30 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v33);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      v39 = v13[14];
      v38 = v13[15];
      v40 = v13[13];

      v41 = OUTLINED_FUNCTION_49_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v53 = v13[12];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v13[18] = v54;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v55);
    OUTLINED_FUNCTION_217();
    *v54 = v56;
    v54[1] = sub_1D849BF18;
    v57 = v13[12];
    v58 = v13[9];
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v59, v60, v61, v62, v63, v64, v65);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E548);
    v16 = swift_task_alloc();
    v13[17] = v16;
    *v16 = v13;
    v16[1] = sub_1D849BE00;
    v17 = v13[8];
    v18 = v13[9];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1D8581018();
  v1[15] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[16] = v8;
  v10 = *(v9 + 64);
  v1[17] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[18] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[19] = v12;
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v3;
  v17 = v3[1];
  v1[20] = v15;
  v1[21] = v16;
  v1[22] = v17;
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84CA90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[14];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[14];
    v17 = v14[11];
    v18 = *(v14[12] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[23] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      v51 = v14[20];
      v52 = v14[17];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[22];
    v37 = v14[20];
    v14[7] = v14[21];
    v14[8] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v47 = v14[19];
      v46 = v14[20];
      v48 = v14[18];

      v49 = OUTLINED_FUNCTION_49_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    v61 = v14[17];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v62 = swift_task_alloc();
    v14[24] = v62;
    *v62 = v14;
    OUTLINED_FUNCTION_145_0(v62);
    OUTLINED_FUNCTION_53(v63);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    v19 = v14[13];
    v14[9] = v14[14];
    v20 = v14[21];
    v21 = *(OUTLINED_FUNCTION_38(v14[22]) + 16);
    OUTLINED_FUNCTION_54();
    v72 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    v14[26] = v25;
    *v25 = v14;
    v25[1] = sub_1D849C6F4;
    v26 = v14[11];
    OUTLINED_FUNCTION_239();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v72, a12, a13, a14);
  }
}

uint64_t sub_1D84CAC2C()
{
  OUTLINED_FUNCTION_219();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v7 = *v6;
  v8 = v6[1];
  OUTLINED_FUNCTION_24(&unk_1D859E540);
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_97(v12);
  *v13 = v14;
  v13[1] = sub_1D8442F30;

  return v16(v4, v7, v8, v2, v10, v11);
}

uint64_t sub_1D84CACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v16 = *(v15 + 64) + 15;
  v7[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v17;
  v18 = *(v17 - 8);
  v7[27] = v18;
  v19 = *(v18 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CAF00, 0, 0);
}

uint64_t DistributedGameActivityServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 160) = v6;
  *(v1 + 168) = v0;
  *(v1 + 144) = v7;
  *(v1 + 152) = v8;
  *(v1 + 128) = v9;
  *(v1 + 136) = v10;
  v11 = sub_1D8581018();
  *(v1 + 176) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 184) = v12;
  v14 = *(v13 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 200) = v15;
  OUTLINED_FUNCTION_39(v15);
  *(v1 + 208) = v16;
  v18 = *(v17 + 64);
  *(v1 + 216) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA397E0, &unk_1D85962B0);
  *(v1 + 224) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 232) = v20;
  v22 = *(v21 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_332();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 248) = v23;
  OUTLINED_FUNCTION_39(v23);
  *(v1 + 256) = v24;
  v26 = *(v25 + 64);
  v27 = OUTLINED_FUNCTION_332();
  v28 = *v5;
  v29 = v5[1];
  *(v1 + 264) = v27;
  *(v1 + 272) = v28;
  *(v1 + 280) = v29;
  *(v1 + 288) = *v3;
  v30 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84CBA30()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[33];
    v13 = v3[30];
    v14 = v3[27];
    v15 = v3[24];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D84CBB7C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E538);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D84CBC14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CBD3C, 0, 0);
}

uint64_t sub_1D84CBD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859E538);
    v16 = swift_task_alloc();
    v13[16] = v16;
    *v16 = v13;
    v16[1] = sub_1D84F0BB8;
    v17 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_453_0();
  sub_1D849EA88();
  sub_1D849EB38();
  v28 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
  sub_1D849EBE8();
  sub_1D849ED24();
  OUTLINED_FUNCTION_16();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v30)
  {
    v32 = v13[13];
    v31 = v13[14];
    v33 = v13[12];

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v36 = v13[14];
    v37 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v38 = v13[11];
  sub_1D8581028();
  v39 = swift_task_alloc();
  v13[17] = v39;
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v40);
  OUTLINED_FUNCTION_168();
  *v39 = v41;
  v39[1] = sub_1D8484458;
  v42 = v13[11];
  v43 = v13[8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameActivityServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39840, &qword_1D85962E0);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84CC130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    v35 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39848, &qword_1D85962E8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_453_0();
    sub_1D849EA88();
    sub_1D849EB38();
    v36 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39878, &qword_1D85962F8);
    sub_1D849EBE8();
    sub_1D849ED24();
    OUTLINED_FUNCTION_16();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v49 = v14[16];
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 32);
    OUTLINED_FUNCTION_54();
    v53 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[23] = v24;
    *v24 = v14;
    v24[1] = sub_1D84CC47C;
    v25 = v14[10];
    OUTLINED_FUNCTION_207_0(v14[9]);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D84CC47C()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[19];
    v15 = v5[16];

    OUTLINED_FUNCTION_69_2();

    return v16(v3);
  }
}

uint64_t sub_1D84CC5BC()
{
  OUTLINED_FUNCTION_426();
  v15 = v1;
  OUTLINED_FUNCTION_177();
  v2 = *v0;
  v4 = *v3;
  v5 = v3[1];
  OUTLINED_FUNCTION_50(&unk_1D859E530);
  v14 = v6;
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  v11[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_269_1();

  return v14();
}

uint64_t sub_1D84CC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = a7;
  v8[18] = v7;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_1D8581018();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  v8[25] = v15;
  v16 = *(v15 - 8);
  v8[26] = v16;
  v17 = *(v16 + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v8[29] = v18;
  v19 = *(v18 - 8);
  v8[30] = v19;
  v20 = *(v19 + 64) + 15;
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CC89C, 0, 0);
}

uint64_t sub_1D84CC89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[18];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[18];
    v15[32] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v65 = v15[31];
      v66 = v15[27];
      v67 = v15[28];
      v68 = v15[24];
      v69 = v15[21];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14);
    }

    v39 = v15[31];
    v40 = v15[13];
    v15[5] = v15[12];
    v15[6] = v40;

    v41 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v44);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
    v47 = v15[28];
    v15[9] = v15[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v48 = v15[27];
    v15[10] = v15[15];

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v49 = v15[24];
    v50 = v15[17];
    v15[7] = v15[16];
    v15[8] = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    v51 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v52);
    v53 = OUTLINED_FUNCTION_325();
    __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
    OUTLINED_FUNCTION_26(&qword_1ECA39908);
    OUTLINED_FUNCTION_25(&qword_1ECA39910);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v55)
    {
      v56 = v15[30];
      a10 = v15[29];
      a11 = v15[31];
      a9 = v15[28];
      v57 = v15[26];
      v58 = v15[27];
      v60 = v15[24];
      v59 = v15[25];
      v62 = v15[22];
      v61 = v15[23];

      (*(v61 + 8))(v60, v62);
      v63 = *(v57 + 8);
      v64 = OUTLINED_FUNCTION_258();
      v63(v64);
      (v63)(a9, v59);
      (*(v56 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v78 = v15[21];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v79 = swift_task_alloc();
    v15[34] = v79;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v80);
    OUTLINED_FUNCTION_217();
    *v79 = v81;
    v79[1] = sub_1D84CCDB8;
    v82 = v15[21];
    v83 = v15[18];
    v84 = v15[11];
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_50(&unk_1D859E530);
    v86 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v15[33] = v19;
    *v19 = v20;
    v19[1] = sub_1D849F634;
    v21 = v15[17];
    v22 = v15[18];
    v23 = v15[15];
    v24 = v15[16];
    v25 = v15[13];
    v26 = v15[14];
    v27 = v15[11];
    v28 = v15[12];
    OUTLINED_FUNCTION_169();

    return v36(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, v86, a12, a13, a14);
  }
}

uint64_t sub_1D84CCDB8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameActivityServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 176) = v6;
  *(v1 + 184) = v0;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 144) = v9;
  *(v1 + 152) = v10;
  *(v1 + 136) = v11;
  v12 = sub_1D8581018();
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 200) = v13;
  v15 = *(v14 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 216) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 224) = v17;
  v19 = *(v18 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398B8, &qword_1D8596318);
  *(v1 + 240) = v20;
  OUTLINED_FUNCTION_39(v20);
  *(v1 + 248) = v21;
  v23 = *(v22 + 64) + 15;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 272) = v24;
  OUTLINED_FUNCTION_39(v24);
  *(v1 + 280) = v25;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_332();
  v29 = *v5;
  v30 = v5[1];
  *(v1 + 288) = v28;
  *(v1 + 296) = v29;
  *(v1 + 304) = v30;
  *(v1 + 312) = *v3;
  v31 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84CD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 184);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 184);
    v17 = *(v14 + 160);
    v18 = *(*(v14 + 168) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 328) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v68 = *(v14 + 288);
      v69 = *(v14 + 256);
      v70 = *(v14 + 264);
      v71 = *(v14 + 232);
      v72 = *(v14 + 208);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14);
    }

    v42 = *(v14 + 304);
    v43 = *(v14 + 288);
    *(v14 + 72) = *(v14 + 296);
    *(v14 + 80) = v42;

    v44 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v46);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v47);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v48, v49);
    v50 = *(v14 + 264);
    *(v14 + 120) = *(v14 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA398C0, &qword_1D8596320);
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A0D94();
    sub_1D84A0EF0();
    OUTLINED_FUNCTION_150_0();
    v51 = *(v14 + 256);
    *(v14 + 128) = *(v14 + 152);

    OUTLINED_FUNCTION_216();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_150_0();
    v52 = *(v14 + 320);
    v53 = *(v14 + 232);
    *(v14 + 88) = *(v14 + 312);
    *(v14 + 96) = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_214();
    sub_1D84751F0();
    sub_1D8475274();
    v54 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v55);
    v56 = OUTLINED_FUNCTION_325();
    __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    OUTLINED_FUNCTION_26(&qword_1ECA39908);
    OUTLINED_FUNCTION_25(&qword_1ECA39910);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v58)
    {
      v59 = *(v14 + 280);
      a10 = *(v14 + 272);
      a11 = *(v14 + 288);
      a9 = *(v14 + 264);
      v60 = *(v14 + 248);
      v61 = *(v14 + 256);
      v63 = *(v14 + 232);
      v62 = *(v14 + 240);
      v65 = *(v14 + 216);
      v64 = *(v14 + 224);

      (*(v64 + 8))(v63, v65);
      v66 = *(v60 + 8);
      v67 = OUTLINED_FUNCTION_258();
      v66(v67);
      (v66)(a9, v62);
      (*(v59 + 8))(a11, a10);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v81 = *(v14 + 208);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 336) = v82;
    *v82 = v83;
    v82[1] = sub_1D84CD828;
    v84 = *(v14 + 208);
    v85 = *(v14 + 184);
    v86 = *(v14 + 160);
    v87 = *(v14 + 136);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(v14 + 296);
    v19 = *(v14 + 304);
    v21 = *(v14 + 176);
    *(v14 + 104) = *(v14 + 184);
    *(v14 + 40) = v20;
    *(v14 + 48) = v19;
    *(v14 + 56) = *(v14 + 312);
    v22 = *(*(v21 + 16) + 40);
    OUTLINED_FUNCTION_54();
    v89 = v23 + *v23;
    v25 = *(v24 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 352) = v26;
    *v26 = v27;
    v26[1] = sub_1D84A03D4;
    v28 = *(v14 + 152);
    v29 = *(v14 + 160);
    v30 = *(v14 + 136);
    v31 = *(v14 + 144);
    OUTLINED_FUNCTION_169();

    return v39(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v89, a12, a13, a14);
  }
}

uint64_t sub_1D84CD828()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84CDB04()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_50(&unk_1D859E528);
  v6 = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6(v0);
}

uint64_t sub_1D84CDB9C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CDCC4, 0, 0);
}

uint64_t sub_1D84CDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D859E528);
    v16 = swift_task_alloc();
    v13[16] = v16;
    *v16 = v13;
    v16[1] = sub_1D84C2B28;
    v17 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
  OUTLINED_FUNCTION_280_0();
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_396_0();
  sub_1D84A214C();
  sub_1D84A21FC();
  v28 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_65(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
  sub_1D84A22AC();
  sub_1D84A23E8();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v30)
  {
    v32 = v13[13];
    v31 = v13[14];
    v33 = v13[12];

    v34 = OUTLINED_FUNCTION_49_0();
    v35(v34);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v36 = v13[14];
    v37 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v38 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v39 = swift_task_alloc();
  v13[17] = v39;
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v40);
  OUTLINED_FUNCTION_168();
  *v39 = v41;
  v39[1] = sub_1D84A1480;
  v42 = v13[11];
  v43 = v13[8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedGameActivityServiceProtocol<>.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39918, &qword_1D8596348);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84CE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    v35 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39920, &qword_1D8596350);
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_396_0();
    sub_1D84A214C();
    sub_1D84A21FC();
    v36 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39950, &qword_1D8596360);
    sub_1D84A22AC();
    sub_1D84A23E8();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v49 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_294(v50);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 48);
    OUTLINED_FUNCTION_54();
    v53 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[23] = v24;
    *v24 = v14;
    v24[1] = sub_1D84CE3A8;
    v25 = v14[10];
    OUTLINED_FUNCTION_207_0(v14[9]);
    OUTLINED_FUNCTION_169();

    return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D84CE3A8()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = v5[19];
    v15 = v5[16];

    OUTLINED_FUNCTION_69_2();

    return v16(v3);
  }
}

uint64_t sub_1D84CE4E8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return sub_1D84CE594(v0, v2);
}

uint64_t sub_1D84CE594(uint64_t a1, char a2)
{
  *(v3 + 177) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1D8581018();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v10 = type metadata accessor for GameActivityInstance(0);
  *(v3 + 104) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v3 + 120) = v12;
  v13 = *(v12 - 8);
  *(v3 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CE758, 0, 0);
}

uint64_t sub_1D84CE758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 48);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 48);
    *(v13 + 144) = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v48 = *(v13 + 136);
      v49 = *(v13 + 112);
      v50 = *(v13 + 96);
      v51 = *(v13 + 72);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
    }

    v28 = *(v13 + 136);
    v30 = *(v13 + 104);
    v29 = *(v13 + 112);
    v31 = *(v13 + 40);
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v32);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v33 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v33);
    v34 = *(v13 + 96);
    *(v13 + 176) = *(v13 + 177);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    v35 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      v39 = *(v13 + 128);
      v38 = *(v13 + 136);
      v40 = *(v13 + 120);
      v42 = *(v13 + 88);
      v41 = *(v13 + 96);
      v43 = *(v13 + 80);

      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v60 = *(v13 + 72);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v61 = swift_task_alloc();
    *(v13 + 160) = v61;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v62);
    OUTLINED_FUNCTION_217();
    *v61 = v63;
    v61[1] = sub_1D84A2BFC;
    v64 = *(v13 + 72);
    v65 = *(v13 + 48);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v66, v67, v68, v69, v70, v71, v72);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D859E520);
    v16 = swift_task_alloc();
    *(v13 + 152) = v16;
    *v16 = v13;
    v16[1] = sub_1D84A2AAC;
    v17 = *(v13 + 48);
    v18 = *(v13 + 177);
    OUTLINED_FUNCTION_207_0(*(v13 + 40));
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  *(v1 + 56) = v7;
  v8 = sub_1D8581018();
  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 104) = v9;
  v11 = *(v10 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39990, &qword_1D8596380);
  *(v1 + 120) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 128) = v13;
  v15 = *(v14 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_332();
  v16 = type metadata accessor for GameActivityInstance(0);
  *(v1 + 144) = v16;
  OUTLINED_FUNCTION_363(v16);
  v18 = *(v17 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  *(v1 + 160) = v19;
  OUTLINED_FUNCTION_39(v19);
  *(v1 + 168) = v20;
  v22 = *(v21 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  *(v1 + 226) = *v3;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84CEC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 88);
    v17 = *(v14 + 64);
    v18 = *(*(v14 + 72) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 184) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v56 = *(v14 + 176);
      v57 = *(v14 + 152);
      v58 = *(v14 + 136);
      v59 = *(v14 + 112);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
    }

    v36 = *(v14 + 176);
    v38 = *(v14 + 144);
    v37 = *(v14 + 152);
    v39 = *(v14 + 56);
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v40);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v41 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v41);
    v42 = *(v14 + 136);
    *(v14 + 225) = *(v14 + 226);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84A3A98();
    sub_1D84A3AEC();
    v43 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v47 = *(v14 + 168);
      v46 = *(v14 + 176);
      v48 = *(v14 + 160);
      v50 = *(v14 + 128);
      v49 = *(v14 + 136);
      v51 = *(v14 + 120);

      v52 = OUTLINED_FUNCTION_52();
      v53(v52);
      v54 = OUTLINED_FUNCTION_51_0();
      v55(v54);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v68 = *(v14 + 112);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v69 = swift_task_alloc();
    *(v14 + 192) = v69;
    *v69 = v14;
    v69[1] = sub_1D84CEFEC;
    v70 = *(v14 + 112);
    v71 = *(v14 + 64);
    OUTLINED_FUNCTION_53(*(v14 + 88));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v72, v73, v74, v75, v76, v77, v78);
  }

  else
  {
    v19 = *(v14 + 226);
    v20 = *(v14 + 80);
    *(v14 + 40) = *(v14 + 88);
    *(v14 + 224) = v19;
    v21 = *(*(v20 + 16) + 56);
    OUTLINED_FUNCTION_54();
    v80 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    *(v14 + 208) = v25;
    *v25 = v14;
    v25[1] = sub_1D84A3570;
    v26 = *(v14 + 64);
    OUTLINED_FUNCTION_207_0(*(v14 + 56));
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v80, a12, a13, a14);
  }
}

uint64_t sub_1D84CEFEC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84CF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_452_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[22];
  v20 = v12[19];
  v21 = v12[17];
  v22 = v12[14];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D84CF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_452_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 200);
  OUTLINED_FUNCTION_338_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D84CF270()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_50(&unk_1D859E518);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_97(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_373_0(v5);

  return v8(v7);
}

uint64_t sub_1D84CF308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D40, &qword_1D859A930);
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84CF434, 0, 0);
}

uint64_t sub_1D84CF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[10];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[10];
    v13[17] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v42 = v13[16];
      v43 = v13[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v27 = v13[16];
    v28 = v13[9];
    v13[5] = v13[8];
    v13[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_300_1();
    OUTLINED_FUNCTION_434_0();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      v38 = v13[15];
      v37 = v13[16];
      v39 = v13[14];

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v52 = v13[13];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v13[19] = v53;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v54);
    OUTLINED_FUNCTION_217();
    *v53 = v55;
    v53[1] = sub_1D84CF72C;
    v56 = v13[13];
    v57 = v13[10];
    v58 = v13[7];
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E518);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[18] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_420_0(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84CF72C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameActivityServiceProtocol<>.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D40, &qword_1D859A930);
  v1[19] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v0;
  v17 = v0[1];
  v1[21] = v15;
  v1[22] = v16;
  v1[23] = v17;
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84CF920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[15];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[15];
    v17 = v14[12];
    v18 = *(v14[13] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[24] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v51 = v14[21];
      v52 = v14[18];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[23];
    v37 = v14[21];
    v14[7] = v14[22];
    v14[8] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_300_1();
    OUTLINED_FUNCTION_434_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_198();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v47 = v14[20];
      v46 = v14[21];
      v48 = v14[19];

      v49 = OUTLINED_FUNCTION_49_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v61 = v14[18];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[25] = v62;
    *v62 = v63;
    v62[1] = sub_1D84CFC68;
    v64 = v14[18];
    v65 = v14[15];
    v66 = v14[11];
    v67 = v14[12];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = v14[14];
    v14[9] = v14[15];
    v20 = v14[22];
    v21 = *(OUTLINED_FUNCTION_38(v14[23]) + 64);
    OUTLINED_FUNCTION_54();
    v69 = v22 + *v22;
    v24 = *(v23 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[27] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_374_0(v25);
    OUTLINED_FUNCTION_169();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v69, a12, a13, a14);
  }
}

uint64_t sub_1D84CFC68()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84CFD60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[21];
    v13 = v3[18];

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D84CFE88()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_50(&unk_1D859E510);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_97(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_373_0(v5);

  return v8(v7);
}

uint64_t sub_1D84CFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1D8581018();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D004C, 0, 0);
}

uint64_t sub_1D84D004C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[10];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[10];
    v13[17] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v42 = v13[16];
      v43 = v13[13];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v27 = v13[16];
    v28 = v13[9];
    v13[5] = v13[8];
    v13[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      v38 = v13[15];
      v37 = v13[16];
      v39 = v13[14];

      v40 = OUTLINED_FUNCTION_49_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v52 = v13[13];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v13[19] = v53;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v54);
    OUTLINED_FUNCTION_217();
    *v53 = v55;
    v53[1] = sub_1D84D0458;
    v56 = v13[13];
    v57 = v13[10];
    v58 = v13[7];
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E510);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[18] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_420_0(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84D0340()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = *(v0 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 128);
  v7 = *(v0 + 104);

  OUTLINED_FUNCTION_137();

  return v8();
}

uint64_t sub_1D84D0458()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84D0550()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_522();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D84D05F4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_522();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[13];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t DistributedGameActivityServiceProtocol<>.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_455_0(v2, v3, v4, v5, v6);
  v1[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[19] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v0;
  v17 = v0[1];
  v1[21] = v15;
  v1[22] = v16;
  v1[23] = v17;
  v18 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84D0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[15];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[15];
    v17 = v14[12];
    v18 = *(v14[13] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[24] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v51 = v14[21];
      v52 = v14[18];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[23];
    v37 = v14[21];
    v14[7] = v14[22];
    v14[8] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    sub_1D84EA834();
    sub_1D84EA888();
    OUTLINED_FUNCTION_56();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v47 = v14[20];
      v46 = v14[21];
      v48 = v14[19];

      v49 = OUTLINED_FUNCTION_49_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v61 = v14[18];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[25] = v62;
    *v62 = v63;
    v62[1] = sub_1D84D0ADC;
    v64 = v14[18];
    v65 = v14[15];
    v66 = v14[11];
    v67 = v14[12];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = v14[14];
    v14[9] = v14[15];
    v20 = v14[22];
    v21 = *(OUTLINED_FUNCTION_38(v14[23]) + 72);
    OUTLINED_FUNCTION_54();
    v69 = v22 + *v22;
    v24 = *(v23 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[27] = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_374_0(v25);
    OUTLINED_FUNCTION_169();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v69, a12, a13, a14);
  }
}

uint64_t sub_1D84D0ADC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84D0BD4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_521_0();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = *(v0 + 168);
  v6 = *(v0 + 144);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_511();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1D84D0C78()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[21];
    v13 = v3[18];

    OUTLINED_FUNCTION_57();

    return v14();
  }
}

uint64_t sub_1D84D0DA0()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_521_0();
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_80();
  v4(v3);
  OUTLINED_FUNCTION_331();

  v5 = v0[26];
  v6 = v0[21];
  v7 = v0[18];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D84D0E48()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[18];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D84D0EB0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_129_0();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D859E508);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);
  v5 = OUTLINED_FUNCTION_506();

  return v7(v5);
}

uint64_t sub_1D84D0F4C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D8581018();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = type metadata accessor for GameActivityInstance(0);
  v3[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D1110, 0, 0);
}

uint64_t sub_1D84D1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[8];
    v13[20] = OUTLINED_FUNCTION_376_0();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedGameActivityServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_168_0();
      v48 = v13[14];
      v49 = v13[11];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
    }

    v28 = v13[19];
    v30 = v13[15];
    v29 = v13[16];
    v31 = v13[6];
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v32);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v33 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v33);
    v34 = v13[14];
    v13[5] = v13[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_433_0();
    sub_1D84769B4();
    sub_1D8476AE8();
    v35 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      v39 = v13[18];
      v38 = v13[19];
      v40 = v13[17];
      v42 = v13[13];
      v41 = v13[14];
      v43 = v13[12];

      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v58 = v13[11];
    sub_1D8581028();
    v59 = swift_task_alloc();
    v13[22] = v59;
    OUTLINED_FUNCTION_0_5();
    sub_1D84C49BC(v60);
    OUTLINED_FUNCTION_217();
    *v59 = v61;
    v59[1] = sub_1D84A4228;
    v62 = v13[11];
    v63 = v13[8];
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D859E508);
    v16 = swift_task_alloc();
    v13[21] = v16;
    *v16 = v13;
    v16[1] = sub_1D84A40D8;
    v17 = v13[7];
    v18 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[6]);
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameActivityServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_148();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1D8581018();
  v1[14] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[17] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[18] = v12;
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v15 = type metadata accessor for GameActivityInstance(0);
  v1[20] = v15;
  OUTLINED_FUNCTION_363(v15);
  v17 = *(v16 + 64);
  v1[21] = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39998, &qword_1D8596388);
  v1[22] = v18;
  OUTLINED_FUNCTION_39(v18);
  v1[23] = v19;
  v21 = *(v20 + 64);
  v1[24] = OUTLINED_FUNCTION_332();
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D84D15E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[25] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v56 = v14[24];
      v57 = v14[21];
      v58 = v14[19];
      v59 = v14[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[24];
    v38 = v14[20];
    v37 = v14[21];
    v39 = v14[8];
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    OUTLINED_FUNCTION_72_0();
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_382_0(v40);
    OUTLINED_FUNCTION_46_0(&qword_1ECA39988);
    v41 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v41);
    v42 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_433_0();
    sub_1D84769B4();
    sub_1D8476AE8();
    v43 = OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_65(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v47 = v14[23];
      v46 = v14[24];
      v48 = v14[22];
      v50 = v14[18];
      v49 = v14[19];
      v51 = v14[17];

      v52 = OUTLINED_FUNCTION_52();
      v53(v52);
      v54 = OUTLINED_FUNCTION_51_0();
      v55(v54);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v68 = v14[16];
    sub_1D8581028();
    v69 = swift_task_alloc();
    v14[26] = v69;
    *v69 = v14;
    v69[1] = sub_1D84D19A4;
    v70 = v14[16];
    v71 = v14[10];
    OUTLINED_FUNCTION_53(v14[13]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v72, v73, v74, v75, v76, v77, v78);
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 80);
    OUTLINED_FUNCTION_54();
    v80 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[28] = v24;
    *v24 = v14;
    v24[1] = sub_1D84D1A9C;
    v25 = v14[9];
    v26 = v14[10];
    OUTLINED_FUNCTION_207_0(v14[8]);
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v80, a12, a13, a14);
  }
}

uint64_t sub_1D84D19A4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84D1A9C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[29] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[24];
    v13 = v3[21];
    v14 = v3[19];
    v15 = v3[16];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D84D1BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_296_0();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 216);
  OUTLINED_FUNCTION_520_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D84D1CA8()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_520_0();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84D1D20()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D859E500);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D84D1DAC()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D1E6C, 0, 0);
}

uint64_t sub_1D84D20B4()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  v8 = *(v4 + 72);

  v10 = *(v6 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84D227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[11];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[11];
  if (is_remote)
  {
    v18 = v14[8];
    v19 = *(v14[9] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D58, &qword_1D859A968);
    sub_1D84EAE60();
    sub_1D84EAF18();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v21)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v22 = v14[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v45 = v14[14];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v46;
      *v46 = v47;
      v46[1] = sub_1D84663B8;
      v48 = v14[14];
      v49 = v14[11];
      v50 = v14[8];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v32 = *(OUTLINED_FUNCTION_210(v14[10]) + 88);
    OUTLINED_FUNCTION_54();
    v52 = v33 + *v33;
    v35 = *(v34 + 4);
    v36 = swift_task_alloc();
    v14[18] = v36;
    *v36 = v14;
    OUTLINED_FUNCTION_340_1(v36);
    OUTLINED_FUNCTION_169();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84D2508()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    v13 = OUTLINED_FUNCTION_505_0();

    return v14(v13);
  }
}

uint64_t sub_1D84D2638()
{
  OUTLINED_FUNCTION_148();
  v1 = *v0;
  OUTLINED_FUNCTION_24(&unk_1D859E4F8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);

  return v6();
}

uint64_t sub_1D84D26C4()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84D2784, 0, 0);
}

uint64_t sub_1D84D29CC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v8 = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84D2B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[11];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[11];
  if (is_remote)
  {
    v18 = v14[8];
    v19 = *(v14[9] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D70, &qword_1D859A980);
    sub_1D84EB084();
    sub_1D84EB13C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v21)
    {
LABEL_6:
      OUTLINED_FUNCTION_342();

      v22 = v14[14];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v45 = v14[14];
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v46;
      *v46 = v47;
      v46[1] = sub_1D84D2DF8;
      v48 = v14[14];
      v49 = v14[11];
      v50 = v14[8];
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    v32 = *(OUTLINED_FUNCTION_210(v14[10]) + 96);
    OUTLINED_FUNCTION_54();
    v52 = v33 + *v33;
    v35 = *(v34 + 4);
    v36 = swift_task_alloc();
    v14[18] = v36;
    *v36 = v14;
    OUTLINED_FUNCTION_340_1(v36);
    OUTLINED_FUNCTION_169();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84D2DF8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84D2EF0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    v13 = OUTLINED_FUNCTION_505_0();

    return v14(v13);
  }
}

uint64_t sub_1D84D3020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v4);
  v5 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v5);
}

uint64_t sub_1D84D3094()
{
  v1 = *v0;
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v2);
  sub_1D843D180();
  OUTLINED_FUNCTION_368();
  return sub_1D8580FD8();
}

uint64_t sub_1D84D3114@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedGameActivityServiceProtocol();
  OUTLINED_FUNCTION_0_5();
  sub_1D84C49BC(v3);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_269_1();
  result = sub_1D8580FE8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

GameServices::GameActivityPlayStyle_optional __swiftcall GameActivityPlayStyle.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t GameActivityPlayStyle.rawValue.getter()
{
  v1 = 0x6E6F7268636E7973;
  if (*v0 != 1)
  {
    v1 = 0x6F7268636E797361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D84D3274@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityPlayStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D32A8()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AA4();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D32F0()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AA4();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t GameActivityDefinition.ascUUID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.language.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.partyStartURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = *(type metadata accessor for GameActivityDefinition(v0) + 32);
  v2 = sub_1D8580D78();
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_394_0();

  return v6(v5);
}

uint64_t GameActivityDefinition.storeFront.getter()
{
  v0 = type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 36));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.storeFront.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityDefinition(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityDefinition.storeFront.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityDefinition(v0) + 36);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityDefinition.title.getter()
{
  v0 = type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 40));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.defaultProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 48));
}

uint64_t GameActivityDefinition.fallbackURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_400(*(v1 + 52));
  return sub_1D847C204();
}

uint64_t GameActivityDefinition.artwork.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 60);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x70uLL);
  return sub_1D847C204();
}

uint64_t GameActivityDefinition.image.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for GameActivityDefinition(v2) + 60));
  result = v3[1];
  if (result)
  {
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  v0[1] = result;
  return result;
}

void GameActivityDefinition.playStyle.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 72));
}

uint64_t GameActivityDefinition.associatedLeaderboardUUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 76));
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionUUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 80));
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 84));
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 84);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityDefinition(v0) + 84);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 88));
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 88);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityDefinition(v0) + 88);
  return OUTLINED_FUNCTION_106();
}

void GameActivityDefinition.releaseState.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 92));
}

uint64_t GameActivityDefinition.compatibleBundleIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityDefinition(0) + 100));
}

void GameActivityDefinition.init(identifier:groupIdentifier:ascUUID:activityEnvironment:title:details:defaultProperties:fallbackURL:artwork:supportsPartyCode:maxPlayers:minPlayers:playStyle:associatedLeaderboardUUIDs:associatedAchievementDescriptionUUIDs:associatedLeaderboardIDs:associatedAchievementDescriptionIDs:releaseState:archived:compatibleBundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, char a38, uint64_t a39)
{
  OUTLINED_FUNCTION_386();
  v77 = v40;
  v42 = v41;
  v75 = v43;
  v76 = v44;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = a24;
  v54 = type metadata accessor for GameActivityDefinition(0);
  v55 = OUTLINED_FUNCTION_4_0(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v78 = *a32;
  v58 = *a37;
  v60 = (v39 + *(v59 + 36));
  *v60 = 29557;
  v60[1] = 0xE200000000000000;
  *v39 = v52;
  v39[1] = v50;
  v39[2] = v48;
  v39[3] = v46;
  v39[4] = v75;
  v39[5] = v76;
  v61 = v42[3];
  v62 = v42[4];
  v63 = OUTLINED_FUNCTION_188();
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v39[6] = (*(v62 + 32))(v61, v62);
  v39[7] = v65;
  v66 = v42[3];
  v67 = v42[4];
  v68 = OUTLINED_FUNCTION_188();
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v70 = v39 + v54[8];
  (*(v67 + 40))(v66, v67);
  v71 = (v39 + v54[10]);
  *v71 = v77;
  v71[1] = a21;
  v72 = (v39 + v54[11]);
  *v72 = a22;
  v72[1] = a23;
  if (!a24)
  {
    v53 = sub_1D85811B8();
  }

  *(v39 + v54[12]) = v53;
  sub_1D84EB1F4(a25, v39 + v54[13]);
  memcpy(v39 + v54[15], a26, 0x70uLL);
  *(v39 + v54[14]) = a27 & 1;
  v73 = v39 + v54[16];
  *v73 = a28;
  v73[8] = a29 & 1;
  v74 = v39 + v54[17];
  *v74 = a30;
  v74[8] = a31 & 1;
  *(v39 + v54[18]) = v78;
  *(v39 + v54[19]) = a33;
  *(v39 + v54[20]) = a34;
  *(v39 + v54[21]) = a35;
  *(v39 + v54[22]) = a36;
  *(v39 + v54[23]) = v58;
  *(v39 + v54[24]) = a38 & 1;
  *(v39 + v54[25]) = a39;
  sub_1D84EB32C();
  __swift_destroy_boxed_opaque_existential_1(v42);
  OUTLINED_FUNCTION_388();
}

void static GameActivityDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D8580D78();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_129();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D90, &qword_1D859A998);
  OUTLINED_FUNCTION_4_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_160();
  v21 = *v6 == *v4 && v6[1] == v4[1];
  if (!v21 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v22 = v6[3];
  v23 = v4[3];
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_62;
    }

    v24 = v6[2] == v4[2] && v22 == v23;
    if (!v24 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v23)
  {
    goto LABEL_62;
  }

  v25 = v6[5];
  v26 = v4[5];
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_62;
    }

    v27 = v6[4] == v4[4] && v25 == v26;
    if (!v27 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v26)
  {
    goto LABEL_62;
  }

  v28 = v6[6] == v4[6] && v6[7] == v4[7];
  if (!v28 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v29 = type metadata accessor for GameActivityDefinition(0);
  v30 = v29[8];
  if ((sub_1D8580D58() & 1) == 0)
  {
    goto LABEL_62;
  }

  v31 = OUTLINED_FUNCTION_211_0(v29[9]);
  v35 = v31 == v34 && v32 == v33;
  if (!v35 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v36 = OUTLINED_FUNCTION_211_0(v29[10]);
  v40 = v36 == v39 && v37 == v38;
  if (!v40 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v41 = v29[11];
  v42 = (v6 + v41);
  v43 = *(v6 + v41 + 8);
  v44 = (v4 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_62;
    }

    v46 = *v42 == *v44 && v43 == v45;
    if (!v46 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v45)
  {
    goto LABEL_62;
  }

  v47 = OUTLINED_FUNCTION_359_0(v29[12]);
  if ((sub_1D84BAB00(v47, v48) & 1) == 0)
  {
    goto LABEL_62;
  }

  v86 = v29[13];
  v49 = *(v17 + 48);
  sub_1D847C204();
  sub_1D847C204();
  OUTLINED_FUNCTION_55_0(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_55_0(v1 + v49);
    if (v21)
    {
      sub_1D8436E18(v1, &qword_1ECA39D88, &qword_1D859A988);
      goto LABEL_61;
    }

LABEL_58:
    v51 = &qword_1ECA39D90;
    v52 = &qword_1D859A998;
    v53 = v1;
LABEL_59:
    sub_1D8436E18(v53, v51, v52);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_258();
  sub_1D847C204();
  OUTLINED_FUNCTION_55_0(v1 + v49);
  if (v50)
  {
    (*(v10 + 8))(v2, v7);
    goto LABEL_58;
  }

  (*(v10 + 32))(v0, v1 + v49, v7);
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v54);
  OUTLINED_FUNCTION_236_1();
  v87 = sub_1D8581208();
  v55 = *(v10 + 8);
  v56 = OUTLINED_FUNCTION_495();
  v55(v56);
  (v55)(v2, v7);
  sub_1D8436E18(v1, &qword_1ECA39D88, &qword_1D859A988);
  if ((v87 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  if (*(v6 + v29[14]) != *(v4 + v29[14]))
  {
    goto LABEL_62;
  }

  v57 = v6 + v29[15];
  memcpy(v96, v57, sizeof(v96));
  v58 = v4 + v29[15];
  memcpy(v97, v58, sizeof(v97));
  v59 = v96[0];
  v60 = v96[1];
  memcpy(v95, v57 + 16, sizeof(v95));
  v62 = v97[0];
  v61 = v97[1];
  memcpy(v94, v58 + 16, sizeof(v94));
  if (v96[1])
  {
    v92[0] = v96[0];
    v92[1] = v96[1];
    OUTLINED_FUNCTION_440_0(v92);
    memcpy(v91, v92, sizeof(v91));
    if (v61)
    {
      memcpy(&v90[2], v58 + 16, 0x60uLL);
      v90[0] = v62;
      v90[1] = v61;
      OUTLINED_FUNCTION_439_0();
      OUTLINED_FUNCTION_439_0();
      OUTLINED_FUNCTION_439_0();
      sub_1D847B878();
      v63 = sub_1D8581208();
      memcpy(v88, v90, sizeof(v88));
      sub_1D847B824(v88);
      memcpy(v89, v91, sizeof(v89));
      sub_1D847B824(v89);
      v90[0] = v59;
      v90[1] = v60;
      memcpy(&v90[2], v95, 0x60uLL);
      OUTLINED_FUNCTION_269_1();
      sub_1D8436E18(v64, v65, v66);
      if ((v63 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    memcpy(v90, v92, sizeof(v90));
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    sub_1D847B824(v90);
    goto LABEL_70;
  }

  if (v97[1])
  {
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
LABEL_70:
    v92[0] = v59;
    v92[1] = v60;
    memcpy(&v92[2], v95, 0x60uLL);
    v92[14] = v62;
    v92[15] = v61;
    memcpy(v93, v94, sizeof(v93));
    v51 = &qword_1ECA39210;
    v52 = &qword_1D859A9A0;
    v53 = v92;
    goto LABEL_59;
  }

  v92[0] = v96[0];
  v92[1] = 0;
  OUTLINED_FUNCTION_440_0(v92);
  sub_1D847C204();
  sub_1D847C204();
  sub_1D8436E18(v92, &qword_1ECA39200, &qword_1D859A990);
LABEL_72:
  OUTLINED_FUNCTION_489_0(v29[16]);
  if (v68)
  {
    if (!v67)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_485_0();
    if (v69)
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_489_0(v29[17]);
  if (v71)
  {
    if (!v70)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_485_0();
    if (v72)
    {
      goto LABEL_62;
    }
  }

  if (sub_1D84C5B38(*(v6 + v29[18]), *(v4 + v29[18])))
  {
    v73 = OUTLINED_FUNCTION_359_0(v29[19]);
    if (sub_1D84C78BC(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_359_0(v29[20]);
      if (sub_1D84C78BC(v75, v76))
      {
        v77 = OUTLINED_FUNCTION_359_0(v29[21]);
        if (sub_1D84C78BC(v77, v78))
        {
          v79 = OUTLINED_FUNCTION_359_0(v29[22]);
          if (sub_1D84C78BC(v79, v80))
          {
            v81 = v29[23];
            v82 = *(v4 + v81);
            v83 = *(v6 + v81);
            if ((sub_1D844AB18() & 1) != 0 && *(v6 + v29[24]) == *(v4 + v29[24]))
            {
              v84 = OUTLINED_FUNCTION_359_0(v29[25]);
              sub_1D84C78BC(v84, v85);
            }
          }
        }
      }
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84D4364(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v25 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + v11);
    v26 = v13 == 0;

    if (!v13)
    {
      return v13 == 0;
    }

    v16 = sub_1D84E7500(v14, v13);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      return v13 == 0;
    }

    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    switch(*(*(a2 + 56) + v16))
    {
      case 1:
        v20 = 0x64657469766E69;
        break;
      case 2:
        v19 = 0xE600000000000000;
        v20 = 0x64656E696F6ALL;
        break;
      case 3:
        v19 = 0xE400000000000000;
        v20 = 1952867692;
        break;
      default:
        break;
    }

    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    switch(v15)
    {
      case 1:
        v22 = 0x64657469766E69;
        break;
      case 2:
        v21 = 0xE600000000000000;
        v22 = 0x64656E696F6ALL;
        break;
      case 3:
        v21 = 0xE400000000000000;
        v22 = 1952867692;
        break;
      default:
        break;
    }

    if (v20 == v22 && v19 == v21)
    {
    }

    else
    {
      v24 = sub_1D8581AB8();

      result = v26;
      if ((v24 & 1) == 0)
      {
        return result;
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v25)
    {
      return 1;
    }

    v10 = *(v3 + 64 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84D45D4()
{
  OUTLINED_FUNCTION_395_0();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_7() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x644970756F7267 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 0x44495555637361 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_216_1();
        v8 = v3 && v0 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v4 == OUTLINED_FUNCTION_195_1() && v0 == v9;
          if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v4 == OUTLINED_FUNCTION_299_0() && v0 == v11 + 252;
            if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v4 == 0x656C746974 && v0 == 0xE500000000000000;
              if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = v4 == 0x736C6961746564 && v0 == 0xE700000000000000;
                if (v14 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_385_0();
                  v16 = v3 && v15 == v0;
                  if (v16 || (OUTLINED_FUNCTION_94_0() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v18 = v4 == OUTLINED_FUNCTION_461_0() && v0 == v17;
                    if (v18 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_385_0();
                      v20 = v3 && v19 == v0;
                      if (v20 || (OUTLINED_FUNCTION_94_0() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v21 = v4 == 0x6B726F77747261 && v0 == 0xE700000000000000;
                        if (v21 || (OUTLINED_FUNCTION_7() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v22 = v4 == 0x6579616C5078616DLL && v0 == 0xEA00000000007372;
                          if (v22 || (OUTLINED_FUNCTION_7() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v23 = v4 == 0x6579616C506E696DLL && v0 == 0xEA00000000007372;
                            if (v23 || (OUTLINED_FUNCTION_7() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_335_1();
                              v25 = v3 && v0 == v24;
                              if (v25 || (OUTLINED_FUNCTION_7() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v26 = v4 == 0xD00000000000001ALL && 0x80000001D85866E0 == v0;
                                if (v26 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v27 = v4 == 0xD000000000000025 && 0x80000001D8586700 == v0;
                                  if (v27 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v28 = v4 == 0xD000000000000018 && 0x80000001D8586730 == v0;
                                    if (v28 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v29 = v4 == 0xD000000000000023 && 0x80000001D8586750 == v0;
                                      if (v29 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v31 = v4 == OUTLINED_FUNCTION_223() && v0 == v30;
                                        if (v31 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v32 = v4 == 0x6465766968637261 && v0 == 0xE800000000000000;
                                          if (v32 || (OUTLINED_FUNCTION_7() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (v4 == 0xD000000000000013 && 0x80000001D8586780 == v0)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_7();
                                            OUTLINED_FUNCTION_369();
                                            if (v4)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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

void sub_1D84D4AA0(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_445_0(0x4970756F7267);
      break;
    case 4:
      OUTLINED_FUNCTION_195_1();
      break;
    case 5:
      OUTLINED_FUNCTION_299_0();
      break;
    case 8:
    case 10:
      OUTLINED_FUNCTION_186_1();
      break;
    case 9:
      OUTLINED_FUNCTION_461_0();
      break;
    case 12:
    case 13:
      OUTLINED_FUNCTION_443_0();
      break;
    case 14:
      OUTLINED_FUNCTION_249_0();
      break;
    case 19:
      OUTLINED_FUNCTION_223();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84D4CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84D45D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D84D4D04()
{
  sub_1D84EB264();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D4D3C()
{
  sub_1D84EB264();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DA0, &qword_1D859A9A8);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_128();
  v11 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EB264();
  sub_1D8581BB8();
  v12 = *v2;
  v13 = v2[1];
  LOBYTE(v43[0]) = 0;
  OUTLINED_FUNCTION_89_0();
  sub_1D8581A08();
  if (!v1)
  {
    v14 = v2[2];
    v15 = v2[3];
    OUTLINED_FUNCTION_51_3(1);
    sub_1D8581998();
    v16 = v2[4];
    v17 = v2[5];
    OUTLINED_FUNCTION_51_3(2);
    sub_1D8581998();
    v18 = v2[6];
    v19 = v2[7];
    OUTLINED_FUNCTION_51_3(3);
    sub_1D8581A08();
    v38 = type metadata accessor for GameActivityDefinition(0);
    v20 = v38[8];
    LOBYTE(v43[0]) = 4;
    sub_1D8580D78();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v21);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    v22 = (v2 + v38[9]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_51_3(5);
    sub_1D8581A08();
    v25 = (v2 + v38[10]);
    v26 = *v25;
    v27 = v25[1];
    OUTLINED_FUNCTION_51_3(6);
    sub_1D8581A08();
    v28 = (v2 + v38[11]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_51_3(7);
    sub_1D8581998();
    v43[0] = *(v2 + v38[12]);
    v42[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    v31 = v38[13];
    LOBYTE(v43[0]) = 9;
    OUTLINED_FUNCTION_163_0();
    sub_1D85819E8();
    v32 = *(v2 + v38[14]);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A18();
    v33 = v38[15];
    memcpy(v43, v2 + v33, sizeof(v43));
    memcpy(v42, v2 + v33, sizeof(v42));
    sub_1D847C204();
    sub_1D847B920();
    OUTLINED_FUNCTION_163_0();
    sub_1D85819E8();
    memcpy(v41, v42, sizeof(v41));
    sub_1D8436E18(v41, &qword_1ECA39200, &qword_1D859A990);
    OUTLINED_FUNCTION_494_0((v2 + v38[16]));
    OUTLINED_FUNCTION_89_0();
    sub_1D85819C8();
    OUTLINED_FUNCTION_494_0((v2 + v38[17]));
    OUTLINED_FUNCTION_89_0();
    sub_1D85819C8();
    v39 = *(v2 + v38[18]);
    sub_1D84D7A5C();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    OUTLINED_FUNCTION_408_0(v38[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    OUTLINED_FUNCTION_103_1(&unk_1EE0E0040);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v38[20]);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v38[21]);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v38[22]);
    OUTLINED_FUNCTION_78_1();
    v40 = *(v2 + v38[23]);
    sub_1D8466A84();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    v34 = *(v2 + v38[24]);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A18();
    OUTLINED_FUNCTION_408_0(v38[25]);
    OUTLINED_FUNCTION_78_1();
  }

  v35 = *(v7 + 8);
  v36 = OUTLINED_FUNCTION_228();
  v37(v36);
  OUTLINED_FUNCTION_284_0();
}

void GameActivityDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v0;
  v3 = sub_1D8580D78();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_0();
  v58 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_129();
  v14 = *v0;
  v15 = v0[1];
  sub_1D85812B8();
  if (v0[3])
  {
    v16 = v0[2];
    OUTLINED_FUNCTION_425_0();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  if (v0[5])
  {
    v17 = v0[4];
    OUTLINED_FUNCTION_425_0();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  v18 = v0[6];
  v19 = v0[7];
  sub_1D85812B8();
  v20 = type metadata accessor for GameActivityDefinition(0);
  v21 = v20[8];
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v22);
  sub_1D85811E8();
  v23 = (v2 + v20[9]);
  v24 = *v23;
  v25 = v23[1];
  sub_1D85812B8();
  v26 = (v2 + v20[10]);
  v27 = *v26;
  v28 = v26[1];
  sub_1D85812B8();
  v29 = (v2 + v20[11]);
  if (v29[1])
  {
    v30 = v6;
    v31 = *v29;
    OUTLINED_FUNCTION_425_0();
    v6 = v30;
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  v32 = OUTLINED_FUNCTION_358_0(v20[12]);
  sub_1D84BACE8(v32, v33);
  v34 = v20[13];
  sub_1D847C204();
  v35 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v35, v36, v3);
  if (v37)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    OUTLINED_FUNCTION_492_0();
    v38(v58, v1, v3);
    OUTLINED_FUNCTION_425_0();
    sub_1D85811E8();
    (*(v6 + 8))(v58, v3);
  }

  v39 = *(v2 + v20[14]);
  sub_1D8581B78();
  v40 = (v2 + v20[15]);
  v41 = *v40;
  v42 = v40[1];
  memcpy(v63, v40 + 2, sizeof(v63));
  if (v42)
  {
    OUTLINED_FUNCTION_440_0(v59);
    v59[0] = v41;
    v59[1] = v42;
    OUTLINED_FUNCTION_425_0();
    v60[0] = v41;
    v60[1] = v42;
    memcpy(v61, v63, sizeof(v61));
    sub_1D847BC2C(v60, v62);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(v62, v59, sizeof(v62));
    sub_1D847B824(v62);
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  v43 = v2 + v20[16];
  if (v43[8] == 1)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    v44 = *v43;
    OUTLINED_FUNCTION_425_0();
    MEMORY[0x1DA7191F0](v44);
  }

  v45 = v2 + v20[17];
  if (v45[8] == 1)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    v46 = *v45;
    OUTLINED_FUNCTION_425_0();
    MEMORY[0x1DA7191F0](v46);
  }

  if (!*(v2 + v20[18]))
  {
    OUTLINED_FUNCTION_332_1();
  }

  sub_1D85812B8();

  v47 = OUTLINED_FUNCTION_358_0(v20[19]);
  sub_1D84E849C(v47, v48);
  v49 = OUTLINED_FUNCTION_358_0(v20[20]);
  sub_1D84E849C(v49, v50);
  v51 = OUTLINED_FUNCTION_358_0(v20[21]);
  sub_1D84E849C(v51, v52);
  v53 = OUTLINED_FUNCTION_358_0(v20[22]);
  sub_1D84E849C(v53, v54);
  v62[0] = *(v2 + v20[23]);
  sub_1D846779C();
  sub_1D85811E8();
  v55 = *(v2 + v20[24]);
  sub_1D8581B78();
  v56 = OUTLINED_FUNCTION_358_0(v20[25]);
  sub_1D84E849C(v56, v57);
  OUTLINED_FUNCTION_388();
}

void GameActivityDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_285();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_129();
  v67 = sub_1D8580D78();
  v19 = OUTLINED_FUNCTION_1(v67);
  v66 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DA8, &qword_1D859A9B8);
  OUTLINED_FUNCTION_1(v71);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_199();
  v72 = type metadata accessor for GameActivityDefinition(0);
  v26 = OUTLINED_FUNCTION_4_0(v72);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_19_0();
  v73 = v29;
  v31 = v14[3];
  v30 = v14[4];
  v32 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v32, v33);
  sub_1D84EB264();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v10)
  {
    OUTLINED_FUNCTION_7_2();
    __swift_destroy_boxed_opaque_existential_1(v14);

    if (v68)
    {
      v34 = *(v73 + v72[12]);

      if ((v69 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v69)
    {
LABEL_5:
      if (v70)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    sub_1D8436E18(v73 + v72[13], &qword_1ECA39D88, &qword_1D859A988);
    if (v70)
    {
LABEL_6:
      memcpy(v75, v73 + v72[15], 0x70uLL);
      sub_1D8436E18(v75, &qword_1ECA39200, &qword_1D859A990);
      if ((a10 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a10)
    {
LABEL_7:
      if (!v71)
      {
        goto LABEL_13;
      }

LABEL_8:
      v35 = *(v73 + v72[20]);

      goto LABEL_13;
    }

LABEL_12:
    v36 = *(v73 + v72[19]);

    if ((v71 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_175_1();
  *v73 = sub_1D8581908();
  v73[1] = v37;
  OUTLINED_FUNCTION_52_0(1);
  v73[2] = sub_1D8581898();
  v73[3] = v38;
  OUTLINED_FUNCTION_52_0(2);
  v73[4] = sub_1D8581898();
  v73[5] = v39;
  OUTLINED_FUNCTION_52_0(3);
  v73[6] = sub_1D8581908();
  v73[7] = v40;
  LOBYTE(v75[0]) = 4;
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v41);
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  (*(v66 + 32))(v73 + v72[8], v11, v67);
  OUTLINED_FUNCTION_52_0(5);
  v42 = sub_1D8581908();
  OUTLINED_FUNCTION_472_0(v42, v43, v72[9]);
  OUTLINED_FUNCTION_52_0(6);
  v44 = sub_1D8581908();
  OUTLINED_FUNCTION_472_0(v44, v45, v72[10]);
  OUTLINED_FUNCTION_52_0(7);
  v46 = sub_1D8581898();
  OUTLINED_FUNCTION_472_0(v46, v47, v72[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
  OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8);
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  *(v73 + v72[12]) = v75[0];
  LOBYTE(v75[0]) = 9;
  OUTLINED_FUNCTION_175_1();
  sub_1D85818E8();
  sub_1D84EB1F4(v12, v73 + v72[13]);
  LOBYTE(v75[0]) = 10;
  OUTLINED_FUNCTION_175_1();
  *(v73 + v72[14]) = sub_1D8581918() & 1;
  sub_1D847BCDC();
  OUTLINED_FUNCTION_175_1();
  sub_1D85818E8();
  memcpy(v73 + v72[15], v75, 0x70uLL);
  OUTLINED_FUNCTION_175_1();
  v48 = sub_1D85818C8();
  OUTLINED_FUNCTION_473_0(v48, v49, v72[16]);
  OUTLINED_FUNCTION_175_1();
  v50 = sub_1D85818C8();
  OUTLINED_FUNCTION_473_0(v50, v51, v72[17]);
  sub_1D84E8B94();
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  *(v73 + v72[18]) = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
  OUTLINED_FUNCTION_102_1(&unk_1EE0E0038);
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v54 + *(v52 + 76)) = v53;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v57 + *(v55 + 80)) = v56;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v60 + *(v58 + 84)) = v59;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v63 + *(v61 + 88)) = v62;
  sub_1D847387C();
  sub_1D8581958();
  *(v73 + v72[23]) = 13;
  LOBYTE(v74) = 20;
  *(v73 + v72[24]) = sub_1D8581918() & 1;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  v64 = OUTLINED_FUNCTION_105_1();
  v65(v64);
  *(v73 + v72[25]) = v74;
  OUTLINED_FUNCTION_344_1();
  sub_1D84EA648();
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1D84EB2B8();
LABEL_13:
  OUTLINED_FUNCTION_284_0();
}

GameServices::GameActivityParticipantState_optional __swiftcall GameActivityParticipantState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t GameActivityParticipantState.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_445_0(0x657469766E69);
      break;
    case 2:
      result = 0x64656E696F6ALL;
      break;
    case 3:
      result = 1952867692;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84D6418@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityParticipantState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D644C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0A50();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D6494()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0A50();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

void static GameActivityRuntimeStat.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for AchievementProgress();
  v2 = OUTLINED_FUNCTION_4_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v5 = type metadata accessor for GameActivityRuntimeStat(0);
  v6 = OUTLINED_FUNCTION_4_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DB0, &qword_1D859A9C0);
  OUTLINED_FUNCTION_363(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  v17 = v26 + *(v14 + 56) - v15;
  sub_1D84EA648();
  OUTLINED_FUNCTION_236_1();
  sub_1D84EA648();
  OUTLINED_FUNCTION_344_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_7_0();
    sub_1D84EA648();
    OUTLINED_FUNCTION_233();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_239_0();
      sub_1D84EB32C();
      OUTLINED_FUNCTION_29_1();
      sub_1D84C49BC(v18);
      OUTLINED_FUNCTION_183();
      sub_1D8581208();
      sub_1D84EB2B8();
      OUTLINED_FUNCTION_368();
      sub_1D84EB2B8();
LABEL_9:
      sub_1D84EB2B8();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_79_1();
    sub_1D84EB2B8();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    sub_1D84EA648();
    v19 = v0[1];
    v20 = v0[5];
    OUTLINED_FUNCTION_233();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = v0[4];
      v22 = *v17;
      v23 = *(v17 + 1);
      v24 = *(v17 + 4);
      v25 = *(v17 + 5);
      v30 = *v0;
      v31 = v19;
      v32 = *(v0 + 1);
      v33 = v21;
      v34 = v20;
      v26[0] = v22;
      v26[1] = v23;
      v27 = *(v17 + 1);
      v28 = v24;
      v29 = v25;
      sub_1D84BB658();
      sub_1D8581208();

      goto LABEL_9;
    }
  }

  sub_1D8436E18(v16, &qword_1ECA39DB0, &qword_1D859A9C0);
LABEL_10:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84D6828(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D6890(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_184_0();
  v6 = v3 == v5 && v4 == a2;
  if (v6 || (v7 = v3, (OUTLINED_FUNCTION_70_0() & 1) != 0))
  {

    return 0;
  }

  else if (v7 == 0x6D65766569686361 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v6)
    {
      return v10 + 1;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1D84D6934(char a1)
{
  if (a1)
  {
    return 0x6D65766569686361;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D84D6978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D6A1C()
{
  sub_1D84EB3D8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6A54()
{
  sub_1D84EB3D8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D6A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84D6890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84D6ABC()
{
  sub_1D84EB384();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6AF4()
{
  sub_1D84EB384();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D6B68()
{
  sub_1D84EB42C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6BA0()
{
  sub_1D84EB42C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityRuntimeStat.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DC0, &qword_1D859A9C8);
  OUTLINED_FUNCTION_1(v3);
  v47 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_5_0();
  v46 = type metadata accessor for AchievementProgress();
  v8 = OUTLINED_FUNCTION_4_0(v46);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DC8, &qword_1D859A9D0);
  OUTLINED_FUNCTION_1(v11);
  v45 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for GameActivityRuntimeStat(0);
  v17 = OUTLINED_FUNCTION_4_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v22 = (v21 - v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DD0, &qword_1D859A9D8);
  OUTLINED_FUNCTION_1(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_129();
  v29 = *(v2 + 24);
  v30 = *(v2 + 32);
  v31 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v31, v32);
  sub_1D84EB384();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_30_2();
  sub_1D84EA648();
  OUTLINED_FUNCTION_331_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D84EB32C();
    sub_1D84EB3D8();
    OUTLINED_FUNCTION_243_1();
    sub_1D8581988();
    OUTLINED_FUNCTION_29_1();
    sub_1D84C49BC(v33);
    sub_1D8581A58();
    v34 = *(v47 + 8);
    v35 = OUTLINED_FUNCTION_291();
    v36(v35);
    OUTLINED_FUNCTION_79_1();
    sub_1D84EB2B8();
    (*(v25 + 8))(v0, v23);
  }

  else
  {
    v38 = *v22;
    v37 = v22[1];
    v44 = v23;
    v48 = *(v22 + 1);
    v39 = v22[4];
    v40 = v22[5];
    sub_1D84EB42C();
    OUTLINED_FUNCTION_243_1();
    sub_1D8581988();
    sub_1D84EB480();
    sub_1D8581A58();
    v41 = *(v45 + 8);
    v42 = OUTLINED_FUNCTION_7_0();
    v43(v42);
    (*(v25 + 8))(v0, v44);
  }

  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityRuntimeStat.hash(into:)()
{
  OUTLINED_FUNCTION_85_1();
  v0 = type metadata accessor for AchievementProgress();
  v1 = OUTLINED_FUNCTION_4_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v4 = type metadata accessor for GameActivityRuntimeStat(0);
  v5 = OUTLINED_FUNCTION_4_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_30_2();
  sub_1D84EA648();
  OUTLINED_FUNCTION_368_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_239_0();
    sub_1D84EB32C();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_29_1();
    sub_1D84C49BC(v11);
    sub_1D85811E8();
    OUTLINED_FUNCTION_79_1();
    return sub_1D84EB2B8();
  }

  else
  {
    v14 = *v10;
    v13 = v10[1];
    v17 = *(v10 + 1);
    v16 = v10[4];
    v15 = v10[5];
    OUTLINED_FUNCTION_429();
    sub_1D84EB4D4();
    sub_1D85811E8();
  }
}

void GameActivityRuntimeStat.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DF0, &qword_1D859A9E0);
  OUTLINED_FUNCTION_1(v63);
  v61 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DF8, &qword_1D859A9E8);
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_196();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E00, &qword_1D859A9F0);
  OUTLINED_FUNCTION_1(v64);
  v62 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_200();
  v17 = type metadata accessor for GameActivityRuntimeStat(0);
  v18 = OUTLINED_FUNCTION_4_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_212_2();
  v23 = v4[3];
  v24 = v4[4];
  v25 = OUTLINED_FUNCTION_236_1();
  OUTLINED_FUNCTION_260(v25, v26);
  sub_1D84EB384();
  sub_1D8581BA8();
  if (!v1)
  {
    v60 = v17;
    v70 = v4;
    v27 = sub_1D8581968();
    sub_1D8440880(v27, 0);
    v29 = v28;
    if (v31 != v30 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v59 = *(v35 + v33);
      sub_1D84408DC(v33 + 1, v32, v29, v35, v33, v34);
      v39 = v38;
      v41 = v40;
      swift_unknownObjectRelease();
      if (v39 == v41 >> 1)
      {
        if (v59)
        {
          sub_1D84EB3D8();
          OUTLINED_FUNCTION_259_1();
          sub_1D8581878();
          type metadata accessor for AchievementProgress();
          OUTLINED_FUNCTION_29_1();
          sub_1D84C49BC(v42);
          sub_1D8581958();
          swift_unknownObjectRelease();
          v52 = *(v61 + 8);
          v53 = OUTLINED_FUNCTION_241_0();
          v54(v53);
          (*(v62 + 8))(v2, v64);
        }

        else
        {
          LOBYTE(v65) = 0;
          sub_1D84EB42C();
          OUTLINED_FUNCTION_259_1();
          sub_1D8581878();
          sub_1D84EB528();
          OUTLINED_FUNCTION_243_1();
          sub_1D8581958();
          swift_unknownObjectRelease();
          v55 = OUTLINED_FUNCTION_110_2();
          v56(v55);
          v57 = OUTLINED_FUNCTION_270_1();
          v58(v57);
          *v0 = v65;
          *(v0 + 8) = v66;
          *(v0 + 16) = v67;
          *(v0 + 32) = v68;
          *(v0 + 40) = v69;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_81_1();
        sub_1D84EB32C();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_7_0();
        sub_1D84EB32C();
        v51 = v70;
        goto LABEL_10;
      }
    }

    v43 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v45 = v60;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v47 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v43);
    (*(v48 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = OUTLINED_FUNCTION_270_1();
    v50(v49);
    v4 = v70;
  }

  v51 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_284_0();
}

uint64_t static GameActivityStaticStat.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (a1[2])
  {
    if (*(a2 + 16))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    v8 = OUTLINED_FUNCTION_151();
    v7 = sub_1D844A4B0(v8, v9, v5, v4, v10, v11);
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    return v7 & 1;
  }

  OUTLINED_FUNCTION_151();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_183();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_151();
  sub_1D84C5620();
  OUTLINED_FUNCTION_183();
  sub_1D84C5620();
  v7 = 0;
  return v7 & 1;
}

unint64_t sub_1D84D790C()
{
  result = qword_1ECA47140;
  if (!qword_1ECA47140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47140);
  }

  return result;
}

unint64_t sub_1D84D7960()
{
  result = qword_1ECA47148;
  if (!qword_1ECA47148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47148);
  }

  return result;
}

unint64_t sub_1D84D79B4()
{
  result = qword_1ECA47150;
  if (!qword_1ECA47150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47150);
  }

  return result;
}

unint64_t sub_1D84D7A08()
{
  result = qword_1ECA47158;
  if (!qword_1ECA47158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47158);
  }

  return result;
}

unint64_t sub_1D84D7A5C()
{
  result = qword_1ECA39C50;
  if (!qword_1ECA39C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39C50);
  }

  return result;
}

unint64_t sub_1D84D7AB0()
{
  result = qword_1ECA47160;
  if (!qword_1ECA47160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47160);
  }

  return result;
}

unint64_t sub_1D84D7B04()
{
  result = qword_1ECA47168;
  if (!qword_1ECA47168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47168);
  }

  return result;
}

unint64_t sub_1D84D7B58()
{
  result = qword_1ECA47170;
  if (!qword_1ECA47170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47170);
  }

  return result;
}

unint64_t sub_1D84D7BAC()
{
  result = qword_1ECA39C58;
  if (!qword_1ECA39C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39C58);
  }

  return result;
}

uint64_t sub_1D84D7C00()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1 == 0x6F6272656461656CLL && v0 == 0xEB00000000647261;
  if (v2 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    if (v1 == v5 && v4 == v0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_364();
      if (v2)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1D84D7CA4(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_1D84D7CE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 6710642 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D7D50()
{
  OUTLINED_FUNCTION_379();
  MEMORY[0x1DA7191F0](0);
  return sub_1D8581B98();
}

uint64_t sub_1D84D7D8C()
{
  sub_1D84EB5D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7DC4()
{
  sub_1D84EB5D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D7E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84D7C00();
  *a1 = result;
  return result;
}

uint64_t sub_1D84D7E2C()
{
  sub_1D84EB57C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7E64()
{
  sub_1D84EB57C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D7E9C()
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](0);
  return sub_1D8581B98();
}

uint64_t sub_1D84D7EDC()
{
  sub_1D84EB624();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7F14()
{
  sub_1D84EB624();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityStaticStat.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E10, &qword_1D859A9F8);
  v33 = OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_160();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E18, &qword_1D859AA00);
  v10 = OUTLINED_FUNCTION_1(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_250_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E20, &qword_1D859AA08);
  OUTLINED_FUNCTION_1(v36);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_200();
  v34 = *v0;
  v35 = v0[1];
  v20 = *(v0 + 16);
  v21 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EB57C();
  sub_1D8581BB8();
  if (v20)
  {
    sub_1D84EB5D0();
    OUTLINED_FUNCTION_519_0();
    v22 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v24);
    OUTLINED_FUNCTION_256_2();
    sub_1D8581A58();
    v25 = OUTLINED_FUNCTION_275();
    v27 = v33;
  }

  else
  {
    sub_1D84EB624();
    OUTLINED_FUNCTION_519_0();
    v28 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v30);
    sub_1D8581A58();
    v26 = *(v31 + 8);
    v25 = v2;
    v27 = v32;
  }

  v26(v25, v27);
  (*(v16 + 8))(v1, v20);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityStaticStat.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[2])
  {
    OUTLINED_FUNCTION_447();
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  v3 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_235_0();
  sub_1D848211C(v5);
  OUTLINED_FUNCTION_293_1();
  return sub_1D85811E8();
}

uint64_t GameActivityStaticStat.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1D8581B58();
  if (v3)
  {
    MEMORY[0x1DA7191F0](1);
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
  }

  v4 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_231();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_525_0();
  return sub_1D8581B98();
}

void GameActivityStaticStat.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v64 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E30, &qword_1D859AA10);
  OUTLINED_FUNCTION_1(v5);
  v62 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_200();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E38, &qword_1D859AA18);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_160();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E40, &unk_1D859AA20);
  OUTLINED_FUNCTION_1(v14);
  v63 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_128();
  v19 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84EB57C();
  sub_1D8581BA8();
  if (!v0)
  {
    v61 = v1;
    v67 = v3;
    v20 = sub_1D8581968();
    sub_1D8440880(v20, 0);
    v22 = v21;
    if (v24 != v23 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v31 = *(v28 + v26);
      sub_1D84408DC(v26 + 1, v25, v22, v28, v26, v27);
      v33 = v32;
      v35 = v34;
      swift_unknownObjectRelease();
      if (v33 == v35 >> 1)
      {
        if (v31)
        {
          LOBYTE(v65) = 1;
          sub_1D84EB5D0();
          OUTLINED_FUNCTION_263_1();
          sub_1D8581878();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C60, &unk_1D859A7E0);
          OUTLINED_FUNCTION_3();
          sub_1D848211C(v45);
          sub_1D8581958();
          swift_unknownObjectRelease();
          v49 = *(v62 + 8);
          v50 = OUTLINED_FUNCTION_331_1();
          v51(v50);
          v52 = *(v63 + 8);
          v53 = OUTLINED_FUNCTION_241_0();
          v54(v53);
          v55 = v65;
          v56 = v66;
          v57 = v64;
        }

        else
        {
          v57 = v64;
          LOBYTE(v65) = 0;
          sub_1D84EB624();
          OUTLINED_FUNCTION_263_1();
          sub_1D8581878();
          v46 = OUTLINED_FUNCTION_151();
          __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
          OUTLINED_FUNCTION_3();
          sub_1D848211C(v48);
          sub_1D8581958();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_375_0();
          v58(v61, v10);
          v59 = OUTLINED_FUNCTION_166_1();
          v60(v59);
          v55 = v65;
          v56 = v66;
        }

        *v57 = v55;
        *(v57 + 8) = v56;
        *(v57 + 16) = v31;
        v44 = v67;
        goto LABEL_10;
      }
    }

    v36 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v38 = &type metadata for GameActivityStaticStat;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v40 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v36);
    (*(v41 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = OUTLINED_FUNCTION_166_1();
    v43(v42);
    v3 = v67;
  }

  v44 = v3;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84D8950()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  GameActivityStaticStat.hash(into:)();
  return sub_1D8581B98();
}

GameServices::GameActivityState_optional __swiftcall GameActivityState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t GameActivityState.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = 0x657669746361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_379_0();
      break;
    case 4:
      result = 0x6465646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84D8A68@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D8A9C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F09FC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D8AE4()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F09FC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t sub_1D84D8C08(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE800000000000000;
    v7 = 0x6465766965636572;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE700000000000000;
        v7 = 0x676E69646E6570;
        break;
      case 2:
        v7 = 0x65726576696C6564;
        goto LABEL_7;
      case 3:
        v7 = 0x65737365636F7270;
LABEL_7:
        v6 = 0xE900000000000064;
        break;
      default:
        break;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6465766965636572;
    switch(a1)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x676E69646E6570;
        break;
      case 2:
        v9 = 0x65726576696C6564;
        goto LABEL_12;
      case 3:
        v9 = 0x65737365636F7270;
LABEL_12:
        v8 = 0xE900000000000064;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_1D8581AB8();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t GameActivityInstance.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t GameActivityInstance.partyCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.creationDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 36);
  v2 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_394_0();

  return v6(v5);
}

uint64_t GameActivityInstance.creationDate.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance(v2) + 36);
  v4 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t GameActivityInstance.creationDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 36);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.startDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 40));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.startDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 40);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 40);
  return OUTLINED_FUNCTION_106();
}

uint64_t sub_1D84D90C8()
{
  OUTLINED_FUNCTION_393_0();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t GameActivityInstance.lastResumeDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 44));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.lastResumeDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 44);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.lastResumeDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 44);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 48));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 48);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 48);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for GameActivityInstance(0) + 52));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t GameActivityInstance.duration.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  result = type metadata accessor for GameActivityInstance(v3);
  v5 = (v1 + *(result + 52));
  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t GameActivityInstance.duration.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 52);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.shortGroupID.getter()
{
  v0 = type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 56));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.shortGroupID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.shortGroupID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 56);
  return OUTLINED_FUNCTION_106();
}

void sub_1D84D93C8()
{
  OUTLINED_FUNCTION_285();
  LODWORD(v222) = v4;
  v226 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v10);
  v221 = sub_1D8580C68();
  v11 = OUTLINED_FUNCTION_1(v221);
  v219 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v16);
  v17 = sub_1D8580D78();
  v18 = OUTLINED_FUNCTION_1(v17);
  v224 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v22 = sub_1D8580B88();
  v23 = OUTLINED_FUNCTION_1(v22);
  v223 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v206 - v28;
  v31 = *(v1 + 16);
  v30 = *(v1 + 24);
  v229 = v31;
  v230 = v30;
  Ref<A>.game.getter(&v227);
  if (!v2)
  {
    v231 = v17;
    v40 = v228;
    v229 = v227;
    v230 = v228;
    Ref<A>.bundleID.getter(v32, v33, v34, v35, v36, v37, v38, v39, v206, v207, v208, v209, v210, v3, v22, v29, v0, v30, v31, v1, v218, v219);
    v42 = v41;
    v44 = v43;

    v45 = OUTLINED_FUNCTION_422_0();
    v46 = v217;
    v47 = (v217 + *(v45 + 72));
    v49 = *v47;
    v48 = v47[1];
    v229 = v49;
    v230 = v48;
    Ref<A>.internalID.getter(v45, v50, v51, v52, v53, v54, v55, v56);
    v58 = v57;
    v59 = v216;
    v60 = v215;
    v229 = v216;
    v230 = v215;
    Ref<A>.language.getter(v57, v61, v62, v63, v64, v65, v66, v67, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
    v229 = v59;
    v230 = v60;
    Ref<A>.id.getter(v68, v69, v70, v71, v72, v73, v74, v75, v206, v207, v68, v69, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
    v210 = 0;
    OUTLINED_FUNCTION_343_1();
    v207 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D859A760;
    v77 = sub_1D8577980();
    v79 = *v77;
    v78 = v77[1];
    *(inited + 32) = v79;
    *(inited + 40) = v78;
    *(inited + 48) = &v229;
    *(inited + 56) = v59;

    v80 = sub_1D85779BC();
    v82 = *v80;
    v81 = v80[1];
    *(inited + 64) = v82;
    *(inited + 72) = v81;
    *(inited + 80) = v42;
    *(inited + 88) = v44;

    v83 = sub_1D85779F8();
    v85 = *v83;
    v84 = v83[1];
    *(inited + 96) = v85;
    *(inited + 104) = v84;
    v86 = v209;
    *(inited + 112) = v208;
    *(inited + 120) = v86;

    v87 = sub_1D85811B8();
    v88 = v222;
    if ((v222 & 1) == 0)
    {

      OUTLINED_FUNCTION_478_0();
LABEL_8:
      v100 = v207;
      v101 = v46 + *(v207 + 80);
      v102 = v101[16];
      if (v102 != 255)
      {
        v212 = v87;
        v103 = *v101;
        v104 = *(v101 + 1);
        LODWORD(v209) = v102;
        OUTLINED_FUNCTION_418_0();
        if (v105)
        {
          sub_1D84C55F4();
          v106 = sub_1D85779A8();
          OUTLINED_FUNCTION_446_0(v106);
          v107 = sub_1D8577A20();
          v109 = *v107;
          v108 = v107[1];
          v229 = v109;
          v230 = v108;

          v110 = sub_1D8577A0C();
          v111 = *v110;
          v112 = v110[1];

          v113 = OUTLINED_FUNCTION_166();
          MEMORY[0x1DA718990](v113);

          OUTLINED_FUNCTION_363_0();
          v114 = Ref<A>.id.getter();
        }

        else
        {
          sub_1D84C55F4();
          v116 = sub_1D85779A8();
          OUTLINED_FUNCTION_446_0(v116);
          v117 = sub_1D8577A3C();
          v119 = *v117;
          v118 = v117[1];
          v229 = v119;
          v230 = v118;

          v120 = sub_1D8577A0C();
          v111 = *v120;
          v121 = v120[1];

          v122 = OUTLINED_FUNCTION_166();
          MEMORY[0x1DA718990](v122);

          OUTLINED_FUNCTION_363_0();
          v114 = Ref<A>.id.getter();
        }

        v210 = v111;
        if (v111)
        {

          v123 = OUTLINED_FUNCTION_331_1();
          sub_1D84EB9AC(v123, v124, v209);
LABEL_50:

          goto LABEL_3;
        }

        v125 = v114;
        v126 = v115;
        v127 = OUTLINED_FUNCTION_331_1();
        sub_1D84EB9AC(v127, v128, v209);
        MEMORY[0x1DA718990](v125, v126);

        v129 = v229;
        v130 = v230;
        v131 = v212;
        swift_isUniquelyReferenced_nonNull_native();
        v229 = v131;
        sub_1D84E81D4(v129, v130, v206, v208);

        v87 = v229;
        v100 = v207;
      }

      if (v88)
      {
        v132 = sub_1D85779D0();
        v133 = *v132;
        v134 = v132[1];
        v135 = (v46 + *(v100 + 56));
        v137 = *v135;
        v136 = v135[1];

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_386_0();
        sub_1D84E81D4(v137, v136, v133, v134);

        v87 = v229;
      }

      v138 = v225;

      v140 = sub_1D84D9F80(v139);

      v141 = *(v140 + 2);
      v212 = v87;
      v209 = v140;
      if (v141)
      {
        v222 = (v58 + 32);
        v142 = (v140 + 40);
        v143 = MEMORY[0x1E69E7CC0];
        do
        {
          if (*(v87 + 16))
          {
            v144 = *(v142 - 1);
            v145 = *v142;

            v146 = sub_1D8436A4C(v144, v145);
            if (v147)
            {
              v148 = (*(v87 + 56) + 16 * v146);
              v150 = *v148;
              v149 = v148[1];

              sub_1D8580B48();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v153 = *(v143 + 16);
                OUTLINED_FUNCTION_197_1();
                v143 = sub_1D8439370(v154, v155, v156, v157);
              }

              v138 = v225;
              v152 = *(v143 + 16);
              v151 = *(v143 + 24);
              if (v152 >= v151 >> 1)
              {
                OUTLINED_FUNCTION_337_0(v151);
                OUTLINED_FUNCTION_197_1();
                v143 = sub_1D8439370(v158, v159, v160, v161);
              }

              *(v143 + 16) = v152 + 1;
              (*(v58 + 32))(v143 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v152);
              v87 = v212;
            }

            else
            {

              v138 = v225;
            }
          }

          v142 += 2;
          --v141;
        }

        while (v141);
      }

      else
      {
        v143 = MEMORY[0x1E69E7CC0];
      }

      v163 = v46[4];

      v165 = sub_1D84D9F80(v164);

      v166 = *(v165 + 2);
      v222 = v165;
      if (v166)
      {
        v167 = (v165 + 40);
        v168 = v224;
        do
        {
          if (*(v163 + 16))
          {
            v169 = *(v167 - 1);
            v170 = *v167;

            v171 = sub_1D8436A4C(v169, v170);
            if (v172)
            {
              v173 = (*(v163 + 56) + 16 * v171);
              v174 = *v173;
              v175 = v173[1];

              sub_1D8580B48();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v181 = *(v143 + 16);
                OUTLINED_FUNCTION_197_1();
                v143 = sub_1D8439370(v182, v183, v184, v185);
              }

              v177 = *(v143 + 16);
              v176 = *(v143 + 24);
              v138 = v225;
              if (v177 >= v176 >> 1)
              {
                OUTLINED_FUNCTION_337_0(v176);
                OUTLINED_FUNCTION_197_1();
                v143 = sub_1D8439370(v186, v187, v188, v189);
              }

              *(v143 + 16) = v177 + 1;
              OUTLINED_FUNCTION_490_0();
              (*(v180 + 32))(v143 + (v179 & ~v178) + *(v180 + 72) * v177);
            }

            else
            {
            }

            v168 = v224;
          }

          v167 += 2;
          --v166;
        }

        while (v166);
      }

      else
      {
        v168 = v224;
      }

      OUTLINED_FUNCTION_214_2();

      v229 = v216;
      v230 = v215;
      v190 = v211;
      v191 = v210;
      Ref<A>.partyStartURL.getter();
      v210 = v191;
      if (v191)
      {
      }

      else
      {
        v192 = v220;
        sub_1D8580BB8();
        v193 = OUTLINED_FUNCTION_508_0();
        v194 = v221;
        if (__swift_getEnumTagSinglePayload(v193, v195, v221) == 1)
        {
          (*(v168 + 8))(v190, v231);

          sub_1D8436E18(v192, &qword_1ECA39E50, &unk_1D859AA30);
          OUTLINED_FUNCTION_123();
          __swift_storeEnumTagSinglePayload(v196, v197, v198, v231);
        }

        else
        {
          v199 = v219;
          v200 = *(v219 + 32);
          v201 = v218;
          OUTLINED_FUNCTION_314_1();
          v202();
          sub_1D8580C58();
          sub_1D8580C18();
          sub_1D8580C28();
          v203 = sub_1D8580BD8();
          MEMORY[0x1DA718270](v203);
          v204 = sub_1D8580BF8();
          MEMORY[0x1DA718290](v204);
          sub_1D8580BA8();
          sub_1D8580BC8();
          v205 = *(v199 + 8);
          v205(v138, v194);
          v205(v201, v194);
          (*(v168 + 8))(v190, v231);
        }
      }

      goto LABEL_50;
    }

    v89 = v46[7];
    OUTLINED_FUNCTION_478_0();
    if (v89)
    {
      v209 = v46[6];

      v90 = sub_1D8577994();
      v92 = *v90;
      v91 = v90[1];

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_386_0();
      sub_1D84E81D4(v209, v89, v92, v91);

      v93 = sub_1D85779E4();
      v94 = v93[1];
      v209 = *v93;

      v95 = OUTLINED_FUNCTION_7_0();
      v97 = sub_1D84F1FF4(v95, v96);
      v99 = v98;

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_386_0();
      sub_1D84E81D4(v97, v99, v209, v94);

      v87 = v229;
      v88 = v222;
      goto LABEL_8;
    }

    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    *v162 = 0xD000000000000030;
    *(v162 + 8) = 0x80000001D85868E0;
    *(v162 + 16) = 0;
    swift_willThrow();
  }

LABEL_3:
  OUTLINED_FUNCTION_284_0();
}