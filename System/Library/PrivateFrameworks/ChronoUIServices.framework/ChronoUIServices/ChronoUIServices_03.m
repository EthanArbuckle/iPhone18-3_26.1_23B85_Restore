uint64_t sub_1D9300B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D92DA198;

  return sub_1D92FE7D8(a1, v8, v4, v5, v6, v7);
}

void sub_1D9300C2C(void *a1, uint64_t a2)
{
  v4 = [a1 configuration];
  [v4 mutableCopy];

  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISMutableControlInstanceConfiguration(0);
  swift_dynamicCast();
  (*(a2 + 16))(a2);
  [v5 copy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISControlInstanceConfiguration(0);
  swift_dynamicCast();
  [a1 setConfiguration_];
}

uint64_t dispatch thunk of ControlsUIClientInterface.setControlState(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D92D9CEC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsUIClientInterface.performControlAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D92DA198;

  return v11(a1, a2, a3);
}

uint64_t sub_1D9301074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v5 = sub_1D9327034();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D9301100(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1D9301218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v4 = sub_1D9327034();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D93012A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v4 = sub_1D9327034();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D9301394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D93013FC()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1D9301444(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FixedEnvironmentDataSource.__allocating_init(environment:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v7 = sub_1D9327034();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5 + v6, a1, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80);
  v12 = sub_1D9326C64();
  (*(v8 + 8))(a1, v7);

  *(v5 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v12;
  return v5;
}

uint64_t FixedEnvironmentDataSource.init(environment:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v5 = sub_1D9327034();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80);
  v10 = sub_1D9326C64();
  (*(v6 + 8))(a1, v5);

  *(v2 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v10;
  return v2;
}

uint64_t FixedEnvironmentDataSource.__allocating_init(widgetEnvironment:)(uint64_t a1)
{
  v49 = sub_1D9327974();
  v51 = *(v49 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9327984();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v18 = sub_1D9327034();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - v24;
  sub_1D9327024();
  v55 = a1;
  sub_1D93279C4();
  v53 = *(v19 + 8);
  v54 = v19 + 8;
  v53(v23, v18);
  v26 = *(v56 + 16);
  v50 = v10;
  v26(v8, v10, v4);
  sub_1D9299378(&qword_1EDE3BCA0, MEMORY[0x1E69856E8]);
  v27 = v48;
  v52 = v4;
  sub_1D9327FE4();
  sub_1D9299378(&qword_1EDE3BCA8, MEMORY[0x1E69856D8]);
  v28 = v49;
  sub_1D9328384();
  v29 = v15;
  v47 = *(v19 + 48);
  if (v47(v15, 1, v18) == 1)
  {
    (*(v51 + 8))(v27, v28);
    (*(v56 + 8))(v50, v52);
    v30 = 1;
  }

  else
  {
    v45 = v25;
    v46 = v17;
    v31 = v51;
    v32 = *(v19 + 32);
    v32(v23, v29, v18);
    (*(v31 + 8))(v27, v28);
    (*(v56 + 8))(v50, v52);
    v32(v46, v23, v18);
    v25 = v45;
    v17 = v46;
    v30 = 0;
  }

  (*(v19 + 56))(v17, v30, 1, v18);
  v33 = v47;
  if (v47(v17, 1, v18) == 1)
  {
    sub_1D9327024();
    if (v33(v17, 1, v18) != 1)
    {
      sub_1D930217C(v17);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  v34 = type metadata accessor for FixedEnvironmentDataSource(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  (*(v19 + 16))(v37 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment, v25, v18);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v57 = sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80);
  v41 = sub_1D9326C64();
  v42 = sub_1D9327A04();
  (*(*(v42 - 8) + 8))(v55, v42);

  v53(v25, v18);
  *(v37 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v41;
  return v37;
}

uint64_t FixedEnvironmentDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher);

  return v0;
}

uint64_t FixedEnvironmentDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1D9301EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v5 = sub_1D9327034();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1D9301F6C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1D9301FD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  a1[3] = type metadata accessor for SimpleEnvironmentProvider(0);
  a1[4] = sub_1D9299378(&qword_1EDE3DD08, type metadata accessor for SimpleEnvironmentProvider);
  *a1 = v3;
}

uint64_t *ClientEnvironmentProviderFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  return v0;
}

uint64_t ClientEnvironmentProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1D93020C8()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  v5 = sub_1D9327034();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t sub_1D930217C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9302234()
{
  result = sub_1D9327034();
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

void _s16ChronoUIServices21ControlInstancePickerCfd_0()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC0, &unk_1D932FEB0);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCAA8, &qword_1D932DFF0);
    sub_1D92933A0(v0 + *(*v0 + 112), &qword_1ECAFCBC8, qword_1D932E7F0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);
    v6 = *(v0 + *(*v0 + 144) + 32);

    v7 = *(v0 + *(*v0 + 152));

    v8 = *(v0 + *(*v0 + 168));

    v9 = *(*v0 + 176);
    v10 = sub_1D9326BE4();
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
    v11 = *(v0 + *(*v0 + 184) + 8);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
    v12 = *(v0 + *(*v0 + 216));

    v13 = *(v0 + *(*v0 + 224));
  }

  else
  {
    __break(1u);
  }
}

void sub_1D9302744()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAE0, &unk_1D932E040);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCAC8, &unk_1D932E7D0);
    sub_1D92933A0(v0 + *(*v0 + 112), &unk_1ECAFD180, &unk_1D932E7E0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);
    v6 = *(v0 + *(*v0 + 144) + 32);

    v7 = *(v0 + *(*v0 + 152));

    v8 = *(v0 + *(*v0 + 168));

    v9 = *(*v0 + 176);
    v10 = sub_1D9326BE4();
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
    v11 = *(v0 + *(*v0 + 184) + 8);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
    v12 = *(v0 + *(*v0 + 216));

    v13 = *(v0 + *(*v0 + 224));
  }

  else
  {
    __break(1u);
  }
}

void _s16ChronoUIServices21ControlInstanceToggleCfd_0()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA98, &unk_1D932FE80);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCA80, &qword_1D932DFB0);
    sub_1D92933A0(v0 + *(*v0 + 112), &qword_1ECAFCBC0, &unk_1D932E7C0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);
    v6 = *(v0 + *(*v0 + 144) + 32);

    v7 = *(v0 + *(*v0 + 152));

    v8 = *(v0 + *(*v0 + 168));

    v9 = *(*v0 + 176);
    v10 = sub_1D9326BE4();
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
    v11 = *(v0 + *(*v0 + 184) + 8);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
    v12 = *(v0 + *(*v0 + 216));

    v13 = *(v0 + *(*v0 + 224));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9302D24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1D9326A64();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_1D9327ED4();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v13 = sub_1D9328064();
  v2[21] = v13;
  v2[22] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D9302EE0, v13, v12);
}

uint64_t sub_1D9302EE0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1D9327A54();
  v4 = *v3;
  v5 = *(*v3 + 152);
  if (*(v3 + v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v3 + v5);

    v34 = sub_1D92C6A40();

    v4 = *v6;
  }

  else
  {
    v34 = 0;
  }

  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v4 + 200), v0 + 16);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v12 + 104))(v11, *MEMORY[0x1E6994040], v13);
  v15 = sub_1D9326A54();
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v15)
  {
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    (*(v18 + 104))(v16, *MEMORY[0x1E6985AD0], v17);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v19 = *(v18 + 8);
    v19(v16, v17);
    v20 = v34;
    if (!(v34 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v21 = *(v0 + 160);
      v19(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 112);
      v31 = *(v0 + 88);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    v20 = v34;
    if ((v34 & 1) == 0)
    {
      v27 = *(v0 + 160);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v20 & 1;
  v25 = *(MEMORY[0x1E69E8920] + 4);
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1D9303294;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D9303294()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 208) = v0;

  v7 = *(v2 + 176);
  v8 = *(v2 + 168);
  if (v0)
  {
    v9 = sub_1D93034C4;
  }

  else
  {
    v9 = sub_1D9303410;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D9303410()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  (*(v4 + 8))(v2, v3);
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D93034C4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];

  (*(v5 + 8))(v3, v4);

  v8 = v0[1];
  v9 = v0[26];

  return v8();
}

uint64_t sub_1D9303580(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1D9326A64();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_1D9327ED4();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v13 = sub_1D9328064();
  v2[21] = v13;
  v2[22] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D930373C, v13, v12);
}

uint64_t sub_1D930373C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1D9327A54();
  v4 = *v3;
  v5 = *(*v3 + 152);
  if (*(v3 + v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v3 + v5);

    v34 = sub_1D92C6A40();

    v4 = *v6;
  }

  else
  {
    v34 = 0;
  }

  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v4 + 200), v0 + 16);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v12 + 104))(v11, *MEMORY[0x1E6994040], v13);
  v15 = sub_1D9326A54();
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v15)
  {
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    (*(v18 + 104))(v16, *MEMORY[0x1E6985AD0], v17);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v19 = *(v18 + 8);
    v19(v16, v17);
    v20 = v34;
    if (!(v34 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v21 = *(v0 + 160);
      v19(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 112);
      v31 = *(v0 + 88);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    v20 = v34;
    if ((v34 & 1) == 0)
    {
      v27 = *(v0 + 160);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v20 & 1;
  v25 = *(MEMORY[0x1E69E8920] + 4);
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1D9303AF0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D9303AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 208) = v0;

  v7 = *(v2 + 176);
  v8 = *(v2 + 168);
  if (v0)
  {
    v9 = sub_1D930AC78;
  }

  else
  {
    v9 = sub_1D930AC50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D9303C6C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1D9326A64();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_1D9327ED4();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v13 = sub_1D9328064();
  v2[21] = v13;
  v2[22] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D9303E28, v13, v12);
}

uint64_t sub_1D9303E28()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1D9327A54();
  v4 = *v3;
  v5 = *(*v3 + 152);
  if (*(v3 + v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v3 + v5);

    v34 = sub_1D92C6A40();

    v4 = *v6;
  }

  else
  {
    v34 = 0;
  }

  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v4 + 200), v0 + 16);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v12 + 104))(v11, *MEMORY[0x1E6994040], v13);
  v15 = sub_1D9326A54();
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v15)
  {
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    (*(v18 + 104))(v16, *MEMORY[0x1E6985AD0], v17);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v19 = *(v18 + 8);
    v19(v16, v17);
    v20 = v34;
    if (!(v34 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v21 = *(v0 + 160);
      v19(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 112);
      v31 = *(v0 + 88);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    v20 = v34;
    if ((v34 & 1) == 0)
    {
      v27 = *(v0 + 160);
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v24 = swift_task_alloc();
  *(v0 + 192) = v24;
  *(v24 + 16) = v23;
  *(v24 + 24) = v20 & 1;
  v25 = *(MEMORY[0x1E69E8920] + 4);
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1D9303AF0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D93041DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v41 = sub_1D9327614();
  v44 = *(v41 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9327654();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = sub_1D9327624();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  (*(v18 + 104))(v21, *MEMORY[0x1E69E7F90], v17);
  v22 = sub_1D93282D4();
  v23 = v21;
  v24 = v34;
  (*(v18 + 8))(v23, v17);
  (*(v13 + 16))(v16, v24, v12);
  v25 = (*(v13 + 80) + 25) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v36;
  LOBYTE(v14) = v37;
  *(v26 + 24) = v37;
  v27 = *(v13 + 32);
  v35 = v12;
  v27(v26 + v25, v16, v12);
  aBlock[4] = v38;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = v39;
  v28 = _Block_copy(aBlock);

  sub_1D9327634();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D9309FF0(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D930A728();
  v30 = v40;
  v29 = v41;
  sub_1D93283C4();
  MEMORY[0x1DA72E860](0, v11, v30, v28);
  _Block_release(v28);

  (*(v44 + 8))(v30, v29);
  (*(v42 + 8))(v11, v43);

  if (v14)
  {
    sub_1D92F0450();
    v32 = swift_allocError();
    *v33 = 2;
    aBlock[0] = v32;
    return sub_1D9328074();
  }

  return result;
}

void sub_1D930467C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v48 = *(v11 - 8);
  v46 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v12;
  v13 = sub_1D9326BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [objc_allocWithZone(MEMORY[0x1E69D4260]) init];
  v18 = *(v14 + 16);
  v19 = a1 + *(*a1 + 176);
  v44 = v13;
  v18(v17, v19, v13);

  v20 = sub_1D9326BC4();
  v21 = sub_1D9328234();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = a3;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = (a1 + *(*a1 + 184));
    v43 = a6;
    v41 = v11;
    v27 = a2;
    v28 = *v26;
    v29 = v26[1];

    v30 = sub_1D9293524(v28, v29, aBlock);
    a2 = v27;
    v11 = v41;

    *(v23 + 4) = v30;
    a6 = v43;
    _os_log_impl(&dword_1D928E000, v20, v21, "[%{public}s] Authentication requested", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v31 = v25;
    a3 = v40;
    MEMORY[0x1DA72F920](v31, -1, -1);
    v32 = v23;
    a5 = v42;
    MEMORY[0x1DA72F920](v32, -1, -1);
  }

  (*(v14 + 8))(v17, v44);
  v34 = v47;
  v33 = v48;
  (*(v48 + 16))(v47, a3, v11);
  v35 = (*(v33 + 80) + 33) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v37 = v45;
  *(v36 + 16) = a1;
  *(v36 + 24) = v37;
  *(v36 + 32) = a2 & 1;
  (*(v33 + 32))(v36 + v35, v34, v11);
  aBlock[4] = a5;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D93050F8;
  aBlock[3] = a6;
  v38 = _Block_copy(aBlock);

  v39 = v37;

  [v39 requestPasscodeUnlockUIWithOptions:0 withCompletion:v38];
  _Block_release(v38);
}

uint64_t sub_1D9304A60(int a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a7;
  v35 = a8;
  v33 = a4;
  v31 = a3;
  v29 = a2;
  v30 = a1;
  v9 = sub_1D9327614();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9327654();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  v32 = sub_1D93282A4();
  (*(v18 + 16))(v21, a5, v17);
  v22 = (*(v18 + 80) + 41) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = v30;
  v24 = v31;
  *(v23 + 32) = v31;
  *(v23 + 40) = v33;
  (*(v18 + 32))(v23 + v22, v21, v17);
  aBlock[4] = v34;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = v35;
  v25 = _Block_copy(aBlock);

  v26 = v24;

  sub_1D9327634();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D9309FF0(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D930A728();
  sub_1D93283C4();
  v27 = v32;
  MEMORY[0x1DA72E860](0, v16, v12, v25);
  _Block_release(v25);

  (*(v38 + 8))(v12, v9);
  return (*(v36 + 8))(v16, v37);
}

id sub_1D9304E1C(uint64_t a1, char a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_1D9326BE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1 + *(*a1 + 176), v10);

  v15 = sub_1D9326BC4();
  v16 = sub_1D9328234();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a5;
    v33 = v19;
    v20 = v19;
    *v18 = 136446466;
    v21 = (a1 + *(*a1 + 184));
    v31 = a3;
    v22 = a4;
    v23 = a2;
    v25 = *v21;
    v24 = v21[1];

    v26 = sub_1D9293524(v25, v24, &v33);
    a2 = v23;
    a4 = v22;
    a3 = v31;

    *(v18 + 4) = v26;
    *(v18 + 12) = 1026;
    *(v18 + 14) = a2 & 1;
    _os_log_impl(&dword_1D928E000, v15, v16, "[%{public}s] Authentication result: %{BOOL,public}d", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72F920](v20, -1, -1);
    MEMORY[0x1DA72F920](v18, -1, -1);

    (*(v11 + 8))(v14, v30);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  result = [a3 invalidate];
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
      return sub_1D9328084();
    }

    else
    {
      sub_1D92F0450();
      v28 = swift_allocError();
      *v29 = 3;
      v33 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
      return sub_1D9328074();
    }
  }

  return result;
}

uint64_t sub_1D93050F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t ControlInstancePicker.ViewModel.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.options.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstancePicker.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.renderAsSlider.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstancePicker.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void *ControlInstancePicker.ViewModel.Option.platformIcon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.tint.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.status.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.actionHint.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1D9305AF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 8);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    sub_1D92E5F64(v27, v16);
    sub_1D92E5F64(v31, v16);
    v14 = _s16ChronoUIServices21ControlInstancePickerC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_1D92E5FC0(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_1D92E5FC0(v35);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_1D9305C40()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D9305CA4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D9305CE0()
{
  v1 = v0;
  v67 = sub_1D9326BE4();
  v63 = *(v67 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F8, &unk_1D932FEC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v58 - v14;
  v16 = sub_1D9327DB4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v60 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v64 = (&v58 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v29 = *(v5 + 56);
  v65 = v4;
  v66 = &v58 - v30;
  v59 = v29;
  v29();
  v31 = *(*v1 + 152);
  v32 = *(v1 + v31);
  if (!v32)
  {
    goto LABEL_4;
  }

  v33 = *(v1 + v31);

  BSDispatchQueueAssertMain();
  v34 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v32 + v34, v11, &qword_1ECAFC4F0, &qword_1D932CC18);

  v35 = sub_1D9327B44();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v11, 1, v35) == 1)
  {
    sub_1D92933A0(v11, &qword_1ECAFC4F0, &qword_1D932CC18);
LABEL_4:
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_1D92933A0(v15, &qword_1ECAFD1F8, &unk_1D932FEC0);
    v37 = v66;
    goto LABEL_6;
  }

  sub_1D9327B24();
  (*(v36 + 8))(v11, v35);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v55 = v58;
  (*(v17 + 32))(v58, v15, v16);
  v56 = v64;
  sub_1D930652C(v55, v64);
  (*(v17 + 8))(v55, v16);
  v37 = v66;
  sub_1D92933A0(v66, &qword_1ECAFCBC8, qword_1D932E7F0);
  sub_1D9297374(v56, v37, &qword_1ECAFCBC8, qword_1D932E7F0);
LABEL_6:
  sub_1D92973DC(v37, v26, &qword_1ECAFCBC8, qword_1D932E7F0);
  v38 = v65;
  if ((*(v5 + 48))(v26, 1, v65) == 1)
  {
    sub_1D92933A0(v26, &qword_1ECAFCBC8, qword_1D932E7F0);
    v40 = v62;
    v39 = v63;
    (*(v63 + 16))(v62, v1 + *(*v1 + 176), v67);

    v41 = sub_1D9326BC4();
    v42 = sub_1D9328234();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v37;
      v45 = swift_slowAlloc();
      v68 = v45;
      *v43 = 136446210;
      v46 = (v1 + *(*v1 + 184));
      v47 = *v46;
      v48 = v46[1];

      v49 = sub_1D9293524(v47, v48, &v68);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_1D928E000, v41, v42, "[%{public}s] No view model changes found.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1DA72F920](v45, -1, -1);
      MEMORY[0x1DA72F920](v43, -1, -1);

      (*(v39 + 8))(v40, v67);
      v50 = v44;
    }

    else
    {

      (*(v39 + 8))(v40, v67);
      v50 = v37;
    }
  }

  else
  {
    v51 = v61;
    sub_1D930ABC8(v26, v61, type metadata accessor for ControlInstancePicker.ViewModel);
    v52 = v64;
    sub_1D92970C4(v51, v64, type metadata accessor for ControlInstancePicker.ViewModel);
    (v59)(v52, 0, 1, v38);
    v53 = *(*v1 + 112);
    swift_beginAccess();
    v54 = v60;
    sub_1D92973DC(v1 + v53, v60, &qword_1ECAFCBC8, qword_1D932E7F0);
    swift_beginAccess();
    sub_1D930AB58(v52, v1 + v53);
    swift_endAccess();
    sub_1D93156A0(v54);
    sub_1D92933A0(v54, &qword_1ECAFCBC8, qword_1D932E7F0);
    sub_1D92933A0(v52, &qword_1ECAFCBC8, qword_1D932E7F0);
    sub_1D930A65C(v51, type metadata accessor for ControlInstancePicker.ViewModel);
    v50 = v37;
  }

  return sub_1D92933A0(v50, &qword_1ECAFCBC8, qword_1D932E7F0);
}

uint64_t sub_1D930652C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v207 = a1;
  v201 = a2;
  v197 = sub_1D9326BE4();
  v193 = *(v197 - 8);
  v3 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v200 = &v181 - v7;
  v195 = sub_1D9327DB4();
  v194 = *(v195 - 8);
  v8 = *(v194 + 64);
  v9 = MEMORY[0x1EEE9AC00](v195);
  v11 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v181 - v12;
  v187 = type metadata accessor for ControlIconView.Mode(0);
  v13 = *(*(v187 - 8) + 64);
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D93271E4();
  v203 = *(v15 - 8);
  v16 = *(v203 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v186 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v181 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v199 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v183 = &v181 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v185 = &v181 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v198 = &v181 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v208 = &v181 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v190 = &v181 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v191 = &v181 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v189 = &v181 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v226 = &v181 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v181 - v44;
  v46 = sub_1D9327D64();
  v219 = *(v46 - 8);
  v47 = *(v219 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v202 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v181 - v50;
  v52 = *(*v2 + 152);
  v206 = v2;
  v204 = v52;
  v53 = *&v2[v52];
  if (!v53)
  {
    goto LABEL_9;
  }

  v54 = *&v2[v52];

  BSDispatchQueueAssertMain();
  v55 = *(v53 + 32);

  if (v55)
  {
    v53 = sub_1D9326A24();
  }

  else
  {
    v53 = 0;
  }

  if (*&v206[v204])
  {
    v56 = *&v206[v204];

    v57 = sub_1D92C6A40();

    v218 = v57;
    if (v57)
    {
      v53 = 0;
    }
  }

  else
  {
LABEL_9:
    v218 = 0;
  }

  v205 = v53;
  v58 = sub_1D9327D74();
  v59 = *(v58 + 16);
  v217 = v15;
  if (v59)
  {
    v236 = MEMORY[0x1E69E7CC0];
    v60 = v58;
    sub_1D93094F0(0, v59, 0);
    result = v60;
    v62 = 0;
    v212 = result + ((*(v219 + 80) + 32) & ~*(v219 + 80));
    v63 = v236;
    v211 = v219 + 16;
    v225 = (v203 + 48);
    v210 = (v203 + 8);
    v209 = (v219 + 8);
    v216 = v11;
    v215 = v45;
    v214 = result;
    v213 = v59;
    while (1)
    {
      if (v62 >= *(result + 16))
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v227 = v63;
      (*(v219 + 16))(v51, v212 + *(v219 + 72) * v62, v46);
      v64 = sub_1D9327D44();
      v223 = v65;
      v224 = v64;
      sub_1D9327D24();
      v66 = *v225;
      if ((*v225)(v45, 1, v15) == 1)
      {
        sub_1D92933A0(v45, &qword_1ECAFCBD8, &qword_1D932E920);
        v222 = 0;
        if (v218)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v67 = sub_1D93270E4();
        v68 = v208;
        (*(*(v67 - 8) + 56))(v208, 1, 1, v67);
        v222 = sub_1D93271A4();
        sub_1D92933A0(v68, &qword_1ECAFCE68, &qword_1D932F470);
        (*v210)(v45, v15);
        if (v218)
        {
          goto LABEL_18;
        }
      }

      sub_1D9327D34();
      if ((v69 & 1) == 0)
      {
        v221 = sub_1D9327434();
        goto LABEL_20;
      }

LABEL_18:
      v221 = 0;
LABEL_20:
      v70 = sub_1D9327D54();
      v220 = v71;
      v72 = sub_1D9327D14();
      v74 = v73;
      v75 = v226;
      sub_1D9327D24();
      if (v66(v75, 1, v15) == 1)
      {
        sub_1D92933A0(v75, &qword_1ECAFCBD8, &qword_1D932E920);
        v76 = 0;
      }

      else
      {
        v76 = sub_1D9327174();
        (*v210)(v226, v15);
      }

      (*v209)(v51, v46);
      v63 = v227;
      v236 = v227;
      v78 = *(v227 + 16);
      v77 = *(v227 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1D93094F0((v77 > 1), v78 + 1, 1);
        v63 = v236;
      }

      ++v62;
      *(v63 + 16) = v78 + 1;
      v79 = (v63 + 72 * v78);
      v80 = v223;
      v79[4] = v224;
      v79[5] = v80;
      v81 = v221;
      v79[6] = v222;
      v79[7] = v76;
      v79[8] = v81;
      v79[9] = v70;
      v79[10] = v220;
      v79[11] = v72;
      v79[12] = v74;
      v15 = v217;
      v11 = v216;
      v45 = v215;
      result = v214;
      if (v213 == v62)
      {
        v227 = v63;

        goto LABEL_28;
      }
    }
  }

  v227 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v82 = v207;
  v83 = *(sub_1D9327D74() + 16);

  if (v205 < v83)
  {
    v84 = v205;
    result = sub_1D9327D74();
    if ((v84 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    if (v84 >= *(result + 16))
    {
LABEL_68:
      __break(1u);
      return result;
    }

    (*(v219 + 16))(v202, result + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v84, v46);

    if (v218)
    {
      v226 = 0;
      v85 = v203;
      v86 = v190;
      v87 = v189;
    }

    else
    {
      sub_1D9327D34();
      v85 = v203;
      v86 = v190;
      v87 = v189;
      if (v106)
      {
        v226 = 0;
      }

      else
      {
        v226 = sub_1D9327434();
      }
    }

    sub_1D9327D24();
    v107 = v85;
    v108 = *(v85 + 48);
    v109 = v108(v87, 1, v15);
    v181 = v46;
    if (v109 == 1)
    {
      sub_1D92933A0(v87, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D9327DA4();
      if (v108(v86, 1, v15) == 1)
      {
        sub_1D92933A0(v86, &qword_1ECAFCBD8, &qword_1D932E920);
        v110 = v182;
        sub_1D9327CF4();
        v111 = MEMORY[0x1DA72E290](v82, v110);
        (*(v194 + 8))(v110, v195);
        if (v111)
        {
          v112 = *&v206[v204];
          if (v112)
          {
            v113 = *(v112 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
            v114 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
            swift_beginAccess();
            v115 = *(v113 + v114);

            v116 = sub_1D93276C4();

            if (v116)
            {
              v117 = sub_1D93277C4();

              if (v117)
              {
                v118 = v198;
                sub_1D92F06E8(v198);
                v119 = type metadata accessor for ControlIconView(0);
                (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
LABEL_56:
                v157 = sub_1D9327D04();
                v159 = v158;
                sub_1D92973DC(v118, v199, &qword_1ECAFCA50, &unk_1D932DF60);
                v160 = sub_1D9327D94();
                v162 = v161;
                v163 = sub_1D9327CC4();
                sub_1D9327CB4();
                if (*&v206[v204])
                {
                  v164 = *&v206[v204];

                  LODWORD(v224) = sub_1D92C6A40();
                }

                else
                {
                  LODWORD(v224) = 0;
                }

                v165 = sub_1D9327D84();
                v166 = *&v206[v204];
                LODWORD(v225) = v163;
                LODWORD(v223) = v165;
                if (v166)
                {
                  v167 = *(v166 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
                  v168 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
                  swift_beginAccess();
                  v169 = *(v167 + v168);

                  v170 = sub_1D93276C4();

                  if (v170)
                  {
                    v171 = sub_1D93277C4();
                  }

                  else
                  {
                    v171 = 0;
                  }

                  v172 = v160;
                }

                else
                {
                  v172 = v160;
                  v171 = 0;
                }

                v173 = sub_1D9327CD4();
                v175 = v174;

                sub_1D92933A0(v198, &qword_1ECAFCA50, &unk_1D932DF60);
                (*(v219 + 8))(v202, v181);
                v176 = v201;
                *v201 = v205;
                v176[1] = v157;
                v177 = v227;
                v176[2] = v159;
                v176[3] = v177;
                v178 = type metadata accessor for ControlInstancePicker.ViewModel(0);
                sub_1D9297374(v199, v176 + v178[7], &qword_1ECAFCA50, &unk_1D932DF60);
                v179 = (v176 + v178[8]);
                *v179 = v172;
                v179[1] = v162;
                *(v176 + v178[9]) = v225 & 1;
                sub_1D9297374(v200, v176 + v178[10], &qword_1ECAFD1A8, &qword_1D932FC48);
                *(v176 + v178[11]) = v224 & 1;
                *(v176 + v178[12]) = v223 & 1;
                *(v176 + v178[13]) = v171 & 1;
                v180 = (v176 + v178[14]);
                *v180 = v173;
                v180[1] = v175;
                return (*(*(v178 - 1) + 56))(v176, 0, 1, v178);
              }
            }

            else
            {
            }
          }
        }

        v156 = type metadata accessor for ControlIconView(0);
        v118 = v198;
        (*(*(v156 - 8) + 56))(v198, 1, 1, v156);
        goto LABEL_56;
      }

      v137 = v203;
      v138 = v186;
      (*(v203 + 32))(v186, v86, v15);
      v139 = v184;
      (*(v137 + 16))(v184, v138, v15);
      (*(v137 + 56))(v139, 0, 1, v15);
      v140 = 0;
      if ((v218 & 1) == 0)
      {
        sub_1D9327D34();
        v140 = v141 ^ 1;
      }

      LOBYTE(v233) = v140 & 1;
      sub_1D9327544();
      v142 = v236;
      v143 = v237;
      v144 = v238;
      v145 = v184;
      v146 = v188;
      sub_1D92973DC(v184, v188, &qword_1ECAFCBD8, &qword_1D932E920);
      swift_storeEnumTagMultiPayload();
      v129 = type metadata accessor for ControlIconView(0);
      v147 = v129[7];
      v131 = v183;
      v183[v129[10]] = 1;
      v148 = v129[11];
      v149 = sub_1D9326E44();
      (*(*(v149 - 8) + 56))(v131 + v148, 1, 1, v149);
      v150 = v131 + v129[12];
      *v150 = swift_getKeyPath();
      *(v150 + 8) = 0;
      sub_1D92970C4(v146, v131, type metadata accessor for ControlIconView.Mode);
      *(v131 + v129[5]) = 0;
      *(v131 + v129[6]) = 1;
      *(v131 + v147) = v226;
      v151 = v131 + v129[8];
      *v151 = v142;
      *(v151 + 8) = v143;
      *(v151 + 16) = v144;
      v230 = v142;
      v231 = v143;
      v232 = v144;

      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v229, v152);
      v228 = v229;
      sub_1D9327544();
      sub_1D930A65C(v146, type metadata accessor for ControlIconView.Mode);
      sub_1D92933A0(v145, &qword_1ECAFCBD8, &qword_1D932E920);
      (*(v203 + 8))(v186, v217);
    }

    else
    {
      v120 = v192;
      (*(v107 + 32))(v192, v87, v15);
      v121 = v191;
      (*(v107 + 16))(v191, v120, v15);
      (*(v107 + 56))(v121, 0, 1, v15);
      v122 = 0;
      if ((v218 & 1) == 0)
      {
        sub_1D9327D34();
        v122 = v123 ^ 1;
      }

      LOBYTE(v233) = v122 & 1;
      sub_1D9327544();
      v124 = v236;
      v125 = v237;
      v126 = v238;
      v127 = v191;
      v128 = v188;
      sub_1D92973DC(v191, v188, &qword_1ECAFCBD8, &qword_1D932E920);
      swift_storeEnumTagMultiPayload();
      v129 = type metadata accessor for ControlIconView(0);
      v130 = v129[7];
      v131 = v185;
      v185[v129[10]] = 1;
      v132 = v129[11];
      v133 = sub_1D9326E44();
      (*(*(v133 - 8) + 56))(v131 + v132, 1, 1, v133);
      v134 = v131 + v129[12];
      *v134 = swift_getKeyPath();
      *(v134 + 8) = 0;
      sub_1D92970C4(v128, v131, type metadata accessor for ControlIconView.Mode);
      *(v131 + v129[5]) = 0;
      *(v131 + v129[6]) = 1;
      *(v131 + v130) = v226;
      v135 = v131 + v129[8];
      *v135 = v124;
      *(v135 + 8) = v125;
      *(v135 + 16) = v126;
      v230 = v124;
      v231 = v125;
      v232 = v126;

      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v229, v136);
      v228 = v229;
      sub_1D9327544();
      sub_1D930A65C(v128, type metadata accessor for ControlIconView.Mode);
      sub_1D92933A0(v127, &qword_1ECAFCBD8, &qword_1D932E920);
      (*(v203 + 8))(v192, v217);
    }

    v153 = v234;
    v154 = v235;
    v155 = v131 + v129[9];
    *v155 = v233;
    *(v155 + 8) = v153;
    *(v155 + 16) = v154;
    (*(*(v129 - 1) + 56))(v131, 0, 1, v129);
    v118 = v198;
    sub_1D9297374(v131, v198, &qword_1ECAFCA50, &unk_1D932DF60);
    goto LABEL_56;
  }

  v88 = v206;
  v89 = *v206;
  v90 = v193;
  v91 = v196;
  v92 = v197;
  (*(v193 + 16))(v196, &v88[*(*v88 + 176)], v197);
  v93 = v194;
  v94 = v195;
  (*(v194 + 16))(v11, v82, v195);

  v95 = sub_1D9326BC4();
  v96 = sub_1D9328214();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = v90;
    v99 = swift_slowAlloc();
    v236 = v99;
    *v97 = 136446722;
    v100 = &v88[*(*v88 + 184)];
    v101 = *v100;
    v102 = v100[1];

    v103 = sub_1D9293524(v101, v102, &v236);

    *(v97 + 4) = v103;
    *(v97 + 12) = 2050;
    *(v97 + 14) = v205;
    *(v97 + 22) = 2050;
    v104 = *(sub_1D9327D74() + 16);

    (*(v93 + 8))(v11, v94);
    *(v97 + 24) = v104;
    _os_log_impl(&dword_1D928E000, v95, v96, "[%{public}s] State and picker option mismatch.  State=%{public}ld, picker option count: %{public}ld", v97, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1DA72F920](v99, -1, -1);
    MEMORY[0x1DA72F920](v97, -1, -1);

    (*(v98 + 8))(v196, v197);
  }

  else
  {
    (*(v93 + 8))(v11, v94);

    (*(v90 + 8))(v91, v92);
  }

  v105 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  return (*(*(v105 - 8) + 56))(v201, 1, 1, v105);
}

uint64_t sub_1D9307C64()
{
  v1[2] = v0;
  v2 = sub_1D9326BE4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1D93280A4();
  v1[6] = sub_1D9328094();
  v6 = sub_1D9328064();

  return MEMORY[0x1EEE6DFA0](sub_1D9307D58, v6, v5);
}

uint64_t sub_1D9307D58()
{
  v23 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  BSDispatchQueueAssertMain();
  (*(v4 + 16))(v2, v5 + *(*v5 + 176), v3);

  v6 = sub_1D9326BC4();
  v7 = sub_1D9328214();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = (v12 + *(*v12 + 184));
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_1D9293524(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1D928E000, v6, v7, "[%{public}s] Attempted to perform action on a picker, but a picker action is no-op.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72F920](v14, -1, -1);
    MEMORY[0x1DA72F920](v13, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D9307F38(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1D9326BE4();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for SetControlStateRequest();
  v2[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v8 = sub_1D9327A94();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1D93280A4();
  v2[30] = sub_1D9328094();
  v12 = sub_1D9328064();
  v2[31] = v12;
  v2[32] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D93080D0, v12, v11);
}

uint64_t sub_1D93080D0()
{
  v38 = v0;
  v1 = v0[19];
  BSDispatchQueueAssertMain();
  v2 = *v1;
  v3 = *(*v1 + 168);
  v0[33] = v3;
  v4 = *(v1 + v3);
  v0[34] = v4;
  if (v4)
  {
    v5 = *(v0[19] + *(v2 + 120));
    v0[35] = v5;

    v6 = [v5 control];
    v7 = [v6 intentReference];
    v0[36] = v7;

    if (v7)
    {
      v8 = v0[29];
      v9 = v7;
      sub_1D9327A44();
      v10 = swift_task_alloc();
      v0[37] = v10;
      *v10 = v0;
      v10[1] = sub_1D9308478;
      v11 = v0[29];
      v12 = v0[19];

      return sub_1D9303C6C(v11);
    }

    else
    {
      v22 = v0[19];
      v23 = *(*v22 + 152);
      v24 = *(v22 + v23);
      if (v24 && (v25 = *(v22 + v23), , BSDispatchQueueAssertMain(), v26 = *(v24 + 32), , , v26))
      {
        v27 = v0[18];
        v28 = sub_1D93269F4();
      }

      else
      {
        v29 = v0[18];
        sub_1D9326A34();
        v28 = sub_1D9326A04();
      }

      v0[39] = v28;
      v30 = v0[33];
      v31 = v0[19];
      if (*(v31 + v30))
      {
        v32 = *(v31 + v30);

        sub_1D92D3994((v0 + 2));
        if (v0[5])
        {
          sub_1D929CF00((v0 + 2), (v0 + 12));
          sub_1D92933A0((v0 + 2), &qword_1ECAFC858, &unk_1D932FC60);
          v33 = v0[16];
          __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
          sub_1D9327AB4();
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
        }

        else
        {
          sub_1D92933A0((v0 + 2), &qword_1ECAFC858, &unk_1D932FC60);
          memset(v36, 0, sizeof(v36));
          v37 = 0;
        }

        sub_1D92D3B80(v36);

        v34 = v0[19];
      }

      v35 = v0[28];
      sub_1D9305CE0();
      sub_1D9327A34();

      return MEMORY[0x1EEE6DFA0](sub_1D930879C, 0, 0);
    }
  }

  else
  {
    v14 = v0[30];

    sub_1D92F0450();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    v17 = v0[28];
    v16 = v0[29];
    v18 = v0[25];
    v20 = v0[22];
    v19 = v0[23];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1D9308478()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {
    v7 = sub_1D9309118;
  }

  else
  {
    v7 = sub_1D93085B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D93085B4()
{
  v21 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(*v4 + 152);
  v6 = *(v4 + v5);
  if (v6 && (v7 = *(v4 + v5), , BSDispatchQueueAssertMain(), v8 = *(v6 + 32), , , v8))
  {
    v9 = *(v0 + 144);
    v10 = sub_1D93269F4();
  }

  else
  {
    v11 = *(v0 + 144);
    sub_1D9326A34();
    v10 = sub_1D9326A04();
  }

  *(v0 + 312) = v10;
  v12 = *(v0 + 264);
  v13 = *(v0 + 152);
  if (*(v13 + v12))
  {
    v14 = *(v13 + v12);

    sub_1D92D3994(v0 + 16);
    if (*(v0 + 40))
    {
      sub_1D929CF00(v0 + 16, v0 + 96);
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      v15 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      sub_1D9327AB4();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      sub_1D92933A0(v0 + 16, &qword_1ECAFC858, &unk_1D932FC60);
      memset(v19, 0, sizeof(v19));
      v20 = 0;
    }

    sub_1D92D3B80(v19);

    v16 = *(v0 + 152);
  }

  v17 = *(v0 + 224);
  sub_1D9305CE0();
  sub_1D9327A34();

  return MEMORY[0x1EEE6DFA0](sub_1D930879C, 0, 0);
}

uint64_t sub_1D930879C()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[25];
  v4 = v0[24];
  v5 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  (*(v0[27] + 16))(&v3[*(v4 + 20)], v0[28], v0[26]);
  *v3 = v5;
  *&v3[*(v4 + 24)] = v1;
  sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 7));
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = *(v7 + 72);

  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_1D9308948;
  v11 = v0[25];

  return v13(v11, v6, v7);
}

uint64_t sub_1D9308948()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1D9308DF8;
  }

  else
  {
    v3 = sub_1D9308A5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9308A5C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1D930A65C(v0[25], type metadata accessor for SetControlStateRequest);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_1D9308B00, v4, v5);
}

uint64_t sub_1D9308B00()
{
  v37 = v0;
  v1 = v0[39];
  v2 = v0[30];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];

  (*(v5 + 16))(v3, v6 + *(*v6 + 176), v4);

  v7 = sub_1D9326BC4();
  v8 = sub_1D93281F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[39];
    v10 = v0[34];
    v11 = v0[21];
    v34 = v0[20];
    v35 = v0[23];
    v12 = v0[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136446466;
    v15 = (v12 + *(*v12 + 184));
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_1D9293524(v16, v17, &v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v0[17] = v9;
    sub_1D9326A34();
    sub_1D9309FF0(&qword_1ECAFC780, MEMORY[0x1E6994010]);
    v19 = sub_1D9328614();
    v21 = sub_1D9293524(v19, v20, &v36);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1D928E000, v7, v8, "[%{public}s] Control set state succeeded (new state %{public}s)", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v14, -1, -1);
    MEMORY[0x1DA72F920](v13, -1, -1);

    (*(v11 + 8))(v35, v34);
  }

  else
  {
    v22 = v0[39];
    v23 = v0[34];
    v24 = v0[23];
    v25 = v0[20];
    v26 = v0[21];

    (*(v26 + 8))(v24, v25);
  }

  v28 = v0[28];
  v27 = v0[29];
  v29 = v0[25];
  v31 = v0[22];
  v30 = v0[23];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D9308DF8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1D930A65C(v0[25], type metadata accessor for SetControlStateRequest);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = v0[31];
  v5 = v0[32];

  return MEMORY[0x1EEE6DFA0](sub_1D9308E9C, v4, v5);
}

uint64_t sub_1D9308E9C()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[30];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];

  (*(v5 + 16))(v4, v7 + *(*v7 + 176), v6);

  v8 = v1;
  v9 = sub_1D9326BC4();
  v10 = sub_1D9328214();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[41];
  if (v11)
  {
    v13 = v0[34];
    v14 = v0[35];
    v15 = v0[21];
    v34 = v0[22];
    v16 = v0[20];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543618;
    v19 = [v14 control];
    *(v17 + 4) = v19;
    *v18 = v19;
    *(v17 + 12) = 2114;
    v20 = v12;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    v18[1] = v21;
    _os_log_impl(&dword_1D928E000, v9, v10, "[%{public}@] Control action failed: %{public}@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC510, &qword_1D932CEE0);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v18, -1, -1);
    MEMORY[0x1DA72F920](v17, -1, -1);

    (*(v15 + 8))(v34, v16);
  }

  else
  {
    v22 = v0[34];
    v24 = v0[21];
    v23 = v0[22];
    v25 = v0[20];

    (*(v24 + 8))(v23, v25);
  }

  swift_willThrow();

  v26 = v0[41];
  v28 = v0[28];
  v27 = v0[29];
  v29 = v0[25];
  v31 = v0[22];
  v30 = v0[23];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D9309118()
{
  v1 = v0[36];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[27];

  (*(v6 + 8))(v4, v5);
  v7 = v0[38];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[25];
  v12 = v0[22];
  v11 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t ControlInstancePicker.__allocating_init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  sub_1D929CF00(a2, v9);
  v7 = sub_1D92E1390(a1, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

uint64_t ControlInstancePicker.init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  sub_1D929CF00(a2, v6);
  v4 = sub_1D92E1390(a1, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

uint64_t ControlInstancePicker.__deallocating_deinit()
{
  _s16ChronoUIServices21ControlInstancePickerCfd_0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9309318()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92D9CEC;

  return sub_1D9307C64();
}

uint64_t sub_1D93093A8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D9307F38(v3);
}

uint64_t sub_1D9309444(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1D930947C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

char *sub_1D93094F0(char *a1, int64_t a2, char a3)
{
  result = sub_1D9309510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D9309510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1E0, &qword_1D932FE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL _s16ChronoUIServices21ControlInstancePickerC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a2[1];
  v12 = a2[2];
  v14 = a2[3];
  v13 = a2[4];
  v16 = a2[5];
  v15 = a2[6];
  v18 = a2[7];
  v17 = a2[8];
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    v30 = a2[7];
    v31 = a2[8];
    v32 = a1[8];
    v33 = a1[7];
    if ((*a1 != *a2 || v3 != v11) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v30 = a2[7];
    v31 = a2[8];
    v32 = a1[8];
    v33 = a1[7];
    if (v11)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }

    v19 = sub_1D9327484();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v14)
    {
      return 0;
    }

    sub_1D9296448(0, &qword_1EDE3B230, 0x1E69DCAB8);
    v20 = v14;
    v21 = v5;
    v22 = sub_1D9328314();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    v23 = sub_1D9327364();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    v25 = v32;
    v24 = v33;
    v26 = v30;
    v27 = v31;
    if (!v15)
    {
      return 0;
    }

    if (v7 != v16 || v8 != v15)
    {
      v28 = sub_1D9328654();
      v26 = v30;
      v27 = v31;
      v25 = v32;
      v24 = v33;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v25 = v32;
    v24 = v33;
    v26 = v30;
    v27 = v31;
    if (v15)
    {
      return 0;
    }
  }

  if (v25)
  {
    return v27 && (v24 == v26 && v25 == v27 || (sub_1D9328654() & 1) != 0);
  }

  return !v27;
}

uint64_t _s16ChronoUIServices21ControlInstancePickerC9ViewModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D9326814();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD200, &qword_1D9330960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - v12;
  v13 = type metadata accessor for ControlIconView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD208, &unk_1D932FED0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - v24;
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = a1[2];
  v27 = a2[2];
  if (v26)
  {
    if (!v27 || (a1[1] != a2[1] || v26 != v27) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  if ((sub_1D9305AF8(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v60 = v4;
  v61 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v28 = *(v61 + 28);
  v29 = *(v22 + 48);
  sub_1D92973DC(a1 + v28, v25, &qword_1ECAFCA50, &unk_1D932DF60);
  v30 = a2 + v28;
  v31 = v29;
  sub_1D92973DC(v30, &v25[v29], &qword_1ECAFCA50, &unk_1D932DF60);
  v32 = *(v14 + 48);
  if (v32(v25, 1, v13) == 1)
  {
    if (v32(&v25[v31], 1, v13) == 1)
    {
      sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
      goto LABEL_20;
    }

LABEL_15:
    v33 = &qword_1ECAFD208;
    v34 = &unk_1D932FED0;
    v35 = v25;
LABEL_16:
    sub_1D92933A0(v35, v33, v34);
    return 0;
  }

  sub_1D92973DC(v25, v21, &qword_1ECAFCA50, &unk_1D932DF60);
  if (v32(&v25[v31], 1, v13) == 1)
  {
    sub_1D930A65C(v21, type metadata accessor for ControlIconView);
    goto LABEL_15;
  }

  sub_1D930ABC8(&v25[v31], v17, type metadata accessor for ControlIconView);
  v37 = static ControlIconView.== infix(_:_:)(v21, v17);
  sub_1D930A65C(v17, type metadata accessor for ControlIconView);
  sub_1D930A65C(v21, type metadata accessor for ControlIconView);
  sub_1D92933A0(v25, &qword_1ECAFCA50, &unk_1D932DF60);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v38 = v61;
  v39 = *(v61 + 32);
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    v44 = v65;
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1D9328654() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v44 = v65;
    if (v43)
    {
      return 0;
    }
  }

  if (*(a1 + v38[9]) != *(a2 + v38[9]))
  {
    return 0;
  }

  v45 = v38[10];
  v46 = *(v10 + 48);
  v47 = v63;
  sub_1D92973DC(a1 + v45, v63, &qword_1ECAFD1A8, &qword_1D932FC48);
  sub_1D92973DC(a2 + v45, v47 + v46, &qword_1ECAFD1A8, &qword_1D932FC48);
  v48 = v64;
  v49 = *(v64 + 48);
  v50 = v60;
  if (v49(v47, 1, v60) != 1)
  {
    sub_1D92973DC(v47, v44, &qword_1ECAFD1A8, &qword_1D932FC48);
    if (v49(v47 + v46, 1, v50) != 1)
    {
      v51 = v47 + v46;
      v52 = v62;
      (*(v48 + 32))(v62, v51, v50);
      sub_1D9309FF0(&qword_1ECAFD210, MEMORY[0x1E6968FB0]);
      v53 = sub_1D9327F64();
      v54 = *(v48 + 8);
      v54(v52, v50);
      v54(v44, v50);
      sub_1D92933A0(v47, &qword_1ECAFD1A8, &qword_1D932FC48);
      if ((v53 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

    (*(v48 + 8))(v44, v50);
    goto LABEL_33;
  }

  if (v49(v47 + v46, 1, v50) != 1)
  {
LABEL_33:
    v33 = &qword_1ECAFD200;
    v34 = &qword_1D9330960;
    v35 = v47;
    goto LABEL_16;
  }

  sub_1D92933A0(v47, &qword_1ECAFD1A8, &qword_1D932FC48);
LABEL_35:
  if (*(a1 + v38[11]) == *(a2 + v38[11]) && *(a1 + v38[12]) == *(a2 + v38[12]) && *(a1 + v38[13]) == *(a2 + v38[13]))
  {
    v55 = v38[14];
    v56 = (a1 + v55);
    v57 = *(a1 + v55 + 8);
    v58 = (a2 + v55);
    v59 = v58[1];
    if (v57)
    {
      if (v59 && (*v56 == *v58 && v57 == v59 || (sub_1D9328654() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v59)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9309F98(uint64_t a1)
{
  result = sub_1D9309FF0(&qword_1ECAFD1B0, type metadata accessor for ControlInstancePicker.ViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D9309FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ControlInstancePicker.performAction()()
{
  v2 = *(*v0 + 672);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D92D9CEC;

  return v6();
}

uint64_t dispatch thunk of ControlInstancePicker.setState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 680);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D92DA198;

  return v8(a1);
}

void sub_1D930A358()
{
  sub_1D930A4C4(319, &qword_1EDE3DA78, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D930A4C4(319, &qword_1ECAFD1D8, &type metadata for ControlInstancePicker.ViewModel.Option, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D930A514(319, qword_1EDE3D3F8, type metadata accessor for ControlIconView);
      if (v2 <= 0x3F)
      {
        sub_1D930A514(319, &qword_1EDE3BAE0, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D930A4C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D930A514(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D930A58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1D930A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D930A65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D930A728()
{
  result = qword_1EDE3BC58;
  if (!qword_1EDE3BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BC58);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D930AB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D930ABC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D930AC80()
{
  v1 = sub_1D9327774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v7 = *(v0 + v6);

  sub_1D93276B4();

  v8 = sub_1D9327764();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_1D930ADC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1D9293400(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D92934B4(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1D930AE80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  return sub_1D9293400(v1 + v3, a1);
}

uint64_t sub_1D930AED8()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D930AF1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1D930AF84()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ControlArchiveEntry.__allocating_init(entry:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  v7 = sub_1D9326884();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = a1;
  return v5;
}

uint64_t ControlArchiveEntry.init(entry:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  v4 = sub_1D9326884();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = a1;
  return v1;
}

uint64_t sub_1D930B128()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D9326884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - v10;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1D9328444();
  v33 = v31;
  v34 = v32;
  MEMORY[0x1DA72E570](60, 0xE100000000000000);
  v12 = sub_1D93287C4();
  MEMORY[0x1DA72E570](v12);

  MEMORY[0x1DA72E570](8250, 0xE200000000000000);
  v13 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v14 = *(v1 + v13);

  v15 = sub_1D93276C4();

  if (v15)
  {

    v16 = 0xEB00000000657669;
    v17 = 0x6863726120736168;
  }

  else
  {
    v16 = 0xEA00000000006576;
    v17 = 0x6968637261206F6ELL;
  }

  MEMORY[0x1DA72E570](v17, v16);

  MEMORY[0x1DA72E570](0xD00000000000001DLL, 0x80000001D93379F0);
  v18 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  if (*(v1 + v18))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v1 + v18))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v19, v20);

  MEMORY[0x1DA72E570](0xD00000000000001BLL, 0x80000001D9337A10);
  v21 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D9293400(v1 + v21, v11);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1D930B524(v11);
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_1D930B524(v11);
    if (qword_1ECAFC3D0 != -1)
    {
      swift_once();
    }

    v24 = qword_1ECAFCAE8;
    v25 = sub_1D9326844();
    v26 = [v24 stringFromDate_];

    v27 = sub_1D9327F84();
    v22 = v28;

    (*(v4 + 8))(v7, v3);
    v23 = v27;
  }

  MEMORY[0x1DA72E570](v23, v22);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return v33;
}

uint64_t sub_1D930B524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlArchiveEntry.deinit()
{
  sub_1D930B524(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate);
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry);

  v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions);

  return v0;
}

uint64_t ControlArchiveEntry.__deallocating_deinit()
{
  sub_1D930B524(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate);
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry);

  v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ControlArchiveEntry()
{
  result = qword_1EDE3CFA0;
  if (!qword_1EDE3CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D930B6D0()
{
  sub_1D930B894();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D930B894()
{
  if (!qword_1EDE3DA60)
  {
    sub_1D9326884();
    v0 = sub_1D9328374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA60);
    }
  }
}

uint64_t sub_1D930B8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1D92F79F8(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D9327774();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1D9293100(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1D92F7FA8();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D9327774();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1D930E9AC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1D9327774();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1D930BAAC()
{
  if (*(v0 + 16))
  {

    sub_1D93276F4();

    v1 = *(v0 + 16);
  }

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D930BB40()
{
  if (*(*v0 + 16))
  {

    sub_1D93276F4();
  }

  return result;
}

uint64_t sub_1D930BB94(unint64_t *a1)
{
  v61 = sub_1D9327614();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D9327654();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D9327774();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if (v18 >> 62)
    {
      result = sub_1D9328544();
      v21 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_4:
        if (v21 < 1)
        {
          __break(1u);
          return result;
        }

        v68 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
        v53 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue;
        v67 = v18 & 0xC000000000000001;
        swift_beginAccess();
        v22 = 0;
        v52 = v62 + 16;
        v51 = v62 + 32;
        v50 = v72;
        v49 = (v2 + 8);
        v48 = (v5 + 8);
        v66 = (v62 + 8);
        v55 = v17;
        v54 = v18;
        v65 = v20;
        v69 = v21;
        v47 = v11;
        do
        {
          if (v67)
          {
            v23 = MEMORY[0x1DA72EA00](v22, v18);
          }

          else
          {
            v23 = *(v18 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
          (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
          v26 = v24;
          sub_1D9327754();
          v27 = *(v20 + v68);
          v28 = *(v27 + 16);

          os_unfair_lock_lock(v28);
          if (*(*(v20 + 16) + 16))
          {
            v29 = *(v20 + 16);

            sub_1D9293100(v17);
            v31 = v30;

            if (v31)
            {
              v32 = *(v20 + v53);
              v33 = v62;
              v34 = v56;
              (*(v62 + 16))(v56, v17, v12);
              v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
              v36 = swift_allocObject();
              *(v36 + 16) = v65;
              (*(v33 + 32))(v36 + v35, v34, v12);
              v72[2] = sub_1D9290DF4;
              v72[3] = v36;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              v72[0] = sub_1D9290DB0;
              v72[1] = &block_descriptor_61;
              v64 = _Block_copy(aBlock);
              v63 = v32;

              v37 = v58;
              sub_1D9327634();
              v70 = MEMORY[0x1E69E7CC0];
              sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
              sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0);
              v38 = v60;
              v39 = v12;
              v40 = v61;
              v17 = v55;
              sub_1D93283C4();
              v41 = v64;
              v42 = v63;
              MEMORY[0x1DA72E860](0, v37, v38, v64);
              _Block_release(v41);

              v43 = v38;
              v11 = v47;
              v44 = v40;
              v12 = v39;
              v18 = v54;
              (*v49)(v43, v44);
              v45 = v37;
              v20 = v65;
              (*v48)(v45, v59);
            }
          }

          ++v22;
          os_unfair_lock_unlock(*(v27 + 16));

          (*v66)(v17, v12);
        }

        while (v69 != v22);
      }
    }
  }

  return result;
}

uint64_t sub_1D930C294@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v105 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD230, &qword_1D93300C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v98 - v7;
  v9 = sub_1D9327B64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v101 = &v98 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v98 - v19;
  v21 = sub_1D9327774();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v103 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v107 = &v98 - v27;
  v104 = v28;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v98 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  v32 = a1;
  sub_1D9327754();
  swift_beginAccess();
  v33 = *(a2 + 16);
  v34 = *(v33 + 16);
  v113 = v21;
  v114 = v30;
  if (!v34)
  {
LABEL_5:
    v109 = v9;
    v106 = v22;
    v111 = a2;
    v38 = (a2 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
    sub_1D929CF00(a2 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider, v117);
    __swift_project_boxed_opaque_existential_1(v117, v117[3]);
    v39 = sub_1D9327764();
    v40 = [v39 extensionIdentity];

    v41 = v112;
    sub_1D9327904();
    v108 = v10;
    if (v41)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      v42 = v109;
      (*(v10 + 56))(v8, 1, 1, v109);
    }

    else
    {

      v42 = v109;
      (*(v10 + 56))(v8, 0, 1, v109);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      if ((*(v10 + 48))(v8, 1, v42) != 1)
      {
        v112 = 0;
        (*(v10 + 32))(v110, v8, v42);
        v51 = v106;
        v50 = v114;
LABEL_11:
        v52 = *(v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory + 32);
        __swift_project_boxed_opaque_existential_1((v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory), *(v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory + 24));
        v53 = sub_1D9327764();
        v54 = [v53 extensionIdentity];

        sub_1D93278E4();
        sub_1D93276E4();
        v55 = *(v51 + 16);
        v98 = v51 + 16;
        v99 = v55;
        (v55)(v107, v50, v113);
        sub_1D929CF00(v117, v116);
        v56 = v108;
        v57 = v101;
        v58 = v109;
        (*(v108 + 16))(v101, v110, v109);
        v59 = sub_1D93276A4();
        v60 = type metadata accessor for ControlArchiveEntry();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        v63 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
        v64 = sub_1D9326884();
        (*(*(v64 - 8) + 56))(v37 + v63, 1, 1, v64);
        v65 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        *(v37 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection) = 0;
        *(v37 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
        *(v37 + OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry) = v59;
        swift_retain_n();

        sub_1D9327664();
        v100 = v59;

        v66 = *(v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 32);
        __swift_project_boxed_opaque_existential_1((v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v111 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
        v67 = v102;
        sub_1D93278D4();
        sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8]);
        LOBYTE(v63) = sub_1D9327F44();
        v68 = *(v56 + 8);
        v68(v67, v58);
        v108 = v56 + 8;
        v102 = v68;
        v68(v57, v58);
        swift_beginAccess();
        *(v37 + v65) = v63 & 1;
        a2 = v111;
        v69 = v103;
        v70 = v113;
        v99(v103, v114);
        v71 = sub_1D9326BC4();
        v72 = sub_1D9328234();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v115 = v74;
          *v73 = 136446210;
          v75 = sub_1D9327744();
          v77 = v76;
          (*(v106 + 8))(v69, v70);
          v78 = sub_1D9293524(v75, v77, &v115);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_1D928E000, v71, v72, "Adding entry: %{public}s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          v79 = v74;
          a2 = v111;
          MEMORY[0x1DA72F920](v79, -1, -1);
          MEMORY[0x1DA72F920](v73, -1, -1);

          v21 = v70;
          v22 = v106;
        }

        else
        {

          v22 = v106;
          (*(v106 + 8))(v69, v70);
          v21 = v70;
        }

        swift_beginAccess();

        v80 = *(a2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(a2 + 16);
        *(a2 + 16) = 0x8000000000000000;
        v30 = v114;
        sub_1D92F79F8(v37, v114, isUniquelyReferenced_nonNull_native);
        *(a2 + 16) = v118;
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1Tm(v117);
        (v102)(v110, v109);
        goto LABEL_15;
      }
    }

    v43 = v38[3];
    v44 = __swift_project_boxed_opaque_existential_1(v38, v43);
    v45 = *(v43 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x1EEE9AC00](v44);
    v48 = &v98 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48);
    sub_1D93278F4();
    (*(v45 + 8))(v48, v43);
    v49 = (*(v10 + 48))(v8, 1, v42);
    v112 = 0;
    if (v49 != 1)
    {
      sub_1D92933A0(v8, &qword_1ECAFD230, &qword_1D93300C0);
    }

    v50 = v114;
    v51 = v106;
    goto LABEL_11;
  }

  v35 = sub_1D9293100(v30);
  if ((v36 & 1) == 0)
  {

    goto LABEL_5;
  }

  v37 = *(*(v33 + 56) + 8 * v35);
  swift_retain_n();

LABEL_15:
  sub_1D930D34C(v30);
  v82 = type metadata accessor for ControlArchiveEntryAssertion();
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = v37;
  sub_1D9327704();
  v84 = v107;
  (*(v22 + 16))(v107, v30, v21);
  v85 = v22;
  v86 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v87 = swift_allocObject();
  v87[2] = a2;
  v87[3] = v83;
  v87[4] = v37;
  v88 = v87 + v86;
  v89 = v113;
  (*(v85 + 32))(v88, v84, v113);
  swift_retain_n();

  v90 = sub_1D9327714();
  v91 = *(v83 + 16);
  *(v83 + 16) = v90;

  v92 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1DA72E5B0](v93);
  if (*((*(v37 + v92) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v37 + v92) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v97 = *((*(v37 + v92) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D9328044();
    v89 = v113;
  }

  sub_1D9328054();
  swift_endAccess();

  v94 = v105;
  v105[3] = v82;
  v94[4] = sub_1D9290D18(&qword_1EDE3C170, v95, type metadata accessor for ControlArchiveEntryAssertion);

  *v94 = v83;
  return (*(v85 + 8))(v114, v89);
}

uint64_t sub_1D930CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 16);

  os_unfair_lock_lock(v9);
  sub_1D930D000(a3, v8, a1, a4);
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_1D930D000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_1D9327774();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1D930EF80((a1 + v14));
  v39 = v4;

  v16 = *(a1 + v14);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_1D9328544();
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
    v32 = *(a1 + v14);
  }

  v17 = sub_1D9328544();
  if (v17 < v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1D930F2F8(v15, v17);
  swift_endAccess();
  v18 = *(a1 + v14);
  if (v18 >> 62)
  {
    goto LABEL_14;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return result;
  }

LABEL_5:
  v20 = *(v8 + 16);
  v20(v13, v37, v7);
  v21 = sub_1D9326BC4();
  v22 = sub_1D9328234();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v20;
    v24 = v23;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v24 = 136446210;
    v25 = sub_1D9327744();
    v35 = a3;
    v27 = v26;
    (*(v8 + 8))(v13, v7);
    v28 = sub_1D9293524(v25, v27, &v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1D928E000, v21, v22, "Removing entry: %{public}s", v24, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1DA72F920](v29, -1, -1);
    v30 = v24;
    v20 = v34;
    MEMORY[0x1DA72F920](v30, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v31 = v36;
  v20(v36, v37, v7);
  swift_beginAccess();
  sub_1D930B8EC(0, v31);
  return swift_endAccess();
}

uint64_t sub_1D930D34C(uint64_t a1)
{
  v21 = sub_1D9327614();
  v24 = *(v21 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9327654();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9327774();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue);
  (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v11 + 32))(v15 + v14, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D9290DA8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = &block_descriptor_47;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  sub_1D9327634();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0);
  v18 = v21;
  sub_1D93283C4();
  MEMORY[0x1DA72E860](0, v9, v5, v16);
  _Block_release(v16);

  (*(v24 + 8))(v5, v18);
  (*(v22 + 8))(v9, v23);
}

uint64_t sub_1D930D6F8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v141 = a8;
  v140 = a7;
  v139 = a6;
  v138 = a5;
  v136 = a4;
  v137 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v119 - v13;
  v15 = sub_1D9327614();
  v133 = *(v15 - 8);
  v16 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v131 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D9327654();
  v130 = *(v132 - 8);
  v18 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v129 = v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1D9327774();
  v134 = *(v135 - 8);
  v20 = *(v134 + 64);
  v21 = MEMORY[0x1EEE9AC00](v135);
  v128 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v142 = v119 - v22;
  v23 = sub_1D9327B64();
  v143 = *(v23 - 8);
  v24 = *(v143 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v127 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v151 = v119 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v119 - v29;
  result = swift_beginAccess();
  v32 = *(a1 + 16);
  if (*(v32 + 16))
  {
    v33 = *(a1 + 16);

    v126 = a2;
    v34 = sub_1D9293100(a2);
    if (v35)
    {
      v121 = v15;
      v123 = v8;
      v36 = *(*(v32 + 56) + 8 * v34);

      v122 = a1;
      v37 = (a1 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
      v38 = v23;
      v39 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      sub_1D93278D4();
      v40 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v41 = v36;
      v42 = *(v36 + v40);

      v43 = v151;
      sub_1D9327664();

      sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8]);
      v124 = v30;
      LOBYTE(v39) = sub_1D9327F44();
      v44 = *(v143 + 8);
      v45 = v43;
      v46 = (v143 + 8);
      v125 = v38;
      v44(v45, v38);
      v47 = v142;
      if ((v39 & 1) == 0)
      {
LABEL_6:
        swift_beginAccess();
        *(v41 + 16) = 1;
        v49 = v138;
        swift_beginAccess();
        LOBYTE(v49) = *v49;
        v50 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        swift_beginAccess();
        *(v41 + v50) = v49;
        sub_1D9293400(v139, v14);
        v51 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1D92934B4(v14, v41 + v51);
        swift_endAccess();
        v52 = *(v41 + v40);
        v53 = v140;
        swift_beginAccess();
        v55 = *v53;
        v54 = v53[1];

        sub_1D9327674();

        v56 = *(v41 + v40);
        v57 = *v141;

        sub_1D93276D4();

        return (v44)(v124, v125);
      }

      v48 = *(v122 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
      if (v137->isa)
      {
        if (v137->isa == v48)
        {
          goto LABEL_6;
        }
      }

      else if (!v48)
      {
        goto LABEL_6;
      }

      if (v136)
      {
        aBlock = 0;
        v145 = 0xE000000000000000;
        sub_1D9328444();
        MEMORY[0x1DA72E570](91, 0xE100000000000000);
        v58 = sub_1D9327744();
        MEMORY[0x1DA72E570](v58);

        v59 = v44;
        MEMORY[0x1DA72E570](0xD000000000000043, 0x80000001D9337D90);
        v60 = v41;
        v61 = *(v41 + v40);

        v62 = v151;
        sub_1D9327664();

        sub_1D9290D18(&qword_1ECAFD240, 255, MEMORY[0x1E69859A8]);
        v63 = v46;
        v64 = v125;
        v65 = sub_1D9328614();
        MEMORY[0x1DA72E570](v65);

        v151 = v63;
        v59(v62, v64);
        MEMORY[0x1DA72E570](0xD00000000000004CLL, 0x80000001D9337D40);
        v66 = v40;
        v67 = v124;
        v68 = sub_1D9328614();
        MEMORY[0x1DA72E570](v68);

        MEMORY[0x1DA72E570](41, 0xE100000000000000);
        v70 = aBlock;
        v69 = v145;
        v71 = *(v60 + v66);

        sub_1D93276D4();

        v72 = *(v60 + v66);

        sub_1D9327674();

        v73 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
        swift_beginAccess();
        *(v60 + v73) = 1;

        v74 = sub_1D9326BC4();
        v75 = sub_1D9328214();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v120 = v59;
          v78 = v77;
          v150 = v77;
          *v76 = 136446210;
          v79 = sub_1D9293524(v70, v69, &v150);

          *(v76 + 4) = v79;
          _os_log_impl(&dword_1D928E000, v74, v75, "%{public}s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          MEMORY[0x1DA72F920](v78, -1, -1);
          MEMORY[0x1DA72F920](v76, -1, -1);

          return v120(v67, v64);
        }

        else
        {

          return (v59)(v67, v64);
        }
      }

      else
      {
        v139 = v40;
        v80 = *(v134 + 16);
        v81 = v126;
        v141 = (v134 + 16);
        v140 = v80;
        (v80)(v142, v126, v135);
        v82 = v127;
        (*(v143 + 16))(v127, v124, v125);

        v83 = sub_1D9326BC4();
        v84 = sub_1D9328214();

        LODWORD(v143) = v84;
        v85 = os_log_type_enabled(v83, v84);
        v120 = v44;
        v119[1] = v41;
        if (v85)
        {
          v86 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          aBlock = v138;
          *v86 = 136446722;
          v137 = v83;
          v87 = sub_1D9327744();
          v89 = v88;
          (*(v134 + 8))(v47, v135);
          v90 = sub_1D9293524(v87, v89, &aBlock);

          *(v86 + 4) = v90;
          *(v86 + 12) = 2082;
          v91 = *(v41 + v139);

          v92 = v82;
          v93 = v151;
          sub_1D9327664();

          sub_1D9290D18(&qword_1ECAFD240, 255, MEMORY[0x1E69859A8]);
          v94 = v125;
          v95 = sub_1D9328614();
          v97 = v96;
          v98 = v93;
          v99 = v120;
          v120(v98, v94);
          v100 = sub_1D9293524(v95, v97, &aBlock);

          *(v86 + 14) = v100;
          *(v86 + 22) = 2082;
          v101 = sub_1D9328614();
          v103 = v102;
          v99(v92, v94);
          v104 = sub_1D9293524(v101, v103, &aBlock);
          v81 = v126;

          *(v86 + 24) = v104;
          v105 = v137;
          _os_log_impl(&dword_1D928E000, v137, v143, "[%{public}s] Content load was successful, but now the data protection level [%{public}s] does not allow loading the content at this time (system protection level: %{public}s.  Trying again with placeholder...", v86, 0x20u);
          v106 = v138;
          swift_arrayDestroy();
          MEMORY[0x1DA72F920](v106, -1, -1);
          MEMORY[0x1DA72F920](v86, -1, -1);

          v107 = v135;
          v108 = v134;
        }

        else
        {

          v44(v82, v125);
          v109 = v134;
          v107 = v135;
          (*(v134 + 8))(v47, v135);
          v108 = v109;
        }

        v110 = v122;
        v151 = *(v122 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue);
        v111 = v128;
        (v140)(v128, v81, v107);
        v112 = (*(v108 + 80) + 24) & ~*(v108 + 80);
        v113 = swift_allocObject();
        *(v113 + 16) = v110;
        (*(v108 + 32))(v113 + v112, v111, v107);
        v148 = sub_1D930E9A4;
        v149 = v113;
        aBlock = MEMORY[0x1E69E9820];
        v145 = 1107296256;
        v146 = sub_1D9290DB0;
        v147 = &block_descriptor_4;
        v114 = _Block_copy(&aBlock);
        v115 = v151;

        v116 = v129;
        sub_1D9327634();
        v150 = MEMORY[0x1E69E7CC0];
        sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
        sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0);
        v117 = v131;
        v118 = v121;
        sub_1D93283C4();
        MEMORY[0x1DA72E860](0, v116, v117, v114);
        _Block_release(v114);

        (*(v133 + 8))(v117, v118);
        (*(v130 + 8))(v116, v132);
        v120(v124, v125);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D930E660()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel;
  v3 = sub_1D9327B64();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);

  v5 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger;
  v6 = sub_1D9326BE4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__subscriptions);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor));
  v8 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory));
  return v0;
}

uint64_t sub_1D930E788()
{
  sub_1D930E660();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ControlArchiveServiceStore()
{
  result = qword_1EDE3C528;
  if (!qword_1EDE3C528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D930E834()
{
  result = sub_1D9327B64();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D9326BE4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D930E94C(uint64_t a1, uint64_t a2)
{
  result = sub_1D9290D18(qword_1EDE3C178, a2, type metadata accessor for ControlArchiveEntryAssertion);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D930E9AC(int64_t a1, uint64_t a2)
{
  v43 = sub_1D9327774();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1D93283D4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1D9290D18(&qword_1EDE3BCE0, 255, MEMORY[0x1E6993DC8]);
      v26 = sub_1D9327F14();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1D930ECD0()
{
  v1 = *(sub_1D9327774() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1D930CF24(v2, v3, v4, v5);
}

uint64_t sub_1D930ED38(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1D9328544();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1D9328464();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1D930EDF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D9328544();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D9328464();
}

unint64_t sub_1D930EE58(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1D9328544();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA72EA00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (v6 == Strong)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1D930EF80(unint64_t *a1)
{
  v5 = *a1;
  v6 = sub_1D930EE58(*a1);
  v8 = v6;
  if (v1)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1D9328544();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1D9328544())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1DA72EA00](v9, v5);
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v13 = *(v5 + 8 * v9 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v13 != Strong))
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x1DA72EA00](v8, v5);
          v15 = MEMORY[0x1DA72EA00](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_48;
          }

          if (v9 >= v16)
          {
            goto LABEL_49;
          }

          v2 = *(v5 + 32 + 8 * v8);
          v15 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1D930EDF4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v3 = v5 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          v5 = sub_1D930EDF4(v5);
          v3 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v3 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        v10 = v3 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v2;

        *a1 = v5;
      }

      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_45;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
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
LABEL_49:
  __break(1u);
  return sub_1D9328544();
}

uint64_t sub_1D930F1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ControlArchiveEntryAssertion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D9328544();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D9328544();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D930F2F8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D9328544();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1D9328544();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1D930ED38(result);

  return sub_1D930F1FC(v4, v2, 0);
}

uint64_t sub_1D930F558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D93270F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D9327104();
}

uint64_t sub_1D930F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D93270F4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D9327104();
}

unint64_t CHUISSolariumLayerType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D930F75C()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ED00](v1);
  return sub_1D9328764();
}

uint64_t sub_1D930F7D0()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ED00](v1);
  return sub_1D9328764();
}

uint64_t *sub_1D930F814@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

double sub_1D930F830()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  return *(v0 + 16);
}

double sub_1D930F8D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1D930F978(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    sub_1D93268F4();
  }
}

uint64_t sub_1D930FA90()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

__n128 sub_1D930FB34@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = *(v3 + 40);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1D930FBE4()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  return *(v0 + 48);
}

uint64_t sub_1D930FC84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D930FD2C(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    sub_1D93268F4();
  }

  return result;
}

id sub_1D930FE30()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v1 = *(v0 + 56);

  return v1;
}

id sub_1D930FEE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D930FF98@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v3 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  return sub_1D92973DC(v5 + v3, a1, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D9310070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v4 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  return sub_1D92973DC(v3 + v4, a2, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D9310148(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D92973DC(a1, &v10 - v6, &qword_1ECAFC438, &qword_1D932CA10);
  v8 = *a2;
  return sub_1D93101F4(v7);
}

uint64_t sub_1D93101F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D92973DC(v1 + v7, v6, &qword_1ECAFC438, &qword_1D932CA10);
  v8 = sub_1D9314930(v6, a1);
  sub_1D92933A0(v6, &qword_1ECAFC438, &qword_1D932CA10);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    sub_1D93268F4();
  }

  else
  {
    sub_1D92973DC(a1, v6, &qword_1ECAFC438, &qword_1D932CA10);
    swift_beginAccess();
    sub_1D9314C50(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1D92933A0(a1, &qword_1ECAFC438, &qword_1D932CA10);
}

uint64_t sub_1D93103FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D92973DC(a2, &v10 - v6, &qword_1ECAFC438, &qword_1D932CA10);
  v8 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D9314C50(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t SolariumEffectViewModel.__allocating_init(layerType:tintParameters:preferredColorScheme:cornerRadius:fixedSize:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v8 + 48);
  v21 = *(v8 + 52);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  *(v22 + 40) = 1;
  v23 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v24 = sub_1D9326D04();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  sub_1D9326914();
  *(v22 + 16) = a7;
  *(v22 + 48) = a1;
  *(v22 + 56) = a2;
  v25 = a2;
  sub_1D92955BC(a4, a5, a6 & 1);
  sub_1D92973DC(a3, v19, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v19);

  sub_1D92933A0(a3, &qword_1ECAFC438, &qword_1D932CA10);
  return v22;
}

uint64_t SolariumEffectViewModel.init(layerType:tintParameters:preferredColorScheme:cornerRadius:fixedSize:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - v17;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  v19 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v20 = sub_1D9326D04();
  (*(*(v20 - 8) + 56))(v7 + v19, 1, 1, v20);
  sub_1D9326914();
  *(v7 + 16) = a7;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v21 = a2;
  sub_1D92955BC(a4, a5, a6 & 1);
  sub_1D92973DC(a3, v18, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v18);

  sub_1D92933A0(a3, &qword_1ECAFC438, &qword_1D932CA10);
  return v7;
}

id sub_1D93107DC()
{
  v1 = v0;
  v2 = sub_1D9327354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  if ([*(v0 + 56) filterStyle] != 5)
  {
    swift_getKeyPath();
    v15 = v0;
    sub_1D9326904();

    if ([*(v0 + 56) filterStyle] != 6)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  v15 = v0;
  sub_1D9326904();

  result = [*(v0 + 56) primaryTintColor];
  if (result)
  {
    v8 = result;
    [result red];
    [v8 green];
    [v8 blue];
    [v8 alpha];
    (*(v3 + 104))(v6, *MEMORY[0x1E69814D8], v2);
    v9 = sub_1D9327424();

    swift_getKeyPath();
    v15 = v1;
    sub_1D9326904();

    v10 = [*(v1 + 56) glassOptions];
    if (v10 && (v11 = v10, v12 = [v10 wantsSubduedGlass], v11, v12))
    {
      v13 = sub_1D93273C4();

      return v13;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t sub_1D9310AF4()
{
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v1 = [*(v0 + 56) filterStyle];
  if (v1 == 5)
  {
    return 1;
  }

  if (v1 != 3)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D9326904();

  result = [*(v0 + 56) glassOptions];
  if (result)
  {
    v3 = result;
    v4 = [result wantsWhitePointBoost];

    return v4;
  }

  return result;
}

uint64_t SolariumEffectViewModel.deinit()
{
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme, &qword_1ECAFC438, &qword_1D932CA10);
  v1 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel___observationRegistrar;
  v2 = sub_1D9326924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SolariumEffectViewModel.__deallocating_deinit()
{
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme, &qword_1ECAFC438, &qword_1D932CA10);
  v1 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel___observationRegistrar;
  v2 = sub_1D9326924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D9310D80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SolariumEffectView(0);
  sub_1D92973DC(v1 + *(v12 + 20), v11, &qword_1ECAFD298, &unk_1D9330130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1D9326D04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1D9328224();
    v16 = sub_1D93271F4();
    sub_1D9326BB4();

    sub_1D9327024();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1D9310F88(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD350, &qword_1D93304A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD330, &qword_1D9330460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = [a1 glassOptions];
  if (v12 && (v13 = v12, v14 = [v12 backdropGroupName], v13, v14))
  {
    v15 = sub_1D9327F84();
    v17 = v16;

    sub_1D92973DC(v2, v11, &qword_1ECAFD300, &qword_1D9330400);
    v18 = &v11[*(v8 + 36)];
    *v18 = 1;
    *(v18 + 1) = v15;
    *(v18 + 2) = v17;
    sub_1D92973DC(v11, v7, &qword_1ECAFD330, &qword_1D9330460);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D931486C();
    sub_1D929ABFC();
    sub_1D9327104();
    return sub_1D92933A0(v11, &qword_1ECAFD330, &qword_1D9330460);
  }

  else
  {
    sub_1D92973DC(v2, v7, &qword_1ECAFD300, &qword_1D9330400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D931486C();
    sub_1D929ABFC();
    return sub_1D9327104();
  }
}

uint64_t sub_1D93111F4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD320, &qword_1D9330450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD348, &qword_1D9330478);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = *a1;
  swift_getKeyPath();
  *&v18[0] = v12;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  if (*(v12 + 40))
  {
    sub_1D92973DC(a2, v11, &qword_1ECAFD308, &qword_1D9330408);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D93146C8();
    sub_1D93147E0();
    return sub_1D9327104();
  }

  else
  {
    v15 = *(v12 + 24);
    v14 = *(v12 + 32);
    sub_1D93275E4();
    sub_1D9326D84();
    sub_1D92973DC(a2, v7, &qword_1ECAFD308, &qword_1D9330408);
    v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD328, &qword_1D9330458) + 36)];
    v17 = v18[1];
    *v16 = v18[0];
    *(v16 + 1) = v17;
    *(v16 + 2) = v18[2];
    *&v7[*(v4 + 36)] = 257;
    sub_1D92973DC(v7, v11, &qword_1ECAFD320, &qword_1D9330450);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D93146C8();
    sub_1D93147E0();
    sub_1D9327104();
    return sub_1D92933A0(v7, &qword_1ECAFD320, &qword_1D9330450);
  }
}

id sub_1D93114D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D93275C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1D93107DC();
  sub_1D93275A4();

  sub_1D9327584();
  v15 = *(v5 + 8);
  v15(v8, v4);
  swift_getKeyPath();
  v16 = v9;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
  sub_1D9326904();

  v10 = [*(v9 + 56) glassOptions];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 wantsSubduedGlass];

    if (v12)
    {
      sub_1D9327554();
      v15(a2, v4);
      (*(v5 + 32))(a2, v8, v4);
    }
  }

  if (sub_1D9310AF4())
  {
    sub_1D9327564();
    v15(a2, v4);
    (*(v5 + 32))(a2, v8, v4);
  }

  swift_getKeyPath();
  v16 = v9;
  sub_1D9326904();

  result = [*(v9 + 56) glassOptions];
  if (result)
  {
    v14 = result;
    [result wantsHighlightsDisplayAngle];
    sub_1D9327594();

    v15(a2, v4);
    return (*(v5 + 32))(a2, v8, v4);
  }

  return result;
}

uint64_t View.backgroundGlassEffectIfNecessary(tintParameters:includeBackground:preferredColorScheme:cornerRadius:)@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v51 = a5;
  v52 = a6;
  v46 = a3;
  v12 = *(a4 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &WitnessTable - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD260, &qword_1D93300E8);
  v19 = sub_1D9326E04();
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v47 = &WitnessTable - v24;
  v25 = sub_1D9327114();
  v49 = *(v25 - 8);
  v50 = v25;
  v26 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &WitnessTable - v27;
  if ((a2 & 1) == 0 || !a1)
  {
    goto LABEL_6;
  }

  v29 = a1;
  v30 = [v29 wantsGlassMaterial];
  if (!v30)
  {

LABEL_6:
    v38 = v12[2];
    v38(v18, v7, a4);
    v38(v16, v18, a4);
    v39 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8);
    v32 = v51;
    v59 = v51;
    v60 = v39;
    swift_getWitnessTable();
    sub_1D930F650(v16, v19, a4);
    v40 = v12[1];
    v40(v16, a4);
    v40(v18, a4);
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v30);
  v31 = v46;
  *(&WitnessTable - 4) = v29;
  *(&WitnessTable - 3) = v31;
  *(&WitnessTable - 2) = a7;
  sub_1D93275E4();
  v46 = v29;
  type metadata accessor for SolariumEffectView(0);
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView);
  v32 = v51;
  sub_1D93272D4();
  v33 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8);
  v53 = v32;
  v54 = v33;
  WitnessTable = swift_getWitnessTable();
  v34 = v47;
  v35 = v48;
  v36 = *(v48 + 16);
  v36(v47, v23, v19);
  v37 = *(v35 + 8);
  v37(v23, v19);
  v36(v23, v34, v19);
  sub_1D930F558(v23, v19);

  v37(v23, v19);
  v37(v34, v19);
LABEL_7:
  v41 = sub_1D9290D60(&qword_1ECAFD268, &qword_1ECAFD260, &qword_1D93300E8);
  v57 = v32;
  v58 = v41;
  v55 = swift_getWitnessTable();
  v56 = v32;
  v42 = v50;
  swift_getWitnessTable();
  v43 = v49;
  (*(v49 + 16))(v52, v28, v42);
  return (*(v43 + 8))(v28, v42);
}

uint64_t sub_1D9311D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - v13;
  sub_1D92973DC(a2, v30 - v13, &qword_1ECAFC438, &qword_1D932CA10);
  v15 = type metadata accessor for SolariumEffectViewModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 1;
  v19 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v20 = sub_1D9326D04();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  sub_1D9326914();
  *(v18 + 16) = a4;
  *(v18 + 48) = 0;
  *(v18 + 56) = a1;
  if (*(v18 + 40) == 1)
  {
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 1;
    v21 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v30[-3] = 0;
    v30[-2] = 0;
    v30[-4] = v18;
    LOBYTE(v30[-1]) = 1;
    v30[1] = v18;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    v23 = a1;
    sub_1D93268F4();
  }

  sub_1D92973DC(v14, v12, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v12);
  sub_1D92933A0(v14, &qword_1ECAFC438, &qword_1D932CA10);
  v24 = type metadata accessor for SolariumEffectView(0);
  v25 = *(v24 + 20);
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v26 = *(v24 + 24);
  v27 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v28 = sub_1D9327F74();
  [v27 initWithSuiteName_];

  result = sub_1D9326CD4();
  *(a3 + v26) = result;
  *a3 = v18;
  return result;
}

uint64_t View.foregroundGlassEffectIfNecessary(tintParameters:preferredColorScheme:cornerRadius:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v52 = a4;
  v53 = a5;
  v48 = a2;
  v10 = *(a3 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD270, &qword_1D93300F0);
  v17 = sub_1D9326E04();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  v24 = sub_1D9327114();
  v50 = *(v24 - 8);
  v51 = v24;
  v25 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v46 - v26;
  if (!a1)
  {
    goto LABEL_6;
  }

  v28 = a1;
  v29 = [v28 wantsGlassMaterial];
  if ((v29 & 1) == 0)
  {
    v29 = [v28 filterStyle];
    if (v29 != 7)
    {

LABEL_6:
      v38 = v27;
      v39 = v10[2];
      v39(v16, v6, a3);
      v39(v14, v16, a3);
      v37 = v38;
      v40 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0);
      v36 = v52;
      v60 = v52;
      v61 = v40;
      swift_getWitnessTable();
      sub_1D930F650(v14, v17, a3);
      v41 = v10[1];
      v41(v14, a3);
      v41(v16, a3);
      goto LABEL_7;
    }
  }

  v47 = &v46;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v48;
  *(&v46 - 4) = v28;
  *(&v46 - 3) = v30;
  *(&v46 - 2) = a6;
  sub_1D93275E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD280, &qword_1D93300F8);
  v48 = v27;
  sub_1D9313F08();
  v31 = v52;
  sub_1D9327304();
  v32 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0);
  v54 = v31;
  v55 = v32;
  swift_getWitnessTable();
  v47 = v28;
  v33 = v49;
  v34 = *(v49 + 16);
  v34(v23, v21, v17);
  v35 = *(v33 + 8);
  v35(v21, v17);
  v34(v21, v23, v17);
  sub_1D930F558(v21, v17);

  v36 = v31;
  v35(v21, v17);
  v35(v23, v17);
  v37 = v48;
LABEL_7:
  v42 = sub_1D9290D60(&qword_1ECAFD278, &qword_1ECAFD270, &qword_1D93300F0);
  v58 = v36;
  v59 = v42;
  WitnessTable = swift_getWitnessTable();
  v57 = v36;
  v43 = v51;
  swift_getWitnessTable();
  v44 = v50;
  (*(v50 + 16))(v53, v37, v43);
  return (*(v44 + 8))(v37, v43);
}

uint64_t sub_1D9312670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v30 - v13;
  sub_1D92973DC(a2, v30 - v13, &qword_1ECAFC438, &qword_1D932CA10);
  v15 = type metadata accessor for SolariumEffectViewModel(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 40) = 1;
  v19 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  v20 = sub_1D9326D04();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  sub_1D9326914();
  *(v18 + 16) = a4;
  *(v18 + 48) = 1;
  *(v18 + 56) = a1;
  if (*(v18 + 40) == 1)
  {
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 1;
    v21 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v30[-3] = 0;
    v30[-2] = 0;
    v30[-4] = v18;
    LOBYTE(v30[-1]) = 1;
    v30[1] = v18;
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);
    v23 = a1;
    sub_1D93268F4();
  }

  sub_1D92973DC(v14, v12, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v12);
  sub_1D92933A0(v14, &qword_1ECAFC438, &qword_1D932CA10);
  v24 = type metadata accessor for SolariumEffectView(0);
  v25 = *(v24 + 20);
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v26 = *(v24 + 24);
  v27 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v28 = sub_1D9327F74();
  [v27 initWithSuiteName_];

  *(a3 + v26) = sub_1D9326CD4();
  *a3 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD280, &qword_1D93300F8);
  *(a3 + *(result + 36)) = 0;
  return result;
}

char *CHUISSolariumEffectView.__allocating_init(layerType:tintParameters:preferredColorScheme:cornerRadius:frame:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v54 = a2;
  v57 = a1;
  v15 = type metadata accessor for SolariumEffectView(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D9326D04();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v53 - v29;
  v31 = objc_allocWithZone(v8);
  v55 = v15;
  v56 = v8;
  if (a3 == 1)
  {
    v32 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a3 != 2)
    {
      v33 = *(v20 + 56);
      v33(v30, 1, 1, v19);
      goto LABEL_7;
    }

    v32 = MEMORY[0x1E697DBA8];
  }

  (*(v20 + 104))(v23, *v32, v19);
  (*(v20 + 32))(v30, v23, v19);
  v33 = *(v20 + 56);
  v33(v30, 0, 1, v19);
LABEL_7:
  v34 = type metadata accessor for SolariumEffectViewModel(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 1;
  v33((v37 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme), 1, 1, v19);
  v38 = v54;
  sub_1D9326914();
  *(v37 + 16) = a4;
  *(v37 + 48) = v57;
  *(v37 + 56) = v38;
  v39 = v38;
  sub_1D92955BC(*&a7, *&a8, 0);
  sub_1D92973DC(v30, v28, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v28);

  sub_1D92933A0(v30, &qword_1ECAFC438, &qword_1D932CA10);
  *&v31[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel] = v37;
  v40 = v55;
  v41 = *(v55 + 20);
  *(v18 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v42 = *(v40 + 24);
  v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
  swift_retain_n();
  v44 = sub_1D9327F74();
  [v43 initWithSuiteName_];

  *(v18 + v42) = sub_1D9326CD4();
  *v18 = v37;
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView);
  v59 = sub_1D93274F4();
  v45 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v46 = sub_1D9326DD4();
  v47 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView;
  *&v31[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView] = v46;
  [v46 setBackgroundColor_];
  v48 = *&v31[v47];
  sub_1D9326DF4();

  [*&v31[v47] setFrame_];
  v58.receiver = v31;
  v58.super_class = v56;
  v49 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a5, a6, a7, a8);
  v50 = *&v49[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  v51 = v49;
  [v51 addSubview_];
  [v51 setBackgroundColor_];

  return v51;
}

char *CHUISSolariumEffectView.init(layerType:tintParameters:preferredColorScheme:cornerRadius:frame:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v59 = a1;
  v16 = type metadata accessor for SolariumEffectView(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1D9326D04();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v55 - v30;
  v57 = v16;
  v58 = v8;
  v56 = a2;
  if (a3 == 1)
  {
    v32 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a3 != 2)
    {
      v33 = *(v21 + 56);
      v33(&v55 - v30, 1, 1, v20);
      goto LABEL_7;
    }

    v32 = MEMORY[0x1E697DBA8];
  }

  (*(v21 + 104))(v24, *v32, v20);
  (*(v21 + 32))(v31, v24, v20);
  v33 = *(v21 + 56);
  v33(v31, 0, 1, v20);
LABEL_7:
  v34 = type metadata accessor for SolariumEffectViewModel(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 40) = 1;
  v33((v37 + OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme), 1, 1, v20);
  v38 = v56;
  sub_1D9326914();
  *(v37 + 16) = a4;
  *(v37 + 48) = v59;
  *(v37 + 56) = v38;
  v39 = v38;
  sub_1D92955BC(*&a7, *&a8, 0);
  sub_1D92973DC(v31, v29, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D93101F4(v29);

  sub_1D92933A0(v31, &qword_1ECAFC438, &qword_1D932CA10);
  v40 = v57;
  v41 = v58;
  *&v58[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel] = v37;
  v42 = *(v40 + 20);
  *(v19 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  swift_storeEnumTagMultiPayload();
  v43 = *(v40 + 24);
  v44 = objc_allocWithZone(MEMORY[0x1E695E000]);
  swift_retain_n();
  v45 = sub_1D9327F74();
  [v44 initWithSuiteName_];

  *(v19 + v43) = sub_1D9326CD4();
  *v19 = v37;
  sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView);
  v61 = sub_1D93274F4();
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v47 = sub_1D9326DD4();
  v48 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView;
  *&v41[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView] = v47;
  [v47 setBackgroundColor_];
  v49 = *&v41[v48];
  sub_1D9326DF4();

  [*&v41[v48] setFrame_];
  v50 = type metadata accessor for CHUISSolariumEffectView();
  v60.receiver = v41;
  v60.super_class = v50;
  v51 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a5, a6, a7, a8);
  v52 = *&v51[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  v53 = v51;
  [v53 addSubview_];
  [v53 setBackgroundColor_];

  return v53;
}

id CHUISSolariumEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1D9313634(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2A8, &qword_1D9330168);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - v5;
  v7 = sub_1D9326D04();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v39 = &v38 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  v41 = v24;
  if (a1 == 1)
  {
    v25 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v25 = MEMORY[0x1E697DBA8];
LABEL_5:
    (*(v8 + 104))(v13, *v25, v7);
    (*(v8 + 32))(v23, v13, v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    goto LABEL_7;
  }

  (*(v8 + 56))(&v38 - v22, 1, 1, v7);
LABEL_7:
  v42 = v1;
  v40 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v26 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  v43 = v26;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);

  sub_1D9326904();

  v27 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
  swift_beginAccess();
  sub_1D92973DC(v26 + v27, v21, &qword_1ECAFC438, &qword_1D932CA10);

  v28 = *(v3 + 48);
  sub_1D92973DC(v21, v6, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92973DC(v23, &v6[v28], &qword_1ECAFC438, &qword_1D932CA10);
  v29 = *(v8 + 48);
  if (v29(v6, 1, v7) != 1)
  {
    v30 = v39;
    sub_1D92973DC(v6, v39, &qword_1ECAFC438, &qword_1D932CA10);
    if (v29(&v6[v28], 1, v7) != 1)
    {
      v35 = v38;
      (*(v8 + 32))(v38, &v6[v28], v7);
      sub_1D9313FC4(&qword_1ECAFD2B0, MEMORY[0x1E697DBD0]);
      v36 = sub_1D9327F64();
      v37 = *(v8 + 8);
      v37(v35, v7);
      sub_1D92933A0(v21, &qword_1ECAFC438, &qword_1D932CA10);
      v37(v30, v7);
      sub_1D92933A0(v6, &qword_1ECAFC438, &qword_1D932CA10);
      v31 = v42;
      if (v36)
      {
        return sub_1D92933A0(v23, &qword_1ECAFC438, &qword_1D932CA10);
      }

      goto LABEL_13;
    }

    sub_1D92933A0(v21, &qword_1ECAFC438, &qword_1D932CA10);
    (*(v8 + 8))(v30, v7);
LABEL_12:
    sub_1D92933A0(v6, &qword_1ECAFD2A8, &qword_1D9330168);
    v31 = v42;
LABEL_13:
    v32 = v41;
    v33 = *&v31[v40];
    sub_1D92973DC(v23, v41, &qword_1ECAFC438, &qword_1D932CA10);

    sub_1D93101F4(v32);

    [v31 setNeedsLayout];
    return sub_1D92933A0(v23, &qword_1ECAFC438, &qword_1D932CA10);
  }

  sub_1D92933A0(v21, &qword_1ECAFC438, &qword_1D932CA10);
  if (v29(&v6[v28], 1, v7) != 1)
  {
    goto LABEL_12;
  }

  sub_1D92933A0(v6, &qword_1ECAFC438, &qword_1D932CA10);
  return sub_1D92933A0(v23, &qword_1ECAFC438, &qword_1D932CA10);
}

id sub_1D9313C5C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v5 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel);

  sub_1D9326904();

  v6 = *(v5 + 48);

  if (v6 != a1)
  {
    if (*(*&v2[v4] + 48) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1D93268F4();
    }

    return [v2 setNeedsLayout];
  }

  return result;
}

id CHUISSolariumEffectView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHUISSolariumEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D9313F08()
{
  result = qword_1ECAFD288;
  if (!qword_1ECAFD288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD280, &qword_1D93300F8);
    sub_1D9313FC4(qword_1EDE3B990, type metadata accessor for SolariumEffectView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD288);
  }

  return result;
}

uint64_t sub_1D9313FC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D931401C()
{
  result = qword_1ECAFD2B8;
  if (!qword_1ECAFD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD2B8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyAA08ModifiedE0VyxAA19_BackgroundModifierVy16ChronoUIServices014SolariumEffectC0VGGxGAaBHPAmaBHPxAaBHD1__AlA0cH0HPyHCHC_xAaBHD1_HCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D9326E04();
  sub_1D9327114();
  sub_1D9290D60(a4, a2, a3);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1D93142AC()
{
  type metadata accessor for SolariumEffectViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D9314364(319, &qword_1ECAFD2D8, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D93143C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9314364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D9326D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D93143C4()
{
  if (!qword_1ECAFD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
    v0 = sub_1D9326CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAFD2E0);
    }
  }
}

uint64_t sub_1D9314428(uint64_t a1)
{
  v2 = sub_1D9326D04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D9326E84();
}

uint64_t sub_1D93144F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolariumEffectView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9314554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolariumEffectView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D93145B8()
{
  result = qword_1EDE3B280;
  if (!qword_1EDE3B280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F0, &qword_1D93303F0);
    sub_1D931463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B280);
  }

  return result;
}

unint64_t sub_1D931463C()
{
  result = qword_1EDE3B298;
  if (!qword_1EDE3B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD318, &qword_1D9330448);
    sub_1D93146C8();
    sub_1D93147E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B298);
  }

  return result;
}

unint64_t sub_1D93146C8()
{
  result = qword_1EDE3B2B8;
  if (!qword_1EDE3B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD320, &qword_1D9330450);
    sub_1D9314754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2B8);
  }

  return result;
}

unint64_t sub_1D9314754()
{
  result = qword_1EDE3B2D8;
  if (!qword_1EDE3B2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD328, &qword_1D9330458);
    sub_1D93147E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2D8);
  }

  return result;
}

unint64_t sub_1D93147E0()
{
  result = qword_1EDE3B2A0;
  if (!qword_1EDE3B2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD308, &qword_1D9330408);
    sub_1D931486C();
    sub_1D929ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2A0);
  }

  return result;
}

unint64_t sub_1D931486C()
{
  result = qword_1EDE3B2C0;
  if (!qword_1EDE3B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD330, &qword_1D9330460);
    sub_1D929ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2C0);
  }

  return result;
}

void sub_1D93148F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

uint64_t sub_1D9314930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9326D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2A8, &qword_1D9330168);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1D92973DC(a1, &v24 - v16, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92973DC(a2, &v17[v18], &qword_1ECAFC438, &qword_1D932CA10);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D92973DC(v17, v12, &qword_1ECAFC438, &qword_1D932CA10);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1D9313FC4(&qword_1ECAFD2B0, MEMORY[0x1E697DBD0]);
      v21 = sub_1D9327F64();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1D92933A0(v17, &qword_1ECAFC438, &qword_1D932CA10);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1D92933A0(v17, &qword_1ECAFD2A8, &qword_1D9330168);
    v20 = 1;
    return v20 & 1;
  }

  sub_1D92933A0(v17, &qword_1ECAFC438, &qword_1D932CA10);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D9314C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9314D24(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_1D9326BE4();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAD8, &qword_1D932E038);
  v77 = *(v79 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC8, &unk_1D932E7D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A8, &qword_1D93306E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v70 - v13;
  v14 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3B0, &qword_1D93306F0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  v33 = *(*v2 + 112);
  swift_beginAccess();
  v34 = *(v29 + 56);
  sub_1D92973DC(v2 + v33, v32, &unk_1ECAFD180, &unk_1D932E7E0);
  sub_1D92973DC(v83, &v32[v34], &unk_1ECAFD180, &unk_1D932E7E0);
  v35 = *(v15 + 48);
  if (v35(v32, 1, v14) == 1)
  {
    if (v35(&v32[v34], 1, v14) == 1)
    {
      sub_1D92933A0(v32, &unk_1ECAFD180, &unk_1D932E7E0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v32, v27, &unk_1ECAFD180, &unk_1D932E7E0);
  if (v35(&v32[v34], 1, v14) == 1)
  {
    sub_1D92974EC(v27, type metadata accessor for ControlInstanceButton.ViewModel);
LABEL_6:
    sub_1D92933A0(v32, &qword_1ECAFD3B0, &qword_1D93306F0);
    goto LABEL_7;
  }

  v52 = &v32[v34];
  v53 = v74;
  sub_1D931EF58(v52, v74, type metadata accessor for ControlInstanceButton.ViewModel);
  v54 = _s16ChronoUIServices21ControlInstanceButtonC9ViewModelV2eeoiySbAE_AEtFZ_0(v27, v53);
  sub_1D92974EC(v53, type metadata accessor for ControlInstanceButton.ViewModel);
  sub_1D92974EC(v27, type metadata accessor for ControlInstanceButton.ViewModel);
  sub_1D92933A0(v32, &unk_1ECAFD180, &unk_1D932E7E0);
  if (!v54)
  {
LABEL_7:
    v83 = v14;
    v36 = v80;
    v37 = v81;
    v38 = v82;
    (*(v81 + 16))(v80, v2 + *(*v2 + 176), v82);

    v39 = sub_1D9326BC4();
    v40 = sub_1D9328234();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v41 = 136446466;
      v42 = (v2 + *(*v2 + 184));
      v43 = *v42;
      v44 = v42[1];

      v45 = sub_1D9293524(v43, v44, v85);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = v73;
      sub_1D92973DC(v2 + v33, v73, &unk_1ECAFD180, &unk_1D932E7E0);
      v14 = v83;
      v47 = v35(v46, 1, v83);
      sub_1D92933A0(v46, &unk_1ECAFD180, &unk_1D932E7E0);
      if (v47 == 1)
      {
        v48 = 7104878;
      }

      else
      {
        v48 = 0x6C696E20746F6ELL;
      }

      if (v47 == 1)
      {
        v49 = 0xE300000000000000;
      }

      else
      {
        v49 = 0xE700000000000000;
      }

      v50 = sub_1D9293524(v48, v49, v85);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_1D928E000, v39, v40, "[%{public}s] View model changed. new value is %{public}s", v41, 0x16u);
      v51 = v71;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v51, -1, -1);
      MEMORY[0x1DA72F920](v41, -1, -1);

      (*(v81 + 8))(v80, v82);
    }

    else
    {

      (*(v37 + 8))(v36, v38);
      v14 = v83;
    }
  }

LABEL_17:
  v55 = v84;
  sub_1D92973DC(v2 + v33, v84, &unk_1ECAFD180, &unk_1D932E7E0);
  if (v35(v55, 1, v14) == 1)
  {
    v56 = &unk_1ECAFD180;
    v57 = &unk_1D932E7E0;
    v58 = v55;
  }

  else
  {
    v59 = v75;
    sub_1D931EF58(v55, v75, type metadata accessor for ControlInstanceButton.ViewModel);
    v60 = *(*v2 + 104);
    swift_beginAccess();
    v61 = v2 + v60;
    v62 = v76;
    sub_1D92973DC(v61, v76, &qword_1ECAFCAC8, &unk_1D932E7D0);
    v63 = v77;
    v64 = v79;
    if ((*(v77 + 48))(v62, 1, v79))
    {
      sub_1D92974EC(v59, type metadata accessor for ControlInstanceButton.ViewModel);
      sub_1D92933A0(v62, &qword_1ECAFCAC8, &unk_1D932E7D0);
      v65 = 1;
      v66 = v78;
    }

    else
    {
      v67 = v72;
      (*(v63 + 16))(v72, v62, v64);
      sub_1D92933A0(v62, &qword_1ECAFCAC8, &unk_1D932E7D0);
      sub_1D929712C(v59, v74, type metadata accessor for ControlInstanceButton.ViewModel);
      v66 = v78;
      sub_1D9328114();
      (*(v63 + 8))(v67, v64);
      sub_1D92974EC(v59, type metadata accessor for ControlInstanceButton.ViewModel);
      v65 = 0;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3B8, &qword_1D93306F8);
    (*(*(v68 - 8) + 56))(v66, v65, 1, v68);
    v56 = &qword_1ECAFD3A8;
    v57 = &qword_1D93306E8;
    v58 = v66;
  }

  return sub_1D92933A0(v58, v56, v57);
}

uint64_t sub_1D93156A0(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_1D9326BE4();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAB8, &unk_1D932E000);
  v77 = *(v79 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA8, &qword_1D932DFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3E8, &unk_1D9330750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v70 - v13;
  v14 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = (&v70 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v70 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3F0, &qword_1D9330760);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  v33 = *(*v2 + 112);
  swift_beginAccess();
  v34 = *(v29 + 56);
  sub_1D92973DC(v2 + v33, v32, &qword_1ECAFCBC8, qword_1D932E7F0);
  sub_1D92973DC(v83, &v32[v34], &qword_1ECAFCBC8, qword_1D932E7F0);
  v35 = *(v15 + 48);
  if (v35(v32, 1, v14) == 1)
  {
    if (v35(&v32[v34], 1, v14) == 1)
    {
      sub_1D92933A0(v32, &qword_1ECAFCBC8, qword_1D932E7F0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v32, v27, &qword_1ECAFCBC8, qword_1D932E7F0);
  if (v35(&v32[v34], 1, v14) == 1)
  {
    sub_1D92974EC(v27, type metadata accessor for ControlInstancePicker.ViewModel);
LABEL_6:
    sub_1D92933A0(v32, &qword_1ECAFD3F0, &qword_1D9330760);
    goto LABEL_7;
  }

  v52 = &v32[v34];
  v53 = v74;
  sub_1D931EF58(v52, v74, type metadata accessor for ControlInstancePicker.ViewModel);
  v54 = _s16ChronoUIServices21ControlInstancePickerC9ViewModelV2eeoiySbAE_AEtFZ_0(v27, v53);
  sub_1D92974EC(v53, type metadata accessor for ControlInstancePicker.ViewModel);
  sub_1D92974EC(v27, type metadata accessor for ControlInstancePicker.ViewModel);
  sub_1D92933A0(v32, &qword_1ECAFCBC8, qword_1D932E7F0);
  if ((v54 & 1) == 0)
  {
LABEL_7:
    v83 = v14;
    v36 = v80;
    v37 = v81;
    v38 = v82;
    (*(v81 + 16))(v80, v2 + *(*v2 + 176), v82);

    v39 = sub_1D9326BC4();
    v40 = sub_1D9328234();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v41 = 136446466;
      v42 = (v2 + *(*v2 + 184));
      v43 = *v42;
      v44 = v42[1];

      v45 = sub_1D9293524(v43, v44, v85);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = v73;
      sub_1D92973DC(v2 + v33, v73, &qword_1ECAFCBC8, qword_1D932E7F0);
      v14 = v83;
      v47 = v35(v46, 1, v83);
      sub_1D92933A0(v46, &qword_1ECAFCBC8, qword_1D932E7F0);
      if (v47 == 1)
      {
        v48 = 7104878;
      }

      else
      {
        v48 = 0x6C696E20746F6ELL;
      }

      if (v47 == 1)
      {
        v49 = 0xE300000000000000;
      }

      else
      {
        v49 = 0xE700000000000000;
      }

      v50 = sub_1D9293524(v48, v49, v85);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_1D928E000, v39, v40, "[%{public}s] View model changed. new value is %{public}s", v41, 0x16u);
      v51 = v71;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v51, -1, -1);
      MEMORY[0x1DA72F920](v41, -1, -1);

      (*(v81 + 8))(v80, v82);
    }

    else
    {

      (*(v37 + 8))(v36, v38);
      v14 = v83;
    }
  }

LABEL_17:
  v55 = v84;
  sub_1D92973DC(v2 + v33, v84, &qword_1ECAFCBC8, qword_1D932E7F0);
  if (v35(v55, 1, v14) == 1)
  {
    v56 = &qword_1ECAFCBC8;
    v57 = qword_1D932E7F0;
    v58 = v55;
  }

  else
  {
    v59 = v75;
    sub_1D931EF58(v55, v75, type metadata accessor for ControlInstancePicker.ViewModel);
    v60 = *(*v2 + 104);
    swift_beginAccess();
    v61 = v2 + v60;
    v62 = v76;
    sub_1D92973DC(v61, v76, &qword_1ECAFCAA8, &qword_1D932DFF0);
    v63 = v77;
    v64 = v79;
    if ((*(v77 + 48))(v62, 1, v79))
    {
      sub_1D92974EC(v59, type metadata accessor for ControlInstancePicker.ViewModel);
      sub_1D92933A0(v62, &qword_1ECAFCAA8, &qword_1D932DFF0);
      v65 = 1;
      v66 = v78;
    }

    else
    {
      v67 = v72;
      (*(v63 + 16))(v72, v62, v64);
      sub_1D92933A0(v62, &qword_1ECAFCAA8, &qword_1D932DFF0);
      sub_1D929712C(v59, v74, type metadata accessor for ControlInstancePicker.ViewModel);
      v66 = v78;
      sub_1D9328114();
      (*(v63 + 8))(v67, v64);
      sub_1D92974EC(v59, type metadata accessor for ControlInstancePicker.ViewModel);
      v65 = 0;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3F8, &qword_1D9330768);
    (*(*(v68 - 8) + 56))(v66, v65, 1, v68);
    v56 = &qword_1ECAFD3E8;
    v57 = &unk_1D9330750;
    v58 = v66;
  }

  return sub_1D92933A0(v58, v56, v57);
}

uint64_t sub_1D931601C(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_1D9326BE4();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA90, &unk_1D932DFC0);
  v77 = *(v79 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA80, &qword_1D932DFB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3C0, &unk_1D9330700);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v70 - v13;
  v14 = type metadata accessor for ControlInstanceToggle.ViewModel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = (&v70 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC0, &unk_1D932E7C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v70 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3C8, &qword_1D9330710);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v70 - v31;
  v33 = *(*v2 + 112);
  swift_beginAccess();
  v34 = *(v29 + 56);
  sub_1D92973DC(v2 + v33, v32, &qword_1ECAFCBC0, &unk_1D932E7C0);
  sub_1D92973DC(v83, &v32[v34], &qword_1ECAFCBC0, &unk_1D932E7C0);
  v35 = *(v15 + 48);
  if (v35(v32, 1, v14) == 1)
  {
    if (v35(&v32[v34], 1, v14) == 1)
    {
      sub_1D92933A0(v32, &qword_1ECAFCBC0, &unk_1D932E7C0);
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  sub_1D92973DC(v32, v27, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (v35(&v32[v34], 1, v14) == 1)
  {
    sub_1D92974EC(v27, type metadata accessor for ControlInstanceToggle.ViewModel);
LABEL_6:
    sub_1D92933A0(v32, &qword_1ECAFD3C8, &qword_1D9330710);
    goto LABEL_7;
  }

  v52 = &v32[v34];
  v53 = v74;
  sub_1D931EF58(v52, v74, type metadata accessor for ControlInstanceToggle.ViewModel);
  v54 = _s16ChronoUIServices21ControlInstanceToggleC9ViewModelV2eeoiySbAE_AEtFZ_0(v27, v53);
  sub_1D92974EC(v53, type metadata accessor for ControlInstanceToggle.ViewModel);
  sub_1D92974EC(v27, type metadata accessor for ControlInstanceToggle.ViewModel);
  sub_1D92933A0(v32, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (!v54)
  {
LABEL_7:
    v83 = v14;
    v36 = v80;
    v37 = v81;
    v38 = v82;
    (*(v81 + 16))(v80, v2 + *(*v2 + 176), v82);

    v39 = sub_1D9326BC4();
    v40 = sub_1D9328234();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v41 = 136446466;
      v42 = (v2 + *(*v2 + 184));
      v43 = *v42;
      v44 = v42[1];

      v45 = sub_1D9293524(v43, v44, v85);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = v73;
      sub_1D92973DC(v2 + v33, v73, &qword_1ECAFCBC0, &unk_1D932E7C0);
      v14 = v83;
      v47 = v35(v46, 1, v83);
      sub_1D92933A0(v46, &qword_1ECAFCBC0, &unk_1D932E7C0);
      if (v47 == 1)
      {
        v48 = 7104878;
      }

      else
      {
        v48 = 0x6C696E20746F6ELL;
      }

      if (v47 == 1)
      {
        v49 = 0xE300000000000000;
      }

      else
      {
        v49 = 0xE700000000000000;
      }

      v50 = sub_1D9293524(v48, v49, v85);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_1D928E000, v39, v40, "[%{public}s] View model changed. new value is %{public}s", v41, 0x16u);
      v51 = v71;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v51, -1, -1);
      MEMORY[0x1DA72F920](v41, -1, -1);

      (*(v81 + 8))(v80, v82);
    }

    else
    {

      (*(v37 + 8))(v36, v38);
      v14 = v83;
    }
  }

LABEL_17:
  v55 = v84;
  sub_1D92973DC(v2 + v33, v84, &qword_1ECAFCBC0, &unk_1D932E7C0);
  if (v35(v55, 1, v14) == 1)
  {
    v56 = &qword_1ECAFCBC0;
    v57 = &unk_1D932E7C0;
    v58 = v55;
  }

  else
  {
    v59 = v75;
    sub_1D931EF58(v55, v75, type metadata accessor for ControlInstanceToggle.ViewModel);
    v60 = *(*v2 + 104);
    swift_beginAccess();
    v61 = v2 + v60;
    v62 = v76;
    sub_1D92973DC(v61, v76, &qword_1ECAFCA80, &qword_1D932DFB0);
    v63 = v77;
    v64 = v79;
    if ((*(v77 + 48))(v62, 1, v79))
    {
      sub_1D92974EC(v59, type metadata accessor for ControlInstanceToggle.ViewModel);
      sub_1D92933A0(v62, &qword_1ECAFCA80, &qword_1D932DFB0);
      v65 = 1;
      v66 = v78;
    }

    else
    {
      v67 = v72;
      (*(v63 + 16))(v72, v62, v64);
      sub_1D92933A0(v62, &qword_1ECAFCA80, &qword_1D932DFB0);
      sub_1D929712C(v59, v74, type metadata accessor for ControlInstanceToggle.ViewModel);
      v66 = v78;
      sub_1D9328114();
      (*(v63 + 8))(v67, v64);
      sub_1D92974EC(v59, type metadata accessor for ControlInstanceToggle.ViewModel);
      v65 = 0;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3D0, &qword_1D9330718);
    (*(*(v68 - 8) + 56))(v66, v65, 1, v68);
    v56 = &qword_1ECAFD3C0;
    v57 = &unk_1D9330700;
    v58 = v66;
  }

  return sub_1D92933A0(v58, v56, v57);
}

uint64_t sub_1D9316998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D9326BE4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_1D9328504();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1D93280A4();
  v4[9] = sub_1D9328094();
  v12 = sub_1D9328064();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D9316AE8, v12, v11);
}

uint64_t sub_1D9316AE8()
{
  v1 = *(v0 + 64);
  sub_1D93286C4();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1D9316BB4;
  v3 = *(v0 + 64);

  return sub_1D931CFD0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D9316BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_1D931F204;
  }

  else
  {
    v10 = sub_1D9316D4C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D9316D4C()
{
  v32 = v0;
  v1 = v0[13];
  v2 = v0[9];

  sub_1D93281B4();
  if (v1)
  {
    v3 = v0[8];
    v4 = v0[5];

    v5 = v0[1];
  }

  else
  {
    v6 = v0[2];
    v7 = qword_1EDE3CCC8[0];
    v8 = *(v6 + qword_1EDE3CCC8[0]);
    *(v6 + qword_1EDE3CCC8[0]) = 0;
    v9 = *(v6 + qword_1EDE3CCC0);
    *(v6 + qword_1EDE3CCC0) = 0;

    if (v8 != *(v6 + v7))
    {
      v10 = v0[2];
      sub_1D93184C8();
    }

    (*(v0[4] + 16))(v0[5], v0[2] + *(*v0[2] + 176), v0[3]);

    v11 = sub_1D9326BC4();
    v12 = sub_1D9328204();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[4];
    v15 = v0[5];
    v16 = v0[2];
    v17 = v0[3];
    if (v13)
    {
      v30 = v0[5];
      v18 = swift_slowAlloc();
      v29 = v17;
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136446466;
      v20 = (v16 + *(*v16 + 184));
      v28 = v12;
      v21 = *v20;
      v22 = v20[1];

      v23 = sub_1D9293524(v21, v22, &v31);

      *(v18 + 4) = v23;
      *(v18 + 12) = 1026;
      *(v18 + 14) = *(v6 + v7);

      _os_log_impl(&dword_1D928E000, v11, v28, "[%{public}s] Control action: animation cancelled (isAnimating: %{BOOL,public}d).", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72F920](v19, -1, -1);
      MEMORY[0x1DA72F920](v18, -1, -1);

      (*(v14 + 8))(v30, v29);
    }

    else
    {
      v24 = v0[2];

      (*(v14 + 8))(v15, v17);
    }

    v25 = v0[8];
    v26 = v0[5];

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1D9316FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D92973DC(a3, v24 - v10, &unk_1ECAFC910, &qword_1D932E360);
  v12 = sub_1D93280D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D92933A0(v11, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D9328064();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D9327FA4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);

      return v22;
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

  sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D931727C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = qword_1EDE3CCB0;
  v9 = *(v2 + qword_1EDE3CCB0);
  *(v2 + qword_1EDE3CCB0) = a1;
  v10 = qword_1EDE3CCC0;
  v11 = *(v2 + qword_1EDE3CCC0);
  *(v2 + qword_1EDE3CCC0) = 0;

  if (v9 != *(v2 + v8))
  {
    result = sub_1D93184C8();
    if (*(v2 + v8) != 1)
    {
      v13 = sub_1D93280D4();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      sub_1D93280A4();

      v14 = sub_1D9328094();
      v15 = swift_allocObject();
      v16 = MEMORY[0x1E69E85E0];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v2;
      v17 = sub_1D9316FD0(0, 0, v7, &unk_1D9330738, v15);
      v18 = *(v2 + v10);
      *(v2 + v10) = v17;
    }
  }

  return result;
}

uint64_t sub_1D93173FC(uint64_t result)
{
  v2 = qword_1EDE3CCC8[0];
  v3 = *(v1 + qword_1EDE3CCC8[0]);
  *(v1 + qword_1EDE3CCC8[0]) = result;
  if (result)
  {
    if (v3)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v1 + qword_1EDE3CCC0);
    *(v1 + qword_1EDE3CCC0) = 0;

    if (v3 == *(v1 + v2))
    {
      return result;
    }
  }

  return sub_1D93184C8();
}

uint64_t sub_1D9317478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A0, &qword_1D93306E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_1D9327C54();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v37 - v18;
  v20 = *(*v0 + 112);
  swift_beginAccess();
  sub_1D92973DC(v0 + v20, v19, &unk_1ECAFD180, &unk_1D932E7E0);
  v21 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  if ((*(*(v21 - 8) + 48))(v19, 1, v21))
  {
    sub_1D92933A0(v19, &unk_1ECAFD180, &unk_1D932E7E0);
  }

  else
  {
    v22 = v13;
    v37 = v9;
    v23 = v38;
    v24 = v19[*(v21 + 60)];
    sub_1D92933A0(v19, &unk_1ECAFD180, &unk_1D932E7E0);
    if ((v24 & 1) == 0)
    {
      v26 = *(v0 + *(*v0 + 152));
      if (!v26)
      {
        return 1;
      }

      BSDispatchQueueAssertMain();
      v27 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
      swift_beginAccess();
      sub_1D92973DC(v26 + v27, v4, &qword_1ECAFC4F0, &qword_1D932CC18);

      v28 = sub_1D9327B44();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v4, 1, v28) == 1)
      {
        v30 = &qword_1ECAFC4F0;
        v31 = &qword_1D932CC18;
        v32 = v4;
      }

      else
      {
        sub_1D9327B14();
        (*(v29 + 8))(v4, v28);
        v33 = sub_1D9327CA4();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v8, 1, v33) != 1)
        {
          sub_1D9327C74();
          (*(v34 + 8))(v8, v33);
          v35 = v37;
          (*(v23 + 32))(v15, v22, v37);
          v36 = sub_1D931790C();
          (*(v23 + 8))(v15, v35);
          return v36;
        }

        v30 = &qword_1ECAFD3A0;
        v31 = &qword_1D93306E0;
        v32 = v8;
      }

      sub_1D92933A0(v32, v30, v31);
      return 1;
    }
  }

  return 2;
}

uint64_t sub_1D931790C()
{
  v0 = sub_1D9326D44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_1D93271E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9327C04();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D92933A0(v8, &qword_1ECAFCBD8, &qword_1D932E920);
    return 1;
  }

  (*(v10 + 32))(v13, v8, v9);
  v14 = *(sub_1D9327184() + 16);

  if (!v14)
  {
    (*(v10 + 8))(v13, v9);
    return 1;
  }

  v20 = v10;
  v21 = v9;
  result = sub_1D9327184();
  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  while (1)
  {
    if (v18 == v17)
    {
      (*(v20 + 8))(v13, v21);

      return 0;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17++, v0);
    v19 = sub_1D9326D34();
    result = (*(v1 + 8))(v4, v0);
    if (v19)
    {
      (*(v20 + 8))(v13, v21);

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ControlInstanceButton.ViewModel.title.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.subtitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ControlInstanceButton.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.icon.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 32);

  return sub_1D9317DF4(a1, v3);
}

uint64_t sub_1D9317DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ControlInstanceButton.ViewModel.tint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 36));
}

uint64_t ControlInstanceButton.ViewModel.tint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.status.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstanceButton.ViewModel.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.actionHint.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstanceButton.ViewModel.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.isLauncher.setter(char a1)
{
  result = type metadata accessor for ControlInstanceButton.ViewModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ControlInstanceButton.ViewModel.accessibilityIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ControlInstanceButton.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstanceButton.ViewModel(0) + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1D931848C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D93184C8()
{
  v1 = v0;
  v2 = sub_1D9326BE4();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD3A0, &qword_1D93306E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v57 - v15;
  v17 = sub_1D9327CA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v60 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v57 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v30 = *(v6 + 56);
  v65 = v5;
  v66 = &v57 - v31;
  v59 = v30;
  v30();
  v32 = *(v1 + *(*v1 + 152));
  if (!v32)
  {
    goto LABEL_4;
  }

  v58 = v2;

  BSDispatchQueueAssertMain();
  v33 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v32 + v33, v12, &qword_1ECAFC4F0, &qword_1D932CC18);

  v34 = sub_1D9327B44();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v12, 1, v34) == 1)
  {
    sub_1D92933A0(v12, &qword_1ECAFC4F0, &qword_1D932CC18);
    v2 = v58;
LABEL_4:
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_5:
    sub_1D92933A0(v16, &qword_1ECAFD3A0, &qword_1D93306E0);
    v36 = v66;
    goto LABEL_6;
  }

  sub_1D9327B14();
  (*(v35 + 8))(v12, v34);
  v54 = (*(v18 + 48))(v16, 1, v17);
  v2 = v58;
  if (v54 == 1)
  {
    goto LABEL_5;
  }

  v55 = v57;
  (*(v18 + 32))(v57, v16, v17);
  v56 = v64;
  sub_1D9318CDC(v55, v64);
  (*(v18 + 8))(v55, v17);
  v36 = v66;
  sub_1D92933A0(v66, &unk_1ECAFD180, &unk_1D932E7E0);
  sub_1D9297374(v56, v36, &unk_1ECAFD180, &unk_1D932E7E0);
LABEL_6:
  sub_1D92973DC(v36, v27, &unk_1ECAFD180, &unk_1D932E7E0);
  v37 = v65;
  if ((*(v6 + 48))(v27, 1, v65) == 1)
  {
    sub_1D92933A0(v27, &unk_1ECAFD180, &unk_1D932E7E0);
    v39 = v62;
    v38 = v63;
    (*(v63 + 16))(v62, v1 + *(*v1 + 176), v2);

    v40 = sub_1D9326BC4();
    v41 = sub_1D9328234();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67 = v43;
      *v42 = 136446210;
      v44 = (v1 + *(*v1 + 184));
      v45 = *v44;
      v46 = v44[1];

      v47 = sub_1D9293524(v45, v46, &v67);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1D928E000, v40, v41, "[%{public}s] No view model changes found.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1DA72F920](v43, -1, -1);
      MEMORY[0x1DA72F920](v42, -1, -1);
    }

    (*(v38 + 8))(v39, v2);
    v48 = v66;
  }

  else
  {
    v49 = v61;
    sub_1D931EF58(v27, v61, type metadata accessor for ControlInstanceButton.ViewModel);
    v50 = v64;
    sub_1D929712C(v49, v64, type metadata accessor for ControlInstanceButton.ViewModel);
    (v59)(v50, 0, 1, v37);
    v51 = *(*v1 + 112);
    swift_beginAccess();
    v52 = v60;
    sub_1D92973DC(v1 + v51, v60, &unk_1ECAFD180, &unk_1D932E7E0);
    swift_beginAccess();
    sub_1D931EFC0(v50, v1 + v51);
    swift_endAccess();
    sub_1D9314D24(v52);
    sub_1D92933A0(v52, &unk_1ECAFD180, &unk_1D932E7E0);
    sub_1D92933A0(v50, &unk_1ECAFD180, &unk_1D932E7E0);
    sub_1D92974EC(v49, type metadata accessor for ControlInstanceButton.ViewModel);
    v48 = v36;
  }

  return sub_1D92933A0(v48, &unk_1ECAFD180, &unk_1D932E7E0);
}

uint64_t sub_1D9318CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D9327A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9327C54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(*v3 + 152));
  if (!v16)
  {
    v20 = 0;
LABEL_9:
    sub_1D9327C94();
    goto LABEL_10;
  }

  v23 = v6;
  v17 = a2;
  v18 = *(v16 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v19 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  if (*(v18 + v19))
  {
    v20 = 0;
LABEL_8:
    a2 = v17;
    v6 = v23;
    goto LABEL_9;
  }

  if (*(v3 + qword_1EDE3CCC8[0]) != 1)
  {
    v20 = 1;
    goto LABEL_8;
  }

  sub_1D9327C74();
  v20 = 1;
  a2 = v17;
  v6 = v23;
LABEL_10:
  sub_1D9327C64();
  sub_1D9318F58(v15, v10, a1, v3, v20, a2);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  v21 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
}

uint64_t sub_1D9318F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v113) = a5;
  v117 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = &v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v102 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD398, &qword_1D93306A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v102 - v18;
  v108 = type metadata accessor for ControlIconView.Mode(0);
  v107 = *(v108 - 8);
  v20 = *(v107 + 64);
  v21 = MEMORY[0x1EEE9AC00](v108);
  v110 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v109 = &v102 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = &v102 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v102 - v27;
  v29 = sub_1D9327CA4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ControlIconView(0);
  v112 = *(v34 - 1);
  v35 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v111 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  sub_1D9327C14();
  v119 = 0;
  if ((v37 & 1) == 0)
  {
    v119 = sub_1D9327434();
  }

  sub_1D9327BE4();
  v38 = MEMORY[0x1DA72E180](a3, v33);
  (*(v30 + 8))(v33, v29);
  v115 = a4;
  if (v38)
  {
    v39 = *(a4 + *(*a4 + 152));
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
      v41 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v42 = *(v40 + v41);

      v43 = sub_1D93276C4();

      if (v43)
      {
        v44 = sub_1D93277C4();

        if (v44)
        {
          v45 = v111;
          sub_1D92F06E8(v111);
          goto LABEL_13;
        }
      }

      else
      {
      }
    }
  }

  sub_1D9327C04();
  v46 = v108;
  swift_storeEnumTagMultiPayload();
  sub_1D931BA4C(v117, v19);
  v47 = (*(v107 + 48))(v19, 1, v46);
  v104 = a3;
  if (v47 == 1)
  {
    sub_1D92933A0(v19, &qword_1ECAFD398, &qword_1D93306A8);
  }

  else
  {
    sub_1D92974EC(v28, type metadata accessor for ControlIconView.Mode);
    v48 = v106;
    sub_1D931EF58(v19, v106, type metadata accessor for ControlIconView.Mode);
    sub_1D931EF58(v48, v28, type metadata accessor for ControlIconView.Mode);
  }

  v49 = v109;
  sub_1D929712C(v28, v109, type metadata accessor for ControlIconView.Mode);
  sub_1D9327C04();

  v108 = sub_1D931B0C0();
  v107 = v50;
  LODWORD(v106) = v51;
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v52;
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = 0;
  v55[4] = v54;
  sub_1D9327534();
  v105 = v120;
  v103 = v121;
  v56 = v122;
  v57 = v110;
  sub_1D929712C(v49, v110, type metadata accessor for ControlIconView.Mode);
  v58 = v28;
  v59 = v34[7];
  v45 = v111;
  *(v111 + v34[10]) = 1;
  v60 = v34[11];
  v61 = sub_1D9326E44();
  (*(*(v61 - 8) + 56))(v45 + v60, 1, 1, v61);
  v62 = v45 + v34[12];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  sub_1D929712C(v57, v45, type metadata accessor for ControlIconView.Mode);
  *(v45 + v34[5]) = 0;
  *(v45 + v34[6]) = 0;
  *(v45 + v59) = v119;
  v63 = v45 + v34[8];
  v64 = v107;
  *v63 = v108;
  *(v63 + 8) = v64;
  *(v63 + 16) = v106 & 1;
  sub_1D92974EC(v57, type metadata accessor for ControlIconView.Mode);
  sub_1D92933A0(v114, &qword_1ECAFCBD8, &qword_1D932E920);
  sub_1D92974EC(v49, type metadata accessor for ControlIconView.Mode);
  sub_1D92974EC(v58, type metadata accessor for ControlIconView.Mode);
  v65 = v45 + v34[9];
  v66 = v103;
  *v65 = v105;
  *(v65 + 8) = v66;
  *(v65 + 16) = v56;
LABEL_13:
  if (v113)
  {
    v67 = v115;
    LODWORD(v114) = *(v115 + qword_1EDE3CCC8[0]);
  }

  else
  {
    LODWORD(v114) = 0;
    v67 = v115;
  }

  LODWORD(v116) = *(v67 + qword_1EDE3CCB0);
  v115 = sub_1D9327C24();
  v113 = v68;
  v69 = sub_1D9327C44();
  v110 = v70;
  v111 = v69;
  v71 = v118;
  sub_1D929712C(v45, v118, type metadata accessor for ControlIconView);
  (*(v112 + 56))(v71, 0, 1, v34);
  v72 = v119;
  if (!v119)
  {
    if (qword_1EDE3C838 != -1)
    {
      swift_once();
    }

    v72 = qword_1EDE400F8;
  }

  v112 = sub_1D9327C34();
  v109 = v73;
  v108 = sub_1D9327BF4();
  v107 = v74;
  v75 = *(*v67 + 152);
  if (*(v67 + v75))
  {
    v76 = *(v67 + v75);

    LODWORD(v106) = sub_1D92C6A40();
  }

  else
  {
    LODWORD(v106) = 0;
  }

  LODWORD(v105) = sub_1D9327C84();
  v77 = *(v67 + v75);
  if (v77)
  {
    v78 = *(v77 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
    v79 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
    swift_beginAccess();
    v80 = *(v78 + v79);

    v81 = sub_1D93276C4();

    if (v81)
    {
      v82 = sub_1D93277C4();
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  v83 = *(v67 + *(*v67 + 168));
  if (v83 && (swift_beginAccess(), (v84 = *(v83 + 32)) != 0))
  {
    v85 = [v84 actionMetadata];
    v86 = [v85 isLauncher];
  }

  else
  {
    v86 = 0;
  }

  v87 = sub_1D9327BC4();
  v89 = v88;

  sub_1D92974EC(v45, type metadata accessor for ControlIconView);
  v90 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v91 = v90[17];
  v92 = sub_1D9327A94();
  v93 = *(v92 - 8);
  (*(v93 + 16))(a6 + v91, v117, v92);
  (*(v93 + 56))(a6 + v91, 0, 1, v92);
  *a6 = v116;
  *(a6 + 1) = v114;
  v94 = v113;
  *(a6 + 8) = v115;
  *(a6 + 16) = v94;
  v95 = v110;
  *(a6 + 24) = v111;
  *(a6 + 32) = v95;
  result = sub_1D9297374(v118, a6 + v90[8], &qword_1ECAFCA50, &unk_1D932DF60);
  *(a6 + v90[9]) = v72;
  v97 = (a6 + v90[10]);
  v98 = v108;
  v99 = v109;
  *v97 = v112;
  v97[1] = v99;
  v100 = (a6 + v90[11]);
  *v100 = v98;
  v100[1] = v107;
  *(a6 + v90[12]) = v106 & 1;
  *(a6 + v90[13]) = v105 & 1;
  *(a6 + v90[14]) = v82 & 1;
  *(a6 + v90[15]) = v86;
  v101 = (a6 + v90[16]);
  *v101 = v87;
  v101[1] = v89;
  return result;
}

uint64_t sub_1D9319AAC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D93173FC(v1);
  }

  return result;
}

uint64_t sub_1D9319B0C()
{
  v1[5] = v0;
  v2 = sub_1D9326884();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = sub_1D9327A94();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v10 = sub_1D9326BE4();
  v1[15] = v10;
  v11 = *(v10 - 8);
  v1[16] = v11;
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_1D93280A4();
  v1[21] = sub_1D9328094();
  v14 = sub_1D9328064();
  v1[22] = v14;
  v1[23] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D9319D58, v14, v13);
}

uint64_t sub_1D9319D58()
{
  v107 = v0;
  v1 = v0[5];
  BSDispatchQueueAssertMain();
  v2 = *v1;
  v3 = *(v1 + *(*v1 + 168));
  v0[24] = v3;
  if (!v3)
  {
    v17 = v0[21];

    sub_1D92F0450();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
LABEL_22:
    v82 = v0[19];
    v81 = v0[20];
    v84 = v0[17];
    v83 = v0[18];
    v85 = v0[14];
    v87 = v0[10];
    v86 = v0[11];
    v89 = v0[8];
    v88 = v0[9];

    v16 = v0[1];
    goto LABEL_23;
  }

  v4 = v0[5];
  v5 = qword_1EDE3CCC8[0];
  v0[25] = qword_1EDE3CCC8[0];
  if (*(v4 + v5))
  {
    v6 = v0[21];

    v8 = v0[19];
    v7 = v0[20];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];

    v16 = v0[1];
LABEL_23:

    return v16();
  }

  v19 = v0[20];
  v20 = v0[15];
  v21 = v0[16];
  v22 = *(v2 + 176);
  v0[26] = v22;
  v23 = *(v21 + 16);
  v0[27] = v23;
  v0[28] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v101 = v22;
  v99 = v23;
  v23(v19, v4 + v22, v20);

  v24 = sub_1D9326BC4();
  v25 = sub_1D9328234();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[20];
  v28 = v0[15];
  v29 = v0[16];
  if (v26)
  {
    v30 = v0[5];
    v104 = v0[15];
    v31 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v106[0] = v96;
    *v31 = 136446466;
    v32 = (v30 + *(*v30 + 184));
    v97 = v27;
    v33 = *v32;
    v34 = v32[1];

    v35 = sub_1D9293524(v33, v34, v106);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    v36 = sub_1D9327F54();
    v38 = sub_1D9293524(v36, v37, v106);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_1D928E000, v24, v25, "[%{public}s] Control action: asked to perform. instance:%{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v96, -1, -1);
    MEMORY[0x1DA72F920](v31, -1, -1);

    v39 = *(v29 + 8);
    v39(v97, v104);
  }

  else
  {

    v39 = *(v29 + 8);
    v39(v27, v28);
  }

  v105 = v39;
  v0[29] = v39;
  v40 = v0[10];
  v41 = v0[5];
  v42 = *(*v41 + 112);
  swift_beginAccess();
  sub_1D92973DC(v41 + v42, v40, &unk_1ECAFD180, &unk_1D932E7E0);
  v43 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  v98 = *(*(v43 - 8) + 48);
  if (v98(v40, 1, v43))
  {
    v44 = v0[21];
    v45 = v0[12];
    v46 = v0[13];
    v48 = v0[10];
    v47 = v0[11];

    sub_1D92933A0(v48, &unk_1ECAFD180, &unk_1D932E7E0);
    (*(v46 + 56))(v47, 1, 1, v45);
LABEL_12:
    v54 = v0[18];
    v55 = v0[15];
    v56 = v0[5];
    sub_1D92933A0(v0[11], &qword_1ECAFD360, qword_1D93304C8);
    v99(v54, v4 + v101, v55);

    v57 = sub_1D9326BC4();
    v58 = sub_1D9328214();

    v103 = v58;
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[18];
    v61 = v0[15];
    v62 = v0[16];
    if (v59)
    {
      v100 = v0[16];
      v102 = v0[18];
      v63 = v0[9];
      v64 = v0[5];
      v65 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v106[0] = v94;
      *v65 = 136446722;
      v66 = (v64 + *(*v64 + 184));
      v95 = v61;
      v67 = v42;
      v68 = *v66;
      v69 = v66[1];

      v70 = sub_1D9293524(v68, v69, v106);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2082;
      sub_1D92973DC(v41 + v67, v63, &unk_1ECAFD180, &unk_1D932E7E0);
      v71 = v98(v63, 1, v43);
      sub_1D92933A0(v63, &unk_1ECAFD180, &unk_1D932E7E0);
      if (v71 == 1)
      {
        v72 = 7104878;
      }

      else
      {
        v72 = 0x6C696E20746F6ELL;
      }

      if (v71 == 1)
      {
        v73 = 0xE300000000000000;
      }

      else
      {
        v73 = 0xE700000000000000;
      }

      v74 = sub_1D9293524(v72, v73, v106);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2082;
      v75 = sub_1D9327F54();
      v77 = sub_1D9293524(v75, v76, v106);

      *(v65 + 24) = v77;
      _os_log_impl(&dword_1D928E000, v57, v103, "[%{public}s] viewModel?.action is nil, viewModel is %{public}s, instance:%{public}s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v94, -1, -1);
      MEMORY[0x1DA72F920](v65, -1, -1);

      v78 = v102;
      v79 = v95;
    }

    else
    {

      v78 = v60;
      v79 = v61;
    }

    v105(v78, v79);
    sub_1D92F0450();
    swift_allocError();
    *v80 = 1;
    swift_willThrow();

    goto LABEL_22;
  }

  v49 = v0[12];
  v50 = v0[13];
  v52 = v0[10];
  v51 = v0[11];
  sub_1D92973DC(v52 + *(v43 + 68), v51, &qword_1ECAFD360, qword_1D93304C8);
  sub_1D92933A0(v52, &unk_1ECAFD180, &unk_1D932E7E0);
  if ((*(v50 + 48))(v51, 1, v49) == 1)
  {
    v53 = v0[21];

    goto LABEL_12;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  v91 = swift_task_alloc();
  v0[30] = v91;
  *v91 = v0;
  v91[1] = sub_1D931A5A4;
  v92 = v0[14];
  v93 = v0[5];

  return sub_1D9302D24(v92);
}

uint64_t sub_1D931A5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1D931AB9C;
  }

  else
  {
    v7 = sub_1D931A6E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D931A6E0()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_1D9326874();
  if (sub_1D9317478() != 2)
  {
    v3 = v0[5];
    sub_1D931727C(1);
  }

  v4 = v0[24];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1D931A7A0;
  v6 = v0[14];

  return sub_1D92D7500(v6);
}

uint64_t sub_1D931A7A0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_1D931ACA4;
  }

  else
  {
    v7 = sub_1D931A8DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D931A8DC()
{
  v47 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[5];

  v2(v5, v7 + v3, v6);

  v8 = sub_1D9326BC4();
  v9 = sub_1D9328234();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v12 = v0[25];
    v43 = v0[16];
    v44 = v0[15];
    v45 = v0[19];
    v13 = v0[5];
    v14 = v0[29];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136446466;
    v17 = (v13 + *(*v13 + 184));
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_1D9293524(v18, v19, &v46);

    *(v15 + 4) = v20;
    *(v15 + 12) = 1026;
    *(v15 + 14) = *(v13 + v12);

    _os_log_impl(&dword_1D928E000, v8, v9, "[%{public}s] Button control action succeeded (isAnimating: %{BOOL,public}d).", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72F920](v16, -1, -1);
    MEMORY[0x1DA72F920](v15, -1, -1);

    v14(v45, v44);
  }

  else
  {
    v21 = v0[19];
    v22 = v0[15];
    v23 = v0[16];
    v24 = v0[5];

    v11(v21, v22);
  }

  v25 = v0[24];
  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[12];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[6];
  sub_1D931E330(v0[5]);

  (*(v30 + 8))(v29, v31);
  (*(v27 + 8))(v26, v28);
  v33 = v0[19];
  v32 = v0[20];
  v35 = v0[17];
  v34 = v0[18];
  v36 = v0[14];
  v38 = v0[10];
  v37 = v0[11];
  v40 = v0[8];
  v39 = v0[9];

  v41 = v0[1];

  return v41();
}

uint64_t sub_1D931AB9C()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  (*(v4 + 8))(v3, v5);
  v6 = v0[31];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  v15 = v0[8];
  v14 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D931ACA4()
{
  v53 = v0;
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[5];

  v3(v6, v8 + v4, v7);

  v9 = v1;
  v10 = sub_1D9326BC4();
  v11 = sub_1D9328214();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[33];
    v13 = v0[16];
    v50 = v0[17];
    v51 = v0[29];
    v49 = v0[15];
    v14 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v52 = v17;
    *v15 = 136446466;
    v18 = (v14 + *(*v14 + 184));
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_1D9293524(v20, v19, &v52);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    v22 = v12;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_1D928E000, v10, v11, "[%{public}s] Button control action failed with error: %{public}@", v15, 0x16u);
    sub_1D92933A0(v16, &qword_1ECAFC510, &qword_1D932CEE0);
    MEMORY[0x1DA72F920](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72F920](v17, -1, -1);
    MEMORY[0x1DA72F920](v15, -1, -1);

    v51(v50, v49);
  }

  else
  {
    v24 = v0[29];
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];

    v24(v25, v27);
  }

  v28 = v0[33];
  v29 = v0[24];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[12];
  v34 = v0[7];
  v33 = v0[8];
  v36 = v0[5];
  v35 = v0[6];
  swift_willThrow();
  sub_1D931E330(v36);

  (*(v34 + 8))(v33, v35);
  (*(v31 + 8))(v30, v32);
  v37 = v0[33];
  v39 = v0[19];
  v38 = v0[20];
  v41 = v0[17];
  v40 = v0[18];
  v42 = v0[14];
  v44 = v0[10];
  v43 = v0[11];
  v46 = v0[8];
  v45 = v0[9];

  v47 = v0[1];

  return v47();
}

uint64_t sub_1D931AFC4()
{
  sub_1D93280A4();
  *(v0 + 16) = sub_1D9328094();
  v2 = sub_1D9328064();

  return MEMORY[0x1EEE6DFA0](sub_1D931B058, v2, v1);
}

uint64_t sub_1D931B058()
{
  v1 = *(v0 + 16);

  BSDispatchQueueAssertMain();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D931B0C0()
{
  v1 = *v0;
  if (sub_1D9317478())
  {
    v7 = *(v0 + qword_1EDE3CCB0);
    sub_1D9327544();
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v2;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v4;
    v5[5] = v1;
    sub_1D9327534();
  }

  return v8;
}

uint64_t sub_1D931B21C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D931727C(v11);
    if (*(v13 + qword_1EDE3CCB0) == 1)
    {
      v14 = sub_1D93280D4();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      sub_1D93280A4();

      v15 = sub_1D9328094();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v13;
      v16[5] = a5;
      v18 = sub_1D9316FD0(0, 0, v10, &unk_1D9330690, v16);
      v19 = *(v13 + qword_1EDE3CCC0);
      *(v13 + qword_1EDE3CCC0) = v18;
    }
  }

  return result;
}

uint64_t sub_1D931B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D9326BE4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_1D9328504();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_1D93280A4();
  v4[9] = sub_1D9328094();
  v12 = sub_1D9328064();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D931B508, v12, v11);
}

uint64_t sub_1D931B508()
{
  v1 = *(v0 + 64);
  v2 = sub_1D9328794();
  v4 = v3;
  sub_1D93286C4();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1D931B5E4;
  v6 = *(v0 + 64);

  return sub_1D931CFD0(v2, v4, 0, 0, 1);
}

uint64_t sub_1D931B5E4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_1D931B9D4;
  }

  else
  {
    v10 = sub_1D931B77C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D931B77C()
{
  v29 = v0;
  v1 = v0[13];
  v2 = v0[9];

  sub_1D93281B4();
  if (v1)
  {
    v3 = v0[8];
    v4 = v0[5];

    v5 = v0[1];
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    sub_1D931727C(0);
    (*(v7 + 16))(v6, v9 + *(*v9 + 176), v8);

    v10 = sub_1D9326BC4();
    v11 = sub_1D9328204();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[4];
    v14 = v0[5];
    v16 = v0[2];
    v15 = v0[3];
    if (v12)
    {
      v27 = v0[5];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446466;
      v19 = (v16 + *(*v16 + 184));
      v20 = *v19;
      v21 = v19[1];

      v22 = sub_1D9293524(v20, v21, &v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 1026;
      *(v17 + 14) = *(v16 + qword_1EDE3CCC8[0]);

      _os_log_impl(&dword_1D928E000, v10, v11, "[%{public}s] Control action: active state cancelled (isAnimating: %{BOOL,public}d).", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72F920](v18, -1, -1);
      MEMORY[0x1DA72F920](v17, -1, -1);

      (*(v13 + 8))(v27, v15);
    }

    else
    {
      v23 = v0[2];

      (*(v13 + 8))(v14, v15);
    }

    v24 = v0[8];
    v25 = v0[5];

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_1D931B9D4()
{
  v1 = v0[9];

  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D931BA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD40, &qword_1D932ECC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74[1] = v74 - v5;
  v6 = sub_1D9327A64();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v80 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD368, &qword_1D9330660);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v74 - v15;
  v17 = *(*v2 + 120);
  v75 = v2;
  v79 = *(v2 + v17);
  v18 = [v79 control];
  v19 = [v18 extensionIdentity];

  v20 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  (*(v10 + 16))(v16, &v19[v20], v9);

  sub_1D9326A74();
  sub_1D9290D60(&qword_1EDE3DA30, &qword_1ECAFD368, &qword_1D9330660);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v95 == v91)
  {
    v21 = *(v10 + 8);
    v21(v14, v9);
    v21(v16, v9);
  }

  else
  {
    v22 = sub_1D9328654();
    v23 = *(v10 + 8);
    v23(v14, v9);
    v23(v16, v9);

    if ((v22 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v24 = v79;
  v25 = [v79 control];
  v26 = [v25 kind];

  v27 = sub_1D9327F84();
  v29 = v28;

  if (v27 == 0x437070416E65704FLL && v29 == 0xEE006C6F72746E6FLL)
  {

    v30 = v80;
  }

  else
  {
    v31 = sub_1D9328654();

    v30 = v80;
    if ((v31 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  sub_1D9327A74();
  v33 = v76;
  v32 = v77;
  v34 = (*(v76 + 88))(v30, v77);
  if (v34 == *MEMORY[0x1E69858A0])
  {
    (*(v33 + 8))(v30, v32);
    v35 = sub_1D9327A84();
    if (!v35)
    {
      goto LABEL_61;
    }

    goto LABEL_20;
  }

  if (v34 != *MEMORY[0x1E6985898])
  {
    (*(v33 + 8))(v30, v32);
    goto LABEL_61;
  }

  v36 = qword_1EDE3CCB8;
  v37 = v75;
  v35 = *(v75 + qword_1EDE3CCB8);
  if (!v35)
  {
    v38 = [v24 control];
    v39 = [v38 intentReference];

    if (v39)
    {
      v40 = [v39 intent];

      if (v40)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
LABEL_18:
          v42 = *(v37 + v36);
          *(v37 + v36) = v41;

          v35 = *(v37 + v36);
          goto LABEL_19;
        }
      }
    }

    v41 = 0;
    goto LABEL_18;
  }

LABEL_19:
  v43 = v35;
  if (!v35)
  {
    goto LABEL_61;
  }

LABEL_20:
  v44 = [v35 appIntentIdentifier];
  if (v44)
  {
    v45 = v44;
    v78 = sub_1D9327F84();
    v79 = v46;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v80 = v35;
  v47 = [v35 serializedParameters];
  v48 = sub_1D9327EF4();

  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v48 + 64);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  v54 = &qword_1ECAFD370;
  while (1)
  {
    if (!v51)
    {
      while (1)
      {
        v55 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v55 >= v52)
        {

          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0;
          goto LABEL_40;
        }

        v51 = *(v48 + 64 + 8 * v55);
        ++v53;
        if (v51)
        {
          v53 = v55;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_66:
      swift_once();
LABEL_56:
      v64 = sub_1D9326BE4();
      __swift_project_value_buffer(v64, qword_1EDE40088);

      v65 = sub_1D9326BC4();
      v66 = sub_1D9328234();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v91 = v68;
        *v67 = 136446210;
        *(v67 + 4) = sub_1D9293524(v54, v52, &v91);
        _os_log_impl(&dword_1D928E000, v65, v66, "Using shortcuts app icon for %{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1DA72F920](v68, -1, -1);
        MEMORY[0x1DA72F920](v67, -1, -1);
      }

      sub_1D9326A74();
      v69 = v81;
      sub_1D9326B24();

      sub_1D92933A0(&v95, &qword_1ECAFD378, &qword_1D9330670);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      v71 = type metadata accessor for ControlIconView.Mode(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v71 - 8) + 56))(v69, 0, 1, v71);
    }

LABEL_34:
    v56 = __clz(__rbit64(v51)) | (v53 << 6);
    sub_1D931EDA8(*(v48 + 48) + 40 * v56, &v91);
    sub_1D92936FC(*(v48 + 56) + 32 * v56, v93 + 8);
    v89 = v93[1];
    v90 = v94;
    v87 = v92;
    v88 = v93[0];
    v86 = v91;
    sub_1D92973DC(&v86, &v84, &qword_1ECAFD370, &qword_1D9330668);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      goto LABEL_28;
    }

    if (v82 == 7368801 && v83 == 0xE300000000000000)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v85);

      goto LABEL_64;
    }

    v57 = sub_1D9328654();

    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    if (v57)
    {
      break;
    }

LABEL_28:
    v51 &= v51 - 1;
    sub_1D92933A0(&v86, &qword_1ECAFD370, &qword_1D9330668);
  }

LABEL_64:
  v97 = v88;
  v98 = v89;
  v99 = v90;
  v95 = v86;
  v96 = v87;
LABEL_40:

  v58 = v79;
  sub_1D92973DC(&v95, &v91, &qword_1ECAFD378, &qword_1D9330670);
  if (!*(&v92 + 1))
  {
    sub_1D92933A0(&v91, &qword_1ECAFD378, &qword_1D9330670);
    v86 = 0u;
    v87 = 0u;
    goto LABEL_47;
  }

  sub_1D92C6364((v93 + 8), &v86);
  sub_1D931EE04(&v91);
  if (!*(&v87 + 1))
  {
LABEL_47:
    sub_1D92933A0(&v86, &qword_1ECAFC580, &qword_1D932CF48);
    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD380, &unk_1D9330678);
  if (swift_dynamicCast())
  {
    v59 = v91;
    if (*(v91 + 16))
    {
      v60 = sub_1D931D620(0xD000000000000010, 0x80000001D9338090);
      if (v61)
      {
        v62 = *(v59 + 56) + 16 * v60;
        v54 = *v62;
        v52 = *(v62 + 8);

        goto LABEL_49;
      }
    }
  }

LABEL_48:
  v54 = 0;
  v52 = 0;
LABEL_49:
  if (!v58)
  {
    goto LABEL_59;
  }

  if (v78 == 0x497070416E65704FLL && v58 == 0xED0000746E65746ELL)
  {

    goto LABEL_54;
  }

  v63 = sub_1D9328654();

  if ((v63 & 1) == 0)
  {
LABEL_59:

    sub_1D92933A0(&v95, &qword_1ECAFD378, &qword_1D9330670);
    goto LABEL_61;
  }

LABEL_54:
  if (v52)
  {
    if (qword_1EDE3BF60 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_66;
  }

  sub_1D92933A0(&v95, &qword_1ECAFD378, &qword_1D9330670);

LABEL_61:
  v73 = type metadata accessor for ControlIconView.Mode(0);
  return (*(*(v73 - 8) + 56))(v81, 1, 1, v73);
}

uint64_t ControlInstanceButton.__allocating_init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + qword_1EDE3CCC0) = 0;
  *(v7 + qword_1EDE3CCB0) = 0;
  *(v7 + qword_1EDE3CCC8) = 0;
  *(v7 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(a2, v10);
  v8 = sub_1D92E0EA4(a1, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t ControlInstanceButton.init(instanceIdentity:client:)(void *a1, uint64_t *a2)
{
  *(v2 + qword_1EDE3CCC0) = 0;
  *(v2 + qword_1EDE3CCB0) = 0;
  *(v2 + qword_1EDE3CCC8) = 0;
  *(v2 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(a2, v7);
  v5 = sub_1D92E0EA4(a1, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v5;
}

void sub_1D931C784()
{
  v1 = *(v0 + qword_1EDE3CCC0);

  v2 = *(v0 + qword_1EDE3CCB8);
}

uint64_t ControlInstanceButton.deinit()
{
  sub_1D9302744();
  v1 = v0;
  v2 = *(v0 + qword_1EDE3CCC0);

  return v1;
}

uint64_t ControlInstanceButton.__deallocating_deinit()
{
  sub_1D9302744();
  v1 = v0;
  v2 = *(v0 + qword_1EDE3CCC0);

  v3 = *(v1 + qword_1EDE3CCB8);

  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v4, v5);
}

uint64_t sub_1D931C8A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D92D9CEC;

  return sub_1D9319B0C();
}

uint64_t sub_1D931C934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D9326BE4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_1D9328504();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_1D93280A4();
  v5[10] = sub_1D9328094();
  v13 = sub_1D9328064();
  v5[11] = v13;
  v5[12] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D931CA84, v13, v12);
}

uint64_t sub_1D931CA84()
{
  v1 = v0[9];
  v2 = v0[2];
  sub_1D9326864();
  v3 = sub_1D9328794();
  v5 = v4;
  sub_1D93286C4();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1D931CB68;
  v7 = v0[9];

  return sub_1D931CFD0(v3, v5, 0, 0, 1);
}