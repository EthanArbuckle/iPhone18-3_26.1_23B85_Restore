uint64_t Fetcher.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
  v4 = sub_29EB8B6B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t Fetcher.Request.description.getter()
{
  sub_29EB8B850();

  sub_29EB8B570();
  sub_29EB85494(&qword_2A1883500, MEMORY[0x29EDB9878]);
  v0 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](v0);

  MEMORY[0x29EDA9E80](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t Fetcher.Request.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29EB8B570();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t Fetcher.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for Fetcher.Request(0) - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB8B930();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_29EB848D8();
    sub_29EB8B880();
    v10 = v16[1];
    v9 = v16[2];
    sub_29EB8492C(0, &qword_2A1883510, 0x29EDBA000);
    v11 = sub_29EB8492C(0, &qword_2A1883518, 0x29EDBA128);
    v12 = sub_29EB8B830();
    if (v12)
    {
      v14 = v12;
      sub_29EB8B560();
      sub_29EB84974(v10, v9);

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      sub_29EB84A1C(v7, a2);
    }

    else
    {
      sub_29EB849C8();
      swift_allocError();
      *v15 = v11;
      *(v15 + 8) = 1;
      swift_willThrow();
      sub_29EB84974(v10, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_29EB848D8()
{
  result = qword_2A1883508;
  if (!qword_2A1883508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883508);
  }

  return result;
}

uint64_t sub_29EB8492C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_29EB84974(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_29EB849C8()
{
  result = qword_2A1883520;
  if (!qword_2A1883520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883520);
  }

  return result;
}

uint64_t sub_29EB84A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fetcher.Request(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Fetcher.Request.encode(to:)(void *a1)
{
  v13[5] = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB8B940();
  v2 = objc_opt_self();
  v3 = sub_29EB8B550();
  v12[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v12];

  v5 = v12[0];
  if (v4)
  {
    v6 = sub_29EB8B5C0();
    v8 = v7;

    v12[0] = v6;
    v12[1] = v8;
    __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_29EB84C38();
    sub_29EB8B890();
    sub_29EB84974(v6, v8);
  }

  else
  {
    v9 = v5;
    sub_29EB8B5B0();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_29EB84C38()
{
  result = qword_2A1883528;
  if (!qword_2A1883528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883528);
  }

  return result;
}

unint64_t sub_29EB84CBC()
{
  sub_29EB8B850();

  sub_29EB8B570();
  sub_29EB85494(&qword_2A1883500, MEMORY[0x29EDB9878]);
  v0 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](v0);

  MEMORY[0x29EDA9E80](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_29EB84DB8()
{
  v0 = sub_29EB8B7B0();
  __swift_allocate_value_buffer(v0, qword_2A18834E8);
  __swift_project_value_buffer(v0, qword_2A18834E8);
  return sub_29EB8B7A0();
}

uint64_t static Fetcher.fetcherForHelper()()
{
  v0 = sub_29EB8B6E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8]();
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(*(sub_29EB8B780() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = sub_29EB8B6B0();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8]();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18834E0 != -1)
  {
    swift_once();
  }

  v10 = sub_29EB8B7B0();
  __swift_project_value_buffer(v10, qword_2A18834E8);
  v11 = sub_29EB8B810();
  v12 = sub_29EB8B790();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_29EB83000, v12, v11, "Init", v13, 2u);
    MEMORY[0x29EDAA2B0](v13, -1, -1);
  }

  v14 = sub_29EB8B790();
  v15 = sub_29EB8B820();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_29EB83000, v14, v15, "Resolving the Fetching Service…", v16, 2u);
    MEMORY[0x29EDAA2B0](v16, -1, -1);
  }

  sub_29EB8B770();
  sub_29EB8B6A0();
  *v4 = 0xD000000000000029;
  v4[1] = 0x800000029EB8CBB0;
  (*(v1 + 104))(v4, *MEMORY[0x29EDC5860], v0);
  v17 = sub_29EB8B700();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v26[1];
  v22 = sub_29EB8B6F0();
  if (v21)
  {
    (*(v27 + 8))(v9, v28);
  }

  else
  {
    v23 = v22;
    type metadata accessor for Fetcher(0);
    v29 = v23;
    sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
    sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
    v24 = sub_29EB8B5F0();
    v20 = v24;
    if (v24)
    {

      (*(v27 + 8))(v9, v28);
    }

    else
    {
      v20 = swift_distributedActor_remote_initialize();
      (*(v27 + 32))(v20 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id, v9, v28);
      *(v20 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem) = v23;
    }
  }

  return v20;
}

uint64_t static Fetcher.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Fetcher(0);
  sub_29EB8B700();
  sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
  sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
  result = sub_29EB8B5F0();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
    v8 = sub_29EB8B6B0();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem) = a2;

    return v6;
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

uint64_t sub_29EB8545C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EB85494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Fetcher.data(for:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_29EB8B670();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Fetcher.Request(0);
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1883540, &qword_29EB8BD00);
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = sub_29EB8B760();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB85690, 0, 0);
}

uint64_t sub_29EB85690()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[16];
    v3 = v0[13];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[4];
    v7 = *(v0[5] + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem);
    sub_29EB8B6D0();
    sub_29EB874A8(v6, v4);
    sub_29EB8B690();
    sub_29EB85494(&qword_2A1883548, type metadata accessor for Fetcher.Request);
    sub_29EB85494(&qword_2A1883550, type metadata accessor for Fetcher.Request);
    sub_29EB8B730();
    v8 = v0[16];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1883558, &unk_29EB8BD10);
    sub_29EB8B740();
    v10 = v0[16];
    sub_29EB848D8();
    sub_29EB84C38();
    v11 = MEMORY[0x29EDB9B70];
    sub_29EB8B750();
    v12 = v0[16];
    sub_29EB8B720();
    v17 = v0[8];
    sub_29EB8B680();
    v18 = *(MEMORY[0x29EDC5850] + 4);
    v19 = swift_task_alloc();
    v0[17] = v19;
    v20 = type metadata accessor for Fetcher(0);
    sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
    *v19 = v0;
    v19[1] = sub_29EB85A64;
    v21 = v0[16];
    v22 = v0[8];
    v23 = v0[5];

    return MEMORY[0x2A1C68120](v0 + 2, v23, v22, v21, v9, v11, v20, v9);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_29EB85C70;
    v14 = v0[4];
    v15 = v0[5];

    return sub_29EB85EF4(v14);
  }
}

uint64_t sub_29EB85A64()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_29EB85E08;
  }

  else
  {
    v3 = sub_29EB85B78;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB85B78()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[8];

  v13 = v0[1];

  return v13(v8, v7);
}

uint64_t sub_29EB85C70(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;

  v9 = v6[16];
  v10 = v6[13];
  v11 = v6[10];
  v12 = v6[8];

  v15 = *(v8 + 8);
  if (!v2)
  {
    v13 = a1;
    v14 = a2;
  }

  return v15(v13, v14);
}

uint64_t sub_29EB85E08()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EB85EF4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(type metadata accessor for Fetcher.Request(0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB85F90, v1, 0);
}

uint64_t sub_29EB85F90()
{
  v19 = v0;
  if (qword_2A18834E0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_29EB8B7B0();
  __swift_project_value_buffer(v3, qword_2A18834E8);
  v4 = sub_29EB8B810();
  sub_29EB874A8(v2, v1);
  v5 = sub_29EB8B790();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[21];
  if (v6)
  {
    v8 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136446210;
    sub_29EB874A8(v7, v8);
    sub_29EB8B850();

    v18[1] = 0xD000000000000018;
    v18[2] = 0x800000029EB8CB50;
    sub_29EB8B570();
    sub_29EB85494(&qword_2A1883500, MEMORY[0x29EDB9878]);
    v11 = sub_29EB8B870();
    MEMORY[0x29EDA9E80](v11);

    MEMORY[0x29EDA9E80](62, 0xE100000000000000);
    sub_29EB8750C(v8);
    sub_29EB8750C(v7);
    v12 = sub_29EB87694(0xD000000000000018, 0x800000029EB8CB50, v18);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_29EB83000, v5, v4, "Data for: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x29EDAA2B0](v10, -1, -1);
    MEMORY[0x29EDAA2B0](v9, -1, -1);
  }

  else
  {

    sub_29EB8750C(v7);
  }

  v13 = *(v0[19] + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_session);
  v14 = *(MEMORY[0x29EDB9DD8] + 4);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_29EB8625C;
  v16 = v0[18];

  return MEMORY[0x2A1C5B218](v16, 0);
}

uint64_t sub_29EB8625C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v7 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v9 = v5[20];
    v8 = v5[21];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v12 = v5[19];

    return MEMORY[0x2A1C73D48](sub_29EB863B8, v12, 0);
  }
}

uint64_t sub_29EB863B8()
{
  v1 = *(v0 + 200);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);
    sub_29EB849C8();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = 0;
    swift_willThrow();
    sub_29EB84974(v15, v13);
    goto LABEL_7;
  }

  result = [v2 statusCode];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  sub_29EB8842C(result, v0 + 64);
  sub_29EB87568(v0 + 64, v0 + 104);
  v4 = *(v0 + 128);
  if (v4)
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    sub_29EB88548(v4, v6, v0 + 16);
    v7 = *(v0 + 200);
    if (v5)
    {
      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      sub_29EB87640();
      swift_allocError();
      v11 = *(v0 + 32);
      v10 = *(v0 + 48);
      *v12 = *(v0 + 16);
      v12[1] = v11;
      v12[2] = v10;

      sub_29EB84974(v9, v8);
      sub_29EB875D8(v0 + 64);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
LABEL_7:
      v18 = *(v0 + 160);
      v17 = *(v0 + 168);

      v19 = *(v0 + 8);

      return v19();
    }

    sub_29EB875D8(v0 + 64);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  else
  {
    v20 = *(v0 + 200);
    sub_29EB875D8(v0 + 64);

    sub_29EB875D8(v0 + 104);
  }

  v22 = *(v0 + 160);
  v21 = *(v0 + 168);

  v23 = *(v0 + 8);
  v24 = *(v0 + 184);
  v25 = *(v0 + 192);

  return v23(v24, v25);
}

uint64_t Fetcher.deinit()
{
  v1 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
  v2 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem;
  sub_29EB8B700();
  sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
  sub_29EB8B610();
  v3 = sub_29EB8B6B0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Fetcher.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
  if (is_remote)
  {
    v3 = sub_29EB8B6B0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem);
  }

  else
  {
    v5 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem;
    sub_29EB8B700();
    sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
    sub_29EB8B610();
    v6 = sub_29EB8B6B0();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(v0 + v5);
  }

  swift_defaultActor_destroy();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t sub_29EB86818()
{
  sub_29EB8B900();
  type metadata accessor for Fetcher(0);
  sub_29EB85494(&qword_2A1883578, type metadata accessor for Fetcher);
  sub_29EB8B7C0();
  return sub_29EB8B920();
}

uint64_t Fetcher.__allocating_init(actorSystem:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Fetcher.init(actorSystem:)(a1);
  return v5;
}

uint64_t Fetcher.init(actorSystem:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29EB8B6B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem;
  *(v1 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem) = a1;
  type metadata accessor for Fetcher(0);
  v14 = a1;
  sub_29EB8B700();
  sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
  sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);

  sub_29EB8B600();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id, v8, v4);
  v9 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_session;
  v10 = [objc_opt_self() ephemeralSessionConfiguration];
  v11 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + v9) = v11;
  v14 = *(v2 + v13);

  sub_29EB8B5E0();

  return v2;
}

uint64_t Fetcher.unownedExecutor.getter()
{
  if ((sub_29EB8B660() & 1) == 0)
  {
    type metadata accessor for Fetcher(0);
    sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
    return sub_29EB8B5D0();
  }

  return v0;
}

uint64_t sub_29EB86BD8()
{
  if ((sub_29EB8B660() & 1) == 0)
  {
    type metadata accessor for Fetcher(0);
    return sub_29EB8B5D0();
  }

  return v0;
}

uint64_t sub_29EB86C2C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for Fetcher(0);
  sub_29EB8B700();
  sub_29EB85494(&qword_2A1883530, MEMORY[0x29EDC5868]);
  result = sub_29EB8B5F0();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
    v8 = sub_29EB8B6B0();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t sub_29EB86D5C()
{
  v2 = *v0;
  sub_29EB8B900();
  type metadata accessor for Fetcher(0);
  sub_29EB8B7C0();
  return sub_29EB8B920();
}

uint64_t sub_29EB86DBC()
{
  v1 = *v0;
  type metadata accessor for Fetcher(0);
  sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
  return sub_29EB8B630();
}

uint64_t sub_29EB86E38()
{
  v2 = *v0;
  sub_29EB8B900();
  type metadata accessor for Fetcher(0);
  sub_29EB8B7C0();
  return sub_29EB8B920();
}

uint64_t sub_29EB86E94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC37ManagedBackgroundAssetsHelperFetching7Fetcher_id;
  v5 = sub_29EB8B6B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29EB86F10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for Fetcher(0);
  v5 = sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);

  return MEMORY[0x2A1C68108](v2, v3, v4, v5);
}

uint64_t sub_29EB86F9C()
{
  v1 = *v0;
  type metadata accessor for Fetcher(0);
  sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
  sub_29EB85494(&qword_2A1883638, MEMORY[0x29EDC5830]);
  return sub_29EB8B640();
}

uint64_t sub_29EB87064@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Fetcher(0);
  sub_29EB85494(&qword_2A1883538, type metadata accessor for Fetcher);
  sub_29EB85494(&qword_2A1883630, MEMORY[0x29EDC5830]);
  result = sub_29EB8B650();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29EB87134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_29EB8B710();
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_29EB872D0;

  return Fetcher.data(for:)(v7);
}

uint64_t sub_29EB872D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;
  *v7 = a1;
  v7[1] = a2;

  (*(v5 + 8))(v4, v6);

  v8 = *(v10 + 8);

  return v8();
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

uint64_t sub_29EB874A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Fetcher.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB8750C(uint64_t a1)
{
  v2 = type metadata accessor for Fetcher.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EB87568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1883568, &qword_29EB8BD88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB875D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1883568, &qword_29EB8BD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29EB87640()
{
  result = qword_2A1883570;
  if (!qword_2A1883570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883570);
  }

  return result;
}

uint64_t sub_29EB87694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EB87760(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29EB8829C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_29EB87760(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29EB8786C(a5, a6);
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
    result = sub_29EB8B860();
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

uint64_t sub_29EB8786C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29EB878B8(a1, a2);
  sub_29EB879E8(&unk_2A2549308);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29EB878B8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EB87AD4(v5, 0);
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

  result = sub_29EB8B860();
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
        v10 = sub_29EB8B7F0();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EB87AD4(v10, 0);
        result = sub_29EB8B840();
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

uint64_t sub_29EB879E8(uint64_t result)
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

  result = sub_29EB87B48(result, v12, 1, v3);
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

void *sub_29EB87AD4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1883640, &qword_29EB8BFC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EB87B48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1883640, &qword_29EB8BFC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_29EB87DF8()
{
  result = sub_29EB8B6B0();
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

uint64_t dispatch thunk of Fetcher.data(for:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EB87FE8;

  return v8(a1);
}

uint64_t sub_29EB87FE8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_29EB88140(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EB8B570();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29EB881C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EB8B570();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29EB88230()
{
  result = sub_29EB8B570();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB8829C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_29EB88384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB883CC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_29EB8842C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 - 100;
  if ((a1 - 100) <= 3)
  {
    *(a2 + 24) = &_s11StatusCodesO11InformationON;
    result = sub_29EB8ABB4();
    *(a2 + 32) = result;
    *a2 = v3;
    return result;
  }

  v6 = sub_29EB8A7EC(a1);
  if (v6 != 10)
  {
    v9 = v6;
    *(a2 + 24) = &_s11StatusCodesO7SuccessON;
    result = sub_29EB8AB60();
LABEL_11:
    *(a2 + 32) = result;
    *a2 = v9;
    return result;
  }

  v7 = sub_29EB8A8AC(a1);
  if (v7 != 8)
  {
    v9 = v7;
    *(a2 + 24) = &_s11StatusCodesO11RedirectionON;
    result = sub_29EB8AB0C();
    goto LABEL_11;
  }

  v8 = sub_29EB8A8D0(a1);
  if (v8 != 29)
  {
    v9 = v8;
    *(a2 + 24) = &_s11StatusCodesO11ClientErrorON;
    result = sub_29EB8AAB8();
    goto LABEL_11;
  }

  result = sub_29EB8A8F4(a1);
  if (result == 11)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v10 = result;
    *(a2 + 24) = &_s11StatusCodesO11ServerErrorON;
    result = sub_29EB8AA64();
    *(a2 + 32) = result;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_29EB88548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18837E0, &qword_29EB8C7A8);
  if (swift_dynamicCast())
  {
    sub_29EB8A9E8(v8, v9);
    sub_29EB8AA00(v9, a3);
    sub_29EB87640();
    swift_willThrowTypedImpl();
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    return sub_29EB8A980(v8);
  }
}

uint64_t sub_29EB886A4()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](v1 + 100);
  return sub_29EB8B920();
}

uint64_t sub_29EB8871C()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](v1 + 100);
  return sub_29EB8B920();
}

uint64_t sub_29EB88760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EB8A918(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EB887C0()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C840[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88848()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C840[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88894@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EB8A7EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EB888FC()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C800[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88984()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C800[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB889D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EB8A8AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EB88A38()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C890[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88AC0()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C890[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88B0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EB8A8D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EB88B74()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C978[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88BFC()
{
  v1 = *v0;
  sub_29EB8B900();
  MEMORY[0x29EDA9FB0](qword_29EB8C978[v1]);
  return sub_29EB8B920();
}

uint64_t sub_29EB88C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EB8A8F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29EB88C8C()
{
  sub_29EB87640();

  return sub_29EB8B8A0();
}

uint64_t sub_29EB88CC8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_29EB8B8A0();
}

uint64_t sub_29EB88D24(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v5 = sub_29EB8B870();
        MEMORY[0x29EDA9E80](32, 0xE100000000000000);
        v2 = 0xD000000000000012;
        v3 = "Temporary Redirect";
      }

      else
      {
        v5 = sub_29EB8B870();
        MEMORY[0x29EDA9E80](32, 0xE100000000000000);
        v2 = 0xD000000000000012;
        v3 = "Permanent Redirect";
      }

      v1 = (v3 - 32) | 0x8000000000000000;
    }

    else if (a1 == 4)
    {
      v5 = sub_29EB8B870();
      MEMORY[0x29EDA9E80](32, 0xE100000000000000);
      v1 = 0xEC00000064656966;
      v2 = 0x69646F4D20746F4ELL;
    }

    else
    {
      v5 = sub_29EB8B870();
      MEMORY[0x29EDA9E80](32, 0xE100000000000000);
      v1 = 0xE900000000000079;
      v2 = 0x786F725020657355;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = sub_29EB8B870();
      MEMORY[0x29EDA9E80](32, 0xE100000000000000);
      v1 = 0xE500000000000000;
      v2 = 0x646E756F46;
    }

    else
    {
      v5 = sub_29EB8B870();
      MEMORY[0x29EDA9E80](32, 0xE100000000000000);
      v2 = 0x6568744F20656553;
      v1 = 0xE900000000000072;
    }
  }

  else if (a1)
  {
    v5 = sub_29EB8B870();
    MEMORY[0x29EDA9E80](32, 0xE100000000000000);
    v1 = 0x800000029EB8CCF0;
    v2 = 0xD000000000000011;
  }

  else
  {
    v5 = sub_29EB8B870();
    MEMORY[0x29EDA9E80](32, 0xE100000000000000);
    v1 = 0x800000029EB8CD10;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x29EDA9E80](v2, v1);

  return v5;
}

uint64_t sub_29EB89014(unsigned __int8 a1)
{
  v9 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](32, 0xE100000000000000);
  v2 = 0xE800000000000000;
  v3 = 0x65756E69746E6F43;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69737365636F7250;
  if (a1 != 2)
  {
    v5 = 0x694820796C726145;
    v4 = 0xEB0000000073746ELL;
  }

  if (a1)
  {
    v3 = 0x6E69686374697753;
    v2 = 0xE900000000000067;
  }

  if (a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x29EDA9E80](v6, v7);

  return v9;
}

uint64_t sub_29EB8912C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x74532D69746C754DLL;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x64657355204D49;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6F43207465736552;
    if (a1 != 5)
    {
      v7 = 0x206C616974726150;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 19279;
    v2 = 0x6465747065636341;
    v3 = 0xD00000000000001DLL;
    if (a1 != 3)
    {
      v3 = 0x65746E6F43206F4ELL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64657461657243;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_29EB892A0()
{
  v1 = *v0;
  v4 = qword_29EB8C840[*v0];
  v5 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](32, 0xE100000000000000);
  v2 = sub_29EB8912C(v1);
  MEMORY[0x29EDA9E80](v2);

  return v5;
}

unint64_t sub_29EB89340(char a1)
{
  result = 0x7571655220646142;
  switch(a1)
  {
    case 1:
      result = 0x726F687475616E55;
      break;
    case 2:
    case 24:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6564646962726F46;
      break;
    case 4:
      result = 0x6E756F4620746F4ELL;
      break;
    case 5:
    case 17:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6563634120746F4ELL;
      break;
    case 7:
    case 20:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x2074736575716552;
      break;
    case 9:
      result = 0x7463696C666E6F43;
      break;
    case 10:
      result = 1701736263;
      break;
    case 11:
      result = 0x52206874676E654CLL;
      break;
    case 12:
    case 19:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x206F6F5420495255;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
    case 25:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x2061206D9980E249;
      break;
    case 21:
      result = 0x64656B636F4CLL;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6C726145206F6F54;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0xD00000000000001FLL;
      break;
    case 28:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29EB896E4()
{
  v1 = *v0;
  sub_29EB8B850();

  v2 = sub_29EB89340(v1);
  MEMORY[0x29EDA9E80](v2);

  MEMORY[0x29EDA9E80](782074082, 0xA400000000000000);
  return 0x1000000000000021;
}

uint64_t sub_29EB89788()
{
  v1 = *v0;
  v4 = qword_29EB8C890[*v0];
  v5 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](32, 0xE100000000000000);
  v2 = sub_29EB89340(v1);
  MEMORY[0x29EDA9E80](v2);

  return v5;
}

unint64_t sub_29EB89828(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6C706D4920746F4ELL;
    v7 = 0x6574614720646142;
    v8 = 0x2079617765746147;
    if (a1 == 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74654420706F6F4CLL;
    v2 = 0x6574784520746F4ELL;
    if (a1 != 9)
    {
      v2 = 0xD00000000000001FLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 6)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29EB899C0()
{
  v1 = *v0;
  sub_29EB8B850();

  v2 = sub_29EB89828(v1);
  MEMORY[0x29EDA9E80](v2);

  MEMORY[0x29EDA9E80](782074082, 0xA400000000000000);
  return 0x1000000000000021;
}

uint64_t sub_29EB89A64()
{
  v1 = *v0;
  v4 = qword_29EB8C978[*v0];
  v5 = sub_29EB8B870();
  MEMORY[0x29EDA9E80](32, 0xE100000000000000);
  v2 = sub_29EB89828(v1);
  MEMORY[0x29EDA9E80](v2);

  return v5;
}

uint64_t sub_29EB89B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = sub_29EB8A92C();

  return MEMORY[0x2A1C73168](a1, a2, v5, v6);
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

unint64_t sub_29EB89BDC()
{
  result = qword_2A18836C0;
  if (!qword_2A18836C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836C0);
  }

  return result;
}

unint64_t sub_29EB89C84()
{
  result = qword_2A18836C8;
  if (!qword_2A18836C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836C8);
  }

  return result;
}

unint64_t sub_29EB89CD8()
{
  result = qword_2A18836D0;
  if (!qword_2A18836D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836D0);
  }

  return result;
}

unint64_t sub_29EB89D2C()
{
  result = qword_2A18836D8;
  if (!qword_2A18836D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836D8);
  }

  return result;
}

unint64_t sub_29EB89D80()
{
  result = qword_2A18836E0;
  if (!qword_2A18836E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836E0);
  }

  return result;
}

unint64_t sub_29EB89DD8()
{
  result = qword_2A18836E8;
  if (!qword_2A18836E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18836E8);
  }

  return result;
}

unint64_t sub_29EB89E60()
{
  result = qword_2A1883700;
  if (!qword_2A1883700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883700);
  }

  return result;
}

unint64_t sub_29EB89F08()
{
  result = qword_2A1883708;
  if (!qword_2A1883708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883708);
  }

  return result;
}

unint64_t sub_29EB89F5C()
{
  result = qword_2A1883710;
  if (!qword_2A1883710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883710);
  }

  return result;
}

unint64_t sub_29EB89FB0()
{
  result = qword_2A1883718;
  if (!qword_2A1883718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883718);
  }

  return result;
}

unint64_t sub_29EB8A004()
{
  result = qword_2A1883720;
  if (!qword_2A1883720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883720);
  }

  return result;
}

unint64_t sub_29EB8A05C()
{
  result = qword_2A1883728;
  if (!qword_2A1883728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883728);
  }

  return result;
}

unint64_t sub_29EB8A134()
{
  result = qword_2A1883740;
  if (!qword_2A1883740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883740);
  }

  return result;
}

unint64_t sub_29EB8A188()
{
  result = qword_2A1883748;
  if (!qword_2A1883748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883748);
  }

  return result;
}

unint64_t sub_29EB8A1DC()
{
  result = qword_2A1883750;
  if (!qword_2A1883750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883750);
  }

  return result;
}

unint64_t sub_29EB8A230()
{
  result = qword_2A1883758;
  if (!qword_2A1883758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883758);
  }

  return result;
}

unint64_t sub_29EB8A288()
{
  result = qword_2A1883760;
  if (!qword_2A1883760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883760);
  }

  return result;
}

unint64_t sub_29EB8A360()
{
  result = qword_2A1883778;
  if (!qword_2A1883778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883778);
  }

  return result;
}

unint64_t sub_29EB8A3B4()
{
  result = qword_2A1883780;
  if (!qword_2A1883780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883780);
  }

  return result;
}

unint64_t sub_29EB8A408()
{
  result = qword_2A1883788;
  if (!qword_2A1883788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883788);
  }

  return result;
}

unint64_t sub_29EB8A45C()
{
  result = qword_2A1883790;
  if (!qword_2A1883790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883790);
  }

  return result;
}

unint64_t sub_29EB8A4B4()
{
  result = qword_2A1883798;
  if (!qword_2A1883798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883798);
  }

  return result;
}

uint64_t sub_29EB8A538(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_29EB8A5E0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_29EB8A644()
{
  result = qword_2A18837B0;
  if (!qword_2A18837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837B0);
  }

  return result;
}

unint64_t sub_29EB8A698()
{
  result = qword_2A18837B8;
  if (!qword_2A18837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837B8);
  }

  return result;
}

unint64_t sub_29EB8A6EC()
{
  result = qword_2A18837C0;
  if (!qword_2A18837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837C0);
  }

  return result;
}

unint64_t sub_29EB8A740()
{
  result = qword_2A18837C8;
  if (!qword_2A18837C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837C8);
  }

  return result;
}

unint64_t sub_29EB8A798()
{
  result = qword_2A18837D0;
  if (!qword_2A18837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837D0);
  }

  return result;
}

uint64_t sub_29EB8A7EC(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 > 201)
    {
      if (a1 == 202)
      {
        return 2;
      }

      if (a1 == 203)
      {
        return 3;
      }

      return 4;
    }

    if (a1 == 200)
    {
      return 0;
    }

    if (a1 == 201)
    {
      return 1;
    }

    return 10;
  }

  if (a1 > 206)
  {
    switch(a1)
    {
      case 207:
        return 7;
      case 208:
        return 8;
      case 226:
        return 9;
    }

    return 10;
  }

  if (a1 == 205)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_29EB8A8AC(uint64_t a1)
{
  if ((a1 - 300) > 8)
  {
    return 8;
  }

  else
  {
    return byte_29EB8C9D0[a1 - 300];
  }
}

uint64_t sub_29EB8A8D0(uint64_t a1)
{
  if ((a1 - 400) > 0x33)
  {
    return 29;
  }

  else
  {
    return byte_29EB8C9D9[a1 - 400];
  }
}

uint64_t sub_29EB8A8F4(uint64_t a1)
{
  if ((a1 - 500) > 0xB)
  {
    return 11;
  }

  else
  {
    return byte_29EB8CA0D[a1 - 500];
  }
}

uint64_t sub_29EB8A918(uint64_t a1)
{
  if ((a1 - 100) >= 4)
  {
    return 4;
  }

  else
  {
    return a1 - 100;
  }
}

unint64_t sub_29EB8A92C()
{
  result = qword_2A18837D8;
  if (!qword_2A18837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837D8);
  }

  return result;
}

uint64_t sub_29EB8A980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18837E8, &qword_29EB8C7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_29EB8A9E8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_29EB8AA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29EB8AA64()
{
  result = qword_2A18837F0;
  if (!qword_2A18837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837F0);
  }

  return result;
}

unint64_t sub_29EB8AAB8()
{
  result = qword_2A18837F8;
  if (!qword_2A18837F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18837F8);
  }

  return result;
}

unint64_t sub_29EB8AB0C()
{
  result = qword_2A1883800;
  if (!qword_2A1883800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883800);
  }

  return result;
}

unint64_t sub_29EB8AB60()
{
  result = qword_2A1883808;
  if (!qword_2A1883808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883808);
  }

  return result;
}

unint64_t sub_29EB8ABB4()
{
  result = qword_2A1883810;
  if (!qword_2A1883810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1883810);
  }

  return result;
}

uint64_t _s11StatusCodesO11InformationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11StatusCodesO11InformationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11StatusCodesO7SuccessOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11StatusCodesO7SuccessOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11StatusCodesO11RedirectionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11StatusCodesO11RedirectionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11StatusCodesO11ClientErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11StatusCodesO11ClientErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11StatusCodesO11ServerErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11StatusCodesO11ServerErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_29EB8B30C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29EB8B354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_29EB8B3B8(void *a1, char a2)
{
  if (a2)
  {
    sub_29EB8B850();

    v11 = 0x1000000000000024;
    v3 = sub_29EB8B950();
    MEMORY[0x29EDA9E80](v3);

    v4 = 782074082;
    v5 = 0xA400000000000000;
  }

  else
  {
    sub_29EB8B850();

    v11 = 0x1000000000000010;
    v6 = [a1 description];
    v7 = sub_29EB8B7D0();
    v9 = v8;

    MEMORY[0x29EDA9E80](v7, v9);

    v4 = 0x69207369209D80E2;
    v5 = 0xAF2E64696C61766ELL;
  }

  MEMORY[0x29EDA9E80](v4, v5);
  return v11;
}

uint64_t sub_29EB8B4F8()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_29EB849C8();
  return sub_29EB8B8A0();
}