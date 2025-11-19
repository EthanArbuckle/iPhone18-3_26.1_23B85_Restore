uint64_t type metadata accessor for TabChangeAction()
{
  result = qword_27F22B808;
  if (!qword_27F22B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AdProcessingPipelineProxy.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_24EC10EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_24EC10F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + 16))
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    swift_unknownObjectRetain();
    v13 = v12(a3, a4, ObjectType, v10);
    if (v13)
    {
      v14 = v13[15];
      v15 = v13[16];
      __swift_project_boxed_opaque_existential_1(v13 + 12, v14);
      v16 = (*(v15 + 8))(a1, a2, a5 & 1, v14, v15);
      swift_unknownObjectRelease();

      return v16;
    }

    else
    {
      sub_24EC11078();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_24EC11078();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_24EC11078()
{
  result = qword_27F22B818;
  if (!qword_27F22B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B818);
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.JSAdvertProcessingPipelineProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t AdProcessingPipelineProxy.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_24EC111B4()
{
  result = qword_27F22B820;
  if (!qword_27F22B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B820);
  }

  return result;
}

id sub_24EC112D4(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EC113B4()
{
  result = qword_27F22B828;
  if (!qword_27F22B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B828);
  }

  return result;
}

double sub_24EC1140C@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v42 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838);
  v5 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v6 = *(*(v5 - 1) + 72);
  v7 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93A400;
  v51 = v7;
  v44 = v8;
  v9 = v8 + v7;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F39D340;

  v47 = a2;
  v11 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9234D8();
  v13 = __swift_project_value_buffer(v12, qword_27F39D348);
  *v9 = 0x4046000000000000;
  *(v9 + 8) = v10;
  *(v9 + 16) = xmmword_24F98B440;
  *(v9 + 32) = v11;
  v43 = v13;
  v14 = *(*(v12 - 8) + 16);
  v14(v9 + v5[9]);
  *(v9 + v5[10]) = 0x4042000000000000;
  v15 = (v9 + v5[11]);
  __asm { FMOV            V1.2D, #4.0 }

  v41 = _Q1;
  *v15 = xmmword_24F98C8C0;
  v15[1] = _Q1;
  v21 = qword_27F210DB8;
  v45 = v10;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_27F39D360;
  v23 = qword_27F210DC0;
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F39D368;
  v25 = qword_27F210DC8;
  swift_retain_n();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v9 + v6;
  v40 = __swift_project_value_buffer(v12, qword_27F39D370);
  *v26 = 0x4044000000000000;
  *(v26 + 8) = v22;
  *(v26 + 16) = xmmword_24F98B440;
  *(v26 + 32) = v24;
  v27 = v14;
  v28 = v12;
  (v14)(v9 + v6 + v5[9], v40, v12);
  *(v26 + v5[10]) = 0x4040000000000000;
  v29 = (v9 + v6 + v5[11]);
  *v29 = xmmword_24F98C8C0;
  v29[1] = v41;
  *(v42 + 40) = v44;
  *(v42 + 48) = 0x4010000000000000;
  *(v42 + 56) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 3;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24F9479A0;
  v30 = v46 + v51;

  v31 = sub_24EFED180(v47 & 1);
  *v30 = 0x4041000000000000;
  *(v30 + 8) = v45;
  *(v30 + 16) = xmmword_24F98B440;
  *(v30 + 32) = v31;
  v27(v46 + v51 + v5[9], v43, v12);
  *(v30 + v5[10]) = 0x403E000000000000;
  v32 = (v46 + v51 + v5[11]);
  __asm { FMOV            V1.2D, #2.0 }

  v50 = _Q1;
  *v32 = xmmword_24F98C8D0;
  v32[1] = _Q1;
  v34 = v46 + v51 + v6;
  *v34 = 0x403C000000000000;
  *(v34 + 8) = v22;
  *(v34 + 16) = xmmword_24F98B440;
  *(v34 + 32) = v24;
  v27(v34 + v5[9], v40, v28);
  *(v34 + v5[10]) = 0x4038000000000000;
  v35 = (v34 + v5[11]);
  *v35 = xmmword_24F98C8D0;
  v35[1] = v50;
  v36 = v46 + v51 + 2 * v6;
  *v36 = 0x403C000000000000;
  *(v36 + 8) = v22;
  *(v36 + 16) = xmmword_24F98B440;
  *(v36 + 32) = v24;
  v27(v36 + v5[9], v40, v28);
  *(v36 + v5[10]) = 0x4038000000000000;
  v37 = (v36 + v5[11]);
  *v37 = xmmword_24F98C8D0;
  v37[1] = v50;
  *(v42 + 80) = v46;
  *(v42 + 88) = xmmword_24F9475C0;
  *(v42 + 104) = 0x4028000000000000;
  v38 = sub_24E60E620(v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840);
  swift_arrayDestroy();
  *a3 = v38;
  *(a3 + 8) = 3;
  *(a3 + 16) = 0;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v52;
  *(a3 + 22) = v53;
  *(a3 + 24) = xmmword_24F98C8E0;
  result = 0.05;
  *(a3 + 40) = xmmword_24F98C8F0;
  *(a3 + 56) = 1;
  return result;
}

uint64_t (*Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v4 = sub_24EA0D600(sub_24EA11960, v20, a4);
  v19 = v4[2];
  if (v19)
  {
    v5 = type metadata accessor for CompoundScrollObserver();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = MEMORY[0x277D84F90];
    v24.receiver = v6;
    v24.super_class = v5;
    result = objc_msgSendSuper2(&v24, sel_init);
    v8 = result;
    v9 = 0;
    v10 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    v11 = v4 + 5;
    while (v9 < v4[2])
    {
      v12 = *(v11 - 1);
      v13 = *(*v11 + 8);
      swift_beginAccess();
      v14 = *(v8 + v10);
      swift_unknownObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + v10) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_24E618CD4(0, v14[2] + 1, 1, v14);
        *(v8 + v10) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E618CD4((v16 > 1), v17 + 1, 1, v14);
      }

      ++v9;
      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v12;
      v18[5] = v13;
      *(v8 + v10) = v14;
      swift_endAccess();
      result = swift_unknownObjectRelease();
      v11 += 2;
      if (v19 == v9)
      {

        *(swift_allocObject() + 16) = v8;
        return sub_24EC11D14;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_24EC11BA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v9 = *(a3 + v7);
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = v13;
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 8);
        v18 = *(v17 + 56);
        swift_unknownObjectRetain();
        v18(a1, a2, ObjectType, v17, a4, 0.0);
        swift_unknownObjectRelease();
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EC11CDC()
{

  return swift_deallocObject();
}

uint64_t SearchResultsContentPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchResultsContentPresenter.init()();
  return v0;
}

void *SearchResultsContentPresenter.init()()
{
  v9 = sub_24F92BEE8();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92BE88();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24E74EC40();
  v8[0] = "sessionProviding";
  v8[1] = v6;
  sub_24F927DA8();
  v10 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F2394E0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  v0[2] = sub_24F92BF38();
  v0[3] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B848);
  swift_allocObject();
  v0[4] = sub_24F9280D8();
  return v0;
}

size_t sub_24EC1200C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B868);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B870);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B878);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  sub_24E602068(&qword_27F22B880, &qword_27F22B878);
  sub_24E602068(&qword_27F22B888, &qword_27F22B868);
  v44 = v2;
  sub_24F922E28();
  sub_24EC13538();
  sub_24F9288A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B898);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93DE60;
  v38 = v13;
  v39 = v11;
  v16 = *(v11 + 16);
  v40 = v10;
  v16(v15 + v14, v13, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860);
  sub_24F922DB8();

  v18 = v42;
  if (v42 >> 62)
  {
    v35 = v42;
    v36 = sub_24F92C738();
    v18 = v35;
    v19 = v36;
  }

  else
  {
    v19 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
LABEL_15:
    v33 = v39;
    v32 = v40;
    v34 = v41;
    (*(v39 + 56))(v41, 1, 1, v40);
    sub_24F922D88();

    sub_24EC135D4(v34);
    return (*(v33 + 8))(v38, v32);
  }

  v20 = v18;
  v46 = MEMORY[0x277D84F90];
  result = sub_24F4587FC(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v42 = v17;
    v22 = v46;
    v23 = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v45 = MEMORY[0x253052270](v24);
        type metadata accessor for SearchResult();
        sub_24EC1358C(&qword_27F22B8A0, 255, type metadata accessor for SearchResult);
        sub_24F928898();
        v46 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24F4587FC(v26 > 1, v27 + 1, 1);
          v22 = v46;
        }

        ++v24;
        *(v22 + 16) = v27 + 1;
        (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v7, v44);
        v23 = v25;
      }

      while (v19 != v24);
    }

    else
    {
      v28 = (v20 + 32);
      type metadata accessor for SearchResult();
      sub_24EC1358C(&qword_27F22B8A0, 255, type metadata accessor for SearchResult);
      v29 = v37;
      do
      {
        v45 = *v28;

        sub_24F928898();
        v46 = v22;
        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_24F4587FC(v30 > 1, v31 + 1, 1);
          v29 = v37;
          v22 = v46;
        }

        *(v22 + 16) = v31 + 1;
        (*(v3 + 32))(v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, v29, v44);
        ++v28;
        --v19;
      }

      while (v19);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EC125B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_24EC1352C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_16_0;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v17 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F222930, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_24EC1289C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_24F927E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  v13 = *(a3 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_24F927E68();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {

    sub_24EC1200C(v16, v8);

    sub_24F9280C8();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SearchResultsContentPresenter.reapplySnapshot()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_24EC12FB4;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_61;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v11 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F222930, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_24EC12D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = sub_24F927E38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_24F927E68();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    sub_24EC1200C(v14, v5);

    sub_24F9280C8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC12FF4(void *a1)
{

  *a1 = MEMORY[0x277D84F90];

  return sub_24EA0B4A0(v2);
}

uint64_t sub_24EC13038()
{

  return swift_deallocObject();
}

uint64_t sub_24EC13098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_24EC125B8(a3, v5);
}

uint64_t SearchResultsContentPresenter.deinit()
{

  return v0;
}

uint64_t SearchResultsContentPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SearchResultsContentPresenter.Section.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_24EC132E4()
{
  result = qword_27F22B858;
  if (!qword_27F22B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B858);
  }

  return result;
}

uint64_t sub_24EC13338()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC133A4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC133F4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24EC134EC()
{

  return swift_deallocObject();
}

unint64_t sub_24EC13538()
{
  result = qword_27F22B890;
  if (!qword_27F22B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B890);
  }

  return result;
}

uint64_t sub_24EC1358C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24EC135D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRatingsLayout.init(metrics:averageRatingText:denominatorRatingText:ratingCountText:histogramStarViews:histogramRatingProgressViews:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  sub_24E612C80(a2, (a7 + 50));
  sub_24E612C80(a3, (a7 + 55));
  result = sub_24E612C80(a4, (a7 + 60));
  a7[65] = a5;
  a7[66] = a6;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.init(averageRatingTextSpace:compactDenominatorTextSpace:denominatorLeadingMargin:columnWidth:columnMargin:histogramLeadingMargin:progressBarMargin:histogramStarSpacing:histogramBarHeight:bottomSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, __int128 *a15)
{
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, (a9 + 5));
  sub_24E612C80(a3, (a9 + 10));
  sub_24E612C80(a4, (a9 + 15));
  sub_24E612C80(a5, (a9 + 20));
  sub_24E612C80(a6, (a9 + 30));
  sub_24E612C80(a7, (a9 + 25));
  sub_24E612C80(a8, (a9 + 35));
  a9[40] = a10;
  result = sub_24E612C80(a15, (a9 + 41));
  a9[46] = a11;
  a9[47] = a12;
  a9[48] = a13;
  a9[49] = a14;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.averageRatingTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductRatingsLayout.Metrics.compactDenominatorTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ProductRatingsLayout.Metrics.denominatorLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t ProductRatingsLayout.Metrics.columnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ProductRatingsLayout.Metrics.columnMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ProductRatingsLayout.Metrics.progressBarMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ProductRatingsLayout.Metrics.histogramLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t ProductRatingsLayout.Metrics.histogramStarSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 280);

  return sub_24E612C80(a1, v1 + 280);
}

uint64_t ProductRatingsLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 328);

  return sub_24E612C80(a1, v1 + 328);
}

void ProductRatingsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = a3;
  v4[49] = a4;
}

uint64_t ProductRatingsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v128 = a5;
  v129 = a6;
  v126 = a3;
  v127 = a4;
  v116 = a2;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v114 = sub_24F92BF68();

  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v117 = v15;
  v16 = *(v10 + 8);
  v16(v13, v9);
  __swift_project_boxed_opaque_existential_1(v7 + 20, v7[23]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v107 = v17;
  v16(v13, v9);
  sub_24F92C1C8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
  sub_24F922288();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v130.origin.x = v19;
  v130.origin.y = v21;
  v130.size.width = v23;
  v130.size.height = v25;
  MinX = CGRectGetMinX(v130);
  v121 = v21;
  v122 = v19;
  v131.origin.x = v19;
  v131.origin.y = v21;
  v131.size.width = v23;
  v131.size.height = v25;
  MinY = CGRectGetMinY(v131);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v115 = v31;
  v113 = v33;
  sub_24F9223C8();
  v36 = MinY + v35;
  __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
  v37 = MinX;
  v38 = v25;
  v39 = v29;
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 55, v7[58]);
  v40 = v23;
  sub_24F922288();
  v112 = v41;
  v111 = v42;
  v118 = v43;
  v45 = v44;
  v46 = [a1 traitCollection];
  v47 = sub_24F92BF68();

  v119 = v39;
  v120 = v27;
  v123 = v36;
  if (v47)
  {
    v132.origin.y = v121;
    v132.origin.x = v122;
    v132.size.width = v23;
    v106 = v23;
    v132.size.height = v38;
    v48 = CGRectGetMinX(v132);
    v49 = v38;
    v110 = v45;
    v50 = v36;
    v51 = v48;
    v133.origin.x = v37;
    v133.origin.y = v50;
    v133.size.width = v27;
    v133.size.height = v39;
    MidX = CGRectGetMidX(v133);
    v53 = v112;
    v54 = floor(MidX + v112 * -0.5);
    if (v51 > v54)
    {
      v55 = v51;
    }

    else
    {
      v55 = v54;
    }

    v134.origin.x = v37;
    v134.origin.y = v50;
    v134.size.width = v27;
    v134.size.height = v39;
    v56 = CGRectGetMaxY(v134) - v113;
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    v57 = v111;
    sub_24F9223C8();
    v59 = v56 + v58;
    v60 = v106;
    v61 = v57;
  }

  else
  {
    v135.origin.x = v37;
    v135.origin.y = v36;
    v135.size.width = v27;
    v135.size.height = v39;
    MaxX = CGRectGetMaxX(v135);
    __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v49 = v38;
    v64 = v63;
    v16(v13, v9);
    v55 = MaxX + v64;
    v136.origin.x = v37;
    v136.origin.y = v36;
    v136.size.width = v27;
    v136.size.height = v39;
    v59 = CGRectGetMaxY(v136) - v113 - v118;
    v60 = v40;
    v53 = v112;
    v61 = v111;
  }

  v124 = v49;
  __swift_project_boxed_opaque_existential_1(v7 + 55, v7[58]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 60, v7[63]);
  sub_24F922288();
  v66 = v65;
  v68 = v67;
  v112 = v69;
  v113 = v70;
  v137.origin.x = v55;
  v137.origin.y = v59;
  v137.size.width = v53;
  v137.size.height = v61;
  v71 = v118 + CGRectGetMinY(v137);
  v72 = v121;
  v73 = v122;
  v138.origin.x = v122;
  v138.origin.y = v121;
  v138.size.width = v60;
  v138.size.height = v49;
  v74 = v117 + CGRectGetMinX(v138) - v66;
  v75 = v71 - v112;
  __swift_project_boxed_opaque_existential_1(v7 + 60, v7[63]);
  v111 = v74;
  v110 = v75;
  v118 = v66;
  v112 = v68;
  sub_24F92C1D8();
  sub_24F922228();
  v139.origin.x = MinX;
  v139.origin.y = v123;
  v77 = v119;
  v76 = v120;
  v139.size.width = v120;
  v139.size.height = v119;
  v109 = CGRectGetMinY(v139);
  v140.origin.x = v73;
  v140.origin.y = v72;
  v140.size.width = v60;
  v140.size.height = v49;
  v108 = CGRectGetMinY(v140);
  v78 = v60;
  v79 = v73;
  v80 = v72;
  if (v114)
  {
    v81 = v76;
    v141.origin.x = v79;
    v141.origin.y = v72;
    v141.size.width = v60;
    v82 = v124;
    v141.size.height = v124;
    v83 = CGRectGetWidth(v141) * 0.5;
    __swift_project_boxed_opaque_existential_1(v7 + 30, v7[33]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v85 = v84;
    v16(v13, v9);
    v86 = v83 + v85;
    v142.origin.x = MinX;
    v142.origin.y = v123;
    v142.size.width = v81;
    v142.size.height = v77;
    v87 = CGRectGetMaxX(v142);
    __swift_project_boxed_opaque_existential_1(v7 + 25, v7[28]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v89 = v88;
    v16(v13, v9);
    v90 = v87 + v89;
    v143.origin.x = v79;
    v143.origin.y = v80;
    v143.size.width = v78;
    v143.size.height = v82;
    if (v90 < CGRectGetMaxX(v143) - v86)
    {
      v144.origin.x = v79;
      v144.origin.y = v80;
      v144.size.width = v78;
      v144.size.height = v124;
      v90 = CGRectGetMaxX(v144) - v86;
    }

    v145.origin.x = v79;
    v145.origin.y = v80;
    v145.size.width = v78;
    v91 = v124;
    v145.size.height = v124;
    v92 = CGRectGetMinY(v145);
    v146.origin.x = v79;
    v146.origin.y = v80;
    v146.size.width = v78;
    v146.size.height = v91;
    v93 = CGRectGetMaxX(v146) - v90;
  }

  else
  {
    v147.origin.x = v73;
    v147.origin.y = v72;
    v147.size.width = v60;
    v94 = v124;
    v147.size.height = v124;
    v95 = CGRectGetMinX(v147);
    v96 = v117;
    v90 = v107 + v117 + v95;
    v97 = v117 + v90;
    v148.origin.x = v79;
    v148.origin.y = v80;
    v148.size.width = v60;
    v148.size.height = v94;
    v98 = CGRectGetMaxX(v148) < v97;
    v93 = v96;
    if (v98)
    {
      v149.origin.x = v79;
      v149.origin.y = v80;
      v149.size.width = v60;
      v149.size.height = v124;
      v93 = CGRectGetMaxX(v149) - v90;
    }

    v150.origin.x = v79;
    v150.origin.y = v80;
    v150.size.width = v60;
    v150.size.height = v124;
    v92 = CGRectGetMinY(v150);
  }

  v99 = v92;
  v101 = v126;
  v100 = v127;
  v103 = v128;
  v102 = v129;
  sub_24EC14780(v90, v99, v93, v115 + v109 - v108, v126, v127, v128, v129);
  v151.origin.x = v111;
  v151.origin.y = v110;
  v151.size.width = v118;
  v151.size.height = v112;
  CGRectGetMaxY(v151);
  __swift_project_boxed_opaque_existential_1(v7 + 41, v7[44]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v13, v9);
  v152.origin.x = v101;
  v152.origin.y = v100;
  v152.size.width = v103;
  v152.size.height = v102;
  CGRectGetWidth(v152);
  v153.origin.y = v121;
  v153.origin.x = v122;
  v153.size.width = v78;
  v153.size.height = v124;
  CGRectGetMinY(v153);
  v154.origin.x = MinX;
  v154.origin.y = v123;
  v154.size.height = v119;
  v154.size.width = v120;
  CGRectGetMinY(v154);
  __swift_project_boxed_opaque_existential_1(v7 + 41, v7[44]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  v16(v13, v9);
  return sub_24F922138();
}

void sub_24EC14780(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, CGFloat a8)
{
  v88 = a8;
  v83 = a7;
  v87 = a6;
  v82 = a5;
  v89 = a4;
  v86 = a2;
  v85 = a1;
  v10 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v8 + 520);
  v16 = *(v15 + 16);
  v71 = *(v8 + 528);
  if (v16)
  {
    v17 = v16 == *(v71 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = 0.0;
  if (v17)
  {
    v81 = v12;
    v84 = v11;
    v73 = v15;
    v19 = v15 + 32;
    v20 = MEMORY[0x277D84F90];
    v21 = 0.0;
    v70 = v15 + 32;
    v22 = v16;
    do
    {
      sub_24E615E00(v19, &v97);
      __swift_project_boxed_opaque_existential_1(&v97, v99);
      sub_24F922298();
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v97);
      if (v18 < v24)
      {
        v21 = v26;
        v18 = v24;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24E618CF8(0, *(v20 + 2) + 1, 1, v20);
      }

      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        v20 = sub_24E618CF8((v27 > 1), v28 + 1, 1, v20);
      }

      *(v20 + 2) = v28 + 1;
      v29 = &v20[16 * v28 + 32];
      *v29 = v24;
      v29[1] = v26;
      v19 += 40;
      --v22;
    }

    while (v22);
    __swift_project_boxed_opaque_existential_1((v8 + 280), *(v8 + 304));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v31 = v30;
    v80 = *(*&v81 + 8);
    (*&v80)(v14, *&v84);
    v77 = v31;
    v32 = v21 * v16 + v31 * (v16 - 1);
    v33 = v85;
    v103.origin.x = v85;
    v34 = v86;
    v103.origin.y = v86;
    v103.size.width = a3;
    v35 = v89;
    v103.size.height = v89;
    MinX = CGRectGetMinX(v103);
    v104.origin.x = v33;
    v104.origin.y = v34;
    v104.size.width = a3;
    v104.size.height = v35;
    v37 = CGRectGetMaxY(v104) - v32;
    v105.origin.x = v33;
    v105.origin.y = v34;
    v81 = a3;
    v105.size.width = a3;
    v105.size.height = v35;
    Width = CGRectGetWidth(v105);
    v106.origin.x = MinX;
    v39 = MinX;
    v106.origin.y = v37;
    v106.size.width = v18;
    v106.size.height = v32;
    v40 = CGRectGetWidth(v106);
    __swift_project_boxed_opaque_existential_1((v8 + 200), *(v8 + 224));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v42 = v41;
    (*&v80)(v14, *&v84);
    v76 = Width - (v40 + v42);
    v43 = *(v8 + 320);
    v107.origin.x = v39;
    v78 = v39;
    v84 = v37;
    v107.origin.y = v37;
    v80 = v18;
    v107.size.width = v18;
    v79 = v32;
    v107.size.height = v32;
    MinY = CGRectGetMinY(v107);
    v72 = 0;
    v45 = 0;
    v69 = v71 + 32;
    v75 = v43;
    v74 = v43 * 0.5;
LABEL_15:
    v46 = *(v73 + 16);
    if (v45 == v46)
    {
      while (1)
      {
LABEL_19:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0uLL;
        v52 = 1;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
LABEL_20:
        v97 = v48;
        v98 = v51;
        v99 = v49;
        v100 = v53;
        v101[0] = v54;
        v101[1] = v55;
        v102 = v50;
        if (!v53)
        {
          v62 = v85;
          v111.origin.x = v85;
          v63 = v86;
          v111.origin.y = v86;
          v64 = v81;
          v111.size.width = v81;
          v65 = v89;
          v111.size.height = v89;
          v88 = CGRectGetMinX(v111);
          v112.origin.x = v62;
          v112.origin.y = v63;
          v112.size.width = v64;
          v112.size.height = v65;
          CGRectGetMaxY(v112);
          v66 = v78;
          v113.origin.x = v78;
          v113.origin.y = v84;
          v67 = v80;
          v113.size.width = v80;
          v68 = v79;
          v113.size.height = v79;
          CGRectGetHeight(v113);
          v114.origin.x = v62;
          v114.origin.y = v63;
          v114.size.width = v64;
          v114.size.height = v65;
          CGRectGetWidth(v114);
          v115.origin.x = v66;
          v115.origin.y = v84;
          v115.size.width = v67;
          v115.size.height = v68;
          CGRectGetHeight(v115);

          return;
        }

        sub_24E612C80(&v98, &v91);
        sub_24E612C80(v101, &v94);
        if (v48 >= *(v20 + 2))
        {
          break;
        }

        v56 = &v20[16 * v48 + 32];
        v58 = *v56;
        v57 = v56[1];
        v108.origin.x = v78;
        v108.origin.y = v84;
        v108.size.width = v80;
        v108.size.height = v79;
        v59 = CGRectGetMaxX(v108) - v58;
        __swift_project_boxed_opaque_existential_1(&v91, v93);
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(&v91);
        v109.origin.x = v85;
        v109.origin.y = v86;
        v109.size.width = v81;
        v109.size.height = v89;
        CGRectGetMaxX(v109);
        v110.origin.x = v59;
        v110.origin.y = MinY;
        v110.size.width = v58;
        v110.size.height = v57;
        CGRectGetMidY(v110);
        __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(&v94);
        MinY = MinY + v77 + v57;
        if ((v52 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else if (v45 < v46)
    {
      sub_24E615E00(v70 + 40 * v45++, v90);
      v47 = *(v71 + 16);
      if (v72 == v47)
      {
        __swift_destroy_boxed_opaque_existential_1(v90);
        goto LABEL_19;
      }

      if (v72 < v47)
      {
        v60 = v72;
        v61 = v69 + 40 * v72;
        sub_24E612C80(v90, &v91);
        sub_24E615E00(v61, &v94);
        v52 = 0;
        v51 = v91;
        v49 = v92;
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v48 = v60;
        v72 = v60 + 1;
        v50 = v96;
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

double _s12GameStoreKit20ProductRatingsLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3)
{
  v31 = sub_24F92CDB8();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9225E8();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922618();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9229A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, &v32);
  v19 = MEMORY[0x277D228E0];
  *(v18 + 56) = v14;
  *(v18 + 64) = v19;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 328, &v32);
  *(v18 + 96) = v14;
  *(v18 + 104) = v19;
  __swift_allocate_boxed_opaque_existential_1((v18 + 72));
  sub_24F9229B8();
  v30 = a2;
  v20 = [a2 traitCollection];
  LOBYTE(v19) = sub_24F92BF68();

  if (v19)
  {
    sub_24E615E00(a1 + 40, &v32);
    sub_24F9229B8();
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_24E617A00((v21 > 1), v22 + 1, 1, v18);
    }

    v33 = v14;
    v34 = MEMORY[0x277D228E0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
    (*(v15 + 16))(boxed_opaque_existential_1, v17, v14);
    *(v18 + 16) = v22 + 1;
    sub_24E612C80(&v32, v18 + 40 * v22 + 32);
    (*(v15 + 8))(v17, v14);
  }

  (*(v25 + 104))(v10, *MEMORY[0x277D22788], v26);
  sub_24F9225F8();
  sub_24F9225D8();
  __swift_project_boxed_opaque_existential_1((a1 + 328), *(a1 + 352));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v29 + 8))(v7, v31);
  (*(v27 + 8))(v13, v28);
  return a3;
}

unint64_t sub_24EC15404()
{
  result = qword_27F22B8A8;
  if (!qword_27F22B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8A8);
  }

  return result;
}

uint64_t sub_24EC15460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 536))
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

uint64_t sub_24EC154A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 536) = 1;
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

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC1558C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_24EC155D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Conditional<>.init(regularValue:rightToLeftValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  v20[0] = v14;
  v20[1] = v15;
  KeyPath = swift_getKeyPath();
  v17 = *(v8 + 16);
  v17(v13, a2, a3);
  v17(v10, a1, a3);
  Conditional<>.init(property:trueValue:falseValue:)(KeyPath, v13, v10, a3, &v21);
  v18 = *(v8 + 8);
  v18(a2, a3);
  result = (v18)(a1, a3);
  *a4 = v21;
  return result;
}

id sub_24EC15814@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_24EC15850@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

__n128 sub_24EC15898(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC158A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF88();
  *a1 = result & 1;
  return result;
}

void sub_24EC158E4()
{
  v1 = *(v0 + 32);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v1 + 1;
    fmin(exp2(v1) * 0.3, 5.0);
    sub_24F18A83C(0x20000000000001);
  }
}

uint64_t sub_24EC159E4@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_24F9251C8();
    }

    else
    {
      sub_24F9251B8();
    }
  }

  else
  {
    sub_24F925198();
  }

  result = sub_24F9238D8();
  *a2 = result;
  return result;
}

unint64_t sub_24EC15AC8()
{
  result = qword_27F22B8B0;
  if (!qword_27F22B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8B0);
  }

  return result;
}

unint64_t sub_24EC15B7C()
{
  result = qword_27F22B8B8;
  if (!qword_27F22B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8B8);
  }

  return result;
}

uint64_t sub_24EC15BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8C8);
  MEMORY[0x28223BE20](v62);
  v4 = &v53 - v3;
  v5 = type metadata accessor for SocialSuggestionsComponentGrid();
  v6 = a1 + *(v5 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = *(v6 + 32);
  v11 = *(v6 + 40);
  v13 = *(v6 + 48);
  *&v79[3] = *(v6 + 52);
  *v79 = *(v6 + 49);
  v14 = *(v6 + 56);
  v15 = *(v6 + 64);
  v17 = *(v6 + 72);
  v16 = *(v6 + 80);
  v18 = *(v6 + 88);
  *v85 = *(v6 + 89);
  *&v85[3] = *(v6 + 92);
  v19 = *(v6 + 96);
  v20 = *(v6 + 104);
  *v88 = *(v6 + 105);
  *&v88[3] = *(v6 + 108);
  v21 = *(v6 + 112);
  v22 = *(v6 + 120);
  *v91 = *(v6 + 121);
  *&v91[3] = *(v6 + 124);
  v23 = *(v6 + 128);
  v24 = *(v6 + 136);
  *&v94[3] = *(v6 + 140);
  *v94 = *(v6 + 137);
  v25 = *(v6 + 144);
  v26 = *(v6 + 152);
  LOBYTE(v6) = *(v6 + 153);
  v65 = v7;
  v77[0] = v7;
  v77[1] = v8;
  v64 = v8;
  v66 = v9;
  v77[2] = v9;
  v77[3] = v10;
  v68 = v10;
  v77[4] = v12;
  v77[5] = v11;
  v67 = v11;
  v78 = v13;
  v69 = v14;
  v80 = v14;
  v81 = v15;
  v70 = v15;
  v82 = v17;
  v83 = v16;
  v59 = v16;
  v54 = v18;
  v84 = v18;
  v58 = v19;
  v86 = v19;
  v55 = v20;
  v87 = v20;
  v57 = v21;
  v89 = v21;
  v56 = v22;
  v90 = v22;
  v27 = v23;
  v92 = v23;
  v28 = v24;
  v93 = v24;
  v95 = v25;
  v29 = v26;
  v96 = v26;
  v97 = v6;
  if (sub_24EC1631C(v77) != 1)
  {
    v30 = v17 & 1;
    v61 = *(a1 + *(v5 + 28));
    if (v13)
    {
      v36 = v69;
      v32 = v59;
      v35 = v70;
      v31 = v29;
      v34 = v58;
      v33 = v57;
      v38 = v56;
      v39 = v55;
      v37 = 0;
      v67 = 0x4051400000000000;
      v60 = 1;
      if ((v54 & 1) == 0)
      {
        v66 = 0x4051400000000000;
        goto LABEL_10;
      }

      v69 = 0x4056000000000000;
      v66 = 0x4051400000000000;
      v68 = 0;
      v70 = 0;
    }

    else
    {
      v60 = v12 & 1;
      v36 = v69;
      v32 = v59;
      v35 = v70;
      v31 = v29;
      v37 = v68;
      v34 = v58;
      v33 = v57;
      v38 = v56;
      v39 = v55;
      if ((v54 & 1) == 0)
      {
        goto LABEL_10;
      }

      v70 = 0;
      v69 = 0x4056000000000000;
    }

    v40 = 1;
    v32 = 0x4056000000000000;
    goto LABEL_11;
  }

  v25 = 0;
  LOBYTE(v72[0]) = 0;
  LOBYTE(v71[0]) = 0;
  v30 = 1;
  v76 = 1;
  v75 = 1;
  v74 = 1;
  v73 = 1;
  v31 = 1;
  v61 = *(a1 + *(v5 + 28));
  v32 = 0x4056000000000000;
  v65 = 2;
  v64 = 3;
  v67 = 0x4051400000000000;
  v27 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0x4056000000000000;
  v60 = 1;
  v37 = 0;
  v66 = 0x4051400000000000;
  v28 = 1;
  v38 = 1;
  v39 = 1;
LABEL_10:
  v70 = v35;
  v69 = v36;
  v68 = v37;
  v40 = v30;
LABEL_11:
  if (v39)
  {
    v41 = 2;
  }

  else
  {
    v41 = v34;
  }

  if (v38)
  {
    v42 = 1;
  }

  else
  {
    v42 = v33;
  }

  if (v28)
  {
    v43 = 2;
  }

  else
  {
    v43 = v27;
  }

  if (v31)
  {
    v25 = 1;
  }

  LOBYTE(v72[0]) = 0;
  LOBYTE(v71[0]) = 0;
  v44 = &v4[*(v62 + 36)];
  v45 = *(sub_24F924258() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_24F924B38();
  (*(*(v47 - 8) + 104))(&v44->i8[v45], v46, v47);
  *v44 = vdupq_n_s64(0x4040000000000000uLL);
  v48 = v65;
  *v4 = v64;
  *(v4 + 1) = v48;
  v49 = v66;
  *(v4 + 2) = v61;
  *(v4 + 3) = v49;
  v50 = v60;
  *(v4 + 4) = v68;
  *(v4 + 5) = v50;
  *(v4 + 6) = v67;
  v4[56] = 0;
  *(v4 + 57) = v72[0];
  *(v4 + 15) = *(v72 + 3);
  v51 = v70;
  *(v4 + 8) = v69;
  *(v4 + 9) = v51;
  *(v4 + 10) = v40;
  *(v4 + 11) = v32;
  v4[96] = 0;
  LODWORD(v51) = v71[0];
  *(v4 + 25) = *(v71 + 3);
  *(v4 + 97) = v51;
  *(v4 + 13) = v41;
  *(v4 + 14) = v42;
  *(v4 + 15) = v43;
  *(v4 + 16) = v25;
  sub_24EC16338(v4, v63);
}

uint64_t sub_24EC1618C()
{
  sub_24EC15B7C();

  return sub_24F9218E8();
}

unint64_t sub_24EC161D4()
{
  result = qword_27F22B8C0;
  if (!qword_27F22B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8C0);
  }

  return result;
}

uint64_t sub_24EC162D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC1631C(uint64_t a1)
{
  if (*(a1 + 153))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EC16338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC163AC()
{
  result = qword_27F22B8D0;
  if (!qword_27F22B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B8C8);
    sub_24EC16438();
    sub_24EC1648C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8D0);
  }

  return result;
}

unint64_t sub_24EC16438()
{
  result = qword_27F22B8D8;
  if (!qword_27F22B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8D8);
  }

  return result;
}

unint64_t sub_24EC1648C()
{
  result = qword_27F217098;
  if (!qword_27F217098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217098);
  }

  return result;
}

char *SearchAdAction.__allocating_init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v16 + 8))(a5, v15);
  sub_24E601704(v38, &qword_27F235830);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *SearchAdAction.init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_24F91F6B8();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  (*(v17 + 8))(v20, v16);
  sub_24E601704(v47, &qword_27F235830);
  v29 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t *SearchAdAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v27 = *v4;
  v28 = v3;
  v29 = sub_24F9285B8();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v31 = a1;
  sub_24F928398();
  type metadata accessor for Action();
  v30 = a2;
  v17 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, a2);
  if (v17)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action) = v17;

    sub_24F928398();
    (*(v7 + 16))(v9, v30, v29);
    v18 = v28;
    v19 = Action.init(deserializing:using:)(v14, v9);
    if (v18)
    {

      (*(v7 + 8))(v30, v29);
      v20 = *(v11 + 8);
      v20(v31, v10);
      v20(v16, v10);
    }

    else
    {
      v4 = v19;

      (*(v7 + 8))(v30, v29);
      v25 = *(v11 + 8);
      v25(v31, v10);
      v25(v16, v10);
    }
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 0x6E6F69746361;
    v23 = v27;
    v22[1] = 0xE600000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    (*(v7 + 8))(v30, v29);
    v24 = *(v11 + 8);
    v24(v31, v10);
    v24(v16, v10);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t SearchAdAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t SearchAdAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchAdAction()
{
  result = qword_27F22B8E0;
  if (!qword_27F22B8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC1727C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_24E61DA68(v10, v12, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17780();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(v10, v12, qword_27F24EC90);
    sub_24EC17804(v12, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EC177D4(v12);
}

uint64_t sub_24EC174B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EC17544(uint64_t a1)
{
  v2 = sub_24EC17780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC17580(uint64_t a1)
{
  v2 = sub_24EC17780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC175F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17780();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  sub_24E6419D0(&qword_27F214048, &qword_27F214050);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EC17780()
{
  result = qword_27F22B8F8;
  if (!qword_27F22B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8F8);
  }

  return result;
}

unint64_t sub_24EC17850()
{
  result = qword_27F22B908;
  if (!qword_27F22B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B908);
  }

  return result;
}

unint64_t sub_24EC178A8()
{
  result = qword_27F22B910;
  if (!qword_27F22B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B910);
  }

  return result;
}

unint64_t sub_24EC17900()
{
  result = qword_27F22B918;
  if (!qword_27F22B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B918);
  }

  return result;
}

uint64_t sub_24EC17954(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6772614D65676170;
    if (a1 != 2)
    {
      v5 = 0x7061726761726170;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x417972616D697270;
    if (a1 != 7)
    {
      v2 = 0x417373696D736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7374656C6C7562;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24EC17AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC1FC50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC17AD0(uint64_t a1)
{
  v2 = sub_24EC17FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC17B0C(uint64_t a1)
{
  v2 = sub_24EC17FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherWelcomePage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17FA4();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  type metadata accessor for HeaderPresentation(0);
  sub_24EC20494(&qword_27F21BE58, type metadata accessor for HeaderPresentation);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for PlayTogetherWelcomePage(0);
    LOBYTE(v15) = 1;
    sub_24F9289E8();
    sub_24EC20494(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    LOBYTE(v15) = *(v3 + v9[6]);
    v19 = 2;
    sub_24E777488();
    sub_24F92CCF8();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = 3;
    sub_24EC18018(v15, v11, v12, v13);
    sub_24EC1805C();
    sub_24F92CCF8();
    sub_24EC180B0(v15, v16, v17, v18);
    v15 = *(v3 + v9[8]);
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938);
    sub_24EC189BC(&qword_27F22B940, sub_24EC180F4);
    sub_24F92CCF8();
    LOBYTE(v15) = 5;
    sub_24F92CCA8();
    LOBYTE(v15) = 6;
    sub_24F92CCA8();
    LOBYTE(v15) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
    sub_24F92CCF8();
    LOBYTE(v15) = 8;
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24EC17FA4()
{
  result = qword_27F22B928;
  if (!qword_27F22B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B928);
  }

  return result;
}

uint64_t sub_24EC18018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24EC1805C()
{
  result = qword_27F22B930;
  if (!qword_27F22B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B930);
  }

  return result;
}

uint64_t sub_24EC180B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24EC180F4()
{
  result = qword_27F22B948;
  if (!qword_27F22B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B948);
  }

  return result;
}

uint64_t PlayTogetherWelcomePage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B950);
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PlayTogetherWelcomePage(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24EC17FA4();
  v36 = v11;
  v16 = v37;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v14;
  type metadata accessor for HeaderPresentation(0);
  LOBYTE(v39) = 0;
  sub_24EC20494(&qword_27F21BEB8, type metadata accessor for HeaderPresentation);
  sub_24F92CC18();
  v17 = v8;
  v18 = v37;
  sub_24E6009C8(v17, v37, qword_27F220E38);
  sub_24F9289E8();
  LOBYTE(v39) = 1;
  sub_24EC20494(&qword_27F214018, MEMORY[0x277D21C48]);
  sub_24F92CC18();
  sub_24E6009C8(v5, v18 + v12[5], &qword_27F213FB0);
  v42 = 2;
  sub_24E777690();
  sub_24F92CC18();
  *(v18 + v12[6]) = v39;
  v42 = 3;
  sub_24EC18968();
  sub_24F92CC18();
  v19 = (v18 + v12[7]);
  v20 = v40;
  *v19 = v39;
  v19[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938);
  v42 = 4;
  sub_24EC189BC(&qword_27F22B968, sub_24EC18A34);
  sub_24F92CC18();
  *(v18 + v12[8]) = v39;
  LOBYTE(v39) = 5;
  v21 = sub_24F92CBC8();
  v22 = (v18 + v12[9]);
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v39) = 6;
  v24 = sub_24F92CBC8();
  v25 = (v18 + v12[10]);
  *v25 = v24;
  v25[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
  v42 = 7;
  sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
  sub_24F92CC18();
  v27 = &v37[v12[11]];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  *(v27 + 4) = v41;
  v42 = 8;
  sub_24F92CC18();
  (*(v9 + 8))(v36, v35);
  v29 = v37;
  v30 = &v37[v12[12]];
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  *(v30 + 4) = v41;
  sub_24EC1BBA4(v29, v34, type metadata accessor for PlayTogetherWelcomePage);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_24EC18A88(v29);
}

unint64_t sub_24EC18968()
{
  result = qword_27F22B960;
  if (!qword_27F22B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B960);
  }

  return result;
}

uint64_t sub_24EC189BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B938);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC18A34()
{
  result = qword_27F22B970;
  if (!qword_27F22B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B970);
  }

  return result;
}

uint64_t sub_24EC18A88(uint64_t a1)
{
  v2 = type metadata accessor for PlayTogetherWelcomePage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC18B14()
{
  if (*v0)
  {
    return 0x7478655479646F62;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24EC18B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7478655479646F62 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EC18C24(uint64_t a1)
{
  v2 = sub_24EC18E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC18C60(uint64_t a1)
{
  v2 = sub_24EC18E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherWelcomeParagraph.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B978);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC18E30();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CCA8();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EC18E30()
{
  result = qword_27F22B980;
  if (!qword_27F22B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B980);
  }

  return result;
}

uint64_t PlayTogetherWelcomeParagraph.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC18E30();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_24EC190B4()
{
  v0 = sub_24F927618();
  xmmword_27F39BF10 = xmmword_24F947C50;
  unk_27F39BF20 = xmmword_24F98D260;
  *&xmmword_27F39BF30 = v0;
  *(&xmmword_27F39BF30 + 1) = v1;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39BF40 = result;
  xmmword_27F39BF50 = xmmword_24F98D270;
  qword_27F39BF60 = 0x4036000000000000;
  return result;
}

__n128 sub_24EC19104()
{
  v0 = sub_24F927618();
  xmmword_27F39BF70 = xmmword_24F947C70;
  unk_27F39BF80 = xmmword_24F98D260;
  *&xmmword_27F39BF90 = v0;
  *(&xmmword_27F39BF90 + 1) = v1;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39BFA0 = result;
  xmmword_27F39BFB0 = xmmword_24F98D270;
  qword_27F39BFC0 = 0x4030000000000000;
  return result;
}

uint64_t PlayTogetherWelcomePageView.init(configuration:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v9 = v6[8];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v6[9];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  v11 = v6[10];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  result = sub_24EC1BC10(a1, a3, type metadata accessor for PlayTogetherWelcomePage);
  *(a3 + v6[5]) = a2;
  return result;
}

double sub_24EC192EC@<D0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v68 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v54[-v13];
  MEMORY[0x28223BE20](v14);
  v67 = &v54[-v15];
  MEMORY[0x28223BE20](v16);
  v70 = &v54[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  sub_24EC19BAC(&v54[-v22]);
  v24 = v3[13];
  v63 = *MEMORY[0x277CE0560];
  v62 = v24;
  v60 = v3 + 13;
  v24(v20);
  v25 = v3[7];
  v64 = v3 + 7;
  v61 = v25;
  v25(v20, 0, 1, v2);
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v69 = v3;
  v27 = v3[6];
  v28 = v27(v9, 1, v2);
  v65 = v27;
  if (v28 != 1)
  {
    sub_24E60169C(v9, v70, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v56 = v5;
      v57 = v1;
      v30 = v69;
      v31 = v59;
      (v69[4])(v59, &v9[v26], v2);
      sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
      v32 = v70;
      v55 = sub_24F92AFF8();
      v33 = v30[1];
      v33(v31, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v33(v32, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v69[1])(v70, v2);
LABEL_6:
    v29 = v9;
LABEL_14:
    sub_24E601704(v29, &unk_27F254F20);
    goto LABEL_15;
  }

  v56 = v5;
  v57 = v1;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v27(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v34 = v67;
  sub_24EC19D94(v67);
  v35 = v66;
  v62(v66, v63, v2);
  v61(v35, 0, 1, v2);
  v36 = *(v56 + 48);
  v37 = v68;
  sub_24E60169C(v34, v68, &qword_27F215598);
  sub_24E60169C(v35, &v37[v36], &qword_27F215598);
  v38 = v65;
  v39 = v2;
  if (v65(v37, 1, v2) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    if (v38(&v37[v36], 1, v2) == 1)
    {
      sub_24E601704(v37, &qword_27F215598);
LABEL_20:
      if (qword_27F2103F0 != -1)
      {
        swift_once();
      }

      v41 = &xmmword_27F39BF70;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v40 = v58;
  sub_24E60169C(v37, v58, &qword_27F215598);
  if (v38(&v37[v36], 1, v39) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    (v69[1])(v40, v39);
LABEL_13:
    v29 = v37;
    goto LABEL_14;
  }

  v48 = v39;
  v49 = v35;
  v50 = v69;
  v51 = v59;
  (v69[4])(v59, &v37[v36], v48);
  sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
  v52 = sub_24F92AFF8();
  v53 = v50[1];
  v53(v51, v48);
  sub_24E601704(v49, &qword_27F215598);
  sub_24E601704(v34, &qword_27F215598);
  v53(v40, v48);
  sub_24E601704(v37, &qword_27F215598);
  if (v52)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F2103E8 != -1)
  {
    swift_once();
  }

  v41 = &xmmword_27F39BF10;
LABEL_18:
  v42 = v41[3];
  v74 = v41[2];
  v75 = v42;
  v76 = v41[4];
  v77 = *(v41 + 10);
  v43 = v41[1];
  v72 = *v41;
  v73 = v43;
  v44 = v75;
  v45 = v71;
  *(v71 + 32) = v74;
  *(v45 + 48) = v44;
  *(v45 + 64) = v76;
  *(v45 + 80) = v77;
  result = *&v72;
  v47 = v73;
  *v45 = v72;
  *(v45 + 16) = v47;
  return result;
}

uint64_t sub_24EC19BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 24), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EC19D94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_24EC19F7C@<D0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v68 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v54[-v13];
  MEMORY[0x28223BE20](v14);
  v67 = &v54[-v15];
  MEMORY[0x28223BE20](v16);
  v70 = &v54[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  sub_24EC19BAC(&v54[-v22]);
  v24 = v3[13];
  v63 = *MEMORY[0x277CE0560];
  v62 = v24;
  v60 = v3 + 13;
  v24(v20);
  v25 = v3[7];
  v64 = v3 + 7;
  v61 = v25;
  v25(v20, 0, 1, v2);
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v69 = v3;
  v27 = v3[6];
  v28 = v27(v9, 1, v2);
  v65 = v27;
  if (v28 != 1)
  {
    sub_24E60169C(v9, v70, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v56 = v5;
      v57 = v1;
      v30 = v69;
      v31 = v59;
      (v69[4])(v59, &v9[v26], v2);
      sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
      v32 = v70;
      v55 = sub_24F92AFF8();
      v33 = v30[1];
      v33(v31, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v33(v32, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v69[1])(v70, v2);
LABEL_6:
    v29 = v9;
LABEL_14:
    sub_24E601704(v29, &unk_27F254F20);
    goto LABEL_15;
  }

  v56 = v5;
  v57 = v1;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v27(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v34 = v67;
  sub_24EC19D94(v67);
  v35 = v66;
  v62(v66, v63, v2);
  v61(v35, 0, 1, v2);
  v36 = *(v56 + 48);
  v37 = v68;
  sub_24E60169C(v34, v68, &qword_27F215598);
  sub_24E60169C(v35, &v37[v36], &qword_27F215598);
  v38 = v65;
  v39 = v2;
  if (v65(v37, 1, v2) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    if (v38(&v37[v36], 1, v2) == 1)
    {
      sub_24E601704(v37, &qword_27F215598);
LABEL_20:
      if (qword_27F210D38 != -1)
      {
        swift_once();
      }

      v41 = &xmmword_27F39D220;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v40 = v58;
  sub_24E60169C(v37, v58, &qword_27F215598);
  if (v38(&v37[v36], 1, v39) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v34, &qword_27F215598);
    (v69[1])(v40, v39);
LABEL_13:
    v29 = v37;
    goto LABEL_14;
  }

  v48 = v39;
  v49 = v35;
  v50 = v69;
  v51 = v59;
  (v69[4])(v59, &v37[v36], v48);
  sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
  v52 = sub_24F92AFF8();
  v53 = v50[1];
  v53(v51, v48);
  sub_24E601704(v49, &qword_27F215598);
  sub_24E601704(v34, &qword_27F215598);
  v53(v40, v48);
  sub_24E601704(v37, &qword_27F215598);
  if (v52)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210D30 != -1)
  {
    swift_once();
  }

  v41 = &xmmword_27F39D1C0;
LABEL_18:
  v42 = v41[3];
  v74 = v41[2];
  v75 = v42;
  v76 = v41[4];
  v77 = *(v41 + 10);
  v43 = v41[1];
  v72 = *v41;
  v73 = v43;
  v44 = v75;
  v45 = v71;
  *(v71 + 32) = v74;
  *(v45 + 48) = v44;
  *(v45 + 64) = v76;
  *(v45 + 80) = v77;
  result = *&v72;
  v47 = v73;
  *v45 = v72;
  *(v45 + 16) = v47;
  return result;
}

BOOL sub_24EC1A83C()
{
  v1 = sub_24F925218();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v50 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v4);
  v48 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v38[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v46 = &v38[-v12];
  MEMORY[0x28223BE20](v13);
  v47 = &v38[-v14];
  MEMORY[0x28223BE20](v15);
  v49 = &v38[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v38[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v38[-v21];
  v45 = v0;
  sub_24EC19BAC(&v38[-v21]);
  v23 = v2[13];
  v43 = *MEMORY[0x277CE0560];
  v42 = v23;
  v23(v19);
  v41 = v2[7];
  v41(v19, 0, 1, v1);
  v44 = v4;
  v24 = *(v4 + 48);
  sub_24E60169C(v22, v8, &qword_27F215598);
  sub_24E60169C(v19, &v8[v24], &qword_27F215598);
  v52 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v51 = v25;
    sub_24E601704(v19, &qword_27F215598);
    sub_24E601704(v22, &qword_27F215598);
    if (v51(&v8[v24], 1, v1) != 1)
    {
LABEL_12:
      sub_24E601704(v8, &unk_27F254F20);
      return 1;
    }

    sub_24E601704(v8, &qword_27F215598);
  }

  else
  {
    v26 = v49;
    sub_24E60169C(v8, v49, &qword_27F215598);
    if (v25(&v8[v24], 1, v1) == 1)
    {
      v27 = v26;
LABEL_11:
      sub_24E601704(v19, &qword_27F215598);
      sub_24E601704(v22, &qword_27F215598);
      (v52[1])(v27, v1);
      goto LABEL_12;
    }

    v51 = v25;
    (v52[4])(v50, &v8[v24], v1);
    sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
    v39 = sub_24F92AFF8();
    v28 = v52[1];
    v28(v50, v1);
    sub_24E601704(v19, &qword_27F215598);
    sub_24E601704(v22, &qword_27F215598);
    v28(v26, v1);
    sub_24E601704(v8, &qword_27F215598);
    if ((v39 & 1) == 0)
    {
      return 1;
    }
  }

  v22 = v47;
  sub_24EC19D94(v47);
  v19 = v46;
  v42(v46, v43, v1);
  v41(v19, 0, 1, v1);
  v29 = *(v44 + 48);
  v8 = v48;
  sub_24E60169C(v22, v48, &qword_27F215598);
  sub_24E60169C(v19, &v8[v29], &qword_27F215598);
  v30 = v51;
  if (v51(v8, 1, v1) != 1)
  {
    v27 = v40;
    sub_24E60169C(v8, v40, &qword_27F215598);
    if (v30(&v8[v29], 1, v1) == 1)
    {
      goto LABEL_11;
    }

    v32 = v19;
    v33 = v22;
    v34 = v52;
    v35 = v50;
    (v52[4])(v50, &v8[v29], v1);
    sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570]);
    v36 = sub_24F92AFF8();
    v37 = v34[1];
    v37(v35, v1);
    sub_24E601704(v32, &qword_27F215598);
    sub_24E601704(v33, &qword_27F215598);
    v37(v27, v1);
    sub_24E601704(v8, &qword_27F215598);
    return (v36 & 1) == 0;
  }

  sub_24E601704(v19, &qword_27F215598);
  sub_24E601704(v22, &qword_27F215598);
  if (v30(&v8[v29], 1, v1) != 1)
  {
    goto LABEL_12;
  }

  sub_24E601704(v8, &qword_27F215598);
  return 0;
}

uint64_t sub_24EC1AFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherWelcomePageView(0);
  result = sub_24E60169C(v1 + *(v7 + 36), v11, &qword_27F215690);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_24EC1B12C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PlayTogetherWelcomePageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v48[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B990);
  MEMORY[0x28223BE20](v9);
  v11 = &v48[-v10];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B998);
  MEMORY[0x28223BE20](v58);
  v59 = &v48[-v12];
  v13 = type metadata accessor for PlayTogetherWelcomePage(0);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v14 = (v1 + *(v13 + 36));
  v15 = v14[1];
  v56 = *v14;
  v57 = v15;

  v55 = sub_24F926C88();
  v50 = v13;
  sub_24E60169C(v1 + *(v13 + 44), &v63, &qword_27F22B958);
  if (v65 == 1)
  {
    sub_24E601704(&v63, &qword_27F22B958);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    sub_24E60169C(&v63, &v66, qword_27F21B590);
    sub_24E601704(&v63, &qword_27F213EA8);
  }

  sub_24E60169C(v69, (v11 + 88), qword_27F21B590);
  v16 = *(v1 + *(v2 + 20));
  v53 = 0x800000024FA56AB0;
  sub_24EC1BBA4(v1, v8, type metadata accessor for PlayTogetherWelcomePageView);
  v17 = *(v3 + 80);
  v18 = v8;
  v54 = v8;
  v19 = (v17 + 16) & ~v17;
  v52 = swift_allocObject();
  sub_24EC1BC10(v18, v52 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24EC1BBA4(v1, v5, type metadata accessor for PlayTogetherWelcomePageView);
  v51 = swift_allocObject();
  sub_24EC1BC10(v5, v51 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24EC1BBA4(v1, v5, type metadata accessor for PlayTogetherWelcomePageView);
  v20 = swift_allocObject();
  sub_24EC1BC10(v5, v20 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24E60169C(v1, &v11[v9[34]], qword_27F220E38);
  LODWORD(v50) = *(v1 + *(v50 + 24));

  v49 = sub_24EC1A83C();
  v21 = &v11[v9[37]];
  LOBYTE(v62) = 0;
  sub_24F926F28();
  v22 = v64;
  *v21 = v63;
  *(v21 + 1) = v22;
  v23 = &v11[v9[38]];
  LOBYTE(v62) = 0;
  sub_24F926F28();
  v24 = v64;
  *v23 = v63;
  *(v23 + 1) = v24;
  v25 = &v11[v9[39]];
  v62 = 0;
  sub_24F926F28();
  v26 = v64;
  *v25 = v63;
  v25[1] = v26;
  v27 = v9[40];
  *&v11[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v28 = v9[41];
  *&v11[v28] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v9[42];
  *&v11[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v30 = &v11[v9[43]];
  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = v66;
  *(v11 + 40) = v67;
  v34 = v57;
  *v11 = v56;
  *(v11 + 1) = v34;
  *(v11 + 2) = v55;
  v35 = v68;
  *(v11 + 24) = v33;
  *(v11 + 64) = 0;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 7) = v35;
  *(v11 + 8) = 0;
  *(v11 + 17) = v16;
  *(v11 + 18) = 0xD00000000000001BLL;
  *(v11 + 19) = v53;
  *(v11 + 20) = sub_24EC1BC78;
  *(v11 + 21) = v52;
  *(v11 + 22) = sub_24EC1D544;
  *(v11 + 23) = v51;
  *(v11 + 24) = sub_24EC1D6EC;
  *(v11 + 25) = v20;
  *(v11 + 26) = CGSizeMake;
  *(v11 + 27) = 0;
  v11[v9[35]] = v50;
  v11[v9[36]] = v49;
  sub_24F925818();
  sub_24F923318();
  *&v66 = v36;
  *(&v66 + 1) = v37;
  *&v67 = v38;
  *(&v67 + 1) = v39;
  LOBYTE(v68) = 0;
  v40 = v59;
  sub_24F9252D8();
  sub_24E6009C8(v11, v40, &qword_27F22B990);
  v41 = v1;
  v42 = v54;
  sub_24EC1BBA4(v41, v54, type metadata accessor for PlayTogetherWelcomePageView);
  v43 = swift_allocObject();
  sub_24EC1BC10(v42, v43 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B9A0);
  v45 = v60;
  v46 = (v60 + *(v44 + 36));
  sub_24F923AD8();
  sub_24F92B818();
  sub_24E601704(v69, qword_27F21B590);
  *v46 = &unk_24F98D3E8;
  v46[1] = v43;
  return sub_24E6009C8(v40, v45, &qword_27F22B998);
}

uint64_t sub_24EC1BA34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24EC19F7C(v21);
  v4 = type metadata accessor for PlayTogetherWelcomePage(0);
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(a1 + v4[8]);
  v11 = v4[5];
  v12 = type metadata accessor for PlayTogetherWelcomePageView.ContentView(0);
  sub_24E60169C(a1 + v11, a2 + *(v12 + 28), &qword_27F213FB0);
  v13 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v13;
  *(a2 + 64) = v21[4];
  v14 = v22;
  v15 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  sub_24EC18018(v6, v7, v8, v9);
  v16 = qword_27F211270;

  if (v16 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v18 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAD0);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  return result;
}

uint64_t sub_24EC1BBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC1BC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC1BC78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EC1BA34(v4, a1);
}

double sub_24EC1BCF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EC192EC(v9);
  v4 = *(type metadata accessor for PlayTogetherWelcomePage(0) + 20);
  v5 = type metadata accessor for PlayTogetherWelcomePageView.Header(0);
  sub_24E60169C(a1 + v4, a2 + *(v5 + 20), &qword_27F213FB0);
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v10;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  return result;
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    goto LABEL_55;
  }

  v5 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v6 = *(*(v5 - 1) + 48);
  if (!v6(v3, 1, v5))
  {

    v7 = v3 + v5[5];
    v8 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v75 = sub_24F9289E8();
          (*(*(v75 - 8) + 8))(v7, v75);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v9 = v3 + v5[7];
          v10 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v12 = sub_24F928388();
              (*(*(v12 - 8) + 8))(v9, v12);
            }
          }

          v13 = v3 + v5[10];
          if (*(v13 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v13);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v63 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v64 = type metadata accessor for JSColor();
        if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
        {
          v65 = sub_24F928388();
          (*(*(v65 - 8) + 8))(v63, v65);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v72 = sub_24F9289E8();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v7, 1, v72))
        {
          (*(v73 + 8))(v7, v72);
        }

        if (*(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v3 + v4[5];
  if (v6(v14, 1, v5))
  {
    goto LABEL_32;
  }

  v15 = v14 + v5[5];
  v16 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    goto LABEL_17;
  }

  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 2)
  {
    if (!v19)
    {

      v66 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v67 = type metadata accessor for JSColor();
      if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
      {
        v68 = sub_24F928388();
        (*(*(v68 - 8) + 8))(v66, v68);
      }

      goto LABEL_17;
    }

    if (v19 == 1)
    {
      v74 = sub_24F9289E8();
      v95 = *(v74 - 8);
      if (!(*(v95 + 48))(v15, 1, v74))
      {
        (*(v95 + 8))(v15, v74);
      }

      if (*(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v19 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v19)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v78 = sub_24F9289E8();
      (*(*(v78 - 8) + 8))(v15, v78);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v17 = v14 + v5[7];
  v18 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v20 = sub_24F928388();
      (*(*(v20 - 8) + 8))(v17, v20);
    }
  }

  v21 = v14 + v5[10];
  if (*(v21 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

LABEL_32:
  v22 = v3 + v4[6];
  if (v6(v22, 1, v5))
  {
    goto LABEL_49;
  }

  v23 = v22 + v5[5];
  v24 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    goto LABEL_34;
  }

  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 2)
  {
    if (!v27)
    {

      v69 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v70 = type metadata accessor for JSColor();
      if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        v71 = sub_24F928388();
        (*(*(v71 - 8) + 8))(v69, v71);
      }

      goto LABEL_34;
    }

    if (v27 == 1)
    {
      v76 = sub_24F9289E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v23, 1, v76))
      {
        (*(v77 + 8))(v23, v76);
      }

      if (*(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v27 != 2)
    {
      goto LABEL_34;
    }

LABEL_100:

    goto LABEL_34;
  }

  switch(v27)
  {
    case 3:
      goto LABEL_100;
    case 4:
      v79 = sub_24F9289E8();
      (*(*(v79 - 8) + 8))(v23, v79);
      break;
    case 5:
      goto LABEL_100;
  }

LABEL_34:
  v25 = v22 + v5[7];
  v26 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v28 = sub_24F928388();
      (*(*(v28 - 8) + 8))(v25, v28);
    }
  }

  v29 = v22 + v5[10];
  if (*(v29 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

LABEL_49:
  v30 = v3 + v4[7];
  if (*(v30 + 56) == 1)
  {
  }

  else if (!*(v30 + 56))
  {

    if (*(v30 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v30 + 16);
    }
  }

  v31 = v3 + v4[8];
  v32 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 == 2)
    {
      goto LABEL_146;
    }

    if (v51 != 1)
    {
      if (v51)
      {
        goto LABEL_55;
      }

      v52 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v52 - 8) + 48))(v31, 1, v52))
      {
        goto LABEL_55;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 2)
      {
        if (v53 != 3)
        {
          if (v53 == 4)
          {
            v94 = sub_24F9289E8();
            (*(*(v94 - 8) + 8))(v31, v94);
            goto LABEL_55;
          }

          if (v53 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_146;
      }

      if (v53)
      {
        if (v53 == 1)
        {
          v92 = sub_24F9289E8();
          v93 = *(v92 - 8);
          if (!(*(v93 + 48))(v31, 1, v92))
          {
            (*(v93 + 8))(v31, v92);
          }

          if (!*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v53 != 2)
        {
          goto LABEL_55;
        }

LABEL_146:

        goto LABEL_55;
      }

      v58 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v59 = type metadata accessor for JSColor();
      if ((*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        goto LABEL_55;
      }

LABEL_96:
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v58, v60);

      goto LABEL_55;
    }

    v54 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v55 = *(*(v54 - 8) + 48);
    if (v55(v31, 1, v54))
    {
LABEL_94:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v57 = v31 + *(v56 + 48);
      if (v55(v57, 1, v54))
      {
        goto LABEL_95;
      }

      v62 = swift_getEnumCaseMultiPayload();
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 != 1)
          {
            if (v62 != 2)
            {
              goto LABEL_95;
            }

LABEL_142:

            goto LABEL_95;
          }

          v88 = sub_24F9289E8();
          v89 = *(v88 - 8);
          if (!(*(v89 + 48))(v57, 1, v88))
          {
            (*(v89 + 8))(v57, v88);
          }

          if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v83 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v84 = type metadata accessor for JSColor();
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {
            v85 = sub_24F928388();
            (*(*(v85 - 8) + 8))(v83, v85);
          }
        }

LABEL_95:
        v58 = v31 + *(v56 + 80);
        v59 = type metadata accessor for JSColor();
        if ((*(*(v59 - 8) + 48))(v58, 1, v59))
        {
          goto LABEL_55;
        }

        goto LABEL_96;
      }

      if (v62 != 3)
      {
        if (v62 == 4)
        {
          v91 = sub_24F9289E8();
          (*(*(v91 - 8) + 8))(v57, v91);
          goto LABEL_95;
        }

        if (v62 != 5)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_142;
    }

    v61 = swift_getEnumCaseMultiPayload();
    if (v61 > 2)
    {
      if (v61 != 3)
      {
        if (v61 == 4)
        {
          v90 = sub_24F9289E8();
          (*(*(v90 - 8) + 8))(v31, v90);
          goto LABEL_94;
        }

        if (v61 != 5)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      if (!v61)
      {

        v80 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v81 = type metadata accessor for JSColor();
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {
          v82 = sub_24F928388();
          (*(*(v82 - 8) + 8))(v80, v82);
        }

        goto LABEL_94;
      }

      if (v61 == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v31, 1, v86))
        {
          (*(v87 + 8))(v31, v86);
        }

        if (*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_94;
      }

      if (v61 != 2)
      {
        goto LABEL_94;
      }
    }

    goto LABEL_94;
  }

LABEL_55:
  v33 = type metadata accessor for PlayTogetherWelcomePage(0);
  v34 = v33[5];
  v35 = sub_24F9289E8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v3 + v34, 1, v35))
  {
    (*(v36 + 8))(v3 + v34, v35);
  }

  if (*(v3 + v33[7] + 24))
  {
  }

  v37 = v3 + v33[11];
  if (*(v37 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v38 = v3 + v33[12];
  if (*(v38 + 24) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_24F925218();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v3 + v39, 1, v40))
    {
      (*(v41 + 8))(v3 + v39, v40);
    }
  }

  else
  {
  }

  v42 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_24F925218();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v3 + v42, 1, v43))
    {
      (*(v44 + 8))(v3 + v42, v43);
    }
  }

  else
  {
  }

  v45 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F923E98();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  v47 = v3 + v1[9];
  if (*(v47 + 40))
  {
    if (*(v47 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
    }
  }

  else
  {
  }

  v48 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F921B58();
    (*(*(v49 - 8) + 8))(v3 + v48, v49);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC1D55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EC19F7C(v21);
  v4 = type metadata accessor for PlayTogetherWelcomePage(0);
  v5 = (a1 + *(v4 + 28));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(a1 + *(v4 + 32));
  v11 = *(type metadata accessor for PlayTogetherWelcomePageView.ContentView(0) + 28);
  v12 = sub_24F9289E8();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v13;
  *(a2 + 64) = v21[4];
  v14 = v22;
  v15 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  sub_24EC18018(v6, v7, v8, v9);
  v16 = qword_27F211270;

  if (v16 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v18 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAD0);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  return result;
}

uint64_t sub_24EC1D704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EC1D788(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC1D87C, v4, v3);
}

uint64_t sub_24EC1D87C()
{

  sub_24EC1AFB0((v0 + 2));
  if (v0[5])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[10] = type metadata accessor for ReportPromptDidPresentAction();
    v0[11] = sub_24EC20494(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928A98();
    *boxed_opaque_existential_1 = 2;
    sub_24EC1B12C(v1);
    sub_24F9218A8();
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC1DA00()
{
  v2 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24EC1D788(v0 + v3);
}

uint64_t sub_24EC1DAE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_24F929888();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA48);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA50);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA58);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA60);
  MEMORY[0x28223BE20](v37);
  v16 = &v36 - v15;
  v17 = type metadata accessor for PlayTogetherWelcomePageView.Header(0);
  sub_24E60169C(v2 + *(v17 + 20), v7, &qword_27F213FB0);
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA68) + 36)];
  *v18 = 0;
  *(v18 + 4) = 1;
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v7[*(v5 + 44)];
  v20 = v45;
  *v19 = v44;
  *(v19 + 1) = v20;
  *(v19 + 2) = v46;
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F22BA48);
  v21 = &v11[*(v9 + 44)];
  v22 = v52;
  *(v21 + 4) = v51;
  *(v21 + 5) = v22;
  *(v21 + 6) = v53;
  v23 = v48;
  *v21 = v47;
  *(v21 + 1) = v23;
  v24 = v50;
  *(v21 + 2) = v49;
  *(v21 + 3) = v24;
  LOBYTE(v5) = sub_24F925838();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_24E6009C8(v11, v14, &qword_27F22BA50);
  v33 = &v14[*(v12 + 36)];
  *v33 = v5;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_24EC1FF6C();
  sub_24F9265E8();
  sub_24E601704(v14, &qword_27F22BA58);
  memset(v43, 0, 32);
  memset(v42, 0, sizeof(v42));
  v34 = v38;
  sub_24F9297A8();
  sub_24E601704(v42, &qword_27F2129B0);
  sub_24E601704(v43, &qword_27F2129B0);
  sub_24EC20250();
  sub_24F925EE8();
  (*(v39 + 8))(v34, v41);
  return sub_24E601704(v16, &qword_27F22BA60);
}

__n128 sub_24EC1DFB0@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAA8) + 44)];
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAB0);
  sub_24EC1E140(v1, &v6[*(v7 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, a1, &qword_27F22BAA0);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAB8) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_24EC1E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = *(a1 + 112);
  if (v14 && (v15 = *(a1 + 96)) != 0)
  {
    v33 = a2;
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);

    *v7 = sub_24F924C98();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10) + 44)];
    v19 = v16;
    a2 = v33;
    sub_24EC1E414(v19, v15, v17, v14, v18);

    sub_24E6009C8(v7, v13, &qword_27F220B08);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v32 - v12, 1, 1, v4);
  }

  v20 = *(a1 + 120);
  sub_24EC2030C(v13, v10);
  sub_24EC2030C(v10, a2);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC8) + 48));
  v22 = *(a1 + 64);
  v36 = *(a1 + 48);
  v37 = v22;
  v23 = *(a1 + 80);
  v24 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v24;
  v35 = *(a1 + 32);
  v25 = v35;
  *&v38 = v23;
  *(&v38 + 1) = v20;
  *v21 = v34[0];
  v21[1] = v24;
  v26 = v36;
  v27 = v38;
  v21[4] = v37;
  v21[5] = v27;
  v21[2] = v25;
  v21[3] = v26;

  sub_24EC2037C(v34, v39);
  sub_24EC203D8(v13);
  v28 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v28;
  v39[4] = *(a1 + 64);
  v29 = *(a1 + 80);
  v30 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v30;
  v40 = v29;
  v41 = v20;
  sub_24EC20440(v39);
  return sub_24EC203D8(v10);
}

uint64_t sub_24EC1E414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v56 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v51);
  v52 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v57 = a1;
  v58 = a2;
  v48[1] = sub_24E600AEC();

  v13 = sub_24F925E18();
  v15 = v14;
  v17 = v16;
  sub_24F925988();
  v18 = sub_24F925C98();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_24E600B40(v13, v15, v17 & 1);

  v57 = v18;
  v58 = v20;
  v22 &= 1u;
  v59 = v22;
  v60 = v24;
  sub_24F9268B8();
  sub_24E600B40(v18, v20, v22);

  v57 = v49;
  v58 = v50;

  v25 = sub_24F925E18();
  v27 = v26;
  LOBYTE(v15) = v28;
  v29 = sub_24F9251C8();
  v30 = *(v51 + 36);
  v31 = *MEMORY[0x277CE13B8];
  v32 = sub_24F927748();
  v33 = v52;
  (*(*(v32 - 8) + 104))(&v52[v30], v31, v32);
  *v33 = v29;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v34 = sub_24F925C58();
  v36 = v35;
  LOBYTE(v29) = v37;
  v51 = v38;
  sub_24E600B40(v25, v27, v15 & 1);

  sub_24E601704(v33, &qword_27F213F10);
  v39 = v53;
  v40 = v54;
  v41 = *(v54 + 16);
  v42 = v12;
  v43 = v55;
  v41(v53, v12, v55);
  v44 = v56;
  v41(v56, v39, v43);
  v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50) + 48)];
  *v45 = v34;
  *(v45 + 1) = v36;
  LOBYTE(v29) = v29 & 1;
  v45[16] = v29;
  *(v45 + 3) = v51;
  sub_24E5FD138(v34, v36, v29);
  v46 = *(v40 + 8);

  v46(v42, v43);
  sub_24E600B40(v34, v36, v29);

  return (v46)(v39, v43);
}

uint64_t sub_24EC1E84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24EC1E994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24EC1EAB8()
{
  sub_24EC1F294(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F220ED0);
      if (v2 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22B9B8);
        if (v3 <= 0x3F)
        {
          sub_24EC1F230(319, &qword_27F22B9C0, &qword_27F22B938, &unk_24F98D288, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F254DE0);
            if (v5 <= 0x3F)
            {
              sub_24EC1F230(319, &qword_27F22B9C8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EC1ECC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PlayTogetherWelcomePage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_24EC1EEB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PlayTogetherWelcomePage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_24EC1F094()
{
  type metadata accessor for PlayTogetherWelcomePage(319);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      sub_24EC1F230(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24EC1F294(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24EC1F230(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24EC1F294(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24EC1F230(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24EC1F294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24EC1F2FC()
{
  result = qword_27F22B9E0;
  if (!qword_27F22B9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B9A0);
    sub_24EC1F3B8();
    sub_24EC20494(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B9E0);
  }

  return result;
}

unint64_t sub_24EC1F3B8()
{
  result = qword_27F22B9E8;
  if (!qword_27F22B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B998);
    sub_24E602068(&qword_27F22B9F0, &qword_27F22B990);
    sub_24EC20494(&qword_27F2156E0, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B9E8);
  }

  return result;
}

uint64_t sub_24EC1F4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EC1F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EC1F5F4()
{
  sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24EC1F6A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EC1F6C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_24EC1F724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EC1F800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 112) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EC1F8D0()
{
  sub_24E66ECF0(319, &qword_27F22B9B8);
  if (v0 <= 0x3F)
  {
    sub_24EC1F230(319, &qword_27F22B9C0, &qword_27F22B938, &unk_24F98D288, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EC1FA0C()
{
  result = qword_27F22BA18;
  if (!qword_27F22BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA18);
  }

  return result;
}

unint64_t sub_24EC1FA64()
{
  result = qword_27F22BA20;
  if (!qword_27F22BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA20);
  }

  return result;
}

unint64_t sub_24EC1FAF4()
{
  result = qword_27F22BA28;
  if (!qword_27F22BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA28);
  }

  return result;
}

unint64_t sub_24EC1FB4C()
{
  result = qword_27F22BA30;
  if (!qword_27F22BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA30);
  }

  return result;
}

unint64_t sub_24EC1FBA4()
{
  result = qword_27F22BA38;
  if (!qword_27F22BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA38);
  }

  return result;
}

unint64_t sub_24EC1FBFC()
{
  result = qword_27F22BA40;
  if (!qword_27F22BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA40);
  }

  return result;
}

uint64_t sub_24EC1FC50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA56AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA56AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6772614D65676170 && a2 == 0xEB00000000736E69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374656C6C7562 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x417373696D736964 && a2 == 0xED00006E6F697463)
  {

    return 8;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24EC1FF6C()
{
  result = qword_27F22BA70;
  if (!qword_27F22BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA58);
    sub_24EC1FFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA70);
  }

  return result;
}

unint64_t sub_24EC1FFF8()
{
  result = qword_27F22BA78;
  if (!qword_27F22BA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA50);
    sub_24EC20084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA78);
  }

  return result;
}

unint64_t sub_24EC20084()
{
  result = qword_27F22BA80;
  if (!qword_27F22BA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA48);
    sub_24EC20110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA80);
  }

  return result;
}

unint64_t sub_24EC20110()
{
  result = qword_27F22BA88;
  if (!qword_27F22BA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA68);
    sub_24EC2019C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA88);
  }

  return result;
}

unint64_t sub_24EC2019C()
{
  result = qword_27F22BA90;
  if (!qword_27F22BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0);
    sub_24EC20494(&qword_27F214C28, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA90);
  }

  return result;
}

unint64_t sub_24EC20250()
{
  result = qword_27F22BA98;
  if (!qword_27F22BA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA60);
    sub_24EC1FF6C();
    sub_24EC20494(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA98);
  }

  return result;
}

uint64_t sub_24EC2030C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC203D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC20494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC204E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA60);
  sub_24EC20250();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EC2054C()
{
  result = qword_27F22BAD8;
  if (!qword_27F22BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BAB8);
    sub_24E602068(&qword_27F22BAE0, &qword_27F22BAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BAD8);
  }

  return result;
}

uint64_t sub_24EC20610(uint64_t a1)
{
  v32 = sub_24F91EB98();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_24F458518(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_24F92C6B8();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_24F91EB68();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_24F458518(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_24E6586A8(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_24E6586A8(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

GameStoreKit::HttpTemplateSubstitutions __swiftcall HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)(Swift::OpaquePointer urlQuery, Swift::OpaquePointer headers, Swift::OpaquePointer jsonBody, Swift::OpaquePointer formBody)
{
  v9 = v4;
  v10 = MEMORY[0x277D84F90];
  sub_24E6086DC(MEMORY[0x277D84F90]);
  sub_24E6086DC(v10);
  sub_24E608448(v10);
  sub_24E6086DC(v10);

  v9->_rawValue = urlQuery._rawValue;
  v9[1]._rawValue = headers._rawValue;
  v9[2]._rawValue = jsonBody._rawValue;
  v9[3]._rawValue = formBody._rawValue;
  result.formBody._rawValue = v14;
  result.jsonBody._rawValue = v13;
  result.headers._rawValue = v12;
  result.urlQuery._rawValue = v11;
  return result;
}

Swift::Void __swiftcall HttpTemplateSubstitutions.setParameter(value:for:)(Swift::String value, GameStoreKit::HttpTemplateParameter *a2)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = a2->key._countAndFlagsBits;
  v5 = a2->key._object;
  if (a2->target > GameStoreKit_HttpTemplateParameter_Target_header)
  {
    if (a2->target == GameStoreKit_HttpTemplateParameter_Target_jsonBody)
    {
      v11 = MEMORY[0x277D837D0];
      v10 = value;

      sub_24E98859C(&v10, v6, v5);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10._countAndFlagsBits = v2[3];
      sub_24E81D324(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

      v2[3] = v10._countAndFlagsBits;
    }
  }

  else if (a2->target)
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = v2[1];
    sub_24E81D324(countAndFlagsBits, object, v6, v5, v8);

    v2[1] = v10._countAndFlagsBits;
  }

  else
  {

    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = *v2;
    sub_24E81D324(countAndFlagsBits, object, v6, v5, v7);

    *v2 = v10._countAndFlagsBits;
  }
}

void sub_24EC20BD4(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    v20 = sub_24F92CDE8();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_24EC26E88();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_24E601704(v26, &qword_27F2129B0);
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t HttpTemplateError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

NSMutableDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HttpTemplateJsonBody.makeMutableDictionary()()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = sub_24F92B138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92B128();
  v4 = sub_24F92B0E8();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_24EC26E34();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_24F91F4C8();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E643A9C(v17, v16);
      sub_24EC26E88();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_24E71CBAC(v4, v6);
        return v15;
      }

      else
      {
        sub_24EC26E34();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_24E71CBAC(v4, v6);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_24F91F278();

      swift_willThrow();
      return sub_24E71CBAC(v4, v6);
    }
  }
}

unint64_t HttpTemplateJsonBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

unint64_t sub_24EC21208()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_24EC212A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_24F928348();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = MEMORY[0x277D84F90];
    *v17 = a3;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D22538], v15);
    swift_willThrow();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_24F928388();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

uint64_t HttpTemplateFormBody.makeDictionary()()
{
  sub_24E600AEC();
  v0 = sub_24F92C4E8();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = MEMORY[0x277D84F98];
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_24F92C4E8();
      if (v6[2] < 2uLL)
      {

        sub_24EC26E34();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_24F92C588();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_24E76D644(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24E8AF124();
          }
        }

        else
        {
          sub_24E89B77C(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_24E76D644(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_24E76D644(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24E8AF124();
            v24 = v4;
          }

          sub_24EB53354(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_24F92CF88();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
LABEL_24:

    return v24;
  }

  return result;
}

uint64_t sub_24EC2186C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

unint64_t HttpTemplateFormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_24EC21930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_24F928348();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = MEMORY[0x277D84F90];
    *v17 = v4;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D22538], v15);
    swift_willThrow();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_24F928388();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

unint64_t sub_24EC21AF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

GameStoreKit::HttpTemplateParameter::Target_optional __swiftcall HttpTemplateParameter.Target.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EC21C4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC21D0C()
{
  sub_24F92B218();
}

uint64_t sub_24EC21DB8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC21E80(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

GameStoreKit::HttpTemplateParameter::InputType_optional __swiftcall HttpTemplateParameter.InputType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EC21FE0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC220A4()
{
  sub_24F92B218();
}

uint64_t sub_24EC22154()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC22220(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void __swiftcall HttpTemplateParameter.init(key:target:inputType:title:isRequired:maximumLength:)(GameStoreKit::HttpTemplateParameter *__return_ptr retstr, Swift::String key, GameStoreKit::HttpTemplateParameter::Target target, GameStoreKit::HttpTemplateParameter::InputType inputType, Swift::String_optional title, Swift::Bool isRequired, Swift::Int_optional maximumLength)
{
  v7 = *target;
  v8 = *inputType;
  retstr->key = key;
  retstr->target = v7;
  retstr->inputType = v8;
  retstr->title = title;
  retstr->isRequired = isRequired;
  *(&retstr->maximumLength.value + 7) = maximumLength.value;
  LOBYTE(retstr[1].key._countAndFlagsBits) = maximumLength.is_nil;
}

uint64_t HttpTemplateParameter.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v40 = a2;
  v4 = 7955819;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = 0xE300000000000000;
  sub_24F928398();
  v37 = sub_24F928348();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    v39 = v16;
    v4 = 0x746567726174;
    sub_24F928398();
    sub_24EC26ED4();
    sub_24F928248();
    v17(v10, v5);
    v18 = v42;
    if (v42 == 4)
    {

      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE900000000000065;
      sub_24F928398();
      sub_24EC26F28();
      sub_24F928248();
      v17(v10, v5);
      v19 = v41;
      if (v41 != 4)
      {
        sub_24F928398();
        v24 = sub_24F928348();
        v34 = v25;
        v35 = v24;
        v17(v10, v5);
        v26 = v36;
        sub_24F928398();
        v27 = sub_24F928278();
        v17(v26, v5);
        LODWORD(v36) = v27 & 1;
        sub_24F928398();
        v28 = sub_24F928258();
        LOBYTE(v26) = v29;
        v30 = sub_24F9285B8();
        (*(*(v30 - 8) + 8))(v40, v30);
        v17(a1, v5);
        result = (v17)(v10, v5);
        v31 = v38;
        v32 = v39;
        *v38 = v37;
        v31[1] = v32;
        *(v31 + 16) = v18;
        *(v31 + 17) = v19;
        v33 = v34;
        v31[3] = v35;
        v31[4] = v33;
        *(v31 + 40) = v36;
        v31[6] = v28;
        *(v31 + 56) = v26 & 1;
        return result;
      }

      v4 = 0x7059547475706E69;
    }
  }

  v20 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v21 = v4;
  v21[1] = v14;
  v21[2] = &type metadata for HttpTemplateParameter;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
  swift_willThrow();
  v22 = sub_24F9285B8();
  (*(*(v22 - 8) + 8))(v40, v22);
  return (v17)(a1, v5);
}

uint64_t HttpTemplateParameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HttpTemplateParameter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HttpTemplateSubstitutions.urlQuery.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.jsonBody.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.formBody.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24EC22940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_24F91EB98();
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v89 - v12;
  v14 = sub_24F91EC58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v2;
  if (!*(v97 + 16))
  {
    v19 = sub_24F91F4A8();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_24F91EBE8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24E601704(v13, &qword_27F219F98);
    sub_24EC26E34();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v95, v13, v14);
  v20 = sub_24F91EBC8();
  v93 = v8;
  v94 = v3;
  v90 = a2;
  v91 = v15;
  v92 = v14;
  if (!v20)
  {
    v23 = MEMORY[0x277D84F98];
LABEL_31:
    v56 = (v97 + 64);
    v57 = 1 << *(v97 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v97 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v104 = v60;
    v105 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v97 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = v69[1];
      v106 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v72 = sub_24E76D644(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_24E8AF124();
          v72 = v83;
        }
      }

      else
      {
        sub_24E89B77C(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_24E76D644(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v107;
        v63 = (v107[7] + 16 * v62);
        *v63 = v106;
        v63[1] = v70;
      }

      else
      {
        v23 = v107;
        v107[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v106;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v104;
      v56 = v105;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_24EC20610(v23);

    v84 = v95;
    sub_24F91EBD8();
    v85 = v93;
    sub_24F91EBF8();
    v86 = sub_24F91F4A8();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      sub_24E601704(v85, &qword_27F228530);
      sub_24EC26E34();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();
      return (*(v91 + 8))(v84, v92);
    }

    else
    {
      (*(v91 + 8))(v84, v92);
      return (*(v87 + 32))(v90, v85, v86);
    }
  }

  v21 = v20;
  v102 = *(v20 + 16);
  if (!v102)
  {
    v23 = MEMORY[0x277D84F98];
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v100 = v20 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v98 = v106 + 8;
  v99 = v106 + 16;
  v23 = MEMORY[0x277D84F98];
  v96 = v9;
  v101 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v105;
    v27 = v106;
    (*(v106 + 16))(v105, v100 + *(v106 + 72) * v22, v9);
    v28 = sub_24F91EB78();
    v30 = v29;
    v31 = sub_24F91EB88();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_24E76D644(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_24E8AF124();
          v23 = v107;
        }

        sub_24EB53354(v47, v23);
        v21 = v101;
      }

      else
      {
        v23 = v25;
        v21 = v101;
      }

      goto LABEL_10;
    }

    v103 = v33;
    v104 = v31;
    v21 = v101;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v25;
    v36 = v28;
    v38 = sub_24E76D644(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_24E8AF124();
      }

      v43 = v30;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_24E89B77C(v41, v35);
      v43 = v30;
      v44 = sub_24E76D644(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v107;
        v107[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v104;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v107;
    v24 = (v107[7] + 16 * v38);
    *v24 = v104;
    v24[1] = v46;

LABEL_9:
    v9 = v96;
LABEL_10:
    if (v102 == ++v22)
    {
      goto LABEL_30;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EC231EC(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(v35 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v35 + 56) + v13);
    v18 = v17[1];
    v36 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_24E76D644(v16, v15);
    v22 = a1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (a1[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_24E8AF124();
        v20 = v32;
      }
    }

    else
    {
      sub_24E89B77C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_24E76D644(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      v11 = (a1[7] + 16 * v10);
      *v11 = v36;
      v11[1] = v18;
    }

    else
    {
      a1[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a1[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      v29 = (a1[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v18;
      v30 = a1[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a1[2] = v31;
    }

    v9 = v12;
    v4 = v34;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24EC2342C(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = sub_24F92B138();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  if (v6)
  {
    v7 = *(v1 + 16);
    *&v42 = *a1;
    *(&v42 + 1) = v6;
    v8.super.super.isa = HttpTemplateJsonBody.makeMutableDictionary()().super.super.isa;
    if (!v9)
    {
      v34[1] = v5;
      v34[2] = 0;
      isa = v8.super.super.isa;
      v10 = 1 << *(v7 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v7 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_24E643A9C(*(v7 + 56) + 32 * v19, v38);
      *&v39 = v22;
      *(&v39 + 1) = v21;
      sub_24E612B0C(v38, &v40);

      v17 = v15;
      while (1)
      {
        v42 = v39;
        v43[0] = v40;
        v43[1] = v41;
        v23 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          break;
        }

        v24 = v42;
        sub_24E612B0C(v43, &v39);
        *&v38[0] = v24;
        *(&v38[0] + 1) = v23;
        v36 = 46;
        v37 = 0xE100000000000000;
        sub_24E600AEC();
        v25 = sub_24F92C4E8();

        sub_24EC20BD4(&v39, v25);

        __swift_destroy_boxed_opaque_existential_1(&v39);
        v14 = v17;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (v13 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v15 >= v13)
          {
            break;
          }

          v12 = *(v7 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v12 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      v26 = objc_opt_self();
      *&v42 = 0;
      v27 = isa;
      v28 = [v26 dataWithJSONObject:isa options:0 error:&v42];
      v29 = v42;
      if (v28)
      {
        v30 = sub_24F91F4E8();
        v32 = v31;

        sub_24F92B128();
        sub_24F92B0F8();

        sub_24E627880(v30, v32);
      }

      else
      {
        v33 = v29;
        sub_24F91F278();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_24EC2376C(uint64_t *a1)
{
  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v56 = *a1;
  v57 = v3;
  result = HttpTemplateFormBody.makeDictionary()();
  if (!v2)
  {
    v6 = result;
    v7 = v4 + 64;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v53 = v4 + 64;
    v54 = v4;
    while (v10)
    {
      v15 = v12;
LABEL_15:
      v16 = (v15 << 10) | (16 * __clz(__rbit64(v10)));
      v17 = (*(v4 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = (*(v4 + 56) + v16);
      v21 = v20[1];
      v59 = *v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v23 = sub_24E76D644(v19, v18);
      v25 = *(v6 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_37;
      }

      v29 = v24;
      if (*(v6 + 24) >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = v23;
          sub_24E8AF124();
          v23 = v35;
        }
      }

      else
      {
        sub_24E89B77C(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_24E76D644(v19, v18);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }
      }

      v10 &= v10 - 1;
      if (v29)
      {
        v13 = v23;

        v6 = v56;
        v14 = (*(v56 + 56) + 16 * v13);
        *v14 = v59;
        v14[1] = v21;
      }

      else
      {
        v6 = v56;
        *(v56 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v31 = (*(v6 + 48) + 16 * v23);
        *v31 = v19;
        v31[1] = v18;
        v32 = (*(v6 + 56) + 16 * v23);
        *v32 = v59;
        v32[1] = v21;
        v33 = *(v6 + 16);
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        *(v6 + 16) = v34;
      }

      v12 = v15;
      v7 = v53;
      v4 = v54;
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v15);
      ++v12;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v6 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v6 + 64);
    v39 = (v36 + 63) >> 6;

    v40 = 0;
    v59 = 0;
    for (i = 0xE000000000000000; v38; i = v52)
    {
      v42 = v40;
LABEL_32:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v44 = (v42 << 10) | (16 * v43);
      v45 = (*(v6 + 48) + v44);
      v46 = *v45;
      v47 = v45[1];
      v48 = (*(v6 + 56) + v44);
      v49 = *v48;
      v50 = v48[1];
      v58 = MEMORY[0x277D837D0];
      v56 = v46;
      v57 = v47;
      v55[3] = MEMORY[0x277D837D0];
      v55[0] = v49;
      v55[1] = v50;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v59 = sub_24EC23B08(v59, i, &v56, v55);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(v55);
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v39)
      {

        return v59;
      }

      v38 = *(v6 + 64 + 8 * v42);
      ++v40;
      if (v38)
      {
        v40 = v42;
        goto LABEL_32;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_24F92CF88();
    __break(1u);
  }

  return result;
}

uint64_t sub_24EC23B08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91EAA8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E643A9C(a3, v27);
  sub_24E643A9C(a4, &v28);
  sub_24EC274F8(v27, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24E601704(v27, &qword_27F22BB50);
    v21 = v26;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v21);

    return a1;
  }

  v13 = v23;
  v12 = v24;
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_24EC274F8(v27, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24E601704(v27, &qword_27F22BB50);

    v21 = v25;
    goto LABEL_14;
  }

  v15 = v23;
  v14 = v24;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v25[0] = a1;
  v25[1] = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    MEMORY[0x253050C20](38, 0xE100000000000000);
  }

  v23 = v15;
  v24 = v14;
  sub_24F91EA28();
  sub_24E600AEC();
  v17 = sub_24F92C578();
  v19 = v18;
  (*(v9 + 8))(v11, v8);

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v17 = 0;
    v20 = 0xE000000000000000;
  }

  v23 = v13;
  v24 = v12;
  MEMORY[0x253050C20](61, 0xE100000000000000);
  MEMORY[0x253050C20](v17, v20);

  MEMORY[0x253050C20](v23, v24);

  sub_24E601704(v27, &qword_27F22BB50);
  return v25[0];
}

uint64_t HttpTemplateAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v140 = a2;
  v134 = v3;
  v121 = *v3;
  v5 = sub_24F9285B8();
  v135 = *(v5 - 8);
  v136 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v131 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v109 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v124 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v109 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v127 = &v109 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v109 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v118 = &v109 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v109 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v109 - v37;
  v39 = sub_24F91F4A8();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a1;
  sub_24F928398();
  sub_24F928268();
  v43 = v39;
  v130 = v17;
  v46 = *(v17 + 8);
  v44 = v17 + 8;
  v45 = v46;
  v47 = v38;
  v48 = v40;
  v138 = v16;
  (v46)(v47, v16);
  if ((*(v40 + 48))(v15, 1, v43) == 1)
  {
    sub_24E601704(v15, &qword_27F228530);
    v49 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v50 = 7107189;
    v51 = v121;
    v50[1] = 0xE300000000000000;
    v50[2] = v51;
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D22530], v49);
    swift_willThrow();
    (*(v135 + 8))(v140, v136);
    (v45)(v137, v138);
    type metadata accessor for HttpTemplateAction();
    swift_deallocPartialClassInstance();
    return v16;
  }

  (*(v40 + 32))(v42, v15, v43);
  v52 = *(v40 + 16);
  v53 = v134;
  v117 = v43;
  v52(&v134[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_url], v42, v43);
  sub_24F928398();
  sub_24EC26FC8();
  sub_24F928208();
  v114 = v36;
  v54 = v138;
  (v45)(v36, v138);
  v53[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_method] = v139;
  v55 = v118;
  sub_24F928398();
  v56 = v122;
  sub_24F9281F8();
  v118 = v45;
  (v45)(v55, v54);
  v57 = sub_24F928E68();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  v112 = v58 + 48;
  v111 = v59;
  v60 = v59(v56, 1, v57);
  v61 = v134;
  v116 = v48;
  v115 = v42;
  v120 = v44;
  v113 = v57;
  v110 = v58;
  if (v60 == 1)
  {
    sub_24E601704(v56, qword_27F221C40);
    v62 = v135;
  }

  else
  {
    v63 = sub_24F928E48();
    (*(v58 + 8))(v56, v57);
    v62 = v135;
    if (v63)
    {
      goto LABEL_7;
    }
  }

  v63 = sub_24E6086DC(MEMORY[0x277D84F90]);

LABEL_7:
  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_headers] = v63;
  v64 = v114;
  sub_24F928398();
  v65 = *(v62 + 16);
  v66 = v133;
  v67 = v140;
  v68 = v136;
  v65(v133, v140, v136);
  sub_24EC2701C();
  sub_24F929548();
  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_jsonBody] = v139;
  sub_24F928398();
  v121 = v65;
  v122 = (v62 + 16);
  v65(v66, v67, v68);
  sub_24EC27070();
  sub_24F929548();
  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_formBody] = v139;
  v69 = v119;
  sub_24F928398();
  v70 = v124;
  sub_24F9281F8();
  v71 = v69;
  v72 = v118;
  v73 = v120;
  (v118)(v71, v138);
  v74 = v113;
  if (v111(v70, 1, v113) == 1)
  {
    sub_24E601704(v70, qword_27F221C40);
LABEL_10:
    v75 = sub_24E6091DC(MEMORY[0x277D84F90]);

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v75 = sub_24F928E48();
  (*(v110 + 8))(v70, v74);
  if (!v75)
  {
    goto LABEL_10;
  }

LABEL_11:
  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_dictionaryBody] = v75;
  v76 = v137;
  sub_24F928398();
  v121(v133, v140, v136);
  sub_24EC270C4();
  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_parameters] = sub_24F92B698();
  v77 = v123;
  sub_24F928398();
  v78 = sub_24F928278();
  v79 = v138;
  v72(v77, v138);
  v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest] = v78 & 1;
  v80 = v125;
  sub_24F928398();
  v81 = sub_24F928278();
  v72(v80, v79);
  v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_needsAuthentication] = v81 & 1;
  v82 = v126;
  sub_24F928398();
  v83 = sub_24F928278();
  v72(v82, v79);
  v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_needsMediaToken] = v83 & 1;
  v84 = v127;
  sub_24F928398();
  v85 = sub_24F928258();
  v87 = v86;
  v72(v84, v79);
  if (v87)
  {
    v88 = 0;
  }

  else
  {
    v88 = v85;
  }

  *&v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_retryCount] = v88;
  v89 = v128;
  sub_24F928398();
  v90 = sub_24F928278();
  v72(v89, v79);
  v61[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_disableCache] = v90 & 1;
  type metadata accessor for Action();
  sub_24F928398();
  v91 = v72;
  v92 = v61;
  v16 = v73;
  v93 = v140;
  v94 = static Action.tryToMakeInstance(byDeserializing:using:)(v64, v140);
  v91(v64, v79);
  *&v92[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_successAction] = v94;
  sub_24F928398();
  v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v64, v93);
  v91(v64, v79);
  *&v92[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_failureAction] = v95;
  sub_24F928398();
  v96 = sub_24F928348();
  v98 = v97;
  v99 = v64;
  v100 = v76;
  v101 = v136;
  v91(v99, v79);
  v102 = &v92[OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_message];
  *v102 = v96;
  v102[1] = v98;
  v103 = v140;
  v104 = v129;
  (*(v130 + 16))(v129, v100, v79);
  v105 = v131;
  v121(v131, v103, v101);
  v106 = v132;
  v107 = Action.init(deserializing:using:)(v104, v105);
  if (!v106)
  {
    v16 = v107;
  }

  (*(v135 + 8))(v103, v101);
  v91(v100, v138);
  (*(v116 + 8))(v115, v117);
  return v16;
}

uint64_t HttpTemplateAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EC24D28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t HttpTemplateAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_message);

  return v1;
}

void *sub_24EC24DF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v56 = a4;
  v58 = a3;
  v55 = a2;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F91F4A8();
  v69 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v61 = *a1;
  v65 = v61;
  v66 = v17;
  v60 = v17;
  v57 = v18;
  v67 = v18;
  v68 = v19;
  v59 = v6;
  sub_24EC22940(v6 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_url, &v53 - v15);
  if (!v5)
  {
    v54 = 0;
    v20 = v62;
    (*(v69 + 16))(v13, v16, v62);
    (v9[2])(v11, v56, v8);
    type metadata accessor for HttpAction();
    swift_allocObject();
    v9 = HttpAction.init(url:presentationStyle:actionMetrics:)(v13, 0, v11);
    v21 = v59;
    v22 = *(v59 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_method);
    v23 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
    swift_beginAccess();
    *(v9 + v23) = v22;
    v65 = v61;
    v66 = v60;
    v24 = v57;
    v67 = v57;
    v68 = v19;
    v25 = sub_24EC231EC(*(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_headers));
    v26 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
    swift_beginAccess();
    *(v9 + v26) = v25;

    v27 = v58;
    if (v58)
    {
      (*(v69 + 8))(v16, v20);
      v28 = (v9 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
      swift_beginAccess();
      *v28 = v55;
      v28[1] = v27;
    }

    else
    {
      v43 = v69;
      if (*(v24 + 16))
      {
        v65 = v61;
        v66 = v60;
        v67 = v24;
        v68 = v19;
        v44 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_jsonBody + 8);
        v63 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_jsonBody);
        v64 = v44;

        v45 = v54;
        sub_24EC2342C(&v63);
      }

      else
      {
        v65 = v61;
        v66 = v60;
        v67 = v24;
        v68 = v19;
        v48 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_formBody + 8);
        v63 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_formBody);
        v64 = v48;

        v45 = v54;
        v46 = sub_24EC2376C(&v63);
      }

      v49 = (v43 + 8);
      v54 = v45;
      if (v45)
      {

        (*v49)(v16, v62);
        return v9;
      }

      v50 = v46;
      v51 = v47;

      (*v49)(v16, v62);
      v52 = (v9 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
      swift_beginAccess();
      *v52 = v50;
      v52[1] = v51;
    }

    v29 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest);
    v30 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
    swift_beginAccess();
    *(v9 + v30) = v29;
    v31 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_needsAuthentication);
    v32 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
    swift_beginAccess();
    *(v9 + v32) = v31;
    v33 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_needsMediaToken);
    v34 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
    swift_beginAccess();
    *(v9 + v34) = v33;
    v35 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_retryCount);
    v36 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount;
    swift_beginAccess();
    *(v9 + v36) = v35;
    LOBYTE(v35) = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_disableCache);
    v37 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
    swift_beginAccess();
    *(v9 + v37) = v35;
    v38 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_successAction);
    v39 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction;
    swift_beginAccess();
    *(v9 + v39) = v38;

    v40 = *(v21 + OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_failureAction);
    v41 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction;
    swift_beginAccess();
    *(v9 + v41) = v40;
  }

  return v9;
}

uint64_t sub_24EC25430()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t HttpTemplateAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpTemplateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

_OWORD *sub_24EC25718(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24E612B0C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24EC2579C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 136 * result;
  v5 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(a2 + 128);
  v6 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t sub_24EC2582C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_24EC25884(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = a4[7] + 88 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a3 + 80);
  v8 = *(a3 + 64);
  *(v6 + 48) = *(a3 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a3 + 32);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_24EC25900(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 40 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = a4[7];
  v10 = sub_24F91F4A8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_24EC259C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_24EC25A24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_24EC25A88(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_24EC25AE4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Game();
  result = sub_24EC27568(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for Game);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24EC25BF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_24EC25CAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_24EC25D08(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_24E612B0C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_24EC25D70(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24E612B0C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_24EC25E04(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_24EC25E4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24F929598();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_24EC25F08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24EC25F50(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_24EC25F94(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 168 * a1;
  v6 = *(a2 + 144);
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = v6;
  *(v5 + 160) = *(a2 + 160);
  v7 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v7;
  v8 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v8;
  v9 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v9;
  v10 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v10;
  result = memcpy((a4[7] + 392 * a1), __src, 0x188uLL);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_24EC26038(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_24EC2608C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_24EC260DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_24EC26140(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_24EC261B4(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24EC26228(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_24EC26274(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_24EC262E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6] + 40 * a1;
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  *(v9 + 32) = *(a2 + 32);
  v11 = a4[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_24E6009C8(a3, v11 + *(*(v12 - 8) + 72) * a1, a5);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_24EC263D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_24EC27568(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24EC2647C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E200);
  result = sub_24E6009C8(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_27F23E200);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_24EC26550(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_24EC26604(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_24EC2665C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_24EC266A0(unint64_t result, char a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = (a4[7] + (result << 6));
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_24EC26724(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24EC26780(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_24EC267D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24F91F6B8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_24EC268D0(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = a4[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a4[7] + 16 * result;
  *v7 = a5;
  *(v7 + 8) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_24EC26948(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_24EC269BC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_24EC26A0C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 88 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a3 + 80);
  v6 = *(a3 + 64);
  *(v4 + 48) = *(a3 + 48);
  *(v4 + 64) = v6;
  *(v4 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_24EC26A74(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_24EC26ACC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_24EC26B2C(unint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a3[6];
  v10 = a4(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a3[7] + 8 * a1) = a5;
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

uint64_t sub_24EC26C28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for PaginatedShelfContent();
  result = sub_24EC27568(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for PaginatedShelfContent);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

unint64_t sub_24EC26CD8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 88 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a4 + 80);
  v8 = *(a4 + 64);
  *(v6 + 48) = *(a4 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a4 + 32);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_24EC26D44(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_24EC26D88(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_24EC26DD4(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, void *a6, double a7, double a8)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v8 = a6[6] + 32 * result;
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5 & 1;
  v9 = (a6[7] + 16 * result);
  *v9 = a7;
  v9[1] = a8;
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

unint64_t sub_24EC26E34()
{
  result = qword_27F22BAE8;
  if (!qword_27F22BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BAE8);
  }

  return result;
}

unint64_t sub_24EC26E88()
{
  result = qword_27F22BAF0;
  if (!qword_27F22BAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22BAF0);
  }

  return result;
}

unint64_t sub_24EC26ED4()
{
  result = qword_27F22BAF8;
  if (!qword_27F22BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BAF8);
  }

  return result;
}

unint64_t sub_24EC26F28()
{
  result = qword_27F22BB00;
  if (!qword_27F22BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB00);
  }

  return result;
}

uint64_t type metadata accessor for HttpTemplateAction()
{
  result = qword_27F22BB40;
  if (!qword_27F22BB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EC26FC8()
{
  result = qword_27F22BB08;
  if (!qword_27F22BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB08);
  }

  return result;
}

unint64_t sub_24EC2701C()
{
  result = qword_27F22BB10;
  if (!qword_27F22BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB10);
  }

  return result;
}

unint64_t sub_24EC27070()
{
  result = qword_27F22BB18;
  if (!qword_27F22BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB18);
  }

  return result;
}

unint64_t sub_24EC270C4()
{
  result = qword_27F22BB20;
  if (!qword_27F22BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB20);
  }

  return result;
}

unint64_t sub_24EC2711C()
{
  result = qword_27F22BB28;
  if (!qword_27F22BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB28);
  }

  return result;
}

unint64_t sub_24EC27174()
{
  result = qword_27F22BB30;
  if (!qword_27F22BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB30);
  }

  return result;
}

unint64_t sub_24EC271CC()
{
  result = qword_27F22BB38;
  if (!qword_27F22BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB38);
  }

  return result;
}

uint64_t sub_24EC27258(uint64_t a1, int a2)
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

uint64_t sub_24EC272A0(uint64_t result, int a2, int a3)
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

uint64_t sub_24EC27320(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24EC27368(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24EC273C0()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24EC274F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC27568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC27634(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24EC277CC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ArcadeUpsellCard()
{
  result = qword_27F22BB58;
  if (!qword_27F22BB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC2799C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24EC27B04(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_24EC27B04(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24EC27B04(319, &qword_27F22BB68, &qword_27F22BB70, &unk_24FA2EBE0, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24EC27B04(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EC27B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BB88);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ArcadeUpsellCard();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v41 = v15 + 40;
  sub_24E61DA68(&v44, (v15 + 40), qword_27F21B590);
  v40 = v13;
  v16 = *(v13 + 24);
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24EC285F0();
  v20 = v39;
  sub_24F92D108();
  if (v20)
  {
    v23 = v41;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v24 = v42;
    sub_24E601704(v23, qword_27F24EC90);
    return sub_24E601704(&v15[v24], &qword_27F215440);
  }

  else
  {
    v39 = v9;
    v33 = v6;
    v21 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v22 = v38;
    sub_24F92CC68();
    v26 = v45;
    *v15 = v44;
    *(v15 + 1) = v26;
    *(v15 + 4) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v47 = 1;
    sub_24E61D970();
    v32 = v12;
    sub_24F92CC68();
    v27 = v40;
    v28 = v21;
    sub_24E61DA68(&v44, v41, qword_27F24EC90);
    LOBYTE(v44) = 2;
    sub_24E65CAA0();
    v29 = v39;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v15[v42], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v44) = 3;
    sub_24EC286F8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v30 = v33;
    sub_24F92CC18();
    sub_24E6009C8(v30, &v15[v27[7]], &qword_27F213E68);
    LOBYTE(v44) = 4;
    sub_24EC286F8(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v31 = v36;
    sub_24F92CC68();
    sub_24E706B90(v31, &v15[v27[8]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BB70);
    v47 = 5;
    sub_24EC28644();
    sub_24F92CC18();
    (*(v28 + 8))(v32, v22);
    *&v15[v27[9]] = v44;
    sub_24EC28740(v15, v34, type metadata accessor for ArcadeUpsellCard);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24EC287A8(v15, type metadata accessor for ArcadeUpsellCard);
  }
}

unint64_t sub_24EC282C0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
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

uint64_t sub_24EC28374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC28920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC2839C(uint64_t a1)
{
  v2 = sub_24EC285F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC283D8(uint64_t a1)
{
  v2 = sub_24EC285F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC2844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24EC28524(uint64_t a1)
{
  *(a1 + 8) = sub_24EC286F8(&qword_27F21AA98, type metadata accessor for ArcadeUpsellCard);
  result = sub_24EC286F8(&qword_27F22BB78, type metadata accessor for ArcadeUpsellCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EC285F0()
{
  result = qword_27F22BB90;
  if (!qword_27F22BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB90);
  }

  return result;
}

unint64_t sub_24EC28644()
{
  result = qword_27F22BB98;
  if (!qword_27F22BB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BB70);
    sub_24EC286F8(&qword_27F21C758, type metadata accessor for JSColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BB98);
  }

  return result;
}

uint64_t sub_24EC286F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC28740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC287A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC2881C()
{
  result = qword_27F22BBA0;
  if (!qword_27F22BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BBA0);
  }

  return result;
}

unint64_t sub_24EC28874()
{
  result = qword_27F22BBA8;
  if (!qword_27F22BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BBA8);
  }

  return result;
}