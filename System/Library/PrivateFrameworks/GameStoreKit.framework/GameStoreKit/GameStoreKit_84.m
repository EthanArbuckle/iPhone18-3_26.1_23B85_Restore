uint64_t sub_24EE98178(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  if (v11)
  {
    result = sub_24EA09500();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v7 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v13 = *(v2 + v7);

    v14 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v13 = sub_24E617130(0, v13[2] + 1, 1, v13);
      *(v2 + v7) = v13;
    }

    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_24E617130((v16 > 1), v17 + 1, 1, v13);
    }

    v13[2] = v17 + 1;
    v13[v17 + 4] = v11;
    *(v2 + v7) = v13;
    swift_endAccess();
  }

  else
  {
    v18 = a1[3];
    result = sub_24EE98804(*a1, 1);
    if (!v18)
    {
      return result;
    }

    if (sub_24EA09500())
    {
      swift_beginAccess();

      sub_24EA0A8D8(v19);
      swift_endAccess();
    }

    else
    {
    }

    if (sub_24EA09500())
    {
      swift_beginAccess();

      sub_24EA0A904(v20);
      swift_endAccess();
    }

    v21 = *(v2 + *(*v2 + 736));
    if (v21)
    {
      v44 = v10;
      v45 = v18;
      v22 = *(v21 + 32);
      v23 = *(v18 + 16);
      v13 = (v23 + 64);
      v24 = 1 << *(v23 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v23 + 64);
      v27 = (v24 + 63) >> 6;
      v48 = (v8 + 48);
      v49 = v23;
      v42 = v8;
      v43 = (v8 + 32);
      swift_bridgeObjectRetain_n();
      v46 = v22;

      v11 = 0;
      v47 = MEMORY[0x277D84F90];
LABEL_17:
      v28 = v11;
      if (!v26)
      {
        goto LABEL_19;
      }

      do
      {
        v11 = v28;
LABEL_22:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        sub_24E60169C(*(*(v49 + 56) + ((v11 << 9) | (8 * v29))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v6, &unk_27F22EC30);
        if ((*v48)(v6, 1, v7) != 1)
        {
          v30 = *v43;
          (*v43)(v44, v6, v7);
          v31 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_24E616878(0, *(v31 + 2) + 1, 1, v31);
          }

          v33 = *(v31 + 2);
          v32 = *(v31 + 3);
          v34 = (v33 + 1);
          if (v33 >= v32 >> 1)
          {
            v47 = (v33 + 1);
            v36 = v31;
            v37 = v33;
            v38 = sub_24E616878(v32 > 1, v33 + 1, 1, v36);
            v34 = v47;
            v33 = v37;
            v31 = v38;
          }

          *(v31 + 2) = v34;
          v35 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v47 = v31;
          v30(&v31[v35 + *(v42 + 72) * v33], v44, v7);
          goto LABEL_17;
        }

        sub_24E601704(v6, &unk_27F22EC30);
        v28 = v11;
      }

      while (v26);
      while (1)
      {
LABEL_19:
        v11 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v11 >= v27)
        {
          break;
        }

        v26 = v13[v11];
        ++v28;
        if (v26)
        {
          goto LABEL_22;
        }
      }

      v39 = sub_24ED6555C(v47);

      if (v39)
      {

        sub_24EE99478(v40);
      }
    }
  }
}

uint64_t sub_24EE986C0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v5 = *a1;
  v6 = v1;
  v2 = type metadata accessor for DiffablePagePresenter();
  WitnessTable = swift_getWitnessTable();
  return sub_24EE86944(&v5, 1, 1, 0, v2, WitnessTable);
}

uint64_t sub_24EE98780()
{
  if (*(v0 + qword_27F39CC00))
  {

    sub_24ED92928();
  }

  return result;
}

uint64_t sub_24EE98804(uint64_t a1, char a2)
{
  *(v2 + qword_27F39CC10) = a1;

  if (a2)
  {
    v8 = a1;
    v9 = 0;

    v6 = type metadata accessor for DiffablePagePresenter();
    WitnessTable = swift_getWitnessTable();
    sub_24EE86944(&v8, 1, 1, 0, v6, WitnessTable);
    return sub_24E96513C(v8, v9);
  }

  return result;
}

uint64_t sub_24EE9890C(uint64_t result)
{
  if (*(v1 + qword_27F39CC00))
  {
    v2 = result;
    v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2326B8);
    v4[4] = sub_24E602068(&qword_27F2326C0, &qword_27F2326B8);
    v4[0] = v2;
    v3 = 1;

    sub_24ED91BFC(v4, &v3);

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_24EE989D0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v39, &v35);
    if ((a3 & 1) == 0)
    {
      v8 = v37;
      v9 = v38;
      __swift_project_boxed_opaque_existential_1(&v35, v37);
      (*(v9 + 8))(v33, a2, v8, v9);
      if (*&v33[0])
      {
        v30 = v33[0];
        v31 = v33[1];
        *&v32 = v34;
        sub_24E60169C(&v30, v33, &qword_27F22CE40);
        v10 = *&v33[0];
        sub_24E60169C(&v30, &v27, &qword_27F22CE40);

        v24 = v10;
        v25 = v28;
        v26 = v29;
        sub_24F92AD88();
        sub_24E601704(&v24, &qword_27F22CE40);
        sub_24E601704(&v30, &qword_27F22CE40);
        sub_24E601704(v33 + 8, &qword_27F2129B0);
      }

      else
      {
        sub_24E601704(v33, &qword_27F22ECF8);
        v19 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(&v35, v37);
        if ((*(v20 + 16))(a2, v19, v20))
        {
          v21 = *(v7 + 568);
          v30 = *(v7 + 552);
          v31 = v21;
          v32 = *(v7 + 584);
          v22 = type metadata accessor for DiffablePagePresenter();
          ReloadableItemPagePresenter.reloadItem(_:)(a1, v22, &protocol witness table for DiffablePagePresenter<A>);
        }
      }
    }

    v18 = &v35;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38);
  if (swift_dynamicCast())
  {
    sub_24E612C80(&v30, &v39);
    v11 = v40;
    v12 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v13 = (*(v12 + 8))(v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = v40;
      v16 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, v40);
      v17 = *(v16 + 16);

      v17(&v36, v15, v16);
      v35 = v14;
      sub_24F92AD88();

      sub_24E601704(&v35, &qword_27F22CE40);
    }

    v18 = &v39;
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_24EE98D70()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (v2)
  {
    v1 = *(v2 + 104);

    if (v1)
    {
      *(&v6 + 1) = type metadata accessor for Shelf();

      sub_24F928A58();
      v2 = v1;
      v3 = v5;
      v4 = v6;
      sub_24F92AD88();

      return sub_24E601704(&v2, &qword_27F22CE40);
    }
  }

  return result;
}

uint64_t sub_24EE98E7C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (v2)
  {
    v1 = *(v2 + 136);

    if (v1)
    {
      *(&v6 + 1) = type metadata accessor for Shelf();

      sub_24F928A58();
      v2 = v1;
      v3 = v5;
      v4 = v6;
      sub_24F92AD88();

      return sub_24E601704(&v2, &qword_27F22CE40);
    }
  }

  return result;
}

uint64_t sub_24EE98F88()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (v2)
  {
    v1 = *(v2 + 56);

    if (v1)
    {
      *(&v6 + 1) = type metadata accessor for Shelf();

      sub_24F928A58();
      v2 = v1;
      v3 = v5;
      v4 = v6;
      sub_24F92AD88();

      return sub_24E601704(&v2, &qword_27F22CE40);
    }
  }

  return result;
}

uint64_t sub_24EE990AC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  if (v1)
  {
    *(&v5 + 1) = type metadata accessor for Shelf();

    sub_24F928A58();
    v2 = v4;
    v3 = v5;
    sub_24F92AD88();

    return sub_24E601704(&v1, &qword_27F22CE40);
  }

  return result;
}

uint64_t sub_24EE99194(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = v3;
    v30 = v1;
    v37 = MEMORY[0x277D84F90];
    sub_24F457E94(0, v10, 0);
    v11 = v37;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v31 = *(v12 + 56);
    v32 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v32;
      v32(v9, v14, v4);
      v17 = v33;
      v16(v33, v9, v4);
      swift_getKeyPath();
      sub_24F928A48();

      v18 = *v15;
      (*v15)(v17, v4);
      v18(v9, v4);
      v37 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24F457E94((v19 > 1), v20 + 1, 1);
        v11 = v37;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      v22 = v34;
      v23 = v35;
      *(v21 + 64) = v36;
      *(v21 + 32) = v22;
      *(v21 + 48) = v23;
      v14 += v31;
      --v10;
    }

    while (v10);
    v3 = v29;
  }

  v37 = v11;
  v38 = 64;
  v24 = *(v3 + 568);
  v34 = *(v3 + 552);
  v35 = v24;
  v36 = *(v3 + 584);
  v25 = type metadata accessor for DiffablePagePresenter();
  WitnessTable = swift_getWitnessTable();
  sub_24EE86944(&v37, 1, 1, 0, v25, WitnessTable);
  return sub_24E96513C(v37, v38);
}

uint64_t sub_24EE99478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (a1)
  {
    type metadata accessor for PageRefreshGate();
    swift_allocObject();

    v5 = sub_24EA69948(v4);

    *(v2 + *(*v2 + 736)) = v5;

    v7 = *(v2 + *(*v2 + 736));
    if (v7)
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = *(v3 + 552);
      *(v9 + 32) = *(v3 + 568);
      *(v9 + 40) = *(v3 + 576);
      *(v9 + 56) = *(v3 + 592);
      *(v9 + 64) = v8;
      swift_beginAccess();
      v10 = *(v7 + 16);
      *(v7 + 16) = sub_24EE9C004;
      *(v7 + 24) = v9;

      sub_24E824448(v10);
    }
  }

  else
  {
    *(v1 + *(*v1 + 736)) = 0;
  }

  return result;
}

uint64_t sub_24EE99638(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    result = swift_beginAccess();
    if ((*(v2 + 8) & 1) == 0)
    {
      v4 = *(*v1 + 1352);

      v4(v5);
    }
  }

  else
  {
    v6 = *(*v1 + 1352);

    return v6();
  }

  return result;
}

void sub_24EE99724()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 40) = 1;
    sub_24EA67DA8();
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_24EE99828()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24EA09500();
  if (result)
  {
    v5 = result;

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    v8 = v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v9 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  return result;
}

void sub_24EE999A8()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 40) = 0;
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_24EE99AA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  result = sub_24EA09500();
  if (result)
  {
    v12 = result;
    v13 = sub_24F929FB8();
    (*(*(v13 - 8) + 16))(v10, a1, v13);

    sub_24F91F638();
    sub_24F91F5E8();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
    *&v10[*(v16 + 20)] = v15;
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
    swift_beginAccess();
    sub_24EBFE1C8(v10, v12 + v17);
    swift_endAccess();
    sub_24ED71208();

    result = sub_24E601704(v10, &qword_27F22B5C8);
  }

  v18 = *(v2 + *(*v2 + 736));
  if (v18)
  {

    sub_24F91F638();
    *(v18 + 40) = 0;
    sub_24EA68EC8(v7);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_24EE99D2C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 41) = 1;
    sub_24EA67DA8();
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

void sub_24EE99E30()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_24F91F638();
    *(v5 + 41) = 0;
    sub_24EA68EC8(v4);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_24EE99F28()
{
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v0 = sub_24F9287F8();
  v1 = __swift_project_value_buffer(v0, qword_27F2230B8);
  v2 = type metadata accessor for DiffablePagePresenter();
  WitnessTable = swift_getWitnessTable();
  return MetricsPagePresenter.sendEventsFor(invocationPoint:)(v1, v2, WitnessTable);
}

uint64_t DiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:advertLifecycleMetricsReporter:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  v16 = sub_24EE9AA30(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v16;
}

id DiffablePagePresenter.snapshotQueue.getter()
{
  v0 = sub_24EE9A9C8();

  return v0;
}

uint64_t sub_24EE9A144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22ACF0);
  return sub_24EE9693C(v4);
}

uint64_t sub_24EE9A1F0()
{
  v1 = *(*v0 + 704);
  swift_beginAccess();
  sub_24E9B7D88(v0 + v1, v3);
  sub_24F92AD88();
  return sub_24E94E128(v3);
}

uint64_t DiffablePagePresenter.onPaginationStateChanged.getter()
{
  sub_24EE9B3E8();
}

uint64_t sub_24EE9A2C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 544))(1);
  }

  return result;
}

uint64_t sub_24EE9A348@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24EE9A374()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 544))(1);
  }

  return result;
}

uint64_t sub_24EE9A478()
{
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  v1 = *(*v0 + 640);
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v2 = sub_24F92C4A8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  v4 = *(*v0 + 656);
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  sub_24F929528();
  v5 = sub_24F92C4A8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + *(*v0 + 664), v2);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  return sub_24E824448(*(v0 + *(*v0 + 752)));
}

uint64_t DiffablePagePresenter.__deallocating_deinit()
{
  DiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id sub_24EE9A854()
{
  v0 = sub_24EE9A9C8();

  return v0;
}

void (*sub_24EE9A884(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24EE969B8();
  return sub_24E622878;
}

uint64_t sub_24EE9A914()
{
  sub_24EE9B3E8();
}

uint64_t sub_24EE9A984()
{
  v1 = qword_27F39CC08;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EE9A9E4(uint64_t a1)
{
  v2 = *(v1 + qword_27F39CC00);
  *(v1 + qword_27F39CC00) = a1;

  sub_24EE96CA8(v2);
}

uint64_t sub_24EE9AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v66 = a7;
  v67 = a8;
  v64 = a1;
  v65 = a6;
  v61 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v10 = *v8;
  v11 = *v8;
  v53 = sub_24F928188();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92BEE8();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F92BE88();
  MEMORY[0x28223BE20](v15);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  MEMORY[0x28223BE20](v17 - 8);
  *&v8[qword_27F39CC00] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v8[qword_27F39CC10] = MEMORY[0x277D84F90];
  v8[qword_27F2326C8] = 0;
  v19 = *(*v8 + 640);
  v71 = *(v10 + 592);
  v20 = v71;
  v54 = *(v11 + 552);
  v55 = *(v11 + 576);
  v69 = v54;
  v70 = v55;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  v21 = sub_24F929528();
  v22 = *(*(v21 - 8) + 56);
  v22(&v8[v19], 1, 1, v21);
  v23 = *(*v8 + 648);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v24 - 8) + 56))(&v8[v23], 1, 1, v24);
  v25 = *(*v8 + 656);
  v69 = v54;
  v70 = v55;
  v71 = v20;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  v26 = sub_24F929528();
  (*(*(v26 - 8) + 56))(&v8[v25], 1, 1, v26);
  v22(&v9[*(*v9 + 664)], 1, 1, v21);
  v27 = *(*v8 + 672);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v28 - 8) + 56))(&v8[v27], 1, 1, v28);
  v29 = *(*v8 + 680);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v30 - 8) + 56))(&v8[v29], 1, 1, v30);
  v31 = *(*v8 + 688);
  sub_24E74EC40();
  sub_24F927DA8();
  *&v69 = v18;
  sub_24EE9C210(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v58 + 104))(v57, *MEMORY[0x277D85260], v59);
  v32 = v60;
  v33 = v61;
  v34 = v62;
  *&v8[v31] = sub_24F92BF38();
  sub_24EBD3128(&v9[*(*v9 + 696)]);
  v35 = &v9[*(*v9 + 704)];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 25) = 0u;
  v36 = *(*v8 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *&v8[v36] = sub_24F92ADA8();
  v37 = *(*v8 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *&v8[v37] = sub_24F92ADA8();
  v38 = *(*v8 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  v39 = sub_24F92ADA8();
  v40 = v63;
  *&v9[v38] = v39;
  *&v9[*(*v9 + 736)] = 0;
  v41 = &v9[*(*v9 + 752)];
  *v41 = 0;
  *(v41 + 1) = 0;
  sub_24E60169C(v32, &v9[qword_27F39CBF8], &qword_27F228530);
  sub_24E60169C(v33, &v9[*(*v9 + 744)], &qword_27F229490);
  v42 = type metadata accessor for InlineUnifiedMessagePresenter();
  v68.receiver = objc_allocWithZone(v42);
  v68.super_class = v42;
  *&v9[qword_27F39CC08] = objc_msgSendSuper2(&v68, sel_init);
  if (v34 && v40)
  {
    sub_24F92A0F8();
    *&v69 = v40;

    v43 = v51;
    sub_24F928168();
    v44 = sub_24F928F88();
    (*(v52 + 8))(v43, v53);
    v45 = v67;
  }

  else
  {
    v45 = v67;

    v44 = v64;
  }

  v46 = v65;
  swift_unknownObjectRetain();
  v47 = TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(v44, v46, v66, v45);
  v48 = *(*v47 + 1112);

  *(v47 + qword_27F39CC00) = v48(v34);

  sub_24EE96CA8(0);

  sub_24E601704(v33, &qword_27F229490);
  sub_24E601704(v32, &qword_27F228530);
  return v47;
}

uint64_t sub_24EE9B350()
{
  v1 = *(*v0 + 712);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EE9B3B8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.seeAllAction.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24EE9B44C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE9B488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE9B4C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_24EE9B51C@<X0>(void *a1@<X8>)
{
  v2 = sub_24EE9A984();
  *a1 = v2;

  return v2;
}

__n128 sub_24EE9B590(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24EE9B644@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EE9B350();
}

void sub_24EE9B6B8()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
    sub_24F929528();
    sub_24F92C4A8();
    if (v1 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F232750, &qword_27F22AB90);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
        sub_24F929528();
        sub_24F92C4A8();
        if (v3 <= 0x3F)
        {
          sub_24E8EF898(319, &qword_27F232758, &qword_27F22ABA0);
          if (v4 <= 0x3F)
          {
            sub_24E8EF898(319, &qword_27F232760, &qword_27F22ABA8);
            if (v5 <= 0x3F)
            {
              sub_24EE9BEA0();
              if (v6 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EE9BEA0()
{
  if (!qword_27F232768[0])
  {
    type metadata accessor for Shelf();
    sub_24EE9C210(&qword_27F22CE68, type metadata accessor for Shelf);
    v0 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
    if (!v1)
    {
      atomic_store(v0, qword_27F232768);
    }
  }
}

uint64_t sub_24EE9BF34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EE9BF6C()
{

  return swift_deallocObject();
}

id sub_24EE9BFB8(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {

    return a1;
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

uint64_t sub_24EE9C058()
{

  return swift_deallocObject();
}

uint64_t (*sub_24EE9C178())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24EBD46CC;
}

uint64_t sub_24EE9C1DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24EE986C0(&v3);
}

uint64_t sub_24EE9C210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE9C2F8()
{
  v0 = sub_24F928AE8();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x28223BE20](v0);
  v38 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  sub_24F91F638();
  v41 = objc_opt_self();
  v12 = [v41 standardUserDefaults];
  v13 = *(v6 + 16);
  v13(v4, v11, v5);
  v42 = v6;
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_24F006F70(v4);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9220D8();
  v15 = __swift_project_value_buffer(v14, qword_27F39E8E0);
  v13(v8, v11, v5);
  v16 = sub_24F9220B8();
  v17 = sub_24F92BD98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37[1] = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315138;
    sub_24EE9C814(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v21 = sub_24F92CD88();
    v23 = v22;
    v24 = *(v42 + 8);
    v24(v8, v5);
    v25 = sub_24E7620D4(v21, v23, &v43);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_24E5DD000, v16, v17, "A friend request was last sent on %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530542D0](v20, -1, -1);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  else
  {

    v24 = *(v42 + 8);
    v24(v8, v5);
  }

  v26 = v41;
  v27 = [v41 standardUserDefaults];
  v28 = sub_24F006468();
  v29 = __OFADD__(v28, 1);
  result = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    sub_24F007258(result);

    v31 = sub_24F9220B8();
    v32 = sub_24F92BD98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = [v26 standardUserDefaults];
      v35 = sub_24F006468();

      *(v33 + 4) = v35;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Increased friend request send count to %ld", v33, 0xCu);
      MEMORY[0x2530542D0](v33, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
    (*(v39 + 104))(v38, *MEMORY[0x277D21CA8], v40);
    v36 = sub_24F92A988();
    v24(v11, v5);
    return v36;
  }

  return result;
}

uint64_t sub_24EE9C814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GameCenterGameplayHistoryRecord.__allocating_init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t GameCenterGameplayHistoryRecord.init(playerId:timestamp:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void *GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v26 = a2;
  v3 = 0x6449726579616C70;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  sub_24F928398();
  v11 = sub_24F928348();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  if (v13)
  {
    v25[0] = v11;
    v15 = 0xE900000000000070;
    v3 = 0x6D617473656D6974;
    sub_24F928398();
    v16 = sub_24F928338();
    v14(v7, v4);
    v17 = a1;
    if (v16)
    {
      sub_24F91FE38();
      v19 = v18;

      v20 = sub_24F9285B8();
      (*(*(v20 - 8) + 8))(v26, v20);
      v14(a1, v4);
      type metadata accessor for GameCenterGameplayHistoryRecord();
      result = swift_allocObject();
      result[2] = v25[0];
      result[3] = v13;
      result[4] = v19;
      return result;
    }
  }

  else
  {
    v17 = a1;
    v15 = 0xE800000000000000;
  }

  v22 = sub_24F92AC38();
  sub_24EE9DFA4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
  swift_allocError();
  *v23 = v3;
  v23[1] = v15;
  v23[2] = v25[2];
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
  swift_willThrow();
  v24 = sub_24F9285B8();
  (*(*(v24 - 8) + 8))(v26, v24);
  return (v14)(v17, v4);
}

uint64_t GameCenterGameplayHistoryRecord.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_24EE9CC40(void *a1)
{
  v3 = objc_opt_self();
  if (![v3 valueWithNewObjectInContext_])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v1[2];
  v15 = v1[3];

  v4 = [v3 valueWithObject:sub_24F92CF68() inContext:{a1, v12, v15}];
  swift_unknownObjectRelease();
  if (v4)
  {
    v13 = v4;
    sub_24EB3EB94();
    v5 = a1;
    v4 = sub_24F92CDE8();
  }

  else
  {
    v6 = a1;
  }

  v7 = [v3 valueWithObject:v4 inContext:{a1, v13}];
  swift_unknownObjectRelease();

  if (!v7)
  {
    goto LABEL_12;
  }

  sub_24F92C328();
  v8 = [v3 valueWithObject:sub_24F92CF68() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v8)
  {
    v14 = v8;
    sub_24EB3EB94();
    v9 = a1;
    v8 = sub_24F92CDE8();
  }

  else
  {
    v10 = a1;
  }

  v11 = [v3 valueWithObject:v8 inContext:{a1, v14}];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_24F92C328();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_24EE9CE60()
{
  MEMORY[0x253050C20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x253050C20](64, 0xE100000000000000);
  sub_24F92BA58();
  return 0;
}

uint64_t GameCenterGameplayHistoryRecord.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EE9CF24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = GameCenterGameplayHistoryRecord.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EE9CF74()
{
  MEMORY[0x253050C20](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x253050C20](64, 0xE100000000000000);
  sub_24F92BA58();
  return 0;
}

uint64_t GameCenterGameplayHistory.__allocating_init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = a1[1];
  *(result + 16) = *a1;
  *(result + 24) = v9;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t GameCenterGameplayHistory.init(adamId:platformId:isArcade:records:)(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 24) = v5;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t GameCenterGameplayHistory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41[-v4];
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v41[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  v17 = 0xE600000000000000;
  sub_24F928398();
  v45 = sub_24F928348();
  v19 = v18;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v16, v5);
  if (!v19)
  {
    v24 = 0x64496D616461;
    v27 = v5;
    goto LABEL_6;
  }

  v23 = v19;
  v24 = 0x6D726F6674616C70;
  sub_24F928398();
  v43 = sub_24F928258();
  v26 = v25;
  v21(v13, v5);
  v27 = v5;
  if ((v26 & 1) != 0 || (v24 = 0x6564616372417369, sub_24F928398(), v28 = sub_24F928278(), v21(v10, v27), v28 == 2))
  {

    v17 = 0xE800000000000000;
LABEL_6:
    v29 = sub_24F92AC38();
    sub_24EE9DFA4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v30 = v24;
    v30[1] = v17;
    v30[2] = v47;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    v21(a1, v27);
    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v48, v31);
    return a1;
  }

  v42 = v28;
  v33 = v44;
  sub_24F928398();
  v34 = v46;
  sub_24F9282B8();
  v47 = v27;
  v21(v33, v27);
  v35 = sub_24F92AC28();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  if (v37 == 1)
  {
    sub_24E8F2EE8(v34);
    v38 = MEMORY[0x277D84F90];
    v39 = v48;
  }

  else
  {
    v44 = v20;
    MEMORY[0x28223BE20](v37);
    v39 = v48;
    *&v41[-16] = v48;
    type metadata accessor for GameCenterGameplayHistoryRecord();
    v38 = sub_24F92ABB8();
    (*(v36 + 8))(v34, v35);
  }

  v21(a1, v47);
  type metadata accessor for GameCenterGameplayHistory();
  a1 = swift_allocObject();
  *(a1 + 16) = v45;
  *(a1 + 24) = v23;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42 & 1;
  *(a1 + 48) = v38;
  v40 = sub_24F9285B8();
  (*(*(v40 - 8) + 8))(v39, v40);
  return a1;
}

uint64_t sub_24EE9D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameCenterGameplayHistoryRecord();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EE9DFA4(&qword_27F2327F0, v13, type metadata accessor for GameCenterGameplayHistoryRecord);
  return sub_24F929548();
}

uint64_t GameCenterGameplayHistory.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void sub_24EE9D80C(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    goto LABEL_25;
  }

  v19 = v1[2];
  v25 = v1[3];

  v5 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v19, v25}];
  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_24F92C328();
  v6 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v1[4]}];
  swift_unknownObjectRelease();
  if (v6)
  {
    v20 = v6;
    sub_24EB3EB94();
    v7 = a1;
    v6 = sub_24F92CDE8();
  }

  else
  {
    v8 = a1;
  }

  v9 = [v4 valueWithObject:v6 inContext:{a1, v20}];
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_27;
  }

  sub_24F92C328();
  LOBYTE(v21) = *(v2 + 40);
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v21}];
  swift_unknownObjectRelease();
  if (v10)
  {
    v22 = v10;
    sub_24EB3EB94();
    v11 = a1;
    v10 = sub_24F92CDE8();
  }

  else
  {
    v12 = a1;
  }

  v13 = [v4 valueWithObject:v10 inContext:{a1, v22}];
  swift_unknownObjectRelease();

  if (!v13)
  {
    goto LABEL_28;
  }

  sub_24F92C328();
  v14 = v2[6];
  if (v14 >> 62)
  {
    v15 = sub_24F92C738();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_21;
  }

  v23 = MEMORY[0x277D84F90];
  sub_24F92C978();
  if (v15 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253052270](v17, v14);
    }

    else
    {
    }

    ++v17;
    sub_24EE9CC40(a1);

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v15 != v17);
  v16 = v23;
LABEL_21:
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v18 = [v4 valueWithObject:sub_24F92CF68() inContext:{a1, v24}];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_24F92C328();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_24EE9DBFC()
{
  sub_24F92C888();
  MEMORY[0x253050C20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x6F6674616C705B20, 0xEB00000000206D72);
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](0x656463617261202CLL, 0xEA0000000000203FLL);
  if (*(v0 + 40))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2, v3);

  MEMORY[0x253050C20](0x64726F636552205DLL, 0xEB00000000203A73);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for GameCenterGameplayHistoryRecord();
  v6 = MEMORY[0x253050F40](v4, v5);
  MEMORY[0x253050C20](v6);

  return 0x5B2064496D616441;
}

uint64_t GameCenterGameplayHistory.deinit()
{

  return v0;
}

uint64_t GameCenterGameplayHistory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE9DDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterGameplayHistory.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EE9DFA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t BootstrapResult.objectGraph.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BootstrapResult.metricsPipelineTransformer.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Shelf.ContentType.isCompatible(with:)(_BYTE *a1)
{
  if (*a1 != 104)
  {
    v3 = *v1;
    if (v3 > 5)
    {
      if (v3 - 6 < 2)
      {
        if (Shelf.ContentType.rawValue.getter() != 0xD000000000000013 || 0x800000024FA3F170 != v18)
        {
          v19 = sub_24F92CE08();

          if ((v19 & 1) == 0)
          {
            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000018 || 0x800000024FA3F190 != v20)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          goto LABEL_40;
        }

        goto LABEL_29;
      }

      if (v3 == 50)
      {
        v21 = Shelf.ContentType.rawValue.getter();
        v23 = v22;
        if (v21 == Shelf.ContentType.rawValue.getter() && v23 == v24)
        {
        }

        else
        {
          v25 = sub_24F92CE08();

          if (v25)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F3A0 != v27)
          {
            v28 = sub_24F92CE08();

            if ((v28 & 1) == 0)
            {
LABEL_47:
              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F520 != v29)
              {
LABEL_41:
                v2 = sub_24F92CE08();
                goto LABEL_42;
              }

LABEL_33:
              v2 = 1;
LABEL_42:

              return v2 & 1;
            }

LABEL_40:
            v2 = 1;
            return v2 & 1;
          }
        }

LABEL_29:

        v2 = 1;
        return v2 & 1;
      }

      if (v3 == 94)
      {
        goto LABEL_40;
      }
    }

    else if (v3 - 1 < 4)
    {
      if (Shelf.ContentType.rawValue.getter() != 0x636F4C6C6C616D73 || v4 != 0xEB0000000070756BLL)
      {
        v5 = sub_24F92CE08();

        if (v5)
        {
          goto LABEL_40;
        }

        if (Shelf.ContentType.rawValue.getter() != 0x6F4C6D756964656DLL || v6 != 0xEC00000070756B63)
        {
          v7 = sub_24F92CE08();

          if (v7)
          {
            goto LABEL_40;
          }

          if (Shelf.ContentType.rawValue.getter() != 0x636F4C656772616CLL || v8 != 0xEB0000000070756BLL)
          {
            v9 = sub_24F92CE08();

            if (v9)
            {
              goto LABEL_40;
            }

            if (Shelf.ContentType.rawValue.getter() != 0xD000000000000011 || 0x800000024FA3F430 != v10)
            {
              v11 = sub_24F92CE08();

              if (v11)
              {
                goto LABEL_40;
              }

              if (Shelf.ContentType.rawValue.getter() != 0xD000000000000010 || 0x800000024FA3F3A0 != v12)
              {
                v13 = sub_24F92CE08();

                if ((v13 & 1) == 0)
                {
                  goto LABEL_47;
                }

                goto LABEL_40;
              }
            }
          }
        }
      }

      goto LABEL_29;
    }

    v14 = Shelf.ContentType.rawValue.getter();
    v16 = v15;
    if (v14 == Shelf.ContentType.rawValue.getter() && v16 == v17)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_24F92CE08();
    }

    goto LABEL_42;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t Shelf.ContentType.init(string:)@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.ContentType.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t Shelf.ContentType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CF18();

  v4 = 0;
  v5 = 86;
  switch(v2)
  {
    case 0:
      goto LABEL_99;
    case 1:
      v4 = 1;
      goto LABEL_99;
    case 2:
      v4 = 2;
      goto LABEL_99;
    case 3:
      v4 = 3;
      goto LABEL_99;
    case 4:
      v4 = 4;
      goto LABEL_99;
    case 5:
      v4 = 5;
      goto LABEL_99;
    case 6:
      v4 = 6;
      goto LABEL_99;
    case 7:
      v4 = 7;
      goto LABEL_99;
    case 8:
      v4 = 8;
      goto LABEL_99;
    case 9:
      v4 = 9;
      goto LABEL_99;
    case 10:
      v4 = 10;
      goto LABEL_99;
    case 11:
      v4 = 11;
      goto LABEL_99;
    case 12:
      v4 = 12;
      goto LABEL_99;
    case 13:
      v4 = 13;
      goto LABEL_99;
    case 14:
      v4 = 14;
      goto LABEL_99;
    case 15:
      v4 = 15;
      goto LABEL_99;
    case 16:
      v4 = 16;
      goto LABEL_99;
    case 17:
      v4 = 17;
      goto LABEL_99;
    case 18:
      v4 = 18;
      goto LABEL_99;
    case 19:
      v4 = 19;
      goto LABEL_99;
    case 20:
      v4 = 20;
      goto LABEL_99;
    case 21:
      v4 = 21;
      goto LABEL_99;
    case 22:
      v4 = 22;
      goto LABEL_99;
    case 23:
      v4 = 23;
      goto LABEL_99;
    case 24:
      v4 = 24;
      goto LABEL_99;
    case 25:
      v4 = 25;
      goto LABEL_99;
    case 26:
      v4 = 26;
      goto LABEL_99;
    case 27:
      v4 = 27;
      goto LABEL_99;
    case 28:
      v4 = 28;
      goto LABEL_99;
    case 29:
      v4 = 29;
      goto LABEL_99;
    case 30:
      v4 = 30;
      goto LABEL_99;
    case 31:
      v4 = 31;
      goto LABEL_99;
    case 32:
      v4 = 32;
      goto LABEL_99;
    case 33:
      v4 = 33;
      goto LABEL_99;
    case 34:
      v4 = 34;
      goto LABEL_99;
    case 35:
      v4 = 35;
      goto LABEL_99;
    case 36:
      v4 = 36;
      goto LABEL_99;
    case 37:
      v4 = 37;
      goto LABEL_99;
    case 38:
      v4 = 38;
      goto LABEL_99;
    case 39:
      v4 = 39;
      goto LABEL_99;
    case 40:
      v4 = 40;
      goto LABEL_99;
    case 41:
      v4 = 41;
      goto LABEL_99;
    case 42:
      v4 = 42;
      goto LABEL_99;
    case 43:
      v4 = 43;
      goto LABEL_99;
    case 44:
      v4 = 44;
      goto LABEL_99;
    case 45:
      v4 = 45;
      goto LABEL_99;
    case 46:
      v4 = 46;
      goto LABEL_99;
    case 47:
      v4 = 47;
      goto LABEL_99;
    case 48:
      v4 = 48;
      goto LABEL_99;
    case 49:
      v4 = 49;
      goto LABEL_99;
    case 50:
      v4 = 50;
      goto LABEL_99;
    case 51:
      v4 = 51;
      goto LABEL_99;
    case 52:
      v4 = 52;
      goto LABEL_99;
    case 53:
      v4 = 53;
      goto LABEL_99;
    case 54:
      v4 = 54;
      goto LABEL_99;
    case 55:
      v4 = 55;
      goto LABEL_99;
    case 56:
      v4 = 56;
      goto LABEL_99;
    case 57:
      v4 = 57;
      goto LABEL_99;
    case 58:
      v4 = 58;
      goto LABEL_99;
    case 59:
      v4 = 59;
      goto LABEL_99;
    case 60:
      v4 = 60;
      goto LABEL_99;
    case 61:
      v4 = 61;
      goto LABEL_99;
    case 62:
      v4 = 62;
      goto LABEL_99;
    case 63:
      v4 = 63;
      goto LABEL_99;
    case 64:
      v4 = 64;
      goto LABEL_99;
    case 65:
      v4 = 65;
      goto LABEL_99;
    case 66:
      v4 = 66;
      goto LABEL_99;
    case 67:
      v4 = 67;
      goto LABEL_99;
    case 68:
      v4 = 68;
      goto LABEL_99;
    case 69:
      v4 = 69;
      goto LABEL_99;
    case 70:
      v4 = 70;
      goto LABEL_99;
    case 71:
      v4 = 71;
      goto LABEL_99;
    case 72:
      v4 = 72;
      goto LABEL_99;
    case 73:
      v4 = 73;
      goto LABEL_99;
    case 74:
      v4 = 74;
      goto LABEL_99;
    case 75:
      v4 = 75;
      goto LABEL_99;
    case 76:
      v4 = 76;
      goto LABEL_99;
    case 77:
      v4 = 77;
      goto LABEL_99;
    case 78:
      v4 = 78;
      goto LABEL_99;
    case 79:
      v4 = 79;
      goto LABEL_99;
    case 80:
      v4 = 80;
      goto LABEL_99;
    case 81:
      v4 = 81;
      goto LABEL_99;
    case 82:
      v4 = 82;
      goto LABEL_99;
    case 83:
      v4 = 83;
      goto LABEL_99;
    case 84:
      v4 = 84;
      goto LABEL_99;
    case 85:
      v4 = 85;
LABEL_99:
      v5 = v4;
      break;
    case 86:
      break;
    case 87:
      v5 = 87;
      break;
    case 88:
      v5 = 88;
      break;
    case 89:
      v5 = 89;
      break;
    case 90:
      v5 = 90;
      break;
    case 91:
      v5 = 91;
      break;
    case 92:
      v5 = 92;
      break;
    case 93:
      v5 = 93;
      break;
    case 94:
      v5 = 94;
      break;
    case 95:
      v5 = 95;
      break;
    case 96:
      v5 = 96;
      break;
    case 97:
      v5 = 97;
      break;
    case 98:
      v5 = 98;
      break;
    case 99:
      v5 = 99;
      break;
    case 100:
      v5 = 100;
      break;
    case 101:
      v5 = 101;
      break;
    case 102:
      v5 = 102;
      break;
    case 103:
      v5 = 103;
      break;
    default:
      v5 = 104;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t Shelf.ContentType.init(string:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  if (a1)
  {
    result = Shelf.ContentType.init(rawValue:)(&v5);
    v4 = v5;
  }

  else
  {
    v4 = 104;
  }

  *a2 = v4;
  return result;
}

unint64_t Shelf.ContentType.rawValue.getter()
{
  result = 0x72656B72616DLL;
  switch(*v0)
  {
    case 1:
      v2 = 0x4C6C6C616D73;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 2:
      return 0x6573616863727570;
    case 3:
      v5 = 0x6D756964656DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 4:
      v2 = 0x4C656772616CLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 5:
      return 0xD000000000000010;
    case 6:
    case 0x2D:
    case 0x60:
      return 0xD000000000000013;
    case 7:
      return 0xD000000000000018;
    case 8:
      return 0xD000000000000029;
    case 9:
      return 0xD000000000000027;
    case 0xA:
      return 0xD000000000000023;
    case 0xB:
      return 0x6E6F69746361;
    case 0xC:
      return 0x6B726F77747261;
    case 0xD:
      return 0x61426E6F62626972;
    case 0xE:
      return 0x6C466E6F62626972;
    case 0xF:
      return 0x7061726761726170;
    case 0x10:
      return 0x697461746F6E6E61;
    case 0x11:
      return 0x65746F6E746F6F66;
    case 0x12:
      return 0x615064656C746974;
    case 0x13:
      return 0x6169726F74696465;
    case 0x14:
      v6 = 0x436F65646976;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x15:
      return 0x6B63697262;
    case 0x16:
      return 0x79726F6765746163;
    case 0x17:
      v4 = 0x426C6C616D73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 0x18:
      v4 = 0x42656772616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
    case 0x19:
    case 0x32:
    case 0x34:
    case 0x3A:
    case 0x4C:
    case 0x52:
    case 0x63:
      return 0xD000000000000011;
    case 0x1A:
      return 0x73776569766572;
    case 0x1B:
      return 0xD000000000000010;
    case 0x1C:
      return 0x4373726F74696465;
    case 0x1D:
      v6 = 0x437961646F74;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 0x1E:
      return 0x61646F54696E696DLL;
    case 0x1F:
    case 0x42:
      return 0x6169726F74696465;
    case 0x20:
      return 0x694C686372616573;
    case 0x21:
      return 0x65746F7571;
    case 0x22:
      return 0x746E6F7A69726F68;
    case 0x23:
      return 0x724164656D617266;
    case 0x24:
      return 0x68736E6565726373;
    case 0x25:
      return 0x4D746375646F7270;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 0x63776F6853707061;
    case 0x28:
    case 0x47:
    case 0x48:
      v7 = 5;
      goto LABEL_89;
    case 0x29:
      return 0xD000000000000010;
    case 0x2A:
      return 0x50746375646F7270;
    case 0x2B:
    case 0x2C:
      return 0x52746375646F7270;
    case 0x2E:
      return 0x656C62616B6E696CLL;
    case 0x2F:
      return 0x695664656D617266;
    case 0x30:
    case 0x3D:
    case 0x4D:
      return 0xD000000000000012;
    case 0x31:
      return 0x72656E6E6162;
    case 0x33:
      return 0x426465646E756F72;
    case 0x35:
      return 0x7475426567616D69;
    case 0x36:
      v3 = 0x536C6C616D73;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x37:
      return 0x74536D756964656DLL;
    case 0x38:
      v3 = 0x53656772616CLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000;
    case 0x39:
      return 0xD000000000000020;
    case 0x3B:
      return 0x72426C6C65737075;
    case 0x3C:
      return 0x6572426C6C616D73;
    case 0x3E:
      return 0xD000000000000010;
    case 0x3F:
      return 0x6F46656461637261;
    case 0x40:
      return 0x6567646162;
    case 0x41:
      return 0x6472614374786574;
    case 0x43:
      return 0x6853656461637261;
    case 0x44:
      v7 = 10;
      goto LABEL_89;
    case 0x45:
    case 0x46:
      return 0xD000000000000016;
    case 0x49:
      return 0xD000000000000026;
    case 0x4A:
      v5 = 0x726574736F70;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
    case 0x4B:
      return 0xD000000000000010;
    case 0x4E:
      return 0x4879636176697270;
    case 0x4F:
      return 0x4679636176697270;
    case 0x50:
      return 0x5479636176697270;
    case 0x51:
      return 0x4379636176697270;
    case 0x53:
      return 0x6F6D6F7250707061;
    case 0x54:
      return 0x6552686372616573;
    case 0x55:
      v7 = 9;
LABEL_89:
      result = v7 | 0xD000000000000010;
      break;
    case 0x56:
      result = 0x7362615465676170;
      break;
    case 0x57:
      result = 0x6F7261436F726568;
      break;
    case 0x58:
      result = 1919246965;
      break;
    case 0x59:
      result = 0x42746375646F7270;
      break;
    case 0x5A:
      result = 0x676150616964656DLL;
      break;
    case 0x5B:
      result = 0x6B63697242676174;
      break;
    case 0x5C:
      result = 0xD000000000000021;
      break;
    case 0x5D:
      result = 0x6C6F686563616C70;
      break;
    case 0x5E:
      result = 0x6863746566657270;
      break;
    case 0x5F:
      result = 0x4D64656966696E75;
      break;
    case 0x61:
      result = 0xD000000000000014;
      break;
    case 0x62:
      result = 0xD000000000000010;
      break;
    case 0x64:
      result = 0xD000000000000010;
      break;
    case 0x65:
      result = 0x754264656C746974;
      break;
    case 0x66:
      result = 0x6461654865676170;
      break;
    case 0x67:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Shelf.ContentType.axString.getter()
{
  v1 = 0;
  v2 = 0xD000000000000013;
  v3 = *v0;
  if (v3 > 0x37)
  {
    if (v3 == 56)
    {
      v5 = "AX_LARGE_STORY_CARD";
    }

    else
    {
      if (v3 != 76)
      {
        return v1;
      }

      v5 = "AX_INFORMATION_CARD";
    }

    v4 = v5 - 32;
    goto LABEL_11;
  }

  if (v3 == 19)
  {
    v4 = "AX_INFORMATION_CARD";
    v2 = 0xD000000000000017;
    goto LABEL_11;
  }

  if (v3 == 55)
  {
    v4 = "AX_EDITORIAL_STORY_CARD";
    v2 = 0xD000000000000014;
LABEL_11:
    v6 = v4 | 0x8000000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    return localizedString(_:comment:)(*&v2, v7)._countAndFlagsBits;
  }

  return v1;
}

uint64_t sub_24EE9F8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *v3;
  if (qword_27F2107B0 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810);
  __swift_project_value_buffer(v17, qword_27F2327F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232820);
  sub_24F9285D8();
  if (*&v39[0])
  {
    v34 = v15;
    v35 = v12;
    type metadata accessor for Shelf();
    v18 = v40;
    sub_24EE9FEC0(v37);
    if (!v18)
    {
      sub_24E612C80(v37, v39);
      return sub_24E612C80(v39, v36);
    }

    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_24E8E800C(v37);
    v40 = 0;
    v15 = v34;
    v12 = v35;
  }

  if (v16 > 83)
  {
    if (v16 == 84)
    {
      sub_24F928398();
      sub_24EABA7D4();
      v29 = v40;
      sub_24F928218();
      if (v29)
      {
        return (*(v7 + 8))(v12, v6);
      }

      (*(v7 + 8))(v12, v6);
      LOBYTE(v37[0]) = v39[0];
      v25 = sub_24EABB1CC(v37, a1, a2);
      v32 = type metadata accessor for SearchResult();
      v26 = v36;
      v36[3] = v32;
      v27 = &qword_27F22B8A0;
      v28 = type metadata accessor for SearchResult;
      goto LABEL_26;
    }

    if (v16 == 92)
    {
      sub_24F928398();
      sub_24E9C07DC();
      v21 = v40;
      sub_24F928218();
      if (v21)
      {
        return (*(v7 + 8))(v15, v6);
      }

      (*(v7 + 8))(v15, v6);
      v25 = sub_24E9C0F28(v39, a1, a2);
      v31 = type metadata accessor for ProductRatingsAndReviewsComponent();
      v26 = v36;
      v36[3] = v31;
      v27 = &unk_27F232838;
      v28 = type metadata accessor for ProductRatingsAndReviewsComponent;
      goto LABEL_26;
    }
  }

  else
  {
    if (v16 == 11)
    {
      v23 = type metadata accessor for Action();
      v24 = v40;
      result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
      if (v24)
      {
        return result;
      }

      v25 = result;
      v26 = v36;
      v36[3] = v23;
      v27 = &unk_27F232840;
      v28 = type metadata accessor for Action;
      goto LABEL_26;
    }

    if (v16 == 83)
    {
      sub_24F928398();
      sub_24EA21600();
      v19 = v40;
      sub_24F928218();
      if (v19)
      {
        return (*(v7 + 8))(v9, v6);
      }

      (*(v7 + 8))(v9, v6);
      v25 = sub_24ED97520(v39, a1, a2);
      v30 = type metadata accessor for AppPromotion();
      v26 = v36;
      v36[3] = v30;
      v27 = &qword_27F232830;
      v28 = type metadata accessor for AppPromotion;
LABEL_26:
      result = sub_24EEA4998(v27, v28);
      v26[4] = result;
      *v26 = v25;
      return result;
    }
  }

  if (qword_27F2107A8 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232828);
  __swift_project_value_buffer(v22, qword_27F39CC18);
  LOBYTE(v39[0]) = v16;
  return sub_24F928DA8();
}

uint64_t sub_24EE9FEC0@<X0>(uint64_t a1@<X8>)
{
  sub_24F9280E8();
  swift_getWitnessTable();
  result = sub_24F9282F8();
  if (!v1)
  {
    return sub_24E612C80(&v4, a1);
  }

  return result;
}

uint64_t sub_24EE9FF6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232828);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v285 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v285 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v285 - v8;
  MEMORY[0x28223BE20](v10);
  v286 = &v285 - v11;
  MEMORY[0x28223BE20](v12);
  v287 = &v285 - v13;
  MEMORY[0x28223BE20](v14);
  v288 = &v285 - v15;
  MEMORY[0x28223BE20](v16);
  v289 = &v285 - v17;
  MEMORY[0x28223BE20](v18);
  v290 = &v285 - v19;
  MEMORY[0x28223BE20](v20);
  v291 = &v285 - v21;
  MEMORY[0x28223BE20](v22);
  v292 = &v285 - v23;
  MEMORY[0x28223BE20](v24);
  v378 = &v285 - v25;
  MEMORY[0x28223BE20](v26);
  v379 = &v285 - v27;
  MEMORY[0x28223BE20](v28);
  v380 = &v285 - v29;
  MEMORY[0x28223BE20](v30);
  v293 = &v285 - v31;
  MEMORY[0x28223BE20](v32);
  v294 = &v285 - v33;
  MEMORY[0x28223BE20](v34);
  v295 = &v285 - v35;
  MEMORY[0x28223BE20](v36);
  v296 = &v285 - v37;
  MEMORY[0x28223BE20](v38);
  v297 = &v285 - v39;
  MEMORY[0x28223BE20](v40);
  v298 = &v285 - v41;
  MEMORY[0x28223BE20](v42);
  v299 = &v285 - v43;
  MEMORY[0x28223BE20](v44);
  v300 = &v285 - v45;
  MEMORY[0x28223BE20](v46);
  v301 = &v285 - v47;
  MEMORY[0x28223BE20](v48);
  v302 = &v285 - v49;
  MEMORY[0x28223BE20](v50);
  v303 = &v285 - v51;
  MEMORY[0x28223BE20](v52);
  v304 = &v285 - v53;
  MEMORY[0x28223BE20](v54);
  v305 = &v285 - v55;
  MEMORY[0x28223BE20](v56);
  v306 = &v285 - v57;
  MEMORY[0x28223BE20](v58);
  v307 = &v285 - v59;
  MEMORY[0x28223BE20](v60);
  v308 = &v285 - v61;
  MEMORY[0x28223BE20](v62);
  v309 = &v285 - v63;
  MEMORY[0x28223BE20](v64);
  v310 = &v285 - v65;
  MEMORY[0x28223BE20](v66);
  v311 = &v285 - v67;
  MEMORY[0x28223BE20](v68);
  v312 = &v285 - v69;
  MEMORY[0x28223BE20](v70);
  v313 = &v285 - v71;
  MEMORY[0x28223BE20](v72);
  v314 = &v285 - v73;
  MEMORY[0x28223BE20](v74);
  v315 = &v285 - v75;
  MEMORY[0x28223BE20](v76);
  v316 = &v285 - v77;
  MEMORY[0x28223BE20](v78);
  v317 = &v285 - v79;
  MEMORY[0x28223BE20](v80);
  v318 = &v285 - v81;
  MEMORY[0x28223BE20](v82);
  v319 = &v285 - v83;
  MEMORY[0x28223BE20](v84);
  v320 = &v285 - v85;
  MEMORY[0x28223BE20](v86);
  v321 = &v285 - v87;
  MEMORY[0x28223BE20](v88);
  v322 = &v285 - v89;
  MEMORY[0x28223BE20](v90);
  v323 = &v285 - v91;
  MEMORY[0x28223BE20](v92);
  v324 = &v285 - v93;
  MEMORY[0x28223BE20](v94);
  v325 = &v285 - v95;
  MEMORY[0x28223BE20](v96);
  v326 = &v285 - v97;
  MEMORY[0x28223BE20](v98);
  v327 = &v285 - v99;
  MEMORY[0x28223BE20](v100);
  v328 = &v285 - v101;
  MEMORY[0x28223BE20](v102);
  v329 = &v285 - v103;
  MEMORY[0x28223BE20](v104);
  v330 = &v285 - v105;
  MEMORY[0x28223BE20](v106);
  v331 = &v285 - v107;
  MEMORY[0x28223BE20](v108);
  v332 = &v285 - v109;
  MEMORY[0x28223BE20](v110);
  v333 = &v285 - v111;
  MEMORY[0x28223BE20](v112);
  v334 = &v285 - v113;
  MEMORY[0x28223BE20](v114);
  v335 = &v285 - v115;
  MEMORY[0x28223BE20](v116);
  v336 = &v285 - v117;
  MEMORY[0x28223BE20](v118);
  v337 = &v285 - v119;
  MEMORY[0x28223BE20](v120);
  v338 = &v285 - v121;
  MEMORY[0x28223BE20](v122);
  v339 = &v285 - v123;
  MEMORY[0x28223BE20](v124);
  v340 = &v285 - v125;
  MEMORY[0x28223BE20](v126);
  v341 = &v285 - v127;
  MEMORY[0x28223BE20](v128);
  v342 = &v285 - v129;
  MEMORY[0x28223BE20](v130);
  v343 = &v285 - v131;
  MEMORY[0x28223BE20](v132);
  v344 = &v285 - v133;
  MEMORY[0x28223BE20](v134);
  v345 = &v285 - v135;
  MEMORY[0x28223BE20](v136);
  v346 = &v285 - v137;
  MEMORY[0x28223BE20](v138);
  v347 = &v285 - v139;
  MEMORY[0x28223BE20](v140);
  v348 = &v285 - v141;
  MEMORY[0x28223BE20](v142);
  v349 = &v285 - v143;
  MEMORY[0x28223BE20](v144);
  v350 = &v285 - v145;
  MEMORY[0x28223BE20](v146);
  v351 = &v285 - v147;
  MEMORY[0x28223BE20](v148);
  v352 = &v285 - v149;
  MEMORY[0x28223BE20](v150);
  v353 = &v285 - v151;
  MEMORY[0x28223BE20](v152);
  v354 = &v285 - v153;
  MEMORY[0x28223BE20](v154);
  v358 = &v285 - v155;
  MEMORY[0x28223BE20](v156);
  v359 = &v285 - v157;
  MEMORY[0x28223BE20](v158);
  v360 = &v285 - v159;
  MEMORY[0x28223BE20](v160);
  v361 = &v285 - v161;
  MEMORY[0x28223BE20](v162);
  v362 = &v285 - v163;
  MEMORY[0x28223BE20](v164);
  v363 = &v285 - v165;
  MEMORY[0x28223BE20](v166);
  v364 = &v285 - v167;
  MEMORY[0x28223BE20](v168);
  v365 = &v285 - v169;
  MEMORY[0x28223BE20](v170);
  v366 = &v285 - v171;
  MEMORY[0x28223BE20](v172);
  v367 = &v285 - v173;
  MEMORY[0x28223BE20](v174);
  v368 = &v285 - v175;
  MEMORY[0x28223BE20](v176);
  v369 = &v285 - v177;
  MEMORY[0x28223BE20](v178);
  v370 = &v285 - v179;
  MEMORY[0x28223BE20](v180);
  v371 = &v285 - v181;
  MEMORY[0x28223BE20](v182);
  v372 = &v285 - v183;
  MEMORY[0x28223BE20](v184);
  v373 = &v285 - v185;
  MEMORY[0x28223BE20](v186);
  v374 = &v285 - v187;
  __swift_allocate_value_buffer(v188, qword_27F39CC18);
  v375 = __swift_project_value_buffer(v0, qword_27F39CC18);
  sub_24EEA489C();
  sub_24EEA48F0();
  sub_24F928DB8();
  type metadata accessor for SearchChartOrCategory();
  sub_24EEA4998(&qword_27F232858, type metadata accessor for SearchChartOrCategory);
  sub_24EEA4998(&qword_27F232860, type metadata accessor for SearchChartOrCategory);
  v381 = 85;
  sub_24F928D98();
  v189 = *(v1 + 8);
  v189(v3, v0);
  v357 = type metadata accessor for Lockup();
  v377 = &protocol conformance descriptor for Lockup;
  v190 = sub_24EEA4998(&qword_27F2289F8, type metadata accessor for Lockup);
  v376 = &protocol conformance descriptor for Lockup;
  v191 = sub_24EEA4998(&qword_27F221FB8, type metadata accessor for Lockup);
  v381 = 1;
  v192 = v191;
  sub_24F928D98();
  v189(v6, v0);
  v381 = 2;
  v193 = v286;
  sub_24F928D98();
  v189(v9, v0);
  v381 = 3;
  v194 = v287;
  v355 = v190;
  v356 = v192;
  sub_24F928D98();
  v189(v193, v0);
  v381 = 4;
  v195 = v288;
  sub_24F928D98();
  v189(v194, v0);
  type metadata accessor for InAppPurchaseLockup();
  sub_24EEA4998(&qword_27F232868, type metadata accessor for InAppPurchaseLockup);
  sub_24EEA4998(&qword_27F228A00, type metadata accessor for InAppPurchaseLockup);
  v381 = 6;
  v196 = v289;
  sub_24F928D98();
  v189(v195, v0);
  v381 = 7;
  v197 = v290;
  sub_24F928D98();
  v189(v196, v0);
  type metadata accessor for Artwork();
  sub_24EEA4998(&qword_27F232870, type metadata accessor for Artwork);
  sub_24EEA4998(&qword_27F219660, type metadata accessor for Artwork);
  v381 = 12;
  v198 = v291;
  sub_24F928D98();
  v189(v197, v0);
  type metadata accessor for Paragraph();
  sub_24EEA4998(&qword_27F232878, type metadata accessor for Paragraph);
  sub_24EEA4998(&qword_27F214718, type metadata accessor for Paragraph);
  v381 = 15;
  v199 = v292;
  sub_24F928D98();
  v189(v198, v0);
  sub_24EEA4944();
  sub_24E631DB0();
  v381 = 16;
  v200 = v378;
  sub_24F928D98();
  v189(v199, v0);
  type metadata accessor for Footnote();
  sub_24EEA4998(&qword_27F2248E0, type metadata accessor for Footnote);
  sub_24EEA4998(&qword_27F22B298, type metadata accessor for Footnote);
  v381 = 17;
  v201 = v379;
  sub_24F928D98();
  v189(v200, v0);
  type metadata accessor for TitledParagraph();
  sub_24EEA4998(&qword_27F232888, type metadata accessor for TitledParagraph);
  sub_24EEA4998(&qword_27F232890, type metadata accessor for TitledParagraph);
  v381 = 18;
  v202 = v380;
  sub_24F928D98();
  v189(v201, v0);
  type metadata accessor for EditorialCard();
  sub_24EEA4998(&qword_27F232898, type metadata accessor for EditorialCard);
  sub_24EEA4998(&qword_27F2328A0, type metadata accessor for EditorialCard);
  v381 = 19;
  v203 = v293;
  sub_24F928D98();
  v189(v202, v0);
  v380 = type metadata accessor for Brick();
  v204 = sub_24EEA4998(&qword_27F222768, type metadata accessor for Brick);
  v205 = sub_24EEA4998(&qword_27F2328A8, type metadata accessor for Brick);
  v381 = 21;
  v206 = v294;
  v378 = v205;
  v379 = v204;
  sub_24F928D98();
  v189(v203, v0);
  v381 = 22;
  v207 = v295;
  sub_24F928D98();
  v189(v206, v0);
  type metadata accessor for ProductCapability();
  sub_24EEA4998(&qword_27F2328B0, type metadata accessor for ProductCapability);
  sub_24EEA4998(&qword_27F2328B8, type metadata accessor for ProductCapability);
  v381 = 25;
  v208 = v296;
  sub_24F928D98();
  v189(v207, v0);
  type metadata accessor for Review(0);
  sub_24EEA4998(&qword_27F2328C0, type metadata accessor for Review);
  sub_24EEA4998(&qword_27F2328C8, type metadata accessor for Review);
  v381 = 26;
  v209 = v297;
  sub_24F928D98();
  v189(v208, v0);
  type metadata accessor for ReviewsContainer();
  sub_24EEA4998(&qword_27F2328D0, type metadata accessor for ReviewsContainer);
  sub_24EEA4998(&qword_27F2328D8, type metadata accessor for ReviewsContainer);
  v381 = 27;
  v210 = v298;
  sub_24F928D98();
  v189(v209, v0);
  type metadata accessor for EditorsChoice();
  sub_24EEA4998(&qword_27F2328E0, type metadata accessor for EditorsChoice);
  sub_24EEA4998(&qword_27F2328E8, type metadata accessor for EditorsChoice);
  v381 = 28;
  v211 = v299;
  sub_24F928D98();
  v189(v210, v0);
  type metadata accessor for TodayCard();
  sub_24EEA4998(&qword_27F2328F0, type metadata accessor for TodayCard);
  sub_24EEA4998(&qword_27F2294D0, type metadata accessor for TodayCard);
  v381 = 29;
  v212 = v300;
  sub_24F928D98();
  v189(v211, v0);
  v381 = 30;
  v213 = v301;
  sub_24F928D98();
  v189(v212, v0);
  v381 = 54;
  v214 = v302;
  sub_24F928D98();
  v189(v213, v0);
  v381 = 55;
  v215 = v303;
  sub_24F928D98();
  v189(v214, v0);
  v381 = 56;
  v216 = v304;
  sub_24F928D98();
  v189(v215, v0);
  type metadata accessor for EditorialLink();
  sub_24EEA4998(&qword_27F2328F8, type metadata accessor for EditorialLink);
  sub_24EEA4998(&qword_27F232900, type metadata accessor for EditorialLink);
  v381 = 31;
  v217 = v305;
  sub_24F928D98();
  v189(v216, v0);
  type metadata accessor for SearchLink();
  sub_24EEA4998(&qword_27F232908, type metadata accessor for SearchLink);
  sub_24EEA4998(&qword_27F232910, type metadata accessor for SearchLink);
  v381 = 32;
  v218 = v306;
  sub_24F928D98();
  v189(v217, v0);
  type metadata accessor for Quote();
  sub_24EEA4998(&qword_27F232918, type metadata accessor for Quote);
  sub_24EEA4998(&qword_27F232920, type metadata accessor for Quote);
  v381 = 33;
  v219 = v307;
  sub_24F928D98();
  v189(v218, v0);
  type metadata accessor for FramedArtwork();
  v306 = &protocol conformance descriptor for FramedMedia;
  sub_24EEA4998(&qword_27F232928, type metadata accessor for FramedArtwork);
  sub_24EEA4998(&qword_27F232930, type metadata accessor for FramedArtwork);
  v381 = 35;
  v220 = v308;
  sub_24F928D98();
  v189(v219, v0);
  type metadata accessor for Screenshots();
  sub_24EEA4998(&qword_27F232938, type metadata accessor for Screenshots);
  sub_24EEA4998(&qword_27F2273E0, type metadata accessor for Screenshots);
  v381 = 36;
  v221 = v309;
  sub_24F928D98();
  v189(v220, v0);
  type metadata accessor for ProductMedia();
  sub_24EEA4998(&qword_27F232940, type metadata accessor for ProductMedia);
  sub_24EEA4998(&qword_27F226330, type metadata accessor for ProductMedia);
  v381 = 37;
  v222 = v310;
  sub_24F928D98();
  v189(v221, v0);
  type metadata accessor for ProductMediaItem();
  sub_24EEA4998(&qword_27F232948, type metadata accessor for ProductMediaItem);
  sub_24EEA4998(&qword_27F232950, type metadata accessor for ProductMediaItem);
  v381 = 38;
  v223 = v311;
  sub_24F928D98();
  v189(v222, v0);
  type metadata accessor for AppShowcase();
  sub_24EEA4998(&qword_27F232958, type metadata accessor for AppShowcase);
  sub_24EEA4998(&qword_27F232960, type metadata accessor for AppShowcase);
  v381 = 39;
  v224 = v312;
  sub_24F928D98();
  v189(v223, v0);
  type metadata accessor for InAppPurchaseShowcase();
  sub_24EEA4998(&qword_27F232968, type metadata accessor for InAppPurchaseShowcase);
  sub_24EEA4998(&qword_27F232970, type metadata accessor for InAppPurchaseShowcase);
  v381 = 40;
  v225 = v313;
  sub_24F928D98();
  v189(v224, v0);
  type metadata accessor for MixedMediaLockup();
  sub_24EEA4998(&qword_27F232978, type metadata accessor for MixedMediaLockup);
  sub_24EEA4998(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup);
  v381 = 41;
  v226 = v314;
  sub_24F928D98();
  v189(v225, v0);
  v381 = 50;
  v227 = v315;
  sub_24F928D98();
  v189(v226, v0);
  v381 = 62;
  v228 = v316;
  sub_24F928D98();
  v189(v227, v0);
  type metadata accessor for ProductPageLink();
  sub_24EEA4998(&qword_27F232980, type metadata accessor for ProductPageLink);
  sub_24EEA4998(&qword_27F221038, type metadata accessor for ProductPageLink);
  v381 = 42;
  v229 = v317;
  sub_24F928D98();
  v189(v228, v0);
  type metadata accessor for FramedVideo();
  sub_24EEA4998(&qword_27F232988, type metadata accessor for FramedVideo);
  sub_24EEA4998(&qword_27F232990, type metadata accessor for FramedVideo);
  v381 = 47;
  v230 = v318;
  sub_24F928D98();
  v189(v229, v0);
  type metadata accessor for ProductDescription();
  sub_24EEA4998(&qword_27F232998, type metadata accessor for ProductDescription);
  sub_24EEA4998(&qword_27F2329A0, type metadata accessor for ProductDescription);
  v381 = 48;
  v231 = v319;
  sub_24F928D98();
  v189(v230, v0);
  type metadata accessor for Banner();
  sub_24EEA4998(&qword_27F2329A8, type metadata accessor for Banner);
  sub_24EEA4998(&qword_27F2258D8, type metadata accessor for Banner);
  v381 = 49;
  v232 = v320;
  sub_24F928D98();
  v189(v231, v0);
  type metadata accessor for RoundedButton();
  sub_24EEA4998(&qword_27F2329B0, type metadata accessor for RoundedButton);
  sub_24EEA4998(&qword_27F2329B8, type metadata accessor for RoundedButton);
  v381 = 51;
  v233 = v321;
  sub_24F928D98();
  v189(v232, v0);
  type metadata accessor for TitledButtonStack();
  sub_24EEA4998(&qword_27F2329C0, type metadata accessor for TitledButtonStack);
  sub_24EEA4998(&qword_27F2329C8, type metadata accessor for TitledButtonStack);
  v381 = 52;
  v234 = v322;
  sub_24F928D98();
  v189(v233, v0);
  type metadata accessor for ImageButton();
  sub_24EEA4998(&qword_27F2329D0, type metadata accessor for ImageButton);
  sub_24EEA4998(&qword_27F2329D8, type metadata accessor for ImageButton);
  v381 = 53;
  v235 = v323;
  sub_24F928D98();
  v189(v234, v0);
  type metadata accessor for PersonalizationFeedbackRequest();
  sub_24EEA4998(&qword_27F2329E0, type metadata accessor for PersonalizationFeedbackRequest);
  sub_24EEA4998(&qword_27F2329E8, type metadata accessor for PersonalizationFeedbackRequest);
  v381 = 57;
  v236 = v324;
  sub_24F928D98();
  v189(v235, v0);
  type metadata accessor for LargeHeroBreakout();
  sub_24EEA4998(&qword_27F2329F0, type metadata accessor for LargeHeroBreakout);
  sub_24EEA4998(&qword_27F2329F8, type metadata accessor for LargeHeroBreakout);
  v381 = 58;
  v237 = v325;
  sub_24F928D98();
  v189(v236, v0);
  type metadata accessor for UpsellBreakout();
  sub_24EEA4998(&qword_27F232A00, type metadata accessor for UpsellBreakout);
  sub_24EEA4998(&qword_27F232A08, type metadata accessor for UpsellBreakout);
  v381 = 59;
  v238 = v326;
  sub_24F928D98();
  v189(v237, v0);
  type metadata accessor for SmallBreakout();
  sub_24EEA4998(&qword_27F232A10, type metadata accessor for SmallBreakout);
  sub_24EEA4998(&qword_27F232A18, type metadata accessor for SmallBreakout);
  v381 = 60;
  v239 = v327;
  sub_24F928D98();
  v189(v238, v0);
  v326 = type metadata accessor for EditorialStoryCard(0);
  v325 = sub_24EEA4998(&qword_27F232A20, type metadata accessor for EditorialStoryCard);
  v324 = sub_24EEA4998(&qword_27F2294E8, type metadata accessor for EditorialStoryCard);
  v381 = 61;
  v240 = v328;
  sub_24F928D98();
  v189(v239, v0);
  type metadata accessor for ArcadeFooter();
  sub_24EEA4998(&qword_27F22B2A8, type metadata accessor for ArcadeFooter);
  sub_24EEA4998(&qword_27F232A28, type metadata accessor for ArcadeFooter);
  v381 = 63;
  v241 = v329;
  sub_24F928D98();
  v189(v240, v0);
  v328 = type metadata accessor for Badge();
  sub_24EEA4998(&qword_27F232A30, type metadata accessor for Badge);
  sub_24EEA4998(&qword_27F2144A0, type metadata accessor for Badge);
  v381 = 64;
  v242 = v330;
  sub_24F928D98();
  v189(v241, v0);
  type metadata accessor for InformationRibbon();
  sub_24EEA4998(&qword_27F232A38, type metadata accessor for InformationRibbon);
  sub_24EEA4998(&qword_27F232A40, type metadata accessor for InformationRibbon);
  v381 = 76;
  v243 = v331;
  sub_24F928D98();
  v189(v242, v0);
  type metadata accessor for RibbonBar();
  sub_24EEA4998(&qword_27F232A48, type metadata accessor for RibbonBar);
  sub_24EEA4998(&qword_27F232A50, type metadata accessor for RibbonBar);
  v381 = 13;
  v244 = v332;
  sub_24F928D98();
  v189(v243, v0);
  type metadata accessor for PreorderDisclaimer();
  sub_24EEA4998(&qword_27F232A58, type metadata accessor for PreorderDisclaimer);
  sub_24EEA4998(&qword_27F232A60, type metadata accessor for PreorderDisclaimer);
  v381 = 77;
  v245 = v333;
  sub_24F928D98();
  v189(v244, v0);
  type metadata accessor for PrivacyHeader();
  sub_24EEA4998(&qword_27F232A68, type metadata accessor for PrivacyHeader);
  sub_24EEA4998(&qword_27F232A70, type metadata accessor for PrivacyHeader);
  v381 = 78;
  v246 = v334;
  sub_24F928D98();
  v189(v245, v0);
  type metadata accessor for PrivacyType();
  sub_24EEA4998(&qword_27F232A78, type metadata accessor for PrivacyType);
  sub_24EEA4998(&qword_27F224818, type metadata accessor for PrivacyType);
  v381 = 80;
  v247 = v335;
  sub_24F928D98();
  v189(v246, v0);
  type metadata accessor for PrivacyCategory();
  sub_24EEA4998(&qword_27F232A80, type metadata accessor for PrivacyCategory);
  sub_24EEA4998(&qword_27F232A88, type metadata accessor for PrivacyCategory);
  v381 = 81;
  v248 = v336;
  sub_24F928D98();
  v189(v247, v0);
  type metadata accessor for PrivacyDefinition();
  sub_24EEA4998(&qword_27F232A90, type metadata accessor for PrivacyDefinition);
  sub_24EEA4998(&qword_27F232A98, type metadata accessor for PrivacyDefinition);
  v381 = 82;
  v249 = v337;
  sub_24F928D98();
  v189(v248, v0);
  type metadata accessor for AppPromotion();
  sub_24EEA4998(&qword_27F232830, type metadata accessor for AppPromotion);
  sub_24EEA4998(&qword_27F232AA0, type metadata accessor for AppPromotion);
  v381 = 83;
  v250 = v338;
  sub_24F928D98();
  v189(v249, v0);
  type metadata accessor for Placeholder();
  sub_24EEA4998(&qword_27F232AA8, type metadata accessor for Placeholder);
  sub_24EEA4998(&qword_27F232AB0, type metadata accessor for Placeholder);
  v381 = 93;
  v251 = v339;
  sub_24F928D98();
  v189(v250, v0);
  type metadata accessor for PageTabs();
  sub_24EEA4998(&qword_27F232AB8, type metadata accessor for PageTabs);
  sub_24EEA4998(&qword_27F232AC0, type metadata accessor for PageTabs);
  v381 = 86;
  v252 = v340;
  sub_24F928D98();
  v189(v251, v0);
  v381 = 89;
  v253 = v341;
  sub_24F928D98();
  v189(v252, v0);
  type metadata accessor for Ratings();
  sub_24EEA4998(&qword_27F21AD50, type metadata accessor for Ratings);
  sub_24EEA4998(&qword_27F213ED0, type metadata accessor for Ratings);
  v381 = 43;
  v254 = v342;
  sub_24F928D98();
  v189(v253, v0);
  type metadata accessor for ProductReview();
  sub_24EEA4998(&qword_27F232AC8, type metadata accessor for ProductReview);
  sub_24EEA4998(&qword_27F232AD0, type metadata accessor for ProductReview);
  v381 = 44;
  v255 = v343;
  sub_24F928D98();
  v189(v254, v0);
  type metadata accessor for ProductReviewAction();
  sub_24EEA4998(&qword_27F232AD8, type metadata accessor for ProductReviewAction);
  sub_24EEA4998(&qword_27F232AE0, type metadata accessor for ProductReviewAction);
  v381 = 45;
  v256 = v344;
  sub_24F928D98();
  v189(v255, v0);
  type metadata accessor for LinkableText();
  sub_24EEA4998(&qword_27F232AE8, type metadata accessor for LinkableText);
  sub_24EEA4998(&qword_27F21C360, type metadata accessor for LinkableText);
  v381 = 46;
  v257 = v345;
  sub_24F928D98();
  v189(v256, v0);
  type metadata accessor for MediaPageHeader();
  sub_24EEA4998(&qword_27F232AF0, type metadata accessor for MediaPageHeader);
  sub_24EEA4998(&qword_27F232AF8, type metadata accessor for MediaPageHeader);
  v381 = 90;
  v258 = v346;
  sub_24F928D98();
  v189(v257, v0);
  v381 = 91;
  v259 = v347;
  sub_24F928D98();
  v189(v258, v0);
  type metadata accessor for HorizontalRule();
  sub_24EEA4998(&qword_27F232B00, type metadata accessor for HorizontalRule);
  sub_24EEA4998(&qword_27F232B08, type metadata accessor for HorizontalRule);
  v381 = 34;
  v260 = v348;
  sub_24F928D98();
  v189(v259, v0);
  type metadata accessor for TextCard();
  sub_24EEA4998(&qword_27F232B10, type metadata accessor for TextCard);
  sub_24EEA4998(&qword_27F232B18, type metadata accessor for TextCard);
  v381 = 65;
  v261 = v349;
  sub_24F928D98();
  v189(v260, v0);
  type metadata accessor for ArcadeShowcase();
  sub_24EEA4998(&qword_27F232B20, type metadata accessor for ArcadeShowcase);
  sub_24EEA4998(&qword_27F232B28, type metadata accessor for ArcadeShowcase);
  v381 = 67;
  v262 = v350;
  sub_24F928D98();
  v189(v261, v0);
  type metadata accessor for VideoCard();
  sub_24EEA4998(&qword_27F232B30, type metadata accessor for VideoCard);
  sub_24EEA4998(&qword_27F232B38, type metadata accessor for VideoCard);
  v381 = 20;
  v263 = v351;
  sub_24F928D98();
  v189(v262, v0);
  type metadata accessor for GameCenterReengagement();
  sub_24EEA4998(&qword_27F230328, type metadata accessor for GameCenterReengagement);
  sub_24EEA4998(&qword_27F232B40, type metadata accessor for GameCenterReengagement);
  v381 = 70;
  v264 = v352;
  sub_24F928D98();
  v189(v263, v0);
  type metadata accessor for SmallGameCenterPlayer(0);
  sub_24EEA4998(&qword_27F232B48, type metadata accessor for SmallGameCenterPlayer);
  sub_24EEA4998(&qword_27F232B50, type metadata accessor for SmallGameCenterPlayer);
  v381 = 71;
  v265 = v353;
  sub_24F928D98();
  v189(v264, v0);
  type metadata accessor for LargeGameCenterPlayer(0);
  sub_24EEA4998(&qword_27F232B58, type metadata accessor for LargeGameCenterPlayer);
  sub_24EEA4998(&qword_27F232B60, type metadata accessor for LargeGameCenterPlayer);
  v381 = 72;
  v266 = v354;
  sub_24F928D98();
  v189(v265, v0);
  type metadata accessor for AchievementSummary();
  sub_24EEA4998(&qword_27F232B68, type metadata accessor for AchievementSummary);
  sub_24EEA4998(&qword_27F232B70, type metadata accessor for AchievementSummary);
  v381 = 73;
  v267 = v358;
  sub_24F928D98();
  v189(v266, v0);
  type metadata accessor for PosterLockup();
  sub_24EEA4998(&qword_27F232B78, type metadata accessor for PosterLockup);
  sub_24EEA4998(&qword_27F232B80, type metadata accessor for PosterLockup);
  v381 = 74;
  v268 = v359;
  sub_24F928D98();
  v189(v267, v0);
  type metadata accessor for PrivacyFooter();
  sub_24EEA4998(&qword_27F232B88, type metadata accessor for PrivacyFooter);
  sub_24EEA4998(&qword_27F232B90, type metadata accessor for PrivacyFooter);
  v381 = 79;
  v269 = v360;
  sub_24F928D98();
  v189(v268, v0);
  type metadata accessor for GamesHeroCarousel();
  sub_24EEA4998(&qword_27F2270E0, type metadata accessor for GamesHeroCarousel);
  sub_24EEA4998(&qword_27F232B98, type metadata accessor for GamesHeroCarousel);
  v381 = 87;
  v270 = v361;
  sub_24F928D98();
  v189(v269, v0);
  type metadata accessor for Uber();
  sub_24EEA4998(&qword_27F232BA0, type metadata accessor for Uber);
  sub_24EEA4998(&qword_27F232BA8, type metadata accessor for Uber);
  v381 = 88;
  v271 = v362;
  sub_24F928D98();
  v189(v270, v0);
  v381 = 23;
  v272 = v363;
  sub_24F928D98();
  v189(v271, v0);
  v381 = 24;
  v273 = v364;
  sub_24F928D98();
  v189(v272, v0);
  v381 = 96;
  v274 = v365;
  sub_24F928D98();
  v189(v273, v0);
  v381 = 97;
  v275 = v366;
  sub_24F928D98();
  v189(v274, v0);
  type metadata accessor for ImageLockup();
  sub_24EEA4998(&qword_27F232BB0, type metadata accessor for ImageLockup);
  sub_24EEA4998(&qword_27F232BB8, type metadata accessor for ImageLockup);
  v381 = 98;
  v276 = v367;
  sub_24F928D98();
  v189(v275, v0);
  v381 = 99;
  v277 = v368;
  sub_24F928D98();
  v189(v276, v0);
  v381 = 100;
  v278 = v369;
  sub_24F928D98();
  v189(v277, v0);
  type metadata accessor for TitledButton();
  sub_24EEA4998(&qword_27F232BC0, type metadata accessor for TitledButton);
  sub_24EEA4998(&qword_27F22A898, type metadata accessor for TitledButton);
  v381 = 101;
  v279 = v370;
  sub_24F928D98();
  v189(v278, v0);
  v381 = 54;
  v280 = v371;
  sub_24F928D98();
  v189(v279, v0);
  v381 = 55;
  v281 = v372;
  sub_24F928D98();
  v189(v280, v0);
  v381 = 56;
  v282 = v373;
  sub_24F928D98();
  v189(v281, v0);
  type metadata accessor for SearchResultsLearnMoreNotice();
  sub_24EEA4998(&qword_27F232BC8, type metadata accessor for SearchResultsLearnMoreNotice);
  sub_24EEA4998(&qword_27F232BD0, type metadata accessor for SearchResultsLearnMoreNotice);
  v381 = 103;
  v283 = v374;
  sub_24F928D98();
  v189(v282, v0);
  type metadata accessor for GamesPageHeader();
  sub_24EEA4998(&qword_27F232BD8, type metadata accessor for GamesPageHeader);
  sub_24EEA4998(&qword_27F232BE0, type metadata accessor for GamesPageHeader);
  v381 = 102;
  sub_24F928D98();
  return (v189)(v283, v0);
}

uint64_t sub_24EEA43B4()
{
  v0 = Shelf.ContentType.rawValue.getter();
  v2 = v1;
  if (v0 == Shelf.ContentType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24EEA445C@<X0>(unint64_t *a1@<X8>)
{
  result = Shelf.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EEA4484()
{
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEA44EC()
{
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EEA4550()
{
  sub_24F92D068();
  Shelf.ContentType.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEA45B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810);
  __swift_allocate_value_buffer(v0, qword_27F2327F8);
  __swift_project_value_buffer(v0, qword_27F2327F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232820);
  return sub_24F928588();
}

uint64_t static JSONContext.Property<A>.componentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2107B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232810);
  v3 = __swift_project_value_buffer(v2, qword_27F2327F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_24EEA46F8()
{
  result = qword_27F232818;
  if (!qword_27F232818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232818);
  }

  return result;
}

uint64_t _s11ContentTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x99)
  {
    goto LABEL_17;
  }

  if (a2 + 103 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 103) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 103;
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

      return (*a1 | (v4 << 8)) - 103;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 103;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x68;
  v8 = v6 - 104;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 103 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 103) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x99)
  {
    v4 = 0;
  }

  if (a2 > 0x98)
  {
    v5 = ((a2 - 153) >> 8) + 1;
    *result = a2 + 103;
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
    *result = a2 + 103;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24EEA489C()
{
  result = qword_27F232848;
  if (!qword_27F232848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232848);
  }

  return result;
}

unint64_t sub_24EEA48F0()
{
  result = qword_27F232850;
  if (!qword_27F232850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232850);
  }

  return result;
}

unint64_t sub_24EEA4944()
{
  result = qword_27F232880;
  if (!qword_27F232880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232880);
  }

  return result;
}

uint64_t sub_24EEA4998(unint64_t *a1, void (*a2)(uint64_t))
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

__int128 *sub_24EEA49E0(__int128 *result, char a2)
{
  v3 = *(v2 + 104);
  if (!v3)
  {
    return result;
  }

  v4 = v2;
  v6 = result[1];
  v19 = *result;
  v20 = v6;
  v7 = result[3];
  *v21 = result[2];
  *&v21[16] = v7;
  ProductTopLockup.primaryBanner(for:)(&v19, v18);
  v8 = v18[0];
  if ((~v18[0] & 0xF000000000000007) == 0)
  {

LABEL_4:
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_12;
  }

  if ((v18[0] & 0x8000000000000000) != 0)
  {
    v9 = v18[0] & 0x7FFFFFFFFFFFFFFFLL;
    v10 = *((v18[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x58);
    if (v10 == 1)
    {
    }

    else
    {
      v11 = *((v18[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x50);
      v12 = objc_opt_self();
      sub_24E6AD46C(v11, v10);

      sub_24E6AD46C(v11, v10);
      v13 = sub_24F92B588();

      v14 = [v12 isCapableOfAction:v11 capabilities:v13];

      sub_24EEA5774(v11, v10);
      if (v14)
      {
        sub_24EEA575C(v8);
        goto LABEL_4;
      }
    }
  }

  else
  {

    v9 = v8;
  }

  sub_24E65864C(v9 + 104, &v19);
  sub_24EEA575C(v8);
  v23 = v19;
  v24 = v20;
  v25 = *v21;
LABEL_12:
  swift_beginAccess();
  sub_24E65E064(v4 + 64, &v19);
  sub_24E65E064(&v23, &v21[8]);
  if (*(&v20 + 1))
  {
    sub_24E65E064(&v19, v18);
    if (*&v21[32])
    {
      v16[0] = *&v21[8];
      v16[1] = *&v21[24];
      v17 = v22;
      v15 = MEMORY[0x253052150](v18, v16);
      sub_24E6585F8(v16);
      sub_24E6585F8(v18);
      sub_24E601704(&v19, &qword_27F235830);
      if (v15)
      {

        return sub_24E601704(&v23, &qword_27F235830);
      }

      goto LABEL_21;
    }

    sub_24E6585F8(v18);
  }

  else if (!*&v21[32])
  {

    sub_24E601704(&v19, &qword_27F235830);
    return sub_24E601704(&v23, &qword_27F235830);
  }

  sub_24E601704(&v19, &qword_27F21B438);
LABEL_21:
  swift_beginAccess();
  sub_24EEA56EC(&v23, v4 + 64);
  swift_endAccess();
  if (a2)
  {
    *&v19 = v3;
    sub_24F9280C8();
  }

  sub_24E601704(&v23, &qword_27F235830);
}

id sub_24EEA4CD4(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v43 = *v1;
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EB58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v14 = v2[13];
    if (v14)
    {
      v15 = qword_27F2105D0;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F22D7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      v17 = v43;
      *(&v46 + 1) = swift_getMetatypeMetadata();
      *&aBlock = v17;
      sub_24F928438();
      sub_24E601704(&aBlock, &qword_27F2129B0);
      sub_24F9283A8();
      sub_24F92A588();

      v18 = v2[3];
      ObjectType = swift_getObjectType();
      v20 = *(v14 + 16);
      v21 = *(v20 + 24);
      *&aBlock = *(v20 + 16);
      *(&aBlock + 1) = v21;
      v22 = *(v18 + 56);

      v22(&aBlock, ObjectType, v18);
      v24 = v23;

      v25 = swift_getObjectType();
      (*(v24 + 16))(v44, v25, v24);
      swift_unknownObjectRelease();
      sub_24EEA49E0(v44, 1);

      aBlock = v44[0];
      v46 = v44[1];
      v47 = v44[2];
      v48 = v44[3];
      return sub_24E88D2AC(&aBlock);
    }
  }

  else
  {
    v36 = v9;
    v37 = v6;
    v38 = v7;
    v39 = v4;
    v40 = v3;
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    v35[1] = __swift_project_value_buffer(v26, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    v27 = v43;
    *(&v46 + 1) = swift_getMetatypeMetadata();
    *&aBlock = v27;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();

    sub_24E74EC40();
    v28 = sub_24F92BEF8();
    (*(v11 + 16))(v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v10);
    v29 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    (*(v11 + 32))(v30 + v29, v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *&v47 = sub_24EEA5670;
    *(&v47 + 1) = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_24EAF8248;
    *(&v46 + 1) = &block_descriptor_84;
    v31 = _Block_copy(&aBlock);

    v32 = v36;
    sub_24F927DA8();
    *&aBlock = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v33 = v37;
    v34 = v40;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v32, v33, v31);
    _Block_release(v31);

    (*(v39 + 8))(v33, v34);
    return (*(v42 + 8))(v32, v38);
  }

  return result;
}

uint64_t sub_24EEA5510()
{
  swift_unknownObjectRelease();

  sub_24E601704(v0 + 64, &qword_27F235830);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEA55AC()
{
  v1 = sub_24F91EB58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEA56EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEA575C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_24EEA5774(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24EEA5788()
{
  v1 = [v0 phoneNumberStrings];
  v2 = sub_24F92B5A8();

  if (*(v2 + 16) || (, v3 = [v0 emailAddressStrings], v2 = sub_24F92B5A8(), v3, *(v2 + 16)))
  {
    v4 = *(v2 + 32);
  }

  else
  {

    v6 = [v0 identifier];
    v4 = sub_24F92B0D8();
  }

  return v4;
}

char *sub_24EEA5878(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24F92AC68();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = a4;
    *(v14 + 5) = v13;
    v15 = a1;
    v16 = a2;

    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v19 + 8))(v11, v9);
    }
  }

  else
  {
    v14 = "y a specified game.";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_24EEA5AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a3;
  v35 = a5;
  v33 = a2;
  v45 = a1;
  v37 = sub_24F9281B8();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = *(a4 + OBJC_IVAR____TtC12GameStoreKit12JSGameCenter_dataProvider);
  v40 = sub_24F9298F8();
  v43 = v40;
  v44 = MEMORY[0x277D22078];
  v42[0] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38);

  v38 = a7;

  v17 = sub_24F92A9E8();
  sub_24F012130(v35, a6, a7, *(v16 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  v36 = v17;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v18 = v11;
  v19 = *(v11 + 16);
  v20 = v37;
  v19(v15, a2, v37);
  v21 = *(v18 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = swift_allocObject();
  v35 = v23;
  *(v23 + 16) = v45;
  v24 = *(v18 + 32);
  v32 = v15;
  v24(v23 + v22, v15, v20);
  v19(v15, v33, v20);
  v25 = v39;
  v19(v39, v41, v20);
  v26 = (v22 + v12 + v21) & ~v21;
  v27 = swift_allocObject();
  v28 = v45;
  *(v27 + 16) = v45;
  v24(v27 + v22, v32, v20);
  v24(v27 + v26, v25, v20);
  v43 = v40;
  v44 = MEMORY[0x277D22078];
  v42[0] = v38;
  v29 = v28;

  v30 = v29;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

void sub_24EEA5E2C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_24F92C978();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v12;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, v3);
      }

      else
      {
      }

      ++v5;
      sub_24EEEC844(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

char *sub_24EEA618C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24F92AC68();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v12 = MEMORY[0x25304F260]();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 2) = a2;
    *(v14 + 3) = a3;
    *(v14 + 4) = a4;
    *(v14 + 5) = v13;
    v15 = a1;
    v16 = a2;

    sub_24F92AC48();
    if (v4)
    {
    }

    else
    {
      v14 = sub_24F92AC58();

      (*(v19 + 8))(v11, v9);
    }
  }

  else
  {
    v14 = "recently played games.";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_24EEA63C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a3;
  v29 = a2;
  v37 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v35 = sub_24EEAD104(a5, a6, a7);
  v17 = *(v12 + 16);
  v17(v16, a2, v11);
  v18 = *(v12 + 80);
  v19 = (v18 + 24) & ~v18;
  v28 = v19 + v13;
  v30 = v19;
  v20 = swift_allocObject();
  v32 = v20;
  *(v20 + 16) = v37;
  v21 = *(v12 + 32);
  v21(v20 + v19, v16, v11);
  v17(v16, v29, v11);
  v22 = v31;
  v17(v31, v34, v11);
  v23 = (v28 + v18) & ~v18;
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v37;
  v21(v24 + v30, v16, v11);
  v21(v24 + v23, v22, v11);
  v36[3] = sub_24F9298F8();
  v36[4] = MEMORY[0x277D22078];
  v36[0] = v33;
  v26 = v25;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void sub_24EEA6678(uint64_t a1, objc_class *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F941C80;
  v4.super.isa = a2;
  *(v3 + 32) = sub_24EED5AA0(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v5 = sub_24F92CF68();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a2];
  swift_unknownObjectRelease();
  if (v6)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    *(v7 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v7 + 32) = v6;
    v8 = v6;
    v9 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA6914(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

id sub_24EEA6BA8(void *a1)
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v2 = a1;
  v3 = sub_24F92C448();
  v4 = sub_24F92C458();

  return v4;
}

char *sub_24EEA6C60(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v32 = a4;
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92AC68();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v14 = MEMORY[0x25304F260]();
  if (!v14)
  {
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    return v21;
  }

  v15 = v14;

  v16 = sub_24F92CB88();

  if (v16 >= 3)
  {
    v21 = sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
    goto LABEL_7;
  }

  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v32;
  *(v18 + 24) = v16;
  v20 = v30;
  *(v18 + 32) = v29;
  *(v18 + 40) = v20;
  *(v18 + 48) = v15;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v21 = v31;
  v22 = v19;

  v23 = v33;
  sub_24F92AC48();
  if (v23)
  {
LABEL_7:

    return v21;
  }

  v21 = sub_24F92AC58();

  (*(v26 + 8))(v13, v27);
  return v21;
}

uint64_t sub_24EEA7034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void, void, void), void (*a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v63 = a7;
  v62 = a6;
  v71 = a3;
  v74 = a2;
  v79 = a1;
  v61 = a9;
  v72 = sub_24F9281B8();
  v11 = *(v72 - 8);
  v73 = *(v11 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v66 = sub_24F922028();
  v16 = *(v66 - 8);
  v67 = *(v16 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F9298F8();
  v77 = v69;
  v78 = MEMORY[0x277D22078];
  v76[0] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230940);
  v68 = a8;

  v18 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C28);
  v19 = sub_24F92A9E8();
  sub_24E615E00(v76, v75);
  v20 = swift_allocObject();
  v21 = v62;
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v63;
  sub_24E612C80(v75, (v20 + 5));

  sub_24EEABF30(a8, sub_24EEAE8FC, v20);

  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = v18;
  v65 = v18;
  swift_retain_n();
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v76);
  v23 = v16;
  v24 = *(v16 + 16);
  v60 = v16 + 16;
  v63 = v24;
  v25 = v64;
  v26 = v66;
  v24(v64, a9, v66);
  v27 = v11;
  v62 = *(v11 + 16);
  v28 = v15;
  v62(v15, v74, v72);
  v29 = *(v23 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = *(v27 + 80);
  v58 = v30;
  v32 = (v67 + v31 + v30) & ~v31;
  v53 = v32 + v73;
  v55 = v32;
  v59 = v29 | v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v79;
  v34 = *(v23 + 32);
  v56 = v23 + 32;
  v57 = v34;
  v35 = v33 + v30;
  v36 = v33;
  v67 = v33;
  v34(v35, v25, v26);
  v54 = *(v27 + 32);
  v37 = v36 + v32;
  v38 = v28;
  v52 = v28;
  v39 = v72;
  v54(v37, v28, v72);
  v40 = v25;
  v63(v25, v61, v26);
  v41 = v38;
  v42 = v62;
  v62(v41, v74, v39);
  v43 = v70;
  v42(v70, v71, v39);
  v44 = (v53 + v31) & ~v31;
  v45 = swift_allocObject();
  v46 = v79;
  *(v45 + 16) = v79;
  v57(v45 + v58, v40, v26);
  v47 = v54;
  v54(v45 + v55, v52, v39);
  v47(v45 + v44, v43, v39);
  v77 = v69;
  v78 = MEMORY[0x277D22078];
  v76[0] = v68;
  v48 = v46;

  v49 = v48;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

void sub_24EEA761C(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v3 = sub_24F92CF68();
  v4 = [objc_opt_self() valueWithObject:v3 inContext:a2];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_24F92C048();
    sub_24F929778();
    v5 = sub_24F929768();
    sub_24F921FE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24F93DE60;
    *(v6 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA78BC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  sub_24F92C048();
  sub_24F929778();
  v5 = sub_24F929768();
  sub_24F921FE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  v7 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v8 = v7;
  if (v4)
  {
    *(v6 + 56) = v7;
    *(v6 + 32) = v4;
    v9 = v4;
    v11 = sub_24F9281A8();
  }

  else
  {
    v10 = MEMORY[0x253051C90](a1, a2);
    *(v6 + 56) = v8;
    *(v6 + 32) = v10;
    v11 = sub_24F9281A8();
  }
}

char *sub_24EEA7D54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F92AC68();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = a5;
    *(v15 + 6) = v14;
    v16 = a1;
    v17 = a2;

    v18 = v22;
    sub_24F92AC48();
    if (v18)
    {
    }

    else
    {
      v15 = sub_24F92AC58();

      (*(v21 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "lter was passed:";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_24EEA7F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a3;
  v37 = a6;
  v38 = a7;
  v36 = a5;
  v34 = a2;
  v47 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = *(a4 + OBJC_IVAR____TtC12GameStoreKit12JSGameCenter_dataProvider);
  v42 = sub_24F9298F8();
  v45 = v42;
  v46 = MEMORY[0x277D22078];
  v44[0] = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C20);
  v40 = a8;

  v18 = sub_24F92A9E8();
  sub_24EEAD24C(v36, v37, v38, a8, *(v17 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  v39 = v18;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v44);
  v19 = v12;
  v20 = *(v12 + 16);
  v20(v16, a2, v11);
  v21 = *(v19 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = swift_allocObject();
  v38 = v23;
  *(v23 + 16) = v47;
  v24 = *(v19 + 32);
  v33 = v16;
  v24(v23 + v22, v16, v11);
  v20(v16, v34, v11);
  v25 = v41;
  v20(v41, v43, v11);
  v26 = (v22 + v13 + v21) & ~v21;
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v47;
  v24(v27 + v22, v33, v11);
  v24(v27 + v26, v25, v11);
  v45 = v42;
  v46 = MEMORY[0x277D22078];
  v44[0] = v40;
  v29 = v28;

  v30 = v29;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

void sub_24EEA8300(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_24F92C978();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v12;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, v3);
      }

      else
      {
      }

      ++v5;
      sub_24EE9D80C(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA8638(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

char *sub_24EEA88CC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F92AC68();
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v13 = MEMORY[0x25304F260]();
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    *(v15 + 5) = a5;
    *(v15 + 6) = v14;
    v16 = a1;
    v17 = a2;

    v18 = v22;
    sub_24F92AC48();
    if (v18)
    {
    }

    else
    {
      v15 = sub_24F92AC58();

      (*(v21 + 8))(v12, v10);
    }
  }

  else
  {
    v15 = "dingFriendsRestricted";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_24EEA8B0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v37 = a3;
  v32 = a2;
  v34 = a1;
  v13 = sub_24F9281B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v38 = sub_24EEAD5D4(a5, a6, a7);
  v19 = *(v14 + 16);
  v19(v18, a2, v13);
  v20 = *(v14 + 80);
  v21 = (v20 + 24) & ~v20;
  v31 = v21 + v15;
  v33 = v21;
  v22 = swift_allocObject();
  v36 = v22;
  *(v22 + 16) = a1;
  v23 = *(v14 + 32);
  v23(v22 + v21, v18, v13);
  v19(v18, v32, v13);
  v24 = v35;
  v19(v35, v37, v13);
  v25 = (v31 + v20) & ~v20;
  v26 = swift_allocObject();
  v27 = v33;
  v28 = v34;
  *(v26 + 16) = v34;
  v23(v26 + v27, v18, v13);
  v23(v26 + v25, v24, v13);
  v40[3] = sub_24F9298F8();
  v40[4] = MEMORY[0x277D22078];
  v40[0] = v39;
  v29 = v28;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_24EEA8DB4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    sub_24F92C978();
    if (v4 < 0)
    {
      __break(1u);
      swift_once();
      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v12;
      sub_24F9283A8();
      sub_24F92A5A8();

      return;
    }

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](v5, v3);
      }

      else
      {
      }

      ++v5;
      GameCenterActivityFeedCard.makeValue(in:)(a2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v4 != v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223FA8);
  v6 = sub_24F92CF68();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:a2];
  swift_unknownObjectRelease();
  if (v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_24F93DE60;
    *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
    *(v8 + 32) = v7;
    v9 = v7;
    v11 = sub_24F9281A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24EEA90FC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = v6;
  if (v4)
  {
    *(v5 + 56) = v6;
    *(v5 + 32) = v4;
    v8 = v4;
    v10 = sub_24F9281A8();
  }

  else
  {
    v9 = MEMORY[0x253051C90](a1, a2);
    *(v5 + 56) = v7;
    *(v5 + 32) = v9;
    v10 = sub_24F9281A8();
  }
}

id sub_24EEA9390(void *a1)
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v2 = a1;
  v3 = sub_24F92C448();
  v4 = sub_24F92C458();

  return v4;
}

char *sub_24EEA9454(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_24F92AC68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v11 = MEMORY[0x25304F260]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = a2;
    *(v13 + 4) = a3;
    v14 = a1;

    v15 = a2;
    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v13 = sub_24F92AC58();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    v13 = "tive JS worker thread";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_24EEA9798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = a1;
  v33 = a6;
  v30 = a3;
  v31 = a5;
  v28 = a4;
  v8 = sub_24F9281B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v15 = *(v9 + 16);
  v15(&v28 - v13, a2, v8, v12);
  (v15)(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v8);
  v16 = *(v9 + 80);
  v17 = (v16 + 48) & ~v16;
  v18 = (v10 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  v20 = v31;
  v21 = v33;
  *(v19 + 2) = v31;
  *(v19 + 3) = v21;
  *(v19 + 4) = a4;
  v22 = v32;
  *(v19 + 5) = v32;
  v23 = *(v9 + 32);
  v23(&v19[v17], v14, v8);
  v23(&v19[v18], v29, v8);
  v24 = v20;
  v25 = v28;

  v26 = v22;
  sub_24EEABF30(v25, sub_24EEACCAC, v19);
}

uint64_t sub_24EEA9984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v28 = a6;
  v34 = a4;
  v35 = a5;
  v9 = sub_24F9281B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v33 = sub_24EEAD90C(a1);
  v15 = *(v10 + 16);
  v15(v14, a6, v9);
  v16 = *(v10 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = v17 + v11;
  v29 = v17;
  v19 = swift_allocObject();
  v31 = v19;
  *(v19 + 16) = v35;
  v20 = *(v10 + 32);
  v20(v19 + v17, v14, v9);
  v15(v14, v28, v9);
  v21 = v30;
  v15(v30, v32, v9);
  v22 = (v18 + v16) & ~v16;
  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v35;
  v20(v23 + v29, v14, v9);
  v20(v23 + v22, v21, v9);
  v36[3] = sub_24F9298F8();
  v36[4] = MEMORY[0x277D22078];
  v36[0] = v34;
  v25 = v24;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_24EEA9C20(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v3 = *(v1 + 16);
  v11 = MEMORY[0x277D83B88];
  v10[0] = v3;
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0);
  sub_24F9283A8();
  sub_24F92A588();

  sub_24EEAE034();
  sub_24F92B6B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  v5 = v11;
  v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v4 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = sub_24F9281A8();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_24EEA9F38(uint64_t a1, uint64_t a2)
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5 = sub_24F92CFE8();
  v14[3] = MEMORY[0x277D837D0];
  v14[0] = v5;
  v14[1] = v6;
  sub_24F928438();
  sub_24E601704(v14, &qword_27F2129B0);
  sub_24F92A5A8();

  v7 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  v9 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v10 = v9;
  if (v7)
  {
    *(v8 + 56) = v9;
    *(v8 + 32) = v7;
    v11 = v7;
    v13 = sub_24F9281A8();
  }

  else
  {
    v12 = MEMORY[0x253051C90](a1, a2);
    *(v8 + 56) = v10;
    *(v8 + 32) = v12;
    v13 = sub_24F9281A8();
  }
}

char *sub_24EEAA440(void *a1, void *a2)
{
  v5 = sub_24F92AC68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v9 = MEMORY[0x25304F260]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_24F92AC48();
    if (v2)
    {
    }

    else
    {
      v11 = sub_24F92AC58();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "game info for bundleId";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_24EEAA654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a2;
  v36 = a3;
  v48 = a1;
  v8 = sub_24F9281B8();
  v9 = *(v8 - 8);
  v43 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v11;
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v13;
  v41 = sub_24F9298F8();
  v46 = v41;
  v47 = MEMORY[0x277D22078];
  v45[0] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF8);
  v39 = a5;

  v14 = sub_24F92A9E8();
  v40 = v14;
  sub_24E615E00(v45, v44);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_24E612C80(v44, v15 + 24);

  sub_24EEABF30(a5, sub_24EEAC6E4, v15);

  __swift_destroy_boxed_opaque_existential_1(v45);
  v16 = *(v9 + 16);
  v17 = v38;
  v16(v38, a2, v8);
  v16(v11, a3, v8);
  v18 = *(v9 + 80);
  v19 = (v18 + 24) & ~v18;
  v34 = v43 + v18;
  v20 = (v43 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v48;
  v22 = *(v9 + 32);
  v23 = v21 + v19;
  v24 = v21;
  v37 = v21;
  v22(v23, v17, v8);
  v25 = v24 + v20;
  v26 = v42;
  v22(v25, v42, v8);
  v16(v17, v35, v8);
  v16(v26, v36, v8);
  v27 = (v18 + 32) & ~v18;
  v28 = (v34 + v27) & ~v18;
  v29 = swift_allocObject();
  v30 = v39;
  v31 = v48;
  *(v29 + 16) = v39;
  *(v29 + 24) = v31;
  v22(v29 + v27, v17, v8);
  v22(v29 + v28, v42, v8);
  v46 = v41;
  v47 = MEMORY[0x277D22078];
  v45[0] = v30;
  swift_retain_n();
  v32 = v31;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

void sub_24EEAA9F0(uint64_t a1, objc_class *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860);
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  v7 = objc_opt_self();
  v8 = [v7 valueWithNewObjectInContext_];
  if (v8)
  {
    v9 = v8;
    sub_24EEACAC4(a1, v6);
    v10 = *v6;
    v11 = *(v6 + 1);
    v12 = *(v4 + 48);

    v21[1] = v10;
    v21[2] = v11;
    v13 = [v7 valueWithObject:sub_24F92CF68() inContext:a2];
    swift_unknownObjectRelease();
    v14 = sub_24F91FEF8();
    (*(*(v14 - 8) + 8))(&v6[v12], v14);
    if (v13)
    {
      sub_24F92C328();
      Achievement.makeValue(in:)(a2);
      sub_24F92C328();
      v15.super.isa = a2;
      sub_24EED5AA0(v15);
      sub_24F92C328();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_24F93DE60;
      *(v16 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
      *(v16 + 32) = v9;
      v17 = v9;
      v19 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_24F93DE60;
    *(v18 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    sub_24F92A808();
    v21[0] = sub_24F9281A8();

    v20 = v21[0];
  }
}

uint64_t sub_24EEAAE7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a1;
  v26[1] = a2;
  v8 = sub_24F9281B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  v16 = *(v9 + 16);
  v16(v26 - v14, a4, v8, v13);
  (v16)(v11, a5, v8);
  v17 = *(v9 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v10 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = *(v9 + 32);
  v21(v20 + v18, v15, v8);
  v21(v20 + v19, v11, v8);
  v22 = v26[0];
  *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26[0];
  v23 = a3;
  v24 = v22;
  sub_24F9298E8();
}

void sub_24EEAB050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() valueWithNewArrayInContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  v8 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v9 = v8;
  if (v6)
  {
    *(v7 + 56) = v8;
    *(v7 + 32) = v6;
    v10 = v6;
    v12 = sub_24F9281A8();
  }

  else
  {
    v11 = MEMORY[0x253051C90](a4, a1);
    *(v7 + 56) = v9;
    *(v7 + 32) = v11;
    v12 = sub_24F9281A8();
  }
}

const char *sub_24EEAB368(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24F92AC68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v11 = MEMORY[0x25304F260]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v12;
    v14 = a1;

    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v13 = sub_24F92AC58();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "GameStoreKit.JSGameCenter";
    sub_24F92A868();
    sub_24EEAC5D4(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_24EEAB590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a2;
  v36 = a4;
  v41 = a3;
  v44 = a1;
  v9 = sub_24F9281B8();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for GameCenter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF0);
  v12 = sub_24F92A9E8();
  v13 = swift_allocObject();
  v42 = v12;
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = a4;
  v13[5] = a5;
  v35 = a5;

  sub_24EEABF30(a6, sub_24EEABF24, v13);

  v14 = v37;
  v15 = v38;
  v34 = *(v37 + 16);
  v16 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34(v16, v40, v38);
  v17 = *(v14 + 80);
  v18 = (v17 + 24) & ~v17;
  v10 += 7;
  v19 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v44;
  v37 = *(v14 + 32);
  v21 = v20 + v18;
  v40 = v20;
  v22 = v16;
  v33 = v16;
  (v37)(v21, v16, v15);
  v23 = (v20 + v19);
  v25 = v35;
  v24 = v36;
  *v23 = v36;
  v23[1] = v25;
  v34(v22, v41, v15);
  v26 = (v17 + 16) & ~v17;
  v27 = (v10 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (v37)(v28 + v26, v33, v15);
  v29 = v44;
  *(v28 + v27) = v44;
  v30 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v24;
  v30[1] = v25;
  v43[3] = sub_24F9298F8();
  v43[4] = MEMORY[0x277D22078];
  v43[0] = v39;
  swift_bridgeObjectRetain_n();
  v31 = v29;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void sub_24EEAB8A4(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[6];
  type metadata accessor for GameInfoSummary();
  inited = swift_initStackObject();
  inited[16] = v3;
  inited[17] = v4;
  inited[18] = v5;
  v7 = sub_24EA5B378(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  *(v8 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_24F9281A8();
}

void sub_24EEABB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = MEMORY[0x253051C90](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_24F9281A8();
}

uint64_t sub_24EEABEAC()
{

  return swift_deallocObject();
}

uint64_t sub_24EEABF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F927DC8();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = sub_24F9298F8();
  v24[4] = MEMORY[0x277D22078];
  v24[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0);

  v11 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAC5B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_85;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v22 = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);

  v13 = swift_allocObject();
  v15 = v20;
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_24EEAC2D8()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EEAC3B4(char *a1)
{
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEAB8A4(a1, v3);
}

uint64_t sub_24EEAC458()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EEAC508(uint64_t a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EEABB1C(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEAC5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EEAC648()
{

  return swift_deallocObject();
}

uint64_t sub_24EEAC6A4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

void sub_24EEAC6F0(uint64_t a1)
{
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEAA9F0(a1, v3);
}

uint64_t sub_24EEAC790()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAC884(uint64_t a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_24EEAAE7C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24EEAC924()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return swift_deallocObject();
}

void sub_24EEACA24()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EEAB050(v6, v0 + v4, v0 + v5, v7);
}

uint64_t sub_24EEACAC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEACB50()
{

  return swift_deallocObject();
}

uint64_t sub_24EEACBB0()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEACCAC(void *a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_24EEA9984(a1, v6, v7, v8, v9, v1 + v5, v10);
}

uint64_t sub_24EEACD50(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = sub_24E69A5C4(0, &qword_27F222300);
  v25[4] = MEMORY[0x277D225C0];
  v25[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0);
  v11 = a1;
  v12 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAF2A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_110;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24EEAC5D4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v20);

  v14 = swift_allocObject();
  v16 = v21;
  v15 = v22;
  *(v14 + 16) = v21;
  *(v14 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_24EEAD104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_24F9298F8();
  v12[4] = MEMORY[0x277D22078];
  v12[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C30);

  v7 = sub_24F92A9E8();
  if (qword_27F210D08 != -1)
  {
    swift_once();
  }

  v8 = qword_27F2357C8;
  sub_24E615E00(v12, v11);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  sub_24E612C80(v11, (v9 + 5));
  v9[10] = ObjectType;

  sub_24EEACD50(v8, sub_24EEAEE88, v9);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_24EEAD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v22[3] = sub_24F9298F8();
  v22[4] = MEMORY[0x277D22078];
  v22[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C20);

  v11 = sub_24F92A9E8();

  v12 = sub_24F92CB88();

  if (v12 > 2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v21 = MEMORY[0x277D837D0];
    *&v20 = a1;
    *(&v20 + 1) = a2;

    sub_24F928458();
    sub_24E601704(&v20, &qword_27F2129B0);
    sub_24F92A5A8();

    sub_24EEAE088();
    v17 = swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 4;
    sub_24F92A9A8();
  }

  else
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    *(v14 + 32) = a3;
    *(v14 + 40) = v11;
    sub_24E615E00(v22, &v20);
    v15 = swift_allocObject();
    v15[2] = a5;
    v15[3] = sub_24EEAE6EC;
    v15[4] = v14;
    sub_24E612C80(&v20, (v15 + 5));
    v15[10] = v10;

    sub_24EEABF30(a4, sub_24EEAE714, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t sub_24EEAD5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C18);
  v9 = sub_24F92A9E8();

  v10 = sub_24F92CB88();

  if (v10 > 2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v17[3] = MEMORY[0x277D837D0];
    v17[0] = a1;
    v17[1] = a2;

    sub_24F928458();
    sub_24E601704(v17, &qword_27F2129B0);
    sub_24F92A5A8();

    sub_24EEAE088();
    v14 = swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_24F92A9A8();
  }

  else
  {
    v11 = sub_24F92B858();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a3;
    *(v12 + 48) = v9;

    sub_24F1F2908(0, 0, v8, &unk_24F9AAD60, v12);

    sub_24E601704(v8, &unk_27F21B570);
  }

  return v9;
}

id sub_24EEAD90C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C08);
  v34 = sub_24F92A9E8();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_24F929778();
        v32 = a1;
        sub_24F929768();
        sub_24F921FF8();
        sub_24F92C058();
        v20 = sub_24F929768();
        sub_24F921FE8();

        if (qword_27F210590 != -1)
        {
          swift_once();
        }

        v21 = sub_24F92AAE8();
        __swift_project_value_buffer(v21, qword_27F39C410);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v22 = sub_24F92B858();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_24F1D3DA4(0, 0, v5, &unk_24F9AAD50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v30 = sub_24F92AAE8();
      __swift_project_value_buffer(v30, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_24F92A9A8();

    return v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEAE034()
{
  result = qword_27F232C00;
  if (!qword_27F232C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232C00);
  }

  return result;
}

unint64_t sub_24EEAE088()
{
  result = qword_27F232C10;
  if (!qword_27F232C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232C10);
  }

  return result;
}

uint64_t sub_24EEAE0DC()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAE1CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E614970;

  return sub_24F7F82F0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_24EEAE390()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEAE3D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24EFA72BC(a1, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EEAE598(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return a2(a1, v7, v2 + v6, v8);
}

uint64_t sub_24EEAE64C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_4Tm_3(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_24EEAE750()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAE8BC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24EEAE920()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F9281B8();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_24EEAEA70(uint64_t a1)
{
  sub_24F922028();
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEA761C(a1, v3);
}

uint64_t sub_24EEAEB48()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F9281B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v7 + v8) & ~v7;

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v6 + 8);
  v10(v0 + v8, v5);
  v10(v0 + v9, v5);

  return swift_deallocObject();
}

void sub_24EEAECB8(uint64_t a1)
{
  sub_24F922028();
  sub_24F9281B8();
  v3 = *(v1 + 16);

  sub_24EEA78BC(a1, v3);
}

uint64_t objectdestroy_78Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return swift_deallocObject();
}

uint64_t sub_24EEAEEBC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_96Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_40Tm_0()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEAF068(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_25Tm()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t GenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18[-v13 - 8];
  swift_allocObject();
  sub_24E60169C(a4, v14, &qword_27F228530);
  sub_24E60169C(a6, v18, &qword_27F229490);
  v15 = sub_24EEB45A0(a1, a2, a3, v14, a5, v18);

  sub_24E601704(a6, &qword_27F229490);
  sub_24E601704(a4, &qword_27F228530);
  return v15;
}

uint64_t GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18[-v13 - 8];
  sub_24E60169C(a4, &v18[-v13 - 8], &qword_27F228530);
  sub_24E60169C(a6, v18, &qword_27F229490);
  v15 = sub_24EEB45A0(a1, a2, a3, v14, a5, v18);

  sub_24E601704(a6, &qword_27F229490);
  sub_24E601704(a4, &qword_27F228530);
  return v15;
}

uint64_t BaseGenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = sub_24EEB50BC(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_24EEAF5D4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_27F23ABD8 object:*(v0 + qword_27F232C58)];

  v2 = BasePresenter.deinit();

  sub_24E883630(v2 + qword_27F39CC30);
  sub_24E601704(v2 + qword_27F39CC38, &qword_27F229490);
  sub_24E601704(v2 + qword_27F39CC40, &qword_27F228530);

  sub_24E601704(v2 + qword_27F39CC50, &qword_27F2129B0);

  sub_24E824448(*(v2 + qword_27F39CC60));

  return v2;
}

uint64_t BaseGenericPagePresenter.deinit()
{
  sub_24EEB1E90();
  v0 = BasePresenter.deinit();

  sub_24E883630(v0 + qword_27F39CC30);
  sub_24E601704(v0 + qword_27F39CC38, &qword_27F229490);
  sub_24E601704(v0 + qword_27F39CC40, &qword_27F228530);

  sub_24E601704(v0 + qword_27F39CC50, &qword_27F2129B0);

  sub_24E824448(*(v0 + qword_27F39CC60));

  return v0;
}

uint64_t sub_24EEAF96C()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_24F01DD24();
  if (*(v0 + qword_27F232C48))
  {
    if (sub_24EEB064C())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      v10 = v2;
      v11 = *(v9 + 32);

      v11(v12, ObjectType, v9);
      v2 = v10;

      swift_unknownObjectRelease();
    }

    if (sub_24EEB064C())
    {
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 32))(*(v0 + qword_27F232C80), v15, v14);
      swift_unknownObjectRelease();
    }

    v16 = *(*v0 + 704);

    v16(v17, 0);

    *(v0 + qword_27F232C48) = 0;
  }

  if (*(v0 + qword_27F232C78) == 1)
  {
    result = swift_beginAccess();
    v18 = v0[2];
    if (v18)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v20 = v19;
      (*(v2 + 8))(v4, v1);
      v21 = v18 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v21 = v20;
      *(v21 + 8) = 0;
      v22 = *(v18 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v22 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }

  return result;
}

uint64_t sub_24EEAFC44(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_24F92A088();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v4 + 264))(v13);
  if ((result & 1) == 0)
  {
    v17 = qword_27F39CC70;
    result = swift_beginAccess();
    if ((*(v2 + v17) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
    {
      sub_24E60169C(v2 + qword_27F39CC40, v10, &qword_27F228530);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        return sub_24E601704(v10, &qword_27F228530);
      }

      else
      {
        (*(v12 + 32))(v15, v10, v11);
        if (*(v2 + qword_27F232C78) != 1 || (a1 & 1) != 0)
        {
          (*(*v2 + 576))(1);
          swift_beginAccess();
          if (v2[3])
          {
            *v7 = 1;
            v18 = v19;
            (*(v19 + 104))(v7, *MEMORY[0x277D222A0], v5);

            sub_24F92A0D8();

            (*(v18 + 8))(v7, v5);
          }

          (*(*v2 + 1136))(v15);
          swift_retain_n();
          sub_24ED90514(v20);
          sub_24F92A958();

          __swift_destroy_boxed_opaque_existential_1(v20);
        }

        return (*(v12 + 8))(v15, v11);
      }
    }
  }

  return result;
}

uint64_t sub_24EEB0058(char a1)
{
  v2 = v1;
  v4 = sub_24F9287F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24F9287C8();
    v8 = type metadata accessor for BaseGenericPagePresenter();
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v7, v8, WitnessTable);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_getObjectType();
    sub_24F9296B8();
  }

  if (*(v2 + qword_27F232C50))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  swift_beginAccess();
  sub_24E9CBF30(&v18, v2 + 40, &qword_27F224F98);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(&v18, &qword_27F224F98);
  v11 = *(v2 + qword_27F39CC48);
  *(v2 + qword_27F39CC48) = MEMORY[0x277D84F90];
  sub_24EEB2EB4(v11);

  v12 = *(v2 + qword_27F232C60);
  *(v2 + qword_27F232C60) = MEMORY[0x277D84FA0];
  sub_24EEB3FD0(v12);

  v18 = 0u;
  v19 = 0u;
  sub_24EEB0B0C(&v18);
  *(v2 + qword_27F232C78) = 0;
  (*(*v2 + 576))(0);
  sub_24EEB4554(0);
  result = sub_24EEB064C();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(*(*(v15 + 24) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EEB0370()
{
  sub_24EEB4540();
}

uint64_t sub_24EEB0398(uint64_t a1)
{
  sub_24EEB4554(a1);
}

uint64_t sub_24EEB03D0(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27F39CC48);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v5);
    v5 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  v7 = *(v2 + qword_27F39CC48);
  *(v2 + qword_27F39CC48) = v5;
  sub_24EEB2EB4(v7);
}

uint64_t sub_24EEB0490()
{
  v1 = *(v0 + qword_27F39CC48);
  if (v1 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_24EEB04C0(unint64_t result)
{
  v2 = *(v1 + qword_27F39CC48);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = result;

    v4 = MEMORY[0x253052270](v3, v2);

    return v4;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }
}

BOOL sub_24EEB0558(unint64_t a1)
{
  v2 = *(v1 + qword_27F39CC48);
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = sub_24F92C738();
    if (v6 < 0)
    {
      __break(1u);
    }

    v3 = v6;
    a1 = v5;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > a1;
}

BOOL sub_24EEB05C0()
{
  v0 = sub_24F91FA18();
  if (!sub_24EEB0558(v0))
  {
    return 0;
  }

  v1 = sub_24F91FA18();
  v2 = *(sub_24EEB04C0(v1) + 24);

  v3 = *(v2 + 16);

  return sub_24F91FA08() < v3;
}

uint64_t sub_24EEB069C(uint64_t a1, uint64_t a2)
{
  sub_24EEB5A50(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24EEB06D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F39CC30;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24EEB0774(uint64_t a1)
{
  v13 = a1;
  v1 = sub_24F91F4A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnyGenericPageIntent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  (*(v2 + 16))(v4, v13, v1);
  AnyGenericPageIntent.init(url:)(v4, v8);
  sub_24F929C28();

  sub_24F928FE8();
  swift_beginAccess();

  sub_24F929BF8();

  v9 = sub_24F929C08();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_24F1DB140(v8, v9, "GameStoreKit/GenericPagePresenter.swift", 39, 2, v5, WitnessTable);

  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_24EEB0A4C(uint64_t a1)
{
  v3 = qword_27F232C40;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EEB0AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39CC50;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0);
}

uint64_t sub_24EEB0B0C(uint64_t a1)
{
  v3 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24EEB0BA4()
{
  sub_24EEB5AB4();
}

uint64_t sub_24EEB0BCC(uint64_t a1)
{
  v3 = qword_27F39CC58;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EEB0C84(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v26 = sub_24F91F648();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v9 = 1;
  }

  *(v2 + qword_27F232C78) = v9 & 1;
  *(v2 + qword_27F232C80) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_27F39CC68);

  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v14 = (*(*a1 + 280))(v13);
  v15 = qword_27F39CC58;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = *(v6 + 960);
  v28 = v16;
  v29 = &protocol witness table for BasePage;
  WitnessTable = swift_getWitnessTable();
  v30 = WitnessTable;
  v27[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v27, (v3 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24EC832DC();
  result = sub_24E601704(v27, &qword_27F224F98);
  if (*(v3 + qword_27F232C78) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v3[2])
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v20 = v19;
        (*(v25 + 8))(v8, v26);
        PendingPageRender.initialRequestEndTime.setter(v20, 0);
      }
    }

    swift_beginAccess();
    if (v3[2])
    {
      v29 = &protocol witness table for BasePage;
      v30 = WitnessTable;
      v28 = v16;
      v27[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v27);

      sub_24E601704(v27, &qword_27F224F98);
    }

    v21 = (v3 + qword_27F39CC60);
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = sub_24E5FCA4C(v22);
      v22(v23);
      sub_24E824448(v22);
    }

    return sub_24EEB10AC(0, 0);
  }

  return result;
}

uint64_t sub_24EEB1070()
{
  v0 = sub_24EA09614(&qword_27F39CC60);
  sub_24E5FCA4C(v0);
  return v0;
}

uint64_t sub_24EEB10AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39CC60);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24E824448(v6);
}

uint64_t sub_24EEB116C(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + qword_27F232C78) == 1)
  {
    return a1();
  }

  return sub_24EEB10AC(a1, a2);
}

uint64_t sub_24EEB11E8()
{
  v0 = sub_24EA09614(&qword_27F39CC68);

  return v0;
}

uint64_t sub_24EEB1228(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39CC68);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EEB1288()
{
  v1 = qword_27F39CC70;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EEB12CC(char a1)
{
  v3 = qword_27F39CC70;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24EEB36AC();
}

uint64_t (*sub_24EEB1320(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EEB1384;
}

uint64_t sub_24EEB1384(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EEB36AC();
  }

  return result;
}

BOOL sub_24EEB13B8()
{
  v1 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E60169C(v0 + v1, v4, &qword_27F2129B0);
  v2 = v5 != 0;
  sub_24E601704(v4, &qword_27F2129B0);
  return v2;
}

uint64_t sub_24EEB1444()
{
  v1 = v0;
  v2 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E60169C(v1 + v2, &v9, &qword_27F2129B0);
  if (!v10)
  {
    return sub_24E601704(&v9, &qword_27F2129B0);
  }

  sub_24E612B0C(&v9, v13);
  if (sub_24EEB13B8())
  {
    v3 = qword_27F39CC70;
    swift_beginAccess();
    *(v1 + v3) = 1;
    sub_24EEB36AC();
    type metadata accessor for JSIntentDispatcher();
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v13, v12);
    sub_24EB4692C(v12, v4, "GameStoreKit/GenericPagePresenter.swift", 39, 2);
    v5 = sub_24E74EC40();
    swift_retain_n();
    v6 = sub_24F92BEF8();
    v10 = v5;
    v11 = MEMORY[0x277D225C0];
    *&v9 = v6;
    sub_24F92A958();

    sub_24E9656A0(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v7 = &v9;
  }

  else
  {
    v7 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24EEB1648(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  a3(v4);
}

uint64_t sub_24EEB16B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  result = sub_24F92BBE8();
  if ((result & 1) == 0 && (*(v3 + qword_27F232C88) & 1) == 0)
  {
    v12 = *(v3 + qword_27F232C58);
    if (v12)
    {
      *(v4 + qword_27F232C88) = 1;
      v13 = *(v4 + qword_27F232C60);

      v19[2] = v12;
      v19[1] = sub_24EBDFF44(v13);

      (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = *(v8 + 960);
      *(v15 + 3) = a2;
      *(v15 + 4) = a3;
      *(v15 + 5) = v4;
      (*(v9 + 32))(&v15[v14], v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = v4;
      v17 = sub_24E74EC40();
      swift_retain_n();
      v18 = sub_24F92BEF8();
      v20[3] = v17;
      v20[4] = MEMORY[0x277D225C0];
      v20[0] = v18;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  return result;
}

uint64_t sub_24EEB1924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24E615E00(a1, v27);
  sub_24E615E00(a2, &v28);
  v5 = *(v3 + qword_27F39CC48);
  v24 = v27;

  v6 = sub_24E8E26D0(sub_24EEB626C, v23, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v9 = sub_24EEB04C0(v6);
    v10 = *(v9 + 24);
    MEMORY[0x28223BE20](v9);
    v22 = v27;

    v11 = sub_24E8E27EC(sub_24EEB628C, v21, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v26 = *(v9 + 24);

      sub_24EA0E6B0(v11, v25);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v25[0] = 104;
      v14 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v26, v25, 1, 2);

      if (sub_24EEB064C())
      {
        v16 = v15;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B20);
        sub_24F91FA78();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_24F93DE60;
        v18 = MEMORY[0x253045380](v11, v6);
        v19 = MEMORY[0x28223BE20](v18);
        v21[0] = v3;
        v21[1] = v6;
        v22 = v14;
        (*(v16 + 40))(v17, sub_24EEB62AC, v19);

        swift_unknownObjectRelease();
        return sub_24E601704(v27, &qword_27F222A30);
      }
    }
  }

  return sub_24E601704(v27, &qword_27F222A30);
}

void sub_24EEB1C18()
{
  v1 = *(v0 + qword_27F232C50);
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
      v9[3] = &block_descriptor_86;
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

void sub_24EEB1DCC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27F210F50 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:? name:? object:?];
}

void sub_24EEB1E90()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27F210F50 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_27F23ABD8 object:*(v0 + qword_27F232C58)];
}

uint64_t sub_24EEB1F3C()
{
  v1 = v0;
  result = Notification.updatedStyle.getter(&v10);
  if (v10 != 2)
  {
    v3 = *(v0 + qword_27F232C60);
    v4 = v10 & 1;

    v5 = sub_24F4D42B0(v4, v3);

    if (v5)
    {
      result = (*(*v1 + 264))(result);
      if ((result & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_24F93DE60;
        *(v6 + 32) = v4;
        v9 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D10);
        v8 = sub_24E602068(&qword_27F232D18, &qword_27F232D10);
        sub_24EEB16B0(&v9, v7, v8);
      }
    }
  }

  return result;
}

uint64_t BaseGenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_24EEB50BC(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t sub_24EEB212C()
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
    v3 = type metadata accessor for BaseGenericPagePresenter();
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v2, v3, WitnessTable);
  }

  return result;
}

uint64_t sub_24EEB2210()
{
  sub_24E883630(v0 + qword_27F39CC30);
  sub_24E601704(v0 + qword_27F39CC38, &qword_27F229490);
  sub_24E601704(v0 + qword_27F39CC40, &qword_27F228530);

  sub_24E601704(v0 + qword_27F39CC50, &qword_27F2129B0);

  sub_24E824448(*(v0 + qword_27F39CC60));
}

uint64_t sub_24EEB2350(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_24EEB23A8()
{
  result = sub_24EEB064C();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = *(v4 + 8);

    v5(v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EEB249C(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v5 = sub_24F92A078();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v4 + 960);
  v13 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v14 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v13;
  sub_24EEB2EB4(v14);

  v15 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v16 = sub_24F0C5C5C(v15);

  v17 = *(a2 + qword_27F232C60);
  *(a2 + qword_27F232C60) = v16;
  sub_24EEB3FD0(v17);

  sub_24E60169C(v11 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v42, &qword_27F2129B0);
  sub_24EEB0B0C(v42);
  (*(*a2 + 1312))(v11, 0);
  if (sub_24EEB064C())
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 32))(*(v11 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions), ObjectType, v19);
    swift_unknownObjectRelease();
  }

  if (sub_24EEB064C())
  {
    v22 = v21;
    v38[1] = swift_getObjectType();
    sub_24EEF1124(v12, &protocol witness table for GenericPage);
    (*(*(v22 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (sub_24EEB064C())
  {
    v24 = v23;
    v25 = swift_getObjectType();
    (*(*(*(v24 + 24) + 16) + 8))(v25);
    swift_unknownObjectRelease();
  }

  sub_24EEB4554(v26);

  v27 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  (*(*a2 + 704))(v27, 0);

  swift_beginAccess();
  v28 = a2[2];
  if (v28)
  {

    v29 = v39;
    sub_24F91F638();
    sub_24F91F5E8();
    v31 = v30;
    (*(v9 + 8))(v29, v8);
    v32 = v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v32 = v31;
    *(v32 + 8) = 0;
    v33 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v33 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v34 = swift_beginAccess();
  if (a2[3])
  {
    (*(*v11 + 128))(v34);
    v36 = v40;
    v35 = v41;
    (*(v40 + 104))(v7, *MEMORY[0x277D22290], v41);

    sub_24F92A0C8();

    (*(v36 + 8))(v7, v35);
  }

  return (*(*a2 + 576))(0);
}

void sub_24EEB2A40(void *a1, void *a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0, v9);
  sub_24E60169C(a2 + qword_27F39CC40, v11 + *(v8 + 20), &qword_27F228530);
  *v11 = a1;
  swift_beginAccess();
  v12 = a2[2];
  if (v12)
  {
    v29 = v4;
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v11, v13);
    v14 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v15 = *(v12 + v14);
    v16 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24E617130(0, v15[2] + 1, 1, v15);
      *(v12 + v14) = v15;
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_24E617130((v18 > 1), v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    v15[v19 + 4] = v28;
    *(v12 + v14) = v15;
    swift_endAccess();

    v4 = v29;
  }

  else
  {
    v20 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError);
    v21 = swift_allocError();
    sub_24EBDEC38(v11, v22);
    *v7 = v21;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  if (sub_24EEB064C())
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError);
    v26 = swift_allocError();
    sub_24EBDEC38(v11, v27);
    (*(*(*(v24 + 24) + 24) + 24))(v26, ObjectType);
    swift_unknownObjectRelease();
    sub_24EBDECA4(v11);
  }

  else
  {
    sub_24EBDECA4(v11);
  }
}

uint64_t sub_24EEB2EB4(unint64_t a1)
{
  v2 = v1;
  v41 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x28223BE20](v4);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D30);
  MEMORY[0x28223BE20](v42);
  v40 = v37 - v10;
  v11 = qword_27F232C40;
  swift_beginAccess();
  v46 = v2;
  v12 = *(v2 + v11);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v13)
  {
    v14 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v37[2] = v44 + 16;
    v37[1] = v44 + 32;
    v37[0] = v44 + 8;
    v15 = v43;
    do
    {
      if (v39)
      {
        v16 = MEMORY[0x253052270](v14, a1);
      }

      else
      {
        if (v14 >= *(v38 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v13 = sub_24F92C738();
          goto LABEL_3;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = *(v12 + 16);
      if (v14 == v17)
      {

        break;
      }

      if (v14 >= v17)
      {
        goto LABEL_33;
      }

      v18 = v44;
      v19 = v12;
      v20 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14;
      v21 = *(v42 + 48);
      v22 = v40;
      (*(v44 + 16))(&v40[v21], v20, v15);
      (*(v18 + 32))(v9, &v22[v21], v15);
      if (*(v16 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_24F9280B8();

        (*v37[0])(v9, v15);
      }

      else
      {
        (*v37[0])(v9, v15);
      }

      ++v14;
      v12 = v19;
    }

    while (v13 != v14);
  }

  v23 = qword_27F232C40;
  v24 = v46;
  swift_beginAccess();
  *(v24 + v23) = MEMORY[0x277D84F90];

  v26 = *(v24 + qword_27F39CC48);
  if (v26 >> 62)
  {
    result = sub_24F92C738();
    v27 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      return result;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = qword_27F232C40;
    v42 = v26 & 0xC000000000000001;
    v39 = v44 + 32;

    v29 = 0;
    v40 = v26;
    do
    {
      if (v42)
      {
        v30 = MEMORY[0x253052270](v29, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v29 + 32);
      }

      if (*(v30 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        v31 = swift_allocObject();
        *(v31 + 16) = sub_24EEB6458;
        *(v31 + 24) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
        type metadata accessor for BaseGenericPagePresenter();
        sub_24E602068(&qword_27F222A58, &qword_27F222A50);
        sub_24EE94F08();
        v32 = v46;
        sub_24F9288C8();

        __swift_destroy_boxed_opaque_existential_1(v47);
        swift_beginAccess();
        v33 = *(v32 + v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + v28) = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_24E618BBC(0, v33[2] + 1, 1, v33);
          *(v46 + v28) = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_24E618BBC(v35 > 1, v36 + 1, 1, v33);
        }

        v33[2] = v36 + 1;
        (*(v44 + 32))(v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, v45, v43);
        *(v46 + v28) = v33;
        swift_endAccess();

        v26 = v40;
      }

      ++v29;
    }

    while (v27 != v29);
  }

  return result;
}

uint64_t sub_24EEB34E0(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30);
  sub_24EEB1924(v4, v5);
  sub_24E601704(v6, &qword_27F222A30);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24EEB3580@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_24EA09614(&qword_27F39CC60);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_24E5FCA4C(v2);
}

uint64_t sub_24EEB361C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24E9A0188;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24E5FCA4C(v1);
  return sub_24EEB10AC(v4, v3);
}

uint64_t sub_24EEB36AC()
{
  v1 = qword_27F39CC70;
  swift_beginAccess();
  v2 = *(v0 + v1);
  result = sub_24EEB064C();
  v5 = v4;
  if (v2 == 1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(ObjectType);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = swift_getObjectType();
    (*(*(v5 + 8) + 16))(v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EEB3760(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_24EC9C404();
  v5 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
  v6 = *(a2 + qword_27F39CC48);
  v53 = v4;
  if (v6 >> 62)
  {
LABEL_54:
    v52 = sub_24F92C738();
  }

  else
  {
    v52 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v54 = v7;
  v8 = *(v3 + v7);
  v9 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v10 = *(v8 + 16);
  v11 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = v8 + 32;
  do
  {
    v5 = v13 + 40 * v12;
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_24E65864C(v5, v56);
      if (*(*(v3 + v11) + 16))
      {
        break;
      }

LABEL_6:
      ++v14;
      sub_24E6585F8(v56);
      v5 += 40;
      if (v10 == v14)
      {
        v5 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        goto LABEL_16;
      }
    }

    sub_24E76D934(v56);
    if ((v15 & 1) == 0)
    {

      goto LABEL_6;
    }

    v16 = sub_24E6585F8(v56);
    MEMORY[0x253050F00](v16);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v12 = v14 + 1;
    sub_24F92B638();
    v9 = v57;
    v13 = v8 + 32;
    v5 = 0x27F39C000;
  }

  while (v10 - 1 != v14);
LABEL_16:

  v56[0] = *(a2 + *(v5 + 3144));

  sub_24EA0AE3C(v9);
  v17 = *(v5 + 3144);
  v18 = *(a2 + v17);
  *(a2 + v17) = v56[0];
  sub_24EEB2EB4(v18);

  v19 = &qword_27F231FE8[3];
  v20 = *(a2 + qword_27F232C60);
  v21 = *(v3 + v7);
  v22 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);
  v51 = v20;

  swift_beginAccess();
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 32;
    v5 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v21 + 16))
    {
      sub_24E65864C(v26, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_24E76D934(v56);
        if (v28)
        {

          v29 = sub_24E6585F8(v56);
          MEMORY[0x253050F00](v29);
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v24 = v27 + 1;
          sub_24F92B638();
          v5 = v57;
          v25 = v21 + 32;
          v30 = v23 - 1 == v27;
          v22 = MEMORY[0x277D84F90];
          v19 = qword_27F231FE8 + 24;
          if (v30)
          {
            goto LABEL_31;
          }

          goto LABEL_18;
        }
      }

      ++v27;
      sub_24E6585F8(v56);
      v26 += 40;
      if (v23 == v27)
      {
        v22 = MEMORY[0x277D84F90];
        v19 = qword_27F231FE8 + 24;
        goto LABEL_31;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = v22;
LABEL_31:

  v31 = sub_24F0C5C5C(v5);

  v32 = sub_24F146E80(v31, v51);
  v33 = v19[396];
  v34 = *(a2 + v33);
  *(a2 + v33) = v32;
  sub_24EEB3FD0(v34);

  sub_24E60169C(v3 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v56, &qword_27F2129B0);
  sub_24EEB0B0C(v56);
  if (sub_24EEB064C())
  {
    v36 = v35;
    ObjectType = swift_getObjectType();
    (*(*(v36 + 24) + 32))(v53, ObjectType);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (sub_24EEB064C())
  {
    v39 = v38;
    v40 = swift_getObjectType();
    (*(v39 + 32))(*(a2 + qword_27F232C80), v40, v39);
    swift_unknownObjectRelease();
  }

  v41 = *(v3 + 16);
  if (*(a2 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy))
  {

    v41 = sub_24ED64DBC(v41);
  }

  else
  {
  }

  sub_24EEB4554(v41);

  v42 = qword_27F39CC70;
  swift_beginAccess();
  *(a2 + v42) = 0;
  sub_24EEB36AC();
  v43 = *(v3 + v54);
  v55 = v22;
  v44 = *(v43 + 16);

  swift_beginAccess();
  if (v44)
  {
    v5 = 0;
    v45 = v43 + 32;
    v53 = v44 - 1;
LABEL_41:
    v46 = v45 + 40 * v5;
    v47 = v5;
    while (v47 < *(v43 + 16))
    {
      sub_24E65864C(v46, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_24E76D934(v56);
        if (v48)
        {

          v49 = sub_24E6585F8(v56);
          MEMORY[0x253050F00](v49);
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v5 = v47 + 1;
          sub_24F92B638();
          v22 = v55;
          v45 = v43 + 32;
          if (v53 != v47)
          {
            goto LABEL_41;
          }

          goto LABEL_50;
        }
      }

      ++v47;
      sub_24E6585F8(v56);
      v46 += 40;
      if (v44 == v47)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_50:

  (*(*a2 + 704))(v22, v52);
}

void sub_24EEB3E34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = qword_27F39CC70;
  swift_beginAccess();
  *(a2 + v7) = 0;
  sub_24EEB36AC();
  if (sub_24EEB064C())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    sub_24E60169C(a2 + qword_27F39CC40, v6, &qword_27F228530);
    v11 = type metadata accessor for PresenterError();
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError);
    v12 = swift_allocError();
    *v13 = a1;
    sub_24E911D90(v6, v13 + *(v11 + 20));
    v14 = *(v9 + 8);
    v15 = *(v14 + 24);
    v16 = a1;
    v15(v12, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24EEB3FD0(uint64_t a1)
{
  v3 = qword_27F232C60;
  v4 = *(v1 + qword_27F232C60);

  LOBYTE(a1) = sub_24EDD4C24(a1, v4);

  if ((a1 & 1) == 0)
  {
    v8 = *(v1 + v3);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D38);
    v7 = sub_24E602068(&qword_27F232D40, &qword_27F232D38);
    sub_24EEB16B0(&v8, v6, v7);
  }

  return result;
}

uint64_t sub_24EEB40A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + qword_27F39CC48);

  Array<A>.indicesOfShelves<A>(using:)(a3, v10);
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = Array<A>.personalizedShelves(with:)(v18, v10);

  v13 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v12;
  sub_24EEB2EB4(v13);

  if (sub_24EEB064C())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(*(v15 + 24) + 48))(v9, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v7 + 8))(v9, v6);
  *(a2 + qword_27F232C88) = 0;
  return result;
}

uint64_t sub_24EEB4244(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F928D68();
  v4 = MEMORY[0x253052150](v2 + v3, v6);
  sub_24E6585F8(v6);
  return v4 & 1;
}

uint64_t sub_24EEB42D0(uint64_t a1, void *a2)
{
  sub_24E615E00(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D20);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v9, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v4 + 16))(v11, v3, v4);
    v5 = a2[8];
    v6 = a2[9];
    __swift_project_boxed_opaque_existential_1(a2 + 5, v5);
    (*(v6 + 16))(v9, v5, v6);
    v7 = MEMORY[0x253052150](v11, v9);
    sub_24E6585F8(v9);
    sub_24E6585F8(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_24E601704(v9, &qword_27F232D28);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_24EEB442C()
{
  v0 = sub_24F91EB58();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24EEB1F3C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24EEB4554(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  return sub_24EEB23A8();
}

uint64_t sub_24EEB45A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v62 - v14;
  v73 = sub_24F9288E8();
  v68 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_27F232C78) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v6 + qword_27F232C40) = v18;
  v19 = (v6 + qword_27F39CC50);
  *v19 = 0u;
  v19[1] = 0u;
  *(v6 + qword_27F232C48) = 0;
  *(v6 + qword_27F232C80) = 0;
  *(v6 + qword_27F39CC58) = 0;
  v20 = (v6 + qword_27F39CC60);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v6 + qword_27F39CC68);
  *v21 = 0;
  v21[1] = 0;
  *(v6 + qword_27F39CC70) = 0;
  v22 = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C88) = 0;
  v72 = a4;
  sub_24E60169C(a4, v6 + qword_27F39CC40, &qword_27F228530);
  *(v6 + qword_27F232C58) = a2;
  v71 = a6;
  sub_24E60169C(a6, v6 + qword_27F39CC38, &qword_27F229490);
  v23 = &qword_27F231FE8[3];
  if (a5)
  {
    v24 = v15;
    v67 = v6;
    type metadata accessor for ASKBagContract();
    sub_24F928FD8();

    v66 = a1;
    sub_24F92A758();
    v25 = v74[0];
    v62[1] = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = *MEMORY[0x277D21C38];
    v28 = v68;
    v29 = *(v68 + 104);
    v30 = v73;
    v65 = v68 + 104;
    v64 = v29;
    v29(v17, v27, v73);
    v62[0] = v26;
    sub_24F92A368();
    v63 = *(v28 + 8);
    v63(v17, v30);
    v31 = v70;
    sub_24F92A408();
    v68 = v25;
    v69 = *(v69 + 8);
    (v69)(v24, v31);
    v32 = v74[0];
    type metadata accessor for FastImpressionsTracker();
    v33 = swift_allocObject();
    v33[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    swift_allocObject();
    v33[5] = sub_24F929E98();
    swift_allocObject();
    v33[6] = sub_24F929E98();
    v33[4] = v32;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v34 = v27;
    v35 = v73;
    v64(v17, v34, v73);
    sub_24F92A368();
    v63(v17, v35);
    sub_24F92A408();
    (v69)(v24, v31);
    v36 = v74[0];
    type metadata accessor for FastImpressionFlushGate();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v36;
    v23 = &qword_27F231FE8[3];
    v38 = v67;
    *(v67 + qword_27F232C50) = v37;
    v39 = sub_24EEB6508(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

    v41 = sub_24EC8415C(v40, v33, v39, 0);
  }

  else
  {
    *(v6 + qword_27F232C50) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v22;

    v41 = sub_24EC8415C(a1, 0, 0, 0);
  }

  v42 = MEMORY[0x277D84F90];
  if (a3)
  {
    v43 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v44 = *(a3 + v43);
    v75 = v42;
    v45 = v44[2];
    v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (v45)
    {
      v47 = 0;
      v48 = v44 + 4;
      v70 = v45 - 1;
      v73 = (v44 + 4);
      while (1)
      {
        v49 = &v48[5 * v47];
        v50 = v47;
        while (1)
        {
          if (v50 >= v44[2])
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_24E65864C(v49, v74);
          if (*(*(a3 + v46) + 16))
          {
            break;
          }

LABEL_12:
          ++v50;
          sub_24E6585F8(v74);
          v49 += 40;
          if (v45 == v50)
          {
            v23 = qword_27F231FE8 + 24;
            goto LABEL_23;
          }
        }

        sub_24E76D934(v74);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v52 = sub_24E6585F8(v74);
        MEMORY[0x253050F00](v52);
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v47 = v50 + 1;
        sub_24F92B638();
        v42 = v75;
        v53 = v70 == v50;
        v23 = qword_27F231FE8 + 24;
        v48 = v73;
        if (v53)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_12;
    }

LABEL_23:

    *(v41 + qword_27F39CC48) = v42;

    v54 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
    v55 = qword_27F39CC50;
    swift_beginAccess();
    sub_24E9CBF30(a3 + v54, v41 + v55, &qword_27F2129B0);
    swift_endAccess();
    *(v41 + qword_27F232C48) = sub_24EC9C404();

    (*(*v41 + 1312))(a3, 1);
  }

  else
  {
  }

  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;
    swift_beginAccess();
    *(v57 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v58 = *(v41 + v23[394]);
    if (v58)
    {
      v59 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v60 = *(v58 + 32);
      *(v58 + 32) = sub_24EEB6550;
      *(v58 + 40) = v59;

      sub_24E824448(v60);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v44 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
LABEL_32:
    swift_once();
  }

  [v44 addObserver:v41 selector:? name:? object:?];

  sub_24E601704(v71, &qword_27F229490);
  sub_24E601704(v72, &qword_27F228530);
  return v41;
}

uint64_t sub_24EEB50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = *v6;
  v62 = a3;
  v63 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = sub_24F9288E8();
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_27F232C78) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v6 + qword_27F232C40) = v20;
  v21 = (v6 + qword_27F39CC50);
  *v21 = 0u;
  v21[1] = 0u;
  *(v6 + qword_27F232C48) = 0;
  *(v6 + qword_27F232C80) = 0;
  *(v6 + qword_27F39CC58) = 0;
  v22 = (v6 + qword_27F39CC60);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_27F39CC68);
  *v23 = 0;
  v23[1] = 0;
  *(v6 + qword_27F39CC70) = 0;
  v24 = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C88) = 0;
  sub_24E60169C(a4, v6 + qword_27F39CC40, &qword_27F228530);
  *(v6 + qword_27F232C58) = a2;
  v64 = a6;
  sub_24E60169C(a6, v6 + qword_27F39CC38, &qword_27F229490);
  if (a5)
  {
    v57 = a4;
    v58 = v6;
    type metadata accessor for ASKBagContract();
    sub_24F928FD8();

    v56 = a1;
    sub_24F92A758();
    v25 = v65;
    v53 = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = v59;
    v28 = *(v59 + 104);
    v55 = *MEMORY[0x277D21C38];
    v54 = v28;
    v28(v19);
    v52 = v26;
    sub_24F92A368();
    v59 = *(v27 + 8);
    (v59)(v19, v17);
    v29 = v60;
    sub_24F92A408();
    v51 = *(v61 + 8);
    v51(v16, v29);
    v30 = v65;
    type metadata accessor for FastImpressionsTracker();
    v31 = swift_allocObject();
    v31[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v61 = v25;
    swift_allocObject();
    v31[5] = sub_24F929E98();
    swift_allocObject();
    v31[6] = sub_24F929E98();
    v31[4] = v30;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v54(v19, v55, v17);
    sub_24F92A368();
    (v59)(v19, v17);
    sub_24F92A408();
    v51(v16, v29);
    v32 = v65;
    type metadata accessor for FastImpressionFlushGate();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33[4] = 0;
    v33[5] = 0;
    v33[2] = v32;
    v34 = v58;
    *(v58 + qword_27F232C50) = v33;
    v35 = sub_24EEB6508(&qword_27F22D210, type metadata accessor for FastImpressionsTracker);
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

    v37 = sub_24EC8415C(v36, v31, v35, 0);

    a4 = v57;
    v39 = v62;
    v38 = v63;
    if (v62)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v6 + qword_27F232C50) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v24;

    v37 = sub_24EC8415C(a1, 0, 0, 0);
    v39 = v62;
    v38 = v63;
    if (v62)
    {
LABEL_7:
      v40 = *(v38 + 960);

      *(v37 + qword_27F39CC48) = ShelfBasedPage.shelves.getter(v40, &protocol witness table for GenericPage);

      v41 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
      v42 = qword_27F39CC50;
      swift_beginAccess();
      sub_24E9CBF30(v39 + v41, v37 + v42, &qword_27F2129B0);
      swift_endAccess();
      *(v37 + qword_27F232C48) = sub_24EEF1124(v40, &protocol witness table for GenericPage);

      (*(*v37 + 1312))(v39, 1);

      goto LABEL_10;
    }
  }

LABEL_10:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = v43;
    swift_beginAccess();
    *(v44 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v45 = *(v37 + qword_27F232C50);
    if (v45)
    {
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = *(v38 + 960);
      *(v47 + 24) = v46;
      swift_beginAccess();
      v48 = *(v45 + 32);
      *(v45 + 32) = sub_24EEB6500;
      *(v45 + 40) = v47;

      sub_24E824448(v48);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_24EEB1DCC();
  sub_24E601704(v64, &qword_27F229490);
  sub_24E601704(a4, &qword_27F228530);
  return v37;
}

uint64_t sub_24EEB5A50(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F39CC30;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EEB5AB4()
{
  v1 = qword_27F39CC58;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EEB5B08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEB5B58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EEB5B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EEB064C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EEB5C08@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EEB5AB4();
}

uint64_t sub_24EEB5C90@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EA09614(&qword_27F39CC68);
  a1[1] = v2;
}

uint64_t sub_24EEB5CD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24EEB1228(v1, v2);
}

uint64_t sub_24EEB5D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EEB1288();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for GenericPagePresenter()
{
  result = qword_27F232C68;
  if (!qword_27F232C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEB5E34()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_24EEB62D8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEB63D4()
{

  return swift_deallocObject();
}

uint64_t sub_24EEB6420()
{

  return swift_deallocObject();
}

uint64_t (*sub_24EEB6498())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E965698;
}

uint64_t sub_24EEB6508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetricsTopicProvider.init(bag:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ASKBagContract();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v6 = sub_24F92A498();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v4 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *a2 = v4;
  return result;
}

uint64_t MetricsTopicProvider.currentMetricsTopic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  if (qword_27F210B88 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v5 + 8))(v7, v4);
  if (v9[1])
  {
    return v9[0];
  }

  if (qword_27F210B80 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  if (LOBYTE(v9[0]) == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x615F706D615F7078;
  }
}

uint64_t MetricsTopicProvider.anonymousMetricsTopics.getter()
{
  v0 = ASKBagContract.anonymousMetricsTopics.getter();
  v1 = sub_24F45D828(v0);

  return v1;
}

uint64_t sub_24EEB6950()
{
  v0 = sub_24E8039DC(&unk_2861C0E20);
  result = swift_arrayDestroy();
  qword_27F232D48 = v0;
  return result;
}

uint64_t MetricsTopicProvider.shouldHaveAnonymousEvents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-v2];
  if (qword_27F210B80 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return v5[15];
}

Swift::String __swiftcall MetricsTopicProvider.replacementTopic(for:)(Swift::String a1)
{
  object = a1._object;
  if (qword_27F2107B8 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v2 = a1._countAndFlagsBits;
  if (sub_24F4D36F8(a1._countAndFlagsBits, object, qword_27F232D48))
  {
    v3 = MetricsTopicProvider.currentMetricsTopic.getter();
    object = v4;
  }

  else
  {

    v3 = v2;
  }

  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_24EEB6B90(void *a1, uint64_t a2)
{
  v2 = sub_24EEB6BFC(a1, a2);

  return v2;
}

id sub_24EEB6BBC(void *a1)
{
  v2 = sub_24EEB6BFC(a1, v1);

  return v2;
}

void *sub_24EEB6BFC(void *a1, uint64_t a2)
{
  v4 = [a1 topic];
  v5 = sub_24F92B0D8();
  v7 = v6;

  if (qword_27F2107B8 != -1)
  {
    swift_once();
  }

  if (sub_24F4D36F8(v5, v7, qword_27F232D48))
  {

    *&v15 = a2;
    MetricsTopicProvider.currentMetricsTopic.getter();
  }

  v8 = sub_24F92B098();

  [a1 setTopic_];

  v9 = [a1 account];
  if (!v9)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_14:
    sub_24E857CC8(&v15);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v9 ams:*MEMORY[0x277CEE150] accountFlagValueForAccountFlag:?];

  if (v11)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast() && (v13 & 1) != 0)
  {
    [a1 setAnonymous_];
  }

LABEL_15:
  if ([a1 isAnonymous])
  {
    [a1 setAccount_];
  }

  return a1;
}

uint64_t Collection.hasIndex(_:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_24F92BBD8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_24F92B4C8();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t Array.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v17 = 0;
    v18 = sub_24F92B648();
    v19 = a1;
    MEMORY[0x28223BE20](v18);
    v16[2] = a3;
    v16[3] = a1;
    v16[4] = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D50);
    v7 = sub_24F92B6E8();
    v8 = sub_24EEB78FC();
    return sub_24EEB70FC(sub_24EEB78D8, v16, v6, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  }

  else
  {
    sub_24F92B6E8();
    sub_24F92CD98();
    swift_allocObject();
    v11 = sub_24F92B5C8();
    *v12 = a2;
    v17 = v11;
    v13 = sub_24F92B6E8();
    CGSizeMake(v13, v14, v15);

    return v17;
  }
}

uint64_t sub_24EEB70FC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v42 - v18;
  v19 = sub_24F92C4A8();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_24F92B408();
  v63 = sub_24F92C9B8();
  v58 = sub_24F92C9C8();
  sub_24F92C968();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_24F92B3F8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_24F92C4D8();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_24F92C9A8();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_24F92C4D8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_24F92C9A8();
      sub_24F92C4D8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t *sub_24EEB77F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = (*result + a2);
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_24F92B648();
    if (result < v4)
    {
      result = sub_24F92B648();
      v4 = result;
    }

    if (v4 >= v3)
    {
      sub_24F92B748();
      sub_24F92C658();
      swift_getWitnessTable();
      result = sub_24F92B738();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEB78FC()
{
  result = qword_27F232D58;
  if (!qword_27F232D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232D58);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v14[-v4];
  sub_24F92BBD8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_24F92B4C8();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_24F92BC88();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v9, v10);
    v7(v14, 0);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t Collection.asDictionary<A, B>(key:value:)()
{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v1;
}

{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v1;
}

{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v1;
}

{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v1;
}

uint64_t sub_24EEB7D28(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = a1;
  v7 = *a3;
  v26[0] = a4;
  v8 = *MEMORY[0x277D84DE8];
  v9 = *(*a4 + *MEMORY[0x277D84DE8] + 8);
  v10 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  v17 = *(v7 + v8 + 8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v26 - v23;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  (*(v18 + 16))(v21, v24, v17);
  (*(v13 + 16))(v12, v16, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v13 + 8))(v16, v9);
  return (*(v18 + 8))(v24, v17);
}

uint64_t sub_24EEB8108(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a7;
  v29[1] = a5;
  v29[2] = a4;
  v30 = a3;
  v31 = a9;
  v32 = a1;
  v11 = *(*a5 + *MEMORY[0x277D84DE8] + 8);
  v12 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v29 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v29 - v25;
  v30(a2, v24);
  swift_getAtKeyPath();
  v27 = v29[0];
  (*(v19 + 16))(v22, v26, v29[0]);
  (*(v15 + 16))(v14, v18, v11);
  (*(v15 + 56))(v14, 0, 1, v11);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v15 + 8))(v18, v11);
  return (*(v19 + 8))(v26, v27);
}

uint64_t sub_24EEB84C8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = a5;
  v29 = a4;
  v28[1] = a3;
  v30 = a9;
  v31 = a1;
  v11 = *a3;
  v12 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + *MEMORY[0x277D84DE8] + 8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v28 - v25;
  swift_getAtKeyPath();
  v29(a2);
  (*(v20 + 16))(v23, v26, v19);
  (*(v15 + 16))(v14, v18, a7);
  (*(v15 + 56))(v14, 0, 1, a7);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v15 + 8))(v18, a7);
  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_24EEB8860(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a4;
  v34 = a6;
  v35 = a5;
  v33 = a3;
  v36 = a11;
  v37 = a1;
  v13 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = *(a9 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v30 - v26;
  v33(a2, v25);
  v35(a2);
  v28 = v31;
  (*(v20 + 16))(v23, v27, v31);
  (*(v16 + 16))(v15, v19, a9);
  (*(v16 + 56))(v15, 0, 1, a9);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v16 + 8))(v19, a9);
  return (*(v20 + 8))(v27, v28);
}

uint64_t Collection.itemCount(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v25 - v6;
  v8 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v25 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v11 + 16))(v14, v26, a3, v16);
  sub_24F92B3F8();
  swift_getAssociatedConformanceWitness();
  v19 = 0;
  v20 = (v5 + 48);
  v21 = (v5 + 32);
  v22 = (v5 + 8);
LABEL_2:
  v26 = v19;
  while (1)
  {
    sub_24F92C4D8();
    if ((*v20)(v10, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v21)(v7, v10, AssociatedTypeWitness);
    v23 = v27(v7);
    (*v22)(v7, AssociatedTypeWitness);
    if (v23)
    {
      v19 = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }
  }

  (*(v25 + 8))(v18, v15);
  return v26;
}

uint64_t Collection.itemCount<A>(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v45 = a1;
  v46 = a2;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v44 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92C4A8();
  v9 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v39 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = v39 - v18;
  (*(v12 + 16))(v15, v49, a3, v17);
  v20 = v19;
  sub_24F92B3F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = 0;
  v42 = (v6 + 8);
  v43 = (v6 + 32);
  v23 = (v6 + 48);
  v39[1] = v8 - 8;
LABEL_2:
  v41 = v22;
  sub_24F92C4D8();
  v24 = *(v8 - 8);
  v25 = *(v24 + 48);
  if (v25(v11, 1, v8) != 1)
  {
    v26 = *v23;
    v48 = v24 + 48;
    v49 = v26;
    v47 = (v24 + 8);
    for (i = v26(v11, 1, v4); ; i = v49(v11, 1, v4))
    {
      if (i == 1)
      {
        (*v47)(v11, v8);
      }

      else
      {
        v28 = v25;
        v29 = v23;
        v30 = AssociatedConformanceWitness;
        v31 = v20;
        v32 = AssociatedTypeWitness;
        v33 = v8;
        v34 = v4;
        v35 = v44;
        (*v43)(v44, v11, v34);
        v36 = v45(v35);
        v37 = v35;
        v4 = v34;
        v8 = v33;
        AssociatedTypeWitness = v32;
        v20 = v31;
        AssociatedConformanceWitness = v30;
        v23 = v29;
        v25 = v28;
        (*v42)(v37, v4);
        if (v36)
        {
          v22 = v41 + 1;
          if (!__OFADD__(v41, 1))
          {
            goto LABEL_2;
          }

          __break(1u);
          break;
        }
      }

      sub_24F92C4D8();
      if (v25(v11, 1, v8) == 1)
      {
        break;
      }
    }
  }

  (*(v40 + 8))(v20, AssociatedTypeWitness);
  return v41;
}