uint64_t sub_1E605E954()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E605EAC0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[20] = v4;
    *v4 = v3;
    v4[1] = sub_1E605EC6C;
    v5 = v3[4];

    return sub_1E6134ED4();
  }
}

uint64_t sub_1E605EAD8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Unable to route tab switch: %@", v6, 0xCu);
    sub_1E5DFE50C(v7, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1E605EC6C;
  v11 = v0[4];

  return sub_1E6134ED4();
}

uint64_t sub_1E605EC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E605ED8C, v4, v3);
}

id sub_1E605ED8C()
{
  v1 = v0[8];
  v2 = v0[4];
  sub_1E605DD88();
  sub_1E60602AC(v1, type metadata accessor for RouteDestination);
  result = [*(v0[4] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v4 = result;
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[5];

    [v4 setAlpha_];

    v11 = v0[1];

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605EEA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_1E5DF650C(result + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router, v16);

  v11 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v15[0] = v9;
  v15[1] = v8;
  v12 = *v11;
  sub_1E63350F4(v15, v7);
  v13 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v13 - 8) + 48))(v7, 1, v13) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = sub_1E5DFE50C(v7, &qword_1ED072A30, &qword_1E65EEA70);
LABEL_4:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = v13;
  *(a2 + 32) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1E606030C(v7, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1E605F050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E65D9BA8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E605F110, 0, 0);
}

uint64_t sub_1E605F110()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer;
  *(v0 + 48) = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer;
  v4 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 112) = v4;
  v5 = v1 + v4;
  v6 = type metadata accessor for AppEnvironment();
  *(v0 + 56) = v6;
  v7 = v5 + *(v6 + 92) + v3;
  v8 = PrivacyPreferenceService.queryNoticePrivacyPreference.getter();
  *(v0 + 64) = v9;
  v14 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1E605F2CC;
  v12 = *(v0 + 40);

  return v14(v12);
}

uint64_t sub_1E605F2CC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E605F724;
  }

  else
  {
    v3 = sub_1E605F3E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E605F3E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  sub_1E65D9B78();
  if ((v3 & 1) != 0 && (v4 = sub_1E65D9B58(), v4 == sub_1E65D9B58()))
  {
    v5 = *(v0 + 16) + *(v0 + 48) + *(v0 + 112) + *(*(v0 + 56) + 108);
    v6 = ServiceSubscriptionService.refreshServiceSubscription.getter();
    *(v0 + 88) = v7;
    v12 = (v6 + *v6);
    v8 = v6[1];
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1E605F574;

    return v12();
  }

  else
  {
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E605F574()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E605F790;
  }

  else
  {
    v4 = sub_1E605F6A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E605F6A4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E605F724()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E605F790()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[13];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E605F80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E605F050(a1, v4, v5, v6);
}

uint64_t sub_1E605F8C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E5DEF738(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E605F910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E605F050(a1, v4, v5, v6);
}

uint64_t sub_1E605F9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E605FA38()
{
  result = qword_1ED073C70;
  if (!qword_1ED073C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C70);
  }

  return result;
}

unint64_t sub_1E605FAE0()
{
  result = qword_1ED073C78;
  if (!qword_1ED073C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C78);
  }

  return result;
}

unint64_t sub_1E605FB38()
{
  result = qword_1ED073C80;
  if (!qword_1ED073C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C80);
  }

  return result;
}

unint64_t sub_1E605FB90()
{
  result = qword_1ED073C88;
  if (!qword_1ED073C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C88);
  }

  return result;
}

unint64_t sub_1E605FBE8()
{
  result = qword_1ED073C90;
  if (!qword_1ED073C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C90);
  }

  return result;
}

unint64_t sub_1E605FC40()
{
  result = qword_1ED073C98;
  if (!qword_1ED073C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C98);
  }

  return result;
}

unint64_t sub_1E605FC98()
{
  result = qword_1ED073CA0;
  if (!qword_1ED073CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CA0);
  }

  return result;
}

unint64_t sub_1E605FCF0()
{
  result = qword_1ED073CA8;
  if (!qword_1ED073CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CA8);
  }

  return result;
}

unint64_t sub_1E605FD48()
{
  result = qword_1ED073CB0;
  if (!qword_1ED073CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CB0);
  }

  return result;
}

unint64_t sub_1E605FDA0()
{
  result = qword_1ED073CB8;
  if (!qword_1ED073CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CB8);
  }

  return result;
}

void sub_1E605FDF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E694E1F0](a1, a2, v11);
      sub_1E5DEF738(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E5DEF738(0, a5, a6);
    if (sub_1E65E67A8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1E65E67B8();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1E65E6598();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1E65E65A8();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_1E606000C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1E60600D0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 40 * result;
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E6060134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEC00000079746976)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E60602AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E606030C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6060374()
{
  result = qword_1ED078620;
  if (!qword_1ED078620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078620);
  }

  return result;
}

uint64_t sub_1E60603EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 56) = a4;
  sub_1E65E6058();
  *(v5 + 24) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6060488, v7, v6);
}

uint64_t sub_1E6060488()
{
  if (*(v0 + 56))
  {
    v1 = *(MEMORY[0x1E69CD898] + 4);
    v7 = (*MEMORY[0x1E69CD898] + MEMORY[0x1E69CD898]);
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1E6060570;
    v3 = *(v0 + 16);

    return v7(1);
  }

  else
  {
    v5 = *(v0 + 24);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E6060570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v4, v3);
}

id sub_1E6060690()
{
  v0 = objc_allocWithZone(sub_1E65E55A8());

  return [v0 init];
}

uint64_t sub_1E60606C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1E65E6058();
  v9 = a1;
  v10 = sub_1E65E6048();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  sub_1E64B80F8(0, 0, v6, &unk_1E65EEBF8, v11);
}

uint64_t sub_1E6060848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E6060938();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E60608AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E6060938();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E6060910()
{
  sub_1E6060938();
  sub_1E65E40F8();
  __break(1u);
}

unint64_t sub_1E6060938()
{
  result = qword_1ED073CC8;
  if (!qword_1ED073CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CC8);
  }

  return result;
}

uint64_t sub_1E606098C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60603EC(a1, v4, v5, v6, v7);
}

uint64_t sub_1E6060A50()
{
  v0 = sub_1E65E07B8();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0768();
  sub_1E65E0768();
  return sub_1E65E1678();
}

uint64_t sub_1E6060BC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-1] - v9;
  sub_1E5E20198(8, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD0, &qword_1E65EEC70);
  result = swift_dynamicCast();
  if (result)
  {
    v13[0] = a1;
    v13[1] = a2;
    v14 = a3;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1E6060D28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = type metadata accessor for AppStateService();
  Description = v3[-1].Description;
  v83 = v3;
  v4 = Description[8];
  MEMORY[0x1EEE9AC00](v3);
  v80 = v5;
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v73 - v8;
  v9 = type metadata accessor for AssetService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment();
  v75 = *(v15 + 28);
  v16 = *(v15 + 36);
  v91 = v16;
  v17 = sub_1E65DDCD8();
  v90 = v17;
  v97 = v18;
  v19 = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v20 = v10[2];
  v92 = (v10 + 2);
  v93 = v20;
  v21 = v14;
  v20(&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v16, v9);
  v22 = *(v10 + 80);
  v87 = v2;
  v23 = (v22 + 16) & ~v22;
  v89 = v22;
  v77 = v9;
  v78 = v11 + 7;
  v24 = (v11 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v10[4];
  v88 = (v10 + 4);
  v79 = v26;
  v26(v25 + v23, v12, v9);
  v27 = (v25 + v24);
  v28 = v97;
  *v27 = v17;
  v27[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD0, &qword_1E65EEC70);
  v76 = v12;
  v30 = v29;
  v31 = *(v29 + 48);
  v32 = *(v29 + 52);
  swift_allocObject();

  v33 = sub_1E65E4E68();
  KeyPath = v33;
  v34 = v94;
  v94[3] = v30;
  v34[4] = &off_1F5FAA810;
  *v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E65EA8E0;
  v84 = sub_1E65E60A8();
  v35 = *(v84 - 8);
  v86 = *(v35 + 56);
  v36 = v35 + 56;
  v37 = v95;
  v86(v95, 1, 1, v84);
  v73 = v36;
  v38 = Description;
  v39 = Description[2];
  v74 = v21;
  v40 = v81;
  v41 = v83;
  v39(v81, v21 + v75, v83);
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = (v80 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  (v38[4])(v44 + v42, v40, v41);
  *(v44 + v43) = v87;
  *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = KeyPath;
  swift_retain_n();

  v45 = sub_1E6059EAC(0, 0, v37, &unk_1E65EEC80, v44);
  v47 = v85;
  v46 = v86;
  *(v85 + 32) = v45;
  v48 = v37;
  v49 = v84;
  v46(v48, 1, 1, v84);
  v50 = v76;
  v51 = v77;
  v93(v76, v21 + v91, v77);
  v52 = (v89 + 32) & ~v89;
  v53 = (v78 + v52) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v56 = v79;
  v79(v55 + v52, v50, v51);
  v57 = (v55 + v53);
  v59 = KeyPath;
  v58 = v97;
  *v57 = v90;
  v57[1] = v58;
  *(v55 + v54) = v59;

  v60 = v95;
  *(v47 + 40) = sub_1E6059EAC(0, 0, v95, &unk_1E65EEC90, v55);
  v61 = v49;
  v62 = v86;
  v86(v60, 1, 1, v61);
  v93(v50, v74 + v91, v51);
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  v56(v63 + v52, v50, v51);
  v64 = (v63 + v53);
  v65 = KeyPath;
  v66 = v97;
  *v64 = v90;
  v64[1] = v66;
  *(v63 + v54) = v65;
  v67 = v65;

  v68 = sub_1E6059EAC(0, 0, v60, &unk_1E65EECA0, v63);
  v69 = v84;
  v70 = v85;
  *(v85 + 48) = v68;
  v94[5] = v70;
  v62(v60, 1, 1, v69);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v87;
  v71[5] = v67;

  sub_1E6059EAC(0, 0, v60, &unk_1E65EECB0, v71);
}

uint64_t sub_1E6061454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  v7 = sub_1E65D7B58();
  *(v5 + 112) = v7;
  v8 = *(v7 - 8);
  *(v5 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0) - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = *a2;
  *(v5 + 74) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6061570, 0, 0);
}

uint64_t sub_1E6061570()
{
  if (*(v0 + 74))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
    v3 = *(v0 + 128);
    v4 = sub_1E65DE4C8();
    sub_1E6001C44();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699CAA0], v4);
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 88);

    v11 = AssetService.queryWorkoutAssetBundles.getter();
    *(v0 + 168) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = v9;
    v14 = inited + 32;
    *(inited + 40) = v8;
    v15 = sub_1E5F9B6E4(inited);
    *(v0 + 176) = v15;
    swift_setDeallocating();
    sub_1E6065BF0(v14);
    v18 = (v11 + *v11);
    v16 = v11[1];
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = sub_1E60617B8;

    return v18(v15);
  }
}

uint64_t sub_1E60617B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_1E6061B90;
  }

  else
  {
    v8 = v4[21];
    v9 = v4[22];

    v4[25] = a1;
    v7 = sub_1E60618F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60618F0()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = sub_1E6065EBC(v1, v8, v7);

  sub_1E6059C5C(v9, v3);

  sub_1E6066264(v3, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v10 = *(v0 + 136);
    sub_1E60662D4(*(v0 + 144));
    sub_1E60662D4(v10);
LABEL_6:
    v14 = 0;
    v12 = 1;
    goto LABEL_7;
  }

  (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  *(v0 + 64) = sub_1E65D7B28();
  *(v0 + 72) = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v12 = 0;
  v13 = *(v0 + 73);
  v14 = 0x100000000;
  if (v13 <= 9)
  {
    if (((1 << v13) & 0x29E) != 0)
    {
      v15 = *(v0 + 144);
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v18 = *(v0 + 112);
      v19 = sub_1E65DE4C8();
      sub_1E6001C44();
      v20 = swift_allocError();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E699CAA8], v19);
      swift_willThrow();
      (*(v17 + 8))(v16, v18);
      sub_1E60662D4(v15);

      goto LABEL_6;
    }

    if (((1 << v13) & 0x140) != 0)
    {
      v14 = 0;
LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }

    if (v13 == 5)
    {
      v14 = 1;
      goto LABEL_14;
    }
  }

LABEL_15:
  v28 = *(v0 + 144);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_1E60662D4(v28);
LABEL_7:
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 80);
  *v25 = v14;
  *(v25 + 4) = BYTE4(v14);
  *(v25 + 5) = v12;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1E6061B90()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];

  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[10];
  *v7 = 0;
  *(v7 + 4) = 256;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6061C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6061D6C, 0, 0);
}

uint64_t sub_1E6061D6C()
{
  v1 = v0[2];
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[11] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6061E68;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6061E68()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6061F80, 0, 0);
}

uint64_t sub_1E6061F80()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E606205C;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v8);
}

uint64_t sub_1E606205C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6062158, 0, 0);
}

uint64_t sub_1E6062158()
{
  if (*(v0 + 128) == 1)
  {
    v1 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1E6062258;
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_1E6062464(v5);
  }
}

uint64_t sub_1E6062258()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60623DC, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x1E69E8678] + 4);
    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_1E606205C;
    v6 = v3[10];
    v7 = v3[8];

    return MEMORY[0x1EEE6D9C8](v3 + 16, 0, 0, v7);
  }
}

uint64_t sub_1E60623DC()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1E6062464(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_1E65D7B58();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E60625D0, 0, 0);
}

uint64_t sub_1E60625D0()
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v3 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v4 = v1 + *(type metadata accessor for AppEnvironment() + 36) + v3;
  v5 = AssetService.queryAllAssetBundles.getter();
  v0[19] = v6;
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1E6062798;
  v9 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E6062798(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = sub_1E60634B8;
  }

  else
  {
    v6 = v3[19];

    v5 = sub_1E60628E8;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60628E8(uint64_t a1)
{
  v84 = v1;
  v2 = v1;
  v83 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 168);
  v4 = *(v3 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = v3;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_49;
  }

  while (2)
  {
    v74 = &v74;
    v75 = v5;
    v5 = *(v2 + 120);
    MEMORY[0x1EEE9AC00](a1);
    v76 = &v74 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v76, v7);
    v77 = 0;
    v8 = 0;
    v9 = v6 + 56;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v80 = v5 + 16;
    v81 = v5;
    v79 = (v5 + 8);
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v82 = (v12 - 1) & v12;
LABEL_12:
      v17 = v14 | (v8 << 6);
      v18 = *(v2 + 144);
      v19 = *(v2 + 112);
      v5 = v6;
      v20 = *(v6 + 48);
      v21 = *(v81 + 72);
      v78 = v17;
      (*(v81 + 16))(v18, v20 + v21 * v17, v19);
      v22 = sub_1E65D7B48();
      v24 = v23;
      v26 = sub_1E65DDCD8();
      v27 = v22;
      v3 = *(v2 + 144);
      v28 = v2;
      v29 = *(v2 + 112);
      if (v27 == v26 && v24 == v25)
      {

        (*v79)(v3, v29);
        v2 = v28;
        v6 = v5;
        v12 = v82;
LABEL_19:
        *&v76[(v78 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v78;
        if (__OFADD__(v77++, 1))
        {
          __break(1u);
LABEL_22:
          v33 = sub_1E608850C(v76, v75, v77, *(v2 + 168));
          goto LABEL_23;
        }
      }

      else
      {
        v31 = sub_1E65E6C18();

        (*v79)(v3, v29);
        v2 = v28;
        v6 = v5;
        v12 = v82;
        if (v31)
        {
          goto LABEL_19;
        }
      }
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
        goto LABEL_22;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v82 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_49:

    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = *(v2 + 168);

      v6 = *(v2 + 168);
      continue;
    }

    break;
  }

  v68 = *(v2 + 168);
  v67 = *(v2 + 176);
  v69 = v2;
  v70 = swift_slowAlloc();
  v71 = v67;
  v72 = sub_1E6065B38(v70, v5, v68, sub_1E6064D18, 0);

  result = MEMORY[0x1E694F1C0](v70, -1, -1);
  if (v71)
  {
    v73 = *MEMORY[0x1E69E9840];
    return result;
  }

  v33 = v72;
  v2 = v69;
LABEL_23:
  *(v2 + 184) = v33;
  v34 = *(v2 + 120);
  v35 = *(v33 + 32);
  *(v2 + 34) = v35;
  v36 = -1;
  v37 = -1 << v35;
  if (-(-1 << v35) < 64)
  {
    v36 = ~(-1 << -(-1 << v35));
  }

  v38 = v36 & *(v33 + 56);
  if (!v38)
  {
    v40 = 0;
    v41 = ((63 - v37) >> 6) - 1;
    while (v41 != v40)
    {
      v39 = v40 + 1;
      v38 = *(v33 + 8 * v40++ + 64);
      if (v38)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_37;
  }

  v39 = 0;
LABEL_30:
  *(v2 + 192) = v38;
  *(v2 + 200) = v39;
  v42 = *(v2 + 128);
  v43 = *(v2 + 136);
  v44 = *(v2 + 112);
  (*(v34 + 16))(v43, *(v33 + 48) + *(v34 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v44);
  (*(v34 + 32))(v42, v43, v44);
  *(v2 + 40) = sub_1E65D7B28();
  *(v2 + 48) = v45 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v46 = *(v2 + 33);
  if (v46 > 4)
  {
    if (*(v2 + 33) <= 6u)
    {
      if (v46 == 5)
      {
        v59 = xmmword_1E65EEC10;
        goto LABEL_45;
      }
    }

    else
    {
      if (v46 == 7)
      {
LABEL_32:
        v47 = *(v2 + 184);
        v49 = *(v2 + 120);
        v48 = *(v2 + 128);
        v50 = *(v2 + 112);

        (*(v49 + 8))(v48, v50);
LABEL_38:
        v53 = *(v2 + 136);
        v52 = *(v2 + 144);
        v54 = *(v2 + 128);
        v55 = *(v2 + 104);

        v56 = *(v2 + 8);
        v57 = *MEMORY[0x1E69E9840];

        return v56();
      }

      if (v46 != 8)
      {
        v51 = *(v2 + 184);
        (*(*(v2 + 120) + 8))(*(v2 + 128), *(v2 + 112));
LABEL_37:

        goto LABEL_38;
      }
    }

    v59 = xmmword_1E65EEC20;
    goto LABEL_45;
  }

  if (v46 - 1 < 4)
  {
    goto LABEL_32;
  }

  v59 = xmmword_1E65EEC30;
LABEL_45:
  *(v2 + 208) = v59;
  v60 = *(v2 + 128);
  v61 = sub_1E65D7B38();
  *(v2 + 224) = v62;
  *(v2 + 16) = v61;
  *(v2 + 24) = v62;
  *(v2 + 32) = 0;
  *(v2 + 232) = sub_1E65E6058();
  *(v2 + 240) = sub_1E65E6048();
  v63 = sub_1E65E5FC8();
  v65 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6062F54, v63, v64);
}

uint64_t sub_1E6062F54()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[13];
  v4 = v0[9];

  sub_1E65E4E98();

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6063010, 0, 0);
}

uint64_t sub_1E6063010()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 232);
  *(v0 + 56) = *(v0 + 208) | *(v0 + 216);
  *(v0 + 64) = 0;
  *(v0 + 248) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E60630E0, v2, v3);
}

uint64_t sub_1E60630E0()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[31];
  v2 = v0[13];
  v3 = v0[11];

  sub_1E65E4E38();
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6063190, 0, 0);
}

uint64_t sub_1E6063190()
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 200);
  v5 = (*(v0 + 192) - 1) & *(v0 + 192);
  if (!v5)
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      v6 = *(v0 + 184);
      if (v7 >= (((1 << *(v0 + 34)) + 63) >> 6))
      {
        goto LABEL_14;
      }

      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }
  }

  v6 = *(v0 + 184);
LABEL_7:
  *(v0 + 192) = v5;
  *(v0 + 200) = v4;
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  (*(v11 + 16))(v9, *(v6 + 48) + *(v11 + 72) * (__clz(__rbit64(v5)) | (v4 << 6)), v10);
  (*(v11 + 32))(v8, v9, v10);
  *(v0 + 40) = sub_1E65D7B28();
  *(v0 + 48) = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v13 = *(v0 + 33);
  if (v13 > 4)
  {
    if (*(v0 + 33) <= 6u)
    {
      if (v13 == 5)
      {
        v26 = xmmword_1E65EEC10;
        goto LABEL_22;
      }
    }

    else
    {
      if (v13 == 7)
      {
        goto LABEL_9;
      }

      if (v13 != 8)
      {
        v18 = *(v0 + 184);
        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
LABEL_14:

        goto LABEL_15;
      }
    }

    v26 = xmmword_1E65EEC20;
    goto LABEL_22;
  }

  if (v13 - 1 < 4)
  {
LABEL_9:
    v14 = *(v0 + 184);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);

    (*(v16 + 8))(v15, v17);
LABEL_15:
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 128);
    v22 = *(v0 + 104);

    v23 = *(v0 + 8);
    v24 = *MEMORY[0x1E69E9840];

    return v23();
  }

  v26 = xmmword_1E65EEC30;
LABEL_22:
  *(v0 + 208) = v26;
  v27 = *(v0 + 128);
  v28 = sub_1E65D7B38();
  *(v0 + 224) = v29;
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  *(v0 + 32) = 0;
  *(v0 + 232) = sub_1E65E6058();
  *(v0 + 240) = sub_1E65E6048();
  v30 = sub_1E65E5FC8();
  v32 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6062F54, v30, v31);
}

uint64_t sub_1E60634B8()
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];

  v6 = v0[1];
  v7 = v0[22];
  v8 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1E6063580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_1E65D9098();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D08, &qword_1E65EECE8);
  v7[20] = v15;
  v16 = *(v15 - 8);
  v7[21] = v16;
  v17 = *(v16 + 64) + 15;
  v7[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D10, &qword_1E65EECF0);
  v7[23] = v18;
  v19 = *(v18 - 8);
  v7[24] = v19;
  v20 = *(v19 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60637B4, 0, 0);
}

uint64_t sub_1E60637B4()
{
  v1 = v0[9];
  v2 = AssetService.makeAssetBundleProgressUpdatedStream.getter();
  v0[26] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1E60638B0;
  v6 = v0[22];

  return v8(v6);
}

uint64_t sub_1E60638B0()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1E6064114;
  }

  else
  {
    v4 = sub_1E60639E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60639E0()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1E6063ABC;
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[19];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6063ABC()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6063BB8, 0, 0);
}

uint64_t sub_1E6063BB8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v7 = *(v0 + 8);

    return v7();
  }

  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  (*(v3 + 32))(*(v0 + 144), v1, v2);
  if (sub_1E65D9078() == v10 && v11 == v9)
  {
  }

  else
  {
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = sub_1E65E6C18();

    if ((v15 & 1) == 0)
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      v16 = *(v0 + 152);
      goto LABEL_2;
    }
  }

  v17 = *(v0 + 144);
  v18 = sub_1E65D9068();
  *(v0 + 240) = v19;
  *(v0 + 16) = v18;
  *(v0 + 24) = v19;
  *(v0 + 32) = 0;
  *(v0 + 248) = sub_1E65E6058();
  *(v0 + 256) = sub_1E65E6048();
  v21 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6063DAC, v21, v20);
}

uint64_t sub_1E6063DAC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[15];
  v4 = v0[12];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6063E3C, 0, 0);
}

uint64_t sub_1E6063E3C()
{
  v1 = *(v0 + 144);
  sub_1E65D9088();
  v2 = *(v0 + 248);
  if (v3 >= 1.0)
  {
    *(v0 + 56) = 0x10000000001;
    *(v0 + 64) = 0;
    *(v0 + 264) = sub_1E65E6048();
    v6 = sub_1E65E5FC8();
    v8 = v10;
    v9 = sub_1E6063F38;
  }

  else
  {
    v4 = *(v0 + 144);
    sub_1E65D9088();
    *(v0 + 40) = v5;
    *(v0 + 48) = 0;
    *(v0 + 272) = sub_1E65E6048();
    v6 = sub_1E65E5FC8();
    v8 = v7;
    v9 = sub_1E6063FB4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E6063F38()
{
  v1 = v0[33];
  v2 = v0[15];
  v3 = v0[13];

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6066340, 0, 0);
}

uint64_t sub_1E6063FB4()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[13];

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6064030, 0, 0);
}

uint64_t sub_1E6064030()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1E6063ABC;
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[19];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v7);
}

uint64_t sub_1E6064114()
{
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_1E60641AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_1E65D7B58();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v7[20] = v15;
  v16 = *(v15 - 8);
  v7[21] = v16;
  v17 = *(v16 + 64) + 15;
  v7[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF8, &qword_1E65EECE0);
  v7[23] = v18;
  v19 = *(v18 - 8);
  v7[24] = v19;
  v20 = *(v19 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60643E0, 0, 0);
}

uint64_t sub_1E60643E0()
{
  v1 = v0[9];
  v2 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[26] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1E60644DC;
  v6 = v0[22];

  return v8(v6);
}

uint64_t sub_1E60644DC()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1E606633C;
  }

  else
  {
    v4 = sub_1E606460C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E606460C()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1E60646E8;
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[19];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E60646E8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E60647E4, 0, 0);
}

uint64_t sub_1E60647E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_13:
    v17 = *(v0 + 200);
    v18 = *(v0 + 176);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v21 = *(v0 + 120);

    v22 = *(v0 + 8);

    return v22();
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  (*(v3 + 32))(*(v0 + 144), v1, v2);
  if (sub_1E65D7B48() == v5 && v6 == v4)
  {
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = sub_1E65E6C18();

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = *(v0 + 144);
  *(v0 + 40) = sub_1E65D7B28();
  *(v0 + 48) = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v13 = *(v0 + 33);
  if (v13 > 4)
  {
    if (*(v0 + 33) <= 6u)
    {
      if (v13 == 5)
      {
        v24 = xmmword_1E65EEC10;
        goto LABEL_23;
      }
    }

    else if (v13 != 8)
    {
      goto LABEL_12;
    }

    v24 = xmmword_1E65EEC20;
    goto LABEL_23;
  }

  if (v13 - 1 < 4)
  {
LABEL_12:
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    (*(v15 + 8))(v14, v16);
    goto LABEL_13;
  }

  v24 = xmmword_1E65EEC30;
LABEL_23:
  *(v0 + 240) = v24;
  v25 = *(v0 + 144);
  v26 = sub_1E65D7B38();
  *(v0 + 256) = v27;
  *(v0 + 16) = v26;
  *(v0 + 24) = v27;
  *(v0 + 32) = 0;
  *(v0 + 264) = sub_1E65E6058();
  *(v0 + 272) = sub_1E65E6048();
  v29 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6064A8C, v29, v28);
}

uint64_t sub_1E6064A8C()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[15];
  v4 = v0[12];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6064B1C, 0, 0);
}

uint64_t sub_1E6064B1C()
{
  v1 = *(v0 + 264);
  *(v0 + 56) = *(v0 + 240) | *(v0 + 248);
  *(v0 + 64) = 0;
  *(v0 + 280) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6064BB8, v3, v2);
}

uint64_t sub_1E6064BB8()
{
  v1 = v0[35];
  v2 = v0[15];
  v3 = v0[13];

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6064C34, 0, 0);
}

uint64_t sub_1E6064C34()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1E60646E8;
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[19];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v7);
}

uint64_t sub_1E6064D18()
{
  v0 = sub_1E65D7B48();
  v2 = v1;
  if (v0 == sub_1E65DDCD8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6064DA4(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for AssetService()[-1].Description;
  v7 = (*(Description + 80) + 16) & ~*(Description + 80);
  v8 = (v2 + ((Description[8] + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6061454(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1E6064EC8(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6061C34(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1E6065000(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = (Description[8] + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E6063580(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for AssetService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  v4 = (Description[8] + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (Description[1])(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E6065238(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = (Description[8] + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E60641AC(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1E606537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6062464(a5);
}

uint64_t sub_1E6065418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E606537C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E60655D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v9 = *(*(v42 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v42);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v11 + 16;
  v38 = v11;
  v35 = 0;
  v36 = (v11 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      return (*v36)(v24, v23);
    }

    v29 = v27;
    result = (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        return v33(v34, v32, v35, v31);
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6065840(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v26 = a2;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v5 = *(*(v34 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v34);
  v32 = &v26 - v8;
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 56);
  v28 = 0;
  v29 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v32;
    v18 = v33;
    v20 = v15 | (v9 << 6);
    v21 = v34;
    (*(v33 + 16))(v32, *(v36 + 48) + *(v33 + 72) * v20, v34);
    v22 = v38;
    v23 = v35(v19);
    result = (*(v18 + 8))(v19, v21);
    v38 = v22;
    if (v22)
    {
      return result;
    }

    v13 = v37;
    if (v23)
    {
      *(v27 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v25 = v36;

        return sub_1E608A040(v27, v26, v28, v25);
      }
    }
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
      goto LABEL_16;
    }

    v17 = *(v29 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E6065A94(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1E6065C44(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1E6065B38(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1E60655D8(result, a2, a3, a4, a5, MEMORY[0x1E69CB020], sub_1E608850C);

    return v10;
  }

  return result;
}

uint64_t sub_1E6065C44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v36 = a5;
  v37 = a4;
  v30 = a1;
  v6 = sub_1E65D7B58();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v34 = v9;
  v35 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v33 = v9 + 16;
  v31 = 0;
  v32 = (v9 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v24 = v21 | (v12 << 6);
    (*(v34 + 16))(v11, *(v35 + 48) + *(v34 + 72) * v24, v6);
    if (sub_1E65D7B48() == v37 && v25 == v36)
    {

      result = (*v32)(v11, v6);
      goto LABEL_15;
    }

    v20 = sub_1E65E6C18();

    result = (*v32)(v11, v6);
    if (v20)
    {
LABEL_15:
      *(v30 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_18:
        v27 = v35;

        return sub_1E608850C(v30, v29, v31, v27);
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_18;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6065EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v39 = sub_1E65D7B58();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;
  v37 = a3;

  if (v11 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v30 = v12;
    v31 = v4;
    v29 = &v29;
    MEMORY[0x1EEE9AC00](v14);
    v32 = &v29 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v13);
    v15 = 0;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v12 = v17 & *(a1 + 56);
    v4 = (v16 + 63) >> 6;
    v35 = v7 + 16;
    v36 = v7;
    v33 = 0;
    v34 = (v7 + 8);
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_13:
      v21 = v18 | (v15 << 6);
      v7 = a1;
      (*(v36 + 16))(v10, *(a1 + 48) + *(v36 + 72) * v21, v39);
      if (sub_1E65D7B48() == v38 && v22 == v37)
      {

        (*v34)(v10, v39);
        goto LABEL_16;
      }

      v13 = sub_1E65E6C18();

      (*v34)(v10, v39);
      if (v13)
      {
LABEL_16:
        *&v32[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_19:
          v24 = sub_1E608850C(v32, v30, v33, a1);

          goto LABEL_20;
        }
      }
    }

    v19 = v15;
    while (1)
    {
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v15 >= v4)
      {
        goto LABEL_19;
      }

      v20 = *(a1 + 56 + 8 * v15);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = v37;

  v24 = sub_1E6065A94(v27, v12, a1, v38, v28);

  MEMORY[0x1E694F1C0](v27, -1, -1);

LABEL_20:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t sub_1E6066264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60662D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6066344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v30 = v1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E601C224(0, v7, 0);
  v8 = v38;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v12 = result;
  v13 = 0;
  v31 = a1 + 64;
  v32 = v7;
  v33 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v36 = v13;
    v37 = v16;
    v17 = *(a1 + 48);
    v18 = sub_1E65D9D28();
    (*(*(v18 - 8) + 16))(&v6[*(v35 + 48)], v17 + *(*(v18 - 8) + 72) * v12, v18);
    *v6 = sub_1E65D9D08();
    *(v6 + 1) = v19;
    v6[16] = v20 & 1;
    v38 = v8;
    v22 = *(v8 + 16);
    v21 = *(v8 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1E601C224(v21 > 1, v22 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v22 + 1;
    result = sub_1E60697E0(v6, v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v9 = v33;
    v23 = *(v33 + 8 * v15);
    if ((v23 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v12 & 0x3F));
    if (v24)
    {
      v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v15 << 6;
      v26 = v15 + 1;
      v27 = (v31 + 8 * v15);
      while (v26 < (v14 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1E5F87098(v12, v37, 0);
          v14 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v12, v37, 0);
    }

LABEL_4:
    v13 = v36 + 1;
    v12 = v14;
    if (v36 + 1 == v32)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6066654()
{
  result = sub_1E65E5C48();
  qword_1ED096290 = result;
  return result;
}

uint64_t sub_1E606668C()
{
  result = sub_1E65E5C48();
  qword_1ED096298 = result;
  return result;
}

uint64_t sub_1E60666C4()
{
  result = sub_1E65E5C48();
  qword_1ED0962A0 = result;
  return result;
}

uint64_t sub_1E60666FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DF650C(a7, v24);
  sub_1E65E6058();

  v19 = sub_1E65E6048();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  sub_1E5DF599C(v24, v20 + 64);
  *(v20 + 104) = a1;
  *(v20 + 112) = a2;
  sub_1E64B80F8(0, 0, v17, &unk_1E65EED08, v20);
}

uint64_t sub_1E6066884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = v17;
  *(v8 + 40) = v18;
  *(v8 + 104) = a7;
  *(v8 + 16) = a6;
  *(v8 + 24) = a8;
  v10 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  *(v8 + 48) = swift_task_alloc();
  v11 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = sub_1E65E6058();
  *(v8 + 72) = sub_1E65E6048();
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  *(v8 + 80) = v13;
  *v13 = v8;
  v13[1] = sub_1E6066A00;

  return v15();
}

uint64_t sub_1E6066A00(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;
  v5[11] = v1;

  v8 = v5[9];
  v9 = v5[8];
  if (v3)
  {
    v10 = sub_1E65E5FC8();
    v12 = v11;
    v13 = sub_1E6066F0C;
  }

  else
  {
    v5[12] = a1;
    v10 = sub_1E65E5FC8();
    v12 = v14;
    v13 = sub_1E6066B80;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_1E6066B80()
{
  v27 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = sub_1E6066344(v1);

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D20, &qword_1E65EED10);
    v5 = sub_1E65E6A28();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v26[0] = v5;
  sub_1E60690A0(v4, 1, v26);
  if (v2)
  {

    return swift_unexpectedError();
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 104);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = v26[0];
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    v14 = sub_1E6403C6C(sub_1E6069534, v13, &unk_1F5FA8338);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E65EA660;
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    sub_1E65D77A8();
    sub_1E65E5D48();
    if (qword_1ED071930 != -1)
    {
      swift_once();
    }

    v18 = qword_1ED0962A0;
    if (v14 >> 62)
    {
      sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
      v25 = v18;

      sub_1E65E69E8();
    }

    else
    {
      v19 = qword_1ED0962A0;

      sub_1E65E6C38();
      sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
    }

    v21 = *(v0 + 32);
    v20 = *(v0 + 40);

    sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);
    *(v15 + 32) = sub_1E65E64E8();
    v21(v15);

    v23 = *(v0 + 48);
    v22 = *(v0 + 56);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1E6066F0C()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];

  v4(MEMORY[0x1E69E7CC0]);

  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6066FA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v13 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 104);
  v9 = *(v1 + 112);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6066884(a1, v13, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_1E6067098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v45 = a5;
  v42 = a4;
  LODWORD(v41) = a3;
  v44 = sub_1E65D9D28();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v37 - v13;
  v15 = *a1;
  v48 = *a1;
  sub_1E6069558();
  sub_1E65D8008();
  v16 = v46;
  v17 = v47;
  if (!*(a2 + 16))
  {
    result = sub_1E5F87058(v46, *(&v46 + 1), v47);
    goto LABEL_6;
  }

  v39 = v14;
  v40 = v7;
  v18 = sub_1E6417318(v46, *(&v46 + 1), v47);
  v20 = v19;
  result = sub_1E5F87058(v16, *(&v16 + 1), v17);
  if ((v20 & 1) == 0)
  {
LABEL_6:
    v30 = 0;
    goto LABEL_9;
  }

  v22 = v40;
  v23 = *(a2 + 56) + *(v40 + 72) * v18;
  v24 = *(v40 + 16);
  v25 = v44;
  v24(v12, v23, v44);
  v38 = *(v22 + 32);
  v38(v39, v12, v25);
  v26 = sub_1E65D9D18();
  v37[0] = v27;
  v37[1] = v26;
  sub_1E6289E48(v41 & 1, v15);
  if (v28)
  {
    v29 = sub_1E65E5C48();
    v41 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v41 = 0;
  }

  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E5DF650C(v42, &v46);
  v31 = v43;
  v32 = v44;
  v33 = v39;
  v24(v43, v39, v44);
  v34 = v40;
  v35 = (*(v40 + 80) + 56) & ~*(v40 + 80);
  v36 = swift_allocObject();
  sub_1E5DF599C(&v46, v36 + 16);
  v38((v36 + v35), v31, v32);
  v30 = sub_1E65E65C8();
  result = (*(v34 + 8))(v33, v32);
LABEL_9:
  *v45 = v30;
  return result;
}

uint64_t sub_1E60673E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65D9D28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5DF650C(a2, v20);
  (*(v6 + 16))(v8, a3, v5);
  sub_1E65E6058();
  v14 = sub_1E65E6048();
  v15 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_1E5DF599C(v20, v16 + 32);
  (*(v6 + 32))(v16 + v15, v8, v5);
  sub_1E6059EAC(0, 0, v12, &unk_1E65EED20, v16);
}

uint64_t sub_1E60675EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1E65E6058();
  v5[5] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  v5[6] = v8;
  v5[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E60676B0, v8, v7);
}

uint64_t sub_1E60676B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v3[4];
  v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_1E65D9CD8();
  v8 = v7;
  v0[8] = v7;
  sub_1E6226DB8();
  v9 = *v5;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1E60677B8;
  v11 = v0[4];

  return (sub_1E6226DFC)(1, v6, v8, 0, v11, v9);
}

uint64_t sub_1E60677B8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_1E6069714(v5);
  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_1E60679A0;
  }

  else
  {
    v9 = sub_1E6067934;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E6067934()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E60679A0()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1E6067A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6067AF0, v7, v6);
}

uint64_t sub_1E6067AF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067BDC;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 1, 0, 1, v7, v5);
}

uint64_t sub_1E6067BDC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 64) = v0;

  sub_1E6069714(v4);
  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    v8 = sub_1E6069D84;
  }

  else
  {
    v8 = sub_1E6069D80;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E6067D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6067E18, v7, v6);
}

uint64_t sub_1E6067E18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067F04;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 0, 0, 1, v7, v5);
}

uint64_t sub_1E6067F04()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 64) = v0;

  sub_1E6069714(v4);
  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    v8 = sub_1E60680C8;
  }

  else
  {
    v8 = sub_1E606805C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E606805C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E60680C8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E6068154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6068218, v7, v6);
}

uint64_t sub_1E6068218()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067BDC;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 2, 0, 1, v7, v5);
}

uint64_t sub_1E6068324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E60683E8, v7, v6);
}

uint64_t sub_1E60683E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067BDC;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 5, 0, 1, v7, v5);
}

uint64_t sub_1E60684F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E60685B8, v7, v6);
}

uint64_t sub_1E60685B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067BDC;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 3, 0, 1, v7, v5);
}

uint64_t sub_1E60686A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DF650C(a5, v20);
  sub_1E65E6058();

  v15 = sub_1E65E6048();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a2;
  sub_1E5DF599C(v20, (v16 + 8));
  sub_1E64B80F8(0, 0, v13, &unk_1E65EED38, v16);
}

uint64_t sub_1E6068814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  v10 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v11 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = sub_1E65E6058();
  v8[13] = sub_1E65E6048();
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v8[14] = v13;
  *v13 = v8;
  v13[1] = sub_1E6068984;

  return v15();
}

uint64_t sub_1E6068984()
{
  v2 = v0;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 120) = v2;

  v7 = sub_1E65E5FC8();
  if (v2)
  {
    v8 = sub_1E6068D2C;
  }

  else
  {
    v8 = sub_1E6068AE0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E6068AE0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v10 = sub_1E65E5C48();
  v11 = [objc_opt_self() smm:v10 systemImageNamed:?];

  sub_1E5DF650C(v5, v0 + 16);
  v12 = swift_allocObject();
  sub_1E5DF599C((v0 + 16), v12 + 16);
  *(v7 + 32) = sub_1E65E65C8();
  v6(v7);

  v14 = *(v0 + 80);
  v13 = *(v0 + 88);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E6068D2C()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];

  v4(MEMORY[0x1E69E7CC0]);

  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6068DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E5DF650C(a2, v16);
  sub_1E65E6058();
  v11 = sub_1E65E6048();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  sub_1E5DF599C(v16, v12 + 32);
  sub_1E6059EAC(0, 0, v9, a4, v12);
}

uint64_t sub_1E6068EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6068FB4, v7, v6);
}

uint64_t sub_1E6068FB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067BDC;
  v7 = v0[3];

  return (sub_1E6226DFC)(1, 0, 0, 4, v7, v5);
}

void sub_1E60690A0(uint64_t a1, char a2, uint64_t *a3)
{
  v54 = a3;
  v6 = sub_1E65D9D28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v52 = v43 - v14;
  v51 = *(a1 + 16);
  if (!v51)
  {
LABEL_13:

    return;
  }

  v43[1] = v3;
  v44 = v13;
  v15 = 0;
  v16 = *(v12 + 48);
  v49 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v50 = v16;
  v17 = (v7 + 32);
  v47 = v7;
  v48 = v6;
  v45 = (v7 + 32);
  v46 = a1;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v52;
    sub_1E6069770(v49 + *(v13 + 72) * v15, v52);
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v57 = *v18;
    v20 = v57;
    v58 = v19;
    v59 = v21;
    v22 = *v17;
    (*v17)(v53, v18 + v50, v6);
    v23 = *v54;
    v25 = sub_1E6417318(v20, v19, v21);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E6424680();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = v53;
    v35 = *v54;
    *(*v54 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v36 = v35[6] + 24 * v25;
    *v36 = v20;
    *(v36 + 8) = v19;
    *(v36 + 16) = v21;
    v6 = v48;
    v37 = v35[7] + *(v47 + 72) * v25;
    v17 = v45;
    v22(v37, v34, v48);
    v38 = v35[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_20;
    }

    ++v15;
    v35[2] = v40;
    a2 = 1;
    a1 = v46;
    v13 = v44;
    if (v51 == v15)
    {
      goto LABEL_13;
    }
  }

  v30 = v54;
  sub_1E641B714(v28, a2 & 1);
  v31 = *v30;
  v32 = sub_1E6417318(v20, v19, v21);
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v25 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v41 = swift_allocError();
  swift_willThrow();

  v60 = v41;
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v47 + 8))(v53, v48);
    sub_1E5F87058(v20, v19, v21);

    return;
  }

LABEL_22:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

unint64_t sub_1E6069558()
{
  result = qword_1EE2D70B0;
  if (!qword_1EE2D70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70B0);
  }

  return result;
}

uint64_t sub_1E60695AC(uint64_t a1)
{
  v3 = *(sub_1E65D9D28() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E60673E0(a1, v1 + 16, v4);
}

uint64_t sub_1E6069620(uint64_t a1)
{
  v4 = *(sub_1E65D9D28() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60675EC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E6069714(uint64_t a1)
{
  v2 = type metadata accessor for RouteSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6069770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60697E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6069850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6068814(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1E6069960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068EF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069A10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60684F4(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068324(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069B70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068154(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6067D54(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6067A2C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, BOOL *a4@<X8>)
{
  v8 = sub_1E65DA2A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = type metadata accessor for BrowsingIdentity(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D34C(a1, v19, type metadata accessor for BrowsingIdentity);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    v21 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
    v22 = sub_1E65DAE38();
    result = sub_1E65DAE38();
    *a4 = v22 != result;
  }

  else
  {
    v24 = (*(v9 + 32))(v15, &v19[*(v20 + 48)], v8);
    a3(v24);
    sub_1E60733D0(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
    v25 = sub_1E65E6718();
    v26 = *(v9 + 8);
    v26(v13, v8);
    v26(v15, v8);
    *a4 = v25 & 1;
    return sub_1E6073418(v19);
  }

  return result;
}

uint64_t sub_1E606A028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v187 = a2;
  v188 = a1;
  v195 = a3;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D48, &qword_1E65EEDA0);
  v159 = *(v161 - 8);
  v5 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v156 - v6;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D50, &qword_1E65EEDA8);
  v160 = *(v162 - 8);
  v7 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v156 - v8;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D58, &qword_1E65EEDB0);
  v9 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v164 = &v156 - v10;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D60, &qword_1E65EEDB8);
  v11 = *(*(v193 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v193);
  v166 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v156 - v14;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D68, &qword_1E65EEDC0);
  v15 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v194 = &v156 - v16;
  v186 = sub_1E65D76F8();
  v185 = *(v186 - 8);
  v17 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v205 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D70, &qword_1E65EEDC8);
  v169 = *(v171 - 8);
  v19 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v156 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D78, &qword_1E65EEDD0);
  v170 = *(v172 - 8);
  v21 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v156 - v22;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D80, &qword_1E65EEDD8);
  v23 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v156 - v24;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D88, &qword_1E65EEDE0);
  v25 = *(*(v189 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v189);
  v176 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v156 - v28;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v29 = *(*(v191 - 8) + 64);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v156 - v30;
  v31 = type metadata accessor for AppComposer();
  v32 = *(v31 - 8);
  v182 = (v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8);
  v181 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v184 = &v156 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v200 = &v156 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v156 - v40;
  v199 = (&v156 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v156 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v156 - v45;
  sub_1E5E1D34C(v4, &v156 - v45, type metadata accessor for AppComposer);
  v47 = *(v32 + 80);
  v48 = (v47 + 16) & ~v47;
  v196 = swift_allocObject();
  v204 = v46;
  sub_1E5E1FA80(v46, v196 + v48);
  v207 = v4;
  v198 = type metadata accessor for AppComposer;
  sub_1E5E1D34C(v4, v44, type metadata accessor for AppComposer);
  v202 = v48 + v33;
  v49 = swift_allocObject();
  v203 = v48;
  v201 = v49;
  sub_1E5E1FA80(v44, v49 + v48);
  sub_1E65E5148();
  v50 = sub_1E65E5138();
  v206 = v50;
  sub_1E5E1D34C(v4, v41, type metadata accessor for AppComposer);
  v179 = ((v47 + 32) & ~v47);
  v51 = (v179 + v33) & 0xFFFFFFFFFFFFFFF8;
  v52 = v179 + v33;
  v178 = (v179 + v33);
  v53 = swift_allocObject();
  v197 = &unk_1E65EEDF0;
  v54 = v196;
  *(v53 + 16) = &unk_1E65EEDF0;
  *(v53 + 24) = v54;
  sub_1E5E1FA80(v199, v53 + ((v47 + 32) & ~v47));
  v52[v53] = 0;
  v55 = v53 + v51;
  v199 = sub_1E606C134;
  *(v55 + 8) = sub_1E606C134;
  *(v55 + 16) = v49;
  v56 = (v53 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8));
  v57 = MEMORY[0x1E69AB380];
  *v56 = v50;
  v56[1] = v57;
  v58 = v207;
  v59 = v198;
  sub_1E5E1D34C(v207, v200, v198);
  v60 = (v47 + 48) & ~v47;
  v61 = v60 + v33;
  v177 = v60;
  v62 = swift_allocObject();
  v63 = v197;
  *(v62 + 2) = v197;
  *(v62 + 3) = v54;
  *(v62 + 4) = v206;
  *(v62 + 5) = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v200, v62 + v60);
  *(v62 + v61) = 0;
  v64 = v62 + (v61 & 0xFFFFFFFFFFFFFFF8);
  v65 = v201;
  *(v64 + 1) = v199;
  *(v64 + 2) = v65;
  v66 = v184;
  sub_1E5E1D34C(v58, v184, v59);
  v67 = swift_allocObject();
  v67[2] = v63;
  v67[3] = v54;
  v68 = v206;
  v67[4] = v206;
  v67[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v66, v177 + v67);
  v69 = v67 + ((v61 + 7) & 0xFFFFFFFFFFFFFFF8);
  v70 = v53;
  *v69 = v199;
  *(v69 + 1) = v65;
  v69[16] = 0;
  v71 = v207;
  v72 = v181;
  sub_1E5E1D34C(v207, v181, v198);
  v73 = swift_allocObject();
  *(v73 + 16) = v197;
  *(v73 + 24) = v54;
  sub_1E5E1FA80(v72, v179 + v73);
  *&v211 = v68;
  *(&v211 + 1) = MEMORY[0x1E69AB380];
  *&v212 = &unk_1E65EB918;
  v200 = v70;
  *(&v212 + 1) = v70;
  *&v213 = &unk_1E65FA770;
  v199 = v62;
  *(&v213 + 1) = v62;
  *&v214 = &unk_1E65EB920;
  *(&v214 + 1) = v67;
  *&v215 = &unk_1E65FA780;
  *(&v215 + 1) = v73;
  v74 = *(v71 + *(v182 + 7) + 8);
  v184 = v73;
  v183 = v67;
  v180 = v47;
  if (v74 < 2)
  {
    v198 = type metadata accessor for AppComposer;
    v75 = v204;
    sub_1E5E1D34C(v71, v204, type metadata accessor for AppComposer);
    v76 = (v202 + 7) & 0xFFFFFFFFFFFFFFF8;
    v197 = v76;
    v77 = swift_allocObject();
    v181 = v77;
    v78 = sub_1E5E1FA80(v75, v77 + v203);
    v182 = &v156;
    v79 = (v77 + v76);
    v80 = v214;
    v79[2] = v213;
    v79[3] = v80;
    v79[4] = v215;
    v81 = v212;
    *v79 = v211;
    v79[1] = v81;
    v82 = MEMORY[0x1EEE9AC00](v78);
    v179 = &v150;
    v83 = v188;
    v84 = MEMORY[0x1EEE9AC00](v82);
    v178 = &v150;
    MEMORY[0x1EEE9AC00](v84);
    v177 = &v150;
    v152 = v71;
    v153 = v83;
    v154 = v85;
    v155 = v86;
    (*(v185 + 16))(v205);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D98, &qword_1E65EEDF8);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
    v89 = sub_1E6071C64(&unk_1EE2D4C90, &qword_1ED073D98, &qword_1E65EEDF8, sub_1E6071B80);
    v90 = sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    v91 = sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    v153 = v90;
    v154 = v91;
    v151 = v88;
    v152 = v89;
    v150 = v87;
    v92 = v167;
    sub_1E65E25B8();
    v93 = v204;
    sub_1E5E1D34C(v207, v204, v198);
    sub_1E5DF650C(v83, &v208);
    v94 = v197;
    v95 = swift_allocObject();
    v96 = v203;
    sub_1E5E1FA80(v93, v95 + v203);
    sub_1E5DF599C(&v208, v94 + v95);
    v97 = sub_1E5FED46C(&qword_1ED073E58, &qword_1ED073D70, &qword_1E65EEDC8);
    v98 = sub_1E5FEAE50();
    v99 = v168;
    v100 = v171;
    sub_1E65E4758();

    (*(v169 + 8))(v92, v100);
    *&v208 = v100;
    *(&v208 + 1) = &type metadata for CreatePlanHandoffViewRepresentable;
    v209 = v97;
    v210 = v98;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v102 = v174;
    v103 = v172;
    sub_1E630FCD8(&v211, v172, OpaqueTypeConformance2, v174);
    (*(v170 + 8))(v99, v103);
    sub_1E5E1D34C(v207, v93, v198);
    v104 = swift_allocObject();
    sub_1E5E1FA80(v93, v104 + v96);
    sub_1E60725A0();
    v105 = v176;
    sub_1E6259D5C(sub_1E60772D8, v104, v173);

    sub_1E5DFE50C(v102, &qword_1ED073D80, &qword_1E65EEDD8);
    sub_1E6072514();
    v106 = v175;
    v107 = v189;
    sub_1E5FEE4C8(v105);
    v108 = &qword_1ED073D88;
    v109 = &qword_1E65EEDE0;
    sub_1E5DFE50C(v105, &qword_1ED073D88, &qword_1E65EEDE0);
    sub_1E5FEE4C8(v106);
    sub_1E6072488();
    v110 = v194;
    sub_1E62DFC6C(v105, v107);
    sub_1E60726F4();
    v111 = v190;
    sub_1E62DFC6C(v110, v192);

    sub_1E5DFE50C(v110, &qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E5DFE50C(v105, &qword_1ED073D88, &qword_1E65EEDE0);
    v112 = v106;
LABEL_5:
    sub_1E5DFE50C(v112, v108, v109);
    sub_1E6071C64(&qword_1ED073E68, &qword_1ED073D90, &unk_1E65FA3D0, sub_1E60726F4);
    sub_1E5FEE4C8(v111);
    return sub_1E5DFE50C(v111, &qword_1ED073D90, &unk_1E65FA3D0);
  }

  v114 = v202;
  v113 = v203;
  v115 = v204;
  v116 = v188;
  if (v74 == 3)
  {
    v198 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v71, v204, type metadata accessor for AppComposer);
    v117 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v197 = v117;
    v118 = swift_allocObject();
    v181 = v118;
    v119 = sub_1E5E1FA80(v115, v118 + v113);
    v182 = &v156;
    v120 = (v118 + v117);
    v121 = v214;
    v120[2] = v213;
    v120[3] = v121;
    v120[4] = v215;
    v122 = v212;
    *v120 = v211;
    v120[1] = v122;
    v123 = MEMORY[0x1EEE9AC00](v119);
    v179 = &v150;
    v124 = MEMORY[0x1EEE9AC00](v123);
    v178 = &v150;
    MEMORY[0x1EEE9AC00](v124);
    v177 = &v150;
    v152 = v71;
    v153 = v116;
    v154 = v125;
    v155 = v126;
    (*(v185 + 16))(v205);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D98, &qword_1E65EEDF8);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
    v129 = sub_1E6071C64(&unk_1EE2D4C90, &qword_1ED073D98, &qword_1E65EEDF8, sub_1E6071B80);
    v130 = sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    v131 = sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    v153 = v130;
    v154 = v131;
    v151 = v128;
    v152 = v129;
    v150 = v127;
    v132 = v157;
    sub_1E65E2DB8();
    v133 = v204;
    sub_1E5E1D34C(v207, v204, v198);
    sub_1E5DF650C(v116, &v208);
    v134 = v197;
    v135 = swift_allocObject();
    v136 = v203;
    sub_1E5E1FA80(v133, v135 + v203);
    sub_1E5DF599C(&v208, v134 + v135);
    v137 = sub_1E5FED46C(&qword_1ED073E30, &qword_1ED073D48, &qword_1E65EEDA0);
    v138 = sub_1E5FEAE50();
    v139 = v158;
    v140 = v161;
    sub_1E65E4758();

    (*(v159 + 8))(v132, v140);
    *&v208 = v140;
    *(&v208 + 1) = &type metadata for CreatePlanHandoffViewRepresentable;
    v209 = v137;
    v210 = v138;
    v141 = swift_getOpaqueTypeConformance2();
    v142 = v164;
    v143 = v162;
    sub_1E630FCD8(&v211, v162, v141, v164);
    (*(v160 + 8))(v139, v143);
    sub_1E5E1D34C(v207, v133, v198);
    v144 = swift_allocObject();
    sub_1E5E1FA80(v133, v144 + v136);
    sub_1E6072334();
    v145 = v166;
    sub_1E6259D5C(sub_1E60722DC, v144, v163);

    sub_1E5DFE50C(v142, &qword_1ED073D58, &qword_1E65EEDB0);
    sub_1E6072488();
    v146 = v165;
    v147 = v193;
    sub_1E5FEE4C8(v145);
    v108 = &qword_1ED073D60;
    v109 = &qword_1E65EEDB8;
    sub_1E5DFE50C(v145, &qword_1ED073D60, &qword_1E65EEDB8);
    sub_1E5FEE4C8(v146);
    sub_1E6072514();
    v148 = v194;
    sub_1E62DFB74(v145, v189, v147);
    sub_1E60726F4();
    v111 = v190;
    sub_1E62DFC6C(v148, v192);

    sub_1E5DFE50C(v148, &qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E5DFE50C(v145, &qword_1ED073D60, &qword_1E65EEDB8);
    v112 = v146;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E606B8DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E606BA20, 0, 0);
}

uint64_t sub_1E606BA20()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD60];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer() + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E606BCAC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E606B8DC(a1, v1 + v5);
}

unint64_t sub_1E606BD88(uint64_t *a1)
{
  v2 = sub_1E65D76F8();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v28 - v17;
  v19 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v18);
  sub_1E5DFE50C(v9, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v11 + 8))(v14, v10);
  v20 = sub_1E65D7EB8();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_1E5DFE50C(v18, &qword_1ED072968, &unk_1E6609800);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    sub_1E65D7DC8();
    (*(v21 + 8))(v18, v20);
    v22 = sub_1E65D76C8();
    v23 = v24;
    (*(v28 + 8))(v5, v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  v30 = v22;
  v31 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v26 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  return v26;
}

uint64_t sub_1E606C14C(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF8, &qword_1E65EEEB0);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v33 - v9;
  v10 = sub_1E65E25A8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1E65E2588();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v34 = a1;
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  sub_1E65E2598();
  sub_1E65E2578();
  sub_1E65E4CC8();
  sub_1E5E1D34C(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = v15 + v6;
  v17 = swift_allocObject();
  v18 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1FA80(v18, v17 + v15);
  type metadata accessor for AppFeature();
  sub_1E60733D0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v33 = sub_1E60733D0(&qword_1ED073F00, MEMORY[0x1E699F338]);
  sub_1E65E4DE8();
  v19 = v18;
  sub_1E5E1D34C(v34, v18, type metadata accessor for AppComposer);
  v20 = *a2;
  v21 = a2[3];
  v22 = a2[5];
  v34 = a2[7];
  v23 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = a2[9];
  v25 = swift_allocObject();
  sub_1E5E1FA80(v19, v25 + v15);
  v26 = (v25 + v23);
  v27 = *(a2 + 3);
  v26[2] = *(a2 + 2);
  v26[3] = v27;
  v26[4] = *(a2 + 4);
  v28 = *(a2 + 1);
  *v26 = *a2;
  v26[1] = v28;
  swift_unknownObjectRetain();

  v29 = v35;
  v30 = v40;
  v31 = sub_1E65E4F08();

  (*(v38 + 8))(v30, v39);
  (*(v37 + 8))(v29, v12);
  return v31;
}

uint64_t sub_1E606C5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a2;
  v115 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD0, &unk_1E65FA8B0);
  v102 = *(v6 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v94 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED0, &qword_1E65EEE88);
  v9 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v11 = &v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED8, &qword_1E65EEE90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v94 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  v15 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v94 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD8, &qword_1E65EEE20);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v94 - v31;
  v33 = *(a1 + *(v18 + 28) + 8);
  v113 = v11;
  v114 = v6;
  v108 = v29;
  v107 = v12;
  v104 = v24;
  v103 = a1;
  if (v33 >= 2)
  {
    v101 = v32;
    v102 = v30;
    v64 = v105;
    if (v33 == 3)
    {
      v94 = type metadata accessor for AppComposer;
      sub_1E5E1D34C(a1, v26, type metadata accessor for AppComposer);
      sub_1E5DF650C(v64, &v120);
      v65 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v66 = v65 + v20;
      v67 = (v65 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v66 + 55) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      sub_1E5E1FA80(v26, v69 + v65);
      sub_1E5DF599C(&v120, v69 + v67);
      *(v69 + v67 + 40) = 2;
      v100 = v69;
      v70 = (v69 + v68);
      v71 = (v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v70 = 0;
      v70[1] = 0;
      *v71 = 0;
      v71[1] = 0;
      v72 = v103;
      v73 = v104;
      sub_1E5E1D34C(v103, v104, type metadata accessor for AppComposer);
      sub_1E5DF650C(v64, &v119);
      v95 = *a3;
      v96 = a3[3];
      v97 = a3[5];
      v98 = a3[7];
      v99 = a3[9];
      v74 = (v67 + 47) & 0xFFFFFFFFFFFFFFF8;
      v75 = v74 + 80;
      v76 = swift_allocObject();
      sub_1E5E1FA80(v73, v76 + v65);
      sub_1E5DF599C(&v119, v76 + v67);
      v77 = (v76 + v74);
      v78 = *(a3 + 3);
      v77[2] = *(a3 + 2);
      v77[3] = v78;
      v77[4] = *(a3 + 4);
      v79 = *(a3 + 1);
      *v77 = *a3;
      v77[1] = v79;
      *(v76 + v75) = 2;
      v80 = v72;
      v81 = v106;
      sub_1E5E1D34C(v80, v106, v94);
      sub_1E5DF650C(v64, v118);
      v82 = swift_allocObject();
      sub_1E5E1FA80(v81, v82 + v65);
      sub_1E5DF599C(v118, v82 + v67);
      v83 = (v82 + v74);
      v84 = *(a3 + 3);
      v83[2] = *(a3 + 2);
      v83[3] = v84;
      v83[4] = *(a3 + 4);
      v85 = *(a3 + 1);
      *v83 = *a3;
      v83[1] = v85;
      *(v82 + v75) = 2;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v87 = sub_1E60731B0();
      v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v116 = v86;
      v117 = v87;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v116 = v88;
      v117 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v90 = v101;
      sub_1E65E20B8();
      v91 = v102;
      v92 = v108;
      (*(v102 + 16))(v109, v90, v108);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20);
      v93 = v111;
      sub_1E65E4138();
      sub_1E5E70EC8(v93, v113);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      sub_1E65E4138();
      sub_1E5DFE50C(v93, &qword_1ED073DC8, &qword_1E65EEE18);
      return (*(v91 + 8))(v90, v92);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v94 = type metadata accessor for AppComposer;
    v34 = a1;
    sub_1E5E1D34C(a1, v26, type metadata accessor for AppComposer);
    v35 = v105;
    sub_1E5DF650C(v105, &v120);
    v36 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v37 = (v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v36 + v20 + 55) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_1E5E1FA80(v26, v39 + v36);
    sub_1E5DF599C(&v120, v39 + v37);
    *(v39 + v37 + 40) = 2;
    v100 = v39;
    v40 = (v39 + v38);
    v41 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v40 = 0;
    v40[1] = 0;
    *v41 = 0;
    v41[1] = 0;
    v42 = v34;
    v43 = v104;
    v44 = v94;
    sub_1E5E1D34C(v42, v104, v94);
    sub_1E5DF650C(v35, &v119);
    v95 = *a3;
    v96 = a3[3];
    v97 = a3[5];
    v98 = a3[7];
    v99 = a3[9];
    v45 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1E5E1FA80(v43, v46 + v36);
    sub_1E5DF599C(&v119, v46 + v37);
    v47 = (v46 + v45);
    v48 = *(a3 + 3);
    v47[2] = *(a3 + 2);
    v47[3] = v48;
    v47[4] = *(a3 + 4);
    v49 = *(a3 + 1);
    *v47 = *a3;
    v47[1] = v49;
    *(v46 + v45 + 80) = 2;
    v50 = v106;
    sub_1E5E1D34C(v103, v106, v44);
    sub_1E5DF650C(v35, v118);
    v51 = swift_allocObject();
    sub_1E5E1FA80(v50, v51 + v36);
    sub_1E5DF599C(v118, v51 + v37);
    v52 = (v51 + v45);
    v53 = *(a3 + 3);
    v52[2] = *(a3 + 2);
    v52[3] = v53;
    v52[4] = *(a3 + 4);
    v54 = *(a3 + 1);
    *v52 = *a3;
    v52[1] = v54;
    *(v51 + v45 + 80) = 2;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
    v56 = sub_1E60731B0();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
    v116 = v55;
    v117 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v116 = v57;
    v117 = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v101;
    sub_1E65E1F38();
    v60 = v102;
    v61 = v114;
    (*(v102 + 16))(v109, v59, v114);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20);
    v62 = v111;
    sub_1E65E4138();
    sub_1E5E70EC8(v62, v113);
    swift_storeEnumTagMultiPayload();
    sub_1E6071CE8();
    sub_1E65E4138();
    sub_1E5DFE50C(v62, &qword_1ED073DC8, &qword_1E65EEE18);
    return (*(v60 + 8))(v59, v61);
  }

  return result;
}

uint64_t sub_1E606D2C0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a3;
  v190 = a1;
  v185 = a5;
  v186 = a2;
  v6 = a4[1];
  v170 = *a4;
  v169 = v6;
  v7 = a4[3];
  v172 = a4[2];
  v171 = v7;
  v8 = a4[5];
  v176 = a4[4];
  v177 = v8;
  v9 = a4[7];
  v178 = a4[6];
  v175 = v9;
  v10 = a4[9];
  v174 = a4[8];
  v173 = v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  v11 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v144 - v12;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v156 = *(v158 - 8);
  v13 = *(v156 + 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v144 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  v15 = *(*(v159 - 1) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v144 - v16;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v17 = *(*(v182 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v182);
  v162 = (&v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v157 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v144 - v22;
  v168 = sub_1E65D76F8();
  v167 = *(v168 - 8);
  v23 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = v24;
  v187 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppComposer();
  v26 = v25 - 8;
  v164 = *(v25 - 8);
  v27 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v165 = *(v28 - 8);
  v29 = *(v165 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v144 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v144 - v34;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v36 = *(*(v179 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v179);
  v39 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v144 - v43;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v45 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v48 = &v144 - v47;
  v49 = *(v46 + *(v26 + 28) + 8);
  v180 = v48;
  v163 = 0x80000001E6611D30;
  if (v49 < 2)
  {
    v165 = type metadata accessor for AppComposer;
    v50 = v188;
    sub_1E5E1D34C(v46, v188, type metadata accessor for AppComposer);
    sub_1E5DF650C(v186, &v191);
    v147 = *a4;
    v148 = a4[3];
    v149 = a4[5];
    v150 = a4[7];
    v151 = a4[9];
    v51 = *(v164 + 80);
    v52 = (v51 + 16) & ~v51;
    v53 = v51 | 7;
    v54 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v146 = v54;
    v164 = v52 + v27;
    v55 = (v52 + v27 + 55) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v152 = v56;
    sub_1E5E1FA80(v50, v56 + v52);
    sub_1E5DF599C(&v191, v56 + v54);
    *(v56 + v54 + 40) = 1;
    v57 = (v56 + v55);
    *v57 = 0xD000000000000014;
    v57[1] = v163;
    v58 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
    v59 = *(a4 + 4);
    v58[3] = *(a4 + 3);
    v58[4] = v59;
    v60 = *(a4 + 2);
    v58[1] = *(a4 + 1);
    v58[2] = v60;
    *v58 = *a4;
    v61 = v190;
    v62 = v50;
    v63 = v165;
    sub_1E5E1D34C(v190, v50, v165);
    v154 = v53;
    v163 = swift_allocObject();
    v153 = v52;
    sub_1E5E1FA80(v50, v163 + v52);
    sub_1E5E1D34C(v61, v50, v63);
    sub_1E5DF650C(v186, &v191);
    v64 = v167;
    v186 = *(v167 + 16);
    v65 = v168;
    v186(v187, v189, v168);
    v66 = v146;
    v67 = (v146 + 47) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + *(v64 + 80) + 80) & ~*(v64 + 80);
    v69 = swift_allocObject();
    sub_1E5E1FA80(v62, v69 + v52);
    sub_1E5DF599C(&v191, v69 + v66);
    v70 = (v69 + v67);
    v71 = *(a4 + 3);
    v70[2] = *(a4 + 2);
    v70[3] = v71;
    v70[4] = *(a4 + 4);
    v72 = *(a4 + 1);
    *v70 = *a4;
    v70[1] = v72;
    v73 = v187;
    (*(v64 + 32))(v69 + v68, v187, v65);
    v186(v73, v189, v65);
    type metadata accessor for ArtworkDescriptor();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v168 = type metadata accessor for ItemMetrics();
    v167 = type metadata accessor for SectionMetrics();
    v166 = type metadata accessor for ViewDescriptor();
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v74 = v155;
    sub_1E65E2448();
    v75 = sub_1E65E2DA8();
    v76 = v169;
    if ((v75 & 1) == 0)
    {
      v76 = 0;
    }

    v77 = v170;
    if ((v75 & 1) == 0)
    {
      v77 = 0;
    }

    *&v191 = v77;
    *(&v191 + 1) = v76;
    v78 = v173;
    if ((v75 & 1) == 0)
    {
      v78 = 0;
    }

    v79 = v171;
    if ((v75 & 1) == 0)
    {
      v79 = 0;
    }

    v80 = v172;
    if ((v75 & 1) == 0)
    {
      v80 = 0;
    }

    v192 = v80;
    v193 = v79;
    v81 = v174;
    if ((v75 & 1) == 0)
    {
      v81 = 0;
    }

    v82 = v175;
    if ((v75 & 1) == 0)
    {
      v82 = 0;
    }

    v83 = v177;
    if ((v75 & 1) == 0)
    {
      v83 = 0;
    }

    v84 = v176;
    if ((v75 & 1) == 0)
    {
      v84 = 0;
    }

    v194 = v84;
    v195 = v83;
    v85 = v178;
    if ((v75 & 1) == 0)
    {
      v85 = 0;
    }

    v196 = v85;
    v197 = v82;
    v198 = v81;
    v199 = v78;
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
    v86 = v160;
    v87 = v158;
    sub_1E630FFE8(&v191, v158, v160);
    (*(v156 + 1))(v74, v87);
    v88 = v188;
    sub_1E5E1D34C(v190, v188, v165);
    v89 = swift_allocObject();
    sub_1E5E1FA80(v88, v89 + v153);
    sub_1E6071EE4();
    v90 = v157;
    sub_1E6259D5C(sub_1E60772C0, v89, v159);

    sub_1E5DFE50C(v86, &qword_1ED073DF8, &unk_1E65FA440);
    sub_1E6071E58();
    v91 = v161;
    v92 = v182;
    sub_1E5FEE4C8(v90);
    sub_1E5DFE50C(v90, &unk_1ED077710, &qword_1E65EEE28);
    v93 = v162;
    sub_1E5FEE4C8(v91);
    sub_1E6072098();
    v94 = v184;
    sub_1E62DFC6C(v93, v92);
    sub_1E6071DCC();
    v95 = v180;
    sub_1E62DFC6C(v94, v183);
    sub_1E5DFE50C(v94, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v93, &unk_1ED077710, &qword_1E65EEE28);
    sub_1E5DFE50C(v91, &unk_1ED077710, &qword_1E65EEE28);
    v96 = v95;
LABEL_45:
    sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    sub_1E5FEE4C8(v96);
    return sub_1E5DFE50C(v96, &qword_1ED073DA8, &unk_1E65FA550);
  }

  v155 = v31;
  v97 = v186;
  v156 = v42;
  v157 = v28;
  v158 = v32;
  v159 = v35;
  v160 = v44;
  v161 = v39;
  v98 = v188;
  if (v49 == 3)
  {
    v162 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v46, v188, type metadata accessor for AppComposer);
    v99 = v97;
    sub_1E5DF650C(v97, &v191);
    v147 = *a4;
    v148 = a4[3];
    v149 = a4[5];
    v150 = a4[7];
    v151 = a4[9];
    v100 = *(v164 + 80);
    v101 = (v100 + 16) & ~v100;
    v102 = v100 | 7;
    v164 = v101 + v27;
    v103 = (v101 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v146 = v103;
    v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
    v145 = v104;
    v105 = swift_allocObject();
    v152 = v105;
    sub_1E5E1FA80(v98, v105 + v101);
    sub_1E5DF599C(&v191, v105 + v103);
    v106 = (v105 + v104);
    *v106 = 0xD000000000000014;
    v106[1] = v163;
    v107 = v105 + ((v104 + 23) & 0xFFFFFFFFFFFFFFF8);
    v108 = *(a4 + 4);
    *(v107 + 48) = *(a4 + 3);
    *(v107 + 64) = v108;
    v109 = *(a4 + 2);
    *(v107 + 16) = *(a4 + 1);
    *(v107 + 32) = v109;
    *v107 = *a4;
    *(v107 + 80) = 1;
    v110 = v190;
    v111 = v162;
    sub_1E5E1D34C(v190, v98, v162);
    v154 = v102;
    v163 = swift_allocObject();
    v112 = v101;
    v153 = v101;
    sub_1E5E1FA80(v98, v163 + v101);
    sub_1E5E1D34C(v110, v98, v111);
    sub_1E5DF650C(v99, &v191);
    v113 = v167;
    v186 = *(v167 + 16);
    v114 = v187;
    v115 = v168;
    v186(v187, v189, v168);
    v116 = v145;
    v117 = (v145 + *(v113 + 80) + 80) & ~*(v113 + 80);
    v118 = swift_allocObject();
    sub_1E5E1FA80(v98, v118 + v112);
    sub_1E5DF599C(&v191, v118 + v146);
    v119 = (v118 + v116);
    v120 = *(a4 + 3);
    v119[2] = *(a4 + 2);
    v119[3] = v120;
    v119[4] = *(a4 + 4);
    v121 = *(a4 + 1);
    *v119 = *a4;
    v119[1] = v121;
    (*(v113 + 32))(v118 + v117, v114, v115);
    v186(v114, v189, v115);
    type metadata accessor for ArtworkDescriptor();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v168 = type metadata accessor for ItemMetrics();
    v167 = type metadata accessor for SectionMetrics();
    v166 = type metadata accessor for ViewDescriptor();
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v122 = v155;
    sub_1E65E1EB8();
    v123 = sub_1E65E2DA8();
    v124 = v170;
    if ((v123 & 1) == 0)
    {
      v124 = 0;
    }

    v125 = v169;
    if ((v123 & 1) == 0)
    {
      v125 = 0;
    }

    *&v191 = v124;
    *(&v191 + 1) = v125;
    v126 = v172;
    if ((v123 & 1) == 0)
    {
      v126 = 0;
    }

    v127 = v171;
    if ((v123 & 1) == 0)
    {
      v127 = 0;
    }

    v128 = v176;
    if ((v123 & 1) == 0)
    {
      v128 = 0;
    }

    v192 = v126;
    v193 = v127;
    v129 = v177;
    if ((v123 & 1) == 0)
    {
      v129 = 0;
    }

    v130 = v178;
    if ((v123 & 1) == 0)
    {
      v130 = 0;
    }

    v131 = v175;
    if ((v123 & 1) == 0)
    {
      v131 = 0;
    }

    v132 = v174;
    if ((v123 & 1) == 0)
    {
      v132 = 0;
    }

    v194 = v128;
    v195 = v129;
    v133 = v173;
    if ((v123 & 1) == 0)
    {
      v133 = 0;
    }

    v196 = v130;
    v197 = v131;
    v198 = v132;
    v199 = v133;
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
    v134 = v159;
    v135 = v157;
    sub_1E630FFE8(&v191, v157, v159);
    (*(v165 + 1))(v122, v135);
    v136 = v188;
    sub_1E5E1D34C(v190, v188, v162);
    v137 = swift_allocObject();
    sub_1E5E1FA80(v136, v137 + v153);
    sub_1E6072124();
    v138 = v156;
    sub_1E6259D5C(sub_1E60772C0, v137, v158);

    sub_1E5DFE50C(v134, &unk_1ED077720, &qword_1E65EEE40);
    sub_1E6072098();
    v139 = v160;
    v140 = v179;
    sub_1E5FEE4C8(v138);
    sub_1E5DFE50C(v138, &qword_1ED073E10, &unk_1E65FA460);
    v141 = v161;
    sub_1E5FEE4C8(v139);
    sub_1E6071E58();
    v142 = v184;
    sub_1E62DFB74(v141, v182, v140);
    sub_1E6071DCC();
    v96 = v180;
    sub_1E62DFC6C(v142, v183);
    sub_1E5DFE50C(v142, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v141, &qword_1ED073E10, &unk_1E65FA460);
    sub_1E5DFE50C(v139, &qword_1ED073E10, &unk_1E65FA460);
    goto LABEL_45;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E606E8F0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF8, &qword_1E65EEEB0);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v33 - v9;
  v10 = sub_1E65E25A8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1E65E2588();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v34 = a1;
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  sub_1E65E2598();
  sub_1E65E2578();
  sub_1E65E4CC8();
  sub_1E5E1D34C(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = v15 + v6;
  v17 = swift_allocObject();
  v18 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1FA80(v18, v17 + v15);
  type metadata accessor for AppFeature();
  sub_1E60733D0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v33 = sub_1E60733D0(&qword_1ED073F00, MEMORY[0x1E699F338]);
  sub_1E65E4DE8();
  v19 = v18;
  sub_1E5E1D34C(v34, v18, type metadata accessor for AppComposer);
  v20 = *a2;
  v21 = a2[3];
  v22 = a2[5];
  v34 = a2[7];
  v23 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = a2[9];
  v25 = swift_allocObject();
  sub_1E5E1FA80(v19, v25 + v15);
  v26 = (v25 + v23);
  v27 = *(a2 + 3);
  v26[2] = *(a2 + 2);
  v26[3] = v27;
  v26[4] = *(a2 + 4);
  v28 = *(a2 + 1);
  *v26 = *a2;
  v26[1] = v28;
  swift_unknownObjectRetain();

  v29 = v35;
  v30 = v40;
  v31 = sub_1E65E4F08();

  (*(v38 + 8))(v30, v39);
  (*(v37 + 8))(v29, v12);
  return v31;
}

uint64_t sub_1E606ED44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a5;
  v73 = a4;
  v65 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v64 - v14;
  v80 = sub_1E65D7848();
  v78 = *(v80 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E2568();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v23 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v71 = *(v25 - 8);
  v72 = v25;
  v26 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v70 = &v64 - v27;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v28 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v66 = *(v31 - 8);
  v32 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v64 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v76 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v88 = &v64 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v86 = &v64 - v41;
  v87 = sub_1E65E07B8();
  v85 = *(v87 - 8);
  v42 = *(v85 + 64);
  v43 = MEMORY[0x1EEE9AC00](v87);
  v68 = &v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v89 = &v64 - v45;
  v46 = a2;
  v47 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  v83 = v18;
  v84 = a6;
  v81 = v22;
  v82 = v15;
  v67 = a1;
  if (v47 >= 2)
  {
    if (v47 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    sub_1E65E0768();
  }

  else
  {
    v48 = *(type metadata accessor for AppState() + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
  }

  v65 = *v46;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v49 = *(v66 + 8);
  v50 = v49(v34, v31);
  MEMORY[0x1EEE9AC00](v50);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v30, &qword_1ED071E58, &qword_1E65EA150);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v51 = v49(v34, v31);
  MEMORY[0x1EEE9AC00](v51);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v30, &qword_1ED071E58, &qword_1E65EA150);
  swift_getKeyPath();
  v52 = v70;
  sub_1E65E4EC8();

  v53 = v74;
  v54 = v72;
  sub_1E65E4C98();
  (*(v71 + 8))(v52, v54);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v53, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v85 + 16))(v68, v89, v87);
  sub_1E65E2558();
  v55 = type metadata accessor for AppState();
  v56 = *(v55 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v57 = v79;
  sub_1E65E4C98();
  v58 = v82;
  sub_1E5E1F544(v82);
  sub_1E5DFE50C(v57, &qword_1ED071F78, &unk_1E65EA3F0);
  v59 = v78;
  v60 = *(v78 + 48);
  v61 = v80;
  if (v60(v58, 1, v80) == 1)
  {
    sub_1E65D77C8();
    if (v60(v58, 1, v61) != 1)
    {
      sub_1E5DFE50C(v58, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v59 + 32))(v83, v58, v61);
  }

  v62 = *(v55 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E2548();
  return (*(v85 + 8))(v89, v87);
}

uint64_t sub_1E606F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *a5;
  v15 = a5[3];
  v16 = a5[5];
  v17 = a5[7];
  v18 = a5[9];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = *(a5 + 3);
  *(v19 + 64) = *(a5 + 2);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(a5 + 4);
  v21 = *(a5 + 1);
  *(v19 + 32) = *a5;
  *(v19 + 48) = v21;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v12, a7, v19);
}

uint64_t sub_1E606F800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a2;
  v115 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD0, &unk_1E65FA8B0);
  v102 = *(v6 - 8);
  v7 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v94 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED0, &qword_1E65EEE88);
  v9 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v11 = &v94 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED8, &qword_1E65EEE90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v94 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  v15 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v94 - v16;
  v17 = type metadata accessor for AppComposer();
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v94 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD8, &qword_1E65EEE20);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v94 - v31;
  v33 = *(a1 + *(v18 + 28) + 8);
  v113 = v11;
  v114 = v6;
  v108 = v29;
  v107 = v12;
  v104 = v24;
  v103 = a1;
  if (v33 >= 2)
  {
    v101 = v32;
    v102 = v30;
    v64 = v105;
    if (v33 == 3)
    {
      v94 = type metadata accessor for AppComposer;
      sub_1E5E1D34C(a1, v26, type metadata accessor for AppComposer);
      sub_1E5DF650C(v64, &v120);
      v65 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v66 = v65 + v20;
      v67 = (v65 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v66 + 55) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      sub_1E5E1FA80(v26, v69 + v65);
      sub_1E5DF599C(&v120, v69 + v67);
      *(v69 + v67 + 40) = 2;
      v100 = v69;
      v70 = (v69 + v68);
      v71 = (v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v70 = 0;
      v70[1] = 0;
      *v71 = 0;
      v71[1] = 0;
      v72 = v103;
      v73 = v104;
      sub_1E5E1D34C(v103, v104, type metadata accessor for AppComposer);
      sub_1E5DF650C(v64, &v119);
      v95 = *a3;
      v96 = a3[3];
      v97 = a3[5];
      v98 = a3[7];
      v99 = a3[9];
      v74 = (v67 + 47) & 0xFFFFFFFFFFFFFFF8;
      v75 = v74 + 80;
      v76 = swift_allocObject();
      sub_1E5E1FA80(v73, v76 + v65);
      sub_1E5DF599C(&v119, v76 + v67);
      v77 = (v76 + v74);
      v78 = *(a3 + 3);
      v77[2] = *(a3 + 2);
      v77[3] = v78;
      v77[4] = *(a3 + 4);
      v79 = *(a3 + 1);
      *v77 = *a3;
      v77[1] = v79;
      *(v76 + v75) = 2;
      v80 = v72;
      v81 = v106;
      sub_1E5E1D34C(v80, v106, v94);
      sub_1E5DF650C(v64, v118);
      v82 = swift_allocObject();
      sub_1E5E1FA80(v81, v82 + v65);
      sub_1E5DF599C(v118, v82 + v67);
      v83 = (v82 + v74);
      v84 = *(a3 + 3);
      v83[2] = *(a3 + 2);
      v83[3] = v84;
      v83[4] = *(a3 + 4);
      v85 = *(a3 + 1);
      *v83 = *a3;
      v83[1] = v85;
      *(v82 + v75) = 2;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v87 = sub_1E60731B0();
      v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v116 = v86;
      v117 = v87;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v116 = v88;
      v117 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v90 = v101;
      sub_1E65E20B8();
      v91 = v102;
      v92 = v108;
      (*(v102 + 16))(v109, v90, v108);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20);
      v93 = v111;
      sub_1E65E4138();
      sub_1E5E70EC8(v93, v113);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      sub_1E65E4138();
      sub_1E5DFE50C(v93, &qword_1ED073DC8, &qword_1E65EEE18);
      return (*(v91 + 8))(v90, v92);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v94 = type metadata accessor for AppComposer;
    v34 = a1;
    sub_1E5E1D34C(a1, v26, type metadata accessor for AppComposer);
    v35 = v105;
    sub_1E5DF650C(v105, &v120);
    v36 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v37 = (v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v36 + v20 + 55) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_1E5E1FA80(v26, v39 + v36);
    sub_1E5DF599C(&v120, v39 + v37);
    *(v39 + v37 + 40) = 2;
    v100 = v39;
    v40 = (v39 + v38);
    v41 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v40 = 0;
    v40[1] = 0;
    *v41 = 0;
    v41[1] = 0;
    v42 = v34;
    v43 = v104;
    v44 = v94;
    sub_1E5E1D34C(v42, v104, v94);
    sub_1E5DF650C(v35, &v119);
    v95 = *a3;
    v96 = a3[3];
    v97 = a3[5];
    v98 = a3[7];
    v99 = a3[9];
    v45 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1E5E1FA80(v43, v46 + v36);
    sub_1E5DF599C(&v119, v46 + v37);
    v47 = (v46 + v45);
    v48 = *(a3 + 3);
    v47[2] = *(a3 + 2);
    v47[3] = v48;
    v47[4] = *(a3 + 4);
    v49 = *(a3 + 1);
    *v47 = *a3;
    v47[1] = v49;
    *(v46 + v45 + 80) = 2;
    v50 = v106;
    sub_1E5E1D34C(v103, v106, v44);
    sub_1E5DF650C(v35, v118);
    v51 = swift_allocObject();
    sub_1E5E1FA80(v50, v51 + v36);
    sub_1E5DF599C(v118, v51 + v37);
    v52 = (v51 + v45);
    v53 = *(a3 + 3);
    v52[2] = *(a3 + 2);
    v52[3] = v53;
    v52[4] = *(a3 + 4);
    v54 = *(a3 + 1);
    *v52 = *a3;
    v52[1] = v54;
    *(v51 + v45 + 80) = 2;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
    v56 = sub_1E60731B0();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
    v116 = v55;
    v117 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v116 = v57;
    v117 = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v101;
    sub_1E65E1F38();
    v60 = v102;
    v61 = v114;
    (*(v102 + 16))(v109, v59, v114);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20);
    v62 = v111;
    sub_1E65E4138();
    sub_1E5E70EC8(v62, v113);
    swift_storeEnumTagMultiPayload();
    sub_1E6071CE8();
    sub_1E65E4138();
    sub_1E5DFE50C(v62, &qword_1ED073DC8, &qword_1E65EEE18);
    return (*(v60 + 8))(v59, v61);
  }

  return result;
}

uint64_t sub_1E6070520@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a3;
  v190 = a1;
  v185 = a5;
  v186 = a2;
  v6 = a4[1];
  v170 = *a4;
  v169 = v6;
  v7 = a4[3];
  v172 = a4[2];
  v171 = v7;
  v8 = a4[5];
  v176 = a4[4];
  v177 = v8;
  v9 = a4[7];
  v178 = a4[6];
  v175 = v9;
  v10 = a4[9];
  v174 = a4[8];
  v173 = v10;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  v11 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v144 - v12;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v156 = *(v158 - 8);
  v13 = *(v156 + 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v144 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  v15 = *(*(v159 - 1) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v144 - v16;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v17 = *(*(v182 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v182);
  v162 = (&v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v157 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v144 - v22;
  v168 = sub_1E65D76F8();
  v167 = *(v168 - 8);
  v23 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = v24;
  v187 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppComposer();
  v26 = v25 - 8;
  v164 = *(v25 - 8);
  v27 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v165 = *(v28 - 8);
  v29 = *(v165 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v144 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v144 - v34;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v36 = *(*(v179 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v179);
  v39 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v144 - v43;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v45 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v48 = &v144 - v47;
  v49 = *(v46 + *(v26 + 28) + 8);
  v180 = v48;
  v163 = 0x80000001E6611D30;
  if (v49 < 2)
  {
    v165 = type metadata accessor for AppComposer;
    v50 = v188;
    sub_1E5E1D34C(v46, v188, type metadata accessor for AppComposer);
    sub_1E5DF650C(v186, &v191);
    v147 = *a4;
    v148 = a4[3];
    v149 = a4[5];
    v150 = a4[7];
    v151 = a4[9];
    v51 = *(v164 + 80);
    v52 = (v51 + 16) & ~v51;
    v53 = v51 | 7;
    v54 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v146 = v54;
    v164 = v52 + v27;
    v55 = (v52 + v27 + 55) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v152 = v56;
    sub_1E5E1FA80(v50, v56 + v52);
    sub_1E5DF599C(&v191, v56 + v54);
    *(v56 + v54 + 40) = 1;
    v57 = (v56 + v55);
    *v57 = 0xD000000000000014;
    v57[1] = v163;
    v58 = (v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
    v59 = *(a4 + 4);
    v58[3] = *(a4 + 3);
    v58[4] = v59;
    v60 = *(a4 + 2);
    v58[1] = *(a4 + 1);
    v58[2] = v60;
    *v58 = *a4;
    v61 = v190;
    v62 = v50;
    v63 = v165;
    sub_1E5E1D34C(v190, v50, v165);
    v154 = v53;
    v163 = swift_allocObject();
    v153 = v52;
    sub_1E5E1FA80(v50, v163 + v52);
    sub_1E5E1D34C(v61, v50, v63);
    sub_1E5DF650C(v186, &v191);
    v64 = v167;
    v186 = *(v167 + 16);
    v65 = v168;
    v186(v187, v189, v168);
    v66 = v146;
    v67 = (v146 + 47) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + *(v64 + 80) + 80) & ~*(v64 + 80);
    v69 = swift_allocObject();
    sub_1E5E1FA80(v62, v69 + v52);
    sub_1E5DF599C(&v191, v69 + v66);
    v70 = (v69 + v67);
    v71 = *(a4 + 3);
    v70[2] = *(a4 + 2);
    v70[3] = v71;
    v70[4] = *(a4 + 4);
    v72 = *(a4 + 1);
    *v70 = *a4;
    v70[1] = v72;
    v73 = v187;
    (*(v64 + 32))(v69 + v68, v187, v65);
    v186(v73, v189, v65);
    type metadata accessor for ArtworkDescriptor();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v168 = type metadata accessor for ItemMetrics();
    v167 = type metadata accessor for SectionMetrics();
    v166 = type metadata accessor for ViewDescriptor();
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v74 = v155;
    sub_1E65E2448();
    v75 = sub_1E65E2DA8();
    v76 = v169;
    if ((v75 & 1) == 0)
    {
      v76 = 0;
    }

    v77 = v170;
    if ((v75 & 1) == 0)
    {
      v77 = 0;
    }

    *&v191 = v77;
    *(&v191 + 1) = v76;
    v78 = v173;
    if ((v75 & 1) == 0)
    {
      v78 = 0;
    }

    v79 = v171;
    if ((v75 & 1) == 0)
    {
      v79 = 0;
    }

    v80 = v172;
    if ((v75 & 1) == 0)
    {
      v80 = 0;
    }

    v192 = v80;
    v193 = v79;
    v81 = v174;
    if ((v75 & 1) == 0)
    {
      v81 = 0;
    }

    v82 = v175;
    if ((v75 & 1) == 0)
    {
      v82 = 0;
    }

    v83 = v177;
    if ((v75 & 1) == 0)
    {
      v83 = 0;
    }

    v84 = v176;
    if ((v75 & 1) == 0)
    {
      v84 = 0;
    }

    v194 = v84;
    v195 = v83;
    v85 = v178;
    if ((v75 & 1) == 0)
    {
      v85 = 0;
    }

    v196 = v85;
    v197 = v82;
    v198 = v81;
    v199 = v78;
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
    v86 = v160;
    v87 = v158;
    sub_1E630FFE8(&v191, v158, v160);
    (*(v156 + 1))(v74, v87);
    v88 = v188;
    sub_1E5E1D34C(v190, v188, v165);
    v89 = swift_allocObject();
    sub_1E5E1FA80(v88, v89 + v153);
    sub_1E6071EE4();
    v90 = v157;
    sub_1E6259D5C(sub_1E60730EC, v89, v159);

    sub_1E5DFE50C(v86, &qword_1ED073DF8, &unk_1E65FA440);
    sub_1E6071E58();
    v91 = v161;
    v92 = v182;
    sub_1E5FEE4C8(v90);
    sub_1E5DFE50C(v90, &unk_1ED077710, &qword_1E65EEE28);
    v93 = v162;
    sub_1E5FEE4C8(v91);
    sub_1E6072098();
    v94 = v184;
    sub_1E62DFC6C(v93, v92);
    sub_1E6071DCC();
    v95 = v180;
    sub_1E62DFC6C(v94, v183);
    sub_1E5DFE50C(v94, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v93, &unk_1ED077710, &qword_1E65EEE28);
    sub_1E5DFE50C(v91, &unk_1ED077710, &qword_1E65EEE28);
    v96 = v95;
LABEL_45:
    sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    sub_1E5FEE4C8(v96);
    return sub_1E5DFE50C(v96, &qword_1ED073DA8, &unk_1E65FA550);
  }

  v155 = v31;
  v97 = v186;
  v156 = v42;
  v157 = v28;
  v158 = v32;
  v159 = v35;
  v160 = v44;
  v161 = v39;
  v98 = v188;
  if (v49 == 3)
  {
    v162 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v46, v188, type metadata accessor for AppComposer);
    v99 = v97;
    sub_1E5DF650C(v97, &v191);
    v147 = *a4;
    v148 = a4[3];
    v149 = a4[5];
    v150 = a4[7];
    v151 = a4[9];
    v100 = *(v164 + 80);
    v101 = (v100 + 16) & ~v100;
    v102 = v100 | 7;
    v164 = v101 + v27;
    v103 = (v101 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v146 = v103;
    v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
    v145 = v104;
    v105 = swift_allocObject();
    v152 = v105;
    sub_1E5E1FA80(v98, v105 + v101);
    sub_1E5DF599C(&v191, v105 + v103);
    v106 = (v105 + v104);
    *v106 = 0xD000000000000014;
    v106[1] = v163;
    v107 = v105 + ((v104 + 23) & 0xFFFFFFFFFFFFFFF8);
    v108 = *(a4 + 4);
    *(v107 + 48) = *(a4 + 3);
    *(v107 + 64) = v108;
    v109 = *(a4 + 2);
    *(v107 + 16) = *(a4 + 1);
    *(v107 + 32) = v109;
    *v107 = *a4;
    *(v107 + 80) = 1;
    v110 = v190;
    v111 = v162;
    sub_1E5E1D34C(v190, v98, v162);
    v154 = v102;
    v163 = swift_allocObject();
    v112 = v101;
    v153 = v101;
    sub_1E5E1FA80(v98, v163 + v101);
    sub_1E5E1D34C(v110, v98, v111);
    sub_1E5DF650C(v99, &v191);
    v113 = v167;
    v186 = *(v167 + 16);
    v114 = v187;
    v115 = v168;
    v186(v187, v189, v168);
    v116 = v145;
    v117 = (v145 + *(v113 + 80) + 80) & ~*(v113 + 80);
    v118 = swift_allocObject();
    sub_1E5E1FA80(v98, v118 + v112);
    sub_1E5DF599C(&v191, v118 + v146);
    v119 = (v118 + v116);
    v120 = *(a4 + 3);
    v119[2] = *(a4 + 2);
    v119[3] = v120;
    v119[4] = *(a4 + 4);
    v121 = *(a4 + 1);
    *v119 = *a4;
    v119[1] = v121;
    (*(v113 + 32))(v118 + v117, v114, v115);
    v186(v114, v189, v115);
    type metadata accessor for ArtworkDescriptor();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v168 = type metadata accessor for ItemMetrics();
    v167 = type metadata accessor for SectionMetrics();
    v166 = type metadata accessor for ViewDescriptor();
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v122 = v155;
    sub_1E65E1EB8();
    v123 = sub_1E65E2DA8();
    v124 = v170;
    if ((v123 & 1) == 0)
    {
      v124 = 0;
    }

    v125 = v169;
    if ((v123 & 1) == 0)
    {
      v125 = 0;
    }

    *&v191 = v124;
    *(&v191 + 1) = v125;
    v126 = v172;
    if ((v123 & 1) == 0)
    {
      v126 = 0;
    }

    v127 = v171;
    if ((v123 & 1) == 0)
    {
      v127 = 0;
    }

    v128 = v176;
    if ((v123 & 1) == 0)
    {
      v128 = 0;
    }

    v192 = v126;
    v193 = v127;
    v129 = v177;
    if ((v123 & 1) == 0)
    {
      v129 = 0;
    }

    v130 = v178;
    if ((v123 & 1) == 0)
    {
      v130 = 0;
    }

    v131 = v175;
    if ((v123 & 1) == 0)
    {
      v131 = 0;
    }

    v132 = v174;
    if ((v123 & 1) == 0)
    {
      v132 = 0;
    }

    v194 = v128;
    v195 = v129;
    v133 = v173;
    if ((v123 & 1) == 0)
    {
      v133 = 0;
    }

    v196 = v130;
    v197 = v131;
    v198 = v132;
    v199 = v133;
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
    v134 = v159;
    v135 = v157;
    sub_1E630FFE8(&v191, v157, v159);
    (*(v165 + 1))(v122, v135);
    v136 = v188;
    sub_1E5E1D34C(v190, v188, v162);
    v137 = swift_allocObject();
    sub_1E5E1FA80(v136, v137 + v153);
    sub_1E6072124();
    v138 = v156;
    sub_1E6259D5C(sub_1E60730EC, v137, v158);

    sub_1E5DFE50C(v134, &unk_1ED077720, &qword_1E65EEE40);
    sub_1E6072098();
    v139 = v160;
    v140 = v179;
    sub_1E5FEE4C8(v138);
    sub_1E5DFE50C(v138, &qword_1ED073E10, &unk_1E65FA460);
    v141 = v161;
    sub_1E5FEE4C8(v139);
    sub_1E6071E58();
    v142 = v184;
    sub_1E62DFB74(v141, v182, v140);
    sub_1E6071DCC();
    v96 = v180;
    sub_1E62DFC6C(v142, v183);
    sub_1E5DFE50C(v142, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v141, &qword_1ED073E10, &unk_1E65FA460);
    sub_1E5DFE50C(v139, &qword_1ED073E10, &unk_1E65FA460);
    goto LABEL_45;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

unint64_t sub_1E6071B80()
{
  result = qword_1EE2D4D38;
  if (!qword_1EE2D4D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DB0, &qword_1E65EEE00);
    sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08);
    sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D38);
  }

  return result;
}

uint64_t sub_1E6071C64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6071CE8()
{
  result = qword_1EE2D4D50;
  if (!qword_1EE2D4D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DC8, &qword_1E65EEE18);
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D50);
  }

  return result;
}

unint64_t sub_1E6071DCC()
{
  result = qword_1ED073DE0;
  if (!qword_1ED073DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DE8, &unk_1E65FA430);
    sub_1E6071E58();
    sub_1E6072098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073DE0);
  }

  return result;
}

unint64_t sub_1E6071E58()
{
  result = qword_1ED077C50;
  if (!qword_1ED077C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077710, &qword_1E65EEE28);
    sub_1E6071EE4();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C50);
  }

  return result;
}

unint64_t sub_1E6071EE4()
{
  result = qword_1ED073DF0;
  if (!qword_1ED073DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DF8, &unk_1E65FA440);
    sub_1E6071F9C();
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073DF0);
  }

  return result;
}

unint64_t sub_1E6071F9C()
{
  result = qword_1ED077C60;
  if (!qword_1ED077C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E00, &qword_1E65EEE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077700, &qword_1E65EEE38);
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C60);
  }

  return result;
}

unint64_t sub_1E6072098()
{
  result = qword_1ED073E08;
  if (!qword_1ED073E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E10, &unk_1E65FA460);
    sub_1E6072124();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E08);
  }

  return result;
}

unint64_t sub_1E6072124()
{
  result = qword_1ED077C30;
  if (!qword_1ED077C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077720, &qword_1E65EEE40);
    sub_1E60721DC();
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C30);
  }

  return result;
}

unint64_t sub_1E60721DC()
{
  result = qword_1ED073E18;
  if (!qword_1ED073E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077C40, &unk_1E65FA8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E20, &unk_1E65FA450);
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E18);
  }

  return result;
}

unint64_t sub_1E6072334()
{
  result = qword_1ED073E38;
  if (!qword_1ED073E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D58, &qword_1E65EEDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D50, &qword_1E65EEDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D48, &qword_1E65EEDA0);
    sub_1E5FED46C(&qword_1ED073E30, &qword_1ED073D48, &qword_1E65EEDA0);
    sub_1E5FEAE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E38);
  }

  return result;
}

unint64_t sub_1E6072488()
{
  result = qword_1ED073E40;
  if (!qword_1ED073E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D60, &qword_1E65EEDB8);
    sub_1E6072334();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E40);
  }

  return result;
}

unint64_t sub_1E6072514()
{
  result = qword_1ED073E48;
  if (!qword_1ED073E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D88, &qword_1E65EEDE0);
    sub_1E60725A0();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E48);
  }

  return result;
}

unint64_t sub_1E60725A0()
{
  result = qword_1ED073E50;
  if (!qword_1ED073E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D80, &qword_1E65EEDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D78, &qword_1E65EEDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D70, &qword_1E65EEDC8);
    sub_1E5FED46C(&qword_1ED073E58, &qword_1ED073D70, &qword_1E65EEDC8);
    sub_1E5FEAE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E50);
  }

  return result;
}

unint64_t sub_1E60726F4()
{
  result = qword_1ED073E60;
  if (!qword_1ED073E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E6072514();
    sub_1E6072488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E60);
  }

  return result;
}

uint64_t sub_1E6072798(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

uint64_t sub_1E6072838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  return sub_1E634C394(v2, v4, a1);
}

unint64_t sub_1E60728B0()
{
  result = qword_1ED077B80;
  if (!qword_1ED077B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B70, &unk_1E65FA820);
    sub_1E607293C();
    sub_1E6072E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077B80);
  }

  return result;
}

unint64_t sub_1E607293C()
{
  result = qword_1ED073E70;
  if (!qword_1ED073E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B90, &qword_1E65EEE48);
    sub_1E60729C8();
    sub_1E6072AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E70);
  }

  return result;
}

unint64_t sub_1E60729C8()
{
  result = qword_1EE2D4D20;
  if (!qword_1EE2D4D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BA0, &unk_1E65FA830);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
    sub_1E5FED46C(&qword_1EE2D6BF0, &unk_1ED077BB0, &qword_1E65EEE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D20);
  }

  return result;
}

unint64_t sub_1E6072AAC()
{
  result = qword_1ED073E78;
  if (!qword_1ED073E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BC0, &unk_1E65FA840);
    sub_1E60733D0(&qword_1EE2D64E8, MEMORY[0x1E699E888]);
    sub_1E6072B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E78);
  }

  return result;
}

unint64_t sub_1E6072B68()
{
  result = qword_1ED077BD0;
  if (!qword_1ED077BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E80, &qword_1E65EEE58);
    sub_1E6072BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077BD0);
  }

  return result;
}

unint64_t sub_1E6072BEC()
{
  result = qword_1ED077BE0;
  if (!qword_1ED077BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E88, &unk_1E65FA850);
    sub_1E6072CF0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BF0, &qword_1E65EEE68);
    sub_1E5FED46C(&qword_1EE2D65F0, &unk_1ED077BF0, &qword_1E65EEE68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077BE0);
  }

  return result;
}

unint64_t sub_1E6072CF0()
{
  result = qword_1EE2D4CA0;
  if (!qword_1EE2D4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E90, &qword_1E65EEE60);
    sub_1E6072DAC();
    sub_1E60733D0(&qword_1EE2D6280, MEMORY[0x1E699F228]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CA0);
  }

  return result;
}

unint64_t sub_1E6072DAC()
{
  result = qword_1EE2D4D40;
  if (!qword_1EE2D4D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E98, &unk_1E65FA860);
    sub_1E60733D0(&qword_1EE2D6280, MEMORY[0x1E699F228]);
    sub_1E60733D0(&qword_1EE2D6288, MEMORY[0x1E699F218]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D40);
  }

  return result;
}

unint64_t sub_1E6072E98()
{
  result = qword_1ED077C00;
  if (!qword_1ED077C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EA0, &unk_1E65FA870);
    sub_1E6072F24();
    sub_1E6073008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C00);
  }

  return result;
}

unint64_t sub_1E6072F24()
{
  result = qword_1ED077C10;
  if (!qword_1ED077C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EA8, &qword_1E65EEE70);
    sub_1E5FED46C(&unk_1ED077C20, &qword_1ED073EB0, &unk_1E65FA880);
    sub_1E5FED46C(&qword_1EE2D6240, &qword_1ED073EB8, &qword_1E65EEE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C10);
  }

  return result;
}

unint64_t sub_1E6073008()
{
  result = qword_1EE2D4D60;
  if (!qword_1EE2D4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EC0, &unk_1E65FA890);
    sub_1E5FED46C(&qword_1EE2D6540, &qword_1ED073EC8, &qword_1E65EEE80);
    sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D60);
  }

  return result;
}

uint64_t sub_1E6073104(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E60731B0()
{
  result = qword_1EE2D4C48;
  if (!qword_1EE2D4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
    sub_1E603BAA0();
    sub_1E603C7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C48);
  }

  return result;
}

uint64_t sub_1E60732C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E60733D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6073418(uint64_t a1)
{
  v2 = type metadata accessor for RemoteParticipantScope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_42Tm()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v118 = *(*(v122 - 1) + 64);
  v119 = (v120 + 16) & ~v120;
  v121 = v0;
  v115 = v0 + v119;
  v1 = *(v0 + v119);

  v2 = (v0 + v119 + v122[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v117 = type metadata accessor for AccountService();
  v116 = *(v117[-1].Description + 1);
  v116(&v2[v5], v117);
  v6 = v4[7];
  v114 = type metadata accessor for AppStateService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v6], v114);
  v7 = v4[8];
  v112 = type metadata accessor for ArchivedSessionService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v7], v112);
  v8 = v4[9];
  v110 = type metadata accessor for AssetService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v8], v110);
  v9 = v4[10];
  v108 = type metadata accessor for AwardsService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v9], v108);
  v10 = v4[11];
  v106 = type metadata accessor for BookmarkService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v10], v106);
  v11 = v4[12];
  v104 = type metadata accessor for CatalogService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v11], v104);
  v12 = v4[13];
  v102 = type metadata accessor for ConfigurationService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v12], v102);
  v13 = v4[14];
  v100 = type metadata accessor for ContentAvailabilityService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v13], v100);
  v14 = v4[15];
  v98 = type metadata accessor for EngagementService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v14], v98);
  v15 = v4[16];
  v96 = type metadata accessor for HealthDataService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v15], v96);
  v16 = v4[17];
  v94 = type metadata accessor for InteropService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v16], v94);
  v17 = v4[18];
  v92 = type metadata accessor for LocalizationService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v17], v92);
  v18 = v4[19];
  v90 = type metadata accessor for MarketingService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v18], v90);
  v19 = v4[20];
  v88 = type metadata accessor for MetricService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v19], v88);
  v20 = v4[21];
  v86 = type metadata accessor for PersonalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v20], v86);
  v21 = v4[22];
  v84 = type metadata accessor for PlayerService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v21], v84);
  v22 = v4[23];
  v82 = type metadata accessor for PrivacyPreferenceService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v22], v82);
  v23 = v4[24];
  v80 = type metadata accessor for RecommendationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v23], v80);
  v24 = v4[25];
  v78 = type metadata accessor for RemoteBrowsingService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v24], v78);
  v25 = v4[26];
  v76 = type metadata accessor for SearchService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v25], v76);
  v26 = v4[27];
  v74 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v26], v74);
  v27 = v4[28];
  v67 = type metadata accessor for SessionService();
  v72 = *(v67[-1].Description + 1);
  v72(&v2[v27], v67);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v71 = *(v29[-1].Description + 1);
  v71(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v70 = *(v31[-1].Description + 1);
  v70(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v69 = *(v33[-1].Description + 1);
  v69(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v68 = *(QueueService[-1].Description + 1);
  v68(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v66 = *(v42[-1].Description + 1);
  v66(&v2[v41], v42);
  v43 = *(v115 + v122[6]);

  v44 = (v115 + v122[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v116(&v47[v4[6]], v117);
  v113(&v47[v4[7]], v114);
  v111(&v47[v4[8]], v112);
  v109(&v47[v4[9]], v110);
  v107(&v47[v4[10]], v108);
  v105(&v47[v4[11]], v106);
  v103(&v47[v4[12]], v104);
  v101(&v47[v4[13]], v102);
  v99(&v47[v4[14]], v100);
  v97(&v47[v4[15]], v98);
  v95(&v47[v4[16]], v96);
  v93(&v47[v4[17]], v94);
  v91(&v47[v4[18]], v92);
  v89(&v47[v4[19]], v90);
  v87(&v47[v4[20]], v88);
  v85(&v47[v4[21]], v86);
  v83(&v47[v4[22]], v84);
  v81(&v47[v4[23]], v82);
  v79(&v47[v4[24]], v80);
  v77(&v47[v4[25]], v78);
  v75(&v47[v4[26]], v76);
  v73(&v47[v4[27]], v74);
  v72(&v47[v4[28]], v67);
  v71(&v47[v4[29]], v29);
  v70(&v47[v4[30]], v31);
  v69(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v68(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v66(&v47[v4[36]], v42);
  v54 = *(v115 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v115 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v115 + v122[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v121 + v56));
  v58 = *(v121 + v57 + 8);

  v59 = (v121 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  return swift_deallocObject();
}

uint64_t sub_1E607419C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5 + 80);

  return sub_1E620AA8C((v0 + v2), v0 + v3, v7, v8, (v0 + v5), v9);
}

uint64_t objectdestroy_55Tm()
{
  v121 = type metadata accessor for AppComposer();
  v119 = *(*(v121 - 1) + 80);
  v117 = *(*(v121 - 1) + 64);
  v118 = (v119 + 16) & ~v119;
  v120 = v0;
  v114 = v0 + v118;
  v1 = *(v0 + v118);

  v2 = (v0 + v118 + v121[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v116 = type metadata accessor for AccountService();
  v115 = *(v116[-1].Description + 1);
  v115(&v2[v5], v116);
  v6 = v4[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v6], v113);
  v7 = v4[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v7], v111);
  v8 = v4[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v8], v109);
  v9 = v4[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v9], v107);
  v10 = v4[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v10], v105);
  v11 = v4[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v11], v103);
  v12 = v4[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v12], v101);
  v13 = v4[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v13], v99);
  v14 = v4[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v14], v97);
  v15 = v4[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v15], v95);
  v16 = v4[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v16], v93);
  v17 = v4[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v17], v91);
  v18 = v4[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v18], v89);
  v19 = v4[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v19], v87);
  v20 = v4[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v20], v85);
  v21 = v4[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v21], v83);
  v22 = v4[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v22], v81);
  v23 = v4[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v23], v79);
  v24 = v4[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v24], v77);
  v25 = v4[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v25], v75);
  v26 = v4[27];
  v73 = type metadata accessor for ServiceSubscriptionService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v26], v73);
  v27 = v4[28];
  v66 = type metadata accessor for SessionService();
  v71 = *(v66[-1].Description + 1);
  v71(&v2[v27], v66);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v70 = *(v29[-1].Description + 1);
  v70(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v69 = *(v31[-1].Description + 1);
  v69(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v68 = *(v33[-1].Description + 1);
  v68(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v65 = *(v42[-1].Description + 1);
  v65(&v2[v41], v42);
  v43 = *(v114 + v121[6]);

  v44 = (v114 + v121[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v115(&v47[v4[6]], v116);
  v112(&v47[v4[7]], v113);
  v110(&v47[v4[8]], v111);
  v108(&v47[v4[9]], v109);
  v106(&v47[v4[10]], v107);
  v104(&v47[v4[11]], v105);
  v102(&v47[v4[12]], v103);
  v100(&v47[v4[13]], v101);
  v98(&v47[v4[14]], v99);
  v96(&v47[v4[15]], v97);
  v94(&v47[v4[16]], v95);
  v92(&v47[v4[17]], v93);
  v90(&v47[v4[18]], v91);
  v88(&v47[v4[19]], v89);
  v86(&v47[v4[20]], v87);
  v84(&v47[v4[21]], v85);
  v82(&v47[v4[22]], v83);
  v80(&v47[v4[23]], v81);
  v78(&v47[v4[24]], v79);
  v76(&v47[v4[25]], v77);
  v74(&v47[v4[26]], v75);
  v72(&v47[v4[27]], v73);
  v71(&v47[v4[28]], v66);
  v70(&v47[v4[29]], v29);
  v69(&v47[v4[30]], v31);
  v68(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v67(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v65(&v47[v4[36]], v42);
  v54 = *(v114 + v121[8]);
  swift_unknownObjectRelease();
  if (*(v114 + v121[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v114 + v121[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + v117 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v120 + ((v118 + v117 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v57 = *(v120 + v56 + 8);

  v58 = (v120 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8));
  v59 = *v58;
  swift_unknownObjectRelease();
  v60 = v58[3];

  v61 = v58[5];

  v62 = v58[7];

  v63 = v58[9];

  return swift_deallocObject();
}

uint64_t sub_1E6074F70()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4 + 40);
  v8 = (v0 + v5);
  v9 = *v8;
  v10 = v8[1];

  return sub_1E620DAB4((v0 + v2), v0 + v4, v7, v9, v10, (v0 + v6));
}

uint64_t sub_1E607501C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_48Tm()
{
  v127 = type metadata accessor for AppComposer();
  v122 = *(*(v127 - 1) + 80);
  v120 = *(*(v127 - 1) + 64);
  v1 = sub_1E65D76F8();
  v124 = *(v1 - 8);
  v125 = v1;
  v119 = *(v124 + 80);
  v123 = *(v124 + 64);
  v126 = v0;
  v121 = (v122 + 16) & ~v122;
  v116 = v0 + v121;
  v2 = *(v0 + v121);

  v3 = (v0 + v121 + v127[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v3[v6], v118);
  v7 = v5[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v3[v7], v115);
  v8 = v5[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v8], v113);
  v9 = v5[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v3[v9], v111);
  v10 = v5[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v10], v109);
  v11 = v5[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v11], v107);
  v12 = v5[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v12], v105);
  v13 = v5[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v13], v103);
  v14 = v5[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v14], v101);
  v15 = v5[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v15], v99);
  v16 = v5[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v16], v97);
  v17 = v5[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v17], v95);
  v18 = v5[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v18], v93);
  v19 = v5[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v19], v91);
  v20 = v5[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v20], v89);
  v21 = v5[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v21], v87);
  v22 = v5[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v22], v85);
  v23 = v5[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v23], v83);
  v24 = v5[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v24], v81);
  v25 = v5[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v25], v79);
  v26 = v5[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v26], v77);
  v27 = v5[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v27], v75);
  v28 = v5[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v3[v28], v68);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v72 = *(v30[-1].Description + 1);
  v72(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v71 = *(v32[-1].Description + 1);
  v71(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v70 = *(v34[-1].Description + 1);
  v70(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v67 = *(v43[-1].Description + 1);
  v67(&v3[v42], v43);
  v44 = *(v116 + v127[6]);

  v45 = (v116 + v127[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v117(&v48[v5[6]], v118);
  v114(&v48[v5[7]], v115);
  v112(&v48[v5[8]], v113);
  v110(&v48[v5[9]], v111);
  v108(&v48[v5[10]], v109);
  v106(&v48[v5[11]], v107);
  v104(&v48[v5[12]], v105);
  v102(&v48[v5[13]], v103);
  v100(&v48[v5[14]], v101);
  v98(&v48[v5[15]], v99);
  v96(&v48[v5[16]], v97);
  v94(&v48[v5[17]], v95);
  v92(&v48[v5[18]], v93);
  v90(&v48[v5[19]], v91);
  v88(&v48[v5[20]], v89);
  v86(&v48[v5[21]], v87);
  v84(&v48[v5[22]], v85);
  v82(&v48[v5[23]], v83);
  v80(&v48[v5[24]], v81);
  v78(&v48[v5[25]], v79);
  v76(&v48[v5[26]], v77);
  v74(&v48[v5[27]], v75);
  v73(&v48[v5[28]], v68);
  v72(&v48[v5[29]], v30);
  v71(&v48[v5[30]], v32);
  v70(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v69(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v67(&v48[v5[36]], v43);
  v55 = *(v116 + v127[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v127[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v116 + v127[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v120 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + v119 + 80) & ~v119;
  __swift_destroy_boxed_opaque_existential_1((v126 + v57));
  v60 = (v126 + v58);
  v61 = *v60;
  swift_unknownObjectRelease();
  v62 = v60[3];

  v63 = v60[5];

  v64 = v60[7];

  v65 = v60[9];

  (*(v124 + 8))(v126 + v59, v125);

  return swift_deallocObject();
}

uint64_t sub_1E6075E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = v3 + ((v9 + *(v10 + 80) + 80) & ~*(v10 + 80));

  return a3(a1, a2, v3 + v7, v3 + v8, v3 + v9, v11);
}

uint64_t sub_1E6075F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v14 + 80);

  return sub_1E6300A4C(a1, a2, a3, a4, v5 + v12, v5 + v13, v14, v15, a5);
}

uint64_t sub_1E6076050(uint64_t (*a1)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + v5 + 40);

  return a1(v1 + v3, v1 + v5, v13, v9, v10, v11, v12);
}

uint64_t sub_1E6076114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t))
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 80);

  return a4(a1, a2, a3, v4 + v9, v4 + v10);
}

uint64_t objectdestroy_70Tm()
{
  v120 = type metadata accessor for AppComposer();
  v118 = *(*(v120 - 1) + 80);
  v116 = *(*(v120 - 1) + 64);
  v117 = (v118 + 16) & ~v118;
  v119 = v0;
  v113 = v0 + v117;
  v1 = *(v0 + v117);

  v2 = (v0 + v117 + v120[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v5], v115);
  v6 = v4[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v6], v112);
  v7 = v4[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v7], v110);
  v8 = v4[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v8], v108);
  v9 = v4[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v9], v106);
  v10 = v4[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v10], v104);
  v11 = v4[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v11], v102);
  v12 = v4[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v12], v100);
  v13 = v4[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v13], v98);
  v14 = v4[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v14], v96);
  v15 = v4[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v15], v94);
  v16 = v4[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v16], v92);
  v17 = v4[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v17], v90);
  v18 = v4[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v18], v88);
  v19 = v4[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v19], v86);
  v20 = v4[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v20], v84);
  v21 = v4[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v21], v82);
  v22 = v4[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v22], v80);
  v23 = v4[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v23], v78);
  v24 = v4[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v24], v76);
  v25 = v4[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v25], v74);
  v26 = v4[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v26], v72);
  v27 = v4[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(&v2[v27], v65);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v69 = *(v29[-1].Description + 1);
  v69(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v68 = *(v31[-1].Description + 1);
  v68(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v67 = *(v33[-1].Description + 1);
  v67(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v64 = *(v42[-1].Description + 1);
  v64(&v2[v41], v42);
  v43 = *(v113 + v120[6]);

  v44 = (v113 + v120[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v114(&v47[v4[6]], v115);
  v111(&v47[v4[7]], v112);
  v109(&v47[v4[8]], v110);
  v107(&v47[v4[9]], v108);
  v105(&v47[v4[10]], v106);
  v103(&v47[v4[11]], v104);
  v101(&v47[v4[12]], v102);
  v99(&v47[v4[13]], v100);
  v97(&v47[v4[14]], v98);
  v95(&v47[v4[15]], v96);
  v93(&v47[v4[16]], v94);
  v91(&v47[v4[17]], v92);
  v89(&v47[v4[18]], v90);
  v87(&v47[v4[19]], v88);
  v85(&v47[v4[20]], v86);
  v83(&v47[v4[21]], v84);
  v81(&v47[v4[22]], v82);
  v79(&v47[v4[23]], v80);
  v77(&v47[v4[24]], v78);
  v75(&v47[v4[25]], v76);
  v73(&v47[v4[26]], v74);
  v71(&v47[v4[27]], v72);
  v70(&v47[v4[28]], v65);
  v69(&v47[v4[29]], v29);
  v68(&v47[v4[30]], v31);
  v67(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v66(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v64(&v47[v4[36]], v42);
  v54 = *(v113 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v113 + v120[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v116 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v119 + v56));
  v58 = *(v119 + v57);
  swift_unknownObjectRelease();
  v59 = *(v119 + v57 + 24);

  v60 = *(v119 + v57 + 40);

  v61 = *(v119 + v57 + 56);

  v62 = *(v119 + v57 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E6076F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(type metadata accessor for AppComposer() - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6303ED4(a1, a2, a3, a4, a5, a6, v7 + v16, v7 + v17, a7, v7 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8), *(v7 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8) + 80));
}

uint64_t sub_1E60770EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_1E606F6A0(a1, a2, a3, v5 + v12, (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a4, a5);
}

uint64_t objectdestroy_96Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocObject();
}

uint64_t sub_1E607720C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for URLRoute()
{
  result = qword_1ED073F08;
  if (!qword_1ED073F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E607739C()
{
  result = _s8ResourceOMa();
  if (v1 <= 0x3F)
  {
    result = sub_1E65D74E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6077428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLRoute();
  v10 = *(v5 + 16);
  v10(a2 + *(v9 + 24), a1, v4);
  v10(v8, a1, v4);
  sub_1E648B700(v8, a2);
  v11 = sub_1E64A37AC();
  if (!*(v11 + 16) || (v12 = sub_1E6215038(1953460082, 0xE400000000000000), (v13 & 1) == 0))
  {

    v22 = xmmword_1E65EAE00;
    goto LABEL_6;
  }

  v14 = (*(v11 + 56) + 16 * v12);
  v15 = *v14;
  v16 = v14[1];

  RootItem.init(rawValue:)(v15, v16, &v22);
  v17 = *(&v22 + 1);
  if (*(&v22 + 1) == 6)
  {
LABEL_6:
    swift_beginAccess();
    v18 = qword_1ED075948;
    v17 = qword_1ED075950;
    sub_1E5E05374(qword_1ED075948, qword_1ED075950);
    goto LABEL_7;
  }

  v18 = v22;
LABEL_7:
  result = (*(v5 + 8))(a1, v4);
  v20 = (a2 + *(v9 + 20));
  *v20 = v18;
  v20[1] = v17;
  return result;
}

uint64_t sub_1E6077604(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F40, &qword_1E65EEFD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60780C4();
  sub_1E65E6DA8();
  LOBYTE(v17) = 0;
  _s8ResourceOMa();
  sub_1E6078240(&qword_1ED073F48, _s8ResourceOMa);
  sub_1E65E6B78();
  if (!v2)
  {
    v11 = type metadata accessor for URLRoute();
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16[15] = 1;
    sub_1E5E05374(v17, v13);
    sub_1E5DF6D3C();
    sub_1E65E6B78();
    sub_1E5E0476C(v17, v18);
    v14 = *(v11 + 24);
    LOBYTE(v17) = 2;
    sub_1E65D74E8();
    sub_1E6078240(&qword_1ED073F50, MEMORY[0x1E6968FB0]);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E607785C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = sub_1E65D74E8();
  v25 = *(v27 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s8ResourceOMa();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F20, &qword_1E65EEFD0);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v24 - v11;
  v13 = type metadata accessor for URLRoute();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E60780C4();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v19 = v28;
  v24 = v6;
  LOBYTE(v32) = 0;
  sub_1E6078240(&qword_1ED073F30, _s8ResourceOMa);
  v20 = v29;
  sub_1E65E6AD8();
  sub_1E6078118(v20, v16);
  v33 = 1;
  sub_1E5DF6CE4();
  sub_1E65E6AD8();
  *&v16[*(v13 + 20)] = v32;
  LOBYTE(v32) = 2;
  sub_1E6078240(&qword_1ED073F38, MEMORY[0x1E6968FB0]);
  v21 = v24;
  v22 = v27;
  sub_1E65E6AD8();
  (*(v19 + 8))(v12, v30);
  (*(v25 + 32))(&v16[*(v13 + 24)], v21, v22);
  sub_1E607817C(v16, v26);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1E60781E0(v16, type metadata accessor for URLRoute);
}

uint64_t sub_1E6077CCC()
{
  v1 = 1953460082;
  if (*v0 != 1)
  {
    v1 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_1E6077D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E60786B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6077D54(uint64_t a1)
{
  v2 = sub_1E60780C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6077D90(uint64_t a1)
{
  v2 = sub_1E60780C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6077DFC(uint64_t a1)
{
  sub_1E65E6D28();
  v3 = sub_1E648EFEC();
  v6 = *(v1 + *(a1 + 20));
  RootItem.rawValue.getter(v3);
  sub_1E65E5D78();

  v4 = *(a1 + 24);
  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6077ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E648EFEC();
  v7 = *(v2 + *(a2 + 20));
  RootItem.rawValue.getter(v4);
  sub_1E65E5D78();

  v5 = *(a2 + 24);
  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
  return sub_1E65E5B48();
}

uint64_t sub_1E6077FA0(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  v4 = sub_1E648EFEC();
  v7 = *(v2 + *(a2 + 20));
  RootItem.rawValue.getter(v4);
  sub_1E65E5D78();

  v5 = *(a2 + 24);
  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

unint64_t sub_1E60780C4()
{
  result = qword_1ED073F28;
  if (!qword_1ED073F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F28);
  }

  return result;
}

uint64_t sub_1E6078118(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResourceOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607817C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLRoute();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60781E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6078240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6078288(uint64_t a1, uint64_t a2)
{
  if ((sub_1E648FBE4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for URLRoute();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *v8;
  v10 = v8[1];
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v11 = 0xE600000000000000;
        v12 = 0x686372616573;
        if (v10 > 2)
        {
          goto LABEL_20;
        }

        break;
      case 4:
        v11 = 0xE600000000000000;
        v12 = 0x7478654E7075;
        if (v10 <= 2)
        {
          break;
        }

        goto LABEL_20;
      case 5:
        v11 = 0xE500000000000000;
        v12 = 0x736E616C70;
        if (v10 > 2)
        {
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x756F59726F66;
        if (v10 <= 2)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      if (v7 == 2)
      {
        v11 = 0xE700000000000000;
        v12 = 0x7972617262696CLL;
        if (v10 <= 2)
        {
          goto LABEL_28;
        }

LABEL_20:
        switch(v10)
        {
          case 3:
            v13 = 0xE600000000000000;
            if (v12 != 0x686372616573)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          case 4:
            v13 = 0xE600000000000000;
            if (v12 == 0x7478654E7075)
            {
              goto LABEL_40;
            }

LABEL_42:
            v15 = sub_1E65E6C18();

            if (v15)
            {
              goto LABEL_43;
            }

            return 0;
          case 5:
            v13 = 0xE500000000000000;
            if (v12 != 0x736E616C70)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
        }

LABEL_35:
        v14 = v12;
        MEMORY[0x1E694D7C0](v9, v10);
        v13 = 0xE90000000000003ALL;
        if (v14 == 0x7974696C61646F6DLL)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_17:
      MEMORY[0x1E694D7C0](*v6);
      v12 = 0x7974696C61646F6DLL;
      v11 = 0xE90000000000003ALL;
      if (v10 > 2)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    v11 = 0xE700000000000000;
    v12 = 0x65726F6C707865;
    if (v10 > 2)
    {
      goto LABEL_20;
    }
  }

LABEL_28:
  if (!v10)
  {
    v13 = 0xE700000000000000;
    if (v12 == 0x65726F6C707865)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (v10 == 1)
  {
    v13 = 0xE600000000000000;
    if (v12 != 0x756F59726F66)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v10 != 2)
  {
    goto LABEL_35;
  }

  v13 = 0xE700000000000000;
  if (v12 != 0x7972617262696CLL)
  {
    goto LABEL_42;
  }

LABEL_40:
  if (v11 != v13)
  {
    goto LABEL_42;
  }

LABEL_43:
  v16 = *(v4 + 24);

  return sub_1E65D7468();
}

unint64_t sub_1E60785B0()
{
  result = qword_1ED073F60;
  if (!qword_1ED073F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F60);
  }

  return result;
}

unint64_t sub_1E6078608()
{
  result = qword_1ED073F68;
  if (!qword_1ED073F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F68);
  }

  return result;
}

unint64_t sub_1E6078660()
{
  result = qword_1ED073F70;
  if (!qword_1ED073F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F70);
  }

  return result;
}

uint64_t sub_1E60786B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xED00004C5255676ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E60787D4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000) != 0)
  {
    return MEMORY[0x1EEE377C0](a1 & 1, a2, a3);
  }

  else
  {
    return MEMORY[0x1EEE377C8](a1 & 1, (a1 >> 8) & 1, a2, a3);
  }
}

uint64_t sub_1E60787FC@<X0>(unsigned __int8 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v3 = a1;
  v4 = sub_1E65E07B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v26 = v23 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v25 = v23 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v23 - v20;
  if (v3 > 1)
  {
    sub_1E65E0768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v5 + 8))(v11, v4);
    if (v24)
    {
      sub_1E65E0768();
    }

    else
    {
      sub_1E65E0778();
    }

    sub_1E65E0768();
    sub_1E65E0778();
    sub_1E65E0778();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v5 + 8))(v21, v4);
    if (v24)
    {
      sub_1E65E0768();
    }

    else
    {
      sub_1E65E0778();
    }

    sub_1E65E0778();
    sub_1E65E0768();
    sub_1E65E0778();
    sub_1E65E0778();
  }

  return sub_1E65E09E8();
}

uint64_t sub_1E6078BBC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AC8 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED0965D0);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071AA8 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096570;
    }

    else
    {
      if (qword_1ED071A90 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096528;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E6078E1C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AC0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED0965B8);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071AA0 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096558;
    }

    else
    {
      if (qword_1ED071A88 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096510;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E607907C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      if (qword_1ED071AB0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E65D7348();
      v9 = __swift_project_value_buffer(v8, qword_1ED096588);
      v10 = *(*(v8 - 8) + 16);

      return v10(a2, v9, v8);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    if (v11 > 1u)
    {
      if (qword_1ED071A98 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED096540;
    }

    else
    {
      if (qword_1ED071A80 != -1)
      {
        swift_once();
      }

      v3 = sub_1E65D7348();
      v4 = v3;
      v5 = qword_1ED0964F8;
    }

    v6 = __swift_project_value_buffer(v3, v5);
    return (*(*(v4 - 8) + 16))(a2, v6, v4);
  }

  return result;
}

uint64_t sub_1E60792DC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {
      v6 = *MEMORY[0x1E699DAA0];
      v7 = sub_1E65E0988();
      v8 = *(*(v7 - 8) + 104);

      return v8(a2, v6, v7);
    }

    else
    {
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    v3 = sub_1E65E0988();
    if (v9 > 1u)
    {
      v4 = MEMORY[0x1E699DAA0];
    }

    else
    {
      v4 = MEMORY[0x1E699DA98];
    }

    return (*(*(v3 - 8) + 104))(a2, *v4, v3);
  }

  return result;
}

uint64_t sub_1E6079494@<X0>(uint64_t a1@<X8>)
{
  v179 = a1;
  v1 = sub_1E65E07B8();
  v170 = *(v1 - 8);
  v171 = v1;
  v2 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v169 = v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E3068();
  v173 = *(v4 - 8);
  v174 = v4;
  v5 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v172 = v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E3168();
  v176 = *(v7 - 8);
  v177 = v7;
  v8 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v178 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v165 = v147 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v167 = v147 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v163 = v147 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v166 = v147 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v161 = v147 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v158 = v147 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v152 = v147 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v155 = v147 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v151 = v147 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v154 = v147 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v148 = v147 - v34;
  v175 = sub_1E65E05C8();
  v180 = *(v175 - 8);
  v35 = *(v180 + 64);
  v36 = MEMORY[0x1EEE9AC00](v175);
  v164 = v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v162 = v147 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v160 = v147 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v150 = v147 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = v147 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v147 - v47;
  v49 = sub_1E65E3088();
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v159 = v147 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v157 = v147 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v156 = v147 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v149 = v147 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v147[2] = v147 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v147[1] = v147 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F80, &unk_1E65EF100);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v153 = v147 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = v147 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = v147 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = v147 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72);
  v77 = v147 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v79 = v147 - v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  if (v181 > 2u)
  {
    if (v181 == 3)
    {
      v107 = v169;
      sub_1E65E0668();
      sub_1E65E0798();
      sub_1E65E07A8();
      v108 = v172;
      sub_1E65E3038();
      (*(v170 + 8))(v107, v171);
      sub_1E65E3028();
      sub_1E65E3048();
      sub_1E65E3058();
      sub_1E65E3038();
      v110 = v173;
      v109 = v174;
      (*(v173 + 8))(v108, v174);
      v111 = 1;
      (*(v110 + 56))(v71, 0, 1, v109);
      sub_1E65E0678();
      v112 = sub_1E65E06A8();
      v113 = v180;
      if (*(v112 + 16))
      {
        v114 = sub_1E64290E4(0);
        v115 = v175;
        v116 = v161;
        v117 = v160;
        if (v118)
        {
          (*(v113 + 16))(v161, *(v112 + 56) + *(v113 + 72) * v114, v175);
          v111 = 0;
        }
      }

      else
      {
        v115 = v175;
        v116 = v161;
        v117 = v160;
      }

      (*(v113 + 56))(v116, v111, 1, v115);
      v138 = v166;
      sub_1E607A874(v116, v166);
      if ((*(v113 + 48))(v138, 1, v115) == 1)
      {
        sub_1E65E0598();

        sub_1E607A8E4(v138);
      }

      else
      {

        (*(v113 + 32))(v117, v138, v115);
      }

      sub_1E65E05A8();
      sub_1E65E0588();
      sub_1E65E05B8();
      sub_1E65E3078();
      (*(v113 + 8))(v117, v115);
      (*(v176 + 104))(v178, *MEMORY[0x1E699EB40], v177);
    }

    else
    {
      v86 = v180;
      if (v181 == 4)
      {
        v87 = v169;
        sub_1E65E0668();
        sub_1E65E0798();
        sub_1E65E07A8();
        v88 = v172;
        sub_1E65E3038();
        (*(v170 + 8))(v87, v171);
        sub_1E65E3028();
        v89 = v68;
        sub_1E65E3038();
        v90 = v173;
        v91 = v88;
        v92 = v174;
        (*(v173 + 8))(v91, v174);
        v93 = 1;
        (*(v90 + 56))(v89, 0, 1, v92);
        sub_1E65E0678();
        v94 = sub_1E65E06A8();
        if (*(v94 + 16))
        {
          v95 = sub_1E64290E4(0);
          v96 = v175;
          v97 = v163;
          v98 = v162;
          if (v99)
          {
            (*(v86 + 16))(v163, *(v94 + 56) + *(v86 + 72) * v95, v175);
            v93 = 0;
          }
        }

        else
        {
          v96 = v175;
          v97 = v163;
          v98 = v162;
        }

        (*(v86 + 56))(v97, v93, 1, v96);
        v141 = v167;
        sub_1E607A874(v97, v167);
        if ((*(v86 + 48))(v141, 1, v96) == 1)
        {
          sub_1E65E0598();

          sub_1E607A8E4(v141);
        }

        else
        {

          (*(v86 + 32))(v98, v141, v96);
        }

        sub_1E65E05A8();
        sub_1E65E0588();
        sub_1E65E05B8();
        v142 = &v182;
      }

      else
      {
        v127 = v169;
        sub_1E65E0668();
        sub_1E65E0798();
        sub_1E65E07A8();
        v128 = v172;
        sub_1E65E3038();
        (*(v170 + 8))(v127, v171);
        sub_1E65E3028();
        sub_1E65E3048();
        sub_1E65E3058();
        v129 = v153;
        sub_1E65E3038();
        v131 = v173;
        v130 = v174;
        (*(v173 + 8))(v128, v174);
        v132 = 1;
        (*(v131 + 56))(v129, 0, 1, v130);
        sub_1E65E0678();
        v133 = sub_1E65E06A8();
        if (*(v133 + 16))
        {
          v134 = sub_1E64290E4(0);
          v96 = v175;
          v98 = v164;
          v135 = v165;
          if (v136)
          {
            (*(v86 + 16))(v165, *(v133 + 56) + *(v86 + 72) * v134, v175);
            v132 = 0;
          }
        }

        else
        {
          v96 = v175;
          v98 = v164;
          v135 = v165;
        }

        (*(v86 + 56))(v135, v132, 1, v96);
        v144 = v168;
        sub_1E607A874(v135, v168);
        if ((*(v86 + 48))(v144, 1, v96) == 1)
        {
          sub_1E65E0598();

          sub_1E607A8E4(v144);
        }

        else
        {

          (*(v86 + 32))(v98, v144, v96);
        }

        sub_1E65E05A8();
        sub_1E65E0588();
        sub_1E65E05B8();
        v142 = &v183;
      }

      v145 = *(v142 - 32);
      sub_1E65E3078();
      (*(v86 + 8))(v98, v96);
      (*(v176 + 104))(v178, *MEMORY[0x1E699EB38], v177);
    }
  }

  else if (v181)
  {
    if (v181 == 1)
    {
      v80 = 1;
      (*(v173 + 56))(v77, 1, 1, v174);
      sub_1E65E0678();
      v81 = sub_1E65E06A8();
      if (*(v81 + 16))
      {
        v82 = sub_1E64290E4(0);
        v83 = v175;
        v84 = v151;
        if (v85)
        {
          (*(v180 + 16))(v151, *(v81 + 56) + *(v180 + 72) * v82, v175);
          v80 = 0;
        }
      }

      else
      {
        v83 = v175;
        v84 = v151;
      }

      v139 = v180;
      (*(v180 + 56))(v84, v80, 1, v83);
      v140 = v155;
      sub_1E607A874(v84, v155);
      if ((*(v139 + 48))(v140, 1, v83) == 1)
      {
        sub_1E65E0598();

        sub_1E607A8E4(v140);
      }

      else
      {

        (*(v139 + 32))(v46, v140, v83);
      }

      sub_1E65E05A8();
      sub_1E65E0588();
      sub_1E65E05B8();
      sub_1E65E3078();
      (*(v139 + 8))(v46, v83);
      (*(v176 + 104))(v178, *MEMORY[0x1E699EB48], v177);
    }

    else
    {
      v119 = 1;
      (*(v173 + 56))(v74, 1, 1, v174);
      sub_1E65E0678();
      v120 = sub_1E65E06A8();
      if (*(v120 + 16))
      {
        v121 = sub_1E64290E4(0);
        v122 = v175;
        v123 = v180;
        v124 = v152;
        v125 = v150;
        if (v126)
        {
          (*(v180 + 16))(v152, *(v120 + 56) + *(v180 + 72) * v121, v175);
          v119 = 0;
        }
      }

      else
      {
        v122 = v175;
        v123 = v180;
        v124 = v152;
        v125 = v150;
      }

      (*(v123 + 56))(v124, v119, 1, v122);
      v143 = v158;
      sub_1E607A874(v124, v158);
      if ((*(v123 + 48))(v143, 1, v122) == 1)
      {
        sub_1E65E0598();

        sub_1E607A8E4(v143);
      }

      else
      {

        (*(v123 + 32))(v125, v143, v122);
      }

      sub_1E65E05A8();
      sub_1E65E0588();
      sub_1E65E05B8();
      sub_1E65E3078();
      (*(v123 + 8))(v125, v122);
      (*(v176 + 104))(v178, *MEMORY[0x1E699EB48], v177);
    }
  }

  else
  {
    v100 = 1;
    (*(v173 + 56))(v79, 1, 1, v174);
    sub_1E65E0678();
    v101 = sub_1E65E06A8();
    if (*(v101 + 16))
    {
      v102 = sub_1E64290E4(0);
      v103 = v175;
      v104 = v180;
      v105 = v148;
      if (v106)
      {
        (*(v180 + 16))(v148, *(v101 + 56) + *(v180 + 72) * v102, v175);
        v100 = 0;
      }
    }

    else
    {
      v103 = v175;
      v104 = v180;
      v105 = v148;
    }

    (*(v104 + 56))(v105, v100, 1, v103);
    v137 = v154;
    sub_1E607A874(v105, v154);
    if ((*(v104 + 48))(v137, 1, v103) == 1)
    {
      sub_1E65E0598();

      sub_1E607A8E4(v137);
    }

    else
    {

      (*(v104 + 32))(v48, v137, v103);
    }

    sub_1E65E05A8();
    sub_1E65E0588();
    sub_1E65E05B8();
    sub_1E65E3078();
    (*(v104 + 8))(v48, v103);
    (*(v176 + 104))(v178, *MEMORY[0x1E699EB48], v177);
  }

  return sub_1E65E30E8();
}

uint64_t sub_1E607A874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607A8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E607A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for PageMetricsClick();
  v7[6] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for PageMetricsRender();
  v7[8] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = sub_1E65DC638();
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E607AAA0, 0, 0);
}

uint64_t sub_1E607AAA0()
{
  v1 = v0[2];
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 40);
  v5 = *v1;
  if (v4 > 8)
  {
    goto LABEL_32;
  }

  if (((1 << v4) & 0xDC) != 0)
  {
LABEL_3:
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[7];

    v13 = v0[1];

    return v13();
  }

  if (v4 != 5)
  {
    if (v4 == 8)
    {
      v47 = v1 + 3;
      v45 = v1[3];
      v46 = v47[1];
      if (!(v5 | v46 | v3 | v2 | v45))
      {
        goto LABEL_3;
      }

      v48 = v46 | v3 | v2 | v45;
      if (v5 == 1 && v48 == 0)
      {
        goto LABEL_3;
      }

      if (v5 != 2 || v48 != 0)
      {
        if ((v5 - 3) <= 2 && v48 == 0)
        {
          goto LABEL_3;
        }

        v52 = v0[3];
        sub_1E65DC688();
        if ((sub_1E65DC828() & 1) == 0)
        {
          v53 = v0[3];
          v54 = sub_1E65DC698();
          if (v57)
          {
            if (v57 != 1)
            {
              goto LABEL_3;
            }
          }

          else if (v56 != 2 || v54 != 1 || v55)
          {
            sub_1E5FED324(v54, v55, v56, 0);
            goto LABEL_3;
          }
        }

        v58 = v0[4];
        v59 = *(v58 + 24);
        v111 = (*(v58 + 16) + **(v58 + 16));
        v60 = *(*(v58 + 16) + 4);
        v43 = swift_task_alloc();
        v0[23] = v43;
        *v43 = v0;
        v44 = sub_1E607BC14;
        goto LABEL_38;
      }

      v73 = v0[6];
      v72 = v0[7];
      v74 = v0[4];
      v75 = sub_1E65D9D78();
      (*(*(v75 - 8) + 56))(v72, 1, 1, v75);
      v76 = v73[5];
      v77 = *MEMORY[0x1E69CBAA0];
      v78 = sub_1E65D8C68();
      (*(*(v78 - 8) + 104))(v72 + v76, v77, v78);
      v79 = v73[6];
      v80 = sub_1E65D74E8();
      (*(*(v80 - 8) + 56))(v72 + v79, 1, 1, v80);
      v81 = v73[8];
      v82 = sub_1E65DA208();
      (*(*(v82 - 8) + 56))(v72 + v81, 1, 1, v82);
      v83 = v73[14];
      v84 = *MEMORY[0x1E69CBCC8];
      v85 = sub_1E65D8F28();
      (*(*(v85 - 8) + 104))(v72 + v83, v84, v85);
      v86 = v73[15];
      v87 = sub_1E65D9908();
      (*(*(v87 - 8) + 56))(v72 + v86, 1, 1, v87);
      v88 = MEMORY[0x1E69E7CC0];
      v89 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v72 + v73[7]) = v88;
      v90 = (v72 + v73[9]);
      *v90 = 0;
      v90[1] = 0;
      v91 = (v72 + v73[10]);
      *v91 = 0;
      v91[1] = 0;
      *(v72 + v73[11]) = v89;
      v92 = (v72 + v73[12]);
      *v92 = 0;
      v92[1] = 0;
      *(v72 + v73[13]) = xmmword_1E65EF110;
      v93 = *(v74 + 56);
      v112 = (*(v74 + 48) + **(v74 + 48));
      v94 = *(*(v74 + 48) + 4);
      v95 = swift_task_alloc();
      v0[24] = v95;
      *v95 = v0;
      v95[1] = sub_1E607BDE4;
      v96 = v0[7];
      goto LABEL_52;
    }

LABEL_32:
    if (!*(v1 + 40))
    {
      goto LABEL_3;
    }

    v61 = v0[3];
    sub_1E65DC688();
    if ((sub_1E65DC828() & 1) == 0)
    {
      v70 = v3 == 2 && v2 == 0;
      if (!v70 || v5 != 1)
      {
        goto LABEL_3;
      }
    }

    v62 = v0[5];
    v63 = sub_1E65DC498();
    if (!v66)
    {
      sub_1E607C250(v63, v64, v65, 0);
      goto LABEL_3;
    }

    if (v66 != 255)
    {
      sub_1E607C250(v63, v64, v65, v66);
    }

    v67 = v0[4];
    v68 = *(v67 + 24);
    v111 = (*(v67 + 16) + **(v67 + 16));
    v69 = *(*(v67 + 16) + 4);
    v43 = swift_task_alloc();
    v0[22] = v43;
    *v43 = v0;
    v44 = sub_1E607BA44;
    goto LABEL_38;
  }

  v15 = v0[16];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[3];
  sub_1E65DC6D8();
  v19 = sub_1E65DC5E8();
  LOBYTE(v18) = v20;
  v21 = *(v17 + 8);
  v21(v15, v16);
  if (v18)
  {
    goto LABEL_12;
  }

  v22 = v0[15];
  v23 = v0[10];
  v24 = v0[3];
  sub_1E65DC6D8();
  v25 = sub_1E65DC5F8();
  LOBYTE(v24) = v26;
  v21(v22, v23);
  if (v24)
  {
    goto LABEL_12;
  }

  v27 = v0[14];
  v28 = v0[10];
  v29 = v0[3];
  sub_1E65DC6D8();
  v30 = sub_1E65DC608();
  LOBYTE(v29) = v31;
  v21(v27, v28);
  if (v29)
  {
    goto LABEL_12;
  }

  v32 = v0[13];
  v33 = v0[10];
  v34 = v0[3];
  sub_1E65DC6D8();
  sub_1E65DC628();
  LOBYTE(v34) = v35;
  v21(v32, v33);
  if (v34 & 1) != 0 || (v36 = v0[12], v37 = v0[10], v38 = v0[3], sub_1E65DC6D8(), sub_1E65DC618(), LOBYTE(v38) = v39, v21(v36, v37), (v38))
  {
LABEL_12:
    v40 = v0[4];
    v41 = *(v40 + 24);
    v111 = (*(v40 + 16) + **(v40 + 16));
    v42 = *(*(v40 + 16) + 4);
    v43 = swift_task_alloc();
    v0[21] = v43;
    *v43 = v0;
    v44 = sub_1E607B874;
LABEL_38:
    v43[1] = v44;

    return v111();
  }

  v98 = v0[8];
  v97 = v0[9];
  v110 = v0[4];
  v99 = v98[11];
  v100 = sub_1E65D9D98();
  v101 = *(v100 - 8) + 56;
  (*v101)(v97 + v99, 1, 1, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F88, &qword_1E65EF128);
  v102 = *(v101 + 16);
  v103 = (*(v101 + 24) + 32) & ~*(v101 + 24);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1E65EB9E0;
  sub_1E65D9D88();
  sub_1E65D9D88();
  *v97 = 2;
  *(v97 + 8) = v19;
  *(v97 + 16) = 0;
  *(v97 + 24) = 1;
  *(v97 + 32) = 0;
  *(v97 + 40) = 1;
  *(v97 + 48) = v25;
  *(v97 + 56) = 0;
  *(v97 + 64) = 1025;
  v105 = v97 + v98[12];
  *v105 = 0;
  *(v105 + 8) = 1;
  v106 = v97 + v98[13];
  *v106 = 0;
  *(v106 + 8) = 1;
  *(v97 + v98[14]) = v30;
  *(v97 + v98[15]) = v104;
  *(v97 + v98[16]) = 2;
  v107 = *(v110 + 72);
  v112 = (*(v110 + 64) + **(v110 + 64));
  v108 = *(*(v110 + 64) + 4);
  v109 = swift_task_alloc();
  v0[17] = v109;
  *v109 = v0;
  v109[1] = sub_1E607B4C0;
  v96 = v0[9];
LABEL_52:

  return v112(v96);
}

uint64_t sub_1E607B4C0()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E607BFC8, 0, 0);
  }

  else
  {
    v4 = v3[4];
    v5 = *(v4 + 24);
    v9 = (*(v4 + 16) + **(v4 + 16));
    v6 = *(*(v4 + 16) + 4);
    v7 = swift_task_alloc();
    v3[19] = v7;
    *v7 = v3;
    v7[1] = sub_1E607B690;

    return v9();
  }
}

uint64_t sub_1E607B690()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E607C0A0;
  }

  else
  {
    v3 = sub_1E607B7A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E607B7A4()
{
  sub_1E607C264(v0[9], type metadata accessor for PageMetricsRender);
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E607B874()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v12 = *v0;

  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[7];

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1E607BA44()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v12 = *v0;

  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[7];

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1E607BC14()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v12 = *v0;

  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[7];

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_1E607BDE4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1E607C178;
  }

  else
  {
    v3 = sub_1E607BEF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E607BEF8()
{
  sub_1E607C264(v0[7], type metadata accessor for PageMetricsClick);
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E607BFC8()
{
  sub_1E607C264(v0[9], type metadata accessor for PageMetricsRender);
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E607C0A0()
{
  sub_1E607C264(v0[9], type metadata accessor for PageMetricsRender);
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E607C178()
{
  sub_1E607C264(v0[7], type metadata accessor for PageMetricsClick);
  v1 = v0[25];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E607C250(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1E5FED324(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1E607C264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1E607C2C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X8>)
{
  v175 = a5;
  v176 = a3;
  LODWORD(v174) = a2;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F90, &qword_1E65EF130);
  v7 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v177 = &v170 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v170 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v170 - v15;
  v173 = sub_1E65D9AC8();
  v17 = *(v173 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  v178 = *(v181 - 8);
  v20 = *(v178 + 64);
  v21 = MEMORY[0x1EEE9AC00](v181);
  v180 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v179 = &v170 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C0, &qword_1E65ED018);
  v182 = *(v24 - 8);
  v25 = *(v182 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v170 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v170 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v170 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v170 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v170 - v41;
  if (a4 <= 3u)
  {
    v43 = v39;
    if (a4 > 1u)
    {
      if (a4 == 2)
      {
        v78 = a1 + *(type metadata accessor for AppState() + 336);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
        v79 = sub_1E65E4D48();
        MEMORY[0x1EEE9AC00](v79);
        *(&v170 - 2) = v78;
        v80 = sub_1E6403D6C(sub_1E607EB3C, (&v170 - 4), v79);

        v183 = v80;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
        sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
        sub_1E607EA38();
        v81 = sub_1E65E5E78();

        v82 = *(v81 + 16);
        if (v82)
        {
          v183 = MEMORY[0x1E69E7CC0];
          sub_1E601C264(0, v82, 0);
          v83 = v179;
          v84 = *(v178 + 80);
          v174 = v81;
          v85 = v81 + ((v84 + 32) & ~v84);
          v178 = *(v178 + 72);
          LODWORD(v177) = *MEMORY[0x1E699D9C8];
          v52 = v183;
          v86 = (v182 + 104);
          v176 = v182 + 32;
          do
          {
            sub_1E607EA90(v85, v83);
            v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
            v88 = v180;
            sub_1E607EA90(v83, v180);
            v89 = *(v181 + 48);
            v90 = sub_1E65D9CC8();
            (*(*(v90 - 8) + 32))(v35, v88, v90);
            sub_1E5DFE50C(v83, &qword_1ED072160, &qword_1E65EA8C8);
            *&v35[v87] = MEMORY[0x1E69E7CD0];
            (*v86)(v35, v177, v43);
            v91 = sub_1E65D76A8();
            (*(*(v91 - 8) + 8))(v88 + v89, v91);
            v183 = v52;
            v93 = *(v52 + 16);
            v92 = *(v52 + 24);
            if (v93 >= v92 >> 1)
            {
              sub_1E601C264(v92 > 1, v93 + 1, 1);
              v52 = v183;
            }

            *(v52 + 16) = v93 + 1;
            (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v93, v35, v43);
            v85 += v178;
            --v82;
          }

          while (v82);
          goto LABEL_44;
        }
      }

      else
      {
        v136 = a1 + *(type metadata accessor for AppState() + 328);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
        v137 = sub_1E65E4D48();
        MEMORY[0x1EEE9AC00](v137);
        *(&v170 - 2) = v136;
        v138 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v137);

        v183 = v138;
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
        sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
        sub_1E607EA38();
        v139 = sub_1E65E5E78();

        v140 = *(v139 + 16);
        if (v140)
        {
          v183 = MEMORY[0x1E69E7CC0];
          sub_1E601C264(0, v140, 0);
          v141 = v179;
          v142 = *(v178 + 80);
          v174 = v139;
          v143 = v139 + ((v142 + 32) & ~v142);
          v178 = *(v178 + 72);
          LODWORD(v177) = *MEMORY[0x1E699D9C8];
          v52 = v183;
          v144 = (v182 + 104);
          v176 = v182 + 32;
          do
          {
            sub_1E607EA90(v143, v141);
            v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
            v146 = v180;
            sub_1E607EA90(v141, v180);
            v147 = *(v181 + 48);
            v148 = sub_1E65D9CC8();
            (*(*(v148 - 8) + 32))(v32, v146, v148);
            sub_1E5DFE50C(v141, &qword_1ED072160, &qword_1E65EA8C8);
            *&v32[v145] = MEMORY[0x1E69E7CD0];
            (*v144)(v32, v177, v43);
            v149 = sub_1E65D76A8();
            (*(*(v149 - 8) + 8))(v146 + v147, v149);
            v183 = v52;
            v151 = *(v52 + 16);
            v150 = *(v52 + 24);
            if (v151 >= v150 >> 1)
            {
              sub_1E601C264(v150 > 1, v151 + 1, 1);
              v52 = v183;
            }

            *(v52 + 16) = v151 + 1;
            (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v151, v32, v43);
            v143 += v178;
            --v140;
          }

          while (v140);
          goto LABEL_44;
        }
      }
    }

    else if (a4)
    {
      v120 = a1 + *(type metadata accessor for AppState() + 324);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v121 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v121);
      *(&v170 - 2) = v120;
      v122 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v121);

      v183 = v122;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
      sub_1E607EA38();
      v123 = sub_1E65E5E78();

      v124 = *(v123 + 16);
      if (v124)
      {
        v183 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v124, 0);
        v125 = v179;
        v126 = *(v178 + 80);
        v174 = v123;
        v127 = v123 + ((v126 + 32) & ~v126);
        v178 = *(v178 + 72);
        LODWORD(v177) = *MEMORY[0x1E699D9C8];
        v52 = v183;
        v128 = (v182 + 104);
        v176 = v182 + 32;
        do
        {
          sub_1E607EA90(v127, v125);
          v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v130 = v180;
          sub_1E607EA90(v125, v180);
          v131 = *(v181 + 48);
          v132 = sub_1E65D9CC8();
          (*(*(v132 - 8) + 32))(v38, v130, v132);
          sub_1E5DFE50C(v125, &qword_1ED072160, &qword_1E65EA8C8);
          *&v38[v129] = MEMORY[0x1E69E7CD0];
          (*v128)(v38, v177, v43);
          v133 = sub_1E65D76A8();
          (*(*(v133 - 8) + 8))(v130 + v131, v133);
          v183 = v52;
          v135 = *(v52 + 16);
          v134 = *(v52 + 24);
          if (v135 >= v134 >> 1)
          {
            sub_1E601C264(v134 > 1, v135 + 1, 1);
            v52 = v183;
          }

          *(v52 + 16) = v135 + 1;
          (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v135, v38, v43);
          v127 += v178;
          --v124;
        }

        while (v124);
        goto LABEL_44;
      }
    }

    else
    {
      v44 = a1 + *(type metadata accessor for AppState() + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v45 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v45);
      *(&v170 - 2) = v44;
      v46 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v45);

      v183 = v46;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
      sub_1E607EA38();
      v47 = sub_1E65E5E78();

      v48 = *(v47 + 16);
      if (v48)
      {
        v183 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v48, 0);
        v49 = v179;
        v50 = *(v178 + 80);
        v174 = v47;
        v51 = v47 + ((v50 + 32) & ~v50);
        v178 = *(v178 + 72);
        LODWORD(v177) = *MEMORY[0x1E699D9C8];
        v52 = v183;
        v53 = (v182 + 104);
        v176 = v182 + 32;
        do
        {
          sub_1E607EA90(v51, v49);
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v55 = v180;
          sub_1E607EA90(v49, v180);
          v56 = *(v181 + 48);
          v57 = sub_1E65D9CC8();
          (*(*(v57 - 8) + 32))(v42, v55, v57);
          sub_1E5DFE50C(v49, &qword_1ED072160, &qword_1E65EA8C8);
          *&v42[v54] = MEMORY[0x1E69E7CD0];
          (*v53)(v42, v177, v43);
          v58 = sub_1E65D76A8();
          (*(*(v58 - 8) + 8))(v55 + v56, v58);
          v183 = v52;
          v60 = *(v52 + 16);
          v59 = *(v52 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1E601C264(v59 > 1, v60 + 1, 1);
            v52 = v183;
          }

          *(v52 + 16) = v60 + 1;
          (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v60, v42, v43);
          v51 += v178;
          --v48;
        }

        while (v48);
LABEL_44:

LABEL_49:
        v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE8, &qword_1E65EF188) + 48);
        *v175 = v52;
        sub_1E65D7688();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF0, &qword_1E65EF190);
        return swift_storeEnumTagMultiPayload();
      }
    }

LABEL_48:

    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v61 = v39;
      v62 = a1 + *(type metadata accessor for AppState() + 332);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
      v63 = sub_1E65E4D48();
      MEMORY[0x1EEE9AC00](v63);
      *(&v170 - 2) = v62;
      v64 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v63);

      v183 = v64;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
      sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
      sub_1E607EA38();
      v65 = sub_1E65E5E78();

      v66 = *(v65 + 16);
      if (v66)
      {
        v183 = MEMORY[0x1E69E7CC0];
        sub_1E601C264(0, v66, 0);
        v67 = v179;
        v68 = *(v178 + 80);
        v174 = v65;
        v69 = v65 + ((v68 + 32) & ~v68);
        v178 = *(v178 + 72);
        LODWORD(v177) = *MEMORY[0x1E699D9C8];
        v52 = v183;
        v70 = (v182 + 104);
        v176 = v182 + 32;
        do
        {
          sub_1E607EA90(v69, v67);
          v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
          v72 = v180;
          sub_1E607EA90(v67, v180);
          v73 = *(v181 + 48);
          v74 = sub_1E65D9CC8();
          (*(*(v74 - 8) + 32))(v29, v72, v74);
          sub_1E5DFE50C(v67, &qword_1ED072160, &qword_1E65EA8C8);
          *&v29[v71] = MEMORY[0x1E69E7CD0];
          (*v70)(v29, v177, v61);
          v75 = sub_1E65D76A8();
          (*(*(v75 - 8) + 8))(v72 + v73, v75);
          v183 = v52;
          v77 = *(v52 + 16);
          v76 = *(v52 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1E601C264(v76 > 1, v77 + 1, 1);
            v52 = v183;
          }

          *(v52 + 16) = v77 + 1;
          (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v77, v29, v61);
          v69 += v178;
          --v66;
        }

        while (v66);
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    goto LABEL_30;
  }

  if (a4 != 6)
  {
LABEL_30:
    v114 = type metadata accessor for AppState();
    v115 = *(v114 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
    sub_1E65E4C98();
    sub_1E60EEE88(v16);
    sub_1E5DFE50C(v12, &qword_1ED072E78, &qword_1E65ECC50);
    v116 = v17;
    v117 = *(v17 + 48);
    v118 = v173;
    if (v117(v16, 1, v173) == 1)
    {
      v119 = v172;
      MEMORY[0x1E6941490]();
      if (v117(v16, 1, v118) != 1)
      {
        sub_1E5DFE50C(v16, &qword_1ED072198, &unk_1E660C690);
      }
    }

    else
    {
      v119 = v172;
      (*(v116 + 32))(v172, v16, v118);
    }

    v152 = *(v114 + 212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
    v153 = v177;
    v154 = sub_1E65E4C98();
    MEMORY[0x1EEE9AC00](v154);
    *(&v170 - 4) = a1;
    *(&v170 - 24) = v174;
    v155 = v176;
    *(&v170 - 2) = v119;
    *(&v170 - 1) = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FA0, &qword_1E65EF140);
    sub_1E607DF5C();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v153, &qword_1ED073F90, &qword_1E65EF130);
    return (*(v116 + 8))(v119, v118);
  }

  v94 = v40;
  v177 = v39;
  v95 = type metadata accessor for AppState();
  v96 = a1 + v95[80];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  v97 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v97);
  *(&v170 - 2) = v96;
  v98 = sub_1E6403D6C(sub_1E607EA00, (&v170 - 4), v97);

  v99 = a1 + v95[81];
  v100 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v100);
  *(&v170 - 2) = v99;
  v176 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v100);

  v101 = a1 + v95[82];
  v102 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v102);
  *(&v170 - 2) = v101;
  v103 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v102);

  v104 = a1 + v95[83];
  v105 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v105);
  *(&v170 - 2) = v104;
  v106 = sub_1E6403D6C(sub_1E607EB24, (&v170 - 4), v105);

  v107 = a1 + v95[84];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v108 = sub_1E65E4D48();
  MEMORY[0x1EEE9AC00](v108);
  *(&v170 - 2) = v107;
  v109 = sub_1E6403D6C(sub_1E607EA1C, (&v170 - 4), v108);

  v184 = v98;
  sub_1E5FA9E58(v176);
  sub_1E5FA9E58(v103);
  sub_1E5FA9E58(v106);
  sub_1E5FA9E58(v109);
  v183 = v184;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC8, &qword_1E65EF178);
  sub_1E5FED46C(&qword_1ED073FD0, &qword_1ED073FC8, &qword_1E65EF178);
  sub_1E607EA38();
  v110 = sub_1E65E5E78();

  v111 = *(v110 + 16);
  v112 = v111 - 12;
  if (v111 < 0xC)
  {
    v112 = 0;
  }

  v113 = v111 - v112;
  if (v111 == v112)
  {
    goto LABEL_48;
  }

  v176 = v94;
  v183 = MEMORY[0x1E69E7CC0];
  result = sub_1E601C264(0, v113 & ~(v113 >> 63), 0);
  if ((v113 & 0x8000000000000000) == 0)
  {
    v174 = v110 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    LODWORD(v173) = *MEMORY[0x1E699D9C8];
    v52 = v183;
    v158 = (v182 + 104);
    v172 = (v182 + 32);
    v159 = v111 - 1;
    v160 = v176;
    while (v113)
    {
      if (v159 == -1)
      {
        goto LABEL_60;
      }

      if (v159 >= *(v110 + 16))
      {
        goto LABEL_61;
      }

      v161 = v179;
      sub_1E607EA90(v174 + *(v178 + 72) * v159, v179);
      v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FE0, &qword_1E65EF180) + 48);
      v163 = v180;
      sub_1E607EA90(v161, v180);
      v164 = *(v181 + 48);
      v165 = sub_1E65D9CC8();
      (*(*(v165 - 8) + 32))(v160, v163, v165);
      sub_1E5DFE50C(v161, &qword_1ED072160, &qword_1E65EA8C8);
      *(v160 + v162) = MEMORY[0x1E69E7CD0];
      v166 = v177;
      (*v158)(v160, v173, v177);
      v167 = sub_1E65D76A8();
      (*(*(v167 - 8) + 8))(v163 + v164, v167);
      v183 = v52;
      v169 = *(v52 + 16);
      v168 = *(v52 + 24);
      if (v169 >= v168 >> 1)
      {
        sub_1E601C264(v168 > 1, v169 + 1, 1);
        v52 = v183;
      }

      *(v52 + 16) = v169 + 1;
      result = (*(v182 + 32))(v52 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v169, v160, v166);
      --v159;
      if (!--v113)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
  return result;
}