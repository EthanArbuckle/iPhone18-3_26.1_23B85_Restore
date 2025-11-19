uint64_t sub_24F21ABB0(double a1)
{
  v3 = qword_27F39DDF0;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    return 0;
  }

  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_17;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_24F92CE08();

    if ((v16 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (a1 == 1.0)
  {
LABEL_17:

    goto LABEL_18;
  }

LABEL_30:
  v24 = sub_24F92B0D8();
  v26 = v25;
  if (v24 == sub_24F92B0D8() && v26 == v27)
  {

    goto LABEL_35;
  }

  v28 = sub_24F92CE08();

  if ((v28 & 1) == 0)
  {
    v29 = sub_24F92B0D8();
    v31 = v30;
    if (v29 == sub_24F92B0D8() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_24F92CE08();

      if ((v33 & 1) == 0)
      {
LABEL_44:
        v34 = sub_24F92B0D8();
        v36 = v35;
        if (v34 == sub_24F92B0D8() && v36 == v37)
        {

          goto LABEL_48;
        }

        v38 = sub_24F92CE08();

        if (v38)
        {
LABEL_48:
          if (a1 == 3.0)
          {
            v18 = 9;
            goto LABEL_19;
          }
        }

LABEL_18:
        v18 = 5;
        goto LABEL_19;
      }
    }

    if (a1 == 2.0)
    {

      v18 = 10;
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_35:
  if (*(v1 + qword_27F23C868))
  {
    v18 = 11;
  }

  else
  {
    v18 = 10;
  }

LABEL_19:
  v19 = qword_27F39DDD0;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 < v18 && v20 >= 1)
  {
    v22 = *(*v1 + 704);
    swift_beginAccess();
    sub_24E9B7D88(v1 + v22, &v43);
    *&v40[9] = *&v44[9];
    v39 = v43;
    *v40 = *v44;
    if (v44[24])
    {
      sub_24E612B0C(&v39, &v41);
    }

    else
    {

      v41 = v39;
      v42 = *v40;
    }

    v39 = v41;
    *v40 = v42;
    v23 = *(&v42 + 1);
    sub_24E601704(&v39, &qword_27F2129B0);
    if (!v23)
    {
      v18 = *(v1 + v19);
    }
  }

  result = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_24F21AFC4()
{
  v1 = *(v0 + qword_27F23C898);
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
    v9[3] = &block_descriptor_129;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
    _Block_release(v5);

    v8 = [objc_opt_self() mainRunLoop];
    [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_24F21B294()
{

  sub_24EA14B54(*(v0 + qword_27F23C860), *(v0 + qword_27F23C860 + 8), *(v0 + qword_27F23C860 + 16), *(v0 + qword_27F23C860 + 24), *(v0 + qword_27F23C860 + 32), *(v0 + qword_27F23C860 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t SearchResultsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBBF8F8();

  sub_24EA14B54(*(v0 + qword_27F23C860), *(v0 + qword_27F23C860 + 8), *(v0 + qword_27F23C860 + 16), *(v0 + qword_27F23C860 + 24), *(v0 + qword_27F23C860 + 32), *(v0 + qword_27F23C860 + 40));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsDiffablePagePresenter.__deallocating_deinit()
{
  SearchResultsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F21B604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDD0;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F21B65C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DDD0;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24F21B6B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDD8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F21B714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DE30;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F21B778@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39DDE0);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24F21B7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39DDE8;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24F21B82C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DDE8;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24F21BE98()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F21BED0()
{

  if (*(v0 + 160) != 1)
  {

    sub_24E7B6564(*(v0 + 184), *(v0 + 192));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F21BF94()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F21BFD4()
{

  return swift_deallocObject();
}

void *ComponentContainerCollectionElementsObserver.__allocating_init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[2] = a1;
  v12[3] = a2;
  swift_unknownObjectWeakAssign();

  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return v12;
}

void *ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  v6[2] = a1;
  v6[3] = a2;
  swift_unknownObjectWeakAssign();

  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__allocating_init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24EB64874(a1, v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v16 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v16;
}

void sub_24F21C248(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
  }
}

uint64_t ComponentContainerCollectionElementsObserver.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_unknownObjectWeakInit();
  sub_24EB64874(a1, v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v8;
}

uint64_t sub_24F21C4F0()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  return v1;
}

void sub_24F21C578()
{
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();

  JUMPOUT(0x253045380);
}

uint64_t sub_24F21C5E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();
  sub_24F92C7F8();
  sub_24F92AD68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  sub_24E602068(&qword_27F228460, &qword_27F23A6C0);
  return sub_24F929648();
}

void sub_24F21C748(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) == 1)
  {
    type metadata accessor for ItemLayoutContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA8);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        sub_24E612C80(&v4, v7);
        v3 = v7[1];
        *a1 = v7[0];
        *(a1 + 16) = v3;
        *(a1 + 32) = v8;
        return;
      }
    }

    else
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
    }

    sub_24F21D594(&v4);
    sub_24F92CA88();
    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_24F21C8A4()
{
  sub_24F21C748(&v4);
  if (v5)
  {
    sub_24E612C80(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v1 + 32))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_24F21D594(&v4);
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    sub_24F928A48();

    v2 = *(v6[0] + 16);
  }

  return v2;
}

uint64_t sub_24F21C99C(uint64_t a1)
{
  sub_24F21C748(&v5);
  if (v6)
  {
    sub_24E612C80(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v3 + 16))(a1, v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_24F21D594(&v5);
    type metadata accessor for ItemLayoutContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return sub_24F928A58();
  }
}

uint64_t sub_24F21CAC0@<X0>(void (*a1)(char *, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_24F91FA78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  v16 = v2 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v17 = *(v2 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  v18 = v16 + *(type metadata accessor for ItemLayoutContext() + 32);
  v19 = type metadata accessor for ShelfLayoutContext();
  MEMORY[0x253045380](v17, *(v18 + *(v19 + 20)));
  v20 = *(v7 + 16);
  v20(v12, v15, v6);
  v20(v9, v12, v6);
  sub_24EBD6F8C();
  v21 = sub_24F92B418();
  v22 = sub_24E8E89B4(v21);

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
  sub_24E602068(&qword_27F22AF78, &qword_27F2214E0);
  sub_24F92AD58();
  v23 = *(v7 + 8);
  v23(v12, v6);
  v29 = *(v18 + *(v19 + 36));

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  v25 = sub_24E602068(&qword_27F228460, &qword_27F23A6C0);
  v28(v5, &v29, MEMORY[0x277D84A98], v24, v25);
  return (v23)(v15, v6);
}

uint64_t sub_24F21CDD4@<X0>(void (*a1)(uint64_t, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v3 - 8);
  v22[0] = v22 - v4;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v12 = v2 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v13 = v12 + *(type metadata accessor for ItemLayoutContext() + 32);
  v14 = type metadata accessor for ShelfLayoutContext();
  sub_24F91FA38();
  sub_24F91FA58();
  v15 = *(v6 + 8);
  v15(v8, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_24EBD6F8C();
  v16 = sub_24F92B418();
  v17 = sub_24E8E89B4(v16);

  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
  sub_24E602068(&qword_27F22AF78, &qword_27F2214E0);
  v18 = v22[0];
  sub_24F92AD58();
  v24 = *(v13 + *(v14 + 36));

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  v20 = sub_24E602068(&qword_27F228460, &qword_27F23A6C0);
  v23(v18, &v24, MEMORY[0x277D84A98], v19, v20);
  return (v15)(v11, v5);
}

uint64_t sub_24F21D0A8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment);
  v4 = *(v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v6 = v1 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v7 = v6 + *(type metadata accessor for ItemLayoutContext() + 20);
  if (v3 == 1)
  {
    v8 = a1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return (*(v4 + 8))(v7, v8, v9, ObjectType, v4);
}

uint64_t sub_24F21D158()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  return (*(v1 + 16))(v3 + *(v4 + 32), ObjectType, v1);
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.deinit()
{
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__deallocating_deinit()
{
  sub_24E8E7FB0(v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_24F21D340(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v12 = result;
      sub_24E8E7F4C(a2, v10);
      swift_getKeyPath();
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
      sub_24F928A48();

      v14 = v25 == 27;
      v15 = *(v4 + 56);
      type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate();
      v16 = *(v4 + 40);
      v23 = *(v4 + 16);
      v24 = v16;
      Strong = swift_unknownObjectWeakLoadStrong();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24EB64874(v10, v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = v14;
      v19 = v24;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter) = v23;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver) = v19;
      *(v18 + OBJC_IVAR____TtCC12GameStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = v15;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v21 = *(v12 + 16);

      v21(v22, &protocol witness table for ComponentContainerCollectionElementsObserver.ContainerDelegate, a2, a3, ObjectType, v12);
    }
  }

  return result;
}

uint64_t sub_24F21D594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate()
{
  result = qword_27F23C8C8;
  if (!qword_27F23C8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F21D6E8()
{
  result = type metadata accessor for ItemLayoutContext();
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

uint64_t ShelfBatch.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShelfBatch.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShelfBatch.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v74 = v2;
  v68 = *v3;
  v5 = sub_24F9285B8();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = sub_24F928E68();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v24 = *(v13 + 8);
  v22 = v13 + 8;
  v23 = v24;
  v25 = v17;
  v26 = v12;
  v24(v25, v12);
  v27 = *(v19 + 48);
  if (v27(v11, 1, v18) == 1)
  {
    sub_24E601704(v11, qword_27F221C40);
    v28 = sub_24F92AC38();
    sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v29 = 0x7365766C656873;
    v30 = v68;
    v29[1] = 0xE700000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v23(v70, v26);
    type metadata accessor for ShelfBatch();
    swift_deallocPartialClassInstance();
    (*(v71 + 8))(v73, v72);
    return v74;
  }

  v60 = v27;
  v61 = v19;
  v62 = v23;
  v63 = v22;
  v64 = v26;
  v31 = *(v19 + 32);
  v68 = v18;
  v31(v21, v11, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x277D84F90];
  v75 = v32;
  v33 = v21;
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
  __swift_project_value_buffer(v34, qword_27F22D8D8);
  v35 = v69;
  v36 = v73;
  sub_24F928528();

  v76 = MEMORY[0x277D84F98];
  MEMORY[0x28223BE20](v37);
  *(&v59 - 4) = v35;
  *(&v59 - 3) = &v76;
  *(&v59 - 2) = v36;
  type metadata accessor for Shelf();
  v38 = v66;
  v39 = sub_24F928E38();
  v40 = v70;
  if (v38)
  {
    goto LABEL_17;
  }

  v41 = v39;
  v66 = v33;
  v42 = v65;
  sub_24F928398();
  v43 = v67;
  sub_24F9281F8();
  v62(v42, v64);
  v44 = v60(v43, 1, v68);
  if (v44 == 1)
  {
    sub_24E601704(v43, qword_27F221C40);
    sub_24ECDF110();
    v74[2] = v41;
    v46 = v71;
    v45 = v72;
    v47 = v61;
LABEL_9:
    v49 = sub_24E609400(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v48 = v41;
  MEMORY[0x28223BE20](v44);
  *(&v59 - 2) = v69;
  *(&v59 - 1) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  v49 = sub_24F928E38();
  v50 = v43;
  v46 = v71;
  v45 = v72;
  v47 = v61;
  (*(v61 + 8))(v50, v68);
  sub_24ECDF110();
  v74[2] = v48;
  if (!v49)
  {
    goto LABEL_9;
  }

LABEL_10:
  v74[3] = v49;
  v51 = v76;
  v52 = *(v76 + 16);
  if (!v52)
  {
    v53 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v53 = sub_24EAE67B4(*(v76 + 16), 0);
  v54 = *(sub_24F92A1F8() - 8);
  sub_24EAE79E0(&v75, (v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80))), v52, v51);
  v56 = v55;

  sub_24E6586B4();
  if (v56 == v52)
  {
    v45 = v72;
    v36 = v73;
    v40 = v70;
    v46 = v71;
    v47 = v61;
LABEL_14:
    v62(v40, v64);
    (*(v47 + 8))(v66, v68);
    v74[4] = v53;

    v57 = *(v46 + 8);
    v57(v69, v45);
    v57(v36, v45);
    return v74;
  }

  __break(1u);
LABEL_17:

  type metadata accessor for ShelfBatch();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F21E268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (**a6)(unint64_t, char *, uint64_t)@<X5>, _OWORD *a7@<X8>)
{
  v92 = a6;
  v105 = a5;
  v100 = a4;
  v101 = a3;
  v84 = a2;
  v104 = a1;
  v94 = a7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v83 - v7;
  v8 = sub_24F92AC38();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = sub_24F92A1F8();
  v103 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v109 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = &v83 - v14;
  v88 = sub_24F92AC28();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v83 - v17;
  v18 = sub_24F9285B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v83 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  v24 = sub_24F928388();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v83 - v29;
  type metadata accessor for Shelf();
  (*(v25 + 16))(v30, v101, v24);
  v33 = *(v19 + 16);
  v31 = v19 + 16;
  v32 = v33;
  (v33)(v23, v100, v18);
  v34 = v99;
  v35 = Shelf.__allocating_init(deserializing:using:)(v30, v23);
  if (v34)
  {
    v36 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_24F93DE60;
    *(v37 + 32) = v34;
    v38 = v93;
    *v93 = 0x7365766C656873;
    v38[1] = 0xE700000000000000;
    v38[2] = v36;
    v38[3] = v37;
    v40 = v97;
    v39 = v98;
    (*(v97 + 104))(v38, *MEMORY[0x277D22540], v98);
    v41 = v34;
    v42 = v89;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
    sub_24F9285D8();
    (*(v90 + 1))(v42, v91);
    sub_24F21F5A8(v108, v106);
    if (v107)
    {
      __swift_project_boxed_opaque_existential_1(v106, v107);
      sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548]);
      v43 = swift_allocError();
      (*(v40 + 16))(v44, v38, v39);
      sub_24F929EC8();

      sub_24E601704(v108, &qword_27F226730);
      (*(v40 + 8))(v38, v39);

      result = __swift_destroy_boxed_opaque_existential_1(v106);
    }

    else
    {

      sub_24E601704(v108, &qword_27F226730);
      (*(v40 + 8))(v38, v39);
      result = sub_24E601704(v106, &qword_27F226730);
    }

    v52 = v94;
    v94[1] = 0u;
    v52[2] = 0u;
    *v52 = 0u;
    return result;
  }

  v97 = v31;
  v98 = v32;
  v99 = v18;
  v46 = v85;
  v90 = v35;
  v91 = 0;
  sub_24F928398();
  v47 = v86;
  sub_24F9282B8();
  (*(v25 + 8))(v27, v24);
  v48 = v87;
  v49 = v88;
  if ((*(v87 + 48))(v47, 1, v88) == 1)
  {
    sub_24E601704(v47, &qword_27F2213B0);
    v50 = v84;
    v51 = v104;
LABEL_26:
    v108[0] = v51;
    v108[1] = v50;

    v82 = v94;
    result = sub_24F92C7F8();
    *(v82 + 5) = v90;
    return result;
  }

  v53 = v102;
  (*(v48 + 32))(v102, v47, v49);
  (*(v48 + 16))(v46, v53, v49);
  (v98)(v83, v100, v99);
  v54 = v96;
  v55 = sub_24F92B6A8();
  v56 = v103;
  v51 = v104;
  v100 = *(v55 + 16);
  v101 = v55;
  v57 = v95;
  if (!v100)
  {
LABEL_25:

    (*(v87 + 8))(v53, v88);
    v50 = v84;
    goto LABEL_26;
  }

  v58 = 0;
  v99 = (v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)));
  v93 = (v103 + 32);
  v98 = (v103 + 8);
  v92 = (v103 + 40);
  v97 = v103 + 16;
  while (v58 < *(v101 + 16))
  {
    v59 = *(v56 + 72);
    v60 = *(v56 + 16);
    v60(v57, &v99[v59 * v58], v54);
    v61 = sub_24F92A1E8();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v60(v109, v57, v54);
      v65 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = *v65;
      v67 = v108[0];
      *v65 = 0x8000000000000000;
      v68 = sub_24E76D644(v63, v64);
      v70 = *(v67 + 16);
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_29;
      }

      v74 = v69;
      if (*(v67 + 24) >= v73)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v78 = v68;
        sub_24E8B6620();
        v68 = v78;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        v76 = v68;

        v77 = v108[0];
        v54 = v96;
        (*v92)(*(v108[0] + 56) + v76 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
      }

      else
      {
        sub_24E8A8AD4(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_24E76D644(v63, v64);
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_31;
        }

LABEL_19:
        if (v74)
        {
          goto LABEL_20;
        }

LABEL_22:
        v77 = v108[0];
        *(v108[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v79 = (v77[6] + 16 * v68);
        *v79 = v63;
        v79[1] = v64;
        v54 = v96;
        (*v93)(v77[7] + v68 * v59, v109, v96);
        v57 = v95;
        (*v98)(v95, v54);
        v80 = v77[2];
        v72 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v72)
        {
          goto LABEL_30;
        }

        v77[2] = v81;
      }

      *v105 = v77;

      goto LABEL_11;
    }

    (*v98)(v57, v54);
LABEL_11:
    v53 = v102;
    v56 = v103;
    ++v58;
    v51 = v104;
    if (v100 == v58)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F21EE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v42 = a5;
  v38 = a1;
  v39 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v43 = sub_24F92AC38();
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F9285B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F928388();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a3, v19);
  (*(v15 + 16))(v17, a4, v14);
  v23 = sub_24F92A868();
  sub_24F21F560(&qword_27F222F70, MEMORY[0x277D22430]);
  v24 = swift_allocError();
  v25 = v44;
  JSError.init(deserializing:using:)(v21, v17, v26);
  if (v25)
  {
    v44 = a6;
    MEMORY[0x253053F50](v24, v23);
    v27 = type metadata accessor for ShelfBatch();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;
    *(v28 + 32) = v25;
    *v13 = 0x726F727265;
    v13[1] = 0xE500000000000000;
    v13[2] = v27;
    v13[3] = v28;
    v29 = v43;
    (*(v48 + 104))(v13, *MEMORY[0x277D22540], v43);
    v30 = v25;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
    sub_24F9285D8();
    (*(v40 + 8))(v11, v41);
    sub_24F21F5A8(v47, v45);
    if (v46)
    {
      __swift_project_boxed_opaque_existential_1(v45, v46);
      sub_24F21F560(&qword_27F2213B8, MEMORY[0x277D22548]);
      v31 = swift_allocError();
      v32 = v48;
      (*(v48 + 16))(v33, v13, v29);
      sub_24F929EC8();

      sub_24E601704(v47, &qword_27F226730);
      (*(v32 + 8))(v13, v29);

      result = __swift_destroy_boxed_opaque_existential_1(v45);
    }

    else
    {

      sub_24E601704(v47, &qword_27F226730);
      (*(v48 + 8))(v13, v29);
      result = sub_24E601704(v45, &qword_27F226730);
    }

    v36 = v44;
    *v44 = 0;
    v36[1] = 0;
    v36[2] = 0;
  }

  else
  {
    v35 = v39;
    *a6 = v38;
    a6[1] = v35;
    a6[2] = v24;
  }

  return result;
}

void *ShelfBatch.__allocating_init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = sub_24E954344(a1);

  v6[2] = v7;
  v6[3] = a2;
  v6[4] = a3;
  return v6;
}

void *ShelfBatch.init(shelves:errors:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E954344(a1);

  v3[2] = v6;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t ShelfBatch.deinit()
{

  return v0;
}

uint64_t ShelfBatch.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F21F488@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShelfBatch();
  v7 = swift_allocObject();
  result = ShelfBatch.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F21F560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F21F5A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 BatchPurchaseParams.PurchaseItem.init(deserializing:using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F928388();
  v11 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  sub_24F928398();
  (*(v8 + 16))(v10, a2, v7);
  v17 = v42;
  PurchaseRepresentation.init(deserializing:using:)(v16, v10, v43);
  if (v17)
  {
    (*(v8 + 8))(a2, v7);
    (*(v11 + 8))(a1, v59);
    return result;
  }

  v36 = v8;
  v37 = v7;
  v38 = 0;
  v39 = a2;
  v55 = v43[10];
  v56 = v43[11];
  v57 = v43[12];
  v58 = v44;
  v51 = v43[6];
  v52 = v43[7];
  v53 = v43[8];
  v54 = v43[9];
  v47 = v43[2];
  v48 = v43[3];
  v49 = v43[4];
  v50 = v43[5];
  v45 = v43[0];
  v46 = v43[1];
  v42 = a1;
  sub_24F928398();
  v19 = v40;
  sub_24F9281F8();
  v20 = *(v11 + 8);
  v21 = v59;
  v20(v13, v59);
  v22 = v20;
  v23 = sub_24F928E68();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    sub_24E601704(v19, qword_27F221C40);
    v25 = v36;
    v26 = v37;
    v27 = v41;
LABEL_7:
    v28 = sub_24E6086DC(MEMORY[0x277D84F90]);
    (*(v25 + 8))(v39, v26);
    v22(v42, v21);

    goto LABEL_8;
  }

  v28 = sub_24F928E48();
  (*(v24 + 8))(v19, v23);
  v25 = v36;
  v26 = v37;
  v27 = v41;
  if (!v28)
  {
    goto LABEL_7;
  }

  (*(v36 + 8))(v39, v37);
  v22(v42, v21);
LABEL_8:
  v29 = v56;
  *(v27 + 160) = v55;
  *(v27 + 176) = v29;
  *(v27 + 192) = v57;
  v30 = v58;
  v31 = v52;
  *(v27 + 96) = v51;
  *(v27 + 112) = v31;
  v32 = v54;
  *(v27 + 128) = v53;
  *(v27 + 144) = v32;
  v33 = v48;
  *(v27 + 32) = v47;
  *(v27 + 48) = v33;
  v34 = v50;
  *(v27 + 64) = v49;
  *(v27 + 80) = v34;
  result = v45;
  v35 = v46;
  *v27 = v45;
  *(v27 + 16) = v35;
  *(v27 + 208) = v30;
  *(v27 + 216) = v28;
  return result;
}

uint64_t BatchPurchaseParams.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t BatchPurchaseParams.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = v3;
  v43 = *v3;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v21 = v16;
  v22 = v10;
  v23 = *(v11 + 8);
  v23(v21, v22);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_24E601704(v9, &qword_27F2213B0);
    v24 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v25 = 0x736D657469;
    v26 = v43;
    v25[1] = 0xE500000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    v23(v45, v22);
    v27 = v46;
    swift_deallocPartialClassInstance();
    v28 = sub_24F9285B8();
    (*(*(v28 - 8) + 8))(v44, v28);
    return v27;
  }

  v40 = v23;
  v42 = v22;
  v29 = (*(v18 + 32))(v20, v9, v17);
  MEMORY[0x28223BE20](v29);
  v39[-2] = v44;
  v39[0] = v20;
  v30 = v39[1];
  v31 = sub_24F92ABB8();
  if (!v30)
  {
    v46[2] = v31;
    sub_24F928398();
    v32 = v41;
    sub_24F9281F8();
    v40(v13, v42);
    v33 = sub_24F928E68();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_24E601704(v32, qword_27F221C40);
      v35 = v44;
    }

    else
    {
      v36 = sub_24F928E48();
      (*(v34 + 8))(v32, v33);
      v35 = v44;
      if (v36)
      {
        v40(v45, v42);
        (*(v18 + 8))(v39[0], v17);
LABEL_9:
        v27 = v46;
        v46[3] = v36;
        v37 = sub_24F9285B8();
        (*(*(v37 - 8) + 8))(v35, v37);
        return v27;
      }
    }

    v36 = sub_24E6086DC(MEMORY[0x277D84F90]);
    v40(v45, v42);
    (*(v18 + 8))(v39[0], v17);

    goto LABEL_9;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24F220124(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24F2204E8();
  return sub_24F929548();
}

uint64_t BatchPurchaseParams.deinit()
{

  return v0;
}

uint64_t BatchPurchaseParams.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F220330@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = BatchPurchaseParams.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F220418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_24F220460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F2204E8()
{
  result = qword_27F23C8D8;
  if (!qword_27F23C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8D8);
  }

  return result;
}

void *SearchEntityChangeAction.__allocating_init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v15 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14 + v15, a5, v16);
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v37, &v34);
  if (*(&v35 + 1))
  {
    v22 = v35;
    *v21 = v34;
    *(v21 + 1) = v22;
    *(v21 + 4) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = a1;
    v27 = a2;
    v28 = v23;
    v29 = v11;
    v31 = v30;
    (*(v29 + 8))(v13, v24);
    v33[1] = v28;
    v33[2] = v31;
    a2 = v27;
    a1 = v26;
    a5 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v37, &qword_27F235830);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = 0;
  v14[5] = 0;
  return v14;
}

void *SearchEntityChangeAction.init(title:entity:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  v10 = sub_24F91F6B8();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity) = *a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin) = *a4;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a5, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v29 + 8))(v12, v10);
    v32 = v22;
    v33 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v40, &qword_27F235830);
  v25 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 4) = v39;
  v26 = v38;
  *v25 = v37;
  *(v25 + 1) = v26;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v27 = v31;
  v6[2] = v30;
  v6[3] = v27;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

char *SearchEntityChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v30 = *v4;
  v31 = v3;
  v7 = sub_24F9285B8();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v35 = a1;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v34 = *(v10 + 8);
  v34(v15, v9);
  v16 = v37;
  if (v37 == 15)
  {
    v17 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v18, "searchOrigin");
    v19 = v30;
    v18[13] = 0;
    *(v18 + 7) = -5120;
    *(v18 + 2) = v19;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    (*(v32 + 8))(a2, v33);
    v34(v35, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = a2;
    v20 = v35;
    sub_24F928398();
    sub_24EC556D4();
    sub_24F928248();
    v34(v15, v9);
    v4[OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_entity] = v36;
    v4[OBJC_IVAR____TtC12GameStoreKit24SearchEntityChangeAction_searchOrigin] = v16;
    v21 = v30;
    (*(v10 + 16))(v13, v20, v9);
    v23 = v32;
    v22 = v33;
    v24 = v29;
    (*(v32 + 16))(v29, v21, v33);
    v25 = v31;
    v26 = Action.init(deserializing:using:)(v13, v24);
    if (!v25)
    {
      v4 = v26;
    }

    (*(v23 + 8))(v21, v22);
    v34(v35, v9);
  }

  return v4;
}

uint64_t SearchEntityChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t SearchEntityChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchEntityChangeAction()
{
  result = qword_27F23C8E0;
  if (!qword_27F23C8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::IconArtworkIntent __swiftcall IconArtworkIntent.init(adamIds:)(Swift::OpaquePointer adamIds)
{
  v1->_rawValue = 0xD000000000000011;
  v1[1]._rawValue = 0x800000024F9D74B0;
  v1[2]._rawValue = adamIds._rawValue;
  result.kind._countAndFlagsBits = adamIds._rawValue;
  return result;
}

uint64_t IconArtworkIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall IconArtworkIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v4, 0);
    v5 = (v3 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v16 + 16);
      v9 = *(v16 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_24F4578E0((v9 > 1), v8 + 1, 1);
      }

      *(v16 + 16) = v8 + 1;
      v10 = v16 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v14 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v15 = [v11 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v15)
    {

      sub_24F92C328();

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24F22152C()
{
  result = qword_27F23C8F0;
  if (!qword_27F23C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8F0);
  }

  return result;
}

unint64_t sub_24F221588()
{
  result = qword_27F23C8F8;
  if (!qword_27F23C8F8)
  {
    type metadata accessor for ArtworkLookupResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C8F8);
  }

  return result;
}

void sub_24F2215F0()
{
  dword_27F23C900 = 0;
  word_27F23C904 = 256;
  byte_27F23C906 = 0;
}

GameStoreKit::TodayCard::Style_optional __swiftcall TodayCard.Style.init(rawValue:)(Swift::String rawValue)
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

uint64_t TodayCard.Style.rawValue.getter()
{
  v1 = 0x6974616D6F747561;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x746867696CLL;
  }

  if (*v0)
  {
    v1 = 0x6574696877;
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

uint64_t sub_24F2216E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F221794()
{
  sub_24F92B218();
}

uint64_t sub_24F221834()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F2218F0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x746867696CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6574696877;
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

uint64_t TodayCard.__allocating_init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v69 = a8;
  v59 = a7;
  v58 = a6;
  v72 = a5;
  v67 = a3;
  v56 = a2;
  v73 = a21;
  v57 = a20;
  v70 = a9;
  v71 = a11;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v66 = *a12;
  v28 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v29 = MEMORY[0x277D84038];
  *(v27 + 184) = MEMORY[0x277D84030];
  *(v27 + 192) = v29;
  v30 = swift_allocObject();
  *(v27 + 160) = v30;
  v68 = a1;
  sub_24E60169C(a1, &v76, &qword_27F235830);
  if (*(&v77 + 1))
  {
    v31 = v77;
    *(v30 + 16) = v76;
    *(v30 + 32) = v31;
    *(v30 + 48) = v78;
  }

  else
  {
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v24 + 8))(v26, v23);
    v74 = v32;
    v75 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830);
  }

  v64 = a17;
  v65 = a18;
  v62 = a15;
  v63 = a16;
  v61 = a14;
  v55 = a13;
  v60 = a10;
  sub_24E60169C(v73, v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68);
  v35 = v67;
  *(v27 + 16) = v56;
  *(v27 + 24) = v35;
  v67 = a4;
  *(v27 + 32) = a4;
  v36 = v71;
  v37 = v72;
  v38 = v58;
  *(v27 + 40) = v72;
  *(v27 + 48) = v38;
  v39 = v70;
  *(v27 + 56) = v59;
  *(v27 + 64) = v39;
  *(v27 + 72) = v36;
  *(v27 + 80) = v57 & 1;
  if (v28 == 2)
  {
    v40 = qword_27F211018;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v28) = dword_27F23C900;
    v41 = BYTE1(dword_27F23C900);
    LOBYTE(v42) = BYTE2(dword_27F23C900);
    LOBYTE(v43) = HIBYTE(dword_27F23C900);
    LOBYTE(v44) = word_27F23C904;
    LOBYTE(v45) = HIBYTE(word_27F23C904);
    LOBYTE(v46) = byte_27F23C906;
    v37 = v72;
  }

  else
  {
    v59 = (v28 >> 8) & 1;
    v42 = (v28 >> 16) & 1;
    v43 = (v28 >> 24) & 1;
    v44 = HIDWORD(v28) & 1;
    v45 = (v28 >> 40) & 1;
    v46 = HIWORD(v28) & 1;

    v41 = v59;
  }

  v47 = (v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v28 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v55;
  v48.value._countAndFlagsBits = v67;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_24E601704(v73, &qword_27F213E68);
  sub_24E601704(v68, &qword_27F235830);
  v49 = v69;
  *(v27 + 88) = v76;
  *(v27 + 96) = v49;
  *(v27 + 104) = v66;
  v50 = v61;
  *(v27 + 112) = v60;
  *(v27 + 120) = v50;
  v51 = v63;
  *(v27 + 128) = v62;
  *(v27 + 136) = v51;
  v52 = v65;
  *(v27 + 144) = v64;
  *(v27 + 152) = v52;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v27;
}

uint64_t TodayCard.init(id:heading:title:shortTitle:titleArtwork:media:heroMedia:overlay:style:clickAction:backgroundColor:inlineDescription:collapsedHeading:editorialDisplayOptions:supportsMediaMirroring:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v68 = a8;
  v58 = a7;
  v57 = a6;
  v71 = a5;
  v66 = a3;
  v55 = a2;
  v72 = a21;
  v56 = a20;
  v69 = a9;
  v70 = a11;
  v25 = sub_24F91F6B8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a12;
  v29 = *a19 | ((*(a19 + 2) | (*(a19 + 6) << 16)) << 32);
  v79 = MEMORY[0x277D84030];
  v80 = MEMORY[0x277D84038];
  v30 = swift_allocObject();
  *&v78 = v30;
  v67 = a1;
  sub_24E60169C(a1, &v75, &qword_27F235830);
  if (*(&v76 + 1))
  {
    v31 = v76;
    *(v30 + 16) = v75;
    *(v30 + 32) = v31;
    *(v30 + 48) = v77;
  }

  else
  {
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v26 + 8))(v28, v25);
    v73 = v32;
    v74 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830);
  }

  v64 = a18;
  v63 = a17;
  v62 = a16;
  v61 = a15;
  v60 = a14;
  v54 = a13;
  v59 = a10;
  sub_24E612C80(&v78, v22 + 160);
  sub_24E60169C(v72, v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68);
  v35 = v66;
  *(v22 + 16) = v55;
  *(v22 + 24) = v35;
  v66 = a4;
  *(v22 + 32) = a4;
  v36 = v70;
  v37 = v71;
  v38 = v57;
  *(v22 + 40) = v71;
  *(v22 + 48) = v38;
  v39 = v69;
  *(v22 + 56) = v58;
  *(v22 + 64) = v39;
  *(v22 + 72) = v36;
  *(v22 + 80) = v56 & 1;
  if (v29 == 2)
  {
    v40 = qword_27F211018;

    if (v40 != -1)
    {
      swift_once();
    }

    LOBYTE(v29) = dword_27F23C900;
    v41 = BYTE1(dword_27F23C900);
    LOBYTE(v42) = BYTE2(dword_27F23C900);
    LOBYTE(v43) = HIBYTE(dword_27F23C900);
    LOBYTE(v44) = word_27F23C904;
    LOBYTE(v45) = HIBYTE(word_27F23C904);
    LOBYTE(v46) = byte_27F23C906;
    v37 = v71;
  }

  else
  {
    v58 = (v29 >> 8) & 1;
    v42 = (v29 >> 16) & 1;
    v43 = (v29 >> 24) & 1;
    v44 = HIDWORD(v29) & 1;
    v45 = (v29 >> 40) & 1;
    v46 = HIWORD(v29) & 1;

    v41 = v58;
  }

  v47 = (v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  *v47 = v29 & 1;
  v47[1] = v41;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v47[6] = v46;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v54;
  v48.value._countAndFlagsBits = v66;
  v48.value._object = v37;
  StringCharacteristics.init(byAnalyzing:)(v48);

  sub_24E601704(v72, &qword_27F213E68);
  sub_24E601704(v67, &qword_27F235830);
  v49 = v68;
  *(v22 + 88) = v78;
  *(v22 + 96) = v49;
  *(v22 + 104) = v65;
  v50 = v60;
  *(v22 + 112) = v59;
  *(v22 + 120) = v50;
  v51 = v62;
  *(v22 + 128) = v61;
  *(v22 + 136) = v51;
  v52 = v64;
  *(v22 + 144) = v63;
  *(v22 + 152) = v52;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = 0;
  return v22;
}

uint64_t sub_24F222210()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t TodayCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TodayCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v193 = a2;
  v5 = *v3;
  v201 = v3;
  v191 = v5;
  v198 = sub_24F9285B8();
  v196 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v195 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v194 = &v182 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v192 = (&v182 - v10);
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v184 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v183 = &v182 - v19;
  MEMORY[0x28223BE20](v20);
  v187 = &v182 - v21;
  MEMORY[0x28223BE20](v22);
  v186 = &v182 - v23;
  MEMORY[0x28223BE20](v24);
  v185 = &v182 - v25;
  MEMORY[0x28223BE20](v26);
  v199 = &v182 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v182 - v29;
  v202 = a1;
  sub_24F928398();
  *(&v211 + 1) = MEMORY[0x277D84030];
  *&v212 = MEMORY[0x277D84038];
  *&v210 = swift_allocObject();
  v31 = sub_24F928348();
  v200 = v15;
  if (v32)
  {
    *&v207 = v31;
    *(&v207 + 1) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v33 = sub_24F91F668();
    v35 = v34;
    (*(v12 + 8))(v14, v11);
    *&v207 = v33;
    *(&v207 + 1) = v35;
  }

  sub_24F92C7F8();
  v36 = *(v16 + 8);
  v197 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v203 = v36;
  v36(v30, v15);
  v37 = v201;
  sub_24E612C80(&v210, (v201 + 20));
  sub_24F929608();
  v38 = v199;
  sub_24F928398();
  v39 = v196 + 16;
  v40 = *(v196 + 16);
  v41 = v193;
  v42 = v198;
  v40(v194, v193, v198);
  v43 = v192;
  sub_24F929548();
  v190 = OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics;
  sub_24E65E0D4(v43, v37 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics);
  v44 = v195;
  v189 = v39;
  v192 = v40;
  v40(v195, v41, v42);
  v45 = v202;
  sub_24F928398();
  v46 = sub_24F928328();
  v47 = v200;
  v203(v38, v200);
  if (v46)
  {
    v48 = sub_24F92AC38();
    sub_24F2241D8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x616964656DLL;
    v49[1] = 0xE500000000000000;
    v49[2] = v191;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v50 = *(v196 + 8);
    v51 = v41;
    v52 = v198;
    v50(v51, v198);
    v203(v45, v47);
    v50(v44, v52);
    v53 = v201;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1((v53 + 20));
    sub_24E601704(v53 + v190, &qword_27F213E68);
    swift_deallocPartialClassInstance();
    return v53;
  }

  v54 = v47;
  sub_24F928398();
  v55 = sub_24F928348();
  v57 = v56;
  v58 = v203;
  v203(v38, v54);
  v59 = v201;
  v201[2] = v55;
  v59[3] = v57;
  v60 = v185;
  sub_24F928398();
  v61 = sub_24F928348();
  v63 = v62;
  v58(v60, v54);
  if (v63)
  {
    v64 = [objc_opt_self() systemFontOfSize_];
    v65 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v66 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v67 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v64;
    *(&v211 + 1) = v65;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v66;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v67;
    v68 = type metadata accessor for RemovingNQMLStringGenerator();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v70 = 0;
    v70[1] = 0xE000000000000000;
    v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v71 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v72 = sub_24F92B098();

    v73 = [v71 initWithString_];

    *&v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v73;
    v74 = &v69[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v74 = v210;
    v75 = v211;
    v76 = v212;
    v77 = v214;
    v74[3] = v213;
    v74[4] = v77;
    v74[1] = v75;
    v74[2] = v76;
    v204.receiver = v69;
    v204.super_class = v68;
    v78 = objc_msgSendSuper2(&v204, sel_init);
    [*&v78[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v61 = sub_24E8EB9E0();
    v80 = v79;

    sub_24E951D6C(&v210);
  }

  else
  {
    v80 = 0;
  }

  v81 = v201;
  v201[4] = v61;
  v81[5] = v80;
  v82 = v186;
  sub_24F928398();
  v83 = sub_24F928348();
  v85 = v84;
  v86 = v203;
  v203(v82, v200);
  v87 = v199;
  if (v85)
  {
    v88 = [objc_opt_self() systemFontOfSize_];
    v89 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v90 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v91 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v88;
    *(&v211 + 1) = v89;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v90;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v91;
    v92 = type metadata accessor for RemovingNQMLStringGenerator();
    v93 = objc_allocWithZone(v92);
    v94 = &v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v94 = 0;
    v94[1] = 0xE000000000000000;
    v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v95 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v96 = sub_24F92B098();

    v97 = [v95 initWithString_];

    *&v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v97;
    v98 = &v93[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v98 = v210;
    v99 = v211;
    v100 = v212;
    v101 = v214;
    v98[3] = v213;
    v98[4] = v101;
    v98[1] = v99;
    v98[2] = v100;
    v205.receiver = v93;
    v205.super_class = v92;
    v86 = v203;
    v102 = objc_msgSendSuper2(&v205, sel_init);
    [*&v102[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v83 = sub_24E8EB9E0();
    v85 = v103;

    sub_24E951D6C(&v210);
  }

  v104 = v196;
  v105 = v201;
  v201[6] = v83;
  v105[7] = v85;
  v106 = type metadata accessor for TodayCardMedia();
  v107 = v187;
  sub_24F928398();
  v108 = v195;
  v109 = v188;
  v110 = static TodayCardMedia.makeInstance(byDeserializing:using:)(v107, v195);
  v188 = v109;
  if (v109)
  {
    v111 = *(v104 + 8);
    v112 = v108;
    v113 = v198;
    v111(v193, v198);
    v114 = v200;
    v86(v202, v200);
    v86(v107, v114);
    v111(v112, v113);

    v53 = v105;
    goto LABEL_13;
  }

  v116 = v110;
  v191 = v106;
  v117 = v200;
  v203(v107, v200);
  v105[8] = v116;
  v118 = type metadata accessor for TodayCardOverlay();
  sub_24F928398();
  v190 = v118;
  v119 = static TodayCardOverlay.tryToMakeInstance(byDeserializing:using:)(v87, v108);
  v203(v87, v117);
  v105[9] = v119;
  v120 = v87;
  v121 = v108;
  v122 = v183;
  sub_24F928398();
  LOBYTE(v119) = sub_24F928278();
  v203(v122, v117);
  *(v105 + 80) = v119 & 1;
  sub_24F928398();
  v192(v194, v121, v198);
  sub_24E951DC0();
  sub_24F929548();
  v123 = v210 | ((WORD2(v210) | (BYTE6(v210) << 16)) << 32);
  v53 = v105;
  if (v210 == 2)
  {
    if (qword_27F211018 != -1)
    {
      swift_once();
    }

    LOBYTE(v123) = dword_27F23C900;
    LOBYTE(v124) = BYTE1(dword_27F23C900);
    LOBYTE(v125) = BYTE2(dword_27F23C900);
    LOBYTE(v126) = HIBYTE(dword_27F23C900);
    LOBYTE(v127) = word_27F23C904;
    LOBYTE(v128) = HIBYTE(word_27F23C904);
    LOBYTE(v129) = byte_27F23C906;
  }

  else
  {
    v124 = (v123 >> 8) & 1;
    v125 = (v123 >> 16) & 1;
    v126 = (v123 >> 24) & 1;
    v127 = HIDWORD(v123) & 1;
    v128 = (v123 >> 40) & 1;
    v129 = HIWORD(v123) & 1;
  }

  v130 = v105 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions;
  *v130 = v123 & 1;
  v130[1] = v124;
  v130[2] = v125;
  v130[3] = v126;
  v130[4] = v127;
  v130[5] = v128;
  v130[6] = v129;
  type metadata accessor for Action();
  sub_24F928398();
  v131 = v195;
  v132 = static Action.tryToMakeInstance(byDeserializing:using:)(v120, v195);
  v133 = v120;
  v134 = v200;
  v203(v133, v200);
  *(v53 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction) = v132;
  v136 = v53[4];
  v135 = v53[5];

  v137.value._countAndFlagsBits = v136;
  v137.value._object = v135;
  StringCharacteristics.init(byAnalyzing:)(v137);
  v53[11] = v210;
  type metadata accessor for Artwork();
  sub_24F928398();
  v138 = v194;
  v139 = v198;
  v192(v194, v131, v198);
  sub_24F2241D8(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v53[12] = v210;
  sub_24F928398();
  sub_24F2239E8();
  sub_24F928208();
  v140 = v134;
  v141 = v203;
  v203(v199, v140);
  *(v53 + 104) = v210;
  type metadata accessor for TodayCardMediaHero();
  sub_24F928398();
  v142 = v139;
  v143 = v199;
  v192(v138, v195, v142);
  sub_24F2241D8(&qword_27F23C910, type metadata accessor for TodayCardMediaHero);
  sub_24F929548();
  v53[14] = v210;
  sub_24F928398();
  v144 = JSONObject.appStoreColor.getter();
  v145 = v200;
  v141(v143, v200);
  v53[15] = v144;
  v146 = v184;
  sub_24F928398();
  v147 = sub_24F928348();
  v149 = v148;
  v150 = v145;
  v151 = v141;
  v141(v146, v150);
  if (v149)
  {
    v152 = [objc_opt_self() systemFontOfSize_];
    v153 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v154 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v155 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v210 = 10;
    *(&v210 + 1) = 0xE100000000000000;
    *&v211 = v152;
    *(&v211 + 1) = v153;
    *&v212 = 161644770;
    *(&v212 + 1) = 0xA400000000000000;
    *&v213 = v154;
    *(&v213 + 1) = 606245;
    *&v214 = 0xE300000000000000;
    *(&v214 + 1) = v155;
    v156 = type metadata accessor for RemovingNQMLStringGenerator();
    v157 = objc_allocWithZone(v156);
    v158 = &v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_accumulator];
    *v158 = 0;
    v158[1] = 0xE000000000000000;
    v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_didParseEverything] = 1;
    v159 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v210, &v207);
    v160 = sub_24F92B098();

    v161 = [v159 initWithString_];

    *&v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] = v161;
    v162 = &v157[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
    *v162 = v210;
    v163 = v211;
    v164 = v212;
    v165 = v214;
    v162[3] = v213;
    v162[4] = v165;
    v162[1] = v163;
    v162[2] = v164;
    v206.receiver = v157;
    v206.super_class = v156;
    v166 = objc_msgSendSuper2(&v206, sel_init);
    [*&v166[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_parser] setDelegate_];
    v147 = sub_24E8EB9E0();
    v149 = v167;

    sub_24E951D6C(&v210);
  }

  v53[16] = v147;
  v53[17] = v149;
  sub_24F928398();
  v168 = sub_24F928348();
  v170 = v169;
  v151(v143, v200);
  v53[18] = v168;
  v53[19] = v170;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v171 = v193;
  v172 = v198;
  v192(v194, v193, v198);
  sub_24F2241D8(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
  sub_24F929548();
  v173 = v210;
  if (!v53[9] || (*&v210 = v53[9], , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38), (swift_dynamicCast() & 1) == 0))
  {
    v209 = 0;
    v207 = 0u;
    v208 = 0u;
    v174 = v196;
    goto LABEL_27;
  }

  v174 = v196;
  if (!*(&v208 + 1))
  {
LABEL_27:
    v215 = v53[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v212 = 0;
      v210 = 0u;
      v211 = 0u;
    }

    if (*(&v208 + 1))
    {
      sub_24E601704(&v207, qword_27F239C40);
    }

    goto LABEL_31;
  }

  sub_24E612C80(&v207, &v210);
LABEL_31:
  if (v173)
  {
    v175 = *(v174 + 8);
    v175(v171, v172);
    v151(v202, v200);
    v175(v195, v172);
  }

  else
  {
    sub_24E60169C(&v210, &v207, qword_27F239C40);
    v176 = *(&v208 + 1);
    if (*(&v208 + 1))
    {
      v177 = v209;
      __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
      v173 = (*(v177 + 8))(v176, v177);
      v178 = *(v174 + 8);
      v179 = v198;
      v178(v171, v198);
      v151(v202, v200);
      v178(v195, v179);
      __swift_destroy_boxed_opaque_existential_1(&v207);
    }

    else
    {
      v180 = *(v174 + 8);
      v181 = v198;
      v180(v171, v198);
      v151(v202, v200);
      v180(v195, v181);
      sub_24E601704(&v207, qword_27F239C40);
      v173 = 0;
    }
  }

  *(v53 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_searchAdOpportunity) = v173;
  sub_24E601704(&v210, qword_27F239C40);
  return v53;
}

unint64_t sub_24F2239E8()
{
  result = qword_27F23C908;
  if (!qword_27F23C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C908);
  }

  return result;
}

uint64_t TodayCard.heading.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TodayCard.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TodayCard.shortTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *TodayCard.backgroundColor.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t TodayCard.inlineDescription.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t TodayCard.collapsedHeading.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t TodayCard.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

void TodayCard.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

uint64_t TodayCard.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCard.__deallocating_deinit()
{
  TodayCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F223D7C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24F2241D8(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t *sub_24F223E24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_24F223EB4(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

unint64_t sub_24F223F40()
{
  result = qword_27F23C918;
  if (!qword_27F23C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C918);
  }

  return result;
}

uint64_t type metadata accessor for TodayCard()
{
  result = qword_27F23C928;
  if (!qword_27F23C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F224030()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F2241D8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String_optional __swiftcall ACAccount.localizedName(style:)(NSPersonNameComponentsFormatterStyle style)
{
  v2 = v1;
  v4 = sub_24F91F1A8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 ams_firstName];
  if (v9)
  {
    v10 = v9;
    sub_24F92B0D8();

    sub_24F91F198();
    sub_24F91F158();
    v11 = [v2 ams_lastName];
    if (v11)
    {
      v12 = v11;
      sub_24F92B0D8();
    }

    sub_24F91F168();
    v15 = objc_opt_self();
    v16 = sub_24F91F188();
    v17 = [v15 localizedStringFromPersonNameComponents:v16 style:style options:0];

    v13 = sub_24F92B0D8();
    v14 = v18;

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v19 = v13;
  v20 = v14;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

id ACAccount.localizedInitials.getter()
{
  v1 = v0;
  v2 = sub_24F91F1A8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 ams_firstName];
  if (result)
  {
    v8 = result;
    sub_24F92B0D8();

    sub_24F91F198();
    sub_24F91F158();
    v9 = [v1 ams_lastName];
    if (v9)
    {
      v10 = v9;
      sub_24F92B0D8();
    }

    sub_24F91F168();
    v11 = objc_opt_self();
    v12 = sub_24F91F188();
    v13 = [v11 localizedStringFromPersonNameComponents:v12 style:4 options:0];

    v14 = sub_24F92B0D8();
    (*(v3 + 8))(v6, v2);
    v15 = sub_24F92B228();
    if (v15 > 0 && v15 < 3)
    {
      return v14;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

__n128 TitledButtonStackLayout.init(metrics:items:lineBreaks:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a1 + 112);
  *(a4 + 112) = *(a1 + 96);
  *(a4 + 128) = v5;
  v6 = *(a1 + 144);
  *(a4 + 144) = *(a1 + 128);
  *(a4 + 160) = v6;
  v7 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v7;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v10;
  *a4 = a2;
  *(a4 + 8) = v4;
  return result;
}

uint64_t TitledButtonStackLayout.Metrics.init(buttonHeight:horizontalInterItemSpace:verticalInterItemSpace:maximumButtonWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);

  return sub_24EA63A70(a4, v9);
}

uint64_t TitledButtonStackLayout.Metrics.buttonHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t TitledButtonStackLayout.Metrics.horizontalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t TitledButtonStackLayout.Metrics.verticalInterItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

double TitledButtonStackLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938);
  *&v11 = MEMORY[0x28223BE20](v10 - 8).n128_u64[0];
  v13 = &v23[-v12];
  v14 = [a1 traitCollection];
  v15 = sub_24F92BF98();

  if (v15)
  {
    sub_24F224C3C((v3 + 2), *v3, a1, v25);
    v23[0] = v25[0];
    v24 = v25[1];
    _VerticalFlowLayout.measurements(fitting:in:)(a2);
    a2 = v16;
  }

  else
  {
    v18 = *v3;
    v17 = v3[1];
    if (v17)
    {
      v25[0] = a1;
      (*(*v17 + 104))(v25);
      v19 = sub_24F91F968();
      (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    }

    else
    {
      v20 = sub_24F91F968();
      (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    }

    sub_24F22574C(v18, v13, a1);
    sub_24E601704(v13, &qword_27F23C938);
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v21 = *(v7 + 8);
    v21(v9, v6);
    __swift_project_boxed_opaque_existential_1(v3 + 12, v3[15]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v21(v9, v6);
  }

  return a2;
}

void sub_24F224C3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v30 = sub_24F92CDB8();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v28 = a4;
    v44 = MEMORY[0x277D84F90];
    sub_24F45822C(0, v10, 0);
    v12 = 0;
    v13 = a2 + 32;
    v11 = v44;
    v29 = (v7 + 8);
    v14 = MEMORY[0x277D226F0];
    do
    {
      sub_24E615E00(v13, v38);
      v36 = v12;
      sub_24E612C80(v38, v37);
      v15 = sub_24F922418();
      v35[3] = v15;
      v35[4] = v14;
      __swift_allocate_boxed_opaque_existential_1(v35);
      sub_24F922408();
      if (v10 == 1)
      {
        v33 = v15;
        v34 = v14;
        __swift_allocate_boxed_opaque_existential_1(v32);
        sub_24F922408();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((a1 + 80), *(a1 + 104));
        sub_24E8ED7D8();
        sub_24F9223A8();
        v17 = v16;
        (*v29)(v9, v30);
        v33 = MEMORY[0x277D85048];
        v34 = MEMORY[0x277D225F8];
        v32[0] = v17;
      }

      sub_24E615E00(v37, v39);
      sub_24E615E00(v35, v41);
      sub_24E60169C(v32, v42 + 8, &qword_27F22F780);
      WORD4(v40) = 256;
      v43 = 2;
      sub_24E601704(v32, &qword_27F22F780);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_24E601704(&v36, &qword_27F23C940);
      v44 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24F45822C((v18 > 1), v19 + 1, 1);
        v11 = v44;
      }

      ++v12;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + 136 * v19;
      *(v20 + 32) = v39[0];
      v21 = v39[1];
      v22 = v40;
      v23 = v41[1];
      *(v20 + 80) = v41[0];
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v42[0];
      v25 = v42[1];
      v26 = v42[2];
      *(v20 + 160) = v43;
      *(v20 + 128) = v25;
      *(v20 + 144) = v26;
      *(v20 + 112) = v24;
      v13 += 40;
      --v10;
      v14 = MEMORY[0x277D226F0];
    }

    while (v10);
    a4 = v28;
  }

  *a4 = 1;
  *(a4 + 8) = v11;
}

uint64_t TitledButtonStackLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v72 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = *v6;
  if (*(*v6 + 16))
  {
    v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = [a1 traitCollection];
    v22 = sub_24F92BF98();

    if (v22)
    {
      sub_24F224C3C((v7 + 2), v20, a1, v81);
      LOBYTE(v79) = v81[0];
      *(&v79 + 1) = v81[1];
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, v72, a4, a5, a6);
    }

    else
    {
      v77 = v15;
      v78 = v20;
      __swift_project_boxed_opaque_existential_1(v7 + 12, v7[15]);
      v24 = a1;
      v25 = v75;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v68 = v26;
      v27 = *(v17 + 8);
      v27(v25, v16);
      __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
      sub_24E8ED7D8();
      v74 = v24;
      sub_24F9223A8();
      v70 = v28;
      v29 = v25;
      v30 = v27;
      v27(v29, v16);
      v31 = v7[1];
      if (v31)
      {
        v32 = v74;
        v81[0] = v74;
        v33 = v77;
        (*(*v31 + 104))(v81);
        v34 = 0;
        v35 = v32;
      }

      else
      {
        v34 = 1;
        v35 = v74;
        v33 = v77;
      }

      v36 = v78;
      v37 = sub_24F91F968();
      (*(*(v37 - 8) + 56))(v33, v34, 1, v37);
      v38 = sub_24F22574C(v36, v33, v35);
      result = sub_24E601704(v33, &qword_27F23C938);
      v67 = *(v38 + 16);
      if (v67)
      {
        v39 = 0;
        v65 = v38 + 32;
        v40 = 0.0;
        v41 = v30;
        v64 = a2;
        v63 = a4;
        v66 = v38;
        v73 = v30;
        while (v39 < *(v38 + 16))
        {
          v71 = v39;
          v43 = *(v65 + 8 * v39);
          v44 = *(v43 + 16);
          if (v44 <= 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = *(v43 + 16);
          }

          v46 = v70 * (v45 - 1);

          v85.origin.x = v72;
          v85.origin.y = a4;
          v85.size.width = a5;
          v85.size.height = a6;
          v47 = floor((CGRectGetWidth(v85) - v46) / v44);
          sub_24E60169C((v7 + 17), &v79, &qword_27F22F780);
          if (v80)
          {
            sub_24E612C80(&v79, v81);
            __swift_project_boxed_opaque_existential_1(v81, v82);
            v48 = v75;
            sub_24E8ED7D8();
            sub_24F9223A8();
            v50 = v49;
            v41(v48, v16);
            if (v50 < v47)
            {
              v47 = v50;
            }

            __swift_destroy_boxed_opaque_existential_1(v81);
          }

          else
          {
            sub_24E601704(&v79, &qword_27F22F780);
          }

          v86.origin.x = v72;
          v86.origin.y = a4;
          v86.size.width = a5;
          v86.size.height = a6;
          MidX = CGRectGetMidX(v86);
          v52 = *(v43 + 16);
          if (v52)
          {
            v53 = a5;
            v54 = a6;
            v55 = MidX - ceil((v46 + v47 * v44) * 0.5);
            v56 = v70 + v47;
            v69 = v43;
            v57 = v43 + 32;
            v42 = 0.0;
            do
            {
              v78 = v52;
              sub_24E615E00(v57, v81);
              v76 = v83;
              v77 = __swift_project_boxed_opaque_existential_1(v81, v82);
              __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
              v58 = v75;
              sub_24E8ED7D8();
              sub_24F9223A8();
              v73(v58, v16);
              sub_24F922298();
              v60 = v59;
              __swift_project_boxed_opaque_existential_1(v81, v82);
              sub_24F922228();
              __swift_destroy_boxed_opaque_existential_1(v81);
              v55 = v56 + v55;
              if (v42 <= v60)
              {
                v42 = v60;
              }

              v57 += 40;
              v52 = v78 - 1;
            }

            while (v78 != 1);

            a6 = v54;
            a5 = v53;
            a4 = v63;
            v41 = v73;
          }

          else
          {

            v42 = 0.0;
          }

          v39 = v71 + 1;
          v40 = v40 + v68 + v42;
          v38 = v66;
          if (v71 + 1 == v67)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_29:

        v61 = v72;
        v87.origin.x = v72;
        v87.origin.y = a4;
        v87.size.width = a5;
        v87.size.height = a6;
        CGRectGetMinX(v87);
        v88.origin.x = v61;
        v88.origin.y = a4;
        v88.size.width = a5;
        v88.size.height = a6;
        CGRectGetMinY(v88);
        v89.origin.y = a4;
        v89.origin.x = v61;
        v89.size.width = a5;
        v89.size.height = a6;
        CGRectGetWidth(v89);
        return sub_24F922128();
      }
    }
  }

  else
  {

    return sub_24F922168();
  }

  return result;
}

uint64_t sub_24F22574C(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v50 = sub_24F91F8B8();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C948);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C938);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_24F91F968();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a2, v11, &qword_27F23C938);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F23C938);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C950);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F93DE60;
    *(v16 + 32) = a1;
  }

  else
  {
    v46 = v13;
    (*(v13 + 32))(v15, v11, v12);
    v45 = v15;
    sub_24F91F8C8();
    sub_24F225EDC(&qword_27F23C958, MEMORY[0x277CC9A28]);
    v17 = 0;
    ++v47;
    v44 = a1 + 32;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v49;
      sub_24F92BC08();
      sub_24F225EDC(&unk_27F23C960, MEMORY[0x277CC9A08]);
      v19 = v50;
      v20 = sub_24F92AFF8();
      (*v47)(v18, v19);
      if (v20)
      {
        break;
      }

      v21 = sub_24F92BC88();
      v23 = *v22;
      v21(v51, 0);
      sub_24F92BC18();
      v24 = *(a1 + 16);
      if (v17 >= v24 || v23 >= v24)
      {
        break;
      }

      if (v23 < v17)
      {
        __break(1u);
        goto LABEL_35;
      }

      v25 = v12;
      v26 = a1;
      v27 = v23 + 1;
      v28 = v23 + 1 - v17;
      if (v24 == v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v27 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23C970);
            v29 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v34 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
          swift_arrayInitWithCopy();
        }
      }

      v30 = [v48 traitCollection];
      v31 = sub_24F92BF88();

      if (v31)
      {
        v29 = sub_24EF1C248(v29);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24E617B44(0, *(v16 + 16) + 1, 1, v16);
      }

      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_24E617B44((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 16) = v33 + 1;
      *(v16 + 8 * v33 + 32) = v29;
      v17 = v27;
      a1 = v26;
      v12 = v25;
    }

    sub_24E601704(v8, &qword_27F23C948);
    v24 = *(a1 + 16);
    if (v24 < v17)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (!v17)
    {

      goto LABEL_24;
    }

LABEL_36:
    sub_24E6B8918(a1, v44, v17, (2 * v24) | 1);
    a1 = v42;
LABEL_24:
    v36 = v45;
    v35 = v46;
    v37 = [v48 traitCollection];
    v38 = sub_24F92BF88();

    if (v38)
    {
      a1 = sub_24EF1C248(a1);
    }

    if (*(a1 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_24E617B44(0, *(v16 + 16) + 1, 1, v16);
      }

      v40 = *(v16 + 16);
      v39 = *(v16 + 24);
      if (v40 >= v39 >> 1)
      {
        v16 = sub_24E617B44((v39 > 1), v40 + 1, 1, v16);
      }

      (*(v35 + 8))(v36, v12);
      *(v16 + 16) = v40 + 1;
      *(v16 + 8 * v40 + 32) = a1;
    }

    else
    {
      (*(v35 + 8))(v36, v12);
    }
  }

  return v16;
}

uint64_t sub_24F225E08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_24F225E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F225EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *TodayCardMediaGrid.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v78 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v65 - v6;
  v88 = sub_24F92AC28();
  v76 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v65 - v9;
  v86 = sub_24F9285B8();
  v10 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v65 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v89 = sub_24F928388();
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v70 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v65 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v65 - v26;
  sub_24F929608();
  sub_24F928398();
  v80 = v10;
  v28 = *(v10 + 16);
  v29 = v86;
  v28(v16, a2, v86);
  v79 = v27;
  v74 = v24;
  v69 = v16;
  v30 = v85;
  sub_24F929548();
  v81 = a2;
  v68 = v10 + 16;
  v67 = v28;
  v28(v30, a2, v29);
  v31 = v75;
  v87 = a1;
  sub_24F928398();
  v32 = v77;
  sub_24F9282B8();
  v33 = (v83 + 8);
  v34 = *(v83 + 8);
  v34(v31, v89);
  v35 = v76;
  if ((*(v76 + 48))(v32, 1, v88) == 1)
  {
    sub_24E601704(v32, &qword_27F2213B0);
    v36 = v30;
    v37 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = 0x7370756B636F6CLL;
    v38[1] = 0xE700000000000000;
    v38[2] = v78;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = *(v80 + 8);
    v40 = v86;
    (v39)(v81, v86);
    v34(v87, v89);
    (v39)(v36, v40);
LABEL_5:
    sub_24E601704(v79, &qword_27F213E68);
    swift_deallocPartialClassInstance();
    return v39;
  }

  v41 = v78;
  v42 = v34;
  v43 = v35;
  (*(v35 + 32))(v84, v32, v88);
  v44 = v74;
  sub_24F928398();
  sub_24F0DE890();
  sub_24F928248();
  v77 = v33;
  v75 = v42;
  (v42)(v44, v89);
  v45 = v90;
  if (v90 == 4)
  {
    v46 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v47 = 0x476B726F77747261;
    v47[1] = 0xEF65707954646972;
    v47[2] = v41;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    v39 = *(v80 + 8);
    v48 = v86;
    (v39)(v81, v86);
    (v75)(v87, v89);
    (*(v35 + 8))(v84, v88);
    (v39)(v85, v48);
    goto LABEL_5;
  }

  v50 = v66;
  sub_24F928398();
  v51 = sub_24F928258();
  v53 = v52;
  (v75)(v50, v89);
  v54 = 3;
  if ((v53 & 1) == 0)
  {
    v54 = v51;
  }

  v55 = v82;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = v54;
  (*(v43 + 16))(v72, v84, v88);
  v56 = v86;
  v57 = v67;
  v67(v69, v85, v86);
  type metadata accessor for Lockup();
  sub_24E9321A0(&qword_27F221FB8, type metadata accessor for Lockup);
  *(v55 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = sub_24F92B6A8();
  *(v55 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v45;
  v58 = v70;
  (*(v83 + 16))(v70, v87, v89);
  v59 = v71;
  v60 = v81;
  v57(v71, v81, v56);
  v61 = v73;
  v62 = TodayCardMedia.init(deserializing:using:)(v58, v59);
  if (v61)
  {
    v39 = *(v80 + 8);
    (v39)(v60, v56);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    (v39)(v85, v56);
  }

  else
  {
    v39 = v62;
    v63 = v56;
    v64 = *(v80 + 8);
    v64(v60, v63);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    v64(v85, v63);
  }

  sub_24E601704(v79, &qword_27F213E68);
  return v39;
}

uint64_t TodayCardMediaGrid.__allocating_init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v13;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_24E60169C(a4, v12 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v23, &v20, &qword_27F235830);
  if (*(&v21 + 1))
  {
    v14 = v21;
    *(v12 + 32) = v20;
    *(v12 + 48) = v14;
    *(v12 + 64) = v22;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v19[1] = v15;
    v19[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v20, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v23, &qword_27F235830);
  *(v12 + 16) = 7;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaGrid.init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v21[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  LOBYTE(v14) = *a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24E60169C(a4, v15, &qword_27F213E68);
  sub_24E60169C(v28, &v22, &qword_27F235830);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(v28, &qword_27F235830);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 7;
  *(v5 + 24) = 1;
  return v5;
}

uint64_t TodayCardMediaGrid.lockups.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TodayCardMediaGrid.artworkGridType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TodayCardMediaGrid.artworkGridType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *TodayCardMediaGrid.offerAdamIds.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v3 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E6164C0(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_24E6164C0((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_18:

  return v5;
}

uint64_t TodayCardMediaGrid.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaGrid.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaGrid()
{
  result = qword_27F23C980;
  if (!qword_27F23C980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F22749C()
{
  sub_24F227524();
  if (v0 <= 0x3F)
  {
    sub_24EAC9FA8();
    if (v1 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24F227524()
{
  if (!qword_27F23C9A0)
  {
    sub_24F22B7CC(0, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C9A0);
    }
  }
}

uint64_t sub_24F22759C(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9A8);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9B0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v30 = &v28 - v3;
  v4 = sub_24F9289E8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9B8);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for OverlayButtonLabelAccessory(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9C0);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F228740();
  sub_24F92D128();
  sub_24F22BD78(v37, v12, type metadata accessor for OverlayButtonLabelAccessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v31;
      v17 = v32;
      (*(v31 + 32))(v6, v12, v32);
      v42 = 1;
      sub_24F2287E8();
      v19 = v30;
      v20 = v39;
      sub_24F92CC98();
      sub_24F22BE48(&qword_27F214060, MEMORY[0x277D21C48]);
      v21 = v36;
      sub_24F92CD48();
      (*(v34 + 8))(v19, v21);
      (*(v18 + 8))(v6, v17);
      return (*(v38 + 8))(v15, v20);
    }

    else
    {
      v43 = 2;
      sub_24F228794();
      v25 = v29;
      v26 = v39;
      sub_24F92CC98();
      v27 = v35;
      sub_24F92CD08();

      (*(v33 + 8))(v25, v27);
      return (*(v38 + 8))(v15, v26);
    }
  }

  else
  {
    v23 = *v12;
    v41 = 0;
    sub_24F22883C();
    v24 = v39;
    sub_24F92CC98();
    v40 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    sub_24F228890(&qword_27F218A30, &qword_27F218A38);
    sub_24F92CD48();
    (*(v28 + 8))(v9, v7);
    (*(v38 + 8))(v15, v24);
  }
}

uint64_t sub_24F227BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9E8);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9F0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9F8);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA00);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for OverlayButtonLabelAccessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F228740();
  v24 = v68;
  sub_24F92D108();
  if (!v24)
  {
    v53 = v13;
    v54 = v19;
    v55 = v16;
    v25 = v63;
    v26 = v64;
    v68 = v22;
    v27 = v11;
    v28 = v65;
    v29 = v67;
    v30 = sub_24F92CC78();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_24E643434();
    if (v32 != 3 && v72 == v73 >> 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          LOBYTE(v74) = 1;
          sub_24F2287E8();
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F22BE48(&qword_27F214018, MEMORY[0x277D21C48]);
          v33 = v55;
          v34 = v60;
          sub_24F92CC68();
          v35 = v26;
          v36 = v66;
          (*(v59 + 8))(v35, v34);
          (*(v36 + 8))(v10, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v33;
LABEL_12:
          v52 = v68;
          sub_24F22BDE0(v49, v68, type metadata accessor for OverlayButtonLabelAccessory);
          sub_24F22BDE0(v52, v28, type metadata accessor for OverlayButtonLabelAccessory);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        LOBYTE(v74) = 2;
        sub_24F228794();
        v44 = v62;
        sub_24F92CBA8();
        v45 = v44;
        v46 = v56;
        v47 = sub_24F92CC28();
        v64 = v48;
        v50 = v47;
        (*(v61 + 8))(v45, v46);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v53;
        v51 = v64;
        *v53 = v50;
        v43[1] = v51;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_24F22883C();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
        sub_24F228890(&qword_27F218598, &qword_27F2185A0);
        v42 = v58;
        sub_24F92CC68();
        (*(v57 + 8))(v25, v42);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v54;
        *v54 = v74;
      }

      swift_storeEnumTagMultiPayload();
      v49 = v43;
      goto LABEL_12;
    }

    v37 = v29;
    v38 = sub_24F92C918();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v40 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v66 + 8))(v10, v37);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_24F2283E8(uint64_t a1)
{
  v2 = sub_24F2287E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F228424(uint64_t a1)
{
  v2 = sub_24F2287E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228460()
{
  v1 = 0x6B726F77747261;
  if (*v0 != 1)
  {
    v1 = 0x614E6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7641726579616C70;
  }
}

uint64_t sub_24F2284CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F22B3C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F2284F4(uint64_t a1)
{
  v2 = sub_24F228740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F228530(uint64_t a1)
{
  v2 = sub_24F228740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461)
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

uint64_t sub_24F228620(uint64_t a1)
{
  v2 = sub_24F22883C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F22865C(uint64_t a1)
{
  v2 = sub_24F22883C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228698(uint64_t a1)
{
  v2 = sub_24F228794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2286D4(uint64_t a1)
{
  v2 = sub_24F228794();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F228740()
{
  result = qword_27F23C9C8;
  if (!qword_27F23C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9C8);
  }

  return result;
}

unint64_t sub_24F228794()
{
  result = qword_27F23C9D0;
  if (!qword_27F23C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9D0);
  }

  return result;
}

unint64_t sub_24F2287E8()
{
  result = qword_27F23C9D8;
  if (!qword_27F23C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9D8);
  }

  return result;
}

unint64_t sub_24F22883C()
{
  result = qword_27F23C9E0;
  if (!qword_27F23C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9E0);
  }

  return result;
}

uint64_t sub_24F228890(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590);
    sub_24F22BE48(a2, type metadata accessor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F228970()
{
  result = qword_27F23CA08;
  if (!qword_27F23CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA08);
  }

  return result;
}

unint64_t sub_24F2289C8()
{
  result = qword_27F23CA10;
  if (!qword_27F23CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA10);
  }

  return result;
}

unint64_t sub_24F228A20()
{
  result = qword_27F23CA18;
  if (!qword_27F23CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA18);
  }

  return result;
}

unint64_t sub_24F228A78()
{
  result = qword_27F23CA20;
  if (!qword_27F23CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA20);
  }

  return result;
}

unint64_t sub_24F228AD0()
{
  result = qword_27F23CA28;
  if (!qword_27F23CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA28);
  }

  return result;
}

unint64_t sub_24F228B28()
{
  result = qword_27F23CA30;
  if (!qword_27F23CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA30);
  }

  return result;
}

unint64_t sub_24F228B80()
{
  result = qword_27F23CA38;
  if (!qword_27F23CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA38);
  }

  return result;
}

unint64_t sub_24F228BD8()
{
  result = qword_27F23CA40;
  if (!qword_27F23CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA40);
  }

  return result;
}

unint64_t sub_24F228C30()
{
  result = qword_27F23CA48;
  if (!qword_27F23CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA48);
  }

  return result;
}

unint64_t sub_24F228C88()
{
  result = qword_27F23CA50;
  if (!qword_27F23CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA50);
  }

  return result;
}

unint64_t sub_24F228CE0()
{
  result = qword_27F23CA58;
  if (!qword_27F23CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA58);
  }

  return result;
}

unint64_t sub_24F228D38()
{
  result = qword_27F23CA60;
  if (!qword_27F23CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA60);
  }

  return result;
}

uint64_t sub_24F228D8C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAB0);
  MEMORY[0x28223BE20](v56);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAC0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAC8);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  v54 = a1;
  sub_24F2292B0(a1, v13);
  LODWORD(a1) = *a1;
  sub_24F927618();
  v28 = a1 == 0;
  if (a1)
  {
    v29 = 0x4030000000000000;
  }

  else
  {
    v29 = 0x402C000000000000;
  }

  if (v28)
  {
    v30 = 0x4020000000000000;
  }

  else
  {
    v30 = 0x4024000000000000;
  }

  sub_24F9238C8();
  sub_24E6009C8(v13, v17, &qword_27F23CAB8);
  v31 = &v17[*(v15 + 44)];
  v32 = v61;
  *v31 = v60;
  *(v31 + 1) = v32;
  *(v31 + 2) = v62;
  v33 = sub_24F925808();
  sub_24E6009C8(v17, v24, &qword_27F23CAC0);
  v34 = &v24[*(v19 + 44)];
  *v34 = v33;
  *(v34 + 1) = v29;
  *(v34 + 2) = v29;
  *(v34 + 3) = v29;
  *(v34 + 4) = v30;
  v34[40] = 0;
  sub_24E6009C8(v24, v27, &qword_27F23CAC8);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAD0);
  sub_24F22AA4C(v54, &v5[*(v35 + 44)]);
  v36 = sub_24F925858();
  v37 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v36)
  {
    v37 = sub_24F925848();
  }

  sub_24F923318();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v55;
  sub_24E6009C8(v5, v55, &qword_27F23CAA8);
  v47 = v57;
  v48 = v46 + *(v56 + 36);
  *v48 = v37;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  sub_24E6009C8(v46, v47, &qword_27F23CAB0);
  sub_24E60169C(v27, v21, &qword_27F23CAC8);
  v49 = v58;
  sub_24E60169C(v47, v58, &qword_27F23CAB0);
  v50 = v59;
  sub_24E60169C(v21, v59, &qword_27F23CAC8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAD8);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F23CAB0);
  v52 = v50 + *(v51 + 64);
  *v52 = 0;
  *(v52 + 8) = 0;
  sub_24E601704(v47, &qword_27F23CAB0);
  sub_24E601704(v27, &qword_27F23CAC8);
  sub_24E601704(v49, &qword_27F23CAB0);
  return sub_24E601704(v21, &qword_27F23CAC8);
}

uint64_t sub_24F2292B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v150 = a2;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB08);
  MEMORY[0x28223BE20](v167);
  v166 = &v128 - v2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB10);
  MEMORY[0x28223BE20](v149);
  v4 = &v128 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v128 - v6;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0);
  MEMORY[0x28223BE20](v168);
  v139 = (&v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v153 = (&v128 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v135 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v11;
  MEMORY[0x28223BE20](v12);
  v133 = &v128 - v13;
  v154 = sub_24F9289E8();
  v165 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v134 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v14;
  MEMORY[0x28223BE20](v15);
  v164 = &v128 - v16;
  v163 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v130 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v151 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v18 - 8);
  v162 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v161 = &v128 - v21;
  v22 = type metadata accessor for PlayerAvatarView(0);
  v160 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v171 = (&v128 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB18);
  MEMORY[0x28223BE20](v26);
  v28 = &v128 - v27;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB20);
  MEMORY[0x28223BE20](v143);
  v146 = (&v128 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB28);
  MEMORY[0x28223BE20](v30);
  v147 = &v128 - v31;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v144);
  v140 = &v128 - v32;
  v148 = type metadata accessor for OverlappingPlayerAvatarsView();
  MEMORY[0x28223BE20](v148);
  v142 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8);
  v131 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = &v128 - v34;
  v158 = type metadata accessor for PlayerAvatar(0);
  v35 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v170 = (&v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v157 = (&v128 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v128 - v43;
  v45 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(v169 + *(v45 + 20), v44, &qword_27F232DC0);
  v46 = type metadata accessor for OverlayButtonLabelAccessory(0);
  if ((*(*(v46 - 8) + 48))(v44, 1, v46) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EF69974();
    sub_24F924E28();
    sub_24E60169C(v4, v28, &qword_27F23CB10);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    v47 = v4;
    v48 = &qword_27F23CB10;
    goto LABEL_18;
  }

  v49 = v168;
  sub_24E60169C(v44, v41, &qword_27F232DC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v156 = v44;
  v129 = v28;
  v128 = v30;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51 = v164;
      v52 = v165;
      v171 = *(v165 + 32);
      v53 = v154;
      v171(v164, v41, v154);
      v54 = sub_24F922348();
      v55 = v133;
      (*(*(v54 - 8) + 56))(v133, 1, 1, v54);
      v56 = *MEMORY[0x277CEE240];
      v57 = v134;
      (*(v52 + 16))(v134, v51, v53);
      v58 = v137;
      sub_24E6009C8(v55, v137, &qword_27F214148);
      v59 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v155 = v26;
      v60 = (v132 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = (*(v135 + 80) + v60 + 8) & ~*(v135 + 80);
      v62 = v61 + v136;
      v63 = swift_allocObject();
      v64 = v63 + v59;
      v44 = v156;
      v171(v64, v57, v53);
      *(v63 + v60) = v56;
      sub_24E6009C8(v58, v63 + v61, &qword_27F214148);
      *(v63 + v62) = 0;
      v65 = v146;
      *v146 = sub_24E623C20;
      v65[1] = v63;
      swift_storeEnumTagMultiPayload();
      v66 = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
      v67 = sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
      v68 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
      *&v174 = v148;
      *(&v174 + 1) = v144;
      *&v175 = v67;
      *(&v175 + 1) = v68;
      swift_getOpaqueTypeConformance2();
      sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
      v69 = v147;
      sub_24F924E28();
      sub_24E60169C(v69, v129, &qword_27F23CB28);
      swift_storeEnumTagMultiPayload();
      sub_24F22B9A8();
      sub_24F22BB20();
      sub_24F924E28();

      sub_24E601704(v69, &qword_27F23CB28);
      (*(v165 + 8))(v164, v53);
      return sub_24E601704(v44, &qword_27F232DC0);
    }

    v101 = sub_24F926E48();
    sub_24F925958();
    v102 = sub_24F925908();
    v103 = v138;
    (*(*(v102 - 8) + 56))(v138, 1, 1, v102);
    v104 = sub_24F925968();
    sub_24E601704(v103, &qword_27F214698);
    KeyPath = swift_getKeyPath();
    v106 = *(v49 + 36);
    v107 = v139;
    v108 = (v139 + v106);
    v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
    sub_24F924CF8();
    v110 = sub_24F924D08();
    (*(*(v110 - 8) + 56))(v108 + v109, 0, 1, v110);
    *v108 = swift_getKeyPath();
    *v107 = v101;
    v107[1] = KeyPath;
    v107[2] = v104;
    v111 = v153;
    sub_24E6009C8(v107, v153, &qword_27F234CE0);
    sub_24E60169C(v111, v166, &qword_27F234CE0);
    swift_storeEnumTagMultiPayload();
    sub_24EF69974();
    sub_24F924E28();
    sub_24E60169C(v4, v129, &qword_27F23CB10);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    sub_24E601704(v4, &qword_27F23CB10);
    v47 = v111;
    v48 = &qword_27F234CE0;
LABEL_18:
    sub_24E601704(v47, v48);
    return sub_24E601704(v44, &qword_27F232DC0);
  }

  v70 = *v41;
  v71 = *(*v41 + 16);
  if (v71)
  {
    v72 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v139 = *v41;
    v73 = v70 + v72;
    v154 = *(v35 + 72);
    v153 = (v130 + 56);
    v74 = MEMORY[0x277D84F90];
    v75 = &unk_24F942E50;
    v155 = v26;
    v152 = v22;
    do
    {
      v168 = v74;
      v169 = v71;
      v167 = v73;
      v76 = v157;
      sub_24F22BD78(v73, v157, type metadata accessor for PlayerAvatar);
      v77 = v76[1];
      v164 = *v76;
      v78 = type metadata accessor for PlayerAvatar.Overlay(0);
      v166 = *(v78 - 8);
      v79 = *(v166 + 56);
      v80 = v161;
      v165 = v78;
      v79(v161, 1, 1, v78);
      v176 = 0;
      v174 = 0u;
      v175 = 0u;
      v81 = v75;
      v82 = v158;
      v83 = *(v158 + 20);
      v84 = v170;
      v79(v170 + v83, 1, 1, v78);
      v85 = v84 + *(v82 + 24);
      v173 = 0;
      memset(v172, 0, sizeof(v172));
      *v85 = 0u;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 0;

      sub_24E61DA68(v172, v85, qword_27F21B590);
      *v84 = v164;
      v84[1] = v77;

      v86 = v80;
      v87 = v152;
      sub_24E61DA68(v86, v84 + v83, &qword_27F22DF80);
      v75 = v81;
      sub_24E61DA68(&v174, v85, qword_27F21B590);
      v88 = v159;
      sub_24F928948();
      sub_24F22BE90(v76, type metadata accessor for PlayerAvatar);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v89 = v162;
      sub_24E60169C(v84 + v83, v162, &qword_27F22DF80);
      v90 = v87[5];
      if ((*(v166 + 48))(v89, 1, v165) == 1)
      {
        sub_24E601704(v89, &qword_27F22DF80);
        v91 = 1;
        v92 = v163;
      }

      else
      {
        v93 = v151;
        sub_24F22BDE0(v89, v151, type metadata accessor for PlayerAvatar.Overlay);
        v92 = v163;
        v94 = v93 + *(v163 + 20);
        *v94 = 0;
        *(v94 + 8) = 1;
        v95 = (v93 + *(v92 + 24));
        *v95 = 0;
        v95[1] = 0;
        sub_24F22BDE0(v93, v88 + v90, type metadata accessor for PlayerAvatarView.Overlay);
        v91 = 0;
      }

      (*v153)(v88 + v90, v91, 1, v92);
      v96 = v88 + v87[6];
      sub_24E60169C(v85, &v174, qword_27F24EC90);
      sub_24F22BE90(v170, type metadata accessor for PlayerAvatar);
      v97 = v175;
      *v96 = v174;
      *(v96 + 16) = v97;
      *(v96 + 32) = v176;
      *(v88 + v87[7]) = 7;
      sub_24F22BDE0(v88, v171, type metadata accessor for PlayerAvatarView);
      v74 = v168;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v156;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_24E619074(0, v74[2] + 1, 1, v74);
      }

      v100 = v74[2];
      v99 = v74[3];
      if (v100 >= v99 >> 1)
      {
        v74 = sub_24E619074(v99 > 1, v100 + 1, 1, v74);
      }

      v74[2] = v100 + 1;
      sub_24F22BDE0(v171, v74 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v100, type metadata accessor for PlayerAvatarView);
      v73 = v167 + v154;
      v71 = v169 - 1;
    }

    while (v169 != 1);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v113 = v148;
  v114 = v142;
  *&v174 = 0x4010000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  *&v114[v113[5]] = v74;
  v115 = &v114[v113[6]];
  *v115 = 0;
  v115[8] = 2;
  v114[v113[7]] = 5;
  v116 = *MEMORY[0x277CDFA10];
  v117 = sub_24F923E98();
  v118 = v140;
  (*(*(v117 - 8) + 104))(v140, v116, v117);
  sub_24F22BE48(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    v119 = sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    v120 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v121 = v141;
    v122 = v144;
    v123 = v142;
    sub_24F9263F8();
    sub_24E601704(v118, &qword_27F21CCC8);
    sub_24F22BE90(v123, type metadata accessor for OverlappingPlayerAvatarsView);
    v124 = v131;
    v125 = v121;
    v126 = v145;
    (*(v131 + 16))(v146, v125, v145);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
    *&v174 = v113;
    *(&v174 + 1) = v122;
    *&v175 = v119;
    *(&v175 + 1) = v120;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    v127 = v147;
    sub_24F924E28();
    sub_24E60169C(v127, v129, &qword_27F23CB28);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    sub_24E601704(v127, &qword_27F23CB28);
    (*(v124 + 8))(v141, v126);
    return sub_24E601704(v44, &qword_27F232DC0);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F22AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v92 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAE0);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAE8);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAF0);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v76 - v10;
  v11 = type metadata accessor for OverlayButtonLabelView(0);
  v12 = (a1 + *(v11 + 24));
  v13 = v12[1];
  v101 = *v12;
  v102 = v13;
  v14 = sub_24E600AEC();

  v77 = v14;
  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  sub_24F925898();
  v20 = sub_24F925C98();
  v22 = v21;
  LOBYTE(v14) = v23;

  sub_24E600B40(v15, v17, v19 & 1);

  sub_24F925938();
  v87 = sub_24F925B78();
  v86 = v24;
  v26 = v25;
  v28 = v27;
  sub_24E600B40(v20, v22, v14 & 1);

  KeyPath = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v83 = v26 & 1;
  v116 = v26 & 1;
  v114 = 0;
  v84 = sub_24F925198();
  v79 = v11;
  v29 = (v94 + *(v11 + 28));
  v30 = v29[1];
  v93 = v28;
  if (v30)
  {
    v101 = *v29;
    v102 = v30;

    v31 = sub_24F925E18();
    v33 = v32;
    v35 = v34;
    sub_24F925898();
    v36 = sub_24F925C98();
    v38 = v37;
    v40 = v39;

    sub_24E600B40(v31, v33, v35 & 1);

    sub_24F925948();
    v77 = sub_24F925B78();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_24E600B40(v36, v38, v40 & 1);

    v47 = swift_getKeyPath();
    v48 = swift_getKeyPath();
    v49 = v44 & 1;
    LOBYTE(v101) = v44 & 1;
    LOBYTE(v96) = 0;
    v50 = sub_24F9251C8();
    v51 = v78;
    v52 = &v78[*(v80 + 36)];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v54 = *MEMORY[0x277CE13B8];
    v55 = sub_24F927748();
    (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
    *v52 = v50;
    *v51 = v77;
    *(v51 + 8) = v42;
    *(v51 + 16) = v49;
    *(v51 + 24) = v46;
    *(v51 + 32) = v47;
    *(v51 + 40) = 0x3FD0000000000000;
    *(v51 + 48) = v48;
    *(v51 + 56) = 1;
    *(v51 + 64) = 0;
    v56 = *(v94 + *(v79 + 32));
    if (v56 == 2 || (v57 = 0.0, (v56 & 1) == 0))
    {
      v57 = 1.0;
    }

    v58 = v82;
    sub_24E6009C8(v51, v82, &qword_27F23CAE0);
    v59 = v89;
    *(v58 + *(v89 + 36)) = v57;
    v60 = v58;
    v61 = v81;
    sub_24E6009C8(v60, v81, &qword_27F23CAE8);
    v62 = v90;
    sub_24E6009C8(v61, v90, &qword_27F23CAE8);
    (*(v88 + 56))(v62, 0, 1, v59);
    v28 = v93;
  }

  else
  {
    v62 = v90;
    (*(v88 + 56))(v90, 1, 1, v89);
  }

  v63 = v91;
  sub_24E60169C(v62, v91, &qword_27F23CAF0);
  v64 = v87;
  *&v96 = v87;
  v65 = v86;
  *(&v96 + 1) = v86;
  v66 = v83;
  LOBYTE(v97) = v83;
  *(&v97 + 1) = *v115;
  DWORD1(v97) = *&v115[3];
  *(&v97 + 1) = v28;
  *&v98 = KeyPath;
  v67 = v85;
  *(&v98 + 1) = 0x3FD0000000000000;
  *&v99 = v85;
  *(&v99 + 1) = 1;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v117;
  BYTE3(v100) = v118;
  v68 = v84;
  HIDWORD(v100) = v84;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v72 = v99;
  v73 = v92;
  *(v92 + 64) = v100;
  v73[2] = v71;
  v73[3] = v72;
  *v73 = v69;
  v73[1] = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAF8);
  sub_24E60169C(v63, v73 + *(v74 + 48), &qword_27F23CAF0);
  sub_24E60169C(&v96, &v101, &qword_27F23CB00);
  sub_24E601704(v62, &qword_27F23CAF0);
  sub_24E601704(v63, &qword_27F23CAF0);
  v101 = v64;
  v102 = v65;
  v103 = v66;
  *v104 = *v115;
  *&v104[3] = *&v115[3];
  v105 = v93;
  v106 = KeyPath;
  v107 = 0x3FD0000000000000;
  v108 = v67;
  v109 = 1;
  v110 = 0;
  v111 = v117;
  v112 = v118;
  v113 = v68;
  return sub_24E601704(&v101, &qword_27F23CB00);
}

uint64_t sub_24F22B228()
{
  v1 = sub_24F9248C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA80);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA88);
  sub_24F228D8C(v0, &v7[*(v8 + 44)]);
  sub_24F9248B8();
  sub_24F22B8B4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F23CA80);
}

uint64_t sub_24F22B3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641726579616C70 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F22B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F22B5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F22B6D0()
{
  sub_24F22B7CC(319, &qword_27F232DF0, type metadata accessor for OverlayButtonLabelAccessory, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F22B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F22B844()
{
  result = qword_27F23CA78;
  if (!qword_27F23CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA78);
  }

  return result;
}

unint64_t sub_24F22B8B4()
{
  result = qword_27F23CA90;
  if (!qword_27F23CA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CA80);
    sub_24E602068(&qword_27F23CA98, &qword_27F23CAA0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA90);
  }

  return result;
}

unint64_t sub_24F22B9A8()
{
  result = qword_27F23CB30;
  if (!qword_27F23CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CB28);
    type metadata accessor for OverlappingPlayerAvatarsView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8);
    sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB30);
  }

  return result;
}

unint64_t sub_24F22BB20()
{
  result = qword_27F23CB38;
  if (!qword_27F23CB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CB10);
    sub_24EF69974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB38);
  }

  return result;
}

uint64_t sub_24F22BBBC()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F22BD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F22BDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F22BE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F22BE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F22BEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CA80);
  sub_24F22B8B4();
  return swift_getOpaqueTypeConformance2();
}

CGSize __swiftcall CGSize.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  if (_.width != 0.0 || (width = 0.0, height = 0.0, _.height != 0.0))
  {
    v6 = _.width / v2;
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    v7 = _.height / v3;
    if (v3 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7 * v2;
    v9 = v6 * v3;
    if ((mode - 3) < 0xA || mode == UIViewContentModeScaleAspectFit)
    {
      v10 = v6 < v7;
      if (v6 >= v7)
      {
        width = v8;
      }

      else
      {
        width = _.width;
      }

      if (v10)
      {
        height = v9;
      }

      else
      {
        height = _.height;
      }
    }

    else if (mode == UIViewContentModeScaleAspectFill)
    {
      v13 = v6 < v7;
      if (v6 >= v7)
      {
        width = _.width;
      }

      else
      {
        width = v8;
      }

      if (v13)
      {
        height = _.height;
      }

      else
      {
        height = v9;
      }
    }

    else
    {
      width = _.width;
      height = _.height;
    }
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

uint64_t Review.__allocating_init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v55 = a5;
  v60 = a4;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v59 = a1;
  sub_24E60169C(a1, &v63, &qword_27F235830);
  if (*(&v64 + 1))
  {
    v28 = v64;
    *v27 = v63;
    *(v27 + 16) = v28;
    *(v27 + 32) = v65;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v61 = v29;
    v62 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830);
  }

  swift_beginAccess();
  v32 = byte_27F236A28;
  v33 = type metadata accessor for LanguageAwareString();
  v34 = objc_allocWithZone(v33);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v36 = (*(ObjectType + 504))(a2, a3, 0, v32, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v36 = 0;
  }

  *(v26 + 16) = v36;
  sub_24E60169C(v60, v26 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30);
  v37 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  v40 = v58;
  *v39 = v57;
  v39[1] = v40;
  v41 = &qword_27F236000;
  v42 = byte_27F236A28;
  v43 = objc_allocWithZone(v33);
  if (a10)
  {
    v44 = swift_getObjectType();
    swift_beginAccess();
    v41 = &qword_27F236000;
    v45 = (*(v44 + 504))(a9, a10, 0, v42, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v45 = 0;
  }

  v58 = a19;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v45;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = a11;
  v46 = *(v41 + 2600);
  v47 = objc_allocWithZone(v33);
  if (a13)
  {
    v48 = swift_getObjectType();
    swift_beginAccess();
    v49 = (*(v48 + 504))(a12, a13, 0, v46, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v49 = 0;
  }

  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v49;
  v50 = *(v41 + 2600);
  v51 = objc_allocWithZone(v33);
  if (a15)
  {
    v52 = swift_getObjectType();
    swift_beginAccess();
    v53 = (*(v52 + 504))(a14, a15, 0, v50, byte_27F236A29);
    sub_24E601704(v60, &unk_27F22EC30);
    sub_24E601704(v59, &qword_27F235830);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(v60, &unk_27F22EC30);
    sub_24E601704(v59, &qword_27F235830);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v53 = 0;
  }

  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v53;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = a16;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = a17;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_24E6009C8(v58, v26 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68);
  return v26;
}

uint64_t Review.init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v59 = a8;
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v61 = a4;
  v24 = sub_24F91F6B8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  v60 = a1;
  sub_24E60169C(a1, &v64, &qword_27F235830);
  if (*(&v65 + 1))
  {
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v25 + 8))(v27, v24);
    v62 = v28;
    v63 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v64, &qword_27F235830);
  }

  v31 = v20 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v32 = v68;
  *v31 = v67;
  *(v31 + 16) = v32;
  *(v31 + 32) = v69;
  swift_beginAccess();
  v33 = byte_27F236A28;
  v34 = type metadata accessor for LanguageAwareString();
  v35 = objc_allocWithZone(v34);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v37 = (*(ObjectType + 504))(a2, a3, 0, v33, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v37 = 0;
  }

  *(v20 + 16) = v37;
  sub_24E60169C(v61, v20 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30);
  v38 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  v40 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  v41 = v59;
  *v40 = v58;
  v40[1] = v41;
  v42 = &qword_27F236000;
  v43 = byte_27F236A28;
  v44 = objc_allocWithZone(v34);
  if (a10)
  {
    v45 = swift_getObjectType();
    swift_beginAccess();
    v42 = &qword_27F236000;
    v46 = (*(v45 + 504))(a9, a10, 0, v43, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  v59 = a19;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v46;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = a11;
  v47 = *(v42 + 2600);
  v48 = objc_allocWithZone(v34);
  if (a13)
  {
    v49 = swift_getObjectType();
    swift_beginAccess();
    v50 = (*(v49 + 504))(a12, a13, 0, v47, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v50 = 0;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v50;
  v51 = *(v42 + 2600);
  v52 = objc_allocWithZone(v34);
  if (a15)
  {
    v53 = swift_getObjectType();
    swift_beginAccess();
    v54 = (*(v53 + 504))(a14, a15, 0, v51, byte_27F236A29);
    sub_24E601704(v61, &unk_27F22EC30);
    sub_24E601704(v60, &qword_27F235830);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(v61, &unk_27F22EC30);
    sub_24E601704(v60, &qword_27F235830);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v54 = 0;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v54;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = a16;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = a17;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_24E6009C8(v59, v20 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68);
  return v20;
}

uint64_t Review.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = &v97 - v4;
  v107 = sub_24F9285B8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v97 - v7;
  v8 = sub_24F91F6B8();
  v113 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v101 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v100 = &v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v97 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v105 = &v97 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v97 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  sub_24F928398();
  v28 = sub_24F928348();
  v109 = a1;
  if (v29)
  {
    v30 = a1;
    v114 = v28;
    v115 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v113 + 8))(v10, v8);
    v114 = v31;
    v115 = v33;
    v30 = v109;
  }

  sub_24F92C7F8();
  v34 = *(v12 + 8);
  v35 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v27, v11);
  v36 = v11;
  v37 = v108;
  v38 = v108 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v39 = v117;
  *v38 = v116;
  *(v38 + 16) = v39;
  *(v38 + 32) = v118;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  v113 = v35;
  v34(v25, v11);
  swift_beginAccess();
  v43 = byte_27F236A28;
  v110 = type metadata accessor for LanguageAwareString();
  v44 = objc_allocWithZone(v110);
  v111 = v34;
  v112 = v11;
  if (v42)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v46 = (*(ObjectType + 504))(v40, v42, 0, v43, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  *(v37 + 16) = v46;
  v47 = v105;
  sub_24F928398();
  v48 = v98;
  sub_24F928288();
  v34(v47, v36);
  sub_24E6009C8(v48, v37 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30);
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = v50;
  v34(v47, v36);
  v52 = (v37 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  *v52 = v49;
  v52[1] = v51;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v34(v47, v36);
  v56 = (v37 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  *v56 = v53;
  v56[1] = v55;
  v57 = v97;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v34(v57, v36);
  v61 = byte_27F236A28;
  v62 = objc_allocWithZone(v110);
  if (v60)
  {
    v63 = swift_getObjectType();
    swift_beginAccess();
    v64 = (*(v63 + 504))(v58, v60, 0, v61, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v64 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v64;
  v65 = v99;
  sub_24F928398();
  v66 = sub_24F9282A8();
  v68 = v67;
  v34(v65, v36);
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = v69;
  v70 = v100;
  sub_24F928398();
  v71 = sub_24F928348();
  v73 = v72;
  v34(v70, v36);
  v74 = byte_27F236A28;
  v75 = objc_allocWithZone(v110);
  if (v73)
  {
    v76 = swift_getObjectType();
    swift_beginAccess();
    v77 = (*(v76 + 504))(v71, v73, 0, v74, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v77 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v77;
  v78 = v101;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v34(v78, v36);
  v82 = byte_27F236A28;
  v83 = objc_allocWithZone(v110);
  if (v81)
  {
    v84 = swift_getObjectType();
    swift_beginAccess();
    v85 = (*(v84 + 504))(v79, v81, 0, v82, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v85 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v85;
  type metadata accessor for Response(0);
  v86 = v105;
  sub_24F928398();
  v110 = *(v106 + 16);
  v87 = v102;
  v88 = v104;
  v89 = v107;
  (v110)(v102, v104, v107);
  sub_24F22D87C(&qword_27F23CB40, type metadata accessor for Response);
  sub_24F929548();
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = v119;
  type metadata accessor for Action();
  sub_24F928398();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v86, v88);
  v111(v86, v112);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = v90;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v91 = v89;
  v92 = v110;
  (v110)(v87, v88, v91);
  sub_24F22D87C(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = v119;
  sub_24F929608();
  sub_24F928398();
  v93 = v107;
  (v92)(v87, v88, v107);
  v94 = v103;
  sub_24F929548();
  (*(v106 + 8))(v88, v93);
  v111(v30, v112);
  v95 = v108;
  sub_24E6009C8(v94, v108 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68);
  return v95;
}

uint64_t sub_24F22D87C(unint64_t *a1, void (*a2)(uint64_t))
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

void *Review.title.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t Review.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);

  return v1;
}

uint64_t Review.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);

  return v1;
}

void *Review.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_contents);
  v2 = v1;
  return v1;
}

void *Review.reviewerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName);
  v2 = v1;
  return v1;
}

void *Review.dateAuthorText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText);
  v2 = v1;
  return v1;
}

uint64_t sub_24F22DAB8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24F22D87C(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Review.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_id);
  return v0;
}

uint64_t Review.__deallocating_deinit()
{
  Review.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F22DCC4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_24F22D87C(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Response.__allocating_init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v30 = a1;
  sub_24E60169C(a1, &v33, &qword_27F235830);
  if (*(&v34 + 1))
  {
    v16 = v34;
    *v15 = v33;
    *(v15 + 16) = v16;
    *(v15 + 32) = v35;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v31 = v17;
    v32 = v19;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  sub_24E60169C(a2, v14 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30);
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v20 = a3;
  v20[1] = a4;
  swift_beginAccess();
  v21 = byte_27F236A28;
  v22 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v23 = v29;
  if (v29)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v25 = (*(ObjectType + 504))(v28, v23, 0, v21, byte_27F236A29);
    sub_24E601704(a2, &unk_27F22EC30);
    sub_24E601704(v30, &qword_27F235830);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(a2, &unk_27F22EC30);
    sub_24E601704(v30, &qword_27F235830);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v25 = 0;
  }

  *(v14 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v25;
  return v14;
}

uint64_t Response.init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a5;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v33 = a2;
    v18 = a3;
    v19 = a1;
    v20 = a6;
    v21 = v17;
    v23 = v22;
    (*(v14 + 8))(v16, v13);
    v35 = v21;
    v36 = v23;
    a6 = v20;
    a1 = v19;
    a3 = v18;
    a2 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  v24 = v7 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v25 = v41;
  *v24 = v40;
  *(v24 + 16) = v25;
  *(v24 + 32) = v42;
  sub_24E60169C(a2, v7 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30);
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v26 = a3;
  v26[1] = a4;
  swift_beginAccess();
  v27 = byte_27F236A28;
  v28 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (a6)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v30 = (*(ObjectType + 504))(v34, a6, 0, v27, byte_27F236A29);
    sub_24E601704(a2, &unk_27F22EC30);
    sub_24E601704(a1, &qword_27F235830);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(a2, &unk_27F22EC30);
    sub_24E601704(a1, &qword_27F235830);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v30 = 0;
  }

  *(v7 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v30;
  return v7;
}

uint64_t sub_24F22E448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t Response.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - v4;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F928388();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v49 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v51 = v20;
    v52 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v9 + 8);
  v23(v17, v56);
  v24 = v50;
  v25 = v50 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v26 = v54;
  *v25 = v53;
  *(v25 + 16) = v26;
  *(v25 + 32) = v55;
  v27 = v49;
  sub_24F928398();
  v28 = v47;
  sub_24F928288();
  v29 = v56;
  v23(v14, v56);
  sub_24E6009C8(v28, v24 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30);
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = v14;
  v34 = v27;
  v23(v33, v29);
  v35 = (v24 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v35 = v30;
  v35[1] = v32;
  sub_24F928398();
  v36 = sub_24F928348();
  v38 = v37;
  v23(v11, v29);
  swift_beginAccess();
  v39 = byte_27F236A28;
  v40 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (v38)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v42 = (*(ObjectType + 504))(v36, v38, 0, v39, byte_27F236A29);
    v43 = sub_24F9285B8();
    (*(*(v43 - 8) + 8))(v48, v43);
    v23(v34, v56);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = sub_24F9285B8();
    (*(*(v44 - 8) + 8))(v48, v44);
    v23(v27, v56);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v42 = 0;
  }

  result = v50;
  *(v50 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v42;
  return result;
}

uint64_t Response.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);

  return v1;
}

void *Response.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_contents);
  v2 = v1;
  return v1;
}

uint64_t Response.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_id);
  return v0;
}

uint64_t Response.__deallocating_deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_id);

  return swift_deallocClassInstance();
}

uint64_t sub_24F22EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a3(0);
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

void sub_24F22ECF8()
{
  sub_24F22EEE8(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_24F22EEE8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F22EEE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F22EF44()
{
  sub_24F22EEE8(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double CGRect.rounded(originRule:sizeRule:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = CGPoint.rounded(_:)(a1, a3, a4);
  CGSize.rounded(_:)(a2, a5, a6);
  return v9;
}

double CGRect.rounded(_:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = CGPoint.rounded(_:)(a1, a2, a3);
  CGSize.rounded(_:)(a1, a4, a5);
  return v8;
}

double CGRect.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6)
{
  [a2 displayScale];
  if (v12 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v14 = CGFloat.rounded(_:toScale:)(a1, v13, a3);
  [a2 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v16 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [a2 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v18 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a2 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a6);
  return v14;
}

{
  v12 = [a2 traitCollection];
  [v12 displayScale];
  if (v13 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v14 = *&qword_27F23DC18;
  }

  else
  {
    [v12 displayScale];
  }

  v15 = CGFloat.rounded(_:toScale:)(a1, v14, a3);
  [v12 displayScale];
  if (v16 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v17 = *&qword_27F23DC18;
  }

  else
  {
    [v12 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v17, a4);

  v18 = [a2 traitCollection];
  [v18 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a5);
  [v18 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v22, a6);

  return v15;
}

double CGRect.rounded(originRule:sizeRule:toScaleOf:)(uint64_t a1, uint64_t a2, id a3, double a4, double a5, double a6, double a7)
{
  v14 = [a3 traitCollection];
  [v14 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v16 = *&qword_27F23DC18;
  }

  else
  {
    [v14 displayScale];
  }

  v17 = CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [v14 displayScale];
  if (v18 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v19 = *&qword_27F23DC18;
  }

  else
  {
    [v14 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v19, a5);

  v20 = [a3 traitCollection];
  [v20 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a6);
  [v20 displayScale];
  if (v23 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v24 = *&qword_27F23DC18;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v24, a7);

  return v17;
}

{
  [a3 displayScale];
  if (v14 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v15 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  v16 = CGFloat.rounded(_:toScale:)(a1, v15, a4);
  [a3 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v18 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a3 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v20, a6);
  [a3 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a7);
  return v16;
}

uint64_t AccountSectionInfoListItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionInfoListItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountSectionInfoListItem.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AccountSectionInfoListItem.__allocating_init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_24E9BBAA8(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSectionInfoListItem.init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_24E9BBAA8(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t *AccountSectionInfoListItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v50 = a2;
  v6 = *v4;
  v47 = v3;
  v48 = v6;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v56 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  if (v21)
  {
    v51 = v20;
    v52 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v8;
    v25 = v24;
    (*(v23 + 8))(v10, v7);
    v51 = v22;
    v52 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v12 + 8);
  v26(v19, v11);
  v27 = 0x656C746974;
  v28 = v54;
  *(v4 + 3) = v53;
  *(v4 + 4) = v28;
  v4[10] = v55;
  v29 = v56;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v26(v16, v11);
  if (!v32)
  {
    goto LABEL_8;
  }

  v45 = v30;
  v46 = v4;
  v27 = 0x65756C6176;
  v33 = v26;
  v34 = v49;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v38 = v34;
  v26 = v33;
  v33(v38, v11);
  if (!v37)
  {

    v4 = v46;
LABEL_8:
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = v27;
    v41[1] = 0xE500000000000000;
    v41[2] = v48;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v50, v42);
    v26(v56, v11);
    sub_24E6585F8((v4 + 6));
    type metadata accessor for AccountSectionInfoListItem();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v39 = sub_24F9285B8();
  (*(*(v39 - 8) + 8))(v50, v39);
  v33(v29, v11);
  v4 = v46;
  v46[2] = v45;
  v4[3] = v32;
  v4[4] = v35;
  v4[5] = v37;
  return v4;
}

uint64_t AccountSectionInfoListItem.deinit()
{

  sub_24E6585F8(v0 + 48);
  return v0;
}

uint64_t AccountSectionInfoListItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t *sub_24F230290@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionInfoListItem();
  v7 = swift_allocObject();
  result = AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t FriendSuggestionSwooshShelfIntent.shelfID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FriendSuggestionSwooshShelfIntent.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FriendSuggestionSwooshShelfIntent.orientation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t sub_24F2303E4()
{
  v1 = 0x4449666C656873;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_24F230464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F230DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F23048C(uint64_t a1)
{
  v2 = sub_24F230794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2304C8(uint64_t a1)
{
  v2 = sub_24F230794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendSuggestionSwooshShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  v22 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F230794();
  sub_24F92D128();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_24F92CD08();
  if (!v9)
  {
    v11 = v15;
    v12 = v16;
    v13 = v22;
    LOBYTE(v20) = 1;
    sub_24F92CD08();
    v20 = v12;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
    sub_24F230B38(&qword_27F22D0C8, sub_24ECA4FDC);
    sub_24F92CCF8();
    v20 = v11;
    v21 = v13;
    v23 = 3;
    sub_24E77738C();
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F230794()
{
  result = qword_27F23CB80;
  if (!qword_27F23CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB80);
  }

  return result;
}

uint64_t FriendSuggestionSwooshShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F230794();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_24F92CC28();
  v21 = v10;
  LOBYTE(v22) = 1;
  v11 = sub_24F92CC28();
  v20 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
  v24 = 2;
  sub_24F230B38(&qword_27F22D0B0, sub_24ECA4F58);
  sub_24F92CC18();
  v18 = v22;
  v24 = 3;
  sub_24E777594();
  sub_24F92CC18();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  v14 = v22;
  v16 = v23;
  *a2 = v9;
  *(a2 + 8) = v15;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F230B38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F230C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24F230C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F230CBC()
{
  result = qword_27F23CB90;
  if (!qword_27F23CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB90);
  }

  return result;
}

unint64_t sub_24F230D14()
{
  result = qword_27F23CB98;
  if (!qword_27F23CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB98);
  }

  return result;
}

unint64_t sub_24F230D6C()
{
  result = qword_27F23CBA0;
  if (!qword_27F23CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBA0);
  }

  return result;
}

uint64_t sub_24F230DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449666C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t HttpAction.__allocating_init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HttpAction.init(url:presentationStyle:actionMetrics:)(a1, a2, a3);
  return v6;
}

uint64_t HttpActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 5522759;
  v3 = 0x534E4F4954504FLL;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x4554454C4544;
  if (v1 != 4)
  {
    v4 = 0x5443454E4E4F43;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145128264;
  if (v1 != 2)
  {
    v5 = 5526864;
  }

  if (*v0)
  {
    v2 = 1414745936;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

GameStoreKit::HttpActionMethod_optional __swiftcall HttpActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_24F231134(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE700000000000000;
  v6 = 0x534E4F4954504FLL;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (v2 != 4)
  {
    v8 = 0x5443454E4E4F43;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145128264;
  if (v2 != 2)
  {
    v10 = 5526864;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 1414745936;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *HttpAction.init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_24F91F6B8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_method) = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  *(v4 + v16) = sub_24E6086DC(MEMORY[0x277D84F90]);
  v17 = (v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction) = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  v21 = v4 + v18;
  v22 = v15;
  v23 = a1;
  (*(v20 + 16))(v21, a1, v19);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  (*(v13 + 16))(v22, a3, v12);
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v25 = 0u;
  v25[1] = 0u;
  sub_24E65E064(v51, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    v26 = v39;
    sub_24F91F6A8();
    v38 = v11;
    v37 = a3;
    v27 = v23;
    v28 = v22;
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v40 + 8))(v26, v41);
    v43 = v29;
    v44 = v31;
    v22 = v28;
    v23 = v27;
    a3 = v37;
    v11 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v45, &qword_27F235830);
  }

  (*(v13 + 8))(a3, v12);
  (*(v20 + 8))(v23, v19);
  sub_24E601704(v51, &qword_27F235830);
  v32 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v50;
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v11, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = 0;
  v4[3] = 0;
  v34 = v42;
  v4[4] = 0;
  v4[5] = v34;
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v22, v12);
  return v4;
}

uint64_t *HttpAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v108 = *v3;
  v125 = sub_24F9285B8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v94 - v7;
  v107 = sub_24F928E68();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v94 - v10;
  v128 = sub_24F928388();
  v12 = *(v128 - 8);
  v13 = MEMORY[0x28223BE20](v128);
  v116 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v113 = &v94 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v94 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v94 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v105 = &v94 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v100 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v119 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v94 - v29;
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v122 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_method) = 0;
  v34 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  v35 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v118 = v34;
  *(v3 + v34) = v35;
  v36 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  *v36 = 0;
  v36[1] = 0;
  v101 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest) = 0;
  v102 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication) = 0;
  v104 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken) = 0;
  v109 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount) = 0;
  v111 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache) = 0;
  v121 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction) = 0;
  v37 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction) = 0;
  v120 = a1;
  sub_24F928398();
  sub_24F928268();
  v38 = v32;
  v115 = v12;
  v39 = (v12 + 8);
  v40 = *(v12 + 8);
  v40(v30, v128);
  if ((*(v38 + 48))(v11, 1, v31) == 1)
  {
    sub_24E601704(v11, &qword_27F228530);
    v41 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v42 = 7107189;
    v43 = v108;
    v42[1] = 0xE300000000000000;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v124 + 8))(v126, v125);
    v40(v120, v128);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v95 = v36;
    v96 = v37;
    v44 = v122;
    (*(v38 + 32))(v122, v11, v31);
    v97 = v38;
    v45 = *(v38 + 16);
    v108 = v31;
    v45(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_url, v44, v31);
    v46 = v119;
    v47 = v120;
    sub_24F928398();
    sub_24EC26FC8();
    sub_24F928248();
    v40(v46, v128);
    v48 = v127;
    v49 = v47;
    if (v127 != 8)
    {
      v50 = v98;
      swift_beginAccess();
      *(v3 + v50) = v48;
    }

    v51 = v100;
    v52 = v49;
    sub_24F928398();
    v53 = v103;
    sub_24F9281F8();
    v100 = v39;
    v40(v51, v128);
    v54 = v106;
    v55 = v107;
    v56 = (*(v106 + 48))(v53, 1, v107);
    v94 = v3;
    if (v56 == 1)
    {
      sub_24E601704(v53, qword_27F221C40);
    }

    else
    {
      v57 = v99;
      (*(v54 + 32))(v99, v53, v55);
      v58 = v54;
      v59 = v123;
      v60 = sub_24F928E38();
      v123 = v59;
      (*(v58 + 8))(v57, v55);
      v61 = v118;
      swift_beginAccess();
      *(v3 + v61) = v60;
    }

    v62 = v95;
    v63 = v119;
    sub_24F928398();
    v64 = sub_24F928348();
    v66 = v65;
    v67 = v128;
    v68 = v40;
    v40(v63, v128);
    swift_beginAccess();
    *v62 = v64;
    v62[1] = v66;

    v69 = v105;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v69, v67);
    v70 = v101;
    swift_beginAccess();
    *v70 = v64 & 1;
    v71 = v110;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v71, v67);
    v72 = v102;
    swift_beginAccess();
    *v72 = v64 & 1;
    v73 = v112;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v73, v67);
    v74 = v104;
    swift_beginAccess();
    *v74 = v64 & 1;
    v75 = v113;
    sub_24F928398();
    v76 = sub_24F928258();
    LOBYTE(v66) = v77;
    v40(v75, v67);
    if (v66)
    {
      v76 = 0;
    }

    v78 = v109;
    swift_beginAccess();
    *v78 = v76;
    v79 = v114;
    sub_24F928398();
    v80 = sub_24F928278();
    v40(v79, v67);
    v81 = v111;
    swift_beginAccess();
    *v81 = v80 & 1;
    type metadata accessor for Action();
    v3 = v63;
    sub_24F928398();
    v82 = v126;
    v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v63, v126);
    v68(v63, v67);
    v84 = v121;
    swift_beginAccess();
    *v84 = v83;

    sub_24F928398();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v3, v82);
    v121 = v68;
    v68(v3, v67);
    v86 = v96;
    swift_beginAccess();
    *v86 = v85;

    v87 = v116;
    (*(v115 + 16))(v116, v52, v67);
    v88 = v124;
    v89 = v117;
    v90 = v125;
    (*(v124 + 16))(v117, v82, v125);
    v91 = v123;
    v92 = Action.init(deserializing:using:)(v87, v89);
    if (!v91)
    {
      v3 = v92;
    }

    (*(v88 + 8))(v126, v90);
    (v121)(v52, v67);
    (*(v97 + 8))(v122, v108);
  }

  return v3;
}

uint64_t sub_24F232550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_24F928348();
  v8 = v7;
  if (v7)
  {
    v9 = result;
  }

  else
  {
    a1 = 0;
    a2 = 0;
    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v8;
  return result;
}

uint64_t HttpAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HttpAction.method.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t HttpAction.method.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t HttpAction.headers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.body.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HttpAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t HttpAction.isStoreRequest.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.isStoreRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.needsAuthentication.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.needsAuthentication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.needsMediaToken.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.needsMediaToken.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.retryCount.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.retryCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.disableCache.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.disableCache.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24F232F3C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t HttpAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpAction.__deallocating_deinit()
{
  HttpAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24F233198()
{
  result = qword_27F23CBA8;
  if (!qword_27F23CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBA8);
  }

  return result;
}

uint64_t type metadata accessor for HttpAction()
{
  result = qword_27F23CBB0;
  if (!qword_27F23CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F233250()
{
  result = sub_24F91F4A8();
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

uint64_t sub_24F233394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924258();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = sub_24F927618();
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBC0) + 36);
  v14 = *(v6 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
  *v8 = v9;
  *(v8 + 1) = v9;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  sub_24F923658();
  sub_24E6EB910(v8, v13);
  v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8) + 36);
  v19 = v29;
  *v18 = *&v28[8];
  *(v18 + 16) = v19;
  *(v18 + 32) = v30;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBC8);
  *(v13 + *(v20 + 52)) = v17;
  *(v13 + *(v20 + 56)) = 256;
  v21 = sub_24F927618();
  v23 = v22;
  sub_24E6EB974(v8);
  v24 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBD0) + 36));
  *v24 = v21;
  v24[1] = v23;
  v25 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBD8) + 36));
  *v25 = v10;
  v25[1] = v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBE0);
  return (*(*(v26 - 8) + 16))(a2, a1, v26);
}

unint64_t sub_24F2335EC()
{
  result = qword_27F23CBE8;
  if (!qword_27F23CBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CBC0);
    sub_24E602068(&qword_27F23CBF0, &qword_27F23CBE0);
    sub_24E602068(&qword_27F23CBF8, &qword_27F23CBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBE8);
  }

  return result;
}

id UIColor.inverse.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  v6[0] = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if ([v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 - v6[0] green:1.0 - v5 blue:1.0 - v4 alpha:v3];
  }

  return v2;
}

GameStoreKit::ControllerRequirement_optional __swiftcall ControllerRequirement.init(rawValue:)(Swift::String rawValue)
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

unint64_t ControllerRequirement.rawValue.getter()
{
  v1 = 0xD000000000000022;
  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_24F2338A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F233954()
{
  sub_24F92B218();
}

uint64_t sub_24F2339EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F233AA0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = 0xD000000000000022;
  v4 = "";
  v5 = "SIRI_REMOTE_REQUIRED";
  if (*v1 != 2)
  {
    v5 = "CONTROLLER_REQUIRED";
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v4 = "ONTROLLER_REQUIRED";
  }

  if (*v1 > 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v3;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

GameStoreKit::SpatialControllerRequirement_optional __swiftcall SpatialControllerRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SpatialControllerRequirement.rawValue.getter()
{
  v1 = 0x4554524F50505553;
  if (*v0 != 1)
  {
    v1 = 0x505055535F544F4ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445524955514552;
  }
}

unint64_t sub_24F233BD8()
{
  result = qword_27F23CC00;
  if (!qword_27F23CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CC00);
  }

  return result;
}

uint64_t sub_24F233C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4554524F50505553;
  v4 = 0xE900000000000044;
  if (v2 != 1)
  {
    v3 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4445524955514552;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x4554524F50505553;
  v8 = 0xE900000000000044;
  if (*a2 != 1)
  {
    v7 = 0x505055535F544F4ELL;
    v8 = 0xED0000444554524FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4445524955514552;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F233D54()
{
  result = qword_27F23CC08;
  if (!qword_27F23CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CC08);
  }

  return result;
}

uint64_t sub_24F233DA8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F233E5C()
{
  sub_24F92B218();
}

uint64_t sub_24F233EFC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F233FB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000044;
  v5 = 0x4554524F50505553;
  if (v2 != 1)
  {
    v5 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4445524955514552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_24F23404C(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  *(v1 + qword_27F22F1D0) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_27F22F1F0);
    if (a1)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v3)
    {
      sub_24ED6F318();
    }
  }
}

void sub_24F234130()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F236D8C();
    if ((*(v1 + qword_27F39C790) & 1) != 0 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F234574()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ArcadePage, sub_24F24771C);
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F234A0C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F23756C();
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F234E54()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ReviewsPage, sub_24F249298);
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F2352EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for SearchFocusPage, sub_24F249408);
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F235784()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F238564();
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F235BCC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for SearchLandingPage, sub_24F24A354);
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F236064()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F238D08();
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F2364AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F239498();
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

void sub_24F2368F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_27F22F1A8);
  if (v8)
  {
    v25 = v5;
    v9 = *(v0 + qword_27F22F1F0);
    if (v9)
    {
      v10 = qword_27F210788;

      if (v10 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = qword_27F230F98;
      v12 = v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v12 = v11;
      *(v12 + 8) = 0;
      v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v13 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    v14 = sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ArcadeSeeAllGamesPage, sub_24F24A7A4);
    if (*(v1 + qword_27F39C790) == 1 || (v14 & 1) == 0)
    {
      sub_24E824448(v8);
    }

    else
    {
      *(v1 + qword_27F39C790) = 1;
      v8(v1 + qword_27F39C7D0);
      if (v9)
      {
        v15 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v16 = *(v15 + 48);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          return;
        }

        *(v15 + 48) = v18;
        v19 = v18 == 0;
        swift_beginAccess();
        *(v15 + 40) = v19;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v1 + qword_27F39C7D8))
      {
        *v7 = 1;
        v20 = v25;
        (*(v4 + 104))(v7, *MEMORY[0x277D222A0], v25);
        sub_24F92A0D8();
        (*(v4 + 8))(v7, v20);
      }

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v23 = sub_24E74EC40();

      v24 = sub_24F92BEF8();
      v26[3] = v23;
      v26[4] = MEMORY[0x277D225C0];
      v26[0] = v24;
      sub_24F92A958();
      sub_24E824448(v8);

      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }
}

uint64_t sub_24F236D8C()
{
  v1 = v0;
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A088();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + qword_27F22F1B0);
  v12 = *(v1 + qword_27F22F1B0);
  if (!v12)
  {
    v17 = 0;
LABEL_7:
    *v11 = 0;
    v11[1] = 0;
    sub_24E824448(v17);
    return 1;
  }

  v67 = v8;
  v68 = v2;

  v14 = v12(v13);
  sub_24E824448(v12);
  v69 = v14;
  if (!v14)
  {
    v17 = *v11;
    goto LABEL_7;
  }

  v15 = *(v1 + qword_27F22F1B8);
  if (v15)
  {

    v16 = v15(v69);
    sub_24E824448(v15);
  }

  else
  {
    v16 = v69;
  }

  v19 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v16 + v19) + 16))
  {

    v17 = *v11;
    goto LABEL_7;
  }

  v61 = v3;
  *(v1 + qword_27F22F198) = v16;

  v20 = *(v16 + v19);
  v66 = qword_27F22F1A0;
  *(v1 + qword_27F22F1A0) = v20;

  v21 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();
  v63 = v21;
  v22 = *(v16 + v21);
  v23 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v23) = v22;

  v65 = *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  if ((v65 & 1) == 0)
  {
    v24 = *(v1 + qword_27F22F1F0);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v26 = *(v25 + 48);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
LABEL_43:
        __break(1u);
        return result;
      }

      *(v25 + 48) = v28;
      v29 = v28 == 0;
      swift_beginAccess();
      *(v25 + 40) = v29;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      *v10 = 1;
      v30 = v67;
      (*(v7 + 104))(v10, *MEMORY[0x277D222A0], v67);
      sub_24F92A0D8();
      (*(v7 + 8))(v10, v30);
    }

    sub_24E60169C(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v71, &qword_27F2129B0);
    v74 = 0;
    v75 = 0;
    v31 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v71, v1 + v31);
    swift_endAccess();
    sub_24E9B7D88(v1 + v31, v70);
    sub_24F92AD88();
    sub_24E94E128(v70);
    sub_24E94E128(&v71);
  }

  v62 = v5;
  v67 = v11;
  v32 = *(v1 + qword_27F39C7A0);
  v33 = v16;
  v34 = *&v66[v1];
  v35 = MEMORY[0x277D84F90];
  v70[0] = MEMORY[0x277D84F90];
  v36 = *(v34 + 16);
  v66 = v33;

  if (!v36)
  {
    goto LABEL_29;
  }

  v37 = 0;
  v38 = v34 + 32;
  v59 = v36 - 1;
  v60 = v34 + 32;
  v64 = v32;
  do
  {
    v39 = v38 + 40 * v37;
    v40 = v37;
    while (1)
    {
      if (v40 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      sub_24E65864C(v39, &v71);
      if (*(*(v1 + v23) + 16))
      {
        break;
      }

LABEL_21:
      ++v40;
      result = sub_24E6585F8(&v71);
      v39 += 40;
      if (v36 == v40)
      {
        goto LABEL_29;
      }
    }

    sub_24E76D934(&v71);
    if ((v41 & 1) == 0)
    {

      goto LABEL_21;
    }

    v42 = sub_24E6585F8(&v71);
    MEMORY[0x253050F00](v42);
    if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v37 = v40 + 1;
    result = sub_24F92B638();
    v35 = v70[0];
    v38 = v60;
  }

  while (v59 != v40);
LABEL_29:

  v43 = v66;
  v71 = v66;
  v72 = v35;
  v44 = v65;
  v73 = v65;
  sub_24F92AD88();
  sub_24F24D968(v71, v72, v73);
  v45 = v44;
  if (v44)
  {

    v46 = v67;
  }

  else
  {

    sub_24F24697C(v47, 0, v1);

    v48 = *(v1 + qword_27F22F1F0);
    v46 = v67;
    v49 = v68;
    v50 = v62;
    if (v48)
    {
      v51 = *(v48 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v52 = *(v51 + 48);
      if (v52 <= 0)
      {
        goto LABEL_37;
      }

      v53 = v52 - 1;
      *(v51 + 48) = v53;
      v54 = v53 == 0;
      swift_beginAccess();
      *(v51 + 40) = v54;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v51 + 48))
      {
LABEL_37:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      v55 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v56 = sub_24F928818();
      (*(*(v56 - 8) + 16))(v50, &v43[v55], v56);
      v57 = v61;
      (*(v61 + 104))(v50, *MEMORY[0x277D22290], v49);
      sub_24F92A0C8();

      (*(v57 + 8))(v50, v49);
    }

    else
    {
    }
  }

  v58 = *v46;
  *v46 = 0;
  v46[1] = 0;
  sub_24E824448(v58);
  return v45;
}