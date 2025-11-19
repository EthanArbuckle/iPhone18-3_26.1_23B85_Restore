unint64_t sub_24F025168()
{
  result = qword_27F237238;
  if (!qword_27F237238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237238);
  }

  return result;
}

unint64_t sub_24F0251BC()
{
  result = qword_27F237240;
  if (!qword_27F237240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237240);
  }

  return result;
}

uint64_t type metadata accessor for Badge()
{
  result = qword_27F237278;
  if (!qword_27F237278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F02525C()
{
  result = 0x676E69746172;
  switch(*(v0 + 16))
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
    case 0xB:
    case 0xD:
      v2 = sub_24F92B198();

      result = v2;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Badge.deinit()
{

  sub_24E601704(v0 + 152, &qword_27F2129B0);
  sub_24E6585F8(v0 + 184);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t Badge.__deallocating_deinit()
{
  Badge.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0255F0()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24F025654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = Badge.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F02568C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 152, a1, &qword_27F2129B0);
}

uint64_t sub_24F0256E8()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24F02575C()
{
  result = qword_27F237248;
  if (!qword_27F237248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237248);
  }

  return result;
}

unint64_t sub_24F0257B4()
{
  result = qword_27F237250;
  if (!qword_27F237250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237250);
  }

  return result;
}

unint64_t sub_24F02580C()
{
  result = qword_27F237258;
  if (!qword_27F237258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237258);
  }

  return result;
}

unint64_t sub_24F025864()
{
  result = qword_27F237260;
  if (!qword_27F237260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237260);
  }

  return result;
}

uint64_t sub_24F025948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F025990()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F025A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 152, a2, &qword_27F2129B0);
}

void sub_24F025ACC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MetricsPipelineTransformer.__allocating_init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v8 = v7 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v9 = sub_24F929F48();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v12 = v11[6];
  v13 = sub_24F9290F8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a3, v13);
  *(v8 + v11[5]) = a2;
  *(v8 + v11[7]) = a4;
  *(v8 + v11[8]) = a5;
  (*(v14 + 8))(a3, v13);
  (*(v10 + 8))(a1, v9);
  v15 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v7 + v15) = MEMORY[0x277D84F90];
  return v7;
}

uint64_t MetricsPipelineTransformer.State.aggregator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929F48();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricsPipelineTransformer.State.aggregator.setter(uint64_t a1)
{
  v3 = sub_24F929F48();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MetricsPipelineTransformer.State.baseRecorder.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.baseRecorder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.State.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_24F9290F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MetricsPipelineTransformer.State.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_24F9290F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MetricsPipelineTransformer.State.additionalRecorders.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.additionalRecorders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.State.decorators.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.decorators.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v8 = v5 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v9 = sub_24F929F48();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v12 = v11[6];
  v13 = sub_24F9290F8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a3, v13);
  *(v8 + v11[5]) = a2;
  *(v8 + v11[7]) = a4;
  *(v8 + v11[8]) = a5;
  (*(v14 + 8))(a3, v13);
  (*(v10 + 8))(a1, v9);
  v15 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v5 + v15) = MEMORY[0x277D84F90];

  return v5;
}

uint64_t MetricsPipelineTransformer.transform(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24E619A88(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24E619A88((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_24F0266F8;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_24F0266C0()
{

  return swift_deallocObject();
}

uint64_t MetricsPipelineTransformer.objectGraphDependencies()()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929158();

  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  (*(v1 + 16))(v5 + v4, v3, v0);
  v6 = sub_24F928F68();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_24F0268BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F929F48();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9290F8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - v12;
  v13 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  v16 = sub_24F928FB8();
  sub_24F0270A4(a1 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = *(v18 + 16);
  v56 = a1;
  if (v19)
  {

    v20 = v18 + 40;
    do
    {
      v21 = *(v20 - 8);
      v57[0] = v16;

      v21(v15, v57);

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  v22 = swift_allocBox();
  v24 = v23;
  sub_24F027108(v15, v23);

  v25 = sub_24F929DE8();

  v47 = v22;

  swift_beginAccess();
  *(v24 + v13[5]) = v25;

  v26 = *(*(v24 + v13[7]) + 16);
  v51 = a2;
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213998);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F93DE60;
    v28 = *(v24 + v13[5]);
    v29 = sub_24F929E08();
    v30 = MEMORY[0x277D221A8];
    *(v27 + 56) = v29;
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    v57[0] = v27;

    sub_24EA0B8E4(v31);
    v32 = sub_24F92A248();
    swift_allocObject();
    v33 = sub_24F92A238();
    v34 = MEMORY[0x277D222E8];
  }

  else
  {
    v33 = *(v24 + v13[5]);
    v32 = sub_24F929E08();

    v34 = MEMORY[0x277D221A8];
  }

  v57[3] = v32;
  v57[4] = v34;
  v57[0] = v33;
  v35 = v13[6];
  v36 = v54;
  v37 = v55;
  v38 = *(v54 + 16);
  v39 = v48;
  v38(v48, v24 + v35, v55);
  v40 = v52;
  v41 = v49;
  v42 = v24;
  v43 = v53;
  (*(v52 + 16))(v49, v42, v53);
  sub_24F9290C8();
  (*(v40 + 8))(v41, v43);
  v44 = *(v36 + 8);
  v44(v39, v37);
  v45 = v50;
  sub_24F9290B8();
  v44(v10, v37);
  *(v56 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 1;
  v38(v10, v45, v37);
  sub_24F929118();

  v44(v45, v37);
  __swift_destroy_boxed_opaque_existential_1(v57);
}

id sub_24F026DB4(void *a1)
{
  v1 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v2 = swift_projectBox();
  swift_beginAccess();
  v3 = *(v2 + *(v1 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = a1;
    v6 = v3 + 40;
    do
    {
      v7 = *(v6 - 8);
      v11 = v5;

      v7(&v10, &v11);

      v5 = v10;
      v6 += 16;
      --v4;
    }

    while (v4);

    return v5;
  }

  else
  {

    return a1;
  }
}

uint64_t MetricsPipelineTransformer.copy()()
{
  v1 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F0270A4(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  sub_24F027108(v3, v6 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);
  v7 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return v6;
}

uint64_t MetricsPipelineTransformer.deinit()
{
  sub_24F02716C(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);

  return v0;
}

uint64_t MetricsPipelineTransformer.__deallocating_deinit()
{
  sub_24F02716C(v0 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0270A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F027108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F02716C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0271F0()
{
  result = type metadata accessor for MetricsPipelineTransformer.State(319);
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

uint64_t sub_24F0272D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929F48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F9290F8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F027410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F929F48();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F9290F8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F027534()
{
  sub_24F929F48();
  if (v0 <= 0x3F)
  {
    sub_24F929E08();
    if (v1 <= 0x3F)
    {
      sub_24F9290F8();
      if (v2 <= 0x3F)
      {
        sub_24F027630(319, &qword_27F2372C0, &qword_27F222260);
        if (v3 <= 0x3F)
        {
          sub_24F027630(319, &qword_27F2372C8, &qword_27F2372D0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F027630(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24F92B6E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ProductReviewActions.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = *v4;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v47 = sub_24F928388();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;

  v51 = a1;
  sub_24F928398();
  v48 = v8;
  v41 = *(v8 + 16);
  v42 = v8 + 16;
  v41(v12, a2, v7);
  type metadata accessor for TapToRate();
  swift_allocObject();
  v20 = TapToRate.init(deserializing:using:)(v19, v12);
  v49 = v7;
  if (v3)
  {
    v21 = a2;

    v20 = 0;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v21 = a2;
  }

  v45 = OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_tapToRate;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_tapToRate) = v20;
  type metadata accessor for Action();
  sub_24F928398();
  v22 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v23 = *(v50 + 8);
  v24 = v47;
  v23(v16, v47);
  v39 = OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_writeReviewAction;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_writeReviewAction) = v22;
  v25 = v45;
  sub_24F928398();
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v46 = v23;
  v23(v16, v24);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20ProductReviewActions_supportAction) = v26;
  if (*(v4 + v25) || *(v4 + v39) || (, , v26))
  {

    v27 = v43;
    v28 = v51;
    (*(v50 + 16))(v43, v51, v24);
    v29 = v44;
    v30 = v49;
    v41(v44, v21, v49);
    v31 = v40;
    v32 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v27, v29);
    if (v31)
    {
      (*(v48 + 8))(v21, v30);
      return v46(v28, v24);
    }

    else
    {
      v34 = v32;
      (*(v48 + 8))(v21, v30);
      v46(v28, v24);
      return v34;
    }
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v36 = 0xD000000000000029;
    v36[1] = 0x800000024FA68B70;
    v36[2] = v38;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v48 + 8))(v21, v49);
    v46(v51, v24);

    type metadata accessor for ProductReviewActions();
    return swift_deallocPartialClassInstance();
  }
}

uint64_t type metadata accessor for ProductReviewActions()
{
  result = qword_27F2372D8;
  if (!qword_27F2372D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F027CF8()
{
}

uint64_t ProductReviewActions.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t ProductReviewActions.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t static VideoConfiguration.defaultConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_24F922348();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = type metadata accessor for VideoConfiguration();
  v8 = v7[5];
  v6(&a1[v8], 1, 1, v5);
  v9 = &a1[v7[12]];
  *a1 = 1;
  result = sub_24F028178(v4, &a1[v8]);
  *&a1[v7[6]] = 15;
  *&a1[v7[7]] = 15;
  a1[v7[8]] = 0;
  a1[v7[9]] = 1;
  a1[v7[10]] = 1;
  a1[v7[11]] = 0;
  *v9 = 0;
  v9[8] = 1;
  return result;
}

uint64_t VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _BYTE *a9@<X8>, uint64_t a10, char a11)
{
  v14 = *a1;
  v15 = *a3;
  v16 = *a4;
  v17 = type metadata accessor for VideoConfiguration();
  v18 = v17[5];
  v19 = sub_24F922348();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[12]];
  *a9 = v14;
  result = sub_24F028178(a2, &a9[v18]);
  *&a9[v17[6]] = v15;
  *&a9[v17[7]] = v16;
  a9[v17[8]] = a5;
  a9[v17[9]] = a6;
  a9[v17[10]] = a7;
  a9[v17[11]] = a8;
  *v20 = a10;
  v20[8] = a11 & 1;
  return result;
}

uint64_t type metadata accessor for VideoConfiguration()
{
  result = qword_27F2372F0;
  if (!qword_27F2372F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F028178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VideoFillMode.contentMode.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id VideoFillMode.videoGravity.getter()
{
  v1 = MEMORY[0x277CE5DD8];
  if (!*v0)
  {
    v1 = MEMORY[0x277CE5DD0];
  }

  return *v1;
}

uint64_t VideoFillMode.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t VideoConfiguration.aspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration() + 20);

  return sub_24F028328(v3, a1);
}

uint64_t sub_24F028328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VideoConfiguration.aspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VideoConfiguration() + 20);

  return sub_24F028178(a1, v3);
}

uint64_t VideoConfiguration.playbackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t VideoConfiguration.playbackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for VideoConfiguration();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t VideoConfiguration.autoPlayPlaybackControls.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t VideoConfiguration.canPlayFullScreen.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t VideoConfiguration.allowsAutoPlay.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t VideoConfiguration.looping.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t VideoConfiguration.roundedCorners.setter(char a1)
{
  result = type metadata accessor for VideoConfiguration();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t VideoConfiguration.deviceCornerRadiusFactor.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VideoConfiguration();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t _s12GameStoreKit18VideoConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_24F922348();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237308);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = type metadata accessor for VideoConfiguration();
  v14 = v25[5];
  v15 = *(v11 + 48);
  sub_24F028328(&a1[v14], v13);
  sub_24F028328(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24F028328(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F028F98();
      v17 = sub_24F92AFF8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_24E601704(v13, &qword_27F214148);
      if (v17)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24E601704(v13, &qword_27F237308);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_24E601704(v13, &qword_27F214148);
LABEL_9:
  if (*&a1[v25[6]] != *&a2[v25[6]] || *&a1[v25[7]] != *&a2[v25[7]] || a1[v25[8]] != a2[v25[8]] || a1[v25[9]] != a2[v25[9]] || a1[v25[10]] != a2[v25[10]] || a1[v25[11]] != a2[v25[11]])
  {
    return 0;
  }

  v20 = v25[12];
  v21 = &a1[v20];
  v22 = a1[v20 + 8];
  v23 = &a2[v20];
  result = v23[8];
  if ((v22 & 1) == 0)
  {
    return (*v21 == *v23) & ~result;
  }

  return result;
}

unint64_t sub_24F028C4C()
{
  result = qword_27F2372E8;
  if (!qword_27F2372E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2372E8);
  }

  return result;
}

uint64_t sub_24F028CC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F028D8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F028E38()
{
  sub_24F028EF0();
  if (v0 <= 0x3F)
  {
    sub_24F028F48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F028EF0()
{
  if (!qword_27F237300)
  {
    sub_24F922348();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F237300);
    }
  }
}

void sub_24F028F48()
{
  if (!qword_27F2191B8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2191B8);
    }
  }
}

unint64_t sub_24F028F98()
{
  result = qword_27F237310;
  if (!qword_27F237310)
  {
    sub_24F922348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237310);
  }

  return result;
}

double OverlayCardLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayCardLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayCardLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(v1 + *(v6 + 44), v5, &qword_27F215440);
  return sub_24E68039C(v5, a1);
}

uint64_t sub_24F029310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(a1 + *(v7 + 44), v6, &qword_27F215440);
  return sub_24E68039C(v6, a2);
}

uint64_t sub_24F029458(uint64_t a1)
{
  v2 = sub_24F0298B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F029494(uint64_t a1)
{
  v2 = sub_24F0298B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayCardLockup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237318);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0298B4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for OverlayCardLockup(0);
    v8[14] = 1;
    type metadata accessor for OverlayButtonLabelAccessory(0);
    sub_24F029908(&qword_27F232DB8, type metadata accessor for OverlayButtonLabelAccessory);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCB8();
    v8[10] = 5;
    sub_24F929608();
    sub_24F029908(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[8] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F0298B4()
{
  result = qword_27F237320;
  if (!qword_27F237320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237320);
  }

  return result;
}

uint64_t sub_24F029908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OverlayCardLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237328);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = type metadata accessor for OverlayCardLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for OverlayButtonLabelAccessory(0);
  v16 = *(*(v15 - 8) + 56);
  v54 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = v10[9];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v12[v17], 1, 1, v18);
  v20 = &v12[v10[10]];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_24E61DA68(&v55, v20, qword_27F21B590);
  v21 = v10[11];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v23(&v12[v21], 1, 1, v22);
  v24 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F0298B4();
  v48 = v9;
  v25 = v50;
  sub_24F92D108();
  if (v25)
  {
    v28 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(&v12[v28], &qword_27F232DC0);
    v29 = v52;

    sub_24E601704(&v12[v29], &qword_27F213E68);
    sub_24E601704(v20, qword_27F24EC90);
    return sub_24E601704(&v12[v51], &qword_27F215440);
  }

  else
  {
    v50 = v18;
    v41 = v10;
    v27 = v45;
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v30 = v56;
    *v12 = v55;
    *(v12 + 1) = v30;
    *(v12 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24F029908(&qword_27F232DD0, type metadata accessor for OverlayButtonLabelAccessory);
    sub_24F92CC18();
    v31 = v47;
    sub_24E61DA68(v27, &v12[v54], &qword_27F232DC0);
    LOBYTE(v55) = 2;
    v32 = sub_24F92CC28();
    v33 = v41;
    v34 = &v12[v41[6]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v55) = 3;
    v36 = sub_24F92CBC8();
    v37 = &v12[v33[7]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 4;
    v12[v33[8]] = sub_24F92CBD8();
    LOBYTE(v55) = 5;
    sub_24F029908(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v26, &v12[v52], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v58 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v20, qword_27F24EC90);
    LOBYTE(v55) = 7;
    sub_24E65CAA0();
    v39 = v44;
    sub_24F92CC68();
    (*(v31 + 8))(v48, v49);
    sub_24E61DA68(v39, &v12[v51], &qword_27F215440);
    sub_24F02AEC4(v12, v42, type metadata accessor for OverlayCardLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F02A1FC(v12);
  }
}

uint64_t sub_24F02A1FC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayCardLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F02A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

double sub_24F02A380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F02A3D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayCardLockup(0);
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F02A4F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F02A694(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

unint64_t sub_24F02A838()
{
  result = qword_27F237348;
  if (!qword_27F237348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237348);
  }

  return result;
}

unint64_t sub_24F02A890()
{
  result = qword_27F237350;
  if (!qword_27F237350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237350);
  }

  return result;
}

unint64_t sub_24F02A8E8()
{
  result = qword_27F237358;
  if (!qword_27F237358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237358);
  }

  return result;
}

uint64_t sub_24F02A93C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for OverlayCardLockup(0);
  v6 = v5[5];
  v7 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(a1 + v6, &a2[v7[5]], &qword_27F232DC0);
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v5[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(a1 + v5[8]);
  *a2 = 1;
  v14 = &a2[v7[6]];
  *v14 = v9;
  v14[1] = v10;
  v15 = &a2[v7[7]];
  *v15 = v12;
  v15[1] = v13;
  a2[v7[8]] = v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237380);
  v17 = MEMORY[0x277CDFC08];
  sub_24F02AEC4(v2, &a2[*(v16 + 36)], MEMORY[0x277CDFC08]);
  v18 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237388) + 36)];
  sub_24F02AEC4(v2, v18, v17);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEB8) + 36)) = 0;
}

uint64_t sub_24F02AA98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = v3;
  *(a1 + 72) = sub_24F029908(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  return sub_24F02AEC4(v1, boxed_opaque_existential_1, MEMORY[0x277CDFC08]);
}

uint64_t sub_24F02AB30()
{
  MEMORY[0x28223BE20](v0);
  sub_24F02AEC4(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayCardLockupComponent);
  sub_24F029908(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent);
  return sub_24F9218E8();
}

uint64_t sub_24F02AC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F02AC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F02AD2C()
{
  result = sub_24F924258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F02AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F02AF30()
{
  result = qword_27F237390;
  if (!qword_27F237390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237388);
    sub_24F02AFE8();
    sub_24E602068(&qword_27F21AED8, &qword_27F21AEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237390);
  }

  return result;
}

unint64_t sub_24F02AFE8()
{
  result = qword_27F237398[0];
  if (!qword_27F237398[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237380);
    sub_24F029908(&qword_27F232E50, type metadata accessor for OverlayButtonLabelView);
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F237398);
  }

  return result;
}

uint64_t sub_24F02B0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428);
  v52 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  sub_24F924038();
  v51 = *(a1 + 24);
  v83 = v51;
  v84 = sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  v4 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v5 = sub_24F924038();
  v6 = sub_24E602068(&qword_27F237430, &qword_27F237420);
  v78 = v3;
  v79 = MEMORY[0x277D837D0];
  v80 = v5;
  v81 = v6;
  v82 = MEMORY[0x277D837E0];
  sub_24F927248();
  v76 = sub_24F02E700();
  WitnessTable = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDFB38];
  v48 = v4;
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CDF690];
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x277CDF918];
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x277CDF748];
  v67 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927128();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237458);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v7 = sub_24F927128();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_24F924038();
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v38 = sub_24F924038();
  v43 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - v13;
  v40 = sub_24F924038();
  v46 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237460);
  v45 = sub_24F924038();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v35 - v17;
  v56 = v52;
  v57 = v51;
  v18 = v49;
  v58 = v49;
  sub_24F927618();
  sub_24F927118();
  sub_24F925868();
  v19 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v41 + 8))(v9, v7);
  sub_24F9257F8();
  v65 = v19;
  v20 = MEMORY[0x277CDF918];
  v66 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v22 = v36;
  sub_24F926A48();
  (*(v42 + 8))(v12, v10);
  v63 = v21;
  v64 = v20;
  v23 = v38;
  v24 = swift_getWitnessTable();
  v25 = v37;
  sub_24F926488();
  (*(v43 + 8))(v22, v23);
  v53 = v52;
  v54 = v51;
  v55 = v18;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237468);
  v61 = v24;
  v62 = MEMORY[0x277CE0688];
  v26 = v40;
  v27 = swift_getWitnessTable();
  sub_24F02E8DC();
  v28 = v39;
  sub_24F9268D8();
  (*(v46 + 8))(v25, v26);
  v29 = sub_24E602068(&qword_27F237488, &qword_27F237460);
  v59 = v27;
  v60 = v29;
  v30 = v45;
  v31 = swift_getWitnessTable();
  v32 = v44;
  sub_24E7896B8(v28, v30, v31);
  v33 = *(v47 + 8);
  v33(v28, v30);
  sub_24E7896B8(v32, v30, v31);
  return (v33)(v32, v30);
}

uint64_t sub_24F02B98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v37 = a1;
  v41 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237458);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  sub_24F924038();
  v9 = sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  v49 = a3;
  v50 = v9;
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v10 = sub_24F924038();
  v11 = sub_24E602068(&qword_27F237430, &qword_27F237420);
  v44 = v8;
  v45 = MEMORY[0x277D837D0];
  v46 = v10;
  v47 = v11;
  v48 = MEMORY[0x277D837E0];
  sub_24F927248();
  v12 = sub_24F02E700();
  WitnessTable = swift_getWitnessTable();
  v43[11] = v12;
  v43[12] = WitnessTable;
  v43[9] = swift_getWitnessTable();
  v43[10] = MEMORY[0x277CDFB38];
  v43[7] = swift_getWitnessTable();
  v43[8] = MEMORY[0x277CDF690];
  v43[5] = swift_getWitnessTable();
  v43[6] = MEMORY[0x277CDF918];
  v43[3] = swift_getWitnessTable();
  v43[4] = MEMORY[0x277CDF748];
  v43[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_24F927128();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v32 = &v32 - v19;
  v20 = v35;
  v21 = v36;
  v42[8] = v36;
  v42[9] = v35;
  v22 = v37;
  v42[10] = v37;
  sub_24F927618();
  sub_24F927118();
  v33 = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, v33);
  v34 = *(v15 + 8);
  v34(v17, v14);
  v42[2] = v21;
  v42[3] = v20;
  v42[4] = v22;
  v23 = type metadata accessor for AchievementsCardFanView();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374C8);
  v25 = sub_24E602068(&qword_27F2374D0, &qword_27F2374C8);
  v26 = v38;
  sub_24F02DAD4(sub_24F02EB30, v42, v23, v24, v25, v38);
  v27 = v32;
  (*(v15 + 16))(v17, v32, v14);
  v44 = v17;
  v28 = v39;
  sub_24E60169C(v26, v39, &qword_27F237458);
  v45 = v28;
  v43[0] = v14;
  v43[1] = v40;
  v42[11] = v33;
  v42[12] = sub_24F02EB3C(&qword_27F2374D8, &qword_27F237458, &unk_24F9BF730, sub_24F02EBC0);
  sub_24F57BA64(&v44, 2uLL, v43);
  sub_24E601704(v26, &qword_27F237458);
  v29 = v27;
  v30 = v34;
  v34(v29, v14);
  sub_24E601704(v28, &qword_27F237458);
  return v30(v17, v14);
}

uint64_t sub_24F02BF88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v43 = a4;
  v35 = a2;
  v30 = a3;
  v42 = type metadata accessor for AchievementsCardFanView();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420);
  v39 = v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  sub_24F924038();
  v8 = sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  v60 = a3;
  v61 = v8;
  swift_getWitnessTable();
  v29[2] = sub_24F924E08();
  v31 = sub_24F924038();
  v32 = sub_24F924038();
  v34 = sub_24F924038();
  v36 = sub_24F924038();
  v9 = sub_24F924038();
  v33 = v9;
  v38 = sub_24E602068(&qword_27F237430, &qword_27F237420);
  v55 = v7;
  v56 = MEMORY[0x277D837D0];
  v57 = v9;
  v58 = v38;
  v59 = MEMORY[0x277D837E0];
  v10 = sub_24F927248();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = v41;
  v55 = *v41;
  v29[1] = swift_getKeyPath();
  v17 = v37;
  v18 = v16;
  v19 = v42;
  (*(v5 + 16))(v37, v18, v42);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v35;
  *(v21 + 24) = v22;
  (*(v5 + 32))(v21 + v20, v17, v19);
  v23 = sub_24F02E700();

  WitnessTable = swift_getWitnessTable();
  v53 = v23;
  v54 = WitnessTable;
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x277CDFB38];
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CDF690];
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF748];
  v28 = swift_getWitnessTable();
  sub_24F927228();
  v44 = v28;
  v25 = swift_getWitnessTable();
  sub_24E7896B8(v12, v10, v25);
  v26 = *(v40 + 8);
  v26(v12, v10);
  sub_24E7896B8(v15, v10, v25);
  return (v26)(v15, v10);
}

uint64_t sub_24F02C500@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a4;
  v88 = a3;
  v76 = a2;
  v103 = a5;
  v8 = type metadata accessor for AchievementCard(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237428);
  MEMORY[0x28223BE20](v80);
  v82 = &v74 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  v85 = sub_24F924038();
  v13 = sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  v120 = a4;
  v121 = v13;
  v92 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v90 = sub_24F924E08();
  v87 = sub_24F924038();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v74 - v14;
  v89 = sub_24F924038();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v83 = &v74 - v15;
  v16 = sub_24F924038();
  v97 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v79 = &v74 - v17;
  v99 = v18;
  v19 = sub_24F924038();
  v98 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v95 = &v74 - v20;
  v100 = v21;
  v102 = sub_24F924038();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v94 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v74 - v24;
  v119 = *(a2 + 32);
  v25 = a1[1];
  *&v117[0] = *a1;
  *(&v117[0] + 1) = v25;

  sub_24F92C7F8();
  v26 = a1[3];
  v78 = a1[2];
  v75 = v26;
  v27 = a1[5];
  v77 = a1[4];
  v74 = v27;
  v28 = type metadata accessor for Achievement(0);
  v29 = &v11[v9[9]];
  sub_24E60169C(a1 + v28[7], v29, &qword_27F213FB0);
  v30 = v28[8];
  v31 = type metadata accessor for AchievementBadgeModel();
  sub_24F02EF48(a1 + v30, v29 + v31[5], type metadata accessor for AchievementProgressStatus);

  v32 = sub_24F02D02C(a1);
  v34 = v33;
  v35 = sub_24F02D1D4(a1);
  v36 = (v29 + v31[6]);
  *v36 = v32;
  v36[1] = v34;
  v37 = (v29 + v31[7]);
  v38 = v79;
  *v37 = v35;
  v37[1] = v39;
  v40 = *(a1 + v28[10]);
  v41 = v76;
  LOBYTE(v32) = *(v76 + 40);
  sub_24F02EF48(a1 + v30, &v11[v9[12]], type metadata accessor for AchievementProgressStatus);
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v42 = v9[15];
  v43 = sub_24F92A6D8();
  (*(*(v43 - 8) + 56))(&v11[v42], 1, 1, v43);
  v44 = v9[16];
  v45 = sub_24F929608();
  (*(*(v45 - 8) + 56))(&v11[v44], 1, 1, v45);
  v46 = v75;
  *(v11 + 5) = v78;
  *(v11 + 6) = v46;
  v47 = v74;
  *(v11 + 7) = v77;
  *(v11 + 8) = v47;
  *&v11[v9[10]] = v40;
  v11[v9[11]] = v32;
  v48 = &v11[v9[13]];
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *v48 = 0u;
  v49 = &v11[v9[14]];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;

  sub_24E7D5870(v117, v49);
  sub_24F02E870();
  v50 = v82;
  sub_24F921D38();
  sub_24F02F02C(v11, type metadata accessor for AchievementCard);
  v51 = type metadata accessor for AchievementsCardFanLayoutMetrics.Card();
  v52 = *(a1 + *(v51 + 36));
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237448) + 36)) = v52;
  KeyPath = swift_getKeyPath();
  v54 = v50 + *(v80 + 36);
  *v54 = KeyPath;
  *(v54 + 8) = 0;
  v104 = v88;
  v105 = v84;
  v106 = v41;
  sub_24F927618();
  v55 = sub_24F02E700();
  v56 = v81;
  sub_24F926088();
  sub_24F02EFC4(v50);
  sub_24F9278A8();
  v57 = swift_getWitnessTable();
  v115 = v55;
  v116 = v57;
  v58 = v87;
  v59 = swift_getWitnessTable();
  v60 = v83;
  sub_24F926388();
  (*(v91 + 8))(v56, v58);
  sub_24F9278A8();
  v113 = v59;
  v114 = MEMORY[0x277CDFB38];
  v61 = v89;
  v62 = swift_getWitnessTable();
  sub_24F926228();
  (*(v93 + 8))(v60, v61);
  if (*(a1 + *(v51 + 28)) <= 0.0)
  {
    sub_24F925858();
  }

  else
  {
    sub_24F925838();
  }

  v111 = v62;
  v112 = MEMORY[0x277CDF690];
  v63 = v99;
  v64 = swift_getWitnessTable();
  v65 = v95;
  sub_24F926A48();
  (*(v97 + 8))(v38, v63);
  v109 = v64;
  v110 = MEMORY[0x277CDF918];
  v66 = v100;
  v67 = swift_getWitnessTable();
  v68 = v94;
  sub_24F926978();
  (*(v98 + 8))(v65, v66);
  v107 = v67;
  v108 = MEMORY[0x277CDF748];
  v69 = v102;
  v70 = swift_getWitnessTable();
  v71 = v96;
  sub_24E7896B8(v68, v69, v70);
  v72 = *(v101 + 8);
  v72(v68, v69);
  sub_24E7896B8(v71, v69, v70);
  return (v72)(v71, v69);
}

uint64_t sub_24F02D02C(uint64_t a1)
{
  v2 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Achievement(0);
  sub_24F02EF48(a1 + *(v5 + 32), v4, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v9 = sub_24F91FDF8();
      if (qword_27F211800 != -1)
      {
        swift_once();
      }

      v10 = [qword_27F39F010 stringFromNumber_];
      if (v10)
      {
        v11 = v10;
        v12 = sub_24F92B0D8();

        return v12;
      }
    }

    else
    {
      v8 = sub_24F91F648();
      (*(*(v8 - 8) + 8))(v4, v8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F02D1D4(uint64_t a1)
{
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Achievement(0);
  sub_24F02EF48(a1 + *(v9 + 32), v8, type metadata accessor for AchievementProgressStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    if (qword_27F211288 != -1)
    {
      swift_once();
    }

    v12 = qword_27F39E5C0;
    v13 = sub_24F91F578();
    v14 = [v12 stringFromDate_];

    v15 = sub_24F92B0D8();
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  return result;
}

uint64_t sub_24F02D3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v36 = a4;
  v6 = sub_24F924258();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  v12 = sub_24F924038();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for AchievementsCardFanView();
  (*(a1 + *(v19 + 40)))();
  v20 = *(v6 + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(&v8[v20], v21, v22);
  __asm { FMOV            V0.2D, #26.0 }

  *v8 = _Q0;
  sub_24EB67ED0();
  v28 = v34;
  sub_24F926B58();
  sub_24F02F02C(v8, MEMORY[0x277CDFC08]);
  (*(v35 + 8))(v11, a2);
  v29 = sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  v37 = v28;
  v38 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v15, v12, WitnessTable);
  v31 = *(v13 + 8);
  v31(v15, v12);
  sub_24E7896B8(v18, v12, WitnessTable);
  return (v31)(v18, v12);
}

uint64_t sub_24F02D71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237510);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237518);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  v22 = type metadata accessor for AchievementsCardFanView();
  sub_24F02EF48(a1 + *(v22 + 36), v6, type metadata accessor for PlayerAvatar);
  LOBYTE(v41[0]) = 7;
  sub_24F8319B8(v6, v41, v9);
  v23 = *(a1 + 32);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F02ECA8(v9, v13, type metadata accessor for PlayerAvatarView);
  v24 = &v13[*(v11 + 44)];
  v25 = v41[1];
  *v24 = v41[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v41[2];
  sub_24F9278A8();
  v27 = v26;
  v29 = v28;
  sub_24E6009C8(v13, v17, &qword_27F2233D0);
  v30 = &v17[*(v15 + 44)];
  *v30 = 1.0 / v23;
  *(v30 + 1) = 1.0 / v23;
  *(v30 + 2) = v27;
  *(v30 + 3) = v29;
  sub_24E6009C8(v17, v21, &qword_27F237510);
  v31 = &v21[*(v19 + 44)];
  *v31 = 0;
  *(v31 + 4) = 1;
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_24F92C888();

  strcpy(v40, "player-avatar-");
  HIBYTE(v40[1]) = -18;
  v32 = sub_24F92BA38();
  MEMORY[0x253050C20](v32);

  v33 = v40[0];
  v34 = v40[1];
  v35 = v39;
  sub_24E6009C8(v21, v39, &qword_27F237518);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374C8);
  v37 = (v35 + *(result + 52));
  *v37 = v33;
  v37[1] = v34;
  return result;
}

uint64_t sub_24F02DAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a2;
  v21 = a1;
  v28 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374A0);
  v25 = sub_24F9242F8();
  v9 = sub_24F924038();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v24 = sub_24F924038();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = v20 - v12;
  sub_24F927618();
  sub_24F9238C8();
  v20[0] = v20;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v43 = v48;
  v14 = *(a3 + 24);
  v29 = *(a3 + 16);
  v30 = a4;
  v31 = v14;
  v32 = a5;
  v33 = v21;
  v34 = v22;
  sub_24F927618();
  v15 = sub_24F02E9B8();
  sub_24F926A08();
  sub_24F925838();
  WitnessTable = swift_getWitnessTable();
  v37 = v15;
  v38 = WitnessTable;
  v17 = swift_getWitnessTable();
  sub_24F926A48();
  (*(v26 + 8))(v11, v9);
  sub_24F925818();
  v35 = v17;
  v36 = MEMORY[0x277CDF918];
  v18 = v24;
  swift_getWitnessTable();
  sub_24F926A48();
  return (*(v27 + 8))(v13, v18);
}

void *sub_24F02DEC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(*(a1 + 8) + 16))
  {
    v3 = sub_24F927618();
    v5 = v4;
    sub_24F02E054(__src);
    memcpy(__dst, __src, 0x131uLL);
    memcpy(v9, __src, 0x131uLL);
    sub_24E60169C(__dst, v10, &qword_27F237490);
    sub_24E601704(v9, &qword_27F237490);
    memcpy(&v10[2], __dst, 0x131uLL);
    v10[0] = v3;
    v10[1] = v5;
    sub_24F02E994(v10);
  }

  else
  {
    sub_24F02E99C(v10);
  }

  memcpy(v7, v10, sizeof(v7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237480);
  sub_24E602068(&qword_27F237478, &qword_27F237480);
  sub_24E760430();
  sub_24F924E28();
  return memcpy(a2, __src, 0x142uLL);
}

uint64_t sub_24F02E054@<X0>(void *a1@<X8>)
{

  sub_24F927898();
  sub_24F927878();
  sub_24F9273D8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9242E8();
  v2 = type metadata accessor for AchievementsCardFanView();
  v3 = sub_24E7274F0();
  sub_24F02DAD4(CGSizeMake, 0, v2, MEMORY[0x277CE1120], v3, v7);
  *(&__src[16] + 8) = v7[7];
  *(&__src[17] + 8) = v8[0];
  *(&__src[18] + 1) = *(v8 + 9);
  *(&__src[15] + 8) = v7[6];
  *(&__src[11] + 8) = v7[2];
  *(&__src[12] + 8) = v7[3];
  *(&__src[13] + 8) = v7[4];
  *(&__src[14] + 8) = v7[5];
  *(&__src[9] + 8) = v7[0];
  *(&__src[10] + 8) = v7[1];
  v9[6] = v19;
  v9[7] = v20;
  v9[8] = v21;
  v9[2] = v15;
  v9[3] = v16;
  v9[4] = v17;
  v9[5] = v18;
  v9[0] = v13;
  v9[1] = v14;
  __src[6] = v19;
  __src[7] = v20;
  __src[8] = v21;
  __src[2] = v15;
  __src[3] = v16;
  __src[4] = v17;
  __src[5] = v18;
  v10 = v22;
  *&__src[9] = v22;
  __src[0] = v13;
  __src[1] = v14;
  memcpy(a1, __src, 0x131uLL);
  v11[6] = v19;
  v11[7] = v20;
  v11[8] = v21;
  v12 = v22;
  v11[2] = v15;
  v11[3] = v16;
  v11[4] = v17;
  v11[5] = v18;
  v11[0] = v13;
  v11[1] = v14;
  sub_24E60169C(v9, v5, &qword_27F237498);
  return sub_24E601704(v11, &qword_27F237498);
}

uint64_t sub_24F02E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_24E7896B8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_24E7896B8(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_24F02E404@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = a1[1];
  *a5 = *a1;
  a5[1] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = type metadata accessor for AchievementsCardFanView();
  result = sub_24F02ECA8(a2, a5 + *(v11 + 36), type metadata accessor for PlayerAvatar);
  v13 = (a5 + *(v11 + 40));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

unint64_t sub_24F02E4AC()
{
  result = type metadata accessor for PlayerAvatar(319);
  if (v1 <= 0x3F)
  {
    result = sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F02E554(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlayerAvatar(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24F02E614(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F02E700()
{
  result = qword_27F237438;
  if (!qword_27F237438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428);
    sub_24F02E7B8();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237438);
  }

  return result;
}

unint64_t sub_24F02E7B8()
{
  result = qword_27F237440;
  if (!qword_27F237440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237448);
    sub_24F02E870();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237440);
  }

  return result;
}

unint64_t sub_24F02E870()
{
  result = qword_27F237450;
  if (!qword_27F237450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237450);
  }

  return result;
}

unint64_t sub_24F02E8DC()
{
  result = qword_27F237470;
  if (!qword_27F237470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237468);
    sub_24E602068(&qword_27F237478, &qword_27F237480);
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237470);
  }

  return result;
}

unint64_t sub_24F02E9B8()
{
  result = qword_27F2374A8;
  if (!qword_27F2374A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374A0);
    sub_24F02EA44();
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374A8);
  }

  return result;
}

unint64_t sub_24F02EA44()
{
  result = qword_27F2374B0;
  if (!qword_27F2374B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374B8);
    sub_24E7274F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374B0);
  }

  return result;
}

unint64_t sub_24F02EAD0()
{
  result = qword_27F2374C0;
  if (!qword_27F2374C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374C0);
  }

  return result;
}

uint64_t sub_24F02EB3C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F02EBF0()
{
  result = qword_27F2374F0;
  if (!qword_27F2374F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2374F8);
    sub_24F02E9B8();
    sub_24E602068(&qword_27F237500, &qword_27F237508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2374F0);
  }

  return result;
}

uint64_t sub_24F02ECA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F02ED10()
{
  v1 = type metadata accessor for AchievementsCardFanView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 36);

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(v3 + v5, v7);
  }

  v8 = v3 + *(v4 + 24);
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return swift_deallocObject();
}

uint64_t sub_24F02EEAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AchievementsCardFanView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24F02C500(a1, v8, v5, v6, a2);
}

uint64_t sub_24F02EF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F02EFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F02F02C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F02F08C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237420);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237428);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2164C8);
  sub_24F924038();
  sub_24E602068(&qword_27F216528, &qword_27F2164C8);
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24E602068(&qword_27F237430, &qword_27F237420);
  sub_24F927248();
  sub_24F02E700();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927128();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237458);
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927128();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237460);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F237488, &qword_27F237460);
  return swift_getWitnessTable();
}

Swift::Void __swiftcall GuidedSearchQueryStore.adding(queries:)(Swift::OpaquePointer queries)
{

  sub_24F14A664(0, 0, queries._rawValue);
}

Swift::String_optional __swiftcall GuidedSearchQueryStore.optimizationTerm(for:tokens:)(Swift::String a1, Swift::OpaquePointer_optional tokens)
{
  rawValue = tokens.value._rawValue;
  if (!tokens.value._rawValue)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v8 = rawValue;
    v9 = v14;
    goto LABEL_20;
  }

  if (!*(tokens.value._rawValue + 2))
  {
LABEL_15:
    rawValue = 0;
    goto LABEL_16;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *v2;

  v17 = sub_24F45D828(v7);

  v10 = *(v6 + 16);
  if (!v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
  v12 = (v6 + 64);
  while (v11 < *(v6 + 16))
  {
    v13 = *(v12 - 2);
    rawValue = *(v12 - 1);
    v14 = *v12;
    v15 = *(v12 - 4) == countAndFlagsBits && *(v12 - 3) == object;
    if (v15 || (v8 = sub_24F92CE08(), (v8 & 1) != 0))
    {

      if (sub_24EDD4478(v13, v17))
      {

        goto LABEL_17;
      }
    }

    ++v11;
    v12 += 5;
    if (v10 == v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24F02F6C8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action);
  v4[3] = type metadata accessor for Action();
  v4[4] = sub_24F02F7E4(&qword_27F216DE8, type metadata accessor for Action);
  v4[0] = v1;
  type metadata accessor for SearchAdActionImplementation();

  swift_getWitnessTable();
  v2 = sub_24F1489C4(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_24F02F7E4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL SearchAdOpportunityProviding.isSearchAdOpportunity.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t SearchAdOpportunityProviding.isSearchAd.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (result)
  {
    v3 = *(result + 40);

    if (v3)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchAdOpportunityProviding.adInstanceId.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 40);

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);

  return v4;
}

uint64_t SearchAdOpportunity.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchAdOpportunity.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchAdOpportunity.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v85 = v3;
  v77 = a2;
  v78 = v5;
  v6 = sub_24F9285B8();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v70 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v68 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = v68 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v68 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v68 - v23;
  v79 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  if (v26)
  {
    v80 = v25;
    v81 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v80 = v27;
    v81 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v15 + 8);
  v31 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v24, v14);
  v32 = v83;
  v33 = v85;
  *(v85 + 4) = v82;
  *(v33 + 5) = v32;
  v33[12] = v84;
  v34 = v79;
  sub_24F928398();
  v35 = v74;
  sub_24F9281F8();
  v30(v21, v14);
  v36 = v31;
  v37 = sub_24F928E68();
  v38 = v30;
  v39 = *(v37 - 8);
  v40 = (*(v39 + 48))(v35, 1, v37);
  if (v40 == 1)
  {
    sub_24E9182E0(v35);
    v41 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v42, "eventPayloads");
    *(v42 + 7) = -4864;
    *(v42 + 2) = v78;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v75 + 8))(v77, v76);
    v38(v34, v14);
  }

  else
  {
    v68[1] = v36;
    v71 = v38;
    v43 = v14;
    MEMORY[0x28223BE20](v40);
    v68[-2] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    sub_24F0305EC();
    v44 = v73;
    v45 = sub_24F928E58();
    if (v44)
    {
      (*(v75 + 8))(v77, v76);
      v71(v79, v14);
      (*(v39 + 8))(v35, v37);
      v33 = v85;
    }

    else
    {
      v73 = 0;
      v47 = v45;
      (*(v39 + 8))(v35, v37);
      v48 = v72;
      v49 = v79;
      sub_24F928398();
      v50 = sub_24F928348();
      v52 = v51;
      v53 = v43;
      v54 = v71;
      v71(v48, v43);
      if (v52)
      {
        v33 = v85;
        v85[2] = v50;
        v33[3] = v52;
        v33[4] = v47;
        type metadata accessor for SearchAd();
        v55 = v69;
        sub_24F928398();
        v56 = v75;
        v57 = *(v75 + 16);
        v58 = v77;
        v78 = v53;
        v59 = v76;
        v57(v70, v77, v76);
        sub_24F030B54(&qword_27F2375B0, 255, type metadata accessor for SearchAd);
        sub_24F929548();
        v33[5] = v82;
        sub_24F928398();
        v60 = sub_24F928348();
        v62 = v61;
        (*(v56 + 8))(v58, v59);
        v63 = v49;
        v64 = v78;
        v65 = v71;
        v71(v63, v78);
        v65(v55, v64);
        v33[6] = v60;
        v33[7] = v62;
        return v33;
      }

      v66 = sub_24F92AC38();
      sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      swift_allocError();
      *v67 = 0x65636E6174736E69;
      v67[1] = 0xEA00000000006449;
      v67[2] = v78;
      (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
      swift_willThrow();
      (*(v75 + 8))(v77, v76);
      v54(v49, v43);
      v33 = v85;
    }
  }

  sub_24E6585F8((v33 + 8));
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t sub_24F030264(_BYTE *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;

  v14._countAndFlagsBits = a3;
  v14._object = a4;
  SearchAdOpportunity.LifecycleEventType.init(rawValue:)(v14);
  v15 = v30[0];
  if (LOBYTE(v30[0]) == 7)
  {
    v16 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v18 = v17;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_24F92C888();

    strcpy(v30, "eventPayloads.");
    HIBYTE(v30[1]) = -18;
    MEMORY[0x253050C20](a3, a4);
    v19 = v30[1];
    *v18 = v30[0];
    v18[1] = v19;
    v18[2] = a6;
    v20 = MEMORY[0x277D22530];
  }

  else
  {
    v29 = a2;
    v31 = a6;
    sub_24F9281F8();
    v21 = sub_24F928E68();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) == 1)
    {
      sub_24E9182E0(v13);
    }

    else
    {
      v23 = sub_24F928E48();
      result = (*(v22 + 8))(v13, v21);
      if (v23)
      {
        *a1 = v15;
        *v29 = v23;
        return result;
      }
    }

    v16 = sub_24F92AC38();
    sub_24F030B54(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    v18 = v25;
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_24F92C888();

    strcpy(v30, "eventPayloads.");
    HIBYTE(v30[1]) = -18;
    MEMORY[0x253050C20](a3, a4);
    v26 = v30[1];
    v27 = MEMORY[0x277D84F90];
    *v18 = v30[0];
    v18[1] = v26;
    v18[2] = v31;
    v18[3] = v27;
    v20 = MEMORY[0x277D22540];
  }

  (*(*(v16 - 8) + 104))(v18, *v20, v16);
  return swift_willThrow();
}

unint64_t sub_24F0305EC()
{
  result = qword_27F2375A8;
  if (!qword_27F2375A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375A8);
  }

  return result;
}

GameStoreKit::SearchAdOpportunity::LifecycleEventType_optional __swiftcall SearchAdOpportunity.LifecycleEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchAdOpportunity.instanceId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchAdOpportunity.missedOpportunityReason.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SearchAdOpportunity.LifecycleEventType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x646563616C70;
  v3 = 0x656C6269736976;
  if (v1 != 5)
  {
    v3 = 0x6574656C706D6F63;
  }

  v4 = 0x6E65657263536E6FLL;
  if (v1 != 3)
  {
    v4 = 0x656572635366666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65746E4565676170;
  if (v1 != 1)
  {
    v5 = 0x7469784565676170;
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

uint64_t sub_24F030810()
{
  sub_24F92B218();
}

uint64_t sub_24F030938@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x646563616C70;
  v5 = 0xE700000000000000;
  v6 = 0x656C6269736976;
  if (v2 != 5)
  {
    v6 = 0x6574656C706D6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E65657263536E6FLL;
  result = 0x656572635366666FLL;
  if (v2 != 3)
  {
    v8 = 0x656572635366666FLL;
    v7 = 0xE90000000000006ELL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000072;
  v11 = 0x65746E4565676170;
  if (v2 != 1)
  {
    v11 = 0x7469784565676170;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t SearchAdOpportunity.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t SearchAdOpportunity.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_24F030AB8()
{
  result = qword_27F2375B8;
  if (!qword_27F2375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375B8);
  }

  return result;
}

uint64_t sub_24F030B54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_24F030BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchAdOpportunity.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

uint64_t AdvertVisibilityCalculator.beginTracking(view:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  return sub_24F031D00(a1, a3, v4, ObjectType, v10, a2, a4);
}

Swift::Void __swiftcall AdvertVisibilityCalculator.endTracking()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v1 = 1;
  sub_24F031124(&v1);
  *(v0 + 81) = 4;
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerDidAppear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = 3;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerWillDisappear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 0;
  if (v1 == 1)
  {
    v2 = 3;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appDidForeground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 1;
  if (v1 & 1) == 0 && (*(v0 + 104))
  {
    v2 = 4;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appWillBackground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 0;
  if (v1 == 1 && (*(v0 + 104) & 1) != 0)
  {
    v2 = 4;
    sub_24F031124(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.occludedEdgeInsetsDidChange(to:)(UIEdgeInsets_optional *to)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *&to->value.bottom;
  *(v1 + 48) = *&to->value.top;
  *(v1 + 64) = v5;
  is_nil = to->is_nil;
  *(v1 + 80) = is_nil;
  if (is_nil)
  {
    if (v4)
    {
      return;
    }

LABEL_6:
    v7 = 5;
    sub_24F031124(&v7);
    return;
  }

  if ((v4 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&to->value.top, v2), vceqq_f64(*&to->value.bottom, v3)))) & 1) == 0)
  {
    goto LABEL_6;
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.scrollViewDidScroll()()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v1 = 2;
    sub_24F031124(&v1);
  }
}

uint64_t AdvertVisibilityCalculator.orthogonalScrollViewDidScroll(_:)()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v2 = 2;
    return sub_24F031124(&v2);
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

uint64_t sub_24F0310A8(uint64_t result)
{
  if (*(v1 + 80))
  {
    if (*(result + 32))
    {
      return result;
    }

LABEL_6:
    v2 = 5;
    return sub_24F031124(&v2);
  }

  if ((*(result + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 48), *result), vceqq_f64(*(v1 + 64), *(result + 16))), xmmword_24F997D20)) & 0xF) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_24F031124(char *a1)
{
  v2 = *a1;
  result = sub_24F0313B4(v11);
  v4 = v11[0];
  v5 = *(v1 + 81);
  if (v11[0] == 4)
  {
    if (v5 == 4)
    {
      return result;
    }
  }

  else if (v11[0] == v5)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    v10 = *(v1 + 81);
    v9 = v4;
    v8 = v2;
    (*(v6 + 8))(v1, &v10, &v9, &v8, ObjectType, v6);
    result = swift_unknownObjectRelease();
  }

  *(v1 + 81) = v4;
  return result;
}

uint64_t AdvertVisibilityCalculator.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AdvertVisibilityCalculator.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F031330;
}

void sub_24F031330(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24F0313B4@<X0>(char *a1@<X8>)
{
  v3 = sub_24F91F968();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v66[-v11];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = *(v1 + 24);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  if (*(v1 + 105) != 1 || *(v1 + 104) != 1)
  {
    swift_unknownObjectRelease();
LABEL_12:
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v68 = v4;
  v69 = v3;
  v72 = a1;
  v70 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 8);
  v71 = v1;
  v73.origin.x = v16(ObjectType, v14);
  MinY = CGRectGetMinY(v73);
  v74.origin.x = v16(ObjectType, v14);
  MidY = CGRectGetMidY(v74);
  v75.origin.x = v16(ObjectType, v14);
  MaxY = CGRectGetMaxY(v75);
  v20 = swift_getObjectType();
  v21 = v70;
  v22 = v70[1];
  v76.origin.x = v22(v20, v70);
  v23 = CGRectGetMinY(v76);
  v77.origin.x = v22(v20, v21);
  v24 = CGRectGetMaxY(v77);
  v25 = v23 + *(v71 + 48);
  if (*(v71 + 80))
  {
    v25 = v23;
  }

  else
  {
    v24 = v24 - *(v71 + 64);
  }

  if (v25 > MinY)
  {
    if (v25 <= MidY)
    {
      v27 = 0;
      v29 = 0;
      v26 = MidY <= v24;
LABEL_19:
      a1 = v72;
      if (v25 > MaxY)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v26 = 0;
    v27 = 0;
LABEL_17:
    v29 = 0;
    goto LABEL_19;
  }

  v27 = MinY <= v24;
  if (v25 > MidY)
  {
    v26 = 0;
    goto LABEL_17;
  }

  v26 = MidY <= v24;
  a1 = v72;
  if (v25 > MaxY)
  {
    v29 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v29 = MaxY <= v24;
LABEL_24:
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

LABEL_30:
      if (!v29)
      {
LABEL_35:
        v28 = 2;
        goto LABEL_14;
      }

      goto LABEL_31;
    }

LABEL_36:
    if (v27 || v29)
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    goto LABEL_36;
  }

  LODWORD(v71) = v26;
  LODWORD(v72) = v27;
  v33 = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v70 = v33;
  v34 = [v31 indexPathForCell_];
  if (v34)
  {
    v35 = v34;
    sub_24F91F9E8();

    v36 = sub_24F91FA78();
    (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
  }

  else
  {
    v36 = sub_24F91FA78();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  }

  sub_24F031F94(v9, v12);
  sub_24F91FA78();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v12, 1, v36) != 1)
  {
    v67 = v29;
    v38 = sub_24F91FA18();
    (*(v37 + 8))(v12, v36);
    v39 = [v31 collectionViewLayout];
    if ([v39 _hasOrthogonalScrollingSections])
    {
      v40 = [v39 _orthogonalScrollingSections];
      sub_24F91F8D8();

      LOBYTE(v40) = sub_24F91F918();
      (*(v68 + 8))(v6, v69);
      v41 = v71;
      if (v40)
      {
        swift_unknownObjectRetain();
        v42 = v70;
        [v70 frame];
        MinX = CGRectGetMinX(v78);
        [v42 frame];
        MidX = CGRectGetMidX(v79);
        [v42 frame];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        swift_unknownObjectRelease();
        v80.origin.x = v46;
        v80.origin.y = v48;
        v80.size.width = v50;
        v80.size.height = v52;
        MaxX = CGRectGetMaxX(v80);
        [v39 _offsetForOrthogonalScrollingSection_];
        v55 = v54;
        [v39 _layoutFrameForSection_];
        Width = CGRectGetWidth(v81);

        swift_unknownObjectRelease_n();
        result = swift_unknownObjectRelease_n();
        v57 = v55 + Width;
        if (v55 > MinX)
        {
          v58 = v72;
          if (v55 > MidX)
          {
            if (v55 > MaxX)
            {
              goto LABEL_13;
            }

            v59 = 0;
            goto LABEL_77;
          }

          if (v55 > MaxX)
          {
            if (MidX <= v57)
            {
              v61 = v41;
            }

            else
            {
              v61 = 0;
            }

            if (v61)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

          v62 = MaxX <= v57;
          if (!v41 || MidX > v57)
          {
            if (((v72 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_103;
          }

          if (((v72 | v67) & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_107:
          if (v62)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v59 = MinX <= v57;
        if (v55 > MidX)
        {
          v58 = v72;
          if (v55 <= MaxX)
          {
LABEL_77:
            LOBYTE(v62) = MaxX <= v57;
LABEL_78:
            if (((v58 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            if (v59)
            {
              goto LABEL_61;
            }

LABEL_103:
            if (v62)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

LABEL_81:
          if (v58)
          {
            if (MinX <= v57)
            {
              goto LABEL_61;
            }
          }

          else if (MinX <= v57 && v67)
          {
            goto LABEL_61;
          }

          goto LABEL_13;
        }

        v58 = v72;
        if (v55 > MaxX)
        {
          if (v41 && MidX <= v57)
          {
            if (v72)
            {
              if (MinX <= v57)
              {
                goto LABEL_35;
              }
            }

            else if (MinX <= v57 && v67)
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

          goto LABEL_81;
        }

        v62 = MaxX <= v57;
        if (MidX <= v57)
        {
          v63 = v41;
        }

        else
        {
          v63 = 0;
        }

        if ((v63 & 1) == 0)
        {
          goto LABEL_78;
        }

        if (v72)
        {
          if (v67)
          {
            if (MinX > v57)
            {
              goto LABEL_107;
            }

            if (MaxX > v57)
            {
              goto LABEL_35;
            }

LABEL_31:
            v28 = 3;
            goto LABEL_14;
          }
        }

        else if (!v67)
        {
          goto LABEL_61;
        }

        if (MinX <= v57)
        {
          goto LABEL_35;
        }

        goto LABEL_107;
      }

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      v60 = v67;
      if (v41)
      {
        if (!v72)
        {
LABEL_57:
          if (v60)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

LABEL_53:
        if (!v60)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }
    }

    else
    {

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      if (v71)
      {
        LOBYTE(v60) = v67;
        if (!v72)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v60 = v67;
    }

    if ((v72 | v60))
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();
  result = sub_24F032004(v12);
  if (v71)
  {
    if (!v72)
    {
LABEL_34:
      if (v29)
      {
        goto LABEL_35;
      }

LABEL_61:
      v28 = 1;
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  if ((v72 | v29))
  {
    goto LABEL_61;
  }

LABEL_13:
  v28 = 0;
LABEL_14:
  *a1 = v28;
  return result;
}

uint64_t AdvertVisibilityCalculator.deinit()
{
  sub_24E883630(v0 + 16);
  sub_24E883630(v0 + 32);
  sub_24E883630(v0 + 88);
  return v0;
}

uint64_t AdvertVisibilityCalculator.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);
  sub_24E883630(v0 + 32);
  sub_24E883630(v0 + 88);

  return swift_deallocClassInstance();
}

GameStoreKit::AdvertVisibilityCalculator::VisibilityThreshold_optional __swiftcall AdvertVisibilityCalculator.VisibilityThreshold.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AdvertVisibilityCalculator.UpdateOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F031D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong, result = swift_unknownObjectRelease(), v12 != a1))
  {
    *(a3 + 24) = a6;
    swift_unknownObjectWeakAssign();
    *(a3 + 40) = a7;
    swift_unknownObjectWeakAssign();
    v14 = 0;
    return sub_24F031124(&v14);
  }

  return result;
}

unint64_t sub_24F031D94()
{
  result = qword_27F2375C8;
  if (!qword_27F2375C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375C8);
  }

  return result;
}

unint64_t sub_24F031DEC()
{
  result = qword_27F2375D0;
  if (!qword_27F2375D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375D0);
  }

  return result;
}

uint64_t sub_24F031E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 96);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F031E90(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24F031F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F032004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F032070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F0320C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F032124(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v83 = a6;
  v82 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610);
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v13 = &v66[-v12];
  v88 = sub_24F923A38();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v75 = &v66[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v74 = &v66[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v66[-v21];
  v23 = sub_24F923BB8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v86 = &v66[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E0);
  MEMORY[0x28223BE20](v26 - 8);
  v76 = &v66[-v27];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E8);
  MEMORY[0x28223BE20](v81);
  v85 = &v66[-v28];
  sub_24F032C50(&qword_27F2195F8);
  sub_24F92BB88();
  result = sub_24F92BC08();
  if (v89[0] == v90)
  {
    return result;
  }

  v67 = a7;
  v30 = *(v8 + 40);
  v31 = *(v8 + 48);
  v32 = a3 - v30 - v31;
  sub_24F92BB88();
  sub_24F92BC08();
  v33 = sub_24F92BBF8();
  v34 = v32 / v33;
  v79 = *v8;
  v87 = v8;
  v78 = *(v8 + 8);
  v73 = v13;
  if (v78)
  {
    v35 = v32 / v33;
    v36 = v75;
  }

  else
  {
    sub_24F92BB88();
    sub_24F92BC08();
    v37 = sub_24F92BBF8();
    v36 = v75;
    if (v37 < 2 || v79 < 0 || (sub_24F92BB88(), sub_24F92BC08(), v79 >= sub_24F92BBF8()))
    {
      v35 = v34;
    }

    else
    {
      v38 = *(v87 + 16);
      sub_24F92BB88();
      sub_24F92BC08();
      result = sub_24F92BBF8();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_47;
      }

      v35 = v34 * v38;
      v34 = (v32 - v35) / (result - 1);
    }
  }

  v39 = v86;
  v40 = v76;
  (*(v24 + 16))(v76, a8, v23);
  (*(v24 + 32))(v39, v40, v23);
  sub_24F032C50(&unk_27F2375F0);
  v41 = v85;
  sub_24F92B3F8();
  v70 = *(v81 + 36);
  *&v41[v70] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98);
  v81 = 0;
  v43 = *(v42 + 36);
  v72 = (v77 + 2);
  v86 = v77 + 4;
  v44 = (v80 + 7);
  v80 += 6;
  ++v77;
  v45 = 0.0;
  LODWORD(v76) = v67 & 1;
  v71 = a8;
  v69 = v22;
  v68 = v44;
  while (1)
  {
    sub_24F92BC08();
    if (*&v41[v43] == v89[0])
    {
      v46 = 1;
      v47 = v84;
    }

    else
    {
      v48 = v19;
      v49 = sub_24F92BC88();
      v50 = v74;
      v51 = v88;
      (*v72)(v74);
      v49(v89, 0);
      v52 = v43;
      v53 = v23;
      sub_24F92BC18();
      v47 = v84;
      v54 = *(v84 + 48);
      v55 = v41;
      v56 = v73;
      v57 = v81;
      *v73 = v81;
      result = (*v86)(v56 + v54, v50, v51);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_44;
      }

      v81 = v59;
      *&v55[v70] = v59;
      v19 = v48;
      sub_24E6009C8(v56, v48, &qword_27F219610);
      v46 = 0;
      v36 = v75;
      v22 = v69;
      v23 = v53;
      v43 = v52;
      v44 = v68;
    }

    (*v44)(v19, v46, 1, v47);
    sub_24E6009C8(v19, v22, &qword_27F2195E0);
    if ((*v80)(v22, 1, v47) == 1)
    {
      return sub_24F032C94(v85);
    }

    v60 = *v22;
    (*v86)(v36, v22 + *(v47 + 48), v88);
    if (v79 == v60)
    {
      v61 = v35;
    }

    else
    {
      v61 = v34;
    }

    if (v78)
    {
      v62 = v34;
    }

    else
    {
      v62 = v61;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    if (sub_24F92BBF8() >= 2)
    {
      if (*(v87 + 32))
      {
        sub_24F92BB88();
        sub_24F92BC08();
        result = sub_24F92BBF8();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_45;
        }

        v63 = 0.0;
        if (v60 != result - 1)
        {
          v63 = *(v87 + 24);
        }

        goto LABEL_33;
      }

      if (v60)
      {
        sub_24F92BB88();
        sub_24F92BC08();
        result = sub_24F92BBF8();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_46;
        }

        v63 = *(v87 + 24);
        if (v60 != result - 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v63 = *(v87 + 24);
      }

      v63 = v63 * 0.5;
LABEL_33:
      v62 = v62 + v63;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    result = sub_24F92BBF8();
    if (__OFSUB__(result, 1))
    {
      break;
    }

    v64 = v30 + v62;
    if (v60)
    {
      v64 = v62;
    }

    if (v60 == result - 1)
    {
      v65 = v31 + v64;
    }

    else
    {
      v65 = v64;
    }

    sub_24F927828();
    LOBYTE(v89[0]) = 0;
    LOBYTE(v90) = v76;
    sub_24F923A28();
    (*v77)(v36, v88);
    v45 = v45 + v65 - *(v87 + 24);
    v41 = v85;
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
  return result;
}

void (*sub_24F032B70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F032BFC()
{
  result = qword_27F2375D8;
  if (!qword_27F2375D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2375D8);
  }

  return result;
}

uint64_t sub_24F032C50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F923BB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F032C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2375E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F032CFC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24F92C6F8();
    sub_24E69A5C4(0, &unk_27F2376E0);
    sub_24EAEAB48();
    sub_24F92BAE8();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24F92C778() || (sub_24E69A5C4(0, &unk_27F2376E0), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_24:
      sub_24E6586B4();
      return;
    }

LABEL_17:
    v12 = [v11 type];
    v13 = v12 - 1;
    if ((v12 - 1) <= 2)
    {
      v14 = [v11 value];
      v19 = sub_24F92B0D8();
      v20 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E6189EC(0, *(v21 + 2) + 1, 1, v21);
      }

      v17 = *(v21 + 2);
      v16 = *(v21 + 3);
      if (v17 >= v16 >> 1)
      {
        v21 = sub_24E6189EC((v16 > 1), v17 + 1, 1, v21);
      }

      *(v21 + 2) = v17 + 1;
      v18 = &v21[24 * v17];
      v18[32] = v13;
      *(v18 + 5) = v19;
      *(v18 + 6) = v20;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_24F032FB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F03304C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

void sub_24F033100(char a1, SEL *a2)
{
  v5 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v2 + v11, v10, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v10, type metadata accessor for OverlayCall);
  }

  else
  {
    v12 = *v10;
    [v12 *a2];
    *v7 = v12;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_24F036E50(v7, v2 + v11);
    swift_endAccess();
    type metadata accessor for OverlayActiveCall(0);
    sub_24F036EB4(&qword_27F2376F0, type metadata accessor for OverlayActiveCall);
    sub_24F922FA8();
    sub_24F923008();
  }
}

uint64_t sub_24F0332E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F03337C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F0333E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0334B0, v7, v6);
}

uint64_t sub_24F0334B0()
{

  sub_24F91EB38();
  sub_24E94E17C(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    sub_24E69A5C4(0, &qword_27F2376C0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 104);
      v2 = [v1 isUplinkMuted];
      sub_24F033100(v2, &selRef_setUplinkMuted_);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 153) = v2;

      sub_24F9230A8();

      goto LABEL_8;
    }
  }

  else
  {
    sub_24E601704(v0 + 48, &qword_27F2129B0);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v4 + v5, v3, type metadata accessor for OverlayCall);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    sub_24E601704(v0 + 16, &qword_27F2129B0);
    sub_24F038FF4(v7, type metadata accessor for OverlayCall);
    goto LABEL_9;
  }

  v8 = *v7;
  v9 = [*v7 isUplinkMuted];
  sub_24F033100(v9, &selRef_setUplinkMuted_);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v9;

  sub_24F9230A8();

LABEL_8:
  sub_24E601704(v0 + 16, &qword_27F2129B0);
LABEL_9:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F033728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_24F92B858();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    sub_24F92B7F8();

    v15 = sub_24F92B7E8();
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    (*(v7 + 32))(v17 + v16, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    sub_24F1F2908(0, 0, v11, a4, v17);

    return sub_24E601704(v11, &unk_27F21B570);
  }

  return result;
}

uint64_t sub_24F03397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F033A44, v7, v6);
}

uint64_t sub_24F033A44()
{

  sub_24F91EB38();
  sub_24E94E17C(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    sub_24E69A5C4(0, &qword_27F2376C0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 104);
      if ([v1 isVideo])
      {
        v2 = 1;
      }

      else
      {
        v2 = [v1 isThirdPartyVideo];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 154) = v2;

      sub_24F9230A8();
      v10 = [v1 isSendingVideo];
      sub_24F033100(v10, &selRef_setIsSendingVideo_);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 155) = v10;

      goto LABEL_14;
    }
  }

  else
  {
    sub_24E601704(v0 + 48, &qword_27F2129B0);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v4 + v5, v3, type metadata accessor for OverlayCall);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    sub_24E601704(v0 + 16, &qword_27F2129B0);
    sub_24F038FF4(v7, type metadata accessor for OverlayCall);
    goto LABEL_15;
  }

  v1 = *v7;
  if ([*v7 isVideo])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v1 isThirdPartyVideo];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v8;

  sub_24F9230A8();
  v9 = [v1 isSendingVideo];
  sub_24F033100(v9, &selRef_setIsSendingVideo_);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 153) = v9;

LABEL_14:
  sub_24F9230A8();

  sub_24E601704(v0 + 16, &qword_27F2129B0);
LABEL_15:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F033D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[16] = type metadata accessor for OverlayCall(0);
  v5[17] = swift_task_alloc();
  sub_24F92B7F8();
  v5[18] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0390C8, v7, v6);
}

uint64_t sub_24F033E4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD000000000000027;
    *(v1 + 40) = 0x800000024FA68F10;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F033F84()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD000000000000029;
    *(v1 + 40) = 0x800000024FA68EE0;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F0340BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD00000000000002DLL;
    *(v1 + 40) = 0x800000024FA68EB0;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F0341F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD00000000000002ELL;
    *(v1 + 40) = 0x800000024FA68E80;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F03432C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD000000000000028;
    *(v1 + 40) = 0x800000024FA68E50;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F034464()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD000000000000021;
    *(v1 + 40) = 0x800000024FA68E20;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F03459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[17] = type metadata accessor for OverlayCall(0);
  v5[18] = swift_task_alloc();
  sub_24F92B7F8();
  v5[19] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F034664, v7, v6);
}

uint64_t sub_24F034664()
{
  sub_24F91EB38();
  sub_24E94E17C((v0 + 2), (v0 + 6));
  if (v0[9])
  {
    sub_24E69A5C4(0, &qword_27F2376C0);
    if (swift_dynamicCast())
    {
      v1 = v0[18];
      v2 = v0[16];
      v3 = v0[13];
      v4 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
      swift_beginAccess();
      sub_24F038F8C(v2 + v4, v1, type metadata accessor for OverlayCall);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = v0[18];
        sub_24E601704((v0 + 2), &qword_27F2129B0);

        sub_24F038FF4(v5, type metadata accessor for OverlayCall);
        goto LABEL_31;
      }

      v7 = *v0[18];
      v8 = [v3 callUUID];
      v9 = sub_24F92B0D8();
      v11 = v10;

      v12 = [v7 callUUID];
      v13 = sub_24F92B0D8();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

LABEL_12:
        if (qword_27F210FD0 != -1)
        {
          swift_once();
        }

        v17 = off_27F23BE70;
        v18 = [v3 remoteParticipantHandles];
        sub_24E69A5C4(0, &unk_27F2376E0);
        sub_24EAEAB48();
        v19 = sub_24F92BAA8();

        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = sub_24F92C738();
        }

        else
        {
          v20 = *(v19 + 16);
        }

        if (v17[6] == v20)
        {

          v17[6] = v20;
        }

        else
        {
          swift_getKeyPath();
          v21 = swift_task_alloc();
          *(v21 + 16) = v17;
          *(v21 + 24) = v20;
          v0[14] = v17;
          sub_24F036EB4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter);
          sub_24F91FD78();
        }

        if (qword_27F2113B0 != -1)
        {
          swift_once();
        }

        v22 = sub_24F9220D8();
        __swift_project_value_buffer(v22, qword_27F39E760);
        v23 = v3;
        v24 = sub_24F9220B8();
        v25 = sub_24F92BDA8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          v27 = [v23 remoteParticipantHandles];
          v28 = sub_24F92BAA8();

          if ((v28 & 0xC000000000000001) != 0)
          {
            v29 = sub_24F92C738();
          }

          else
          {
            v29 = *(v28 + 16);
          }

          *(v26 + 4) = v29;

          _os_log_impl(&dword_24E5DD000, v24, v25, "Remote participant count updated to %ld participants", v26, 0xCu);
          MEMORY[0x2530542D0](v26, -1, -1);
        }

        else
        {
        }

        v6 = (v0 + 2);
        goto LABEL_30;
      }

      v16 = sub_24F92CE08();

      if (v16)
      {
        goto LABEL_12;
      }

      sub_24E601704((v0 + 2), &qword_27F2129B0);
    }

    else
    {
      sub_24E601704((v0 + 2), &qword_27F2129B0);
    }

    goto LABEL_31;
  }

  sub_24E601704((v0 + 2), &qword_27F2129B0);

  v6 = (v0 + 6);
LABEL_30:
  sub_24E601704(v6, &qword_27F2129B0);
LABEL_31:

  v30 = v0[1];

  return v30();
}

uint64_t sub_24F034C18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD00000000000002CLL;
    *(v1 + 40) = 0x800000024FA68DF0;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F034D50()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F91EB38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93A400;
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 32) = 0xD00000000000001ELL;
    *(v1 + 40) = 0x800000024FA68DD0;
    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    v2 = swift_allocObject();
    *(v1 + 64) = v2;
    sub_24E94E17C(v3, v2 + 16);
    sub_24F92D038();

    return sub_24E601704(v3, &qword_27F2129B0);
  }

  return result;
}

uint64_t sub_24F034E88(void *a1)
{
  [a1 status];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  if (([a1 isVideo] & 1) == 0)
  {
    [a1 isThirdPartyVideo];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F034F9C()
{
  v1 = v0;
  v96[7] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v0 + v5, v4, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v4, type metadata accessor for OverlayCall);
    return;
  }

  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F96E2B0;
  v8 = *MEMORY[0x277CBD018];
  v9 = *MEMORY[0x277CBD098];
  v10 = MEMORY[0x277CBCFC0];
  *(v7 + 32) = *MEMORY[0x277CBD018];
  *(v7 + 40) = v9;
  v11 = *v10;
  *(v7 + 48) = *v10;
  v95 = v7;
  v12 = objc_opt_self();
  v13 = v8;
  v14 = v9;
  v15 = v11;
  v16 = [v12 descriptorForRequiredKeysForStyle_];
  MEMORY[0x253050F00]();
  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v17 = [v6 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0);
  sub_24EAEAB48();
  v18 = sub_24F92BAA8();

  v19 = sub_24E6B8E34(v18);

  v20 = sub_24E60F6DC(MEMORY[0x277D84F90]);
  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    if (sub_24F92C738())
    {
      goto LABEL_8;
    }

LABEL_15:
    v82 = v6;

    goto LABEL_16;
  }

  if (!*(v19 + 16))
  {
    goto LABEL_15;
  }

LABEL_8:

  v21 = [*(v1 + 16) contactStore];
  v22 = sub_24F92B588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v23 = sub_24F92B588();

  v96[0] = 0;
  v24 = [v21 tu:v22 contactsForHandles:v23 keyDescriptors:v96 error:?];

  v25 = v96[0];
  if (!v24)
  {
    v28 = v96[0];
    KeyPath = sub_24F91F278();

    swift_willThrow();
    if (qword_27F2113B0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

  v82 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0);
  v26 = sub_24F92AE38();
  v27 = v25;
  v20 = v26;

LABEL_16:
  KeyPath = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96[0] = KeyPath;

  sub_24F9230A8();
  v38 = 0;
  v39 = v20 + 64;
  v40 = 1 << *(v20 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v6 = v41 & *(v20 + 64);
  v42 = (v40 + 63) >> 6;
  v43 = &selRef_systemBackgroundColor;
  v86 = v1;
  for (i = v20; v6; v43 = &selRef_systemBackgroundColor)
  {
LABEL_25:
    while (1)
    {
      v45 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v46 = (v38 << 9) | (8 * v45);
      KeyPath = *(*(v20 + 56) + v46);
      v47 = *(*(v20 + 48) + v46);

      v48 = [v47 v43[139]] - 1;
      if (v48 < 3)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v91 = v47;
    v49 = [v47 value];
    v93 = sub_24F92B0D8();
    v51 = v50;

    if (KeyPath >> 62)
    {
      v55 = sub_24F92C738();
      v92 = v51;
      if (!v55)
      {
LABEL_33:

        v54 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v52 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      v92 = v51;
      if (!v52)
      {
        goto LABEL_33;
      }
    }

    if ((KeyPath & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x253052270](0, KeyPath);
    }

    else
    {
      if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v53 = *(KeyPath + 32);
    }

    v54 = v53;

LABEL_34:
    KeyPath = swift_getKeyPath();
    v88 = swift_getKeyPath();
    v89 = KeyPath;
    v90 = sub_24F923088();
    v57 = v56;
    if (!v54)
    {
      v93 = sub_24E76E5D8(v48, v93, v92);
      v72 = v71;

      KeyPath = v91;
      if (v72)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = *v57;
        v94 = *v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_24E8B4FE0();
          v74 = v94;
        }

        v75 = v93;

        sub_24EB55734(v75, v74);
        *v57 = v74;
      }

      goto LABEL_52;
    }

    v84 = v54;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v57;
    v94 = *v57;
    v59 = v94;
    v85 = v48;
    v60 = v48;
    v61 = v92;
    v63 = sub_24E76E5D8(v60, v93, v92);
    v64 = v59[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_56;
    }

    v67 = v62;
    if (v59[3] >= v66)
    {
      if (v58)
      {
        v70 = v94;
        if ((v62 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_24E8B4FE0();
        v70 = v94;
        if ((v67 & 1) == 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      sub_24E8A6038(v66, v58);
      v68 = sub_24E76E5D8(v85, v93, v61);
      if ((v67 & 1) != (v69 & 1))
      {
        sub_24F92CF88();
        __break(1u);
        return;
      }

      v63 = v68;
      v70 = v94;
      if ((v67 & 1) == 0)
      {
LABEL_49:
        v70[(v63 >> 6) + 8] |= 1 << v63;
        v78 = v70[6] + 24 * v63;
        *v78 = v85;
        *(v78 + 8) = v93;
        *(v78 + 16) = v61;
        *(v70[7] + 8 * v63) = v84;
        v79 = v70[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_58;
        }

        v70[2] = v81;
        goto LABEL_51;
      }
    }

    v76 = v70[7];
    v77 = *(v76 + 8 * v63);
    *(v76 + 8 * v63) = v84;

LABEL_51:
    *v83 = v70;
    KeyPath = v91;
LABEL_52:
    v90(v96, 0);

    v20 = i;
  }

LABEL_21:
  while (1)
  {
    v44 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v44 >= v42)
    {

      return;
    }

    v6 = *(v39 + 8 * v44);
    ++v38;
    if (v6)
    {
      v38 = v44;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_11:
  v30 = sub_24F9220D8();
  __swift_project_value_buffer(v30, qword_27F39E760);
  v31 = KeyPath;
  v32 = sub_24F9220B8();
  v33 = sub_24F92BDB8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = KeyPath;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_24E5DD000, v32, v33, "Failed to fetch contact information for call handles: %@", v34, 0xCu);
    sub_24E601704(v35, &qword_27F227B20);
    MEMORY[0x2530542D0](v35, -1, -1);
    MEMORY[0x2530542D0](v34, -1, -1);
  }

  else
  {
  }
}

void sub_24F0358F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OverlayCall(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  swift_beginAccess();
  sub_24F038F8C(v0 + v11, v10, type metadata accessor for OverlayCall);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F038FF4(v10, type metadata accessor for OverlayCall);
    return;
  }

  v12 = *v10;
  if (([v12 isVideo] & 1) != 0 || (objc_msgSend(v12, sel_isThirdPartyVideo) & 1) != 0 || objc_msgSend(v12, sel_status) != 1)
  {
    goto LABEL_8;
  }

  v13 = [v12 provider];
  v14 = [v13 isSystemProvider];

  if (v14)
  {
    [*(v0 + 16) requestVideoUpgradeForCall:v12 originatingUIType:63];
    [v12 setIsSendingVideo_];
LABEL_8:

    return;
  }

  v15 = [v12 provider];
  v16 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];

  [v16 setVideo_];
  v17 = [v12 handle];
  [v16 setHandle_];

  v18 = [v12 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0);
  sub_24EAEAB48();
  sub_24F92BAA8();

  v19 = sub_24F92BA98();

  [v16 setHandles_];

  [v16 setShowUIPrompt_];
  [v16 setLaunchInBackground_];
  [v16 setOriginatingUIType_];
  v20 = [v12 contactIdentifier];
  [v16 setContactIdentifier_];

  v21 = [v12 localSenderIdentityUUID];
  if (v21)
  {
    v22 = v21;
    sub_24F91F698();

    v23 = sub_24F91F678();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v23 = 0;
  }

  [v16 setLocalSenderIdentityUUID_];

  v24 = [v12 callUUID];
  sub_24F92B0D8();

  sub_24F91F658();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_24F91F678();
    (*(v5 + 8))(v3, v4);
  }

  [v16 setUpgradedFromCallUUID_];

  v26 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_24F035EB8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_104;
  v27 = _Block_copy(aBlock);
  [v26 launchAppForDialRequest:v16 completion:v27];

  _Block_release(v27);
}

void sub_24F035EB8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E760);
    v4 = a1;
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Unable to launchApp for TUDialRequest: %@", v7, 0xCu);
      sub_24E601704(v8, &qword_27F227B20);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E760);
  oslog = sub_24F9220B8();
  v12 = sub_24F92BDA8();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24E5DD000, oslog, v12, "upgradeToVideo dial request was successful", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }
}

uint64_t sub_24F0360EC()
{
  sub_24F038FF4(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call, type metadata accessor for OverlayCall);

  v1 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider, v4);
  v6 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__status;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237708);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isVideo, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isUplinkMuted, v4);
  v5(v0 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isSendingVideo, v4);
  v8 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__remoteParticipantHandles;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237710);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__remoteParticipantContacts;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237718);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_24F03634C()
{
  sub_24F0360EC();

  return swift_deallocClassInstance();
}

void sub_24F0363CC()
{
  type metadata accessor for OverlayCall(319);
  if (v0 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F237668, &unk_27F237670);
    if (v1 <= 0x3F)
    {
      sub_24EEFCB00(319, &qword_27F21F448);
      if (v2 <= 0x3F)
      {
        sub_24EEFCB00(319, &qword_27F237680);
        if (v3 <= 0x3F)
        {
          sub_24EEFCB4C(319, &qword_27F237688, &qword_27F237690);
          if (v4 <= 0x3F)
          {
            sub_24EEFCB4C(319, &qword_27F237698, &unk_27F2376A0);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F036638()
{
  result = sub_24E69A5C4(319, &qword_27F2376C0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VirtualCall();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F0366C0()
{
  result = qword_27F2376D0;
  if (!qword_27F2376D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2376D0);
  }

  return result;
}

uint64_t sub_24F036714@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OverlayActiveCall(0);
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24F036754@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_24F036770@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F0367F0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F0368EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_24F033100(*a1, a5);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F0369A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F036A38()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F036AA8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F036B28(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_24F9230A8();
}

uint64_t sub_24F036BE0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F036C70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F036E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayCall(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F036EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F036FFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  v37 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
  sub_24F923058();
  (*(v11 + 32))(v3 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  LOBYTE(v37) = 0;
  sub_24F923058();
  v16 = *(v7 + 32);
  v16(v3 + v15, v9, v6);
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  LOBYTE(v37) = 0;
  sub_24F923058();
  v16(v3 + v17, v9, v6);
  *(v3 + 16) = a1;
  sub_24F038F8C(a2, v3 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call, type metadata accessor for VirtualCall);
  type metadata accessor for OverlayCall(0);
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  v19 = sub_24F91F668();
  v20 = (v3 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  *v20 = v19;
  v20[1] = v21;
  swift_beginAccess();
  LOBYTE(v36) = 3;
  sub_24F923058();
  swift_endAccess();
  v22 = type metadata accessor for VirtualCall();
  LOBYTE(v17) = *(a2 + v22[10]);
  swift_beginAccess();
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v36) = 1;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v36) = 0;
  sub_24F923058();
  swift_endAccess();
  LOBYTE(v17) = *(a2 + v22[11]);
  v23 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  swift_beginAccess();
  v24 = *(v7 + 8);
  v24(v3 + v23, v6);
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  LOBYTE(v17) = *(a2 + v22[12]);
  v25 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  swift_beginAccess();
  v24(v3 + v25, v6);
  LOBYTE(v36) = v17;
  sub_24F923058();
  swift_endAccess();
  v26 = *(a2 + v22[7]);
  v27 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  swift_beginAccess();
  (*(v34 + 8))(v3 + v27, v33);
  v36 = v26;
  v28 = v26;
  sub_24F923058();
  swift_endAccess();
  v29 = *(a2 + v22[9]);
  swift_beginAccess();
  v36 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  sub_24F923058();
  swift_endAccess();
  v30 = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2376A0);
  sub_24F923058();
  swift_endAccess();
  sub_24F034F9C();
  sub_24F038FF4(a2, type metadata accessor for VirtualCall);
  return v3;
}

uint64_t sub_24F03755C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v107 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2376F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v107 - v11;
  v13 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__error;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
  sub_24F923058();
  v107[2] = v10;
  v107[3] = v9;
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__supportsVideo;
  LOBYTE(aBlock) = 0;
  sub_24F923058();
  v108 = v6;
  v15 = *(v6 + 32);
  v15(v2 + v14, v8, v5);
  v16 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall__isCXProvider;
  LOBYTE(aBlock) = 0;
  sub_24F923058();
  v109 = v5;
  v15(v2 + v16, v8, v5);
  *(v2 + 16) = a1;
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_call) = a2;
  type metadata accessor for OverlayCall(0);
  v107[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = a1;
  v19 = a2;
  v20 = [v19 callUUID];
  v21 = sub_24F92B0D8();
  v23 = v22;

  v24 = (v2 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id);
  *v24 = v21;
  v24[1] = v23;
  v25 = [v19 status];
  if (v25 >= 7)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x5050403020101uLL >> (8 * v25);
  }

  swift_beginAccess();
  LOBYTE(v116) = v26;
  sub_24F923058();
  swift_endAccess();
  if ([v19 isVideo])
  {
    v27 = 1;
  }

  else
  {
    v27 = [v19 isThirdPartyVideo];
  }

  swift_beginAccess();
  LOBYTE(v116) = v27;
  sub_24F923058();
  swift_endAccess();
  v28 = [v19 isUplinkMuted];
  swift_beginAccess();
  LOBYTE(v116) = v28;
  sub_24F923058();
  swift_endAccess();
  v29 = [v19 isSendingVideo];
  swift_beginAccess();
  LOBYTE(v116) = v29;
  sub_24F923058();
  swift_endAccess();
  v30 = [v19 provider];
  v31 = [v30 supportsAudioAndVideo];

  swift_beginAccess();
  v32 = v109;
  v33 = *(v108 + 8);
  v33(v2 + v14, v109);
  LOBYTE(v116) = v31;
  sub_24F923058();
  swift_endAccess();
  v34 = [v19 provider];
  v35 = [v34 isSystemProvider];

  swift_beginAccess();
  v33(v2 + v16, v32);
  LOBYTE(v116) = v35 ^ 1;
  sub_24F923058();
  swift_endAccess();
  v36 = [v19 remoteParticipantHandles];
  sub_24E69A5C4(0, &unk_27F2376E0);
  sub_24EAEAB48();
  v37 = sub_24F92BAA8();

  sub_24F032CFC(v37);
  v39 = v38;

  swift_beginAccess();
  v116 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690);
  sub_24F923058();
  swift_endAccess();
  v40 = sub_24E60F704(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v116 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2376A0);
  sub_24F923058();
  swift_endAccess();
  sub_24F034F9C();
  v41 = objc_opt_self();
  v42 = [v41 defaultCenter];
  v43 = *MEMORY[0x277D6F0A0];
  v44 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038898;
  v115 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_119;
  v45 = _Block_copy(&aBlock);

  v46 = [v42 addObserverForName:v43 object:0 queue:0 usingBlock:v45];
  _Block_release(v45);
  swift_unknownObjectRelease();

  v47 = [v41 defaultCenter];
  v48 = *MEMORY[0x277D6F080];
  v49 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0388D0;
  v115 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_123;
  v50 = _Block_copy(&aBlock);

  v51 = [v47 addObserverForName:v48 object:0 queue:0 usingBlock:v50];
  _Block_release(v50);
  swift_unknownObjectRelease();

  v52 = [v41 defaultCenter];
  v53 = *MEMORY[0x277D6F098];
  v54 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038908;
  v115 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_127;
  v55 = _Block_copy(&aBlock);

  v56 = [v52 addObserverForName:v53 object:0 queue:0 usingBlock:v55];
  _Block_release(v55);
  swift_unknownObjectRelease();

  v57 = [v41 defaultCenter];
  v58 = *MEMORY[0x277D6F048];
  v59 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038940;
  v115 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_131;
  v60 = _Block_copy(&aBlock);

  v61 = [v57 addObserverForName:v58 object:0 queue:0 usingBlock:v60];
  _Block_release(v60);
  swift_unknownObjectRelease();

  v62 = [v41 defaultCenter];
  v63 = *MEMORY[0x277D6F050];
  v64 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038948;
  v115 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_135;
  v65 = _Block_copy(&aBlock);

  v66 = [v62 addObserverForName:v63 object:0 queue:0 usingBlock:v65];
  _Block_release(v65);
  swift_unknownObjectRelease();

  v67 = [v41 defaultCenter];
  v68 = *MEMORY[0x277D6F060];
  v69 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038950;
  v115 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_139;
  v70 = _Block_copy(&aBlock);

  v71 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v70];
  _Block_release(v70);
  swift_unknownObjectRelease();

  v72 = [v41 defaultCenter];
  v73 = *MEMORY[0x277D6F0D8];
  v74 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038958;
  v115 = v74;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_143;
  v75 = _Block_copy(&aBlock);

  v76 = [v72 addObserverForName:v73 object:0 queue:0 usingBlock:v75];
  _Block_release(v75);
  swift_unknownObjectRelease();

  v77 = [v41 defaultCenter];
  v78 = *MEMORY[0x277D6F0A8];
  v79 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038960;
  v115 = v79;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_147;
  v80 = _Block_copy(&aBlock);

  v81 = [v77 addObserverForName:v78 object:0 queue:0 usingBlock:v80];
  _Block_release(v80);
  swift_unknownObjectRelease();

  v82 = [v41 defaultCenter];
  v83 = *MEMORY[0x277D6F078];
  v84 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038968;
  v115 = v84;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_151_0;
  v85 = _Block_copy(&aBlock);

  v86 = [v82 addObserverForName:v83 object:0 queue:0 usingBlock:v85];
  _Block_release(v85);
  swift_unknownObjectRelease();

  v87 = [v41 defaultCenter];
  v88 = *MEMORY[0x277D6F108];
  v89 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0390CC;
  v115 = v89;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_155_0;
  v90 = _Block_copy(&aBlock);

  v91 = [v87 addObserverForName:v88 object:0 queue:0 usingBlock:v90];
  _Block_release(v90);
  swift_unknownObjectRelease();

  v92 = [v41 defaultCenter];
  v93 = *MEMORY[0x277D6F0D0];
  v94 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F038970;
  v115 = v94;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_159;
  v95 = _Block_copy(&aBlock);

  v96 = [v92 addObserverForName:v93 object:0 queue:0 usingBlock:v95];
  _Block_release(v95);
  swift_unknownObjectRelease();

  v97 = [v41 defaultCenter];
  v98 = swift_allocObject();
  swift_weakInit();
  v114 = sub_24F0389A8;
  v115 = v98;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_163;
  v99 = _Block_copy(&aBlock);

  v100 = [v97 addObserverForName:v88 object:0 queue:0 usingBlock:v99];
  _Block_release(v99);
  swift_unknownObjectRelease();

  v101 = [v41 defaultCenter];
  v102 = *MEMORY[0x277D6F0B0];
  v103 = swift_allocObject();
  swift_weakInit();

  v114 = sub_24F0389C4;
  v115 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_24EEFA694;
  v113 = &block_descriptor_167_0;
  v104 = _Block_copy(&aBlock);

  v105 = [v101 addObserverForName:v102 object:0 queue:0 usingBlock:v104];
  _Block_release(v104);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_24F038860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F0389CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_24F038A10(uint64_t a1)
{
  v4 = *(sub_24F91EB58() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F03459C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24F038B54(uint64_t a1)
{
  v4 = *(sub_24F91EB58() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F033D84(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24F038C74(uint64_t a1)
{
  v4 = *(sub_24F91EB58() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F03397C(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_173Tm()
{
  v1 = sub_24F91EB58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F038E6C(uint64_t a1)
{
  v4 = *(sub_24F91EB58() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F0333E8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24F038F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F038FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F0390D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_24F91F6A8();
  sub_24F91F6A8();
  v5 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  swift_allocObject();
  *(v0 + v5) = sub_24F922FC8();
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshStreamCancellables) = MEMORY[0x277D84F98];
  v6 = sub_24F92B858();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F9C0370, v8);

  v7(v4, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F9C0380, v9);

  return v1;
}

uint64_t sub_24F0392C4()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  v11 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  v22 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  v23 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  v12 = sub_24F92B858();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *(v2 + 16);
  v13(v6, v0 + v10, v1);
  v13(v24, v0 + v11, v1);
  v14 = *(v2 + 80);
  v15 = (v14 + 32) & ~v14;
  v16 = (v3 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(v2 + 32);
  v18(v17 + v15, v6, v1);
  v18(v17 + v16, v24, v1);
  sub_24EA998B8(0, 0, v9, &unk_24F9C0358, v17);

  v19 = *(v2 + 8);
  v19(v0 + v23, v1);
  v19(v0 + v22, v1);

  return v0;
}

uint64_t sub_24F03956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24F03958C, 0, 0);
}

uint64_t sub_24F03958C()
{
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 32) = qword_27F252DD0;

  return MEMORY[0x2822009F8](sub_24F039624, v1, 0);
}

uint64_t sub_24F039624()
{
  v1 = *(v0 + 32);
  sub_24F840910(*(v0 + 16), 0);

  return MEMORY[0x2822009F8](sub_24F039694, v1, 0);
}

uint64_t sub_24F039694()
{
  sub_24F840910(*(v0 + 24), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0396F8()
{
  sub_24F0392C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedRefreshNotifier()
{
  result = qword_27F237740;
  if (!qword_27F237740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0397A4()
{
  result = sub_24F91F6B8();
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

uint64_t sub_24F039850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = sub_24F927D88();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = sub_24F927DC8();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F039A3C, 0, 0);
}

uint64_t sub_24F039A3C()
{
  *(v0 + 296) = sub_24E8039DC(&unk_2861C10C0);
  swift_arrayDestroy();
  *(v0 + 304) = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_updateStreamUUID;
  *(v0 + 312) = sub_24E802CE0(&unk_2861C1120);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 320) = qword_27F252DD0;
  *(v0 + 336) = 1;

  return MEMORY[0x2822009F8](sub_24F039B20, v1, 0);
}

uint64_t sub_24F039B20()
{
  sub_24F83EC44(*(v0 + 312), *(v0 + 192) + *(v0 + 304), (v0 + 336));

  return MEMORY[0x2822009F8](sub_24F039BA8, 0, 0);
}

uint64_t sub_24F039BA8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_24F039C84;
  v5 = v0[34];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v5);
}

uint64_t sub_24F039C84()
{

  return MEMORY[0x2822009F8](sub_24F039D80, 0, 0);
}

uint64_t sub_24F039D80()
{
  v42 = v0;
  v2 = v0[17];
  v1 = v0[18];
  if (v1)
  {
    v3 = qword_27F2113B8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E778);

    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    swift_bridgeObjectRelease_n();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40[0] = v8;
      *v7 = 136315394;
      v41 = v2;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v11 = sub_24E7620D4(updated, v10, v40);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_24F92AE48();
      v14 = sub_24E7620D4(v12, v13, v40);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_24E5DD000, v5, v6, "FeedRefreshNotifier received challenge update with %s %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v0[19] = 0x7954657461647075;
    v0[20] = 0xEA00000000006570;
    sub_24F92C7F8();
    if (*(v1 + 16) && (v15 = sub_24E76D934((v0 + 8)), (v16 & 1) != 0))
    {
      sub_24E643A9C(*(v1 + 56) + 32 * v15, (v0 + 13));
      sub_24E6585F8((v0 + 8));

      if (swift_dynamicCast())
      {
        v17 = v0[37];
        v18 = v0[22];
        if (*(v17 + 16) && (v19 = v0[21], sub_24F92D068(), sub_24F92B218(), v20 = sub_24F92D0B8(), v21 = -1 << *(v17 + 32), v22 = v20 & ~v21, ((*(v17 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) != 0))
        {
          v23 = ~v21;
          v24 = v0[37];
          while (1)
          {
            v25 = (*(v24 + 48) + 16 * v22);
            v26 = *v25 == v19 && v25[1] == v18;
            if (v26 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v24 = v0[37];
            v22 = (v22 + 1) & v23;
            if (((*(v24 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          v30 = v0[30];
          v31 = v0[27];
          v38 = v0[29];
          v39 = v0[28];
          v32 = v0[25];
          v37 = v0[26];
          v33 = v0[24];

          sub_24E74EC40();
          v36 = sub_24F92BEF8();
          v0[6] = sub_24F03BA58;
          v0[7] = v33;
          v0[2] = MEMORY[0x277D85DD0];
          v0[3] = 1107296256;
          v0[4] = sub_24EAF8248;
          v0[5] = &block_descriptor_26_1;
          v34 = _Block_copy(v0 + 2);

          sub_24F927DA8();
          v0[23] = MEMORY[0x277D84F90];
          sub_24E858250();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
          sub_24E602068(&qword_27F222940, &qword_27F222310);
          sub_24F92C6A8();
          MEMORY[0x2530518B0](0, v30, v31, v34);
          _Block_release(v34);

          (*(v37 + 8))(v31, v32);
          (*(v38 + 8))(v30, v39);
        }

        else
        {
LABEL_18:
        }
      }
    }

    else
    {

      sub_24E6585F8((v0 + 8));
    }

    v27 = swift_task_alloc();
    v0[41] = v27;
    *v27 = v0;
    v27[1] = sub_24F039C84;
    v28 = v0[34];

    return MEMORY[0x2822003E8](v0 + 17, 0, 0, v28);
  }

  else
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_24F03A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_24F927D88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_24F927DC8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508);
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F03A558, 0, 0);
}

uint64_t sub_24F03A558()
{
  v1 = sub_24E802CE0(&unk_2861C1148);
  v2 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_gameActivityStreamUUID;
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v3 = qword_27F252DD0;
  *(v0 + 208) = qword_27F252DD0;
  *(v0 + 224) = 1;

  return MEMORY[0x2822009F8](sub_24F03A610, v3, 0);
}

uint64_t sub_24F03A610()
{
  sub_24F83EC44(*(v0 + 192), *(v0 + 88) + *(v0 + 200), (v0 + 224));

  return MEMORY[0x2822009F8](sub_24F03A698, 0, 0);
}

uint64_t sub_24F03A698()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24F03A774;
  v5 = v0[21];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_24F03A774()
{

  return MEMORY[0x2822009F8](sub_24F03A870, 0, 0);
}

uint64_t sub_24F03A870()
{
  v26 = v0;
  v1 = v0[8];
  if (v0[9])
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E850);

    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      v25 = v1;
      updated = UpdateListener.RefreshDataType.rawValue.getter();
      v9 = v8;

      v10 = sub_24E7620D4(updated, v9, &v24);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_24E5DD000, v3, v4, "FeedRefreshNotifier notifying refresh for %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x2530542D0](v6, -1, -1);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    else
    {
    }

    v13 = v0[17];
    v14 = v0[14];
    v22 = v0[16];
    v23 = v0[15];
    v15 = v0[12];
    v21 = v0[13];
    v16 = v0[11];
    sub_24E74EC40();
    v20 = sub_24F92BEF8();
    v0[6] = sub_24F03B7CC;
    v0[7] = v16;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24EAF8248;
    v0[5] = &block_descriptor_105;
    v17 = _Block_copy(v0 + 2);

    sub_24F927DA8();
    v0[10] = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E602068(&qword_27F222940, &qword_27F222310);
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v13, v14, v17);
    _Block_release(v17);

    (*(v21 + 8))(v14, v15);
    (*(v22 + 8))(v13, v23);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_24F03A774;
    v19 = v0[21];

    return MEMORY[0x2822003E8](v0 + 8, 0, 0, v19);
  }

  else
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24F03AC94()
{
  v1 = sub_24F927D88();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v7 = sub_24F92BEF8();
  aBlock[4] = sub_24F03BA58;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_30;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_24F03AF34()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  swift_unknownObjectRelease();
  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24F03B020(uint64_t a1)
{
  v4 = *(sub_24F91F6B8() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F03956C(a1, v8, v9, v1 + v6, v1 + v7);
}

uint64_t sub_24F03B13C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  sub_24E602068(&qword_27F230DD0, &qword_27F230DC0);
  return sub_24F923048();
}

uint64_t sub_24F03B1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v30 = a3;
  v28 = a2;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v34 = *(a3 + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  sub_24E602068(&qword_27F230DC8, &qword_27F230DC0);
  v29 = sub_24F9230C8();
  v34 = v29;
  v25 = *(v8 + 16);
  v25(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = v12 + v9;
  v13 = (v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = *(v8 + 32);
  v15(v14 + v12, v11, v7);
  v16 = v28;
  *(v14 + v13) = v28;
  v25(v11, v26, v7);
  v17 = swift_allocObject();
  v15(v17 + v12, v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237750);
  sub_24E602068(&qword_27F237758, &qword_27F237750);
  v18 = sub_24F9230F8();

  swift_beginAccess();
  *(v16 + 16) = v18;

  v19 = OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshStreamCancellables;
  v20 = v30;
  swift_beginAccess();

  v21 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v20 + v19);
  *(v20 + v19) = 0x8000000000000000;
  sub_24E821C68(v18, v32, v21, isUniquelyReferenced_nonNull_native);

  *(v20 + v19) = v33;
  return swift_endAccess();
}

uint64_t sub_24F03B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);
  sub_24F92B8D8();
  result = swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_24F922F78();
  }

  return result;
}

uint64_t sub_24F03B594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24F92B8B8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24F03B664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F039850(a1, v4, v5, v6);
}

uint64_t sub_24F03B718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F03A36C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F03B7EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F03B894(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F03B520(a1, v1 + v4, v5);
}

uint64_t sub_24F03B93C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F03B9D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0);

  return sub_24F03B594();
}

id static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];
  v10 = &selRef_buttonShapesDidChange;
  v11 = [v8 absoluteDimension_];
  v12 = objc_opt_self();
  v13 = [v12 sizeWithWidthDimension:v9 heightDimension:v11];

  v14 = objc_opt_self();
  v15 = [v14 itemWithLayoutSize_];
  v16 = a3 + a4;
  if (a3 <= COERCE_DOUBLE(1) || a2 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F941C80;
    *(v27 + 32) = v15;
    v28 = v15;
  }

  else
  {
    v35 = a1;
    v17 = [v8 fractionalWidthDimension_];
    v18 = [v8 absoluteDimension_];
    v19 = [v12 &selRef:v17 linkWithBundleIdentifiers:v18 + 6];

    v10 = &selRef_buttonShapesDidChange;
    v20 = [v14 itemWithLayoutSize_];
    v21 = a2 * a4;
    v22 = a2 - 1;
    v16 = v21 + v22 * a3;
    v23 = v20;
    sub_24EE1E704(v23, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F941C80;
    *(inited + 32) = v15;
    v25 = v15;
    v26 = inited;
    a1 = v35;
    sub_24EA0C02C(v26);
  }

  v29 = [v8 v10[275]];
  v30 = [v12 &selRef:a1 linkWithBundleIdentifiers:v29 + 6];

  v31 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108);
  v32 = sub_24F92B588();

  v33 = [v31 verticalGroupWithLayoutSize:v30 subitems:v32];

  return v33;
}

void static ComponentLayoutBuilder.verticalLayoutHorizontalSubgroups(for:withItemHeights:useEstimatedHeights:in:itemSupplementaryProvider:asPartOf:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a4 + *(type metadata accessor for ShelfLayoutContext() + 28));
  v10 = v9[35];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v11 = v9[36];
  v12 = v9[3];
  v13 = v9[42];
  v14 = v9[44];
  v15 = v10;
  v16 = MEMORY[0x277D84F90];
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237760);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_24F93DE60;
    *(v18 + 32) = a2;

    v59 = 0;
    v73 = v16;
    v65 = 1;
    goto LABEL_8;
  }

  v17 = a2[2];

  v18 = sub_24F03CC24(0, v17, v15, v15, a2);

  v73 = v16;
  v65 = *(v18 + 16);
  if (v65)
  {
    v59 = 0;
LABEL_8:
    v19 = v12 - (v13 + v14);
    v71 = objc_opt_self();
    v70 = objc_opt_self();
    v62 = objc_opt_self();
    v60 = a7;
    v61 = objc_opt_self();
    v20 = 0;
    v21 = 0;
    v22 = v9[39];
    v63 = v18;
    v64 = v18 + 32;
    while (1)
    {
      if (v21 >= *(v18 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v66 = v21;
      v23 = *(v64 + 8 * v21);
      v72 = v16;
      v24 = *(v23 + 16);
      if (v24)
      {
        break;
      }

      v26 = 0.0;
      v39 = v16;
      if (!(v16 >> 62))
      {
        goto LABEL_25;
      }

LABEL_36:
      v40 = sub_24F92C738();
      if (!v40)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_26:
      sub_24F92C978();
      if (v40 < 0)
      {
        goto LABEL_47;
      }

      v41 = objc_opt_self();
      v42 = 0;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x253052270](v42, v39);
        }

        else
        {
          v44 = *(v39 + 8 * v42 + 32);
        }

        v45 = v44;
        v46 = [v44 layoutSize];
        v47 = [v46 widthDimension];

        v48 = [v71 absoluteDimension_];
        v49 = [v70 sizeWithWidthDimension:v47 heightDimension:v48];

        v50 = [v45 supplementaryItems];
        if (!v50)
        {
          sub_24E69A5C4(0, &qword_27F2250C8);
          sub_24F92B5A8();
          v50 = sub_24F92B588();
        }

        ++v42;
        v43 = [v41 itemWithLayoutSize:v49 supplementaryItems:v50];

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      while (v40 != v42);

      a7 = v60;
      v16 = MEMORY[0x277D84F90];
LABEL_38:
      v51 = [v71 absoluteDimension_];
      v52 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v52 = &selRef_absoluteDimension_;
      }

      v53 = [v71 *v52];
      v54 = [v70 sizeWithWidthDimension:v51 heightDimension:v53];

      sub_24E69A5C4(0, &qword_27F225108);
      v55 = sub_24F92B588();

      v56 = [v62 horizontalGroupWithLayoutSize:v54 subitems:v55];

      v57 = [v61 fixedSpacing_];
      [v56 setInterItemSpacing_];

      v58 = v56;
      MEMORY[0x253050F00]();
      v18 = v63;
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v21 = v66 + 1;
      sub_24F92B638();

      if (v66 + 1 == v65)
      {
        goto LABEL_43;
      }
    }

    v25 = *(a1 + 16);

    v26 = 0.0;
    v27 = 32;
    do
    {
      v28 = *(v23 + v27);
      v29 = [v71 absoluteDimension_];
      v30 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v30 = &selRef_absoluteDimension_;
      }

      v31 = [v71 *v30];
      v32 = [v70 sizeWithWidthDimension:v29 heightDimension:v31];

      if (v20 < 0 || v20 >= v25)
      {
        v37 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v34 = *(type metadata accessor for ItemLayoutContext() - 8);
        (*(a6 + 8))(a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, a7, ObjectType);
        sub_24E69A5C4(0, &qword_27F2250C8);
        v35 = v32;
        v36 = sub_24F92B588();

        v37 = [objc_opt_self() itemWithLayoutSize:v35 supplementaryItems:v36];
      }

      v38 = v37;
      MEMORY[0x253050F00]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_46;
      }

      ++v20;
      if (v26 <= v28)
      {
        v26 = v28;
      }

      v27 += 8;
      --v24;
    }

    while (v24);
    v39 = v72;

    v16 = MEMORY[0x277D84F90];
    if (v72 >> 62)
    {
      goto LABEL_36;
    }

LABEL_25:
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_43:
}

size_t sub_24F03C708(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v43 = MEMORY[0x277D84F90];
  result = sub_24F458C40(0, v9, 0);
  v42 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_71;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_72;
      }

      if (v8 < 0)
      {
        goto LABEL_73;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237770);
            v23 = *(type metadata accessor for ItemLayoutContext() - 8);
            v37 = (*(v23 + 80) + 32) & ~*(v23 + 80);
            v39 = *(v23 + 72);
            v20 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v20);
            if (!v39)
            {
              goto LABEL_77;
            }

            if (result - v37 == 0x8000000000000000 && v39 == -1)
            {
              goto LABEL_79;
            }

            v20[2] = v19;
            v20[3] = 2 * ((result - v37) / v39);
          }

          type metadata accessor for ItemLayoutContext();
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_24F458C40((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v43 + 16) = v22 + 1;
      *(v43 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v42;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_39:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v43;
    }

    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a5[2];
      if (v29 < v28)
      {
        v28 = a5[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_75;
      }

      if (v17 < 0)
      {
        goto LABEL_76;
      }

      if (v29 == v30)
      {

        v31 = a5;
      }

      else
      {
        v31 = v26;
        if (v28 != v17)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237770);
            v35 = *(type metadata accessor for ItemLayoutContext() - 8);
            v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v40 = *(v35 + 72);
            v31 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v31);
            if (!v40)
            {
              goto LABEL_78;
            }

            if (result - v38 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_80;
            }

            v31[2] = v30;
            v31[3] = 2 * ((result - v38) / v40);
          }

          type metadata accessor for ItemLayoutContext();
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v33 = *(v43 + 16);
      v32 = *(v43 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_24F458C40((v32 > 1), v33 + 1, 1);
        v15 = a4;
      }

      *(v43 + 16) = v33 + 1;
      *(v43 + 8 * v33 + 32) = v31;
      v34 = v27 <= v42;
      if (a3 > 0)
      {
        v34 = v27 >= v42;
      }

      v17 = v27;
      if (v34)
      {
        return v43;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_24F03CC24(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v39 = MEMORY[0x277D84F90];
  result = sub_24F458C80(0, v9, 0);
  __n = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_64;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_65;
      }

      if (v8 < 0)
      {
        goto LABEL_66;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 < 1)
          {
            v24 = 8 * v19;
            v20 = MEMORY[0x277D84F90];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = 8 * v19;
            v25 = v23 - 32;
            if (v23 < 32)
            {
              v25 = v23 - 25;
            }

            v20[2] = v19;
            v20[3] = 2 * (v25 >> 3);
          }

          result = memcpy(v20 + 4, &a5[v8 + 4], v24);
          v15 = a4;
        }
      }

      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_24F458C80((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v39 + 16) = v22 + 1;
      *(v39 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = __n;
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_37:
    v26 = v17 <= v7;
    if (a3 > 0)
    {
      v26 = v17 >= v7;
    }

    if (v26)
    {
      return v39;
    }

    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a5[2];
      if (v29 < v28)
      {
        v28 = a5[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_68;
      }

      if (v17 < 0)
      {
        goto LABEL_69;
      }

      if (v29 == v30)
      {

        v31 = a5;
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
        if (v28 != v17)
        {
          if (v30 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0);
            v31 = swift_allocObject();
            v35 = _swift_stdlib_malloc_size(v31);
            v36 = v35 - 32;
            if (v35 < 32)
            {
              v36 = v35 - 25;
            }

            v31[2] = v30;
            v31[3] = 2 * (v36 >> 3);
          }

          result = memcpy(v31 + 4, &a5[v17 + 4], 8 * v30);
          v15 = a4;
        }
      }

      v33 = *(v39 + 16);
      v32 = *(v39 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_24F458C80((v32 > 1), v33 + 1, 1);
        v15 = a4;
      }

      *(v39 + 16) = v33 + 1;
      *(v39 + 8 * v33 + 32) = v31;
      v34 = v27 <= __n;
      if (a3 > 0)
      {
        v34 = v27 >= __n;
      }

      v17 = v27;
      if (v34)
      {
        return v39;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

id sub_24F03CFA4(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v83 = a6;
  v84 = a5;
  v87 = a4;
  v13 = type metadata accessor for ItemLayoutContext();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  v17 = v89;
  if (v89 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v89;
  }

  v19 = a3 + *(type metadata accessor for ShelfLayoutContext() + 28);
  v20 = *(v19 + 288);
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension_];
  v23 = &selRef_estimatedDimension_;
  v80 = a2;
  if ((a2 & 1) == 0)
  {
    v23 = &selRef_absoluteDimension_;
  }

  v24 = *v23;
  v79 = v21;
  v25 = [v21 v24];
  v78 = objc_opt_self();
  v85 = [v78 sizeWithWidthDimension:v22 heightDimension:v25];

  if (__OFSUB__(v18, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_24F92B5E8();
LABEL_14:
    sub_24F92B638();

    goto LABEL_30;
  }

  v26 = v18 * a7;
  a7 = *(v19 + 320);
  v8 = v26 + a7 * (v18 - 1);
  v89 = MEMORY[0x277D84F90];
  v7 = &selRef_buttonShapesDidChange;
  a2 = &selRef_buttonShapesDidChange;
  if (!v16)
  {
    v28 = [objc_opt_self() itemWithLayoutSize_];
    sub_24EE1E704(v28, v18);

    v29 = v79;
    v30 = [v79 absoluteDimension_];
    v31 = &selRef_estimatedDimension_;
    if ((v80 & 1) == 0)
    {
      v31 = &selRef_absoluteDimension_;
    }

    v32 = [v29 *v31];
    v15 = [v78 sizeWithWidthDimension:v30 heightDimension:v32];

    v33 = objc_opt_self();
    sub_24E69A5C4(0, &qword_27F225108);
    v34 = sub_24F92B588();

    v35 = [v33 verticalGroupWithLayoutSize:v15 subitems:v34];

    v36 = [objc_opt_self() fixedSpacing_];
    [v35 setInterItemSpacing_];

    v16 = v35;
    MEMORY[0x253050F00]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (!v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237768);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24F93DE60;
    *(v27 + 32) = a1;

    v71 = 0;
    v77 = 1;
LABEL_16:
    v76 = objc_opt_self();
    v37 = objc_opt_self();
    v16 = 0;
    v74 = v27 + 32;
    v75 = v37;
    v86 = (v84 + 8);
    v38 = MEMORY[0x277D84F90];
    v72 = v27;
    while (v16 < *(v27 + 16))
    {
      v82 = v16;
      v39 = *(v74 + 8 * v16);
      v88 = v38;
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = objc_opt_self();
        ObjectType = swift_getObjectType();
        v43 = *v86;
        v44 = v73;
        v45 = v39 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        v81 = v39;

        v46 = *(v44 + 72);
        do
        {
          sub_24E8E7F4C(v45, v15);
          v43(v15, v83, ObjectType, v84);
          sub_24E8E7FB0(v15);
          sub_24E69A5C4(0, &qword_27F2250C8);
          v47 = v85;
          v48 = sub_24F92B588();

          v49 = [v41 itemWithLayoutSize:v47 supplementaryItems:v48];

          v50 = v49;
          MEMORY[0x253050F00]();
          if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();

          v45 += v46;
          --v40;
        }

        while (v40);

        a2 = &selRef_buttonShapesDidChange;
        v7 = &selRef_buttonShapesDidChange;
        v38 = MEMORY[0x277D84F90];
        v27 = v72;
      }

      v51 = v79;
      v52 = [v79 absoluteDimension_];
      v53 = &selRef_estimatedDimension_;
      if ((v80 & 1) == 0)
      {
        v53 = &selRef_absoluteDimension_;
      }

      v54 = [v51 *v53];
      v55 = [v78 sizeWithWidthDimension:v52 heightDimension:v54];

      sub_24E69A5C4(0, &qword_27F225108);
      v56 = sub_24F92B588();

      v57 = [v76 verticalGroupWithLayoutSize:v55 subitems:v56];

      v58 = [v75 v7[284]];
      [v57 a2[285]];

      v59 = v57;
      MEMORY[0x253050F00]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v16 = v82 + 1;
      sub_24F92B638();

      if (v16 == v77)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v27 = sub_24F03C708(0, v16, v18, v18, a1);
  v71 = 0;

  v77 = *(v27 + 16);
  if (v77)
  {
    goto LABEL_16;
  }

LABEL_29:

LABEL_30:
  v60 = v79;
  v61 = [v79 absoluteDimension_];
  v62 = &selRef_estimatedDimension_;
  if ((v80 & 1) == 0)
  {
    v62 = &selRef_absoluteDimension_;
  }

  v63 = [v60 *v62];
  v64 = [v78 sizeWithWidthDimension:v61 heightDimension:v63];

  v65 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108);
  v66 = sub_24F92B588();

  v67 = [v65 horizontalGroupWithLayoutSize:v64 subitems:v66];

  v68 = [objc_opt_self() v7[284]];
  [v67 a2[285]];

  return v67;
}

id sub_24F03D8CC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (a4 + *(type metadata accessor for ShelfLayoutContext() + 28));
  v12 = v11[35];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v7 = v11[36];
  v13 = v11[3];
  v14 = v11[42];
  v15 = v12;
  v16 = v11[44];
  v17 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v80 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237760);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = a2;

    v79 = 0;
    v95 = v17;
    v85 = 1;
    goto LABEL_8;
  }

  v18 = a2[2];

  v19 = sub_24F03CC24(0, v18, v15, v15, a2);
  v79 = 0;

  v95 = v17;
  v85 = *(v19 + 16);
  if (v85)
  {
    v80 = v11;
LABEL_8:
    v20 = v13 - (v14 + v16);
    v93 = objc_opt_self();
    v92 = objc_opt_self();
    v82 = objc_opt_self();
    v81 = objc_opt_self();
    v21 = 0;
    v22 = 0;
    v23 = v80[39];
    v84 = v19 + 32;
    v8 = 0.0;
    v24 = &selRef_buttonShapesDidChange;
    v25 = MEMORY[0x277D84F90];
    v83 = v19;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v86 = v22;
      v26 = *(v84 + 8 * v22);
      v94 = v25;
      v27 = *(v26 + 16);
      if (v27)
      {
        break;
      }

      v29 = 0.0;
      v41 = v25;
      if (!(v25 >> 62))
      {
        goto LABEL_25;
      }

LABEL_38:
      v57 = v41;
      v42 = sub_24F92C738();
      v41 = v57;
      if (!v42)
      {
LABEL_39:

        goto LABEL_40;
      }

LABEL_26:
      v43 = v41;
      sub_24F92C978();
      if (v42 < 0)
      {
        goto LABEL_59;
      }

      v44 = objc_opt_self();
      v45 = 0;
      v46 = v43;
      v90 = v43 & 0xC000000000000001;
      v91 = v44;
      v47 = v43;
      do
      {
        if (v90)
        {
          v49 = MEMORY[0x253052270](v45, v46);
        }

        else
        {
          v49 = *(v46 + 8 * v45 + 32);
        }

        v50 = v49;
        v51 = [v49 v24[279]];
        v52 = [v51 widthDimension];

        v53 = &selRef_absoluteDimension_;
        if (a3)
        {
          v53 = &selRef_estimatedDimension_;
        }

        v54 = [v93 *v53];
        v55 = [v92 sizeWithWidthDimension:v52 heightDimension:v54];

        v56 = [v50 supplementaryItems];
        if (!v56)
        {
          sub_24E69A5C4(0, &qword_27F2250C8);
          sub_24F92B5A8();
          v56 = sub_24F92B588();
          v24 = &selRef_buttonShapesDidChange;
        }

        ++v45;
        v48 = [v91 itemWithLayoutSize:v55 supplementaryItems:v56];

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v46 = v47;
      }

      while (v42 != v45);

      v25 = MEMORY[0x277D84F90];
LABEL_40:
      v58 = [v93 absoluteDimension_];
      v59 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v59 = &selRef_absoluteDimension_;
      }

      v11 = [v93 *v59];
      v60 = [v92 sizeWithWidthDimension:v58 heightDimension:v11];

      sub_24E69A5C4(0, &qword_27F225108);
      v61 = sub_24F92B588();

      v62 = [v82 horizontalGroupWithLayoutSize:v60 subitems:v61];

      v63 = [v81 fixedSpacing_];
      [v62 setInterItemSpacing_];

      v64 = v62;
      MEMORY[0x253050F00]();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v22 = v86 + 1;
      sub_24F92B638();

      v8 = v8 + v29;
      v19 = v83;
      v24 = &selRef_buttonShapesDidChange;
      if (v86 + 1 == v85)
      {
        v65 = v95;

        v11 = v80;
        goto LABEL_47;
      }
    }

    v28 = *(a1 + 16);

    v29 = 0.0;
    v30 = 32;
    do
    {
      v31 = *(v26 + v30);
      v32 = [v93 absoluteDimension_];
      v33 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v33 = &selRef_absoluteDimension_;
      }

      v34 = [v93 *v33];
      v35 = [v92 sizeWithWidthDimension:v32 heightDimension:v34];

      if (v21 < 0 || v21 >= v28)
      {
        v39 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v37 = *(type metadata accessor for ItemLayoutContext() - 8);
        (*(a6 + 8))(a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v21, a7, ObjectType);
        sub_24E69A5C4(0, &qword_27F2250C8);
        v11 = v35;
        v38 = sub_24F92B588();

        v39 = [objc_opt_self() itemWithLayoutSize:v11 supplementaryItems:v38];
      }

      v40 = v39;
      MEMORY[0x253050F00]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24F92B5E8();
      }

      sub_24F92B638();

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_58;
      }

      ++v21;
      if (v29 <= v31)
      {
        v29 = v31;
      }

      v30 += 8;
      --v27;
    }

    while (v27);

    v41 = v94;
    v25 = MEMORY[0x277D84F90];
    v24 = &selRef_buttonShapesDidChange;
    if (v94 >> 62)
    {
      goto LABEL_38;
    }

LABEL_25:
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v65 = MEMORY[0x277D84F90];
  v8 = 0.0;
LABEL_47:
  v7 = v11[40];
  v11 = (v65 >> 62);
  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_63:
  v66 = sub_24F92C738();
LABEL_49:
  v67 = v66 + -1.0;
  if (v67 < 0.0)
  {
    v67 = 0.0;
  }

  v68 = v8 + v7 * v67;
  v69 = objc_opt_self();
  v70 = [v69 fractionalWidthDimension_];
  v71 = &selRef_absoluteDimension_;
  if (a3)
  {
    v71 = &selRef_estimatedDimension_;
  }

  v72 = [v69 *v71];
  v73 = [objc_opt_self() sizeWithWidthDimension:v70 heightDimension:v72];

  if (v11)
  {
    sub_24E69A5C4(0, &qword_27F225108);

    sub_24F92CA98();
  }

  else
  {

    sub_24F92CEE8();
    sub_24E69A5C4(0, &qword_27F225108);
  }

  v74 = objc_opt_self();
  sub_24E69A5C4(0, &qword_27F225108);
  v75 = sub_24F92B588();

  v76 = [v74 verticalGroupWithLayoutSize:v73 subitems:v75];

  v77 = [objc_opt_self() fixedSpacing_];
  [v76 setInterItemSpacing_];

  return v76;
}

uint64_t GenericAccountPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GenericAccountPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GenericAccountPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v29 = sub_24F928818();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F9285B8();
  v4 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v40 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v10 + 8);
  v37 = v9;
  v18 = v9;
  v19 = v39;
  v34 = v10 + 8;
  v35 = v17;
  v17(v13, v18);
  v19[2] = v14;
  v19[3] = v16;
  sub_24F928398();
  v38 = v4;
  v20 = *(v4 + 16);
  v21 = v32;
  v22 = v30;
  v20(v8, v32, v30);
  type metadata accessor for AccountSection();
  sub_24F03E948(&qword_27F237778, type metadata accessor for AccountSection);
  v28 = v8;
  v19[4] = sub_24F92B698();
  sub_24F928398();
  v20(v31, v21, v22);
  v23 = v33;
  v24 = v36;
  sub_24F928788();
  if (v24)
  {
    (*(v38 + 8))(v21, v22);
    v35(v40, v37);

    type metadata accessor for GenericAccountPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v27 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics, v23, v29);
    type metadata accessor for PageRenderMetricsEvent();
    v25 = v40;
    sub_24F928398();
    v20(v28, v21, v22);
    sub_24F03E948(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    (*(v38 + 8))(v21, v22);
    v35(v25, v37);
    v19 = v39;
    *(v39 + OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageRenderEvent) = v41;
  }

  return v19;
}

uint64_t type metadata accessor for GenericAccountPage()
{
  result = qword_27F237780;
  if (!qword_27F237780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F03E948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenericAccountPage.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenericAccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenericAccountPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GenericAccountPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F03EB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GenericAccountPage();
  v7 = swift_allocObject();
  result = GenericAccountPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F03EC0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18GenericAccountPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F03EC90()
{
  result = sub_24F928818();
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

uint64_t SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v118 = a2;
  v120 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377B8);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = v98 - v9;
  v112 = sub_24F92BEE8();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F92BE88();
  MEMORY[0x28223BE20](v107);
  v109 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  MEMORY[0x28223BE20](v12 - 8);
  v108 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v98 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v98 - v18;
  v20 = sub_24F9288E8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v5 + qword_27F39D6D0);
  *v24 = 0;
  v24[1] = 0;
  v25 = v5 + qword_27F39D6D8;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v5 + qword_27F39D6E0) = 0;
  v26 = qword_27F2377C0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377C8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v115 = v27;
  v114 = v29;
  v113 = v28 + 56;
  (v29)(v5 + v26, 1, 1);
  *(v5 + qword_27F2377D0) = 0;
  v119 = a4;
  v117 = v16;
  if (a3)
  {
    type metadata accessor for ASKBagContract();
    sub_24F928FD8();
    sub_24F92A758();
    v30 = v124[0];
    v102 = "";
    v31 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v32 = *(v21 + 104);
    LODWORD(v104) = *MEMORY[0x277D21C38];
    v103 = v32;
    v32(v23);
    v100 = v31;
    sub_24F92A368();
    v33 = *(v21 + 8);
    v98[1] = v21 + 8;
    v101 = v33;
    v33(v23, v20);
    sub_24F92A408();
    v99 = v106[1];
    v99(v19, v17);
    v34 = v124[0];
    type metadata accessor for FastImpressionsTracker();
    v35 = swift_allocObject();
    v35[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v105 = v30;
    swift_allocObject();
    v35[5] = sub_24F929E98();
    swift_allocObject();
    v35[6] = sub_24F929E98();
    v106 = v35;
    v35[4] = v34;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v103(v23, v104, v20);
    sub_24F92A368();
    v101(v23, v20);
    sub_24F92A408();
    v99(v19, v17);
    v36 = v124[0];
    type metadata accessor for FastImpressionFlushGate();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v36;
    *(v5 + qword_27F2377D8) = v37;
    v38 = sub_24F91F4A8();
    (*(*(v38 - 8) + 56))(v117, 1, 1, v38);
    sub_24E615E00(v119, v124);
    v104 = sub_24ECB2128(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
    *(v5 + qword_27F39CC00) = 0;
    v39 = MEMORY[0x277D84F90];
    *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v5 + qword_27F2326C8) = 0;
    v40 = *(*v5 + 640);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0);
    v42 = *(*(v41 - 8) + 56);
    v42(v5 + v40, 1, 1, v41);
    v43 = *(*v5 + 648);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
    (*(*(v44 - 8) + 56))(v5 + v43, 1, 1, v44);
    v45 = *(*v5 + 656);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8);
    (*(*(v46 - 8) + 56))(v5 + v45, 1, 1, v46);
    v42(v5 + *(*v5 + 664), 1, 1, v41);
    v47 = *(*v5 + 672);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
    (*(*(v48 - 8) + 56))(v5 + v47, 1, 1, v48);
    v49 = *(*v5 + 680);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
    (*(*(v50 - 8) + 56))(v5 + v49, 1, 1, v50);
    v51 = *(*v5 + 688);
    sub_24E74EC40();
    v52 = v120;

    sub_24F927DA8();
    v122 = v39;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
    sub_24F92C6A8();
    (*(v110 + 104))(v111, *MEMORY[0x277D85260], v112);
    *(v5 + v51) = sub_24F92BF38();
    sub_24EBD3128(v5 + *(*v5 + 696));
    v53 = (v5 + *(*v5 + 704));
    *v53 = 0u;
    v53[1] = 0u;
    *(v53 + 25) = 0u;
    v54 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
    swift_allocObject();
    *(v5 + v54) = sub_24F92ADA8();
    v55 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
    swift_allocObject();
    *(v5 + v55) = sub_24F92ADA8();
    v56 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    swift_allocObject();
    *(v5 + v56) = sub_24F92ADA8();
    *(v5 + *(*v5 + 736)) = 0;
    v57 = (v5 + *(*v5 + 752));
    *v57 = 0;
    v57[1] = 0;
    v58 = v117;
    sub_24E60169C(v117, v5 + qword_27F39CBF8, &qword_27F228530);
    sub_24E60169C(v124, v5 + *(*v5 + 744), &qword_27F229490);
    v59 = type metadata accessor for InlineUnifiedMessagePresenter();
    v121.receiver = objc_allocWithZone(v59);
    v121.super_class = v59;
    *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v121, sel_init);

    v60 = v106;

    v61 = sub_24EBBA180(v52, v60, v104, 0);
    v62 = *(*v61 + 1112);

    *(v61 + qword_27F39CC00) = v62(v118);

    sub_24EBC5778(0);

    sub_24E601704(v124, &qword_27F229490);
    v63 = v58;
  }

  else
  {
    *(v5 + qword_27F2377D8) = 0;
    v64 = sub_24F91F4A8();
    (*(*(v64 - 8) + 56))(v16, 1, 1, v64);
    sub_24E615E00(a4, v124);
    *(v5 + qword_27F39CC00) = 0;
    v65 = MEMORY[0x277D84F90];
    *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
    *(v5 + qword_27F2326C8) = 0;
    v66 = *(*v5 + 640);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC0);
    v68 = *(*(v67 - 8) + 56);
    v68(v5 + v66, 1, 1, v67);
    v69 = *(*v5 + 648);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
    (*(*(v70 - 8) + 56))(v5 + v69, 1, 1, v70);
    v71 = *(*v5 + 656);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADB8);
    (*(*(v72 - 8) + 56))(v5 + v71, 1, 1, v72);
    v68(v5 + *(*v5 + 664), 1, 1, v67);
    v73 = *(*v5 + 672);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
    (*(*(v74 - 8) + 56))(v5 + v73, 1, 1, v74);
    v75 = *(*v5 + 680);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
    (*(*(v76 - 8) + 56))(v5 + v75, 1, 1, v76);
    v77 = *(*v5 + 688);
    sub_24E74EC40();

    v78 = v118;

    sub_24F927DA8();
    v122 = v65;
    sub_24ECB2128(&qword_27F2394E0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
    sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
    sub_24F92C6A8();
    (*(v110 + 104))(v111, *MEMORY[0x277D85260], v112);
    *(v5 + v77) = sub_24F92BF38();
    sub_24EBD3128(v5 + *(*v5 + 696));
    v79 = (v5 + *(*v5 + 704));
    *v79 = 0u;
    v79[1] = 0u;
    *(v79 + 25) = 0u;
    v80 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
    swift_allocObject();
    *(v5 + v80) = sub_24F92ADA8();
    v81 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
    swift_allocObject();
    *(v5 + v81) = sub_24F92ADA8();
    v82 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    swift_allocObject();
    *(v5 + v82) = sub_24F92ADA8();
    *(v5 + *(*v5 + 736)) = 0;
    v83 = (v5 + *(*v5 + 752));
    *v83 = 0;
    v83[1] = 0;
    v84 = v117;
    sub_24E60169C(v117, v5 + qword_27F39CBF8, &qword_27F228530);
    sub_24E60169C(v124, v5 + *(*v5 + 744), &qword_27F229490);
    v85 = type metadata accessor for InlineUnifiedMessagePresenter();
    v123.receiver = objc_allocWithZone(v85);
    v123.super_class = v85;
    *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v123, sel_init);

    v61 = sub_24EBBA180(v120, 0, 0, 0);
    v86 = *(*v61 + 1112);

    *(v61 + qword_27F39CC00) = v86(v78);

    sub_24EBC5778(0);

    sub_24E601704(v124, &qword_27F229490);
    v63 = v84;
  }

  sub_24E601704(v63, &qword_27F228530);
  type metadata accessor for FastImpressionsTracker();
  v87 = swift_dynamicCastClass();
  if (v87)
  {
    v88 = v87;
    swift_beginAccess();
    *(v88 + 24) = &protocol witness table for SearchFocusDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v89 = *(v61 + qword_27F2377D8);
    if (v89)
    {
      v90 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v91 = *(v89 + 32);
      *(v89 + 32) = sub_24F040704;
      *(v89 + 40) = v90;

      sub_24E824448(v91);
    }
  }

  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928F28();
  v92 = v124[0];
  v93 = sub_24E74EC40();
  v94 = sub_24F92BEF8();
  v124[3] = v93;
  v124[4] = MEMORY[0x277D225C0];
  v124[0] = v94;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBD0);
  sub_24E602068(&qword_27F2377E0, &unk_27F22EBD0);
  v95 = v116;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v119);

  __swift_destroy_boxed_opaque_existential_1(v124);
  v114(v95, 0, 1, v115);
  v96 = qword_27F2377C0;
  swift_beginAccess();
  sub_24F040694(v95, v61 + v96);
  swift_endAccess();
  return v61;
}

uint64_t sub_24F040560()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F040598()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9287F8();
    v2 = __swift_project_value_buffer(v1, qword_27F2230A0);
    sub_24ED480E4(v2);
  }

  return result;
}

uint64_t sub_24F040634()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F04070C();
  }

  return result;
}

uint64_t sub_24F040694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2377B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F04070C()
{
  if (qword_27F2105B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  v6[3] = MEMORY[0x277D837D0];
  v6[0] = 0xD000000000000018;
  v6[1] = 0x800000024FA690E0;
  sub_24F928438();
  sub_24E601704(v6, &qword_27F2129B0);
  sub_24F92A588();

  if (*(v0 + qword_27F39CC00))
  {
    type metadata accessor for SearchFocusDiffablePageContentPresenter();
    result = swift_dynamicCastClass();
    if (result)
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24F93DE60;
      v5 = qword_27F210E88;

      if (v5 != -1)
      {
        swift_once();
      }

      sub_24E65864C(&unk_27F237790, v4 + 32);
      sub_24F249578(v4, sub_24ED93AC0, 0, v3);
    }
  }

  return result;
}

uint64_t SearchFocusDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39D6D0);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchFocusDiffablePagePresenter.maxShelfRowCount.getter()
{
  v1 = v0 + qword_27F39D6D8;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchFocusDiffablePagePresenter.prefersSmallShelfTitles.getter()
{
  v1 = qword_27F39D6E0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F040A5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = qword_27F2377D0;
  v13 = *(v1 + qword_27F2377D0);
  v14 = a1;
  if (!a1)
  {

    v14 = v13;
  }

  *(v1 + v12) = v14;

  v60 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, v11, &qword_27F228530);
  v15 = a1;
  v16 = v11;
  if (!a1)
  {
  }

  v63 = v15;
  swift_beginAccess();
  v17 = v1[3];
  swift_beginAccess();
  v18 = v1[4];
  type metadata accessor for SearchFocusDiffablePageContentPresenter();
  v19 = swift_allocObject();
  sub_24E60169C(v16, v8, &qword_27F228530);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v16;
  v56 = v16;
  v23 = swift_allocObject();
  sub_24E911D90(v8, v23 + v20);
  v24 = v60;
  *(v23 + v21) = v60;
  *(v23 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v18;
  sub_24E60169C(v22, v66, &qword_27F228530);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_24F041928;
  *(v26 + 24) = v24;
  v61 = v26;
  *(v19 + qword_27F22F198) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v19 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v28 = qword_27F39C780;
  v65 = v17;

  swift_retain_n();
  v64 = v18;
  swift_retain_n();

  *(v19 + v28) = sub_24E60986C(v27);
  v29 = (v19 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v19 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v59 = v30;
  v31 = (v19 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v19 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v19 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v57 = v33;
  v34 = (v19 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v19 + qword_27F39C790) = 0;
  *(v19 + qword_27F22F1D0) = 0;
  *(v19 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v19 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADC8);
  swift_allocObject();
  *(v19 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v19 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ADE0);
  swift_allocObject();
  *(v19 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v19 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v19 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v41 = sub_24F92ADA8();

  v62 = v25;

  sub_24E601704(v56, &qword_27F228530);
  *(v19 + v40) = v41;
  v42 = qword_27F22F1E0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v44 = *(*(v43 - 8) + 56);
  v44(v19 + v42, 1, 1, v43);
  v44(v19 + qword_27F22F1E8, 1, 1, v43);
  *(v19 + 16) = v24;
  sub_24E911D90(v66, v19 + qword_27F39C7D0);
  *v29 = sub_24F04182C;
  v29[1] = v23;
  v45 = v63;
  *v31 = 0;
  v31[1] = 0;
  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v47 = sub_24E965688;
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v49 = v58;
  v48 = v59;
  *v59 = v47;
  v48[1] = v46;
  v50 = v61;
  v51 = v62;
  *v49 = sub_24F041920;
  v49[1] = v51;
  v52 = v57;
  *v57 = sub_24ECB25B4;
  v52[1] = v50;
  v53 = v64;
  *(v19 + qword_27F22F1F0) = v65;
  *(v19 + qword_27F39C7D8) = v53;
  return v19;
}

uint64_t sub_24F0410F4(uint64_t a1, char a2)
{
  v3 = a1;
  sub_24F2F665C(a1, a2);
  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_maxShelfRowCount + 8);
  v6 = v2 + qword_27F39D6D8;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  LOBYTE(v3) = *(v3 + OBJC_IVAR____TtC12GameStoreKit15SearchFocusPage_prefersSmallShelfTitles);
  v7 = qword_27F39D6E0;
  result = swift_beginAccess();
  *(v2 + v7) = v3;
  return result;
}

Swift::Void __swiftcall SearchFocusDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_27F2377D8);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_24ECB2170;
      v9[5] = v4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_24ECAEFC8;
      v9[3] = &block_descriptor_106;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F04139C()
{

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8);
}

uint64_t SearchFocusDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF640();

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8);

  return v0;
}

uint64_t SearchFocusDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_24EBBF640();

  sub_24E601704(v0 + qword_27F2377C0, &qword_27F2377B8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchFocusDiffablePagePresenter()
{
  result = qword_27F2377E8;
  if (!qword_27F2377E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0415A8()
{
  sub_24F04168C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24F04168C()
{
  if (!qword_27F2377F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2377C8);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2377F8);
    }
  }
}

uint64_t sub_24F0416F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F04182C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F1CD62C(a1, v4);
}

uint64_t sub_24F0418E0()
{

  return swift_deallocObject();
}

uint64_t sub_24F041930()
{

  return swift_deallocObject();
}

uint64_t sub_24F041968()
{

  return swift_deallocObject();
}

id sub_24F0419B4()
{
  sub_24F925898();
  sub_24F925958();
  v0 = sub_24F9259A8();

  v1 = sub_24F9259E8();
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  v4 = sub_24F926BF8();
  v5 = [v2 secondaryLabelColor];
  v6 = sub_24F926BF8();
  xmmword_27F237800 = xmmword_24F9C0600;
  *algn_27F237810 = xmmword_24F9C0610;
  xmmword_27F237820 = xmmword_24F9C0620;
  unk_27F237830 = vdupq_n_s64(0x4063C00000000000uLL);
  xmmword_27F237840 = vdupq_n_s64(0x4044000000000000uLL);
  qword_27F237850 = 0x4030000000000000;
  unk_27F237858 = v0;
  qword_27F237860 = v1;
  unk_27F237868 = v4;
  qword_27F237870 = v6;
  sub_24F925998();
  sub_24F925918();
  v7 = sub_24F9259A8();

  qword_27F237878 = v7;
  qword_27F237880 = sub_24F925898();
  unk_27F237888 = xmmword_24F9C0630;
  unk_27F237898 = xmmword_24F9C0640;
  unk_27F2378A8 = xmmword_24F9A8940;
  qword_27F2378B8 = 0x4034000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 32) = sub_24F9273C8();
  *(v8 + 40) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 48) = sub_24F9273C8();
  *(v8 + 56) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 64) = sub_24F9273C8();
  *(v8 + 72) = v11;
  qword_27F2378C0 = sub_24F9273D8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93FC20;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 32) = sub_24F9273C8();
  *(v12 + 40) = v13;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 48) = sub_24F9273C8();
  *(v12 + 56) = v14;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 64) = sub_24F9273C8();
  *(v12 + 72) = v15;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 80) = sub_24F9273C8();
  *(v12 + 88) = v16;
  qword_27F2378C8 = sub_24F9273D8();
  if (qword_27F210438 != -1)
  {
    swift_once();
  }

  v17 = qword_27F22BEB8;
  qword_27F2378D0 = sub_24F926BF8();
  if (qword_27F210440 != -1)
  {
    swift_once();
  }

  v18 = qword_27F22BEC0;
  qword_27F2378D8 = sub_24F926BF8();
  unk_27F2378E0 = 0x4024000000000000;
  dword_27F2378E8 = sub_24F9251C8();
  *&algn_27F2378EC[4] = xmmword_24F9C0650;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  v20 = [v2 whiteColor];
  v21 = [v20 colorWithAlphaComponent_];

  *(v19 + 32) = sub_24F926BF8();
  v22 = [v2 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  *(v19 + 40) = sub_24F926BF8();
  qword_27F237900 = v19;
  xmmword_27F237908 = xmmword_24F9C0660;
  qword_27F237918 = 0x4044000000000000;
  dword_27F237920 = sub_24F9251C8();
  qword_27F237928 = sub_24F925898();
  qword_27F237930 = sub_24F925898();
  xmmword_27F237938 = xmmword_24F9C0670;
  unk_27F237948 = xmmword_24F9C0680;
  v24 = [v2 secondarySystemBackgroundColor];
  qword_27F237958 = sub_24F926BF8();
  v25 = [v2 tertiarySystemBackgroundColor];
  qword_27F237960 = sub_24F926BF8();
  unk_27F237968 = 0x4045000000000000;
  result = [v2 systemGray2Color];
  qword_27F237970 = result;
  return result;
}