uint64_t sub_1C5751974(void *a1, void *a2)
{
  v4 = *(v2 + *a1 + 8);

  v5 = *(v2 + *a2 + 8);
}

uint64_t sub_1C57519D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

id MUPlaceActionBarItem.type.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionBarItem.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1C5751DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1C584F630();

  return v6;
}

uint64_t sub_1C5751E78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C584F660();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

id MUPlaceActionBarItem.__allocating_init(type:axID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_handlers] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_menuProviders] = v8;
  *&v7[OBJC_IVAR___MUPlaceActionBarItem_type] = a1;
  v9 = &v7[OBJC_IVAR___MUPlaceActionBarItem_axID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id MUPlaceActionBarItem.init(type:axID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_handlers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_menuProviders] = v8;
  *&v3[OBJC_IVAR___MUPlaceActionBarItem_type] = a1;
  v9 = &v3[OBJC_IVAR___MUPlaceActionBarItem_axID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t MUPlaceActionBarItem.addHandler(_:)(const void *a1)
{
  _Block_copy(a1);
  v2 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  v3 = swift_beginAccess();
  MEMORY[0x1C6949DF0](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C584F7A0();
  }

  sub_1C584F7E0();
  return swift_endAccess();
}

uint64_t MUPlaceActionBarItem.addMenuProvider(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C574C64C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C574C64C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C574F68C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id sub_1C5752508(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C566EA20(a1, v14);
  v5 = v15;
  if (!v15)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_1C584FDB0();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (a2)
  {
LABEL_3:
    sub_1C5752BA4();
    a2 = sub_1C584F750();
  }

LABEL_4:
  v12 = (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t MUPlaceActionBarItem.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  MEMORY[0x1C6949D90](0xD00000000000001BLL, 0x80000001C589B570);
  v2 = OBJC_IVAR___MUPlaceActionBarItem_type;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = [v3 description];
  v5 = sub_1C584F660();
  v7 = v6;

  MEMORY[0x1C6949D90](v5, v7);

  MEMORY[0x1C6949D90](0x656C646E6168202CLL, 0xEC000000203A7372);
  v8 = OBJC_IVAR___MUPlaceActionBarItem_handlers;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E00, &qword_1C5878C88);
  v11 = MEMORY[0x1C6949E30](v9, v10);
  v13 = v12;

  MEMORY[0x1C6949D90](v11, v13);

  MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C589B590);
  v14 = OBJC_IVAR___MUPlaceActionBarItem_menuProviders;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170E08, &unk_1C5878C90);
  v17 = MEMORY[0x1C6949E30](v15, v16);
  v19 = v18;

  MEMORY[0x1C6949D90](v17, v19);

  MEMORY[0x1C6949D90](41, 0xE100000000000000);
  return 0;
}

id MUPlaceActionBarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C5752BA4()
{
  result = qword_1EC170520;
  if (!qword_1EC170520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC170520);
  }

  return result;
}

uint64_t WatchPlaceRibbonItemViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 56) = 0;
}

uint64_t sub_1C5752C2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 56) = 0;
}

uint64_t WatchPlaceRatingRowViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 32);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 1;
  return sub_1C574F80C(v2, v3, v4, v5);
}

uint64_t sub_1C5752C74@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 32);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 1;
  return sub_1C574F80C(v2, v3, v4, v5);
}

uint64_t WatchPlaceHoursViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  *(a1 + 56) = 2;

  return sub_1C5665244(v3, v4, v5);
}

uint64_t sub_1C5752D10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(v1 + 32);
  *(a1 + 32) = v5;
  *(a1 + 56) = 2;

  return sub_1C5665244(v3, v4, v5);
}

uint64_t WatchPlaceAccoladesViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = 3;
  v7 = v6;
}

uint64_t sub_1C5752DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = 3;
  v7 = v6;
}

uint64_t WatchPlaceAcceptsPaymentsViewModel.makeRibbonItemSpecialization()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 56) = 4;
}

uint64_t sub_1C5752EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 56) = 4;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C5752F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5752F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C57530EC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C575314C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57531B0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B0);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C575321C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_externalActionHandler;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

void *sub_1C5753300()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5753358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C57533B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753414(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753530()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5753588(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C57535E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753644(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753760()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57537B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5753810@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753874(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1F8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C5753990()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57539E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5753A40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753AA4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x210);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5753BEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5753C50(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x228);

  return v3(v4);
}

uint64_t sub_1C5753D64()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5753DFC(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5753E4C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result & 1;
  return result;
}

id sub_1C5753F90(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  swift_beginAccess();
  if (*(a1 + v8))
  {
    sub_1C5626E40(0, a4, a5);

    v9 = sub_1C584F750();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1C5754070(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a3;
  if (a3)
  {
    sub_1C5626E40(0, a4, a5);
    v7 = sub_1C584F770();
  }

  v9 = *a6;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = v7;
}

uint64_t sub_1C5754110@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754174(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x258);

  return v3(v4);
}

uint64_t sub_1C5754258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C57542E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C57543AC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1C5754258(a1, &v10 - v7);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x270))(v8);
}

uint64_t sub_1C575452C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57545C4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754614@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5754784()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575481C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575486C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  *a2 = result & 1;
  return result;
}

void *sub_1C57549E0()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C5754A38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C5754A90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754AF4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5754C0C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5754CA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754CF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5754E60()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5754EF8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5754F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C57550B8()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5755150(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57551A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5755310()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57553A8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57553F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))();
  *a2 = result & 1;
  return result;
}

void *sub_1C575556C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57555C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575561C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x328))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5755680(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x330);
  v4 = *a1;
  return v3(v2);
}

void *sub_1C575579C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57557F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575584C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57558B0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x348);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C57559B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x358))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C5755A14(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x360);

  return v4(v2, v3);
}

uint64_t sub_1C5755B3C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5755BD4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5755C24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result & 1;
  return result;
}

id sub_1C5755D58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = *a3;
  swift_beginAccess();
  sub_1C5754258(a1 + v10, v9);
  v11 = sub_1C584EA90();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1C584EA20();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

uint64_t sub_1C5755EA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C5754258(v2 + v4, a2);
}

void sub_1C5755F00(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v16 - v10;
  if (a3)
  {
    sub_1C584EA50();
    v12 = sub_1C584EA90();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1C584EA90();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = *a4;
  swift_beginAccess();
  v15 = a1;
  sub_1C57542E0(v11, a1 + v14);
  swift_endAccess();
}

uint64_t sub_1C575604C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C57542E0(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1C5756104(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1C5754258(a1, &v10 - v7);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x390))(v8);
}

uint64_t sub_1C5756284()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575631C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575636C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C57564C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C5756528(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C0);

  return v4(v2, v3);
}

uint64_t sub_1C5756638@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C575669C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D8);

  return v4(v2, v3);
}

uint64_t sub_1C57567C4()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C575685C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57568AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3E8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756A1C()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756AB4(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756B04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x400))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756C74()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756D0C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756D5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x418))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5756ECC()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5756F64(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5756FB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x430))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757124()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57571BC(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C575720C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x448))();
  *a2 = result & 1;
  return result;
}

void *sub_1C5757380()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C57573D8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1C5757434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C575748C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x460))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57574F0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x468);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C5757608()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57576A0(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57576F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x478))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757860()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C57578F8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757948@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x490))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757AB8()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5757B50(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757BA0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757D10()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5757DA8(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5757DF8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5757F68()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758000(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758050@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result & 1;
  return result;
}

float sub_1C57581C0()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C575825C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_1C575841C()
{
  v1 = v0 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C57584B8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_1C5758660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x520))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C57586C4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x528);

  return v4(v2, v3);
}

uint64_t sub_1C57587EC()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C57588D4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x538))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758A40()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758AD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758B28@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x550))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758C94()
{
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5758D2C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5758D7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x568))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5758EFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x580))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5758F60(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x588);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

id sub_1C5759038(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1C57590B0(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(*(v2 + v4));
}

uint64_t sub_1C5759110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5759194(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1C57591F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x598))();
  *a2 = result;
  return result;
}

uint64_t sub_1C5759254(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x5A0);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

id MUWebBasedPlacecardSectionControllerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MUWebBasedPlacecardSectionControllerConfiguration.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_evChargerAvailability] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_artworkCache] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_relatedPlacesCache] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_amsResultProvider] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userGuides] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeInShortcuts] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPRatings] = 0;
  v1 = OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPPhoto;
  v2 = sub_1C584EA90();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanAddPhotos] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanRate] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userARPSuggestion] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_numberOfReportsInReview] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldDisableReportAProblem] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_shouldExcludeFlyover] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_supportsShowingCoordinates] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userIcon] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_contact] = 0;
  v4 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_placeNote];
  *v4 = 0;
  v4[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isDeveloperPlacecard] = 0;
  v3(&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_webModuleURL], 1, 1, v2);
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isHomeWorkSchool] = 0;
  v5 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_customName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_options];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_userCanEdit] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowOpenFindMyAction] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowRequestLocation] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_showMoreButton] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDownloadOffline] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_etaProvider] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDetourTime] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isCurrentLocation] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canShowDirections] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isAdditionalStop] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_isSearchAlongRoute] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_detourTime] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlace] = 0;
  v7 = &v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_distanceToPlaceString];
  *v7 = 0;
  v7[1] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_libraryPlaceSavedState] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_mapStyle] = 0;
  v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_canMakeCalls] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_offlineMapProvider] = 0;
  *&v0[OBJC_IVAR____TtC6MapsUI49MUWebBasedPlacecardSectionControllerConfiguration_deviceProvider] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration()
{
  result = qword_1EC174CA0;
  if (!qword_1EC174CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MUWebBasedPlacecardSectionControllerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUWebBasedPlacecardSectionControllerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5759838()
{
  sub_1C575B7AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C575B7AC()
{
  if (!qword_1EC16D8B0)
  {
    sub_1C584EA90();
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC16D8B0);
    }
  }
}

void type metadata accessor for MULibraryPlaceSavedState()
{
  if (!qword_1EC170F18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC170F18);
    }
  }
}

id EVChargingSectionController.isActive.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isActive);
}

uint64_t EVChargingSectionController.isActive.setter(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setActive_, a1 & 1);
  v3 = *&v1[OBJC_IVAR___MUEVChargingSectionController_viewModel];
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void (*EVChargingSectionController.isActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 104) = ObjectType;
  *(v4 + 48) = v1;
  *(v4 + 56) = ObjectType;
  *(v4 + 112) = objc_msgSendSuper2((v4 + 48), sel_isActive);
  return sub_1C575BA78;
}

void sub_1C575BA78(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v4 = 10;
  if (a2)
  {
    v4 = 8;
  }

  v5 = 11;
  if (a2)
  {
    v5 = 9;
  }

  v7 = v2[12];
  v6 = v2[13];
  v2[v4] = v7;
  v2[v5] = v6;
  objc_msgSendSuper2(&v2[v4], sel_setActive_, v3);
  v8 = *(v7 + OBJC_IVAR___MUEVChargingSectionController_viewModel);
  v9 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  *(v8 + v9) = v3;

  free(v2);
}

char *EVChargingSectionController.init(mapItem:availabilityProvider:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded] = 0;
  type metadata accessor for MUEVChargingViewModel();
  v7 = a2;
  v8 = MUEVChargingViewModel.__allocating_init(availabilityProvider:)(v7);
  *&v3[OBJC_IVAR___MUEVChargingSectionController_viewModel] = v8;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v9 = v8;
  v10 = objc_msgSendSuper2(&v17, sel_initWithMapItem_, a1);
  v11 = sub_1C575BCF4(v9);
  v12 = *&v10[OBJC_IVAR___MUEVChargingSectionController__sectionViews];
  *&v10[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = v11;

  v13 = &v9[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer];
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for EVChargingSectionController;
  swift_unknownObjectWeakAssign();

  v16.receiver = v10;
  v16.super_class = ObjectType;
  LOBYTE(ObjectType) = objc_msgSendSuper2(&v16, sel_isActive);

  v14 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  v9[v14] = ObjectType;

  return v10;
}

uint64_t sub_1C575BCF4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
  swift_beginAccess();
  if (*(*(a1 + v4) + 16))
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1C575C9B4(v5);
    v7 = v6;

    sub_1C575C4A4(v7);
    v8 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
    swift_beginAccess();
    if (*(*(a1 + v8) + 16) && (*(v2 + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) & 1) == 0)
    {
      type metadata accessor for EVChargingSectionView();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v10 = sub_1C564A734(sub_1C575CD4C, v9);

      v11 = [objc_opt_self() insetButtonSectionViewforContentView_];
      MEMORY[0x1C6949DF0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
    }
  }

  else
  {
    v12 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
    swift_beginAccess();
    result = MEMORY[0x1E69E7CC0];
    if (!*(*(a1 + v12) + 16))
    {
      return result;
    }

    v19 = MEMORY[0x1E69E7CC0];
  }

  v14 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
  swift_beginAccess();
  if (*(*(a1 + v14) + 16) && (!*(*(a1 + v4) + 16) || *(v2 + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) == 1))
  {

    sub_1C575C9B4(v15);
    v17 = v16;

    sub_1C575C4A4(v17);
  }

  return v19;
}

BOOL EVChargingSectionController.hasContent.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
    }

    v2 = sub_1C584FB90();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

id EVChargingSectionController.delegate.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_delegate);

  return v1;
}

uint64_t EVChargingSectionController.delegate.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setDelegate_, a1);
  v4 = sub_1C575BCF4(*&v1[OBJC_IVAR___MUEVChargingSectionController_viewModel]);
  v5 = *&v1[OBJC_IVAR___MUEVChargingSectionController__sectionViews];
  *&v1[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = v4;

  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_delegate);
  if (v6)
  {
    [v6 placeSectionControllerDidUpdateContent_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1C575C290@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4.receiver = *a1;
  v4.super_class = type metadata accessor for EVChargingSectionController();
  result = objc_msgSendSuper2(&v4, sel_delegate);
  *a2 = result;
  return result;
}

uint64_t sub_1C575C2E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return EVChargingSectionController.delegate.setter(v4);
}

void (*EVChargingSectionController.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  ObjectType = swift_getObjectType();
  v4[5].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[4].receiver = [(objc_super *)v4 delegate];
  return sub_1C575C3A8;
}

void sub_1C575C3A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    *(v2 + 16) = *(v2 + 72);
    objc_msgSendSuper2((v2 + 16), sel_setDelegate_, v3);
    v4 = *(v2 + 64);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    *(v2 + 32) = v5;
    *(v2 + 40) = v6;
    objc_msgSendSuper2((v2 + 32), sel_setDelegate_, v3);
    swift_unknownObjectRelease();
    v7 = sub_1C575BCF4(*(v5 + OBJC_IVAR___MUEVChargingSectionController_viewModel));
    v8 = *(v5 + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
    *(v5 + OBJC_IVAR___MUEVChargingSectionController__sectionViews) = v7;

    *(v2 + 48) = v5;
    *(v2 + 56) = v6;
    v9 = objc_msgSendSuper2((v2 + 48), sel_delegate);
    if (!v9)
    {
      goto LABEL_6;
    }

    [v9 placeSectionControllerDidUpdateContent_];
  }

  swift_unknownObjectRelease();
LABEL_6:

  free(v2);
}

uint64_t sub_1C575C4A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C584FB90();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C5640E88(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C575C834(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

id EVChargingSectionController.__allocating_init(mapItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMapItem_];

  return v3;
}

id EVChargingSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EVChargingSectionController.evChargingViewModelDidUpdate(_:)()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C575BCF4(*&v0[OBJC_IVAR___MUEVChargingSectionController_viewModel]);
  v3 = *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews];
  *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = v2;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  result = objc_msgSendSuper2(&v5, sel_delegate);
  if (result)
  {
    [result placeSectionControllerDidUpdateContent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C575C750()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C575BCF4(*&v0[OBJC_IVAR___MUEVChargingSectionController_viewModel]);
  v3 = *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews];
  *&v0[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = v2;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  result = objc_msgSendSuper2(&v5, sel_delegate);
  if (result)
  {
    [result placeSectionControllerDidUpdateContent_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C575C834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C584FB90();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C584FB90();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C575CE10();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F38, &qword_1C5879190);
            v9 = sub_1C571ECCC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C570CB68();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C575C9B4(uint64_t a1)
{
  v44 = MEMORY[0x1E69E7CC0];
  v37 = *(a1 + 16);
  if (!v37)
  {
    return;
  }

  v1 = 0;
  v36 = a1 + 32;
  v2 = 0x1FC704000uLL;
  while (1)
  {
    v4 = (v36 + 40 * v1);
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[4];
    if (v4[3])
    {
      v8 = v4[2];
      v9 = objc_allocWithZone(MUPlaceSectionHeaderViewModel);

      v10 = sub_1C584F630();

      v11 = sub_1C584F630();

      v3 = [v9 initWithTitleString:v10 subtitleString:v11 showSeeMore:0];
    }

    else
    {
      v12 = objc_allocWithZone(MUPlaceSectionHeaderViewModel);

      v11 = sub_1C584F630();

      v3 = [v12 initWithTitleString_];
    }

    v13 = v7[2];
    if (!v13)
    {
      goto LABEL_4;
    }

    v39 = v1;
    v15 = v7[7];
    v14 = v7[8];
    v16 = v2;
    v17 = v3;
    v19 = v7[5];
    v18 = v7[6];
    v20 = v7[4];
    type metadata accessor for EVChargingSectionView();
    v40 = v20;
    *&v41 = v19;
    *(&v41 + 1) = v18;
    v42 = v15;
    v43 = v14;

    v21 = sub_1C564A220();
    v22 = sub_1C564A26C(&v40, v21);
    v38 = v17;
    v23 = v17;
    v2 = v16;
    v24 = v23;
    v25 = [objc_opt_self() (v16 + 3439)];

    v26 = v25;
    MEMORY[0x1C6949DF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C584F7A0();
    }

    sub_1C584F7E0();

    v1 = v39;
    if (v13 != 1)
    {
      break;
    }

LABEL_3:
    v3 = v38;
LABEL_4:
    ++v1;

    if (v1 == v37)
    {
      return;
    }
  }

  v27 = v7 + 13;
  v28 = 1;
  while (v28 < v7[2])
  {
    v29 = *(v27 - 1);
    v30 = *v27;
    v40 = *(v27 - 4);
    v41 = *(v27 - 3);
    v42 = v29;
    v43 = v30;

    v31 = sub_1C564A220();
    v32 = sub_1C564A26C(&v40, v31);
    v33 = [objc_opt_self() (v2 + 3439)];
    MEMORY[0x1C6949DF0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C584F7A0();
    }

    ++v28;
    sub_1C584F7E0();

    v27 += 5;
    if (v13 == v28)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1C575CD4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) = 1;
    v2 = sub_1C575BCF4(*(Strong + OBJC_IVAR___MUEVChargingSectionController_viewModel));
    v3 = *&v1[OBJC_IVAR___MUEVChargingSectionController__sectionViews];
    *&v1[OBJC_IVAR___MUEVChargingSectionController__sectionViews] = v2;

    v5.receiver = v1;
    v5.super_class = type metadata accessor for EVChargingSectionController();
    v4 = objc_msgSendSuper2(&v5, sel_delegate);
    if (v4)
    {
      [v4 placeSectionControllerDidUpdateContent_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1C575CE10()
{
  result = qword_1EC170F40;
  if (!qword_1EC170F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170F38, &qword_1C5879190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170F40);
  }

  return result;
}

uint64_t sub_1C575CE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
      do
      {
        sub_1C56466CC(v3, v8, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C56466CC(v4, v7, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C5764E88(&qword_1EC170FE8);
        v5 = sub_1C584F620();
        sub_1C5625230(v7, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C5625230(v8, &qword_1EC16D8C8, &qword_1C58677D0);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 96;
        v4 += 96;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C575CFBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 6);
  v12 = *(v0 + 9);
  v13 = *(v0 + 7);
  sub_1C584F6C0();
  MEMORY[0x1C694A560](v3);
  MEMORY[0x1C694A560](*(v4 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + 32;
    do
    {
      sub_1C56466CC(v9, v14, &qword_1EC16D8C8, &qword_1C58677D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
      sub_1C5764E88(&qword_1EC170F48);
      sub_1C584F5F0();
      sub_1C5625230(v14, &qword_1EC16D8C8, &qword_1C58677D0);
      v9 += 96;
      --v8;
    }

    while (v8);
  }

  *&v14[0] = v6;
  sub_1C5653140();
  sub_1C584F5F0();
  *&v14[0] = v5;
  sub_1C56760A0();
  sub_1C584F5F0();
  v10 = 0.0;
  if (v7 != 0.0)
  {
    v10 = v7;
  }

  MEMORY[0x1C694A590](*&v10);
  v14[0] = v13;
  v14[1] = v12;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5676C38(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C575D188()
{
  sub_1C584FEA0();
  sub_1C575CFBC();
  return sub_1C584FEF0();
}

uint64_t sub_1C575D1CC()
{
  sub_1C584FEA0();
  sub_1C575CFBC();
  return sub_1C584FEF0();
}

__n128 sub_1C575D20C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584EB60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = vdupq_n_s64(0xC0000000uLL);
  *(a2 + 32) = v15;
  sub_1C584EB50();
  v10 = sub_1C584EB40();
  v12 = v11;
  (*(v5 + 8))(v9, v4);
  *a2 = v10;
  *(a2 + 8) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = a1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 48) = 0;
  result = *MEMORY[0x1E69DC5C0];
  *(a2 + 72) = *(MEMORY[0x1E69DC5C0] + 16);
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_1C575D334(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C5633310(v5 + 40 * v4, v32);
      sub_1C5633374(v32, v33);
      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = (v2 + 32);
        while (1)
        {
          result = sub_1C563337C(v9, v33);
          if (result)
          {
            break;
          }

          ++v8;
          v9 += 12;
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1C56466CC(v9, v32, &qword_1EC16D8C8, &qword_1C58677D0);
      }

      else
      {
LABEL_7:
        sub_1C563326C(v33, v31);
        sub_1C5763EB8();
        v11 = sub_1C563E40C();
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = sub_1C563E420();
        v20 = v19;
        sub_1C563E430(&v30);
        sub_1C563E43C(v31, &v30, &type metadata for AnyCompositionalStackLayoutItem, v32, v11, v13, v15, v17, v18, v20);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C5763984(0, v6[2] + 1, 1, v6);
      }

      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        v6 = sub_1C5763984((v21 > 1), v22 + 1, 1, v6);
      }

      v6[2] = v22 + 1;
      v23 = &v6[12 * v22];
      v24 = v32[1];
      v23[2] = v32[0];
      v23[3] = v24;
      v25 = v32[2];
      v26 = v32[3];
      v27 = v32[5];
      v23[6] = v32[4];
      v23[7] = v27;
      v23[4] = v25;
      v23[5] = v26;
      ++v4;
      sub_1C5763E64(v33);
      if (v4 == v3)
      {

        v1 = v29;
        goto LABEL_17;
      }
    }
  }

  v28 = *(v1 + 24);

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
  *(v1 + 24) = v6;
  return result;
}

uint64_t sub_1C575D58C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1C56466CC(v7, v11, &qword_1EC16D8C8, &qword_1C58677D0);
      result = v6(v11);
      if (v3)
      {
        return sub_1C5625230(v11, &qword_1EC16D8C8, &qword_1C58677D0);
      }

      if (result)
      {
        break;
      }

      result = sub_1C5625230(v11, &qword_1EC16D8C8, &qword_1C58677D0);
      v7 += 96;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v11[3];
    a3[2] = v11[2];
    a3[3] = v8;
    v9 = v11[5];
    a3[4] = v11[4];
    a3[5] = v9;
    v10 = v11[1];
    *a3 = v11[0];
    a3[1] = v10;
  }

  else
  {
LABEL_6:
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C575D68C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_1C5763FAC(v11, &v10);
}

uint64_t sub_1C575D710(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1C5763FE4(v9);
}

id sub_1C575D800(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group];
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 10) = *(a1 + 80);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t CompositionalStackLayout.GroupRef.init(axis:)(uint64_t a1)
{
  v2 = sub_1C584EB60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_1C584EB50();
  v9 = sub_1C584EB40();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[0] = v9;
  v16[1] = v11;
  v16[2] = a1;
  v16[3] = MEMORY[0x1E69E7CC0];
  v17 = vdupq_n_s64(0xC0000000uLL);
  v18 = 0;
  v12 = *(MEMORY[0x1E69DC5C0] + 16);
  v19 = *MEMORY[0x1E69DC5C0];
  v20 = v12;
  v13 = (*(ObjectType + 112))(v16);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t CompositionalStackLayout.GroupRef.__allocating_init(identifier:axis:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  v13 = vdupq_n_s64(0xC0000000uLL);
  v9 = *(MEMORY[0x1E69DC5C0] + 16);
  v15 = *MEMORY[0x1E69DC5C0];
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = MEMORY[0x1E69E7CC0];
  v14 = 0;
  v16 = v9;
  v10 = (*(ObjectType + 112))(v12);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t CompositionalStackLayout.GroupRef.init(identifier:axis:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v11 = vdupq_n_s64(0xC0000000uLL);
  v7 = *(MEMORY[0x1E69DC5C0] + 16);
  v13 = *MEMORY[0x1E69DC5C0];
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v14 = v7;
  v8 = (*(ObjectType + 112))(v10);
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1C575DBD4@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v5);
  result = (*(ObjectType + 112))(v5);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C575DDE0()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(&v3);
  v1 = v3;

  sub_1C5763FE4(&v3);
  return v1;
}

uint64_t sub_1C575DF14(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(v9);
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  return v5(v9, 0);
}

uint64_t sub_1C575DFA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C575E004(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v4(v2, v3);
}

void (*sub_1C575E07C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v6 = *v4;
  v5 = v4[1];

  sub_1C5763FE4(v4);
  v4[15] = v6;
  v4[16] = v5;
  return sub_1C575E13C;
}

void sub_1C575E13C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 88;
  v4 = *(*a1 + 120);
  v5 = *(*a1 + 128);
  v6 = *((*MEMORY[0x1E69E7D40] & **(*a1 + 136)) + 0x68);
  if (a2)
  {
    v7 = *(*a1 + 128);

    v8 = v6(v3);
    v10 = v9[1];
    *v9 = v4;
    v9[1] = v5;

    v8(v3, 0);
    v11 = v2[16];
  }

  else
  {
    v12 = v6(*a1 + 88);
    v14 = v13[1];
    *v13 = v4;
    v13[1] = v5;

    v12(v3, 0);
  }

  free(v2);
}

uint64_t sub_1C575E2BC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return v2[2];
}

uint64_t sub_1C575E3B8(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  *(v4 + 16) = a1;
  return v3(v6, 0);
}

uint64_t sub_1C575E440@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

void (*sub_1C575E4F4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 120) = *(v4 + 16);
  return sub_1C575E5AC;
}

void sub_1C575E5AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  *(v5 + 16) = v3;
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575E710()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724078();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575E864(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C57240E4(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575E8F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

void (*sub_1C575E9A8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724078();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 120) = v5;
  return sub_1C575EA9C;
}

void sub_1C575EA9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  sub_1C57240E4(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575EC10()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C572470C();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1 & 1;
}

uint64_t sub_1C575ED64(char a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724738(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575EDF4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C575EEAC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C572470C();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5 & 1;
  return sub_1C575EFA4;
}

void sub_1C575EFA4(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724738(v3);
  v4(v2, 0);

  free(v1);
}

float sub_1C575F124()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C57246C0();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575F288(float a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724750(a1);
  return v3(v5, 0);
}

void (*sub_1C575F3D4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C57246C0();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5;
  return sub_1C575F4D0;
}

void sub_1C575F4D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724750(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575F648()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C57243F4();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575F79C(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C572440C(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575F82C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

void (*sub_1C575F8E8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C57243F4();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 120) = v5;
  return sub_1C575F9DC;
}

void sub_1C575F9DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  sub_1C572440C(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575FB50()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724830();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1 & 1;
}

uint64_t sub_1C575FCA4(char a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724854(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575FD34@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C575FDFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724830();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5 & 1;
  return sub_1C575FEF4;
}

void sub_1C575FEF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724854(v3);
  v4(v2, 0);

  free(v1);
}

float sub_1C5760074()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724800();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C57601D8(float a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C57248B8(a1);
  return v3(v5, 0);
}

void (*sub_1C5760334(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724800();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5;
  return sub_1C5760430;
}

void sub_1C5760430(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C57248B8(v3);
  v4(v2, 0);

  free(v1);
}

double sub_1C5760558()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return *&v2[6];
}

uint64_t sub_1C5760654(double a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  *(v4 + 48) = a1;
  return v3(v6, 0);
}

void (*sub_1C57607A0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 120) = *(v4 + 48);
  return sub_1C5760858;
}

void sub_1C5760858(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  *(v5 + 48) = v3;
  v4(v2, 0);

  free(v1);
}

double sub_1C576097C()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return *&v2[7];
}

uint64_t sub_1C5760A94(double a1, double a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x68))(v12);
  v10[7] = a1;
  v10[8] = a2;
  v10[9] = a3;
  v10[10] = a4;
  return v9(v12, 0);
}

void sub_1C5760B34(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C5760C00(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 88) = *(v4 + 56);
  *(v4 + 104) = *(v4 + 72);
  return sub_1C5760CC0;
}

void sub_1C5760CC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 120;
  v3 = *(*a1 + 104);
  v6 = v3;
  v7 = *(*a1 + 88);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 152)) + 0x68))(v2);
  *(v5 + 72) = v6;
  *(v5 + 56) = v7;
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C5760DE4()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v13);
  v1 = v13[3];

  sub_1C5763FE4(v13);
  v12 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C56466CC(v3, v10, &qword_1EC16D8C8, &qword_1C58677D0);
      v7[0] = v10[0];
      v7[1] = v10[1];
      v8 = v11;
      sub_1C5632F90(v7, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
      if ((swift_dynamicCast() & 1) != 0 && v9)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v4 = v12;
      }

      v3 += 96;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1C5761028(unint64_t a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(&v50);
  v60[2] = v52;
  v60[3] = v53;
  v60[4] = v54;
  v61 = v55;
  v60[0] = v50;
  v60[1] = v51;
  v47 = *(&v51 + 1);

  sub_1C5763FE4(v60);
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v41 = v1;
  v43 = a1;
  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v45 = a1 & 0xC000000000000001;
      v42 = a1 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      v46 = (v47 + 32);
      v44 = v3;
      while (1)
      {
        if (v45)
        {
          a1 = MEMORY[0x1C694A320](v4, v43);
        }

        else
        {
          a1 = *(v42 + 8 * v4);
          swift_unknownObjectRetain();
        }

        v56[0] = a1;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
        if (swift_dynamicCast())
        {
          sub_1C5632F90(&v57, &v50);
          sub_1C5632F90(&v50, &v57);
        }

        else
        {
          v59 = 0;
          v57 = 0u;
          v58 = 0u;
          sub_1C5625230(&v57, &qword_1EC170F70, &qword_1C58791B8);
          type metadata accessor for CompositionalStackLayout.GroupRef();
          v6 = swift_dynamicCastClass();
          if (!v6)
          {
            goto LABEL_37;
          }

          v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x58);
          *(&v58 + 1) = &_s5GroupVN;
          v59 = &off_1F44C2640;
          *&v57 = swift_allocObject();
          v8 = swift_unknownObjectRetain();
          v7(v8);
          swift_unknownObjectRelease();
        }

        sub_1C5633310(&v57, &v50);
        v9 = sub_1C5633374(&v50, v56);
        MEMORY[0x1EEE9AC00](v9, v10);
        v1 = &v38;
        v39 = v56;
        v11 = *(v47 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = v46;
          while (1)
          {
            v14 = sub_1C5764ED8(v13);
            if (v14)
            {
              break;
            }

            ++v12;
            v13 += 12;
            if (v11 == v12)
            {
              v12 = 0;
              break;
            }
          }

          v15 = v14 ^ 1;
        }

        else
        {
          v12 = 0;
          v15 = 1;
        }

        if (v15)
        {
          sub_1C563326C(v56, v49);
          sub_1C5763EB8();
          v16 = sub_1C563E40C();
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = sub_1C563E420();
          v25 = v24;
          sub_1C563E430(&v48);
          sub_1C563E43C(v49, &v48, &type metadata for AnyCompositionalStackLayoutItem, &v50, v16, v18, v20, v22, v23, v25);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            v3 = sub_1C584FB90();
            goto LABEL_3;
          }

          if (v12 >= *(v47 + 16))
          {
            goto LABEL_34;
          }

          sub_1C56466CC(&v46[12 * v12], &v50, &qword_1EC16D8C8, &qword_1C58677D0);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C5763984(0, v5[2] + 1, 1, v5);
        }

        v26 = v44;
        v28 = v5[2];
        v27 = v5[3];
        if (v28 >= v27 >> 1)
        {
          v5 = sub_1C5763984((v27 > 1), v28 + 1, 1, v5);
        }

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v5[2] = v28 + 1;
        v29 = &v5[12 * v28];
        v30 = v51;
        v29[2] = v50;
        v29[3] = v30;
        v31 = v52;
        v32 = v53;
        v33 = v55;
        v29[6] = v54;
        v29[7] = v33;
        v29[4] = v31;
        v29[5] = v32;
        ++v4;
        sub_1C5763E64(v56);
        if (v4 == v26)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_37:
    v40 = 0;
    v39 = 236;
    result = sub_1C584FD00();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v34 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0x68))(&v50);
    v36 = *(v35 + 24);
    *(v35 + 24) = v5;

    return v34(&v50, 0);
  }

  return result;
}

uint64_t sub_1C5761598@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57615FC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);

  return v3(v4);
}

uint64_t (*sub_1C5761668(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C5760DE4();
  return sub_1C57616B0;
}

uint64_t sub_1C57616B0(unint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1C5761028(*a1);
  }

  v4 = *a1;

  sub_1C5761028(v5);
}

uint64_t sub_1C5761708(uint64_t a1)
{
  v2 = v1;
  v43[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v3 = swift_dynamicCast();
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    sub_1C5632F90(&v40, v38);
    sub_1C5632F90(v38, v43);
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1C5625230(&v40, &qword_1EC170F70, &qword_1C58791B8);
    type metadata accessor for CompositionalStackLayout.GroupRef();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      result = sub_1C584FD00();
      __break(1u);
      return result;
    }

    v6 = *((*v4 & *v5) + 0x58);
    v43[3] = &_s5GroupVN;
    v43[4] = &off_1F44C2640;
    v43[0] = swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v6(v7);
    swift_unknownObjectRelease();
  }

  sub_1C5633310(v43, v38);
  v8 = sub_1C5633374(v38, v39);
  (*((*v4 & *v1) + 0x58))(&v40, v8);
  v9 = *(&v41 + 1);

  sub_1C5763FE4(&v40);
  v10 = (v9 + 4);
  v11 = -v9[2];
  v12 = -1;
  v13 = &qword_1EC16D8C8;
  while (v11 + v12 != -1)
  {
    if (++v12 >= v9[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    v14 = v10 + 96;
    sub_1C56466CC(v10, v38, &qword_1EC16D8C8, &qword_1C58677D0);
    v15 = sub_1C563337C(v38, v39);
    sub_1C5625230(v38, &qword_1EC16D8C8, &qword_1C58677D0);
    v10 = v14;
    if (v15)
    {

      goto LABEL_14;
    }
  }

  sub_1C563326C(v39, v37);
  sub_1C5763EB8();
  v16 = sub_1C563E40C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1C563E420();
  v25 = v24;
  sub_1C563E430(&v36);
  sub_1C563E43C(v37, &v36, &type metadata for AnyCompositionalStackLayoutItem, v38, v16, v18, v20, v22, v23, v25);
  v2 = (*((*v4 & *v2) + 0x68))(v37);
  v13 = v26;
  v9 = v26[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[3] = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

LABEL_16:
  v9 = sub_1C5763984(0, v9[2] + 1, 1, v9);
  v13[3] = v9;
LABEL_11:
  v29 = v9[2];
  v28 = v9[3];
  if (v29 >= v28 >> 1)
  {
    v9 = sub_1C5763984((v28 > 1), v29 + 1, 1, v9);
    v13[3] = v9;
  }

  v9[2] = v29 + 1;
  v30 = &v9[12 * v29];
  v31 = v38[1];
  v30[2] = v38[0];
  v30[3] = v31;
  v32 = v38[2];
  v33 = v38[3];
  v34 = v38[5];
  v30[6] = v38[4];
  v30[7] = v34;
  v30[4] = v32;
  v30[5] = v33;
  (v2)(v37, 0);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1C5763E64(v39);
}

uint64_t sub_1C5761B60(uint64_t a1)
{
  *&v15[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    sub_1C5632F90(&v17, v16);
    sub_1C5632F90(v16, &v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1C5625230(&v17, &qword_1EC170F70, &qword_1C58791B8);
    type metadata accessor for CompositionalStackLayout.GroupRef();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = *((*v3 & *v4) + 0x58);
    *(&v18 + 1) = &_s5GroupVN;
    v19 = &off_1F44C2640;
    *&v17 = swift_allocObject();
    v6 = swift_unknownObjectRetain();
    v5(v6);
    swift_unknownObjectRelease();
  }

  sub_1C5633310(&v17, v15);
  v7 = sub_1C5633374(v15, v16);
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = (*((*v3 & *v1) + 0x68))(v15);
  v11 = v10;
  v12 = sub_1C5763AE0(sub_1C5764ED8);
  v13 = *(*(v11 + 24) + 16);
  if (v13 >= v12)
  {
    sub_1C5764124(v12, v13);
    v9(v15, 0);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    return sub_1C5763E64(v16);
  }

  __break(1u);
LABEL_8:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void sub_1C5761E0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5761E84@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v14[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v4 = swift_dynamicCast();
  v5 = MEMORY[0x1E69E7D40];
  if (v4)
  {
    sub_1C5632F90(&v17, &v15);
    sub_1C5632F90(&v15, &v17);
LABEL_5:
    sub_1C5633310(&v17, &v15);
    v9 = sub_1C5633374(&v15, v14);
    (*((*v5 & *v2) + 0x58))(&v15, v9);
    v10 = v16;

    v11 = sub_1C5763FE4(&v15);
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1C575D58C(sub_1C5764ED8, v10, a2);

    __swift_destroy_boxed_opaque_existential_1(&v17);
    return sub_1C5763E64(v14);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_1C5625230(&v17, &qword_1EC170F70, &qword_1C58791B8);
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *((*v5 & *v6) + 0x58);
    *(&v18 + 1) = &_s5GroupVN;
    v19 = &off_1F44C2640;
    *&v17 = swift_allocObject();
    v8 = swift_unknownObjectRetain();
    v7(v8);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5762108(uint64_t a1, uint64_t a2)
{
  v50[0] = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v4 = swift_dynamicCast();
  v5 = MEMORY[0x1E69E7D40];
  v40 = a1;
  if (v4)
  {
    sub_1C5632F90(&v42, v48);
    sub_1C5632F90(v48, v51);
    goto LABEL_5;
  }

  *&v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_1C5625230(&v42, &qword_1EC170F70, &qword_1C58791B8);
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *((*v5 & *v6) + 0x58);
    v51[3] = &_s5GroupVN;
    v51[4] = &off_1F44C2640;
    v51[0] = swift_allocObject();
    v8 = swift_unknownObjectRetain();
    v7(v8);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C5633310(v51, v48);
    v9 = sub_1C5633374(v48, v49);
    (*((*v5 & *v2) + 0x58))(v50, v9);
    v10 = v50[3];

    v11 = sub_1C5763FE4(v50);
    MEMORY[0x1EEE9AC00](v11, v12);
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = (v10 + 32);
      while (1)
      {
        v16 = sub_1C5764ED8(v15);
        if (v16)
        {
          break;
        }

        ++v14;
        v15 += 12;
        if (v13 == v14)
        {
          v14 = 0;
          break;
        }
      }

      v17 = v16 ^ 1;
    }

    else
    {
      v14 = 0;
      v17 = 1;
    }

    v18 = v17 & 1;

    if (v18)
    {
      swift_unknownObjectRelease();
      v19 = &qword_1EC170F50;
      v20 = &qword_1C5879198;
      v21 = a1;
LABEL_23:
      sub_1C5625230(v21, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v51);
      return sub_1C5763E64(v49);
    }

    sub_1C56466CC(a1, &v42, &qword_1EC170F50, &qword_1C5879198);
    if (!*(&v43 + 1))
    {
      sub_1C5625230(&v42, &qword_1EC170F50, &qword_1C5879198);
      sub_1C563326C(v49, &v42);
      sub_1C5763EB8();
      v27 = sub_1C563E40C();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = sub_1C563E420();
      v36 = v35;
      sub_1C563E430(&v41);
      sub_1C563E43C(&v42, &v41, &type metadata for AnyCompositionalStackLayoutItem, v48, v27, v29, v31, v33, v34, v36);
      v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(&v42);
      v24 = v37;
      v25 = *(v37 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 24) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_21:
        if (v14 < v25[2])
        {
          sub_1C5763F3C(v48, &v25[12 * v14 + 4]);
          v22(&v42, 0);
          swift_unknownObjectRelease();
          v19 = &qword_1EC170F50;
          v20 = &qword_1C5879198;
          v21 = v40;
          goto LABEL_23;
        }

        goto LABEL_29;
      }

LABEL_27:
      v25 = sub_1C5763ACC(v25);
      *(v24 + 24) = v25;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    v48[2] = v44;
    v48[3] = v45;
    v48[4] = v46;
    v48[5] = v47;
    v48[0] = v42;
    v48[1] = v43;
    v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(&v42);
    v24 = v23;
    v25 = *(v23 + 24);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 24) = v25;
    if (v26)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = sub_1C5763ACC(v25);
      *(v24 + 24) = v25;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_17:
        if (v14 < v25[2])
        {
          sub_1C5764E18(v48, &v25[12 * v14 + 4]);
          v22(&v42, 0);
          swift_unknownObjectRelease();
          sub_1C5625230(v40, &qword_1EC170F50, &qword_1C5879198);
          v19 = &qword_1EC16D8C8;
          v20 = &qword_1C58677D0;
          v21 = v48;
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void (*sub_1C576269C(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xD0uLL);
  }

  *a1 = v5;
  *(v5 + 192) = a2;
  *(v5 + 200) = v2;
  sub_1C5761E84(a2, v5);
  return sub_1C576271C;
}

void sub_1C576271C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 192);
  v3 = *(*a1 + 200);
  if (a2)
  {
    sub_1C56466CC(*a1, v2 + 96, &qword_1EC170F50, &qword_1C5879198);
    swift_unknownObjectRetain();
    sub_1C5762108(v2 + 96, v4);
    sub_1C5625230(v2, &qword_1EC170F50, &qword_1C5879198);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C5762108(v2, v4);
  }

  free(v2);
}

double sub_1C57627CC(uint64_t a1)
{
  sub_1C5761E84(a1, &v7);
  if (v8)
  {
    v1 = v9;
    v2 = &v10;
  }

  else
  {
    v1 = *MEMORY[0x1E69DC5C0];
    v3 = *(MEMORY[0x1E69DC5C0] + 8);
    v2 = (MEMORY[0x1E69DC5C0] + 24);
    v4 = *(MEMORY[0x1E69DC5C0] + 16);
  }

  v5 = *v2;
  sub_1C5625230(&v7, &qword_1EC170F50, &qword_1C5879198);
  return v1;
}

uint64_t sub_1C5762920(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1C576269C(v12, a1);
  if (*(v9 + 24))
  {
    *(v9 + 40) = a2;
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
    *(v9 + 64) = a5;
  }

  return (v10)(v12, 0);
}

double sub_1C5762A44(uint64_t a1)
{
  sub_1C5761E84(a1, &v5);
  v1 = *(MEMORY[0x1E69DE258] + 8);
  if (v6)
  {
    v2 = v7;
  }

  else
  {
    v2 = *MEMORY[0x1E69DE258];
  }

  if (!v6)
  {
    v3 = *(MEMORY[0x1E69DE258] + 8);
  }

  sub_1C5625230(&v5, &qword_1EC170F50, &qword_1C5879198);
  return v2;
}

uint64_t sub_1C5762B54(uint64_t a1, double a2, double a3)
{
  v6 = sub_1C576269C(v8, a1);
  if (*(v5 + 24))
  {
    *(v5 + 72) = a2;
    *(v5 + 80) = a3;
  }

  return (v6)(v8, 0);
}

BOOL sub_1C5762C50(uint64_t a1)
{
  sub_1C5761E84(a1, &v7);
  if (v8)
  {
    v2 = v9;
    v3 = sub_1C5625230(&v7, &qword_1EC170F50, &qword_1C5879198);
    v5[1] = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v6, v3);
    sub_1C5763FE4(v6);
    v5[0] = v6[5];
    sub_1C5724040(v5, &v10);
    return (~v10 & 0xFFFFFFFE) != 0;
  }

  else
  {
    sub_1C5625230(&v7, &qword_1EC170F50, &qword_1C5879198);
    return 0;
  }
}

uint64_t sub_1C5762D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C576269C(v6, a1);
  if (*(v3 + 24))
  {
    *(v3 + 88) = a2;
  }

  return (v4)(v6, 0);
}

uint64_t sub_1C5762DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  v9 = sub_1C576269C(v11, a3);
  if (*(v8 + 24))
  {
    *(v8 + 88) = a4;
  }

  v9(v11, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5762E58(uint64_t a1)
{
  v2 = v1;
  sub_1C5761E84(a1, &v15);
  v3 = MEMORY[0x1E69E7D40];
  if (*(&v16 + 1))
  {
    v4 = v21;
    v5 = sub_1C5625230(&v15, &qword_1EC170F50, &qword_1C5879198);
    v9[1] = v4;
    (*((*v3 & *v2) + 0x58))(v10, v5);
    sub_1C5763FE4(v10);
    v9[0] = *(&v11 + 1);
    v6 = sub_1C5724040(v9, &v22);
    v7 = v22;
    if ((~v22 & 0xFFFFFFFE) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1C5625230(&v15, &qword_1EC170F50, &qword_1C5879198);
  }

  (*((*v3 & *v2) + 0x58))(v10, v6);
  v7 = *(&v11 + 1);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v15 = v10[0];
  v16 = v10[1];
  sub_1C5763FE4(&v15);
LABEL_6:
  *&v15 = v7;
  return sub_1C57243F4();
}

uint64_t sub_1C5763018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5761E84(a2, &v20);
  v6 = MEMORY[0x1E69E7D40];
  if (!*(&v21 + 1))
  {
    v9 = sub_1C5625230(&v20, &qword_1EC170F50, &qword_1C5879198);
    goto LABEL_5;
  }

  v7 = v26;
  v8 = sub_1C5625230(&v20, &qword_1EC170F50, &qword_1C5879198);
  v14[1] = v7;
  (*((*v6 & *v3) + 0x58))(v15, v8);
  sub_1C5763FE4(v15);
  v14[0] = *(&v16 + 1);
  v9 = sub_1C5724040(v14, &v27);
  v10 = v27;
  if ((~v27 & 0xFFFFFFFE) == 0)
  {
LABEL_5:
    (*((*v6 & *v3) + 0x58))(v15, v9);
    v10 = *(&v16 + 1);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v20 = v15[0];
    v21 = v15[1];
    sub_1C5763FE4(&v20);
  }

  *&v15[0] = v10;
  sub_1C572440C(a1);
  v12 = sub_1C576269C(&v20, a2);
  if (*(v11 + 24))
  {
    *(v11 + 88) = *&v15[0];
  }

  return (v12)(&v20, 0);
}

uint64_t sub_1C576324C(uint64_t a1)
{
  sub_1C5761E84(a1, &v8);
  if (!v9)
  {
    sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
    goto LABEL_5;
  }

  v2 = v10;
  v3 = sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
  v6[1] = v2;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v7, v3);
  sub_1C5763FE4(v7);
  v6[0] = v7[5];
  sub_1C5724040(v6, &v11);
  if ((~v11 & 0xFFFFFFFE) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  *&v8 = v11;
  v4 = sub_1C5724830();
  return v4 & 1;
}

uint64_t sub_1C5763350(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t *sub_1C57633B0(char a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5761E84(a2, v13);
  if (!v14)
  {
    return sub_1C5625230(v13, &qword_1EC170F50, &qword_1C5879198);
  }

  v6 = v15;
  v7 = sub_1C5625230(v13, &qword_1EC170F50, &qword_1C5879198);
  v11[1] = v6;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x58))(v12, v7);
  sub_1C5763FE4(v12);
  v11[0] = v12[5];
  result = sub_1C5724040(v11, &v16);
  if ((~v16 & 0xFFFFFFFE) != 0)
  {
    v12[0] = v16;
    sub_1C5724854(a1 & 1);
    v10 = sub_1C576269C(v13, a2);
    if (*(v9 + 24))
    {
      *(v9 + 88) = v12[0];
    }

    return (v10)(v13, 0);
  }

  return result;
}

double sub_1C5763570(uint64_t a1)
{
  sub_1C5761E84(a1, &v7);
  if (v8)
  {
    v2 = v9;
    v3 = sub_1C5625230(&v7, &qword_1EC170F50, &qword_1C5879198);
    v5[1] = v2;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v6, v3);
    sub_1C5763FE4(v6);
    v5[0] = v6[5];
    sub_1C5724040(v5, &v10);
    if ((~v10 & 0xFFFFFFFE) != 0)
    {
      *&v7 = v10;
      *&result = sub_1C5724800();
      return result;
    }
  }

  else
  {
    sub_1C5625230(&v7, &qword_1EC170F50, &qword_1C5879198);
  }

  return 0.0;
}

uint64_t *sub_1C57636B0(uint64_t a1, float a2)
{
  v3 = v2;
  sub_1C5761E84(a1, v13);
  if (!v14)
  {
    return sub_1C5625230(v13, &qword_1EC170F50, &qword_1C5879198);
  }

  v6 = v15;
  v7 = sub_1C5625230(v13, &qword_1EC170F50, &qword_1C5879198);
  v11[1] = v6;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x58))(v12, v7);
  sub_1C5763FE4(v12);
  v11[0] = v12[5];
  result = sub_1C5724040(v11, &v16);
  if ((~v16 & 0xFFFFFFFE) != 0)
  {
    v12[0] = v16;
    sub_1C57248B8(a2);
    v10 = sub_1C576269C(v13, a1);
    if (*(v9 + 24))
    {
      *(v9 + 88) = v12[0];
    }

    return (v10)(v13, 0);
  }

  return result;
}

id CompositionalStackLayout.GroupRef.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompositionalStackLayout.GroupRef.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompositionalStackLayout.GroupRef();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C5763984(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170FE0, &unk_1C58792B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5763AE0(uint64_t (*a1)(void *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 16; ; i += 12)
    {
      result = a1(&v4[i - 12]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v10 = v1 + 1;
        if (!__OFADD__(v1, 1))
        {
          v11 = *v5;
          if (v10 == *v5)
          {
            return v1;
          }

          while (v10 < v11)
          {
            v17 = v4;
            sub_1C56466CC(&v4[i], v16, &qword_1EC16D8C8, &qword_1C58677D0);
            v12 = a1(v16);
            result = sub_1C5625230(v16, &qword_1EC16D8C8, &qword_1C58677D0);
            if (v12)
            {
              v4 = v17;
            }

            else
            {
              if (v10 == v1)
              {
                v4 = v17;
              }

              else
              {
                v4 = v17;
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                v13 = *v5;
                if (v1 >= *v5)
                {
                  goto LABEL_30;
                }

                result = sub_1C56466CC(&v17[12 * v1 + 4], v16, &qword_1EC16D8C8, &qword_1C58677D0);
                if (v10 >= v13)
                {
                  goto LABEL_31;
                }

                sub_1C56466CC(&v4[i], v15, &qword_1EC16D8C8, &qword_1C58677D0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_1C5763ACC(v4);
                }

                result = sub_1C5763F3C(v15, &v4[12 * v1 + 4]);
                if (v10 >= v4[2])
                {
                  goto LABEL_32;
                }

                result = sub_1C5763F3C(v16, &v4[i]);
                *v14 = v4;
              }

              ++v1;
            }

            ++v10;
            v5 = (v4 + 2);
            v11 = v4[2];
            i += 12;
            if (v10 == v11)
            {
              return v1;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        __break(1u);
        return result;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_1C5763D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v16 = *(a2 + 56);
  v17 = *(a2 + 72);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
LABEL_12:
      v13 = 0;
      return v13 & 1;
    }
  }

  else
  {
    v12 = sub_1C584FDC0();
    v13 = 0;
    if ((v12 & 1) == 0 || v2 != v8)
    {
      return v13 & 1;
    }
  }

  if ((sub_1C575CE78(v3, v7) & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = v10;
  v21 = v4;
  if ((static StackLayout.Distribution.== infix(_:_:)(&v21, &v20) & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = v9;
  v21 = v5;
  v14 = static StackLayout.Alignment.== infix(_:_:)(&v21, &v20);
  v13 = 0;
  if ((v14 & 1) != 0 && v6 == v11)
  {
    v13 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v18, v16), vceqq_f64(v19, v17))));
  }

  return v13 & 1;
}

unint64_t sub_1C5763EB8()
{
  result = qword_1ED77E868;
  if (!qword_1ED77E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E868);
  }

  return result;
}

uint64_t sub_1C5763F3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5764038(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5764124(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1C5763984(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1C5764038(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1C57641E8()
{
  result = qword_1EC170F78;
  if (!qword_1EC170F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170F78);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C5764260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C57642A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5764E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5764E88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16D8C8, &qword_1C58677D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5764EF4()
{
  type metadata accessor for MUWebBasedPlacecardImageDataProvider();
  v0 = swift_allocObject();
  result = sub_1C5764FC0();
  *(v0 + 16) = result;
  qword_1EC18F7F8 = v0;
  return result;
}

uint64_t sub_1C5764F34()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1C5764FC0();
  return v0;
}

uint64_t *sub_1C5764F70()
{
  if (qword_1EC174CD0 != -1)
  {
    swift_once();
  }

  return &qword_1EC18F7F8;
}

uint64_t sub_1C5764FC0()
{
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = GEOConfigGetUInteger();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = [objc_allocWithZone(MUAMSResultCache) initWithAppAdamIdCacheCount:v1 appAdamIdTimeToLive:v2 bundleIdCacheCount:v3 bundleIdTimeToLive:result];
    v5 = [objc_allocWithZone(MUAMSResultProvider) initWithCache_];

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_1C57650B8()
{
  result = 150.0;
  qword_1EC190478 = 0x4062C00000000000;
  unk_1EC190480 = 0x405C000000000000;
  return result;
}

uint64_t sub_1C57650E0(uint64_t a1)
{
  v94[4] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C584EFF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v93 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v89 - v14;
  v16 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v92 = (v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v89 - v22;
  sub_1C5695BCC((v89 - v22));
  sub_1C584EFE0();
  v89[2] = sub_1C576751C();
  v24 = sub_1C584F120();
  v26 = v25;
  v89[1] = v8;
  v27 = *(v8 + 8);
  v28 = v24;
  v90 = v27;
  v91 = v7;
  v27(v15, v7);
  sub_1C5767884(v23, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  v29 = objc_opt_self();
  v30 = sub_1C584EAC0();
  v94[0] = 0;
  v31 = [v29 JSONObjectWithData:v30 options:0 error:v94];

  v32 = v26;
  if (!v31)
  {
    v59 = v94[0];
    v60 = sub_1C584E950();

    swift_willThrow();
    sub_1C566DD84(v28, v26);

LABEL_11:
    v61 = v91;
LABEL_14:
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v62 = sub_1C584F2C0();
    __swift_project_value_buffer(v62, qword_1EC18FA20);
    sub_1C57678E4(a1, v6, type metadata accessor for WebPlacecardBridge.MUIconArgument);
    v63 = sub_1C584F2A0();
    v64 = sub_1C584F9B0();
    if (os_log_type_enabled(v63, v64))
    {
      v91 = v61;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v94[0] = v66;
      *v65 = 136315138;
      sub_1C5695BCC(v92);
      sub_1C584EFE0();
      v67 = sub_1C584F110();
      v69 = v68;
      v90(v93, v91);
      sub_1C5767884(v92, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
      sub_1C5767884(v6, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v70 = sub_1C5649518(v67, v69, v94);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1C5620000, v63, v64, "fail to decode argument.styleAttributes: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1C694B7A0](v66, -1, -1);
      MEMORY[0x1C694B7A0](v65, -1, -1);
    }

    else
    {

      sub_1C5767884(v6, type metadata accessor for WebPlacecardBridge.MUIconArgument);
    }

    goto LABEL_19;
  }

  v33 = v28;
  v34 = v94[0];
  sub_1C584FB30();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171090, &unk_1C58792C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C566DD84(v28, v32);
    goto LABEL_11;
  }

  v35 = objc_allocWithZone(MEMORY[0x1E69A25E0]);
  v36 = sub_1C584F5C0();

  v37 = [v35 initWithDictionary_];

  if (!v37)
  {
LABEL_13:
    sub_1C566DD84(v28, v32);
    v61 = v91;
    goto LABEL_14;
  }

  v38 = v37;
  v39 = [objc_allocWithZone(MEMORY[0x1E69A25D8]) init];
  if (!v39)
  {

    goto LABEL_13;
  }

  v40 = v39;
  v41 = sub_1C5695D30();
  v42 = sub_1C5695D58();
  [v40 setKey_];
  [v40 setValue_];
  [v37 addAttribute_];
  v43 = [objc_allocWithZone(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes_];
  v44 = sub_1C5695D98();
  v45 = objc_opt_self();
  if (v44)
  {
    v46 = sub_1C5695D80();
    v47 = [objc_opt_self() mainScreen];
    [v47 nativeScale];
    v49 = v48;

    v50 = [v45 imageForIconID:v46 contentScale:1 sizeGroup:0 nightMode:v49];
    if (v50)
    {
      v51 = v50;
      v52 = UIImagePNGRepresentation(v50);
      if (v52)
      {
        v53 = v52;
        v54 = sub_1C584EAE0();
        v55 = v40;
        v57 = v56;

        sub_1C566DCD4(v54, v57);
        v58 = sub_1C584EAD0();
        sub_1C566DD84(v33, v32);

LABEL_24:
        sub_1C566DD84(v54, v57);
        sub_1C566DD84(v54, v57);
        result = v58;
        goto LABEL_20;
      }

      sub_1C566DD84(v33, v32);

      goto LABEL_19;
    }

    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v82 = sub_1C584F2C0();
    __swift_project_value_buffer(v82, qword_1EC18FA20);
    v83 = sub_1C584F2A0();
    v84 = sub_1C584F9B0();
    if (!os_log_type_enabled(v83, v84))
    {
LABEL_34:
      sub_1C566DD84(v33, v32);

      goto LABEL_19;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "fetched nil image for accolade icon from MKIconManager";
LABEL_33:
    _os_log_impl(&dword_1C5620000, v83, v84, v86, v85, 2u);
    MEMORY[0x1C694B7A0](v85, -1, -1);
    goto LABEL_34;
  }

  v73 = [objc_opt_self() mainScreen];
  [v73 nativeScale];
  v75 = v74;

  LOBYTE(v88) = v41 & 1;
  v76 = [v45 imageForStyle:v43 size:4 forScale:1 format:v42 & 1 transparent:0 transitMode:0 isCarplay:v75 nightMode:v88];
  if (!v76)
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v87 = sub_1C584F2C0();
    __swift_project_value_buffer(v87, qword_1EC18FA20);
    v83 = sub_1C584F2A0();
    v84 = sub_1C584F9B0();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_34;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "fetched nil image from MKIconManager";
    goto LABEL_33;
  }

  v77 = v76;
  v78 = UIImagePNGRepresentation(v76);
  if (v78)
  {
    v79 = v78;
    v54 = sub_1C584EAE0();
    v80 = v40;
    v57 = v81;

    sub_1C566DCD4(v54, v57);
    v58 = sub_1C584EAD0();
    sub_1C566DD84(v33, v32);

    goto LABEL_24;
  }

  sub_1C566DD84(v33, v32);

LABEL_19:
  result = 0;
LABEL_20:
  v72 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C5765B28(void *a1)
{
  if ([a1 type] == 3 || !objc_msgSend(a1, sel_labelArtwork))
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v18 = sub_1C584F2C0();
    __swift_project_value_buffer(v18, qword_1EC18FA20);
    v19 = a1;
    v11 = sub_1C584F2A0();
    v20 = sub_1C584F9B0();

    if (os_log_type_enabled(&v11->super, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_1C5620000, &v11->super, v20, "It's a separator or empty labelArtwork:%@", v21, 0xCu);
      sub_1C5625230(v22, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v22, -1, -1);
      MEMORY[0x1C694B7A0](v21, -1, -1);
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 mainScreen];
  v7 = [v6 traitCollection];

  v8 = [v7 userInterfaceStyle];
  v9 = [objc_opt_self() sharedInstance];
  result = [a1 labelArtwork];
  if (result)
  {
    v11 = [v9 imageForArtwork:result size:6 featureType:2 scale:v8 == 2 nightMode:v5];
    swift_unknownObjectRelease();
    if (!v11)
    {

      return 0;
    }

    v12 = UIImagePNGRepresentation(v11);
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C584EAE0();
      v16 = v15;

      sub_1C566DCD4(v14, v16);
      v17 = sub_1C584EAD0();

      sub_1C566DD84(v14, v16);
      sub_1C566DD84(v14, v16);
      return v17;
    }

LABEL_11:
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1C5765E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    [v9 screenScale];
    v12 = v11;

    v13 = [objc_allocWithZone(MUAMSResultProviderFetchOptions) initWithDisplayScale:4 artworkSize:v12 source:{48.0, 48.0}];
    v14 = *(v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C5867900;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_1C584F750();

    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v17 = sub_1C584F9F0();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v20[4] = sub_1C5767574;
    v20[5] = v18;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1C5766700;
    v20[3] = &block_descriptor_13;
    v19 = _Block_copy(v20);
    sub_1C5633060(a3);

    [v14 fetchResultsForAdamIds:v16 options:v13 callbackQueue:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5766048(unint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v73 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v72 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v68 - v18;
  v20 = sub_1C584EA90();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v70 = *(v26 - 8);
  v71 = v26;
  v27 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
    if (sub_1C584FB90())
    {
      goto LABEL_5;
    }

LABEL_20:
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v58 = sub_1C584F2C0();
    __swift_project_value_buffer(v58, qword_1EC18FA20);
    v59 = a2;
    v60 = sub_1C584F2A0();
    v61 = sub_1C584F9B0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      if (a2)
      {
        v64 = a2;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        v66 = v65;
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      *(v62 + 4) = v65;
      *v63 = v66;
      _os_log_impl(&dword_1C5620000, v60, v61, "empty fetchedResult or error occurs: %@", v62, 0xCu);
      sub_1C5625230(v63, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v63, -1, -1);
      MEMORY[0x1C694B7A0](v62, -1, -1);
    }

    if (a3)
    {
      v67 = v72;
      (*(v70 + 56))(v72, 1, 1, v71);
      a3(v67);
      sub_1C5625230(v67, &qword_1EC170A90, &unk_1C58783D0);
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_5:
  v69 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1C694A320](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v31 = *(a1 + 32);
  }

  v32 = v31;
  sub_1C5697020(v30);
  v33 = [v32 identifier];
  v34 = sub_1C584F660();
  v36 = v35;

  sub_1C569A78C(v34, v36);
  v37 = [v32 displayName];
  v38 = sub_1C584F660();
  v40 = v39;

  sub_1C569A7A4(v38, v40);
  v41 = [v32 url];
  sub_1C584EA50();

  v42 = sub_1C584EA00();
  v44 = v43;
  v68 = *(v21 + 8);
  v68(v25, v20);
  sub_1C569A7BC(v42, v44);
  v45 = [v32 subtitle];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1C584F660();
    v49 = v48;

    sub_1C569A7EC(v47, v49);
  }

  v50 = [v32 artworkURL];
  if (v50)
  {
    v51 = v50;
    sub_1C584EA50();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  (*(v21 + 56))(v16, v52, 1, v20);
  sub_1C5767814(v16, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C5625230(v19, &unk_1EC16E660, &unk_1C58685F0);
  }

  else
  {
    v53 = sub_1C584EA00();
    v55 = v54;
    v68(v19, v20);
    sub_1C569A7D4(v53, v55);
  }

  sub_1C569A804([v32 isAppInstalled]);
  v56 = v69;
  if (v69)
  {
    v57 = v72;
    sub_1C57678E4(v30, v72, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    (*(v70 + 56))(v57, 0, 1, v71);
    v56(v57);

    sub_1C5625230(v57, &qword_1EC170A90, &unk_1C58783D0);
    sub_1C5767884(v30, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }

  else
  {
    sub_1C5767884(v30, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }
}

uint64_t sub_1C5766700(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1C5626E40(0, &qword_1EC170FF0, 0x1E69A1B60);
    v4 = sub_1C584F770();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_1C57667A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v70 - v11;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5697200(v17);
  v18 = *(**sub_1C567A818() + 96);

  v19 = v18(a1, a2, a3);

  if (!v19)
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v52 = sub_1C584F2C0();
    __swift_project_value_buffer(v52, qword_1EC18FA20);
    v53 = sub_1C584F2A0();
    v54 = sub_1C584F9B0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1C5620000, v53, v54, "fetched empty attribution", v55, 2u);
      MEMORY[0x1C694B7A0](v55, -1, -1);
    }

    if (!a4)
    {
      return sub_1C5767884(v17, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    }

    (*(v72 + 56))(v12, 1, 1, v73);
    a4(v12);
    goto LABEL_27;
  }

  result = [v19 providerName];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v21 = result;
  v22 = sub_1C584F660();
  v24 = v23;

  sub_1C569A864(v22, v24);
  result = [v19 providerID];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = result;
  v26 = sub_1C584F660();
  v28 = v27;

  sub_1C569A84C(v26, v28);
  v29 = [v19 attributionURLs];
  if (!v29 || (v30 = v29, v31 = sub_1C584F770(), v30, v32 = sub_1C5766D78(v31), , !v32))
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v71 = a4;
  v33 = *v17;

  *v17 = v32;
  v34 = objc_opt_self();
  v35 = &selRef_setHideChevron_;
  result = [v34 sharedInstance];
  if (!result)
  {
    goto LABEL_32;
  }

  v36 = result;
  v37 = &selRef_preferredTitleLabelFont;
  [result screenScale];
  v39 = v38;

  v40 = [v19 providerLogoImageForScale_];
  if (v40)
  {
    v41 = v40;
    v42 = UIImagePNGRepresentation(v40);
    if (v42)
    {
      v43 = v42;
      v44 = sub_1C584EAE0();
      v46 = v45;

      sub_1C566DCD4(v44, v46);
      v47 = sub_1C584EAD0();
      v49 = v48;
      sub_1C566DD84(v44, v46);
      v50 = v44;
      v37 = &selRef_preferredTitleLabelFont;
      v51 = v46;
      v35 = &selRef_setHideChevron_;
      sub_1C566DD84(v50, v51);
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    sub_1C569A87C(v47, v49);
  }

  result = [v34 v35[488]];
  if (result)
  {
    v56 = result;
    [result v37[209]];
    v58 = v57;

    v59 = [v19 providerSnippetLogoImageForScale_];
    v60 = v71;
    if (v59)
    {
      v61 = v59;
      v62 = UIImagePNGRepresentation(v59);
      if (v62)
      {
        v63 = v62;
        v64 = sub_1C584EAE0();
        v70 = v12;
        v66 = v65;

        sub_1C566DCD4(v64, v66);
        v67 = sub_1C584EAD0();
        v69 = v68;
        sub_1C566DD84(v64, v66);
        v12 = v70;
        sub_1C566DD84(v64, v66);
      }

      else
      {
        v67 = 0;
        v69 = 0xE000000000000000;
      }

      sub_1C569A894(v67, v69);
    }

    if (!v60)
    {

      return sub_1C5767884(v17, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    }

    sub_1C57678E4(v17, v12, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    (*(v72 + 56))(v12, 0, 1, v73);
    v60(v12);

LABEL_27:
    sub_1C5625230(v12, &unk_1EC170A60, &qword_1C586B0E0);
    return sub_1C5767884(v17, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C5766D78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C563B144(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1C56465F8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C563B144((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1C5766E8C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [objc_opt_self() sharedInstance];
  v18 = sub_1C584F630();
  v19 = [v17 bestAttributionForPublisher_];

  if (v19)
  {
    v20 = objc_opt_self();
    v21 = [v19 logoIdentifier];
    v22 = [objc_opt_self() mainScreen];
    [v22 scale];
    v24 = v23;

    v25 = [v20 imageForIconID:v21 contentScale:1 sizeGroup:0 nightMode:v24];
    if (v25)
    {
      v26 = v25;
      v27 = UIImagePNGRepresentation(v25);
      if (v27)
      {
        v38[1] = a4;
        v28 = v27;
        v29 = sub_1C584EAE0();
        v31 = v30;

        sub_1C5697200(v16);
        v32 = sub_1C584EAD0();
        sub_1C569A87C(v32, v33);
        if (a3)
        {
          sub_1C57678E4(v16, v10, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
          (*(v12 + 56))(v10, 0, 1, v11);
          a3(v10);

          sub_1C566DD84(v29, v31);
          swift_unknownObjectRelease();
          sub_1C5625230(v10, &unk_1EC170A60, &qword_1C586B0E0);
          sub_1C5767884(v16, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
        }

        else
        {
          sub_1C5767884(v16, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);

          sub_1C566DD84(v29, v31);
          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EC17B018 != -1)
  {
    swift_once();
  }

  v34 = sub_1C584F2C0();
  __swift_project_value_buffer(v34, qword_1EC18FA20);
  v35 = sub_1C584F2A0();
  v36 = sub_1C584F9B0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C5620000, v35, v36, "fail to fetch publisher attribution data", v37, 2u);
    MEMORY[0x1C694B7A0](v37, -1, -1);
  }

  if (a3)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    a3(v10);
    sub_1C5625230(v10, &unk_1EC170A60, &qword_1C586B0E0);
  }
}

void sub_1C57672D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EC18EEF0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1EC190478;
  v7 = unk_1EC190480;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v12[4] = sub_1C5767594;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C5641E50;
  v12[3] = &block_descriptor_9_1;
  v10 = _Block_copy(v12);
  v11 = a1;
  sub_1C5633060(a2);

  [v11 fetchImageTilewWithSize:v10 completion:{v6, v7}];
  _Block_release(v10);
}

uint64_t sub_1C5767444()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C576747C()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA20);
  __swift_project_value_buffer(v0, qword_1EC18FA20);
  type metadata accessor for MUWebBasedPlacecardImageDataProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170FF8, &unk_1C5879318);
  sub_1C584F680();
  return sub_1C584F2B0();
}

unint64_t sub_1C576751C()
{
  result = qword_1EC16D7A8;
  if (!qword_1EC16D7A8)
  {
    type metadata accessor for WebPlacecardBridge.MUStyleAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D7A8);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5767594(void *a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!a2 && a1)
    {
      if (v8)
      {
        v9 = a1;
        v10 = UIImagePNGRepresentation(v9);
        if (v10)
        {
          v11 = v10;
          v12 = sub_1C584EAE0();
          v14 = v13;

          sub_1C566DCD4(v12, v14);
          v15 = sub_1C584EAD0();
          v17 = v16;
          sub_1C566DD84(v12, v14);
          sub_1C566DD84(v12, v14);
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        v8(v15, v17);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_1EC17B018 != -1)
  {
    swift_once();
  }

  v18 = sub_1C584F2C0();
  __swift_project_value_buffer(v18, qword_1EC18FA20);
  v19 = v5;
  v20 = sub_1C584F2A0();
  v21 = sub_1C584F9B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1C5620000, v20, v21, "fail to fetch route snapshot for mapItem: %@", v22, 0xCu);
    sub_1C5625230(v23, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v23, -1, -1);
    MEMORY[0x1C694B7A0](v22, -1, -1);
  }

  if (v8)
  {
    v8(0, 0);
  }
}

uint64_t sub_1C5767814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5767884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C57678E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1C5767954(void *a1)
{
  result = [a1 inactiveLines];
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171000, qword_1C5879328);
  v3 = sub_1C584F770();

  if (v3 >> 62)
  {
    result = sub_1C584FB90();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C694A320](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    v5 = [v4 departuresSequence];
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1C5767A58(void *a1)
{
  result = [a1 inactiveLines];
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171000, qword_1C5879328);
  v3 = sub_1C584F770();

  if (v3 >> 62)
  {
    result = sub_1C584FB90();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return MEMORY[0x1E69E7CC0];
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C694A320](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170890, &qword_1C5879340);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C5867900;
    v6 = swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake(v6, v7);
    *(v5 + 56) = &type metadata for TransitDepartureInactiveLinesRowViewModel;
    *(v5 + 64) = &off_1F44C68A0;
    *(v5 + 32) = v8;
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1C5767B98()
{
  v1 = sub_1C5767954(*v0);
  if (!v1)
  {
    return 0;
  }

  result = [v1 containerDisplayName];
  if (result)
  {
    v3 = result;
    v4 = sub_1C584F660();
    swift_unknownObjectRelease();

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1C5767C18()
{
  v1 = sub_1C5767954(*v0);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v1 containerLabelItems];
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
    v4 = sub_1C584F770();
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5767E3C()
{
  v0 = sub_1C584EA90();
  __swift_allocate_value_buffer(v0, qword_1EC174CB8);
  __swift_project_value_buffer(v0, qword_1EC174CB8);
  sub_1C5626E40(0, &qword_1EC16CF98, 0x1E696AAE8);
  v1 = static NSBundle.mapsUIBundle.getter();
  v2 = sub_1C584F630();
  v3 = sub_1C584F630();
  v4 = sub_1C584F630();
  v5 = [v1 pathForResource:v2 ofType:v3 inDirectory:v4];

  if (v5)
  {
    sub_1C584F660();

    sub_1C584EA10();
  }

  else
  {
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v7 = sub_1C584F2C0();
    __swift_project_value_buffer(v7, qword_1EC18FA98);
    v8 = sub_1C584F2A0();
    v9 = sub_1C584F9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5620000, v8, v9, "BuiltInBundle not found", v10, 2u);
      MEMORY[0x1C694B7A0](v10, -1, -1);
    }

    return sub_1C584EA10();
  }
}

uint64_t static _MUWebBasedPlacecardResourceConfiguration.builtInBundlePath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584EA90();
  v3 = __swift_project_value_buffer(v2, qword_1EC174CB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id _MUWebBasedPlacecardResourceConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MUWebBasedPlacecardResourceConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C5768208()
{
  result = [objc_allocWithZone(type metadata accessor for _MUWebBasedPlacecardResourceManager()) init];
  qword_1EC174CF0 = result;
  return result;
}

id _MUWebBasedPlacecardResourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1C5768270()
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  return &qword_1EC174CF0;
}

id static _MUWebBasedPlacecardResourceManager.shared.getter()
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC174CF0;

  return v1;
}

uint64_t sub_1C5768378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C584F570();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C584F5B0();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v21 = &v31 - v20;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v19);
  v22 = sub_1C584EA90();
  v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
  sub_1C5625230(v21, &unk_1EC16E660, &unk_1C58685F0);
  if (v23 == 1)
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = a2;

    sub_1C5633060(a1);
    sub_1C5768AD0(sub_1C576CE28, v25);
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v27 = sub_1C584F9F0();
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a2;
    v28[4] = v3;
    aBlock[4] = sub_1C576E71C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_14;
    v29 = _Block_copy(aBlock);
    sub_1C5633060(a1);
    v30 = v3;

    sub_1C584F590();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C576DCEC(&qword_1EC16D0E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
    sub_1C5664E38();
    sub_1C584FB50();
    MEMORY[0x1C694A0B0](0, v15, v10, v29);
    _Block_release(v29);

    (*(v34 + 8))(v10, v6);
    return (*(v32 + 8))(v15, v33);
  }
}

uint64_t sub_1C57687C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C584F570();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C584F5B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v26 = sub_1C584F9F0();
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = v18;
    aBlock[4] = sub_1C576E6E8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_28;
    v20 = _Block_copy(aBlock);
    v25 = v11;
    v21 = v20;
    sub_1C5633060(a2);
    v22 = v18;

    sub_1C584F590();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C576DCEC(&qword_1EC16D0E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
    sub_1C5664E38();
    sub_1C584FB50();
    v23 = v26;
    MEMORY[0x1C694A0B0](0, v16, v10, v21);
    _Block_release(v21);

    (*(v6 + 8))(v10, v5);
    return (*(v12 + 8))(v16, v25);
  }

  return result;
}

void sub_1C5768AD0(unint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v50 - v8;
  v10 = sub_1C584F580();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() modernManager];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 activeTileGroup];

  if (!v18 || (v19 = [v18 explicitResources], v18, !v19) || (aBlock[0] = 0, v57 = sub_1C5626E40(0, &qword_1EC16D048, 0x1E69A2460), sub_1C584F760(), v19, (v20 = aBlock[0]) == 0))
  {
    if (qword_1EC17B090 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v53 = v15;
  v54 = v11;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v21 = v20 & 0xFFFFFFFFFFFFFF8;
  v58 = v20;
  if (v20 >> 62)
  {
    v9 = sub_1C584FB90();
    v55 = v10;
    v56 = v2;
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_35:

    v41 = [objc_opt_self() sharedRequester];
    v42 = sub_1C584F750();

    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v44 = v53;
    v43 = v54;
    v45 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x1E69E7FA0], v55);
    v46 = sub_1C584FA20();
    (*(v43 + 8))(v44, v45);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = a1;
    v48[4] = a2;
    aBlock[4] = sub_1C576E694;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C576CC7C;
    aBlock[3] = &block_descriptor_22_0;
    v49 = _Block_copy(aBlock);
    sub_1C5633060(a1);

    [v41 fetchResources:v42 force:0 unpack:1 manifestConfiguration:0 auditToken:0 queue:v46 handler:v49];
    _Block_release(v49);

    return;
  }

  v9 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v55 = v10;
  v56 = v2;
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_7:
  v51 = a1;
  v52 = a2;
  a1 = 0;
  v22 = v58;
  v59 = v58 & 0xC000000000000001;
  while (1)
  {
    if (v59)
    {
      v23 = MEMORY[0x1C694A320](a1, v22);
    }

    else
    {
      if (a1 >= *(v21 + 16))
      {
        goto LABEL_32;
      }

      v23 = *(v22 + 8 * a1 + 32);
    }

    v24 = v23;
    v25 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      break;
    }

    v26 = [v23 filename];
    v27 = GEOCanonicalResourceNameForVersionedName();

    if (v27)
    {
      v28 = v9;
      v29 = v21;
      v30 = sub_1C584F660();
      v32 = v31;

      if (v30 == 0x7261636563616C70 && v32 == 0xED0000736D632E64)
      {

        v21 = v29;
      }

      else
      {
        v34 = sub_1C584FDC0();

        v21 = v29;
        if ((v34 & 1) == 0)
        {

LABEL_23:
          v9 = v28;
          v22 = v58;
          goto LABEL_9;
        }
      }

      sub_1C584FCA0();
      v35 = *(aBlock[0] + 16);
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      goto LABEL_23;
    }

LABEL_9:
    ++a1;
    if (v25 == v9)
    {
      a1 = v51;
      a2 = v52;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_26:
  v36 = sub_1C584F2C0();
  __swift_project_value_buffer(v36, qword_1EC18FA98);
  v37 = sub_1C584F2A0();
  v38 = sub_1C584F9B0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1C5620000, v37, v38, "Fetching resources error", v39, 2u);
    MEMORY[0x1C694B7A0](v39, -1, -1);
  }

  if (a1)
  {
    v40 = sub_1C584EA90();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    (a1)(v9);
    sub_1C5625230(v9, &unk_1EC16E660, &unk_1C58685F0);
  }
}

uint64_t sub_1C5769130(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = sub_1C584EA90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))(result);
    a1(v11);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1C57693F8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C584EA90();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v49 - v16;
  BOOL = GEOConfigGetBOOL();
  v19 = MEMORY[0x1E69E7D40];
  v20 = *MEMORY[0x1E69E7D40] & *v1;
  if (BOOL)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
    v21 = *(v52 + 48);
    if (v21(v17, 1, v4) != 1)
    {
      return (*(v52 + 32))(a1, v17, v4);
    }

    sub_1C584EA10();
    result = (v21)(v17, 1, v4);
    if (result != 1)
    {
      return sub_1C5625230(v17, &unk_1EC16E660, &unk_1C58685F0);
    }

    return result;
  }

  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))() & 1) == 0 && !GEOConfigGetBOOL())
  {
    (*((*v19 & *v1) + 0x98))();
    if ((*(v52 + 48))(v14, 1, v4) == 1)
    {
      sub_1C5625230(v14, &unk_1EC16E660, &unk_1C58685F0);
      (*((*v19 & *v1) + 0x88))(1);
      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v29 = sub_1C584F2C0();
      __swift_project_value_buffer(v29, qword_1EC18FA98);
      v30 = sub_1C584F2A0();
      v31 = sub_1C584F9B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C5620000, v30, v31, "OnlineBundleURL is empty, fall back to built-in URL", v32, 2u);
        MEMORY[0x1C694B7A0](v32, -1, -1);
      }

      return (*(v52 + 16))(a1, v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v4);
    }

    v33 = *(v52 + 32);
    v34 = v33(v8, v14, v4);
    v35 = (*((*v19 & *v1) + 0xB8))(v34);
    v37 = v36;
    v38 = (*((*v19 & *v1) + 0xB0))();
    v40 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v40 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {

LABEL_32:
        (*((*v19 & *v1) + 0x88))(1);
        if (qword_1EC17B090 != -1)
        {
          swift_once();
        }

        v45 = sub_1C584F2C0();
        __swift_project_value_buffer(v45, qword_1EC18FA98);
        v46 = sub_1C584F2A0();
        v47 = sub_1C584F9B0();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1C5620000, v46, v47, "Online bundle is older than built-in bundle, fall back to built-in URL", v48, 2u);
          MEMORY[0x1C694B7A0](v48, -1, -1);
        }

        (*(v52 + 8))(v8, v4);
        return (*(v52 + 16))(a1, v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v4);
      }

      v42 = sub_1C584F630();
      v51 = v33;
      v43 = v42;
      v44 = sub_1C584F630();
      v50 = [v43 compare:v44 options:64];

      v33 = v51;
      if (v50 == 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    return v33(a1, v8, v4);
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v23 = sub_1C584F2C0();
  __swift_project_value_buffer(v23, qword_1EC18FA98);
  v24 = sub_1C584F2A0();
  v25 = sub_1C584F990();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1C5620000, v24, v25, "Using built-in bundle URL", v26, 2u);
    MEMORY[0x1C694B7A0](v26, -1, -1);
  }

  v27 = *(v52 + 16);
  v28 = v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;

  return v27(a1, v28, v4);
}

uint64_t sub_1C5769B94()
{
  v1 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5769C2C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5769C7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5769FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  return sub_1C5754258(v1 + v3, a1);
}

uint64_t sub_1C576A258(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  sub_1C576DC7C(a1, v1 + v8);
  swift_endAccess();
  sub_1C5754258(v1 + v8, v7);
  v9 = sub_1C584EA90();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) == 1;
  sub_1C5625230(v7, &unk_1EC16E660, &unk_1C58685F0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v10);
  return sub_1C5625230(a1, &unk_1EC16E660, &unk_1C58685F0);
}

void (*sub_1C576A3BC(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_1C576A488;
}

void sub_1C576A488(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_1C5754258(v5 + v3[5], v3[4]);
    v6 = sub_1C584EA90();
    v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
    sub_1C5625230(v4, &unk_1EC16E660, &unk_1C58685F0);
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))(v7);
  }

  free(v4);

  free(v3);
}

uint64_t sub_1C576A5A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v52 - v7;
  v9 = sub_1C584EA90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v52 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v52 - v22;
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v52 - v26;
  v28 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v55 = (*MEMORY[0x1E69E7D40] & *v0) + 152;
  v56 = v28;
  (v28)(v25);
  v54 = *(v10 + 48);
  if (!v54(v8, 1, v9))
  {
    (*(v10 + 16))(v15, v8, v9);
    sub_1C5625230(v8, &unk_1EC16E660, &unk_1C58685F0);
    sub_1C584EA40();
    v38 = v15;
    v39 = v10;
    v40 = *(v10 + 8);
    v53 = v38;
    v40();
    sub_1C584EA30();
    v41 = v19;
    v42 = v40;
    v10 = v39;
    (v42)(v41, v9);
    (*(v39 + 32))(v27, v23, v9);
    v43 = sub_1C576D8C8(v27);
    if (!v43)
    {
      (v42)(v27, v9);
      v15 = v53;
      goto LABEL_3;
    }

    v44 = v43;
    if (*(v43 + 16) && (v45 = sub_1C5645D34(0x6E6F6973726576, 0xE700000000000000), (v46 & 1) != 0))
    {
      sub_1C56465F8(*(v44 + 56) + 32 * v45, v59);

      if (swift_dynamicCast())
      {
        v47 = v58;
LABEL_15:
        (v42)(v27, v9);
        return v47;
      }
    }

    else
    {
    }

    v47 = 0;
    goto LABEL_15;
  }

  sub_1C5625230(v8, &unk_1EC16E660, &unk_1C58685F0);
LABEL_3:
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v29 = sub_1C584F2C0();
  __swift_project_value_buffer(v29, qword_1EC18FA98);
  v30 = v0;
  v31 = sub_1C584F2A0();
  v32 = sub_1C584F9B0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59[0] = v34;
    *v33 = 136315138;
    v35 = v57;
    v56();
    if (v54(v35, 1, v9))
    {
      sub_1C5625230(v35, &unk_1EC16E660, &unk_1C58685F0);
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      (*(v10 + 16))(v15, v35, v9);
      sub_1C5625230(v35, &unk_1EC16E660, &unk_1C58685F0);
      v49 = sub_1C584EA00();
      v37 = v50;
      (*(v10 + 8))(v15, v9);
      v36 = v49;
    }

    v51 = sub_1C5649518(v36, v37, v59);

    *(v33 + 4) = v51;
    _os_log_impl(&dword_1C5620000, v31, v32, "online bundle error, url:%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1C694B7A0](v34, -1, -1);
    MEMORY[0x1C694B7A0](v33, -1, -1);
  }

  return 0;
}

id sub_1C576AB40(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C584F630();

  return v5;
}

uint64_t sub_1C576ABB0()
{
  v1 = sub_1C584EA90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  sub_1C584EA40();
  sub_1C584EA30();
  v11 = *(v2 + 8);
  v11(v7, v1);
  v12 = sub_1C576D8C8(v10);
  if (!v12)
  {
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v17 = sub_1C584F2C0();
    __swift_project_value_buffer(v17, qword_1EC18FA98);
    v18 = v0;
    v19 = sub_1C584F2A0();
    v20 = sub_1C584F9B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v21 = 136315138;
      sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0]);
      v22 = sub_1C584FD90();
      v24 = sub_1C5649518(v22, v23, v30);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_1C5620000, v19, v20, "local bundle error, url:%s", v21, 0xCu);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C694B7A0](v25, -1, -1);
      MEMORY[0x1C694B7A0](v21, -1, -1);
    }

    goto LABEL_12;
  }

  v13 = v12;
  if (!*(v12 + 16) || (v14 = sub_1C5645D34(0x6E6F6973726576, 0xE700000000000000), (v15 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_1C56465F8(*(v13 + 56) + 32 * v14, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v16 = v29;
LABEL_13:
  v11(v10, v1);
  return v16;
}

uint64_t sub_1C576AF70()
{
  v1 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1C576B030(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id _MUWebBasedPlacecardResourceManager.init()()
{
  v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle] = 1;
  v1 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584EA90();
  v3 = __swift_project_value_buffer(v2, qword_1EC174CB8);
  v4 = *(v2 - 8);
  (*(v4 + 16))(&v0[v1], v3, v2);
  (*(v4 + 56))(&v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames] = MEMORY[0x1E69E7CD0];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for _MUWebBasedPlacecardResourceManager();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1C576B360(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall _MUWebBasedPlacecardResourceManager.prepareResources()()
{
  v1 = v0;
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584F580();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v14 = sub_1C584F2C0();
  __swift_project_value_buffer(v14, qword_1EC18FA98);
  v15 = sub_1C584F2A0();
  v16 = sub_1C584F990();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v8;
    v18 = v3;
    v19 = v2;
    v20 = v1;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1C5620000, v15, v16, "Start to prepare Resources", v17, 2u);
    v22 = v21;
    v1 = v20;
    v2 = v19;
    v3 = v18;
    v8 = v34;
    MEMORY[0x1C694B7A0](v22, -1, -1);
  }

  v23 = [objc_opt_self() modernManager];
  if (v23)
  {
    v24 = v23;
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    (*(v9 + 104))(v13, *MEMORY[0x1E69E7FA0], v8);
    v25 = sub_1C584FA20();
    (*(v9 + 8))(v13, v8);
    [v24 addTileGroupObserver:v1 queue:v25];

    v26 = sub_1C5669F28();
    v27 = *v26;
    v28 = MUWebPlacecardBridgePool.take()();

    if (v28)
    {
      if (qword_1EC174CE8 != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x1E69E7D40] & *qword_1EC174CF0) + 0x78))();
      sub_1C566B63C(v7);
      (*(v3 + 8))(v7, v2);
      v29 = *v26;
      v30 = v28;
      MUWebPlacecardBridgePool.release(_:)(v28);
    }

    else
    {
      v30 = sub_1C584F2A0();
      v31 = sub_1C584F9B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C5620000, v30, v31, "Failed to warm up a bridge, no bridge returned by pool.", v32, 2u);
        MEMORY[0x1C694B7A0](v32, -1, -1);
      }
    }

    sub_1C5768AD0(sub_1C576B878, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C576B878(uint64_t a1)
{
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584F2C0();
  __swift_project_value_buffer(v2, qword_1EC18FA98);
  v3 = sub_1C584F2A0();
  v4 = sub_1C584F990();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5620000, v3, v4, "Download manifest completed!", v5, 2u);
    MEMORY[0x1C694B7A0](v5, -1, -1);
  }

  v6 = sub_1C584EA90();
  if ((*(*(v6 - 8) + 48))(a1, 1, v6) == 1)
  {
    oslog = sub_1C584F2A0();
    v7 = sub_1C584F9B0();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, oslog, v7, "Download manifest failed: empty url", v8, 2u);
      MEMORY[0x1C694B7A0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall _MUWebBasedPlacecardResourceManager.removeBundle()()
{
  v81[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v76 - v7;
  v9 = sub_1C584EA90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v76 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v76 - v22;
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v76 - v26;
  v28 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v78 = ((*MEMORY[0x1E69E7D40] & *v0) + 152);
  v79 = v28;
  (v28)(v25);
  v29 = *(v10 + 48);
  if (v29(v8, 1, v9))
  {
    sub_1C5625230(v8, &unk_1EC16E660, &unk_1C58685F0);
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v30 = sub_1C584F2C0();
    __swift_project_value_buffer(v30, qword_1EC18FA98);
    v31 = v0;
    v32 = sub_1C584F2A0();
    v33 = sub_1C584F9B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81[0] = v77;
      *v34 = 136315138;
      v35 = v80;
      v79();
      if (v29(v35, 1, v9))
      {
        sub_1C5625230(v35, &unk_1EC16E660, &unk_1C58685F0);
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        v69 = v19;
        (*(v10 + 16))(v19, v35, v9);
        sub_1C5625230(v35, &unk_1EC16E660, &unk_1C58685F0);
        v70 = sub_1C584EA60();
        v37 = v71;
        (*(v10 + 8))(v69, v9);
        v36 = v70;
      }

      v72 = sub_1C5649518(v36, v37, v81);

      *(v34 + 4) = v72;
      _os_log_impl(&dword_1C5620000, v32, v33, "Can't remove bundle because it's using built-in version or the directory is empty:%s", v34, 0xCu);
      v73 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1C694B7A0](v73, -1, -1);
      MEMORY[0x1C694B7A0](v34, -1, -1);
    }
  }

  else
  {
    v80 = v15;
    v79 = *(v10 + 16);
    (v79)(v19, v8, v9);
    sub_1C5625230(v8, &unk_1EC16E660, &unk_1C58685F0);
    sub_1C584EA40();
    v38 = *(v10 + 8);
    v38(v19, v9);
    (*(v10 + 32))(v27, v23, v9);
    v39 = [objc_opt_self() defaultManager];
    v40 = sub_1C584EA20();
    v81[0] = 0;
    v41 = [v39 removeItemAtURL:v40 error:v81];

    v42 = v27;
    if (v41)
    {
      v78 = v38;
      v43 = qword_1EC17B090;
      v44 = v81[0];
      if (v43 != -1)
      {
        swift_once();
      }

      v45 = sub_1C584F2C0();
      __swift_project_value_buffer(v45, qword_1EC18FA98);
      v46 = v80;
      (v79)(v80, v27, v9);
      v47 = sub_1C584F2A0();
      v48 = sub_1C584F990();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v81[0] = v50;
        *v49 = 136315138;
        v51 = sub_1C584EA60();
        v53 = v52;
        v54 = v46;
        v55 = v78;
        v78(v54, v9);
        v56 = sub_1C5649518(v51, v53, v81);

        *(v49 + 4) = v56;
        _os_log_impl(&dword_1C5620000, v47, v48, "Removed bundle in %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1C694B7A0](v50, -1, -1);
        MEMORY[0x1C694B7A0](v49, -1, -1);
      }

      else
      {

        v74 = v46;
        v55 = v78;
        v78(v74, v9);
      }

      v55(v27, v9);
    }

    else
    {
      v57 = v81[0];
      v58 = sub_1C584E950();

      swift_willThrow();
      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v59 = sub_1C584F2C0();
      __swift_project_value_buffer(v59, qword_1EC18FA98);
      v60 = v58;
      v61 = sub_1C584F2A0();
      v62 = sub_1C584F9B0();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = v42;
        v65 = v38;
        v66 = swift_slowAlloc();
        *v63 = 138412290;
        v67 = v58;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v68;
        *v66 = v68;
        _os_log_impl(&dword_1C5620000, v61, v62, "Remove bundle error: %@", v63, 0xCu);
        sub_1C5625230(v66, &unk_1EC16E670, &qword_1C586A030);
        MEMORY[0x1C694B7A0](v66, -1, -1);
        MEMORY[0x1C694B7A0](v63, -1, -1);

        v65(v64, v9);
      }

      else
      {

        v38(v42, v9);
      }
    }
  }

  v75 = *MEMORY[0x1E69E9840];
}

void sub_1C576C354(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v73 = a6;
  v74 = a5;
  v77[6] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v68 - v12;
  v14 = sub_1C584EA90();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = v68 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v68 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a3)
    {
      v72 = Strong;
      v75 = 1;
      if (a2 && *(a2 + 16))
      {
        v40 = *(v15 + 16);
        v41 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v68[1] = (v15 + 16);
        v69 = v40;
        v40(v27, v41, v14);
        v42 = objc_opt_self();

        v71 = [v42 defaultManager];
        sub_1C584EA60();
        v43 = sub_1C584F630();

        v44 = v71;
        LODWORD(v70) = [v71 fileExistsAtPath:v43 isDirectory:&v75];

        if (v70 && v75 == 1)
        {
          sub_1C584EA30();
          sub_1C584EA30();
          v70 = *(v15 + 8);
          v71 = (v15 + 8);
          v70(v20, v14);
          (*(v15 + 40))(v27, v24, v14);
          if (qword_1EC17B090 != -1)
          {
            swift_once();
          }

          v45 = sub_1C584F2C0();
          __swift_project_value_buffer(v45, qword_1EC18FA98);
          v46 = sub_1C584F2A0();
          v47 = sub_1C584F990();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v68[0] = swift_slowAlloc();
            v77[0] = v68[0];
            *v48 = 136315138;
            swift_beginAccess();
            sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0]);
            v49 = sub_1C584FD90();
            v51 = sub_1C5649518(v49, v50, v77);

            *(v48 + 4) = v51;
            _os_log_impl(&dword_1C5620000, v46, v47, "Directory URL of unpacked web bundle: %s", v48, 0xCu);
            v52 = v68[0];
            __swift_destroy_boxed_opaque_existential_1(v68[0]);
            MEMORY[0x1C694B7A0](v52, -1, -1);
            MEMORY[0x1C694B7A0](v48, -1, -1);
          }

          v53 = v69;
          swift_beginAccess();
          v53(v13, v27, v14);
          v54 = *(v15 + 56);
          v54(v13, 0, 1, v14);
          v55 = v72;
          v56 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v72) + 0xA0))(v13);
          v57 = sub_1C576DD80(a1);

          (*((*v56 & *v55) + 0xC8))(v57);
          v58 = v74;
          if (v74)
          {
            v69(v13, v27, v14);
            v54(v13, 0, 1, v14);
            v58(v13);

            sub_1C5625230(v13, &unk_1EC16E660, &unk_1C58685F0);
          }

          else
          {
          }

          v70(v27, v14);
          goto LABEL_15;
        }

        (*(v15 + 8))(v27, v14);
      }

      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v59 = sub_1C584F2C0();
      __swift_project_value_buffer(v59, qword_1EC18FA98);

      v60 = sub_1C584F2A0();
      v61 = sub_1C584F9B0();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v76 = v63;
        *v62 = 136315394;
        v77[0] = a2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1710A0, &qword_1C5879470);
        v64 = sub_1C584F680();
        v66 = sub_1C5649518(v64, v65, &v76);

        *(v62 + 4) = v66;
        *(v62 + 12) = 1024;
        swift_beginAccess();
        *(v62 + 14) = v75;
        _os_log_impl(&dword_1C5620000, v60, v61, "Received incorrect path:%s, isDirectory:%{BOOL}d", v62, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1C694B7A0](v63, -1, -1);
        MEMORY[0x1C694B7A0](v62, -1, -1);
      }

      v67 = v74;
      if (!v74)
      {

        goto LABEL_15;
      }

      (*(v15 + 56))(v13, 1, 1, v14);
      v67(v13);

      goto LABEL_14;
    }
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v29 = sub_1C584F2C0();
  __swift_project_value_buffer(v29, qword_1EC18FA98);
  v30 = a3;
  v31 = sub_1C584F2A0();
  v32 = sub_1C584F9B0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    if (a3)
    {
      v35 = a3;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = v36;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    *(v33 + 4) = v36;
    *v34 = v37;
    _os_log_impl(&dword_1C5620000, v31, v32, "Error fetching signed resource from GeoServices:%@)", v33, 0xCu);
    sub_1C5625230(v34, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v34, -1, -1);
    MEMORY[0x1C694B7A0](v33, -1, -1);
  }

  v38 = v74;
  if (v74)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v38(v13);
LABEL_14:
    sub_1C5625230(v13, &unk_1EC16E660, &unk_1C58685F0);
  }

LABEL_15:
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C576CC7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_1C584F770();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    sub_1C584EA90();
    v5 = sub_1C584F770();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1C576CD44()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA98);
  __swift_project_value_buffer(v0, qword_1EC18FA98);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  type metadata accessor for _MUWebBasedPlacecardResourceManager();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1710B0, &qword_1C5879478);
  sub_1C584F680();
  return sub_1C584F2B0();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C576CE4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1C584FEA0();

    sub_1C584F6C0();
    v17 = sub_1C584FEF0();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1C584FDC0() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C576D004(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C584FEA0();
  sub_1C584F6C0();
  v9 = sub_1C584FEF0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C584FDC0() & 1) != 0)
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

    sub_1C576D3B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C576D154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  result = sub_1C584FC10();
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
      sub_1C584FEA0();
      sub_1C584F6C0();
      result = sub_1C584FEF0();
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

uint64_t sub_1C576D3B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C576D154(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C576D534();
      goto LABEL_16;
    }

    sub_1C576D690(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C584FEA0();
  sub_1C584F6C0();
  result = sub_1C584FEF0();
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

      result = sub_1C584FDC0();
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
  result = sub_1C584FDF0();
  __break(1u);
  return result;
}

void *sub_1C576D534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  v2 = *v0;
  v3 = sub_1C584FC00();
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

uint64_t sub_1C576D690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  result = sub_1C584FC10();
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
      sub_1C584FEA0();

      sub_1C584F6C0();
      result = sub_1C584FEF0();
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

uint64_t sub_1C576D8C8(uint64_t a1)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C584EAA0();
  v21 = v20;
  v22 = objc_opt_self();
  v23 = sub_1C584EAC0();
  v29[0] = 0;
  v24 = [v22 JSONObjectWithData:v23 options:0 error:v29];

  if (v24)
  {
    v25 = v29[0];
    sub_1C584FB30();
    sub_1C566DD84(v19, v21);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171090, &unk_1C58792C0);
    if (swift_dynamicCast())
    {
      result = v28[1];
      goto LABEL_8;
    }
  }

  else
  {
    v26 = v29[0];
    v27 = sub_1C584E950();

    swift_willThrow();
    sub_1C566DD84(v19, v21);
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v8 = sub_1C584F2C0();
  __swift_project_value_buffer(v8, qword_1EC18FA98);
  (*(v3 + 16))(v7, a1, v2);
  v9 = sub_1C584F2A0();
  v10 = sub_1C584F9B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315138;
    sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0]);
    v13 = sub_1C584FD90();
    v15 = v14;
    (*(v3 + 8))(v7, v2);
    v16 = sub_1C5649518(v13, v15, v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C5620000, v9, v10, "Failed to load manifest from %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1C694B7A0](v12, -1, -1);
    MEMORY[0x1C694B7A0](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  result = 0;
LABEL_8:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C576DC7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C576DCEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for _MUWebBasedPlacecardResourceManager()
{
  result = qword_1EC174CD8;
  if (!qword_1EC174CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C576DD80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6949FF0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C576D004(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void _s6MapsUI35_MUWebBasedPlacecardResourceManagerC016resourceManifestG24DidChangeActiveTileGroupyySo011GEOResourceiG0CSgF_0()
{
  v0 = [objc_opt_self() modernManager];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 activeTileGroup];

    if (v2)
    {
      v3 = [v2 explicitResources];

      if (v3)
      {
        sub_1C5626E40(0, &qword_1EC16D048, 0x1E69A2460);
        sub_1C584F760();
      }
    }

    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v4 = sub_1C584F2C0();
    __swift_project_value_buffer(v4, qword_1EC18FA98);
    oslog = sub_1C584F2A0();
    v5 = sub_1C584F9B0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5620000, oslog, v5, "resourceManifestManager did change but there is no explicit resource", v6, 2u);
      MEMORY[0x1C694B7A0](v6, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C576E388()
{
  v0 = sub_1C584EA90();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C575B7AC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C576E5F0()
{
  v1 = *(v0 + 16);
  v2 = sub_1C584EA20();
  (*(v1 + 16))(v1, v2);
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C576E77C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v172 = &v161 - v7;
  v171 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v170 = *(v171 - 8);
  v8 = *(v170 + 64);
  v10 = MEMORY[0x1EEE9AC00](v171, v9);
  v165 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v166 = &v161 - v13;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v164 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v162 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v163 = &v161 - v23;
  v24 = type metadata accessor for MUUserPreferences(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v169 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v168 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v167 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v174 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v41);
  v173 = &v161 - v42;
  v43 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v175 = &v161 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v51 = &v161 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for MULocation(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8, v54);
  v56 = &v161 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C584ECE0();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57, v60);
  v62 = &v161 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5696E34(a1);
  v63 = sub_1C584EC00();
  if (v63[2])
  {
    v65 = v63[4];
    v64 = v63[5];
  }

  else
  {

    sub_1C584EC80();
    v65 = sub_1C584EB70();
    v64 = v66;
    (*(v58 + 8))(v62, v57);
  }

  sub_1C5697BE0(v65, v64);
  v67 = [objc_opt_self() sharedConfiguration];
  v68 = v175;
  if (!v67)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v69 = v67;
  v70 = [v67 countryCode];

  if (!v70)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v71 = sub_1C584F660();
  v73 = v72;

  sub_1C5698D8C(v71, v73);
  sub_1C569643C(v56);
  v74 = [objc_opt_self() sharedLocationManager];
  if (!v74)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v75 = v74;
  v76 = [v74 currentLocation];

  if (v76)
  {
    v77 = [v76 latLng];

    if (v77)
    {
      [v77 lat];
      *&v78 = v78;
      sub_1C569686C(*&v78);
      [v77 lng];
      *&v79 = v79;
      sub_1C56968BC(*&v79);
    }
  }

  sub_1C5697C20(v56);
  sub_1C576F700(v51);
  sub_1C5698038(v51);
  v80 = [*(v2 + 32) userInterfaceIdiom];
  v81 = v80 + 1;
  if (v80 + 1 >= 8 || ((0xDFu >> v81) & 1) == 0)
  {
    goto LABEL_92;
  }

  sub_1C5697D8C(0x403010000020100uLL >> (8 * v81));
  v82 = [objc_opt_self() sharedPlatform];
  if (!v82)
  {
    goto LABEL_86;
  }

  v83 = v82;
  v84 = [v82 osAndBuildVersion];

  if (!v84)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v85 = sub_1C584F660();
  v87 = v86;

  sub_1C5697DD4(v85, v87);
  v88 = objc_opt_self();
  if ([v88 isMapsProcess])
  {
    v89 = 0;
  }

  else if ([v88 isSafariProcess])
  {
    v89 = 1;
  }

  else if ([v88 isSiriProcess])
  {
    v89 = 2;
  }

  else if ([v88 isSpotlightProcess])
  {
    v89 = 3;
  }

  else
  {
    v89 = 0;
  }

  sub_1C5697E1C(v89);
  v90 = [objc_opt_self() mainBundle];
  v91 = [v90 bundleIdentifier];

  if (v91)
  {
    v92 = sub_1C584F660();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0xE000000000000000;
  }

  sub_1C5698DD4(v92, v94);
  v95 = *v2;
  v96 = *(v2 + 8);

  sub_1C5697E64(v95, v96);
  v97 = *(v2 + 328);
  if (!v97 || (v98 = [v97 formattedAddressLines]) == 0 || (*&v180 = 0, v99 = v98, sub_1C584F760(), v99, (v100 = v180) == 0))
  {

    v100 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5697EAC(v100);
  if (*(v2 + 24))
  {
    v101 = *(v2 + 16);
    v102 = *(v2 + 24);
  }

  else
  {
    v101 = 0;
    v102 = 0xE000000000000000;
  }

  sub_1C5697FB8(v101, v102);
  if (*(v2 + 176))
  {
    v103 = *(v2 + 168);
    v104 = *(v2 + 176);
  }

  else
  {
    v103 = 0;
    v104 = 0xE000000000000000;
  }

  sub_1C56981A4(v103, v104);
  v105 = *(v2 + 184);
  v106 = MEMORY[0x1E69E7CC0];
  if (v105)
  {
    v107 = [v105 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F8, &qword_1C58795B0);
    v108 = sub_1C584F770();

    if (!(v108 >> 62))
    {
      goto LABEL_38;
    }

LABEL_44:
    if (sub_1C584FB90())
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  v108 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    if ((v108 & 0xC000000000000001) != 0)
    {
      v109 = MEMORY[0x1C694A320](0, v108);
      goto LABEL_42;
    }

    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v109 = *(v108 + 32);
LABEL_42:
      v110 = v109;

      v111 = [objc_allocWithZone(MUContactLabeledValue) initWithContactLabeledValue:v110 type:1];
      v112 = [v111 valueString];
      v113 = sub_1C584F660();
      v115 = v114;

      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_45:

  v113 = 0;
  v115 = 0xE000000000000000;
LABEL_46:
  sub_1C56981EC(v113, v115);
  sub_1C5698234(*(v2 + 193));
  sub_1C5698240(*(v2 + 194));
  sub_1C56982F0(*(v2 + 195));
  sub_1C56982FC(*(v2 + 196));
  sub_1C5698308(v68);
  if (*(v2 + 208))
  {
    v116 = *(v2 + 200);
    v117 = *(v2 + 208);
  }

  else
  {
    v116 = 0;
    v117 = 0xE000000000000000;
  }

  sub_1C569A6AC(v116, v117);
  v118 = *(v2 + 216);
  if (*(v2 + 220))
  {
    v118 = 0.0;
  }

  sub_1C569A6C4(v118);
  if (*(v2 + 232))
  {
    v119 = *(v2 + 224);
    v120 = *(v2 + 232);
  }

  else
  {
    v119 = 0;
    v120 = 0xE000000000000000;
  }

  sub_1C569A6FC(v119, v120);
  v121 = *(v2 + 240);
  if (*(v2 + 244))
  {
    v121 = 0.0;
  }

  sub_1C569A754(v121);
  sub_1C5698370(v68);
  v122 = v174;
  sub_1C56984DC(v174);
  v123 = *(v2 + 264);
  v180 = *(v2 + 248);
  v181 = v123;
  v124 = v180;
  sub_1C576E720(&v180, v179);
  sub_1C569C20C(v124);
  sub_1C569C17C(SBYTE1(v180));
  sub_1C569C14C(SBYTE2(v180));
  sub_1C569C1AC(SBYTE3(v180));
  sub_1C569C1DC(SBYTE4(v180));
  sub_1C569C23C(*(&v180 + 2));
  sub_1C569C2D8(*(&v180 + 3));
  if (*(&v181 + 1))
  {
    sub_1C569C274(v181, *(&v181 + 1));
  }

  v125 = v122;
  v126 = v173;
  sub_1C577355C(v125, v173, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5698564(v126);
  v127 = *(v2 + 288);
  v128 = *(v2 + 296);

  sub_1C56986D0(v127, v128);
  v129 = [objc_opt_self() modernManager];
  if (!v129)
  {
    goto LABEL_88;
  }

  v130 = v129;
  v131 = [v129 activeTileGroup];

  if (!v131)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v132 = [v131 attributions];

  if (!v132)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v133 = [v132 firstObject];

  if (v133)
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v177 = 0u;
    v178 = 0u;
  }

  v179[0] = v177;
  v179[1] = v178;
  if (!*(&v178 + 1))
  {
    sub_1C5625230(v179, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_69;
  }

  sub_1C5772E5C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    v144 = 0;
    v143 = 0xE000000000000000;
    goto LABEL_70;
  }

  v134 = v176;
  v135 = [v176 data];
  if (!v135)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    result = sub_1C584FD00();
    __break(1u);
    return result;
  }

  v136 = v135;
  v137 = sub_1C584EAE0();
  v139 = v138;

  v140 = sub_1C584EAD0();
  v142 = v141;
  sub_1C566DD84(v137, v139);

  v143 = v142;
  v144 = v140;
LABEL_70:
  sub_1C5698920(v144, v143);
  if (*(v2 + 304))
  {
    v145 = *(v2 + 304);
  }

  else
  {
    v145 = v106;
  }

  sub_1C5698968(v145);
  v146 = v167;
  sub_1C576FC94(v167);
  sub_1C56989E8(v146);
  v147 = sub_1C5770178();
  sub_1C5698D44(v147);
  if (*(v2 + 344))
  {
    v148 = 0;
  }

  else
  {
    v148 = *(v2 + 336);
  }

  v149 = v168;
  sub_1C5770BD0(v148, v168);
  v150 = v169;
  sub_1C569C814(v169);
  sub_1C57734FC(v149, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5698E1C(v150);
  sub_1C5698F88(*(v2 + 345));
  v151 = sub_1C57703B8();
  sub_1C5698F94(v151);
  v152 = *(v2 + 320);
  if (v152 != 1)
  {
    v153 = v162;
    sub_1C5774BBC(*(v2 + 312), v152, v162);
    v154 = v163;
    sub_1C577355C(v153, v163, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    sub_1C569C544(*(v2 + 197));
    v155 = v164;
    sub_1C5773494(v154, v164, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    sub_1C5698BD8(v155);
    sub_1C57734FC(v154, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  }

  v156 = v172;
  sub_1C5770734(v172);
  if ((*(v170 + 48))(v156, 1, v171) == 1)
  {
    return sub_1C5625230(v156, &qword_1EC16EC88, &qword_1C586B110);
  }

  v158 = v156;
  v159 = v166;
  sub_1C577355C(v158, v166, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  v160 = v165;
  sub_1C5773494(v159, v165, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  sub_1C56987B4(v160);
  return sub_1C57734FC(v159, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

size_t sub_1C576F700@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v62 - v24;
  v26 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v62 - v33;
  sub_1C5698000(a1);
  sub_1C569997C(*(v1 + 48));
  v69 = v1;
  v35 = *(v1 + 40);
  v66 = v8;
  if (v35)
  {
    v36 = sub_1C5772AF0(v35);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5699A18(v36);
  sub_1C5699AB8(v31);
  v37 = v69;
  v38 = v69[9];
  if (v38)
  {
    v39 = v69[8];
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v69[9];
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v65 = v69[9];

  v67 = v40;
  v68 = v39;
  sub_1C569A464(v39, v40);
  v41 = v37[7];
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v41))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v47 = sub_1C584FB90();
    goto LABEL_21;
  }

  sub_1C569A47C(v41);
  sub_1C577355C(v31, v34, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5699B24(v34);
  v37 = v69;
  if (v69[35] >= 3uLL)
  {
    v42 = 0;
  }

  else
  {
    v42 = v69[35];
  }

  sub_1C569A100(v42);
  v43 = v37[14];
  if (v43)
  {
    v44 = v43;
    sub_1C57716F4(v44, v25);
  }

  else
  {
    sub_1C5699E70(v25);
  }

  v34 = v66;
  sub_1C5699F04(v25);
  v45 = *(v37 + 96);
  sub_1C5699C90(v22);
  sub_1C569A55C(v45);
  sub_1C5699F04(v22);
  v46 = *(v37 + 97);
  sub_1C5699C90(v22);
  sub_1C569A5BC(v46);
  sub_1C5699F04(v22);
  swift_bridgeObjectRetain_n();
  sub_1C5699C90(v22);
  sub_1C569A544(v68, v67);
  sub_1C5699F04(v22);
  v22 = v37[13];
  if (!v22)
  {
    goto LABEL_32;
  }

  if (v22 >> 62)
  {
    goto LABEL_37;
  }

  v47 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    v71 = MEMORY[0x1E69E7CC0];
    result = sub_1C5734448(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      return result;
    }

    v63 = v11;
    v64 = a1;
    v50 = 0;
    v48 = v71;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x1C694A320](v50, v22);
      }

      else
      {
        v51 = *(v22 + 8 * v50 + 32);
      }

      v52 = v51;
      sub_1C569A368(v16);
      v53 = [v52 category];
      v54 = sub_1C584F660();
      v56 = v55;

      sub_1C569A318(v54, v56);
      v57 = [v52 value];
      LODWORD(v53) = sub_1C584FE60();

      sub_1C569A330(v53);
      v71 = v48;
      v59 = *(v48 + 16);
      v58 = *(v48 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C5734448(v58 > 1, v59 + 1, 1);
        v48 = v71;
      }

      ++v50;
      *(v48 + 16) = v59 + 1;
      sub_1C577355C(v16, v48 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v59, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
    }

    while (v47 != v50);
    v11 = v63;
    v34 = v66;
    v37 = v69;
  }

  sub_1C569A070(v48);
LABEL_32:
  v60 = v37[11];
  if (!v60)
  {
  }

  v61 = v37[10];

  sub_1C569A148(v11);
  sub_1C569A67C(v61, v60);
  sub_1C569A694(v68, v67);
  sub_1C5773494(v11, v34, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C569A1AC(v34);
  return sub_1C57734FC(v11, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
}

id sub_1C576FC94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MULocation(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v64 - v25;
  v27 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56989B0(v31);
  v32 = *v1;
  v33 = v2[1];

  sub_1C5698FDC(v32, v33);
  v34 = v2[16];
  v35 = v2[17];

  sub_1C5699178(v34, v35);
  sub_1C56990DC(*(v2 + 120));
  sub_1C569921C(v23);
  sub_1C56997FC(*(v2 + 121));
  sub_1C569982C(*(v2 + 122));
  sub_1C56998BC(*(v2 + 123));
  sub_1C569988C(*(v2 + 124));
  v36 = _MKRAPIsAvailable();
  sub_1C569985C(v36);
  result = [objc_opt_self() sharedLocationManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v38 = result;
  v39 = [result isAuthorizedForPreciseLocation];

  sub_1C56998EC(v39);
  sub_1C577355C(v23, v26, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C569927C(v26);
  v40 = v2[41];
  if (v40)
  {
    v64 = v8;
    v41 = [v40 formattedAddressLines];
    if (v41 && (v65 = 0, v42 = v41, sub_1C584F760(), v42, (v43 = v65) != 0))
    {
      v44 = a1;
    }

    else
    {
      v44 = a1;

      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5699724(v43);
    v45 = [v40 structuredAddress];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 fullThoroughfare];

      if (v47)
      {
        v48 = sub_1C584F660();
        v50 = v49;

        v51 = v50;
        v45 = v48;
LABEL_13:
        sub_1C569976C(v45, v51);
        v53 = [v40 structuredAddress];
        if (v53)
        {
          v54 = v53;
          v55 = [v53 locality];

          a1 = v44;
          if (v55)
          {
            v56 = sub_1C584F660();
            v52 = v57;

            v53 = v56;
          }

          else
          {
            v53 = 0;
            v52 = 0xE000000000000000;
          }
        }

        else
        {
          v52 = 0xE000000000000000;
          a1 = v44;
        }

        v8 = v64;
        goto LABEL_19;
      }

      v45 = 0;
    }

    v51 = 0xE000000000000000;
    goto LABEL_13;
  }

  sub_1C5699724(MEMORY[0x1E69E7CC0]);
  v52 = 0xE000000000000000;
  sub_1C569976C(0, 0xE000000000000000);
  v53 = 0;
LABEL_19:
  sub_1C56997B4(v53, v52);
  if ((v2[20] & 1) == 0)
  {
    v59 = *(v2 + 18);
    v58 = *(v2 + 19);
    sub_1C569643C(v17);
    v60 = v59;
    sub_1C569686C(v60);
    v61 = v58;
    sub_1C56968BC(v61);
    sub_1C5773494(v17, v14, type metadata accessor for MULocation);
    sub_1C56995B8(v14);
    sub_1C57734FC(v17, type metadata accessor for MULocation);
  }

  v62 = v2[23];
  if (v62)
  {
    v63 = v62;
    sub_1C57718F0(v63, v8);
    sub_1C569944C(v8);
  }

  return sub_1C577355C(v31, a1, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
}

void *sub_1C5770178()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = sub_1C5654ED0();
  sub_1C569C700(v9);
  sub_1C569C6D0(0x6D756972616C6F53, 0xEF64656C62616E45);
  sub_1C569C6E8(0x6E4561726F727541, 0xED000064656C6261);
  *v9 = 1;
  sub_1C5773494(v9, v6, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1C5772914(0, v10[2] + 1, 1, v10, &qword_1EC16DFB8, &qword_1C58795A0, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1C5772914(v11 > 1, v12 + 1, 1, v10, &qword_1EC16DFB8, &qword_1C58795A0, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  }

  sub_1C57734FC(v9, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  v10[2] = v12 + 1;
  sub_1C577355C(v6, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  return v10;
}

uint64_t sub_1C57703B8()
{
  v1 = v0;
  v2 = type metadata accessor for MUSendToDevice(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v39 - v11;
  v13 = *(v1 + 352);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (v13 < 0)
  {
    v37 = *(v1 + 352);
  }

  v38 = *(v1 + 352);
  result = sub_1C584FB90();
  v13 = v38;
  v14 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v14 >= 1)
  {
    v15 = 0;
    v39 = v13 & 0xC000000000000001;
    v16 = MEMORY[0x1E69E7CC0];
    v40 = v13;
    do
    {
      if (v39)
      {
        v17 = MEMORY[0x1C694A320](v15);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      sub_1C5696DD8(v12);
      v19 = [v18 name];
      v20 = sub_1C584F660();
      v22 = v21;

      sub_1C5696D30(v20, v22);
      v23 = [v18 symbolName];
      v24 = sub_1C584F660();
      v26 = v25;

      sub_1C5696D60(v24, v26);
      v27 = [v18 deviceID];
      v28 = sub_1C584F660();
      v30 = v29;

      sub_1C5696D90(v28, v30);
      v31 = [v18 model];
      v32 = sub_1C584F660();
      v34 = v33;

      sub_1C5696DC0(v32, v34);
      sub_1C5773494(v12, v8, type metadata accessor for MUSendToDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1C5772914(0, v16[2] + 1, 1, v16, &qword_1EC1710E8, &qword_1C5879598, type metadata accessor for MUSendToDevice);
      }

      v36 = v16[2];
      v35 = v16[3];
      if (v36 >= v35 >> 1)
      {
        v16 = sub_1C5772914(v35 > 1, v36 + 1, 1, v16, &qword_1EC1710E8, &qword_1C5879598, type metadata accessor for MUSendToDevice);
      }

      ++v15;

      sub_1C57734FC(v12, type metadata accessor for MUSendToDevice);
      v16[2] = v36 + 1;
      sub_1C577355C(v8, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36, type metadata accessor for MUSendToDevice);
      v13 = v40;
    }

    while (v14 != v15);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5770734@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5698718(v21);
  v22 = sub_1C5773014();
  v23 = v22[2];
  if (v23)
  {
    v24 = *v21;

    *v21 = v22;
  }

  else
  {
  }

  if (GEOConfigGetBOOL())
  {
    v25 = GEOConfigGetString();
    if (v25)
    {
      v26 = v25;
      v27 = sub_1C584F660();
      v38 = v8;
      v28 = v16;
      v29 = a1;
      v31 = v30;

      sub_1C569C310(v12);
      v32 = v31;
      a1 = v29;
      v16 = v28;
      v33 = v1;
      sub_1C569C470(v27, v32);
      sub_1C577355C(v12, v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      v34 = v38;
      sub_1C5773494(v15, v38, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      sub_1C569C328(v34);
      sub_1C57734FC(v15, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      if ((*(v33 + 360) & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  if (*(v1 + 360))
  {
LABEL_9:
    sub_1C569C3E0(1);
    goto LABEL_11;
  }

  if (!v23)
  {
    v35 = 1;
    goto LABEL_12;
  }

LABEL_11:
  sub_1C5773494(v21, a1, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  v35 = 0;
LABEL_12:
  (*(v17 + 56))(a1, v35, 1, v16);
  return sub_1C57734FC(v21, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

__n128 sub_1C5770A1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19, char a20, char a21, __int128 a22, uint64_t a23, uint64_t a24, char a25, __int128 a26, uint64_t a27, char a28, char a29, char a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, char a37, uint64_t a38, uint64_t a39, int a40, char a41, __int128 *a42, __int128 a43, __int128 a44, __int128 a45, uint64_t a46, uint64_t a47, char a48, char a49, uint64_t a50, char a51)
{
  v51 = *a42;
  v52 = a42[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 97) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17;
  *(a9 + 121) = a18;
  *(a9 + 122) = a19;
  *(a9 + 123) = a20;
  *(a9 + 124) = a21;
  *(a9 + 144) = a23;
  *(a9 + 152) = a24;
  *(a9 + 160) = a25 & 1;
  *(a9 + 184) = a27;
  *(a9 + 192) = a28;
  *(a9 + 193) = a29;
  *(a9 + 194) = a30;
  *(a9 + 195) = a31;
  *(a9 + 196) = a32;
  *(a9 + 197) = a33;
  *(a9 + 200) = a34;
  *(a9 + 208) = a35;
  *(a9 + 216) = a36;
  *(a9 + 220) = a37 & 1;
  *(a9 + 224) = a38;
  *&v54[3] = v51;
  *&v54[19] = v52;
  *(a9 + 232) = a39;
  *(a9 + 240) = a40;
  *(a9 + 244) = a41 & 1;
  *(a9 + 261) = *&v54[16];
  *(a9 + 276) = HIDWORD(v52);
  *(a9 + 280) = a43;
  *(a9 + 296) = a44;
  *(a9 + 328) = a46;
  *(a9 + 336) = a47;
  *(a9 + 344) = a48 & 1;
  *(a9 + 345) = a49;
  *(a9 + 352) = a50;
  *(a9 + 360) = a51;
  result = *v54;
  *(a9 + 64) = a10;
  *(a9 + 128) = a22;
  *(a9 + 168) = a26;
  *(a9 + 245) = *v54;
  *(a9 + 312) = a45;
  return result;
}

id sub_1C5770BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v3 = sub_1C584ECC0();
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v99 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v103 = &v88 - v12;
  v13 = sub_1C584ED50();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v93 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C584EBE0();
  v96 = *(v17 - 8);
  v18 = *(v96 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v88 - v24;
  v26 = sub_1C584ECE0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v91 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v88 - v34;
  MEMORY[0x1EEE9AC00](v33, v36);
  v38 = &v88 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710C0, &qword_1C5879480);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v43 = &v88 - v42;
  v44 = type metadata accessor for MUUserPreferences(0);
  v45 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v88 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v88 - v50;
  v90 = a2;
  sub_1C569BD28(a2);
  v102 = v51;
  sub_1C5696CA0(v51);
  sub_1C584EC80();
  sub_1C584EC70();
  v52 = v26;
  v100 = *(v27 + 8);
  v101 = v27 + 8;
  v100(v38, v26);
  v53 = sub_1C584EC60();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v43, 1, v53) == 1)
  {
    sub_1C5625230(v43, &qword_1EC1710C0, &qword_1C5879480);
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  else
  {
    v57 = sub_1C584EC50();
    v59 = v58;
    (*(v54 + 8))(v43, v53);
    v56 = v59;
    v55 = v57;
  }

  sub_1C5696994(v55, v56);
  sub_1C584EC80();
  sub_1C584EBF0();
  v60 = v35;
  v61 = v52;
  v100(v60, v52);
  sub_1C584EBD0();
  sub_1C5772EA8(&qword_1EC1710C8, MEMORY[0x1E6969660]);
  v62 = sub_1C584F620();
  v63 = *(v96 + 8);
  v63(v22, v17);
  v64 = v98;
  if (v62)
  {
    v63(v25, v17);
    v65 = 1;
  }

  else
  {
    sub_1C584EBC0();
    v66 = sub_1C584F620();
    v63(v22, v17);
    if (v66)
    {
      v63(v25, v17);
      v65 = 2;
    }

    else
    {
      sub_1C584EBB0();
      v67 = sub_1C584F620();
      v63(v22, v17);
      v63(v25, v17);
      if (v67)
      {
        v65 = 3;
      }

      else
      {
        v65 = 0;
      }
    }
  }

  sub_1C56969AC(v65);
  result = [objc_opt_self() currentLocale];
  v69 = v97;
  if (!result)
  {
    goto LABEL_54;
  }

  v70 = result;
  v71 = sub_1C584F630();
  v72 = [v70 objectForKey_];

  if (v72)
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  v108 = v106;
  v109 = v107;
  if (*(&v107 + 1))
  {
    if (swift_dynamicCast())
    {
      v73 = v105;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    sub_1C5625230(&v108, &qword_1EC16E790, &unk_1C586A110);
    v73 = 0;
  }

  if ([v70 objectForKey_])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0u;
    v107 = 0u;
  }

  v108 = v106;
  v109 = v107;
  if (*(&v107 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v104)
      {
        LOBYTE(v74) = 1;
      }

      else
      {
        LOBYTE(v74) = 2;
      }

      if (!v73)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_1C5625230(&v108, &qword_1EC16E790, &unk_1C586A110);
  }

  LOBYTE(v74) = 2;
  if (!v73)
  {
    goto LABEL_34;
  }

LABEL_32:
  sub_1C584F690();

  v75 = sub_1C584FD70();

  if (v75 <= 2)
  {
    v74 = 0x201u >> (8 * v75);
  }

LABEL_34:
  sub_1C56969DC(v74);
  v76 = v93;
  sub_1C584ED30();
  v77 = sub_1C584ECF0();
  result = (*(v94 + 8))(v76, v95);
  if (v77 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v77 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  sub_1C5696A48(v77);
  v78 = v91;
  sub_1C584EC80();
  sub_1C584ECD0();
  v100(v78, v61);
  v79 = *(v69 + 104);
  v79(v99, *MEMORY[0x1E6969750], v64);
  sub_1C5772EA8(&qword_1EC1710D0, MEMORY[0x1E6969760]);
  sub_1C584F730();
  sub_1C584F730();
  if (v108 == v106)
  {
    v80 = 1;
  }

  else
  {
    v80 = sub_1C584FDC0();
  }

  v81 = *(v69 + 8);
  v81(v99, v64);

  if (v80)
  {
    v82 = 1;
    v83 = v89;
    v84 = v88;
  }

  else
  {
    v79(v92, *MEMORY[0x1E6969758], v64);
    sub_1C584F730();
    sub_1C584F730();
    if (v108 == v106)
    {
      v82 = 1;
    }

    else
    {
      v82 = sub_1C584FDC0();
    }

    v83 = v89;
    v84 = v88;
    v81(v92, v64);
  }

  v85 = v102;
  sub_1C5696A80(v82 & 1);
  if (v83 == 2)
  {
    v86 = 3;
  }

  else
  {
    v86 = 1;
  }

  if (v83 == 1)
  {
    v87 = 2;
  }

  else
  {
    v87 = v86;
  }

  sub_1C5696AB0(v87);
  sub_1C5773494(v85, v84, type metadata accessor for MUUserPreferences);
  sub_1C569C9B4(v84);

  v81(v103, v64);
  return sub_1C57734FC(v85, type metadata accessor for MUUserPreferences);
}