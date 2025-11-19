unint64_t sub_24EF87278()
{
  result = qword_27F2354A0;
  if (!qword_27F2354A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354A0);
  }

  return result;
}

unint64_t sub_24EF872D0()
{
  result = qword_27F2354A8;
  if (!qword_27F2354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354A8);
  }

  return result;
}

unint64_t sub_24EF87328()
{
  result = qword_27F2354B0;
  if (!qword_27F2354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354B0);
  }

  return result;
}

unint64_t sub_24EF87380()
{
  result = qword_27F2354B8;
  if (!qword_27F2354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354B8);
  }

  return result;
}

unint64_t sub_24EF873D8()
{
  result = qword_27F2354C0;
  if (!qword_27F2354C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354C0);
  }

  return result;
}

unint64_t sub_24EF87430()
{
  result = qword_27F2354C8;
  if (!qword_27F2354C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354C8);
  }

  return result;
}

unint64_t sub_24EF87488()
{
  result = qword_27F2354D0;
  if (!qword_27F2354D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354D0);
  }

  return result;
}

unint64_t sub_24EF874E0()
{
  result = qword_27F2354D8;
  if (!qword_27F2354D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354D8);
  }

  return result;
}

unint64_t sub_24EF87538()
{
  result = qword_27F2354E0;
  if (!qword_27F2354E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354E0);
  }

  return result;
}

unint64_t sub_24EF87590()
{
  result = qword_27F2354E8;
  if (!qword_27F2354E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354E8);
  }

  return result;
}

unint64_t sub_24EF875E8()
{
  result = qword_27F2354F0;
  if (!qword_27F2354F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354F0);
  }

  return result;
}

unint64_t sub_24EF87640()
{
  result = qword_27F2354F8;
  if (!qword_27F2354F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2354F8);
  }

  return result;
}

unint64_t sub_24EF87698()
{
  result = qword_27F235500;
  if (!qword_27F235500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235500);
  }

  return result;
}

unint64_t sub_24EF876F0()
{
  result = qword_27F235508;
  if (!qword_27F235508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235508);
  }

  return result;
}

unint64_t sub_24EF87748()
{
  result = qword_27F235510;
  if (!qword_27F235510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235510);
  }

  return result;
}

unint64_t sub_24EF877A0()
{
  result = qword_27F235518;
  if (!qword_27F235518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235518);
  }

  return result;
}

unint64_t sub_24EF877F8()
{
  result = qword_27F235520;
  if (!qword_27F235520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235520);
  }

  return result;
}

unint64_t sub_24EF87850()
{
  result = qword_27F235528;
  if (!qword_27F235528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235528);
  }

  return result;
}

unint64_t sub_24EF878A8()
{
  result = qword_27F235530;
  if (!qword_27F235530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235530);
  }

  return result;
}

uint64_t sub_24EF878FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65766569686361 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xED00006275487365 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA656A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616F6268736164 && a2 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49646E65697266 && a2 == 0xED00007365746976 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C73646E65697266 && a2 == 0xEB00000000747369 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7250726579616C70 && a2 == 0xED0000656C69666FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA65680 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x697463416B636970 && a2 == 0xEC00000079746976 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA65660 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65536D6574737973 && a2 == 0xEE0073676E697474)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24EF87D84(uint64_t a1, unint64_t a2)
{
  result = sub_24F91F958();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](v5, a2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        v9 = sub_24EBD48E0(a1, v8);

        if ((v9 & 1) == 0)
        {
          sub_24F91F8F8();
        }

        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_24F92C738();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_24EF87EB0()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F01DD24();
  v6 = qword_27F232C48;
  if (*(v0 + qword_27F232C48))
  {
    v7 = v0 + qword_27F39CC30;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v4;
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      v26 = v2;
      v10 = v1;
      v11 = ObjectType;
      v12 = *(v8 + 24);
      v13 = *(v12 + 32);

      v15 = v11;
      v1 = v10;
      v2 = v26;
      v13(v14, v15, v12);
      v4 = v25;

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v7 + 1);
      v17 = swift_getObjectType();
      (*(v16 + 32))(*(v0 + qword_27F232C80), v17, v16);
      swift_unknownObjectRelease();
    }

    v18 = *(*v0 + 704);

    v18(v19, 0);

    *(v0 + v6) = 0;
  }

  if (*(v0 + qword_27F232C78) == 1)
  {
    result = swift_beginAccess();
    v20 = v0[2];
    if (v20)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v22 = v21;
      (*(v2 + 8))(v4, v1);
      v23 = v20 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v23 = v22;
      *(v23 + 8) = 0;
      v24 = *(v20 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v24 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }
  }

  return result;
}

uint64_t sub_24EF881B8(char a1)
{
  v2 = v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-1] - v9;
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 264))(v13);
  if ((result & 1) == 0)
  {
    v17 = qword_27F39CC70;
    result = swift_beginAccess();
    if (*(v2 + v17) != 1 && (*(v2 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
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
            (*(v5 + 104))(v7, *MEMORY[0x277D222A0], v4);

            sub_24F92A0D8();

            (*(v5 + 8))(v7, v4);
          }

          (*(*v2 + 1136))(v15);
          v18 = sub_24E74EC40();
          swift_retain_n();
          v19 = sub_24F92BEF8();
          v21[3] = v18;
          v21[4] = MEMORY[0x277D225C0];
          v21[0] = v19;
          sub_24F92A958();

          (*(v12 + 8))(v15, v11);
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }

        else
        {
          return (*(v12 + 8))(v15, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EF88600(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24EF886E8(unint64_t a1, uint64_t a2)
{
  v5 = qword_27F39CC48;
  v6 = *(v2 + qword_27F39CC48);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v6);
    v6 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  v8 = *(v2 + v5);
  *(v2 + v5) = v6;
  sub_24EF8A06C(v8);
}

uint64_t sub_24EF887A8(uint64_t a1, char a2)
{
  v3 = v2;
  v26 = sub_24F91F648();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = qword_27F232C78;
  *(v2 + qword_27F232C78) = v8 & 1;
  *(v2 + qword_27F232C80) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_27F39CC68);
  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v13 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = qword_27F39CC58;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = type metadata accessor for GenericPage();
  v28 = v16;
  v29 = &protocol witness table for BasePage;
  v17 = sub_24EF8F4E4(&qword_27F235598, type metadata accessor for GenericPage);
  v30 = v17;
  v27[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v27, v3 + 40, &qword_27F224F98);
  swift_endAccess();
  sub_24EC832DC();
  result = sub_24E601704(v27, &qword_27F224F98);
  if (*(v3 + v9) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (*(v3 + 16))
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v20 = v19;
        (*(v25 + 8))(v7, v26);
        PendingPageRender.initialRequestEndTime.setter(v20, 0);
      }
    }

    swift_beginAccess();
    if (*(v3 + 16))
    {
      v29 = &protocol witness table for BasePage;
      v30 = v17;
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

      v22(v23);
      sub_24E824448(v22);
      v24 = *v21;
    }

    else
    {
      v24 = 0;
    }

    *v21 = 0;
    v21[1] = 0;
    return sub_24E824448(v24);
  }

  return result;
}

uint64_t sub_24EF88B94(uint64_t result)
{
  if (*(result + 16) && (*(v1 + qword_27F232C88) & 1) == 0)
  {
    if (*(v1 + qword_27F232C58))
    {
      *(v1 + qword_27F232C88) = 1;
      v2 = result;

      sub_24EBDFF44(v3);

      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      *(v4 + 24) = v2;
      v5 = sub_24E74EC40();
      swift_retain_n();

      v6 = sub_24F92BEF8();
      v7[3] = v5;
      v7[4] = MEMORY[0x277D225C0];
      v7[0] = v6;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_24EF88CE4(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v29);
  sub_24E615E00(a2, &v30);
  v4 = qword_27F39CC48;
  v5 = *(v2 + qword_27F39CC48);
  v26 = v29;

  v6 = sub_24E8E26D0(sub_24EEB626C, v25, v5);
  v8 = v7;

  if (v8)
  {
    return sub_24E601704(v29, &qword_27F222A30);
  }

  v10 = *(v2 + v4);
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x253052270](v6, v10);

LABEL_6:
    v13 = *(v11 + 24);
    MEMORY[0x28223BE20](v12);
    v24 = v29;

    v14 = sub_24E8E27EC(sub_24EEB628C, v23, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v28 = *(v11 + 24);

      sub_24EA0E6B0(v14, v27);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v27[0] = 104;
      v17 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v28, v27, 1, 2);

      v18 = v2 + qword_27F39CC30;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 8);
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B20);
        sub_24F91FA78();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_24F93DE60;
        v21 = MEMORY[0x253045380](v14, v6);
        v22 = MEMORY[0x28223BE20](v21);
        v23[0] = v2;
        v23[1] = v6;
        v24 = v17;
        (*(v19 + 40))(v20, sub_24EF8F694, v22);

        swift_unknownObjectRelease();
        return sub_24E601704(v29, &qword_27F222A30);
      }
    }

    return sub_24E601704(v29, &qword_27F222A30);
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * v6 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF89050()
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
    sub_24ED47FDC(v2);
  }

  return result;
}

uint64_t sub_24EF890EC(uint64_t a1, void *a2)
{
  v4 = sub_24F92A078();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F648();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v76 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v83 = v8;
  v9 = *(a1 + v8);
  v10 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  v12 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  v84 = a1;
  swift_beginAccess();
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = (v9 + 32);
  v75 = v11 - 1;
  v82 = (v9 + 32);
  do
  {
    v15 = &v14[5 * v13];
    v16 = v13;
    v17 = v84;
    while (1)
    {
      if (v16 >= *(v9 + 16))
      {
        goto LABEL_38;
      }

      sub_24E65864C(v15, v88);
      if (!*(*(v17 + v12) + 16))
      {
        goto LABEL_4;
      }

      sub_24E76D934(v88);
      if (v18)
      {
        break;
      }

LABEL_4:
      ++v16;
      sub_24E6585F8(v88);
      v15 += 40;
      if (v11 == v16)
      {
        goto LABEL_12;
      }
    }

    v19 = sub_24E6585F8(v88);
    MEMORY[0x253050F00](v19);
    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v13 = v16 + 1;
    sub_24F92B638();
    v10 = v87;
    v14 = v82;
  }

  while (v75 != v16);
LABEL_12:

  v20 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v10;
  sub_24EF8A06C(v20);

  v21 = *(v84 + v83);
  v22 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);

  swift_beginAccess();
  if (!v23)
  {
    v9 = v22;
    goto LABEL_26;
  }

  v24 = 0;
  v25 = (v21 + 32);
  v75 = v23 - 1;
  v9 = MEMORY[0x277D84F90];
  v82 = (v21 + 32);
  while (2)
  {
    v26 = &v25[5 * v24];
    v27 = v24;
    v28 = v84;
    while (2)
    {
      if (v27 >= *(v21 + 16))
      {
        goto LABEL_39;
      }

      sub_24E65864C(v26, v88);
      if (!*(*(v28 + v12) + 16))
      {
LABEL_16:
        ++v27;
        sub_24E6585F8(v88);
        v26 += 40;
        if (v23 == v27)
        {
          v22 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v88);
    if ((v29 & 1) == 0)
    {

      goto LABEL_16;
    }

    v30 = sub_24E6585F8(v88);
    MEMORY[0x253050F00](v30);
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v24 = v27 + 1;
    sub_24F92B638();
    v9 = v86;
    v22 = MEMORY[0x277D84F90];
    v25 = v82;
    if (v75 != v27)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v82 = a2;

  v88[0] = v22;
  if (v9 >> 62)
  {
    goto LABEL_41;
  }

  v31 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
LABEL_28:
    v32 = 0;
    v33 = v12;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x253052270](v32, v9);
        v12 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v32 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v34 = *(v9 + 8 * v32 + 32);

        v12 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v31 = sub_24F92C738();
          if (!v31)
          {
            break;
          }

          goto LABEL_28;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

      sub_24EA0B130(v35);
      ++v32;
      v36 = v12 == v31;
      v12 = v33;
    }

    while (!v36);
  }

  v37 = sub_24F45DB90(v88[0]);

  v38 = v82;
  v39 = *(v82 + qword_27F232C60);
  *(v82 + qword_27F232C60) = v37;

  v40 = sub_24EDD4C24(v39, v37);

  if ((v40 & 1) == 0)
  {

    sub_24EF88B94(v41);
  }

  v42 = v84;
  sub_24E60169C(v84 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v88, &qword_27F2129B0);
  v43 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E8E7708(v88, v38 + v43);
  swift_endAccess();
  (*(*v38 + 1312))(v42, 0);
  v44 = v38 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 1);
    ObjectType = swift_getObjectType();
    (*(v45 + 32))(*(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions), ObjectType, v45);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = *(v44 + 1);
    swift_getObjectType();
    sub_24EC9C404();
    (*(*(v47 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v44 + 1);
    v49 = swift_getObjectType();
    (*(*(*(v48 + 24) + 16) + 8))(v49);
    swift_unknownObjectRelease();
  }

  v50 = v84;

  sub_24EF88600(v51);
  v52 = *(v50 + v83);
  v53 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v54 = *(v52 + 16);

  result = swift_beginAccess();
  if (!v54)
  {
    goto LABEL_61;
  }

  v56 = 0;
  v57 = v52 + 32;
  v75 = v54 - 1;
  v83 = v52 + 32;
  while (2)
  {
    v58 = v57 + 40 * v56;
    v59 = v56;
    v60 = v84;
    while (2)
    {
      if (v59 >= *(v52 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24E65864C(v58, v88);
      if (!*(*(v60 + v12) + 16))
      {
LABEL_54:
        ++v59;
        result = sub_24E6585F8(v88);
        v58 += 40;
        if (v54 == v59)
        {
          goto LABEL_61;
        }

        continue;
      }

      break;
    }

    sub_24E76D934(v88);
    if ((v61 & 1) == 0)
    {

      goto LABEL_54;
    }

    v62 = sub_24E6585F8(v88);
    MEMORY[0x253050F00](v62);
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v56 = v59 + 1;
    result = sub_24F92B638();
    v53 = v85;
    v57 = v83;
    if (v75 != v59)
    {
      continue;
    }

    break;
  }

LABEL_61:

  (*(*v38 + 704))(v53, 0);

  swift_beginAccess();
  v63 = v38[2];
  if (v63)
  {

    v64 = v76;
    sub_24F91F638();
    sub_24F91F5E8();
    v66 = v65;
    (*(v77 + 8))(v64, v78);
    v67 = v63 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v67 = v66;
    *(v67 + 8) = 0;
    v68 = *(v63 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v68 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  swift_beginAccess();
  if (v38[3])
  {
    v69 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v70 = v84;
    swift_beginAccess();
    v71 = sub_24F928818();
    v72 = v79;
    (*(*(v71 - 8) + 16))(v79, v70 + v69, v71);
    v74 = v80;
    v73 = v81;
    (*(v80 + 104))(v72, *MEMORY[0x277D22290], v81);

    sub_24F92A0C8();

    (*(v74 + 8))(v72, v73);
  }

  return (*(*v38 + 576))(0);
}

void sub_24EF89BD4(void *a1, void *a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0, v9);
  sub_24E60169C(a2 + qword_27F39CC40, v11 + *(v8 + 20), &qword_27F228530);
  *v11 = a1;
  swift_beginAccess();
  v12 = a2[2];
  if (v12)
  {
    v31 = v5;
    v32 = v4;
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError);
    v13 = swift_allocError();
    sub_24EBDEC38(v11, v14);
    v15 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v16 = *(v12 + v15);
    v17 = a1;

    v18 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_24E617130(0, v16[2] + 1, 1, v16);
      *(v12 + v15) = v16;
    }

    v21 = v16[2];
    v20 = v16[3];
    if (v21 >= v20 >> 1)
    {
      v16 = sub_24E617130((v20 > 1), v21 + 1, 1, v16);
    }

    v16[2] = v21 + 1;
    v16[v21 + 4] = v13;
    *(v12 + v15) = v16;
    swift_endAccess();

    v5 = v31;
    v4 = v32;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError);
    v23 = swift_allocError();
    sub_24EBDEC38(v11, v24);
    *v7 = v23;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  v25 = a2 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 1);
    ObjectType = swift_getObjectType();
    sub_24EF8F4E4(&qword_27F22B028, type metadata accessor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v11, v29);
    (*(*(*(v26 + 24) + 24) + 24))(v28, ObjectType);
    swift_unknownObjectRelease();
    sub_24EF8F52C(v11, type metadata accessor for PresenterError);
  }

  else
  {
    sub_24EF8F52C(v11, type metadata accessor for PresenterError);
  }
}

uint64_t sub_24EF8A06C(unint64_t a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0);
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D30);
  MEMORY[0x28223BE20](v40);
  v38 = v34 - v7;
  v8 = qword_27F232C40;
  swift_beginAccess();
  v39 = v1;
  v9 = *(v1 + v8);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v11 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v34[1] = v3 + 32;
    v34[2] = v3 + 16;
    v34[0] = v3 + 8;
    do
    {
      if (v36)
      {
        v12 = MEMORY[0x253052270](v11, a1);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v10 = sub_24F92C738();
          goto LABEL_3;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = *(v9 + 16);
      if (v11 == v13)
      {

        break;
      }

      if (v11 >= v13)
      {
        goto LABEL_33;
      }

      v14 = v8;
      v15 = a1;
      v16 = v9;
      v17 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11;
      v18 = v41;
      v19 = *(v40 + 48);
      v20 = v38;
      (*(v3 + 16))(&v38[v19], v17, v41);
      v21 = &v20[v19];
      v22 = v37;
      (*(v3 + 32))(v37, v21, v18);
      if (*(v12 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_24F9280B8();

        (*v34[0])(v22, v18);
      }

      else
      {
        (*v34[0])(v22, v18);
      }

      a1 = v15;
      ++v11;
      v8 = v14;
      v9 = v16;
    }

    while (v10 != v11);
  }

  v23 = v39;
  *(v39 + v8) = MEMORY[0x277D84F90];

  v25 = *(v23 + qword_27F39CC48);
  if (v25 >> 62)
  {
    result = sub_24F92C738();
    v26 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return result;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v25 & 0xC000000000000001;
    v38 = (v3 + 32);

    v27 = 0;
    v37 = v25;
    do
    {
      if (v40)
      {
        v28 = MEMORY[0x253052270](v27, v25);
      }

      else
      {
        v28 = *&v25[8 * v27 + 32];
      }

      if (*(v28 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        v29 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
        sub_24E602068(&qword_27F222A58, &qword_27F222A50);

        sub_24F9288B8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355A0);
        sub_24F9288C8();
        __swift_destroy_boxed_opaque_existential_1(v43);
        swift_beginAccess();
        v30 = *(v23 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v23 + v8) = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = sub_24E618BBC(0, v30[2] + 1, 1, v30);
          *(v23 + v8) = v30;
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_24E618BBC(v32 > 1, v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33, v42, v41);
        v23 = v39;
        *(v39 + v8) = v30;
        swift_endAccess();

        v26 = v29;
        v25 = v37;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  return result;
}

uint64_t sub_24EF8A610(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30);
  sub_24EF88CE4(v4, v5);
  sub_24E601704(v6, &qword_27F222A30);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t (*sub_24EF8A6B0(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF8F628;
  *(v2 + 24) = a1;

  return sub_24EF8F668;
}

uint64_t sub_24EF8A728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = sub_24F91F968();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_27F39CC48;
  v16 = *(a5 + qword_27F39CC48);

  sub_24EF87D84(a6, v16);
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = a3;
  v27 = a4;
  v17 = Array<A>.personalizedShelves(with:)(&v25, v16);

  v18 = *(a5 + v15);
  *(a5 + v15) = v17;
  sub_24EF8A06C(v18);

  v19 = a5 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v20 + 24) + 48))(v14, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v12 + 8))(v14, v24);
  *(a5 + qword_27F232C88) = 0;
  return result;
}

uint64_t sub_24EF8A8E8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D140);
  __swift_project_value_buffer(v4, qword_27F39D140);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t ArcadePagePresenter.init(objectGraph:arcadeSubscriptionManager:page:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = (v4 + qword_27F39D158);
  *v16 = 0;
  v16[1] = 0;
  v17 = v4 + qword_27F39D160;
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = 3;
  *(v4 + qword_27F235540) = 0;
  v18 = (v4 + qword_27F235548);
  *v18 = 0;
  v18[1] = 0;
  *(v4 + qword_27F39D168) = 0;
  *(v4 + qword_27F235550) = a2;
  v60 = a2;
  v19 = &a2[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v20 = v19[8];
  v21 = v4 + qword_27F235558;
  v59 = *v19;
  *v21 = v59;
  *(v21 + 8) = v20;
  v22 = *v19;
  v23 = v19[8];
  v24 = v4 + qword_27F235560;
  *v24 = *v19;
  *(v24 + 8) = v23;
  v25 = a4;
  if ((v19[8] & 0xC0) != 0x80)
  {
    v25 = a4 + *(type metadata accessor for ArcadePageUrls() + 20);
  }

  v58 = a4;
  sub_24E60169C(v25, v12, &qword_27F228530);
  sub_24E911D90(v12, v15);
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v57 = v15;
  v26 = v61;
  sub_24E60169C(v15, v61, &qword_27F228530);
  sub_24E60169C(v66, v65, &qword_27F229490);
  *(v4 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27F232C78) = 0;
  v27 = MEMORY[0x277D84F90];
  *(v4 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v4 + qword_27F232C40) = v27;
  v28 = (v4 + qword_27F39CC50);
  *v28 = 0u;
  v28[1] = 0u;
  *(v4 + qword_27F232C48) = 0;
  *(v4 + qword_27F232C80) = 0;
  *(v4 + qword_27F39CC58) = 0;
  v29 = (v4 + qword_27F39CC60);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + qword_27F39CC68);
  *v30 = 0;
  v30[1] = 0;
  *(v4 + qword_27F39CC70) = 0;
  v31 = MEMORY[0x277D84FA0];
  *(v4 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v4 + qword_27F232C88) = 0;
  sub_24E60169C(v26, v4 + qword_27F39CC40, &qword_27F228530);
  *(v4 + qword_27F232C58) = 0;
  sub_24E60169C(v65, v4 + qword_27F39CC38, &qword_27F229490);
  v32 = &qword_27F231FE8[3];
  *(v4 + qword_27F232C50) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v31;
  v33 = v62;
  swift_retain_n();
  v60 = v60;
  sub_24EB6CE50(v59, v20);
  sub_24EB6CE50(v22, v23);

  v34 = sub_24EC8415C(v33, 0, 0, 0);

  if (a3)
  {
    v35 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v36 = *(a3 + v35);
    v64 = v27;
    v37 = v36[2];
    v38 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (!v37)
    {
      goto LABEL_15;
    }

    v39 = 0;
    v40 = v36 + 4;
    v56 = v37 - 1;
    v59 = v36 + 4;
    while (1)
    {
      v41 = v40 + 40 * v39;
      v42 = v39;
      while (1)
      {
        if (v42 >= v36[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_24E65864C(v41, v63);
        if (*(*(a3 + v38) + 16))
        {
          break;
        }

LABEL_7:
        ++v42;
        sub_24E6585F8(v63);
        v41 += 40;
        if (v37 == v42)
        {
          goto LABEL_15;
        }
      }

      sub_24E76D934(v63);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = sub_24E6585F8(v63);
      MEMORY[0x253050F00](v44);
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v39 = v42 + 1;
      sub_24F92B638();
      v27 = v64;
      v40 = v59;
      if (v56 == v42)
      {
LABEL_15:

        *(v34 + qword_27F39CC48) = v27;

        v45 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
        v46 = qword_27F39CC50;
        swift_beginAccess();
        sub_24E9CBF30(a3 + v45, v34 + v46, &qword_27F2129B0);
        swift_endAccess();
        *(v34 + qword_27F232C48) = sub_24EC9C404();

        (*(*v34 + 1312))(a3, 1);

        v32 = qword_27F231FE8 + 24;
        goto LABEL_17;
      }
    }

    goto LABEL_7;
  }

LABEL_17:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v47 = swift_dynamicCastClass();
  v42 = v58;
  v37 = v60;
  if (v47)
  {
    v48 = v47;
    swift_beginAccess();
    *(v48 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v49 = *(v34 + v32[394]);
    if (v49)
    {
      v50 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v51 = *(v49 + 32);
      *(v49 + 32) = sub_24EEB6550;
      *(v49 + 40) = v50;

      sub_24E824448(v51);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v36 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  sub_24E601704(v65, &qword_27F229490);
  sub_24E601704(v61, &qword_27F228530);
  sub_24E601704(v66, &qword_27F229490);
  sub_24E601704(v57, &qword_27F228530);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = *&v37[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  swift_retain_n();

  [v53 lock];
  sub_24F213714(v34, sub_24EF8EFD8, v52, v37);
  [v53 unlock];

  sub_24EF8F52C(v42, type metadata accessor for ArcadePageUrls);

  return v34;
}

void sub_24EF8B47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    v4 = v2;
    sub_24EB6CE50(v1, v2);
    sub_24EF8EBA8(&v3);

    sub_24EB6CE70(v1, v2);
  }
}

void sub_24EF8B508()
{

  sub_24EF43964(*(v0 + qword_27F39D160), *(v0 + qword_27F39D160 + 8), *(v0 + qword_27F39D160 + 16), *(v0 + qword_27F39D160 + 24), *(v0 + qword_27F39D160 + 32), *(v0 + qword_27F39D160 + 40));

  sub_24EB6CE70(*(v0 + qword_27F235558), *(v0 + qword_27F235558 + 8));
  sub_24E824448(*(v0 + qword_27F235548));
  v1 = *(v0 + qword_27F235560);
  v2 = *(v0 + qword_27F235560 + 8);

  sub_24EB6CE70(v1, v2);
}

uint64_t ArcadePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_24EEAF5D4();

  sub_24EF43964(*(v2 + qword_27F39D160), *(v2 + qword_27F39D160 + 8), *(v2 + qword_27F39D160 + 16), *(v2 + qword_27F39D160 + 24), *(v2 + qword_27F39D160 + 32), *(v2 + qword_27F39D160 + 40));

  sub_24EB6CE70(*(v2 + qword_27F235558), *(v2 + qword_27F235558 + 8));
  sub_24E824448(*(v2 + qword_27F235548));
  sub_24EB6CE70(*(v2 + qword_27F235560), *(v2 + qword_27F235560 + 8));
  return v2;
}

uint64_t ArcadePagePresenter.__deallocating_deinit()
{
  ArcadePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF8B6EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39D158);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_24EF8B758()
{
  v1 = (v0 + qword_27F39D158);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_24EF8B7B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27F39D160;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void *sub_24EF8B820(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + qword_27F39D160;
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = *v7;
  v13 = *(v7 + 32);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v11 = *(v7 + 40);
  *(v7 + 40) = v8;
  sub_24ED21BB0(v2, v3, v4, v5, v6, v8);
  return sub_24EF43964(v15, v9, v10, v14, v13, v11);
}

id sub_24EF8B8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27F39D160;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

void sub_24EF8B960(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v15 = *a1;
  v16 = v3;
  v4 = v1 + qword_27F235558;
  v5 = *(v1 + qword_27F235558 + 8);
  v13 = *(v1 + qword_27F235558);
  v14 = v5;
  sub_24EB6CE50(v13, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v15, &v13);
  sub_24EB6CE70(v13, v14);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = 0;
LABEL_10:
    sub_24EB6CE50(v2, v3);
    sub_24EB6CE50(v7, v8);
    sub_24EB6CE70(v2, v3);
    sub_24EB6CE70(v7, v8);

    sub_24EF8BEDC(v10);
    return;
  }

  if (v3 >> 6 == 3 || v9 == 2)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  if (v9)
  {
    sub_24EB6CE50(v2, v3);
    v11 = v7;
    v12 = v8;
  }

  else
  {
    if (v3 >> 6 == 2)
    {
      goto LABEL_9;
    }

    v11 = v2;
    v12 = v3;
  }

  sub_24EB6CE50(v11, v12);
  sub_24EB6CE70(v2, v3);

  sub_24EB6CE70(v7, v8);
}

uint64_t sub_24EF8BAE4()
{
  v1 = qword_27F39D168;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EF8BB28(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27F39D168;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590), (swift_dynamicCast() & 1) != 0))
    {
      v7 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v8 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v8 + 40))(v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    return sub_24E601704(&v9, &qword_27F235580);
  }

  return result;
}

void sub_24EF8BC70(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  v5 = v2 + qword_27F39CC30;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v5 + 8);
      v9 = swift_getObjectType();
      (*(*(*(v8 + 24) + 24) + 16))(v9);
      goto LABEL_6;
    }
  }

  sub_24F01DFD8(v4);
  if ((*(v2 + 32) & 1) == 0 && v4 == 1)
  {
    v10 = *(v2 + qword_27F235560 + 8);
    v15 = *(v2 + qword_27F235560);
    v16 = v10;
    v11 = *(v2 + qword_27F235558 + 8);
    v13 = *(v2 + qword_27F235558);
    v14 = v11;
    sub_24EB6CE50(v15, v10);
    sub_24EB6CE50(v13, v11);
    v12 = static ArcadeState.== infix(_:_:)(&v15, &v13);
    sub_24EB6CE70(v13, v14);
    sub_24EB6CE70(v15, v16);
    if ((v12 & 1) == 0)
    {
      sub_24EF8BEDC(1);
    }
  }
}

void (*sub_24EF8BDFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_24EF8BE88;
}

void sub_24EF8BE88(uint64_t a1)
{
  v1 = *a1;
  sub_24EF8BC70(*(*a1 + 32));

  free(v1);
}

void sub_24EF8BEDC(int a1)
{
  v47 = a1;
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_27F235540) != 1)
  {
    return;
  }

  swift_beginAccess();
  if (*(v1 + 32))
  {
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v52 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v47 & 1;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();

    return;
  }

  sub_24E74EC40();
  v46 = v1;
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v45 = sub_24F92BF48();
  (*(v11 + 8))(v13, v10);
  v53 = sub_24EF8EE10;
  v54 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_24EAF8248;
  v52 = &block_descriptor_96;
  v44 = _Block_copy(&aBlock);
  sub_24F927DA8();
  v48 = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  v15 = v46;
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v16 = v44;
  v17 = v45;
  MEMORY[0x2530518B0](0, v9, v5, v44);
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  v18 = v15 + qword_27F235558;
  v19 = *(v15 + qword_27F235558 + 8) >> 6;
  if (v19 <= 1)
  {
    if (v19)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v19 == 2)
  {
LABEL_10:
    sub_24EF8BB28(1);
    v20 = *v18;
    v21 = v15 + qword_27F235560;
    v22 = *(v15 + qword_27F235560);
    v23 = *(v18 + 8);
    *v21 = *v18;
    v24 = *(v21 + 8);
    *(v21 + 8) = v23;
    sub_24EB6CE50(v20, v23);
    sub_24EB6CE70(v22, v24);
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v25 = sub_24F92AAE8();
    __swift_project_value_buffer(v25, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v52 = &type metadata for ArcadeState;
    aBlock = *v21;
    LOBYTE(v50) = *(v21 + 8);
    sub_24EB6CE50(aBlock, v50);
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    v26 = *(v15 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves);
    v52 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = v26;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F92A588();

    sub_24EF881B8(v47 & 1);
    return;
  }

  if ((*v18 & 1) == 0)
  {
    v32 = v15 + qword_27F39CC30;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v33 + 24) + 24) + 8))(ObjectType);
LABEL_29:
    swift_unknownObjectRelease();
    return;
  }

  if (v47)
  {
    if (qword_27F210CD8 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39D140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    v52 = &type metadata for ArcadeState;
    v28 = v46;
    aBlock = *(v46 + qword_27F235560);
    LOBYTE(v50) = *(v46 + qword_27F235560 + 8);
    sub_24EB6CE50(aBlock, v50);
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();

    v29 = v28 + qword_27F39CC30;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      v31 = swift_getObjectType();
      (*(*(*(v30 + 24) + 24) + 8))(v31);
      swift_unknownObjectRelease();
    }

    LOBYTE(v48) = -63;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v48);

    return;
  }

  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v35 = sub_24F92AAE8();
  __swift_project_value_buffer(v35, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v52 = &type metadata for ArcadeState;
  v36 = v46;
  aBlock = *(v46 + qword_27F235560);
  LOBYTE(v50) = *(v46 + qword_27F235560 + 8);
  sub_24EB6CE50(aBlock, v50);
  sub_24F928438();
  sub_24E601704(&aBlock, &qword_27F2129B0);
  sub_24F92A588();

  v37 = *(v36 + qword_27F39CC48);
  *(v36 + qword_27F39CC48) = MEMORY[0x277D84F90];
  sub_24EF8A06C(v37);

  v38 = v36 + qword_27F39CC30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    v40 = swift_getObjectType();
    sub_24EF8EFF8();
    v41 = swift_allocError();
    (*(*(*(v39 + 24) + 24) + 24))(v41, v40);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v38 + 8);
    v43 = swift_getObjectType();
    (*(*(*(v42 + 24) + 16) + 8))(v43);
    goto LABEL_29;
  }
}

uint64_t sub_24EF8CB54(uint64_t a1)
{
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = v5;
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ArcadePageIntent();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v31 = a1;
  v28 = v13;
  v26 = v4 + 16;
  (v13)(v8, a1, v3, v10);
  v27 = v1;
  v14 = *(v1 + qword_27F235558 + 8);
  v15 = v14 <= 0x3F && *(v1 + qword_27F235558) == 1;
  v16 = (v14 & 0xC0) == 128;
  v17 = v14 == 129;
  v25 = *(v4 + 32);
  v25(v12, v8, v3);
  v12[v9[5]] = v16;
  v12[v9[6]] = v15;
  v12[v9[7]] = v17;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24F929C28();

  sub_24F928FE8();
  swift_beginAccess();

  sub_24F929BF8();

  v18 = sub_24F929C08();

  sub_24EB4700C(v12, v18, "GameStoreKit/ArcadePagePresenter.swift", 38, 2);
  v19 = v30;
  v28(v30, v31, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v25((v21 + v20), v19, v3);
  v32[3] = sub_24F929638();
  v32[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_24F929628();
  type metadata accessor for GenericPage();
  v22 = sub_24F92A938();

  sub_24EF8F52C(v12, type metadata accessor for ArcadePageIntent);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

uint64_t sub_24EF8CF08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v7 = sub_24F91F4A8();
  v10[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a2, v7);
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0);
  sub_24F92A588();

  *a3 = v5;
}

uint64_t sub_24EF8D0EC(uint64_t a1, char a2)
{
  sub_24EF887A8(a1, a2);
  type metadata accessor for ArcadePage();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v4 = *(result + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  v5 = *(result + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle + 8);
  v6 = (v2 + qword_27F39D158);
  v7 = result;
  v38 = result;
  swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;

  v8 = v7 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v9 = *(v7 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v10 = *(v7 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v11 = *(v7 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v12 = *(v7 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v13 = *(v8 + 32);
  v14 = v2 + qword_27F39D160;
  v15 = *(v8 + 40);
  swift_beginAccess();
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v36 = *(v14 + 24);
  v37 = *v14;
  v35 = *(v14 + 32);
  *v14 = v9;
  *(v14 + 8) = v10;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  LOBYTE(v4) = *(v14 + 40);
  *(v14 + 40) = v15;
  sub_24ED21BB0(v9, v10, v11, v12, v13, v15);
  sub_24EF43964(v37, v16, v17, v36, v35, v4);
  v18 = sub_24EC40820();
  v19 = v18;
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_34:
    v21 = sub_24F92C738();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  do
  {
    v24 = v22;
    if (v21 == v22)
    {
      break;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x253052270](v22, v19);
      if (__OFADD__(v24, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v25 = *(v19 + 8 * v22 + 32);

      if (__OFADD__(v24, 1))
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v39) = *(v25 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x6F46656461637261 && v26 == 0xEC0000007265746FLL)
    {

      goto LABEL_17;
    }

    v23 = sub_24F92CE08();

    v22 = v24 + 1;
  }

  while ((v23 & 1) == 0);

LABEL_17:
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_22;
  }

  v27 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_22:
    sub_24E601704(&v39, &qword_27F235580);
    goto LABEL_23;
  }

  v28 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  (*(v28 + 8))(v21 != v24, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_23:
  if (!swift_unknownObjectWeakLoadStrong() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590), (swift_dynamicCast() & 1) == 0))
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_28;
  }

  v29 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_28:
    sub_24E601704(&v39, &qword_27F235580);
    goto LABEL_29;
  }

  v30 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v31 = *(v30 + 16);

  v31(v32, v29, v30);

  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_29:
  if (*(v38 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction))
  {
    v33 = *(v38 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_24EF8D5AC(v34, v33);
  }
}

void sub_24EF8D5AC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = *(v2 + qword_27F235550) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v11 = *(v10 + 8);
  if (v11 < 0xC0)
  {
    if (v11 > 0x3F)
    {
      if (qword_27F210CD8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

    if (a2)
    {
      v17 = v3 + qword_27F39CC30;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v19 = *(v17 + 8), v46 = Strong, v47 = v19, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590), (swift_dynamicCast() & 1) != 0))
      {
        v20 = *(&v49 + 1);
        if (*(&v49 + 1))
        {
          v21 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v22 = swift_allocObject();
          swift_weakInit();
          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          *(v23 + 24) = a1;
          v24 = *(v21 + 24);

          v24(sub_24EF8F444, v23, v20, v21);

          __swift_destroy_boxed_opaque_existential_1(&v48);
          goto LABEL_22;
        }
      }

      else
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
      }

      sub_24E601704(&v48, &qword_27F235580);
LABEL_22:
      if (qword_27F210CD8 == -1)
      {
LABEL_23:
        v37 = sub_24F92AAE8();
        __swift_project_value_buffer(v37, qword_27F39D140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        return;
      }

LABEL_33:
      swift_once();
      goto LABEL_23;
    }

    type metadata accessor for ASKBagContract();
    sub_24F928FD8();
    sub_24F92A758();
    v25 = v48;
    v45 = [objc_opt_self() standardUserDefaults];
    v26 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
    v27 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F210A08 != -1)
    {
      swift_once();
    }

    v43 = qword_27F233968;
    v44 = v27;
    sub_24F92A398();
    sub_24F92A408();
    v28 = *(v7 + 8);
    v28(v9, v6);
    if (v26 >= v48)
    {
      if (qword_27F210CD8 != -1)
      {
        swift_once();
      }

      v38 = sub_24F92AAE8();
      __swift_project_value_buffer(v38, qword_27F39D140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      goto LABEL_32;
    }

    v29 = v3 + qword_27F39CC30;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    v42 = v25;
    if (v30 && (v31 = *(v29 + 8), v46 = v30, v47 = v31, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235588), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235590), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v49 + 1))
      {
        v32 = v50;
        v41 = *(&v49 + 1);
        v40[1] = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
        v33 = swift_allocObject();
        swift_weakInit();
        v34 = swift_allocObject();
        v34[2] = v33;
        v34[3] = a1;
        v35 = v45;
        v34[4] = v45;
        v40[0] = *(v32 + 24);

        v36 = v35;
        (v40[0])(sub_24EF8F41C, v34, v41, v32);

        __swift_destroy_boxed_opaque_existential_1(&v48);
LABEL_29:
        if (qword_27F210CD8 != -1)
        {
          swift_once();
        }

        v39 = sub_24F92AAE8();
        v41 = __swift_project_value_buffer(v39, qword_27F39D140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F9283A8();
        sub_24F92A398();
        sub_24F92A408();
        v28(v9, v6);
        *(&v49 + 1) = MEMORY[0x277D83B88];
        sub_24F928438();
        sub_24E601704(&v48, &qword_27F2129B0);
        sub_24F92A588();

LABEL_32:

        return;
      }
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    sub_24E601704(&v48, &qword_27F235580);
    goto LABEL_29;
  }

  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2 & 1;
  v15 = (v3 + qword_27F235548);
  v16 = *(v3 + qword_27F235548);
  *v15 = sub_24EF8F468;
  v15[1] = v14;

  sub_24E824448(v16);
}

uint64_t sub_24EF8E130(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24EF8D5AC(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24EF8E1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v16 = sub_24F92BEF8();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24EF8F474;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_79;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v13 = v16;
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_24EF8E4D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + qword_27F39CC30;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);

    if (Strong)
    {
      swift_beginAccess();
      v7 = swift_weakLoadStrong();
      v8 = v7;
      if (v7)
      {
        v7 = type metadata accessor for ArcadePagePresenter();
      }

      else
      {
        v10[1] = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[3] = v7;
      ObjectType = swift_getObjectType();
      (*(*(*(v6 + 24) + 8) + 8))(a2, v10, ObjectType);
      swift_unknownObjectRelease();
      return sub_24E601704(v10, &qword_27F2129B0);
    }
  }

  return result;
}

uint64_t sub_24EF8E604(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v19 = sub_24F92BEF8();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_24EF8F4C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_86;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EF8F4E4(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v16 = v19;
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_24EF8E944(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong + qword_27F39CC30;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 8);

    if (v7)
    {
      swift_beginAccess();
      v9 = swift_weakLoadStrong();
      v10 = v9;
      if (v9)
      {
        v9 = type metadata accessor for ArcadePagePresenter();
      }

      else
      {
        v15[1] = 0;
        v15[2] = 0;
      }

      v15[0] = v10;
      v15[3] = v9;
      ObjectType = swift_getObjectType();
      (*(*(*(v8 + 24) + 8) + 8))(a2, v15, ObjectType);
      swift_unknownObjectRelease();
      sub_24E601704(v15, &qword_27F2129B0);
    }
  }

  v12 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_24F92B098();
    [a3 setInteger:v13 forKey:v14];
  }
}

void sub_24EF8EAC8(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27F235560 + 8);
  v10 = *(v2 + qword_27F235560);
  v11 = v5;
  v6 = *(v2 + qword_27F235558 + 8);
  v8 = *(v2 + qword_27F235558);
  v9 = v6;
  sub_24EB6CE50(v10, v5);
  sub_24EB6CE50(v8, v6);
  v7 = static ArcadeState.== infix(_:_:)(&v10, &v8);
  sub_24EB6CE70(v8, v9);
  sub_24EB6CE70(v10, v11);
  if (v7)
  {

    sub_24F01B85C(a1, a2);
  }
}

void sub_24EF8EBA8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v12 = &type metadata for ArcadeState;
  v10 = v2;
  v11 = v3;
  sub_24EB6CE50(v2, v3);
  sub_24F928438();
  sub_24E601704(&v10, &qword_27F2129B0);
  sub_24F92A588();

  v5 = v1 + qword_27F235558;
  v6 = *(v1 + qword_27F235558);
  *v5 = v2;
  v7 = *(v5 + 8);
  *(v5 + 8) = v3;
  sub_24EB6CE50(v2, v3);
  sub_24EB6CE50(v6, v7);
  sub_24EB6CE70(v6, v7);
  v10 = v6;
  v11 = v7;
  sub_24EF8B960(&v10);
  sub_24EB6CE70(v6, v7);
  v8 = (v1 + qword_27F235548);
  v9 = *(v1 + qword_27F235548);
  if (v9)
  {
    *v8 = 0;
    v8[1] = 0;
    v9();
    sub_24E824448(v9);
  }
}

void sub_24EF8EE10()
{
  if (qword_27F210CD8 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39D140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v1 = [objc_opt_self() daemonProxy];
}

uint64_t sub_24EF8EFA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EF8EFF8()
{
  result = qword_27F235568;
  if (!qword_27F235568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235568);
  }

  return result;
}

uint64_t sub_24EF8F04C()
{
  v1 = sub_24F91F4A8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EF8F150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39D158);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24EF8F1B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39D168;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for ArcadePagePresenter()
{
  result = qword_27F235570;
  if (!qword_27F235570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EF8F4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF8F52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_67Tm_0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_24EF8F630()
{

  return swift_deallocObject();
}

uint64_t sub_24EF8F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF8F7D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerAvatarView(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for CardCompactAvatarView()
{
  result = qword_27F2355A8;
  if (!qword_27F2355A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EF8F8D8()
{
  type metadata accessor for PlayerAvatarView(319);
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_24EF8F978@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_24F925808();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24EF8FCD0(v2, v10);
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A40) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = v2 + *(type metadata accessor for CardCompactAvatarView() + 20);
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v22 = v35;
  }

  swift_getKeyPath();
  *&v35 = v22;
  sub_24EF8FEC8(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v25 = *(v22 + 16);
  v33 = *(v22 + 32);
  v34 = v25;

  v26 = sub_24F925808();
  v27 = &v10[*(v8 + 36)];
  *v27 = v26;
  v28 = v34;
  *(v27 + 24) = v33;
  *(v27 + 8) = v28;
  v27[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24EF8FD3C(v10, a1);
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355C0) + 36);
  v30 = v40;
  *(v29 + 64) = v39;
  *(v29 + 80) = v30;
  *(v29 + 96) = v41;
  v31 = v36;
  *v29 = v35;
  *(v29 + 16) = v31;
  result = v38;
  *(v29 + 32) = v37;
  *(v29 + 48) = result;
  return result;
}

uint64_t sub_24EF8FCD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF8FD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EF8FDB0()
{
  result = qword_27F2355C8;
  if (!qword_27F2355C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2355C0);
    sub_24EF8FE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355C8);
  }

  return result;
}

unint64_t sub_24EF8FE3C()
{
  result = qword_27F2355D0;
  if (!qword_27F2355D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2355B8);
    sub_24E63C068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355D0);
  }

  return result;
}

uint64_t sub_24EF8FEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF8FF10(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v32 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v6 = sub_24F92C738();
LABEL_3:
    v30 = a2 >> 62;
    if (a2 >> 62)
    {
      v7 = sub_24F92C738();
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v34 = MEMORY[0x277D84F90];
    sub_24F92C978();
    if (v8 < 0)
    {
      __break(1u);
LABEL_60:

      __break(1u);
      return result;
    }

    v9 = v8;
    v27 = v5;
    v28 = a2;
    if (!v8)
    {
      break;
    }

    v31 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v26 = v3;
    v29 = a2 & 0xC000000000000001;
    v12 = 4;
    v25 = v9;
    v3 = v9;
    while (1)
    {
      v13 = v32 ? sub_24F92C738() : *(v10 + 16);
      v14 = v12 - 4;
      if (v12 - 4 == v13)
      {
        break;
      }

      if (v31)
      {
        v15 = MEMORY[0x253052270](v12 - 4, v5);
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_56;
        }

        v15 = *(v5 + 8 * v12);

        if (!v30)
        {
LABEL_17:
          v16 = *(v11 + 16);
          goto LABEL_21;
        }
      }

      v16 = sub_24F92C738();
LABEL_21:
      if (v14 == v16)
      {
        goto LABEL_60;
      }

      if (v29)
      {
        MEMORY[0x253052270](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_52;
        }
      }

      v33 = *(v15 + 24);

      sub_24EA0AEC0(v17);
      v18 = v33;
      LOBYTE(v33) = 104;
      Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v18, &v33, 1, 2);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      ++v12;
      --v3;
      v5 = v27;
      a2 = v28;
      if (!v3)
      {
        v9 = v25;
        v3 = v26;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  v31 = v5 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v29 = a2 & 0xC000000000000001;
LABEL_29:
  v19 = v9 + 4;
  if (!v32)
  {
LABEL_30:
    v20 = *(v10 + 16);
    goto LABEL_32;
  }

  while (1)
  {
    v20 = sub_24F92C738();
LABEL_32:
    v21 = v19 - 4;
    if (v19 - 4 == v20)
    {
      return v34;
    }

    if (v31)
    {
      v5 = MEMORY[0x253052270](v19 - 4, v5);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v21 >= *(v10 + 16))
      {
        goto LABEL_54;
      }

      v5 = *(v5 + 8 * v19);

      if (__OFADD__(v21, 1))
      {
        goto LABEL_53;
      }
    }

    if (v30)
    {
      if (v21 == sub_24F92C738())
      {
LABEL_49:

        return v34;
      }
    }

    else if (v21 == *(v11 + 16))
    {
      goto LABEL_49;
    }

    if (v29)
    {
      MEMORY[0x253052270](v19 - 4, a2);
    }

    else
    {
      if (v21 >= *(v11 + 16))
      {
        goto LABEL_55;
      }
    }

    v33 = *(v5 + 24);

    sub_24EA0AEC0(v22);
    v23 = v33;
    LOBYTE(v33) = 104;
    Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v23, &v33, 1, 2);

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
    ++v19;
    v5 = v27;
    a2 = v28;
    if (!v32)
    {
      goto LABEL_30;
    }
  }
}

GameStoreKit::ShelfHeader::ArtworkType_optional __swiftcall ShelfHeader.ArtworkType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShelfHeader.ArtworkType.rawValue.getter()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852793705;
  }
}

uint64_t sub_24EF903EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1852793705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1852793705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_24EF904E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF90584()
{
  sub_24F92B218();
}

uint64_t sub_24EF9060C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EF906B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1852793705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ShelfHeader.Configuration.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v37 - v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v37 = &v37 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  sub_24F928398();
  v44 = JSONObject.appStoreColor.getter();
  v27 = *(v5 + 8);
  v27(v26, v4);
  sub_24F928398();
  v43 = JSONObject.appStoreColor.getter();
  v27(v23, v4);
  sub_24F928398();
  v41 = JSONObject.appStoreColor.getter();
  v27(v20, v4);
  sub_24F928398();
  v39 = JSONObject.appStoreColor.getter();
  v27(v17, v4);
  v28 = v37;
  sub_24F928398();
  v38 = JSONObject.appStoreColor.getter();
  v27(v28, v4);
  v29 = v40;
  sub_24F928398();
  v37 = JSONObject.appStoreColor.getter();
  v27(v29, v4);
  v30 = v42;
  sub_24F928398();
  LOBYTE(v17) = sub_24F928278();
  v27(v30, v4);
  v31 = v45;
  sub_24F928398();
  LOBYTE(v20) = sub_24F928278();
  v27(v31, v4);
  v32 = v46;
  sub_24F928398();
  v33 = sub_24F928278();
  v34 = sub_24F9285B8();
  (*(*(v34 - 8) + 8))(v47, v34);
  v27(a1, v4);
  result = (v27)(v32, v4);
  v36 = v48;
  *v48 = v44;
  v36[1] = v43;
  v36[2] = v41;
  v36[3] = v39;
  v36[4] = v38;
  v36[5] = v37;
  *(v36 + 48) = v17 & 1;
  *(v36 + 49) = v20 & 1;
  *(v36 + 50) = v33;
  return result;
}

uint64_t ShelfHeader.Configuration.init(eyebrowColor:eyebrowImageColor:titleColor:titleImageColor:subtitleColor:accessoryColor:includeSeparator:includeTrailingArtwork:prefersShelfHeader:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 49) = a8 & 1;
  *(a9 + 50) = a10;
  return result;
}

id ShelfHeader.Configuration.eyebrowColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ShelfHeader.Configuration.eyebrowImageColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.titleImageColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.subtitleColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ShelfHeader.Configuration.accessoryColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_24EF90D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v34 = *(a1 + 24);
  v35 = *(a1 + 32);
  v32 = *(a1 + 49);
  v33 = *(a1 + 48);
  v31 = *(a1 + 50);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v10 = *a1;
  v30 = *(v2 + 40);
  if (*a1)
  {
    v11 = *(a1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:
    v24 = v8;
    v11 = v8;
    v12 = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v10 = *v2;
  v23 = *v2;
  v11 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = v6;
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_13:
  v25 = v9;
  v12 = v9;
LABEL_4:
  v13 = v34;
  if (!v34)
  {
    v13 = v28;
    v14 = v28;
  }

  v15 = v35;
  if (v35)
  {
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v29;
    v26 = v29;
    v16 = v7;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v27 = v30;
  v16 = v30;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v33;
  *(a2 + 49) = v32;
  *(a2 + 50) = v31;
  v17 = v7;
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v21 = v34;

  return v35;
}

__n128 ShelfHeader.__allocating_init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  v22 = *a6;
  v23 = *a11;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5 & 1;
  *(v21 + 49) = v22;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = a9;
  *(v21 + 88) = a10;
  *(v21 + 96) = v23;
  *(v21 + 120) = a13;
  *(v21 + 104) = a12;
  *(v21 + 136) = a14;
  result = *a15;
  v25 = *(a15 + 16);
  v26 = *(a15 + 32);
  *(v21 + 191) = *(a15 + 47);
  *(v21 + 160) = v25;
  *(v21 + 176) = v26;
  *(v21 + 144) = result;
  return result;
}

uint64_t ShelfHeader.init(eyebrow:eyebrowArtwork:eyebrowArtworkSize:eyebrowArtworkType:eyebrowAction:eyebrowTrailingArtwork:title:titleArtwork:titleArtworkType:titleAction:subtitle:trailingArtwork:accessoryAction:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char *a11, __int128 a12, __int128 a13, uint64_t a14, __int128 *a15)
{
  v16 = *a6;
  v17 = *a11;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5 & 1;
  *(v15 + 49) = v16;
  *(v15 + 56) = a7;
  *(v15 + 64) = a8;
  *(v15 + 72) = a9;
  *(v15 + 88) = a10;
  *(v15 + 96) = v17;
  *(v15 + 120) = a13;
  *(v15 + 104) = a12;
  *(v15 + 136) = a14;
  v18 = *a15;
  v19 = a15[1];
  v20 = a15[2];
  *(v15 + 191) = *(a15 + 47);
  *(v15 + 160) = v19;
  *(v15 + 176) = v20;
  *(v15 + 144) = v18;
  return v15;
}

uint64_t ShelfHeader.eyebrow.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShelfHeader.title.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ShelfHeader.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ShelfHeader.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v7[0] = *(v1 + 144);
  v7[1] = v2;
  v8[0] = *(v1 + 176);
  v3 = v8[0];
  *(v8 + 15) = *(v1 + 191);
  v4 = *(v8 + 15);
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 47) = v4;
  return sub_24EF92B8C(v7, v6);
}

uint64_t ShelfHeader.shouldUseShelfHeader.getter()
{
  if ((*(v0 + 193) & 1) != 0 || *(v0 + 128))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v1 = *(v0 + 194);
    if (v1 == 2)
    {
      v4 = &type metadata for Feature;
      v5 = sub_24EAEAC44();
      v3[0] = 8;
      LOBYTE(v1) = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }
  }

  return v1 & 1;
}

uint64_t ShelfHeader.deinit()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  return v0;
}

uint64_t ShelfHeader.__deallocating_deinit()
{
  ShelfHeader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF912DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24EF915B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit11ShelfHeaderC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    sub_24E77ACC8();
    v11 = v6;
    v12 = v2;
    v13 = sub_24F92C408();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v36 = *(a2 + 40);
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v32 = *(a2 + 49);
    v33 = *(a1 + 49);
    v30 = *(a2 + 50);
    v31 = *(a1 + 50);
    if (v6)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_24E77ACC8();
    v14 = v7;
    v15 = v3;
    v16 = sub_24F92C408();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_24E77ACC8();
    v17 = v9;
    v18 = v5;
    v19 = sub_24F92C408();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    sub_24E77ACC8();
    v20 = v8;
    v21 = v4;
    v22 = sub_24F92C408();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v38)
  {
    if (!v10)
    {
      return 0;
    }

    sub_24E77ACC8();
    v23 = v10;
    v24 = v38;
    v25 = sub_24F92C408();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v37)
  {
    result = 0;
    if (v36)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!v36)
  {
    return 0;
  }

  sub_24E77ACC8();
  v26 = v36;
  v27 = v37;
  v28 = sub_24F92C408();

  result = 0;
  if ((v28 & 1) == 0)
  {
    return result;
  }

LABEL_31:
  if (((v35 ^ v34) & 1) == 0 && ((v33 ^ v32) & 1) == 0)
  {
    if (v31 == 2)
    {
      if (v30 != 2)
      {
        return 0;
      }
    }

    else if (v30 == 2 || ((v30 ^ v31) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_24EF915B4(char *a1, uint64_t a2)
{
  v90 = a2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v81 = sub_24F928388();
  v91 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - v12;
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - v14;
  MEMORY[0x28223BE20](v15);
  v82 = &v63 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v63 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = type metadata accessor for Artwork();
  sub_24F928398();
  v80 = v5;
  v23 = *(v5 + 16);
  v23(v9, a2, v4);
  v24 = sub_24E9838D4();
  sub_24F929548();
  v89 = v96;
  sub_24F928398();
  v92 = v4;
  v85 = v23;
  v86 = v5 + 16;
  v23(v9, v90, v4);
  v25 = a1;
  v87 = v9;
  v83 = v24;
  v84 = v22;
  v26 = v81;
  v27 = v91;
  sub_24F929548();
  v88 = v96;
  v28 = v74;
  sub_24F928398();
  v68 = sub_24F928348();
  v76 = v29;
  v32 = *(v27 + 8);
  v30 = v27 + 8;
  v31 = v32;
  v32(v28, v26);
  v33 = v82;
  sub_24F928398();
  v34 = sub_24F928338();
  v32(v33, v26);
  if (v34)
  {
    [v34 floatValue];
    v36 = v35;

    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v67 = v34;
  v38 = v90;
  if (v89)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v31(v21, v26);
    v39 = v96;
  }

  else
  {
    v39 = 3;
  }

  v66 = v39;
  v40 = type metadata accessor for Action();
  sub_24F928398();
  v82 = v40;
  v74 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  sub_24F928398();
  v85(v87, v38, v92);
  sub_24F929548();
  v72 = v96;
  v41 = v73;
  sub_24F928398();
  v65 = sub_24F928348();
  v71 = v42;
  v31(v41, v26);
  if (v88)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v31(v21, v26);
    v43 = v95;
  }

  else
  {
    v43 = 3;
  }

  v64 = v43;
  sub_24F928398();
  v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v31(v21, v26);
  v44 = v75;
  sub_24F928398();
  v63 = sub_24F928348();
  v69 = v31;
  v70 = v45;
  v31(v44, v26);
  sub_24F928398();
  v91 = v30;
  v46 = v92;
  v47 = v85;
  v85(v87, v38, v92);
  sub_24F929548();
  v84 = v95;
  sub_24F928398();
  v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v38);
  v48 = v26;
  v49 = v69;
  v69(v21, v48);
  v50 = v77;
  v87 = v25;
  sub_24F928398();
  v51 = v78;
  v47(v78, v38, v46);
  v52 = v79;
  ShelfHeader.Configuration.init(deserializing:using:)(v50, v51, v93);
  if (v52)
  {

    (*(v80 + 8))(v38, v92);
    return v49(v87, v81);
  }

  else
  {
    v54 = v67 == 0;
    (*(v80 + 8))(v38, v92);
    v49(v87, v81);
    type metadata accessor for ShelfHeader();
    result = swift_allocObject();
    v55 = v76;
    *(result + 16) = v68;
    *(result + 24) = v55;
    *(result + 32) = v89;
    *(result + 40) = v37;
    *(result + 48) = v54;
    *(result + 49) = v66;
    v56 = v72;
    *(result + 56) = v74;
    *(result + 64) = v56;
    v57 = v71;
    *(result + 72) = v65;
    *(result + 80) = v57;
    *(result + 88) = v88;
    *(result + 96) = v64;
    v58 = v84;
    *(result + 120) = v70;
    *(result + 128) = v58;
    v59 = v63;
    *(result + 104) = v73;
    *(result + 112) = v59;
    *(result + 136) = v83;
    v60 = v93[0];
    v61 = v93[1];
    v62 = *v94;
    *(result + 191) = *&v94[15];
    *(result + 160) = v61;
    *(result + 176) = v62;
    *(result + 144) = v60;
  }

  return result;
}

uint64_t _s12GameStoreKit11ShelfHeaderC13deserializing5using13seeAllContextACSg9JetEngine10JSONObjectV_AH11JSONContextVALtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24F928388();
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v98 = &v87 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for Artwork();
  sub_24F928398();
  v88 = v6;
  v20 = *(v6 + 16);
  v20(v8, a2, v5);
  v21 = sub_24E9838D4();
  sub_24F929548();
  v109 = v117;
  sub_24F928398();
  v113 = a2;
  v111 = v5;
  v22 = v5;
  v23 = a1;
  v107 = v6 + 16;
  v106 = v20;
  v20(v8, a2, v22);
  v24 = v110;
  v25 = v8;
  v104 = v21;
  v105 = v19;
  v26 = v103;
  sub_24F929548();
  v108 = v117;
  v27 = v98;
  sub_24F928398();
  v101 = sub_24F928348();
  v102 = v28;
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v29 = v31;
  v31(v27, v26);
  v32 = v100;
  sub_24F928398();
  v33 = sub_24F928338();
  v31(v32, v26);
  if (v33)
  {
    [v33 floatValue];
    v35 = v34;

    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v100 = v33;
  if (v109)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v29(v18, v26);
    v37 = v117;
  }

  else
  {
    v37 = 3;
  }

  LODWORD(v98) = v37;
  v38 = type metadata accessor for Action();
  sub_24F928398();
  v39 = v113;
  v97 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v113);
  v29(v18, v26);
  sub_24F928398();
  v106(v25, v39, v111);
  sub_24F929548();
  v94 = v127;
  v40 = v93;
  sub_24F928398();
  v95 = sub_24F928348();
  v96 = v41;
  v29(v40, v26);
  if (v108)
  {
    sub_24F928398();
    sub_24EF937FC();
    sub_24F928208();
    v29(v18, v26);
    v42 = v117;
  }

  else
  {
    v42 = 3;
  }

  LODWORD(v93) = v42;
  sub_24F928398();
  v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v29(v18, v26);
  v43 = v99;
  sub_24F928398();
  v90 = sub_24F928348();
  v92 = v44;
  v29(v43, v26);
  sub_24F928398();
  v45 = v25;
  v46 = v25;
  v47 = v29;
  v48 = v23;
  v49 = v26;
  v50 = v111;
  v110 = v38;
  v51 = v106;
  v106(v46, v113, v111);
  sub_24F929548();
  v104 = v126;
  sub_24F928398();
  v99 = static Action.tryToMakeInstance(byDeserializing:using:)(v18, v112);
  v110 = v30;
  v105 = v47;
  v47(v18, v49);
  v87 = v48;
  sub_24F928398();
  v51(v45, v113, v50);
  sub_24EF93850();
  sub_24F929548();
  v52 = v117;
  if (v117 == 1)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v89 = 0;
    v106 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v107) = 2;
  }

  else
  {
    LODWORD(v107) = v125;
    v106 = v122;
    v89 = v121;
    v54 = v119;
    v55 = v120;
    v53 = v118;
    v57 = v124;
    v56 = v123;
  }

  v58 = v100 == 0;
  v59 = v56 & 1;
  v60 = v57 & 1;
  type metadata accessor for ShelfHeader();
  v61 = swift_allocObject();
  v62 = v101;
  v63 = v102;
  *(v61 + 16) = v101;
  *(v61 + 24) = v63;
  *(v61 + 32) = v109;
  *(v61 + 40) = v36;
  *(v61 + 48) = v58;
  *(v61 + 49) = v98;
  v64 = v94;
  *(v61 + 56) = v97;
  *(v61 + 64) = v64;
  v65 = v95;
  v66 = v96;
  *(v61 + 72) = v95;
  *(v61 + 80) = v66;
  *(v61 + 88) = v108;
  *(v61 + 96) = v93;
  v67 = v92;
  v68 = v104;
  *(v61 + 120) = v92;
  *(v61 + 128) = v68;
  v69 = v90;
  *(v61 + 104) = v91;
  *(v61 + 112) = v69;
  *(v61 + 136) = v99;
  *(v61 + 144) = v52;
  *(v61 + 152) = v53;
  *(v61 + 160) = v54;
  v70 = v89;
  *(v61 + 168) = v55;
  *(v61 + 176) = v70;
  *(v61 + 184) = v106;
  *(v61 + 192) = v59;
  *(v61 + 193) = v60;
  *(v61 + 194) = v107;
  v115 = v62;
  v116[0] = v63;
  v116[1] = v65;
  v116[2] = v66;
  v116[3] = v69;
  v116[4] = v67;

  v72 = 0;
  v73 = MEMORY[0x277D84F90];
  v74 = v105;
  do
  {
    if (v72 <= 3)
    {
      v75 = 3;
    }

    else
    {
      v75 = v72;
    }

    v76 = -v75;
    v77 = &v116[2 * v72++];
    while (1)
    {
      if (v76 + v72 == 1)
      {
        __break(1u);
        return result;
      }

      v78 = *v77;
      if (*v77)
      {
        v79 = *(v77 - 1);
        v80 = HIBYTE(v78) & 0xF;
        if ((v78 & 0x2000000000000000) == 0)
        {
          v80 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (v80)
        {
          break;
        }
      }

      ++v72;
      v77 += 2;
      if (v72 == 4)
      {
        goto LABEL_29;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v73;
    if ((result & 1) == 0)
    {
      result = sub_24F457ADC(0, *(v73 + 16) + 1, 1);
      v73 = v114;
    }

    v82 = *(v73 + 16);
    v81 = *(v73 + 24);
    if (v82 >= v81 >> 1)
    {
      result = sub_24F457ADC((v81 > 1), v82 + 1, 1);
      v73 = v114;
    }

    *(v73 + 16) = v82 + 1;
    v83 = v73 + 16 * v82;
    *(v83 + 32) = v79;
    *(v83 + 40) = v78;
    v74 = v105;
  }

  while (v72 != 3);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  v84 = *(v88 + 8);
  v85 = v111;
  v84(v112, v111);
  v84(v113, v85);
  v74(v87, v103);
  v86 = *(v73 + 16);

  if (!v86)
  {

    return 0;
  }

  return v61;
}

unint64_t sub_24EF92BC8()
{
  result = qword_27F2355D8;
  if (!qword_27F2355D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355D8);
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24EF92CD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EF92D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EF92DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v69 = a2;
  v80 = a1;
  v68 = v86;
  v73 = sub_24F9285B8();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  sub_24F928398();
  v75 = sub_24F928348();
  v79 = v10;
  v11 = *(v5 + 8);
  v11(v9, v4);
  sub_24F928398();
  v74 = sub_24F928348();
  v13 = v12;
  v11(v9, v4);
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v11(v9, v4);
  v17 = type metadata accessor for Action();
  sub_24F928398();
  v63 = v17;
  v71 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v76);
  v70 = v4;
  v77 = v11;
  v76 = v5 + 8;
  v11(v9, v4);
  v85 = v75;
  v86[0] = v79;
  v86[1] = v74;
  v86[2] = v13;
  v65 = v14;
  v86[3] = v14;
  v86[4] = v16;
  v66 = v16;
  v18 = v68;

  v67 = v13;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    if (v20 <= 3)
    {
      v22 = 3;
    }

    else
    {
      v22 = v20;
    }

    v23 = -v22;
    v24 = &v18[2 * v20++];
    while (1)
    {
      if (v23 + v20 == 1)
      {
        __break(1u);
        return result;
      }

      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 - 1);
        v27 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          break;
        }
      }

      ++v20;
      v24 += 2;
      if (v20 == 4)
      {
        goto LABEL_17;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v21;
    if ((result & 1) == 0)
    {
      result = sub_24F457ADC(0, *(v21 + 16) + 1, 1);
      v21 = v82[0];
    }

    v29 = *(v21 + 16);
    v28 = *(v21 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_24F457ADC((v28 > 1), v29 + 1, 1);
      v21 = v82[0];
    }

    *(v21 + 16) = v29 + 1;
    v30 = v21 + 16 * v29;
    *(v30 + 32) = v26;
    *(v30 + 40) = v25;
  }

  while (v20 != 3);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  v31 = *(v21 + 16);

  if (v31 | v71)
  {
    v32 = type metadata accessor for Artwork();
    sub_24F928398();
    v33 = *(v78 + 16);
    v78 += 16;
    v62 = v33;
    v33(v72, v69, v73);
    v61 = sub_24E9838D4();
    v60 = v32;
    sub_24F929548();
    v68 = v82[0];
    v34 = v64;
    sub_24F928398();
    v35 = sub_24F928338();
    v77(v34, v70);
    v59 = v35;
    if (v35)
    {
      [v35 floatValue];
      v37 = v36;

      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    sub_24F928398();
    v39 = v72;
    v40 = v69;
    v41 = v73;
    v42 = v62;
    v62(v72, v69, v73);
    sub_24F929548();
    v64 = v82[0];
    sub_24F928398();
    v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, v40);
    v77(v9, v70);
    sub_24F928398();
    v42(v39, v40, v41);
    sub_24F929548();
    v58 = v82[0];
    if (v68)
    {
      sub_24F928398();
      sub_24EF937FC();
      sub_24F928208();
      v43 = v70;
      v77(v9, v70);
      v44 = v82[0];
    }

    else
    {
      v44 = 3;
      v43 = v70;
    }

    v45 = v69;
    v46 = v71;
    if (v64)
    {
      sub_24F928398();
      sub_24EF937FC();
      sub_24F928208();
      v77(v9, v43);
      v47 = v82[0];
    }

    else
    {
      v47 = 3;
    }

    v83 = &type metadata for Feature;
    v48 = sub_24EAEAC44();
    v84 = v48;
    LOBYTE(v82[0]) = 8;
    v49 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v82);
    if (v49)
    {

      v50 = v46;
    }

    else
    {
      v50 = 0;
    }

    sub_24F928398();
    v62(v72, v45, v73);
    sub_24F929548();
    v51 = v81;
    v83 = &type metadata for Feature;
    v84 = v48;
    LOBYTE(v82[0]) = 8;
    v52 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v82);
    if (v52)
    {

      v46 = 0;
    }

    v53 = v59 == 0;
    type metadata accessor for ShelfHeader();
    result = swift_allocObject();
    v54 = v79;
    *(result + 16) = v75;
    *(result + 24) = v54;
    *(result + 32) = v68;
    *(result + 40) = v38;
    *(result + 48) = v53;
    *(result + 49) = v44;
    v55 = v58;
    *(result + 56) = v63;
    *(result + 64) = v55;
    v56 = v67;
    *(result + 72) = v74;
    *(result + 80) = v56;
    *(result + 88) = v64;
    *(result + 96) = v47;
    *(result + 120) = v66;
    *(result + 128) = v51;
    v57 = v65;
    *(result + 104) = v50;
    *(result + 112) = v57;
    *(result + 136) = v46;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0;
    *(result + 194) = 2;
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_24EF937FC()
{
  result = qword_27F2355E0;
  if (!qword_27F2355E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355E0);
  }

  return result;
}

unint64_t sub_24EF93850()
{
  result = qword_27F2355E8;
  if (!qword_27F2355E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2355E8);
  }

  return result;
}

void *sub_24EF938A4(void *a1, void *a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v178 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v153 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v180 = (&v153 - v17);
  MEMORY[0x28223BE20](v18);
  v181 = (&v153 - v19);
  MEMORY[0x28223BE20](v20);
  v184 = &v153 - v21;
  v22 = sub_24F928818();
  v182 = *(v22 - 8);
  v183 = v22;
  MEMORY[0x28223BE20](v22);
  v179 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v153 - v25;
  v27 = a1;
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = &v153 - v25;

    v26 = v28;
    v27 = a2;
    if (!a2)
    {
LABEL_10:

      return v27;
    }
  }

  v175 = v26;
  v176 = type metadata accessor for FlowAction();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    return v27;
  }

  v174 = v27;
  v30 = v29;
  v173 = swift_dynamicCastClass();
  if (!v173)
  {

    return v174;
  }

  v165 = v5;
  v166 = v4;
  v167 = v13;
  v168 = v8;
  v169 = v7;
  v170 = v10;
  v31 = (v30 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v32 = v31[3];
  if (v32)
  {
    v33 = v31[4];
    v34 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v35 = *(v32 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = *(v33 + 8);
    swift_retain_n();

    v39(&v192, v32, v33);
    (*(v35 + 8))(v38, v32);
  }

  else
  {
    v192 = 0u;
    v193 = 0u;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  v40 = type metadata accessor for GenericPage();
  v41 = swift_dynamicCast();
  v42 = MEMORY[0x277D84F78];
  if (v41)
  {
    if (v187)
    {
      v190[0] = v187;
      goto LABEL_19;
    }
  }

  else
  {
    *&v187 = 0;
  }

  *(&v193 + 1) = MEMORY[0x277D84F78] + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v190[0] = 0;
  }

LABEL_19:

  if (!v190[0])
  {
    goto LABEL_45;
  }

  v172 = v190[0];
  v43 = (v173 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v44 = v43[3];
  if (v44)
  {
    v45 = v43[4];
    v46 = __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v47 = *(v44 - 8);
    v48 = MEMORY[0x28223BE20](v46);
    v50 = &v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    v51 = *(v45 + 8);
    v52 = v45;
    v42 = MEMORY[0x277D84F78];
    v51(&v192, v44, v52);
    (*(v47 + 8))(v50, v44);
  }

  else
  {
    v192 = 0u;
    v193 = 0u;
  }

  v53 = v184;
  if (swift_dynamicCast())
  {
    v54 = v172;
    if (v187)
    {
      v190[0] = v187;
      goto LABEL_30;
    }
  }

  else
  {
    *&v187 = 0;
    v54 = v172;
  }

  *(&v193 + 1) = v42 + 8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v190[0] = 0;
  }

LABEL_30:

  v171 = v190[0];
  if (!v190[0])
  {

LABEL_45:

    return v174;
  }

  v162 = v40;
  v55 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v56 = *(v54 + v55);
  v57 = MEMORY[0x277D84F90];
  v190[0] = MEMORY[0x277D84F90];
  v58 = *(v56 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v58)
  {
    v164 = v57;
    goto LABEL_47;
  }

  v60 = 0;
  v61 = v56 + 32;
  v161 = v58 - 1;
  v163 = v56 + 32;
  v164 = MEMORY[0x277D84F90];
  do
  {
    v53 = v61 + 40 * v60;
    v62 = v60;
    v63 = v172;
    while (1)
    {
      if (v62 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_82;
      }

      sub_24E65864C(v53, &v192);
      v64 = *(v63 + v59);
      if (*(v64 + 16))
      {
        break;
      }

LABEL_34:
      ++v62;
      sub_24E6585F8(&v192);
      v53 += 40;
      if (v58 == v62)
      {
        v53 = v184;
        goto LABEL_47;
      }
    }

    v65 = sub_24E76D934(&v192);
    if ((v66 & 1) == 0)
    {

      goto LABEL_34;
    }

    v164 = *(*(v64 + 56) + 8 * v65);

    v67 = sub_24E6585F8(&v192);
    MEMORY[0x253050F00](v67);
    if (*((v190[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v60 = v62 + 1;
    sub_24F92B638();
    v164 = v190[0];
    v53 = v184;
    v61 = v163;
  }

  while (v161 != v62);
LABEL_47:

  v68 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  v69 = v171;
  swift_beginAccess();
  v70 = *(v69 + v68);
  v71 = MEMORY[0x277D84F90];
  v190[0] = MEMORY[0x277D84F90];
  v72 = *(v70 + 16);
  v59 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (v72)
  {
    v73 = 0;
    v74 = v70 + 32;
    v160 = v72 - 1;
    v163 = MEMORY[0x277D84F90];
    v161 = v70 + 32;
LABEL_49:
    v53 = v74 + 40 * v73;
    v75 = v73;
    v76 = v171;
    while (v75 < *(v70 + 16))
    {
      sub_24E65864C(v53, &v192);
      v77 = *(v76 + v59);
      if (*(v77 + 16))
      {

        v78 = sub_24E76D934(&v192);
        if (v79)
        {
          v163 = *(*(v77 + 56) + 8 * v78);

          v80 = sub_24E6585F8(&v192);
          MEMORY[0x253050F00](v80);
          if (*((v190[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v73 = v75 + 1;
          sub_24F92B638();
          v163 = v190[0];
          v74 = v161;
          v53 = v184;
          if (v160 != v75)
          {
            goto LABEL_49;
          }

          goto LABEL_61;
        }
      }

      ++v75;
      sub_24E6585F8(&v192);
      v53 += 40;
      if (v72 == v75)
      {
        v53 = v184;
        goto LABEL_61;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v81 = sub_24F92C738();
  }

  else
  {
    v163 = v71;
LABEL_61:

    v59 = v164;
    if (v164 >> 62)
    {
      goto LABEL_83;
    }

    v81 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v182;
  v82 = v183;
  v84 = v163;
  if (v163 >> 62)
  {
    if (v81 != sub_24F92C738())
    {
      goto LABEL_85;
    }

LABEL_65:
    v156 = sub_24EF8FF10(v59, v84);

    v85 = v171;
    v86 = *(v171 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v158 = *(v171 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v159 = *(v171 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v171 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v192, &qword_27F2129B0);
    v157 = *(v85 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    v87 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v164 = *(v85 + v87);
    v88 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v155 = *(v83 + 16);
    v155(v175, v85 + v88, v82);
    v154 = *(v85 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v160 = sub_24F9285B8();
    v163 = *(v160 - 8);
    (*(v163 + 56))(v53, 1, 1, v160);
    v89 = swift_allocObject();
    v90 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

    v91 = sub_24EEF0A68(v156);
    v93 = v92;

    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v91;
    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v93;
    v94 = (v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v95 = v159;
    *v94 = v158;
    v94[1] = v86;
    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v95;
    sub_24E60169C(&v192, v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v157;
    swift_beginAccess();
    *(v89 + v90) = v164;

    *(v89 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v96 = v179;
    v97 = v183;
    v98 = v155;
    v155(v179, v175, v183);
    v99 = v181;
    sub_24E60169C(v184, v181, &qword_27F2218B0);
    *(v89 + 16) = 0;
    v98(v89 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v96, v97);
    v161 = v89;
    *(v89 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v154;
    v100 = v180;
    sub_24E60169C(v99, v180, &qword_27F2218B0);
    v101 = *(v163 + 48);
    if (v101(v100, 1, v160) == 1)
    {

      sub_24E601704(v99, &qword_27F2218B0);
      v102 = v96;
      v103 = *(v182 + 8);
      v103(v102, v97);
      sub_24E601704(v184, &qword_27F2218B0);
      v103(v175, v97);
      sub_24E601704(&v192, &qword_27F2129B0);
      sub_24E601704(v100, &qword_27F2218B0);
    }

    else
    {
      v159 = v101;
      v104 = qword_27F2105F0;

      if (v104 != -1)
      {
        swift_once();
      }

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v105, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v106 = v180;
      sub_24F9285C8();
      v107 = v190[0];
      v108 = v181;
      if (v190[0])
      {
      }

      v109 = *(v163 + 8);
      v110 = v106;
      v111 = v160;
      v163 += 8;
      v180 = v109;
      (v109)(v110, v160);
      if (v107)
      {
        v112 = v177;
        sub_24E60169C(v108, v177, &qword_27F2218B0);
        if (v159(v112, 1, v111) != 1)
        {
          sub_24ECDF110();

          sub_24E601704(v108, &qword_27F2218B0);
          v119 = *(v182 + 8);
          v120 = v111;
          v121 = v183;
          v119(v179, v183);
          sub_24E601704(v184, &qword_27F2218B0);
          v119(v175, v121);
          sub_24E601704(&v192, &qword_27F2129B0);
          (v180)(v112, v120);
          goto LABEL_77;
        }

        sub_24E601704(v108, &qword_27F2218B0);
        v113 = v183;
        v114 = *(v182 + 8);
        v114(v179, v183);
        sub_24E601704(v184, &qword_27F2218B0);
        v114(v175, v113);
        sub_24E601704(&v192, &qword_27F2129B0);
        v115 = v112;
        v116 = &qword_27F2218B0;
      }

      else
      {

        v117 = v183;
        sub_24E601704(v108, &qword_27F2218B0);
        v118 = *(v182 + 8);
        v118(v96, v117);
        sub_24E601704(v184, &qword_27F2218B0);
        v118(v175, v117);
        v116 = &qword_27F2129B0;
        v115 = &v192;
      }

      sub_24E601704(v115, v116);
    }

LABEL_77:
    v122 = v168;
    v123 = v169;
    v194 = 0;
    v192 = 0u;
    v193 = 0u;
    v124 = v173;
    v125 = *(v173 + 24);
    v183 = *(v173 + 16);
    LODWORD(v180) = *(v173 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
    v126 = v167;
    sub_24E60169C(v173 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, v167, &qword_27F228530);
    v127 = *(v124 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl + 8);
    v179 = *(v124 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    v191[3] = v162;
    v191[0] = v161;
    v181 = *(v122 + 16);
    (v181)(v170, v124 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v123);
    v128 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
    swift_beginAccess();
    LODWORD(v177) = *(v124 + v128);
    v129 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
    swift_beginAccess();
    LODWORD(v175) = *(v124 + v129);
    v130 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
    swift_beginAccess();
    LODWORD(v164) = *(v124 + v130);
    v182 = *(v124 + 40);

    v184 = v125;

    v131 = sub_24F929D18();
    v133 = v132;
    v134 = swift_allocObject();
    *(v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v135 = v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v135 = 0u;
    *(v135 + 1) = 0u;
    *(v135 + 4) = 0;
    v136 = (v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v136 = 0;
    v136[1] = 0;
    *(v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v180;
    sub_24E60169C(v126, v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v137 = (v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v137 = v179;
    v137[1] = v127;
    v138 = v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v138 = xmmword_24F9406F0;
    v138[40] = 0;
    *(v138 + 3) = 0;
    *(v138 + 4) = 0;
    *(v138 + 2) = 0;
    *(v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v177;
    *(v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v175;
    *(v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v164;
    v139 = (v134 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v139 = v131;
    v139[1] = v133;
    v140 = v169;
    sub_24E60169C(&v192, v190, &qword_27F235830);
    (v181)(v134 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v170, v140);
    v141 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v142 = sub_24F929608();
    (*(*(v142 - 8) + 56))(v134 + v141, 1, 1, v142);
    v143 = (v134 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v143 = 0u;
    v143[1] = 0u;
    v144 = v134 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v190, &v187, &qword_27F235830);
    if (*(&v188 + 1))
    {
      v145 = v188;
      *v144 = v187;
      *(v144 + 1) = v145;
      *(v144 + 4) = v189;
    }

    else
    {
      v146 = v178;
      sub_24F91F6A8();
      v147 = sub_24F91F668();
      v149 = v148;
      (*(v165 + 8))(v146, v166);
      v185 = v147;
      v186 = v149;
      sub_24F92C7F8();
      sub_24E601704(&v187, &qword_27F235830);
    }

    sub_24E601704(v190, &qword_27F235830);
    v150 = v184;
    v134[2] = v183;
    v134[3] = v150;
    v151 = v182;
    v134[4] = 0;
    v134[5] = v151;

    v27 = v134;
    FlowAction.setPageData(_:)(v191);

    (*(v168 + 8))(v170, v140);
    sub_24E601704(v167, &qword_27F228530);
    sub_24E601704(&v192, &qword_27F235830);
    sub_24E601704(v191, &qword_27F2129B0);
    return v27;
  }

  if (v81 == *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_65;
  }

LABEL_85:

  return v174;
}

uint64_t sub_24EF94F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    if (a2)
    {
      *(&v58 + 1) = &type metadata for Feature;
      *&v59[0] = sub_24EAEAC44();
      LOBYTE(v57) = 8;

      v6 = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(&v57);
      if (v6)
      {
        v7 = *(v4 + 104);
        if (a3)
        {
          v8 = *(a2 + 104);

          v10 = sub_24EF938A4(v9, v8);

          v7 = v10;
        }

        else
        {
          if (!v7)
          {
            v7 = *(a2 + 104);
          }
        }

        v11 = *(v4 + 136);
        if (!v11)
        {
          v11 = *(a2 + 136);
        }
      }

      else
      {
        v11 = *(v4 + 136);
        if (a3)
        {
          v12 = *(a2 + 136);

          v14 = sub_24EF938A4(v13, v12);

          v7 = 0;
          v11 = v14;
        }

        else
        {
          if (!v11)
          {
            v11 = *(a2 + 136);
          }

          v7 = 0;
        }
      }

      if (*(v4 + 24))
      {
        v40 = *(v4 + 24);
        v41 = *(v4 + 16);
      }

      else
      {
        v40 = *(a2 + 24);
        v41 = *(a2 + 16);
      }

      v15 = *(v4 + 32);
      if (!v15)
      {
        v15 = *(a2 + 32);
      }

      v16 = *(v4 + 49);
      if (v16 == 3)
      {
        LOBYTE(v16) = *(a2 + 49);
      }

      v17 = *(v4 + 56);
      if (!v17)
      {
      }

      v39 = v17;
      v18 = *(v4 + 64);
      if (!v18)
      {
      }

      v38 = v18;
      if (*(v4 + 80))
      {
        v36 = *(v4 + 80);
        v37 = *(v4 + 72);
      }

      else
      {
        v36 = *(a2 + 80);
        v37 = *(a2 + 72);
      }

      v19 = *(v4 + 88);
      if (!v19)
      {
      }

      v20 = *(v4 + 96);
      if (v20 == 3)
      {
        LOBYTE(v20) = *(a2 + 96);
      }

      v35 = v19;
      v34 = v20;
      if (*(v4 + 120))
      {
        v32 = *(v4 + 120);
        v33 = *(v4 + 112);
      }

      else
      {
        v32 = *(a2 + 120);
        v33 = *(a2 + 112);
      }

      v42 = *(v4 + 128);
      if (!v42)
      {
        v42 = *(a2 + 128);
      }

      v21 = *(a2 + 160);
      v49[0] = *(a2 + 144);
      v49[1] = v21;
      v23 = *(a2 + 144);
      v22 = *(a2 + 160);
      v50[0] = *(a2 + 176);
      *(v50 + 15) = *(a2 + 191);
      v46 = v23;
      v47 = v22;
      v48[0] = *(a2 + 176);
      *(v48 + 15) = *(a2 + 191);
      v24 = *(v4 + 144);
      v25 = *(v4 + 160);
      *(v52 + 15) = *(v4 + 191);
      v26 = *(v4 + 176);
      v51[1] = *(v4 + 160);
      v52[0] = v26;
      v27 = *(v4 + 144);
      v51[0] = v24;
      v43 = v27;
      v44 = v25;
      v45[0] = *(v4 + 176);
      *(v45 + 15) = *(v4 + 191);
      sub_24EF90D38(&v43, &v57);

      sub_24EF92B8C(v49, v55);
      sub_24EF92B8C(v51, v55);

      v53[0] = v43;
      v53[1] = v44;
      v54[0] = v45[0];
      *(v54 + 15) = *(v45 + 15);
      sub_24EF9537C(v53);
      v55[0] = v46;
      v55[1] = v47;
      *v56 = v48[0];
      *&v56[15] = *(v48 + 15);
      sub_24EF9537C(v55);
      type metadata accessor for ShelfHeader();
      v4 = swift_allocObject();
      *(v4 + 16) = v41;
      *(v4 + 24) = v40;
      *(v4 + 32) = v15;
      *(v4 + 40) = 0;
      *(v4 + 48) = 1;
      *(v4 + 49) = v16;
      *(v4 + 56) = v39;
      *(v4 + 64) = v38;
      *(v4 + 72) = v37;
      *(v4 + 80) = v36;
      *(v4 + 88) = v35;
      *(v4 + 96) = v34;
      *(v4 + 120) = v32;
      *(v4 + 128) = v42;
      *(v4 + 104) = v7;
      *(v4 + 112) = v33;
      *(v4 + 136) = v11;
      v28 = v57;
      v29 = v58;
      v30 = v59[0];
      *(v4 + 191) = *(v59 + 15);
      *(v4 + 160) = v29;
      *(v4 + 176) = v30;
      *(v4 + 144) = v28;
    }

    else
    {
    }
  }

  else
  {

    return a2;
  }

  return v4;
}

uint64_t ShelfBasedCollectionViewController.collectionViewCellProvider(indexPath:item:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v9 = sub_24F92AAE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for ItemLayoutContext();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 32);
  v51 = a4;
  v52 = v5;
  v21 = v20(a4, a5, v17);
  if (v21)
  {
    v22 = v21;
    if (a3)
    {

      ShelfBasedCollectionViewController.itemLayoutContext(at:)(v50, v51, a5, v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        sub_24E601704(v14, &qword_27F2294A8);
      }

      else
      {
        sub_24EF96720(v14, v19, type metadata accessor for ItemLayoutContext);
        ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter(a5, &v54);
        v23 = v57;
        v24 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        v25 = (*(v24 + 16))(v19, a3, v23, v24);
        if (v25)
        {
          v27 = v25;
          v28 = v26;
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v29 = *(v28 + 16);
          v30 = v22;
          v31 = v29(v19, v30, a3, v27, v28);
          ShelfBasedCollectionViewController.collectionElementsObserver.getter(v51, a5);
          v33 = v32;
          ObjectType = swift_getObjectType();
          (*(v33 + 16))(v31, v19, v30, a3, ObjectType, v33);
          swift_unknownObjectRelease();

          sub_24EF96788(v19, type metadata accessor for ItemLayoutContext);
          return v31;
        }

        sub_24EF96788(v19, type metadata accessor for ItemLayoutContext);

        __swift_destroy_boxed_opaque_existential_1(&v54);
      }
    }

    else
    {
    }
  }

  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v9, qword_27F39C458);
  v49 = v10;
  (*(v10 + 16))(v53, v36, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  v37 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  v54 = 0xD000000000000033;
  v55 = 0x800000024FA65C60;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0);
  v38 = sub_24F91FA78();
  v57 = v38;
  v39 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(*(v38 - 8) + 16))(v39, v50, v38);
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0);
  v57 = v37;
  v54 = 0xD000000000000038;
  v55 = 0x800000024FA65CA0;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0);
  v40 = (*(a5 + 56))(v51, a5);
  if (v40)
  {
    v41 = v40 + *((*MEMORY[0x277D85000] & *v40) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v42 = v40;
    swift_beginAccess();
    v43 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 52)];
    v45 = *v43;
    v44 = v43[1];

    v46 = MEMORY[0x277D837D0];
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v46 = 0;
    v56 = 0;
  }

  v54 = v45;
  v55 = v44;
  v57 = v46;
  sub_24F928438();
  sub_24E601704(&v54, &qword_27F2129B0);
  v47 = v53;
  sub_24F92A5B8();

  (*(v49 + 8))(v47, v9);
  return 0;
}

void *ShelfBasedCollectionViewController.supplementaryViewProvider(elementKind:indexPath:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v101 = a3;
  v102 = a2;
  v103 = a1;
  v10 = sub_24F92AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294A8);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v84 - v15;
  v93 = type metadata accessor for ItemLayoutContext();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2355F0);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = &v84 - v18;
  v19 = sub_24F91FA78();
  v97 = *(v19 - 8);
  v98 = v19;
  MEMORY[0x28223BE20](v19);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v84 - v22;
  v24 = type metadata accessor for ShelfLayoutContext();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v99 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a6;
  result = (*(a6 + 32))(a5, a6, v26);
  if (result)
  {
    v29 = result;
    if (!a4)
    {

      return 0;
    }

    v88 = v25;
    v87 = v13;
    v85 = v11;
    v86 = v10;
    v104 = v6;
    v30 = a4;
    v89 = v6;
    v31 = v100;
    v32 = *(v100 + 8);
    v33 = *(v32 + 16);

    v90 = a5;
    v33(&v105, v103, v102, a5, v32);
    if (*(&v106 + 1))
    {
      sub_24E612C80(&v105, &v108);
      v34 = *(&v109 + 1);
      v35 = v110;
      __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
      v36 = *(v35 + 24);
      v37 = v29;
      v38 = v36(v101, v37, v34, v35);

      __swift_destroy_boxed_opaque_existential_1(&v108);
      return v38;
    }

    v84 = v30;
    sub_24E601704(&v105, &qword_27F230D60);
    v39 = v101;
    ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(v90, v31, v23);
    if ((v88)[6](v23, 1, v24) == 1)
    {

      sub_24E601704(v23, &qword_27F232618);
      return 0;
    }

    v40 = v31;
    v41 = v99;
    sub_24EF96720(v23, v99, type metadata accessor for ShelfLayoutContext);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(v90, v31);
    v43 = v42;
    ObjectType = swift_getObjectType();
    v45 = v29;
    v47 = v102;
    v46 = v103;
    v48 = v39;
    v49 = v84;
    v50 = ShelfSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v103, v102, v48, v41, v45, v84, ObjectType, v43);
    swift_unknownObjectRelease();
    if (v50)
    {

      sub_24EF96788(v41, type metadata accessor for ShelfLayoutContext);
      return v50;
    }

    v88 = v45;
    String.extractElementKindContentIdentifier()(v46, v47, &v105);
    if (!*(&v106 + 1))
    {

      sub_24E601704(&v105, &qword_27F228658);
      v52 = v87;
LABEL_18:
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v59 = v86;
      v60 = __swift_project_value_buffer(v86, qword_27F39C458);
      (*(v85 + 16))(v52, v60, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9AF330;
      v61 = MEMORY[0x277D837D0];
      *(&v109 + 1) = MEMORY[0x277D837D0];
      *&v108 = 0xD00000000000003ELL;
      *(&v108 + 1) = 0x800000024FA65CE0;
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      *(&v109 + 1) = v61;
      *&v108 = v103;
      *(&v108 + 1) = v102;

      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      *(&v109 + 1) = v61;
      strcpy(&v108, "at indexPath:");
      HIWORD(v108) = -4864;
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      v62 = v98;
      *(&v109 + 1) = v98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
      (*(v97 + 16))(boxed_opaque_existential_1, v101, v62);
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      *(&v109 + 1) = v61;
      *&v108 = 0xD000000000000028;
      *(&v108 + 1) = 0x800000024FA65D20;
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      *(&v109 + 1) = v61;
      *&v108 = 0xD000000000000011;
      *(&v108 + 1) = 0x800000024FA65D50;
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      v64 = (*(v100 + 56))(v90);
      if (v64)
      {
        v65 = v64 + *((*MEMORY[0x277D85000] & *v64) + class metadata base offset for ModelMappedDiffableDataSource + 16);
        v66 = v64;
        swift_beginAccess();
        v67 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 52)];
        v69 = *v67;
        v68 = *(v67 + 1);

        v70 = MEMORY[0x277D837D0];
      }

      else
      {
        v69 = 0;
        v68 = 0;
        v70 = 0;
        *&v109 = 0;
      }

      v71 = v99;
      v72 = v88;
      *&v108 = v69;
      *(&v108 + 1) = v68;
      *(&v109 + 1) = v70;
      sub_24F928438();
      sub_24E601704(&v108, &qword_27F2129B0);
      v73 = v86;
      v74 = v87;
      sub_24F92A5B8();

      (*(v85 + 8))(v74, v73);
      sub_24EF96788(v71, type metadata accessor for ShelfLayoutContext);
      return 0;
    }

    v108 = v105;
    v109 = v106;
    v110 = v107;
    v51 = (*(v40 + 56))(v90, v40);
    v52 = v87;
    if (v51)
    {
      v53 = v51;
      v54 = v96;
      sub_24F922E68();

      v56 = v97;
      v55 = v98;
      if ((*(v97 + 48))(v54, 1, v98) != 1)
      {
        v75 = v95;
        (*(v56 + 32))(v95, v54, v55);
        v76 = v94;
        v77 = v90;
        ShelfBasedCollectionViewController.itemLayoutContext(at:)(v75, v90, v40, v94);
        if ((*(v92 + 48))(v76, 1, v93) != 1)
        {
          v78 = v91;
          sub_24EF96720(v76, v91, type metadata accessor for ItemLayoutContext);
          ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(v77, v40);
          v80 = v79;
          v81 = swift_getObjectType();
          v82 = v88;
          v83 = ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(v103, v47, v101, v78, v88, v49, v81, v80);
          swift_unknownObjectRelease();

          sub_24EF96788(v78, type metadata accessor for ItemLayoutContext);
          (*(v97 + 8))(v95, v98);
          sub_24E772780(&v108);
          if (v83)
          {
            sub_24EF96788(v41, type metadata accessor for ShelfLayoutContext);

            return v83;
          }

          goto LABEL_18;
        }

        (*(v97 + 8))(v75, v98);
        sub_24E772780(&v108);
        v57 = &qword_27F2294A8;
        v58 = v76;
        goto LABEL_17;
      }

      sub_24E772780(&v108);
    }

    else
    {

      sub_24E772780(&v108);
      v54 = v96;
      (*(v97 + 56))(v96, 1, 1, v98);
    }

    v57 = &qword_27F2355F0;
    v58 = v54;
LABEL_17:
    sub_24E601704(v58, v57);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_24EF96720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF96788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ShelfBasedCollectionViewController.compositionalLayoutSectionProvider(section:layoutEnvironment:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a3;
  v60 = a1;
  v8 = sub_24F92AAE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for ShelfLayoutContext();
  ObjectType = *(v18 - 1);
  v62 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(a5 + 32))(a4, a5, v19);
  if (v22)
  {
    v23 = v22;
    if (v63)
    {
      v59 = v8;

      v24 = v60;
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v60, a4, a5, v17);
      if ((ObjectType[6])(v17, 1, v62) != 1)
      {
        v62 = type metadata accessor for ShelfLayoutContext;
        v58 = v21;
        sub_24EF96720(v17, v21, type metadata accessor for ShelfLayoutContext);
        v57 = ShelfBasedCollectionViewController.itemLayoutContexts(for:)(v24, a4, a5);
        ShelfBasedCollectionViewController.collectionElementsObserver.getter(a4, a5);
        v40 = v39;
        ObjectType = swift_getObjectType();
        v56 = *(v40 + 8);
        v59 = v23;
        v41 = v21;
        v42 = v57;
        v56(v24, v59, v41, v57, v63, ObjectType, v40);
        swift_unknownObjectRelease();
        ShelfBasedCollectionViewController.layoutSectionProvider.getter(a5, &v65);
        v43 = v68;
        v44 = v69;
        v60 = __swift_project_boxed_opaque_existential_1(&v65, v68);
        ObjectType = &v56;
        MEMORY[0x28223BE20](v60);
        v54 = v42;
        ShelfBasedCollectionViewController.shelfLayoutSpacingProvider.getter(a5, v64);
        v45 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter(a4, a5);
        v47 = v46;
        v48 = ShelfBasedCollectionViewController.itemSupplementaryProvider.getter(a4, a5);
        v49 = *(v44 + 8);
        v54 = v43;
        v55 = v44;
        v53[0] = v50;
        v53[1] = v63;
        v51 = v58;
        v52 = v59;
        v37 = v49(v58, sub_24EF97144, v53, v59, v64, v45, v47, v48);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_24EF96788(v51, v62);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        return v37;
      }

      sub_24E601704(v17, &qword_27F232618);
      v8 = v59;
    }

    else
    {
    }
  }

  v57 = v14;
  v58 = a4;
  v63 = v5;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v8, qword_27F39C458);
  v59 = v9;
  v26 = v9[2];
  v56 = v11;
  v26(v11, v25, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  v27 = MEMORY[0x277D837D0];
  v68 = MEMORY[0x277D837D0];
  v65 = 0xD000000000000037;
  v66 = 0x800000024FA65D70;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0);
  v68 = MEMORY[0x277D83B88];
  v65 = v60;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0);
  v68 = v27;
  v65 = 0xD000000000000021;
  v66 = 0x800000024FA65DB0;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0);
  v68 = v27;
  v65 = 0xD000000000000011;
  v66 = 0x800000024FA65D50;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0);
  v28 = (*(a5 + 56))(v58, a5);
  if (v28)
  {
    v29 = v28 + *((*MEMORY[0x277D85000] & *v28) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    v30 = v28;
    swift_beginAccess();
    v31 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 52)];
    v33 = *v31;
    v32 = *(v31 + 1);

    v34 = MEMORY[0x277D837D0];
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v34 = 0;
    v67 = 0;
  }

  v35 = v57;
  v65 = v33;
  v66 = v32;
  v68 = v34;
  sub_24F928438();
  sub_24E601704(&v65, &qword_27F2129B0);
  v36 = v56;
  sub_24F92A5B8();

  (*(v59 + 1))(v36, v8);
  (ObjectType[7])(v35, 1, 1, v62);
  v37 = _sSo25NSCollectionLayoutSectionC12GameStoreKitE05emptybC03forAbC05ShelfB7ContextVSg_tFZ_0(v35);
  sub_24E601704(v35, &qword_27F232618);
  return v37;
}

double ShelfBasedCollectionViewController.globalSupplementaryRegistration(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Void __swiftcall ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)(CGSize fitting)
{
  v3 = v2;
  v4 = v1;
  height = fitting.height;
  width = fitting.width;
  v7 = (*(v2 + 80))();
  if (v7)
  {
    v8 = v7;
    v9 = [v8 configuration];
    [v9 copyWithZone_];
    sub_24F92C648();
    swift_unknownObjectRelease();

    sub_24E69A5C4(0, &qword_27F2355F8);
    swift_dynamicCast();
    (*(*(v3 + 8) + 8))(v4, width, height);
    sub_24E69A5C4(0, &qword_27F2250F0);
    v10 = sub_24F92B588();

    [v11 setBoundarySupplementaryItems_];

    [v8 setConfiguration_];
  }
}

uint64_t sub_24EF9714C()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24F552250();
}

uint64_t sub_24EF9720C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF973C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24EF97568()
{
  type metadata accessor for LocalPlayerProvider();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AvatarSection.AvatarEditorMode(319);
    if (v1 <= 0x3F)
    {
      sub_24E654514();
      if (v2 <= 0x3F)
      {
        sub_24EF97870(319, &qword_27F235618, &qword_27F213FB0, &unk_24F93E6B0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24EF97870(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24E6D74E4();
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

uint64_t sub_24EF976D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EF97760(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24EF977EC()
{
  sub_24EF97870(319, &qword_27F22CD78, &qword_27F22CC20, &unk_24F992000, MEMORY[0x277CE11F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_24EF97870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24EF978F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AvatarSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = v3 - 8;
  v38 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235630);
  MEMORY[0x28223BE20](v41);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235638);
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v45 = v37 - v11;
  v40 = type metadata accessor for AvatarSection;
  sub_24EF99EFC(v1, v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvatarSection);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v39 = type metadata accessor for AvatarSection;
  sub_24EF9A084(v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AvatarSection);
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235640);
  v14 = type metadata accessor for PlayerAvatarView(255);
  v15 = sub_24EF99FDC(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
  *&v54 = v14;
  *(&v54 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F926F88();
  LOBYTE(v14) = *(v1 + 16) == 2;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235648) + 36)];
  *v18 = KeyPath;
  v18[1] = sub_24E600A48;
  v18[2] = v17;
  v19 = v2;
  sub_24F927618();
  sub_24F9238C8();
  v20 = v41;
  v21 = &v8[*(v41 + 36)];
  v22 = v55;
  *v21 = v54;
  *(v21 + 1) = v22;
  *(v21 + 2) = v56;
  v23 = v19 + *(v6 + 40);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v53._countAndFlagsBits) = v24;
  v53._object = v25;
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F58();
  sub_24EF99EFC(v19, v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
  v26 = swift_allocObject();
  sub_24EF9A084(v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v12, v39);
  v27 = sub_24EF99C3C();
  v28 = sub_24EF99DAC();
  sub_24F926958();

  sub_24EF99E00(v8);
  v29._object = 0x800000024FA65DE0;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v53 = localizedString(_:comment:)(v29, v30);
  v31 = v19 + *(v38 + 56);
  v32 = *v31;
  v33 = *(v31 + 8);
  v51 = v32;
  v52 = v33;
  sub_24F926F58();
  v47 = v20;
  v48 = &type metadata for AvatarEditorView;
  v49 = v27;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v34 = v42;
  v35 = v45;
  sub_24F926918();

  return (*(v43 + 8))(v35, v34);
}

uint64_t sub_24EF97EC8(uint64_t a1)
{
  v2 = type metadata accessor for AvatarSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  if (*(a1 + 16) == 1)
  {
    v9 = a1 + *(v2 + 48);
    v10 = *v9;
    v11 = *(v9 + 8);
    v18[16] = v10;
    v19 = v11;
    v18[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    return sub_24F926F48();
  }

  else
  {
    v13 = sub_24F92B858();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_24EF99EFC(a1, &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AvatarSection);
    sub_24F92B7F8();
    v14 = sub_24F92B7E8();
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v14;
    *(v16 + 24) = v17;
    sub_24EF9A084(v5, v16 + v15, type metadata accessor for AvatarSection);
    sub_24EA998B8(0, 0, v8, &unk_24F9B7908, v16);
  }
}

uint64_t sub_24EF98108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_24F92B7F8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24EF981A0, v6, v5);
}

uint64_t sub_24EF981A0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24EF98234;

  return sub_24F552250();
}

uint64_t sub_24EF98234()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24EF98354, v3, v2);
}

uint64_t sub_24EF98354()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for AvatarSection(0) + 32));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 72) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EF98404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_24F9248C8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AvatarSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);
  sub_24F926F38();
  v19 = *(v13 + 48);
  v20 = v19(v11, 1, v12);
  v49 = v15;
  if (v20 == 1)
  {
    v40 = v16;
    v21 = a1;
    v22 = *(a1 + 8);
    swift_getKeyPath();
    v50 = v22;
    sub_24EF99FDC(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
    sub_24F91FD88();

    v23 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
    swift_beginAccess();
    v24 = v22 + v23;
    a1 = v21;
    v16 = v40;
    (*(v13 + 16))(v49, v24, v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_24E601704(v11, &qword_27F213FB0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v25 = *(a1 + 16);
  v26 = type metadata accessor for PlayerAvatar.Overlay(0);
  v27 = v42;
  if (v25)
  {
    v28 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v28 = 0;
  }

  v29 = *(v26 - 8);
  (*(v29 + 56))(v27, v28, 1, v26);
  (*(v13 + 32))(v18, v49, v12);
  type metadata accessor for PlayerAvatarView.AvatarType(0);
  swift_storeEnumTagMultiPayload();
  v30 = v16[5];
  if ((*(v29 + 48))(v27, 1, v26) == 1)
  {
    sub_24E601704(v27, &qword_27F22DF80);
    v31 = 1;
    v32 = v44;
  }

  else
  {
    v33 = v41;
    sub_24EF9A084(v27, v41, type metadata accessor for PlayerAvatar.Overlay);
    v32 = v44;
    v34 = v33 + *(v44 + 20);
    *v34 = 0;
    *(v34 + 8) = 1;
    v35 = (v33 + *(v32 + 24));
    *v35 = 0;
    v35[1] = 0;
    sub_24EF9A084(v33, &v18[v30], type metadata accessor for PlayerAvatarView.Overlay);
    v31 = 0;
  }

  (*(v43 + 56))(&v18[v30], v31, 1, v32);
  v36 = &v18[v16[6]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v18[v16[7]] = 7;
  v37 = v45;
  sub_24F9248B8();
  sub_24EF99FDC(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v47 + 8))(v37, v48);
  return sub_24EF9A024(v18, type metadata accessor for PlayerAvatarView);
}

uint64_t sub_24EF98A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AvatarSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + 8);
  sub_24EF99EFC(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvatarSection);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24EF9A084(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AvatarSection);
  *a2 = v7;
  a2[1] = sub_24EF99E68;
  a2[2] = v9;
}

void sub_24EF98B90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v84 = a4;
  v81 = a5;
  v85 = a3;
  v78 = a2;
  v72 = sub_24F921B58();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v62 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v74 = &v62 - v9;
  v10 = type metadata accessor for AvatarSection.AvatarEditorMode(0);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for AvatarData(0);
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v17 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v17);
  v82 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v62 - v26;
  v28 = sub_24F9289E8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E6F66C4(a1, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_24E601704(v27, &qword_27F213FB0);
LABEL_10:
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v50 = sub_24F9220D8();
    __swift_project_value_buffer(v50, qword_27F39E8F8);
    v51 = sub_24F9220B8();
    v52 = sub_24F92BD98();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_24E5DD000, v51, v52, "No avatar has been picked.", v53, 2u);
      MEMORY[0x2530542D0](v53, -1, -1);
    }

    return;
  }

  (*(v29 + 32))(v31, v27, v28);
  v32 = v31;
  v33 = v85;
  if (!v85 || !v84 || (v34 = v81) == 0)
  {
    (*(v29 + 8))(v32, v28);
    goto LABEL_10;
  }

  v66 = *(v29 + 16);
  v69 = v28;
  v35 = v29;
  v65 = v29 + 16;
  v68 = v32;
  v66(v24, v32, v69);
  v67 = v29;
  v36 = v69;
  (*(v35 + 56))(v24, 0, 1, v69);
  v64 = type metadata accessor for AvatarSection(0);
  sub_24E6F66C4(v24, v21);
  v63 = v84;
  v81 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);
  sub_24F926F48();
  v37 = v83;
  sub_24E601704(v24, &qword_27F213FB0);
  v38 = type metadata accessor for PlayerAvatar.Overlay(0);
  v39 = *(*(v38 - 8) + 56);
  v39(v16, 1, 1, v38);
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v40 = *(v17 + 20);
  v84 = v13;
  v41 = v82;
  v39(v82 + v40, 1, 1, v38);
  v42 = v41 + *(v17 + 24);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;

  sub_24E61DA68(&v86, v42, qword_27F21B590);
  *v41 = v78;
  v41[1] = v33;
  sub_24E61DA68(v16, v41 + v40, &qword_27F22DF80);
  sub_24E61DA68(&v89, v42, qword_27F21B590);
  v43 = v80;
  v66(&v84[*(v80 + 24)], v68, v36);
  v44 = v64;
  v45 = v84;
  sub_24EF99EFC(v41, &v84[*(v43 + 28)], type metadata accessor for PlayerAvatar);
  v46 = v63;
  *v45 = v81;
  v45[1] = v46;
  v47 = v76;
  sub_24EF99EFC(v37 + *(v44 + 28), v76, type metadata accessor for AvatarSection.AvatarEditorMode);
  if ((*(v77 + 48))(v47, 1, v79) == 1)
  {
    sub_24F7695C8(&v89);
    if (*(&v90 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
      *(&v87 + 1) = type metadata accessor for SaveAvatarAction(0);
      v88 = sub_24EF99FDC(&qword_27F216378, type metadata accessor for SaveAvatarAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
      sub_24EF99EFC(v45, boxed_opaque_existential_1, type metadata accessor for AvatarData);
      (*(v75 + 56))(boxed_opaque_existential_1, 0, 1, v43);
      sub_24F928A98();
      v49 = v70;
      sub_24F76973C(v70);
      sub_24F9218A8();
      (*(v71 + 8))(v49, v72);
      sub_24EF9A024(v45, type metadata accessor for AvatarData);
      (*(v67 + 8))(v68, v36);
      sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
      __swift_destroy_boxed_opaque_existential_1(&v86);
      __swift_destroy_boxed_opaque_existential_1(&v89);
    }

    else
    {
      sub_24EF9A024(v45, type metadata accessor for AvatarData);
      (*(v67 + 8))(v68, v36);
      sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
      sub_24E601704(&v89, &unk_27F212740);
    }
  }

  else
  {
    v54 = v74;
    sub_24EF99F64(v47, v74);
    v55 = v73;
    sub_24EF99EFC(v45, v73, type metadata accessor for AvatarData);
    (*(v75 + 56))(v55, 0, 1, v43);
    sub_24F927178();
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v56 = sub_24F9220D8();
    __swift_project_value_buffer(v56, qword_27F39E8F8);
    v57 = sub_24F9220B8();
    v58 = sub_24F92BD98();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v67;
    if (v59)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_24E5DD000, v57, v58, "Updated draft avatar.", v61, 2u);
      MEMORY[0x2530542D0](v61, -1, -1);
    }

    sub_24E601704(v54, &qword_27F22CD60);
    sub_24EF9A024(v45, type metadata accessor for AvatarData);
    (*(v60 + 8))(v68, v69);
    sub_24EF9A024(v82, type metadata accessor for PlayerAvatar);
  }
}

uint64_t sub_24EF9978C()
{
  v1 = *(type metadata accessor for AvatarSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EF97EC8(v2);
}

uint64_t objectdestroyTm_44()
{
  v1 = type metadata accessor for AvatarSection(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = (v3 + *(v4 + 32));
    v6 = type metadata accessor for AvatarData(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_24F9289E8();
      v21 = *(*(v8 - 8) + 8);
      v22 = v8;
      v21(v5 + v7);
      v9 = v5 + *(v6 + 28);

      v10 = type metadata accessor for PlayerAvatar(0);
      v11 = *(v10 + 20);
      v12 = type metadata accessor for PlayerAvatar.Overlay(0);
      if (!(*(*(v12 - 8) + 48))(&v9[v11], 1, v12) && !swift_getEnumCaseMultiPayload())
      {
        (v21)(&v9[v11], v22);
      }

      v13 = &v9[*(v10 + 24)];
      if (*(v13 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }
  }

  v14 = v2 + v1[9];
  v15 = sub_24F9289E8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);

  v17 = v2 + v1[10];
  if (*(v17 + 40))
  {
    if (*(v17 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_24F921B58();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF99BCC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AvatarSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EF98A60(v4, a1);
}

unint64_t sub_24EF99C3C()
{
  result = qword_27F235650;
  if (!qword_27F235650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235630);
    sub_24EF99CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235650);
  }

  return result;
}

unint64_t sub_24EF99CC8()
{
  result = qword_27F235658;
  if (!qword_27F235658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235648);
    sub_24E602068(&qword_27F235660, &qword_27F235668);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235658);
  }

  return result;
}

unint64_t sub_24EF99DAC()
{
  result = qword_27F235670;
  if (!qword_27F235670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235670);
  }

  return result;
}

uint64_t sub_24EF99E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF99EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF99F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF99FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EF9A024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF9A084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF9A0EC()
{
  v1 = type metadata accessor for AvatarSection(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = (v4 + *(v5 + 32));
    v7 = type metadata accessor for AvatarData(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = sub_24F9289E8();
      v22 = *(*(v9 - 8) + 8);
      v23 = v9;
      v22(v6 + v8);
      v10 = v6 + *(v7 + 28);

      v11 = type metadata accessor for PlayerAvatar(0);
      v12 = *(v11 + 20);
      v13 = type metadata accessor for PlayerAvatar.Overlay(0);
      if (!(*(*(v13 - 8) + 48))(&v10[v12], 1, v13) && !swift_getEnumCaseMultiPayload())
      {
        (v22)(&v10[v12], v23);
      }

      v14 = &v10[*(v11 + 24)];
      if (*(v14 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }
  }

  v15 = v3 + v1[9];
  v16 = sub_24F9289E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235600);

  v18 = v3 + v1[10];
  if (*(v18 + 40))
  {
    if (*(v18 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  else
  {
  }

  v19 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24F921B58();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF9A4B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AvatarSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EF98108(a1, v6, v7, v1 + v5);
}

uint64_t sub_24EF9A5A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F235630);
  sub_24EF99C3C();
  sub_24EF99DAC();
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

id sub_24EF9A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v39 = a1;
  v40 = a2;
  v5 = sub_24F91F4A8();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - v8;
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v10;
  v11 = sub_24F9298A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  swift_getObjectType();
  v19 = qword_27F210CE0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_27F39D170);
  (*(v12 + 16))(v14, v20, v11);
  sub_24F928C58();
  sub_24F928868();
  (*(v16 + 8))(v18, v15);
  if (!v44)
  {
    return 0;
  }

  if (v43 == v39 && v44 == v40)
  {
  }

  else
  {
    v22 = sub_24F92CE08();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = [v23 defaultManager];
  v26 = v34;
  sub_24EF9B868(v25);

  v27 = v35;
  sub_24F91F3D8();
  v28 = v36;
  sub_24F91F3F8();
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v27, v38);
  v30(v26, v29);
  sub_24F91F458();
  v30(v28, v29);
  v31 = sub_24F92B098();

  v32 = [v24 fileExistsAtPath_];

  return v32;
}

uint64_t sub_24EF9AAE0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v55 = a3;
  v56 = a4;
  v57 = a1;
  v58 = a2;
  v70[5] = *MEMORY[0x277D85DE8];
  v65 = sub_24F9298A8();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  MEMORY[0x28223BE20](v62);
  v54 = v50 - v12;
  v69 = sub_24F91F4A8();
  v13 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v61 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v50 - v22;
  v24 = [objc_opt_self() defaultManager];
  v66 = a5;
  v67 = a6;
  sub_24EF9B868(v24);
  v25 = sub_24F91F3B8();
  v70[0] = 0;
  LODWORD(a5) = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v70];

  if (!a5)
  {
    v40 = v70[0];
    sub_24F91F278();

    swift_willThrow();
    (*(v13 + 8))(v23, v69);
    goto LABEL_8;
  }

  v26 = v70[0];

  sub_24F91F3D8();
  sub_24F91F3F8();
  v59 = v23;
  v29 = *(v13 + 8);
  v28 = v13 + 8;
  v27 = v29;
  v29(v17, v69);
  sub_24F91F458();
  v30 = sub_24F92B098();

  v53 = v24;
  v31 = [v24 fileExistsAtPath_];

  if (v31)
  {
    v51 = v27;
    v52 = v28;
    v32 = v69;
    v50[1] = a7;
    v33 = sub_24F91F3B8();
    v70[0] = 0;
    v34 = v53;
    v35 = [v53 removeItemAtURL:v33 error:v70];

    if (!v35)
    {
      v48 = v70[0];

      sub_24F91F278();

      swift_willThrow();
      v49 = v51;
      v51(v20, v32);
      v49(v59, v32);
      goto LABEL_8;
    }

    v36 = v70[0];
    v28 = v52;
    v27 = v51;
  }

  sub_24F91F3D8();
  v37 = v61;
  sub_24F91F3F8();
  v38 = v69;
  v27(v17, v69);
  v39 = v60;
  sub_24F91F4F8();
  if (v39)
  {

    v27(v37, v38);
    v27(v20, v38);
    v27(v59, v38);
LABEL_8:
    swift_getObjectType();
    v70[3] = v62;
    v70[4] = sub_24E979394();
    __swift_allocate_boxed_opaque_existential_1(v70);
    v41 = qword_27F210CE0;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = v65;
    v43 = __swift_project_value_buffer(v65, qword_27F39D170);
    (*(v63 + 16))(v64, v43, v42);
    sub_24F928C58();
    sub_24F928828();
    __swift_destroy_boxed_opaque_existential_1(v70);
    return swift_willThrow();
  }

  v51 = v27;
  v52 = v28;
  swift_getObjectType();
  if (qword_27F210CE0 != -1)
  {
    swift_once();
  }

  v45 = v65;
  v46 = __swift_project_value_buffer(v65, qword_27F39D170);
  (*(v63 + 16))(v64, v46, v45);
  sub_24F928C58();
  v70[0] = v55;
  v70[1] = v56;

  sub_24F928878();

  v47 = v51;
  v51(v61, v38);
  v47(v20, v38);
  return (v47)(v59, v38);
}

uint64_t sub_24EF9B244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v47 = a2;
  v53[5] = *MEMORY[0x277D85DE8];
  v48 = sub_24F91F4A8();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - v5;
  MEMORY[0x28223BE20](v6);
  v52 = &v44 - v7;
  MEMORY[0x28223BE20](v8);
  v46 = &v44 - v9;
  v10 = sub_24F9298A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v53[4] = sub_24E979394();
  __swift_allocate_boxed_opaque_existential_1(v53);
  v14 = qword_27F210CE0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_27F39D170);
  (*(v11 + 16))(v13, v15, v10);
  sub_24F928C58();
  sub_24F928828();
  __swift_destroy_boxed_opaque_existential_1(v53);
  v16 = [objc_opt_self() defaultManager];
  v17 = v46;
  sub_24EF9B868(v16);
  v18 = v49;
  sub_24F91F3D8();
  sub_24F91F3F8();
  v19 = *(v51 + 8);
  v20 = v18;
  v21 = v48;
  v22 = v51 + 8;
  v19(v20, v48);
  sub_24F91F458();
  v23 = sub_24F92B098();

  v24 = [v16 fileExistsAtPath_];

  if (v24)
  {
    v51 = v22;
    v25 = sub_24F91F3B8();
    v53[0] = 0;
    v26 = [v16 removeItemAtURL:v25 error:v53];

    if (!v26)
    {
      v42 = v53[0];
      sub_24F91F278();

      swift_willThrow();
      v36 = v19;
      v19(v52, v21);
      return v36(v17, v21);
    }

    v27 = v53[0];
  }

  v28 = v49;
  sub_24F91F3D8();
  v29 = v45;
  sub_24F91F3F8();
  v30 = v29;
  v19(v28, v21);
  sub_24F91F458();
  v31 = sub_24F92B098();

  v32 = [v16 fileExistsAtPath_];

  v33 = v17;
  v34 = v52;
  v35 = v16;
  v36 = v19;
  if (!v32)
  {
LABEL_9:

    v36(v30, v21);
    v36(v34, v21);
    return v36(v33, v21);
  }

  v37 = v33;
  v38 = sub_24F91F3B8();
  v53[0] = 0;
  v39 = [v35 removeItemAtURL:v38 error:v53];

  if (v39)
  {
    v40 = v53[0];
    v33 = v37;
    goto LABEL_9;
  }

  v43 = v53[0];
  sub_24F91F278();

  swift_willThrow();
  v36(v30, v21);
  v17 = v37;
  v36(v34, v21);
  return v36(v17, v21);
}

uint64_t sub_24EF9B7E0()
{
  v0 = sub_24F9298A8();
  __swift_allocate_value_buffer(v0, qword_27F39D170);
  __swift_project_value_buffer(v0, qword_27F39D170);
  return sub_24F929898();
}

void sub_24EF9B868(void *a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v7 = [a1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{v21, v4}];
  v8 = v21[0];
  if (v7)
  {
    v9 = v7;
    sub_24F91F428();
    v10 = v8;

    sub_24F91F3D8();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = v21[0];
    v12 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    v20[1] = __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v14 = sub_24F91F268();
    v15 = AMSLogableError();

    v16 = sub_24F92B0D8();
    v18 = v17;

    v21[3] = MEMORY[0x277D837D0];
    v21[0] = v16;
    v21[1] = v18;
    sub_24F928438();
    sub_24E857CC8(v21);
    sub_24F92A5A8();

    v19 = [a1 temporaryDirectory];
    sub_24F91F428();
  }
}

uint64_t DiagnosticsReporter.flushRecorder(_:)(uint64_t a1)
{
  v2 = sub_24F91EB58();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  [v7 lock];
  swift_beginAccess();
  v8 = *(a1 + 16);

  [v7 unlock];
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v38[1] = v8;
    v13 = v8 + ((v12 + 32) & ~v12);
    v39 = *(v10 + 56);
    v40 = v11;
    v11(v6, v13, v2);
    while (1)
    {
      v14 = sub_24F91EB28();
      v15 = qword_27F210798;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_24F92B0D8();
      v19 = v18;
      if (v17 == sub_24F92B0D8() && v19 == v20)
      {
        break;
      }

      v22 = sub_24F92CE08();

      if (v22)
      {

LABEL_17:
        v23 = sub_24F91EB48();
        if (!v23)
        {
          goto LABEL_4;
        }

        v24 = v23;
        v41 = 0x726F727265;
        v42 = 0xE500000000000000;
        sub_24F92C7F8();
        if (!*(v24 + 16))
        {
          goto LABEL_3;
        }

        v25 = sub_24E76D934(v43);
        if ((v26 & 1) == 0)
        {
          goto LABEL_3;
        }

        sub_24E643A9C(*(v24 + 56) + 32 * v25, &v44);
        sub_24E6585F8(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
        if (swift_dynamicCast())
        {
          v27 = v43[0];
          sub_24EF9C560(v43[0]);
        }

        goto LABEL_6;
      }

      if (qword_27F2107A0 != -1)
      {
        swift_once();
      }

      v28 = sub_24F92B0D8();
      v30 = v29;
      if (v28 == sub_24F92B0D8() && v30 == v31)
      {
      }

      else
      {
        v32 = sub_24F92CE08();

        if ((v32 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v33 = sub_24F91EB48();
      if (!v33)
      {
        goto LABEL_4;
      }

      v34 = v33;
      v41 = 0x746E656469636E69;
      v42 = 0xE900000000000073;
      sub_24F92C7F8();
      if (!*(v34 + 16) || (v35 = sub_24E76D934(v43), (v36 & 1) == 0))
      {
LABEL_3:

        sub_24E6585F8(v43);
LABEL_4:
        v44 = 0u;
        v45 = 0u;
LABEL_5:
        sub_24E601704(&v44, &qword_27F2129B0);
        goto LABEL_6;
      }

      sub_24E643A9C(*(v34 + 56) + 32 * v35, &v44);
      sub_24E6585F8(v43);

      if (!*(&v45 + 1))
      {
        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678);
      if (swift_dynamicCast())
      {
        sub_24EF9CB64(v43[0]);
      }

LABEL_6:
      (*(v10 - 8))(v6, v2);
      v13 += v39;
      if (!--v9)
      {
      }

      v40(v6, v13, v2);
    }

    goto LABEL_17;
  }
}

uint64_t DiagnosticsReporter.__allocating_init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_24EF9D774(a1, a2, a3, a4, a5);
  sub_24E824448(a4);
  sub_24E824448(a2);
  return v10;
}

uint64_t sub_24EF9C110()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39D188);
  __swift_project_value_buffer(v4, qword_27F39D188);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t DiagnosticsReporter.init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24EF9D774(a1, a2, a3, a4, a5);
  sub_24E824448(a4);
  sub_24E824448(a2);
  return v7;
}

uint64_t DiagnosticsReporter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration;
  v3 = sub_24F928BC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError));
  sub_24E824448(*(v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident));

  return v0;
}

uint64_t DiagnosticsReporter.__deallocating_deinit()
{
  DiagnosticsReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF9C424(uint64_t *a1)
{
  v3 = sub_24F928BC8();
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *a1;
  if (*(v1 + v7))
  {
    v8 = *(v1 + v7);
  }

  else
  {
    (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration, v6);
    sub_24F928BE8();
    swift_allocObject();
    v8 = sub_24F928B88();
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_24EF9C560(void *a1)
{
  v2 = v1;
  v4 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F9479A0;
  *(v5 + 32) = @"debug";
  *(v5 + 40) = @"convergence";
  *(v5 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v6 = @"debug";
  v7 = @"convergence";
  v8 = @"internal";
  v9 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v4, v9);

  if (IsAnyOf)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
    if (swift_dynamicCast())
    {
      sub_24E612E28(&v25, v28);
      v12 = v29;
      v13 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      *&v24 = (*(v13 + 16))(v12, v13);
      *(&v24 + 1) = v14;
      v15 = v30;
      v16 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v17 = MEMORY[0x28223BE20](v16);
      (*(v15 + 24))(sub_24EF9DAD4, v17);
      if (qword_27F210CE8 != -1)
      {
        swift_once();
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39D188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      *(&v26 + 1) = MEMORY[0x277D837D0];
      v25 = v24;

      sub_24F928438();
      sub_24E601704(&v25, &qword_27F2129B0);
      sub_24F92A5A8();

      __swift_destroy_boxed_opaque_existential_1(v28);
      goto LABEL_10;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_24E601704(&v25, &qword_27F2231C8);
  }

  if (qword_27F210CE8 != -1)
  {
    swift_once();
  }

  v19 = sub_24F92AAE8();
  __swift_project_value_buffer(v19, qword_27F39D188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  swift_getErrorValue();
  v20 = sub_24F92CFE8();
  v29 = MEMORY[0x277D837D0];
  v28[0] = v20;
  v28[1] = v21;
  sub_24F928438();
  sub_24E601704(v28, &qword_27F2129B0);
  sub_24F92A5A8();

LABEL_10:
  sub_24EF9D084(a1);
  MetricsLogger.log(contentsOf:)(a1);
  v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError);
  if (v22)
  {
    v22(a1);
  }
}

uint64_t sub_24EF9CB64(uint64_t a1)
{
  v3 = sub_24F9281E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = v10;
    v14 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident);
    v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident + 8);
    v25 = *(v9 + 56);
    v26 = "$_validationMetricsLogger";
    v23[1] = v13;
    v24 = (v9 - 8);
    v36 = xmmword_24F93A400;
    v29 = v9;
    v30 = v3;
    v27 = v14;
    v28 = v7;
    v35 = v10;
    do
    {
      v33 = v11;
      v34 = v8;
      v12(v6);
      if (qword_27F210CE8 != -1)
      {
        swift_once();
      }

      v15 = sub_24F92AAE8();
      v32 = __swift_project_value_buffer(v15, qword_27F39D188);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v36;
      sub_24F9283A8();
      v40 = v3;
      v16 = __swift_allocate_boxed_opaque_existential_1(&v38);
      v35(v16, v6, v3);
      sub_24F928438();
      sub_24E601704(&v38, &qword_27F2129B0);
      sub_24F92A5B8();

      v37 = v28;
      *(swift_allocObject() + 16) = v36;
      v17 = sub_24F9281D8();
      v18 = MEMORY[0x277D837D0];
      v40 = MEMORY[0x277D837D0];
      v38 = v17;
      v39 = v19;
      sub_24F928438();
      sub_24E601704(&v38, &qword_27F2129B0);
      v20 = sub_24F9281C8();
      v40 = v18;
      v38 = v20;
      v39 = v21;
      sub_24F928438();
      sub_24E601704(&v38, &qword_27F2129B0);
      sub_24F928BE8();
      sub_24F92A5A8();

      v12 = v35;
      if (v27)
      {
        v27(v6);
      }

      v3 = v30;
      (*v24)(v6, v30);
      v11 = v33 + v25;
      v8 = v34 - 1;
    }

    while (v34 != 1);
  }
}

uint64_t sub_24EF9D084(void *a1)
{
  v2 = sub_24F92A868();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92AC38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  if (swift_dynamicCast())
  {
    v11 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger);
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    v15 = a1;
    v12 = a1;
    if (!swift_dynamicCast())
    {

      return sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger);
    }

    v11 = sub_24EF9C424(&OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger);
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

uint64_t sub_24EF9D2D8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x253050C20](10, 0xE100000000000000);
  MEMORY[0x253050C20](a1, a2);
  MEMORY[0x253050C20](8250, 0xE200000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0, 0xE000000000000000);
}

uint64_t DiagnosticsReporter.flushBootstrapLogger(_:)()
{
  v1 = sub_24F928BC8();
  v2 = MEMORY[0x28223BE20](v1);
  (*(v4 + 16))(&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration, v2);
  v5 = sub_24F928BE8();
  swift_allocObject();
  v6 = sub_24F928B88();
  v9[3] = v5;
  v9[4] = MEMORY[0x277D21CE8];
  v9[0] = v6;

  sub_24F928A88();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void DiagnosticsReporter.flushBootstrapEvents(_:asPartOf:)(unint64_t a1)
{
  v2 = sub_24F928698();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929158();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = sub_24F92C738();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  sub_24F928FD8();
  sub_24F92A758();
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v7;
    v15 = v6;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x253052270](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      (*(*v12 + 96))();
      if (qword_27F210658 != -1)
      {
        swift_once();
      }

      ++v11;
      v13 = sub_24F929AB8();
      __swift_project_value_buffer(v13, qword_27F22E3B8);
      sub_24F929138();

      (*(v3 + 8))(v5, v2);
    }

    while (v10 != v11);
    (*(v14 + 8))(v9, v15);
  }
}

uint64_t sub_24EF9D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_configuration;
  v12 = sub_24F928BC8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5 + v11, a1, v12);
  v14 = (v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportError);
  *v14 = a2;
  v14[1] = a3;
  v15 = (v5 + OBJC_IVAR____TtC12GameStoreKit19DiagnosticsReporter_onReportIncident);
  *v15 = a4;
  v15[1] = a5;
  v16 = objc_opt_self();
  sub_24E5FCA4C(a2);
  sub_24E5FCA4C(a4);
  v17 = [v16 defaultCenter];
  v18 = qword_27F210798;

  if (v18 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v5 selector:sel_errorDidOccur_ name:qword_27F232668 object:0];

  v19 = qword_27F2107A0;

  if (v19 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v5 selector:sel_incidentsDidOccur_ name:qword_27F232670 object:0];

  (*(v13 + 8))(a1, v12);
  return v5;
}

uint64_t type metadata accessor for DiagnosticsReporter()
{
  result = qword_27F2356B0;
  if (!qword_27F2356B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF9D9FC()
{
  result = sub_24F928BC8();
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

unint64_t sub_24EF9DAFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x49746361746E6F63;
  *(inited + 40) = 0xEA00000000007344;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  *(inited + 72) = v7;
  v8 = sub_24E61B71C(&qword_27F213798);
  *(inited + 48) = a1;
  *(inited + 80) = v8;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 96) = 0xE900000000000073;
  *(inited + 104) = a2;

  v9 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v10 = sub_24E80FFAC(v9);

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a3[4] = result;
  *a3 = v10;
  return result;
}

uint64_t sub_24EF9DC88(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF9E2C0();
  sub_24F92D128();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E61B71C(&qword_27F2137A0);
  sub_24F92CD48();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_24F92CD48();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EF9DE70()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_24EF9DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007344;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
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

uint64_t sub_24EF9DFA0(uint64_t a1)
{
  v2 = sub_24EF9E2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EF9DFDC(uint64_t a1)
{
  v2 = sub_24EF9E2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EF9E018@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24EF9E09C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_24EF9E09C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EF9E2C0();
  sub_24F92D108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v9 = 0;
  sub_24E61B71C(&qword_27F216420);
  sub_24F92CC68();
  v7 = v10;
  v9 = 1;
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EF9E2C0()
{
  result = qword_27F2356C8;
  if (!qword_27F2356C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356C8);
  }

  return result;
}

unint64_t sub_24EF9E328()
{
  result = qword_27F2356D8;
  if (!qword_27F2356D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356D8);
  }

  return result;
}

unint64_t sub_24EF9E380()
{
  result = qword_27F2356E0;
  if (!qword_27F2356E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356E0);
  }

  return result;
}

unint64_t sub_24EF9E3D8()
{
  result = qword_27F2356E8;
  if (!qword_27F2356E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2356E8);
  }

  return result;
}

uint64_t LegacyAllStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v6 = *v2 + 32;
    v7 = 1;
    do
    {
      sub_24E615E00(v6, v17);
      if (v7)
      {
        v8 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v10 = a1[1];
        v16[0] = *a1;
        v16[1] = v10;
        v11 = a1[3];
        v16[2] = a1[2];
        v16[3] = v11;
        v12 = a2[1];
        v15[0] = *a2;
        v15[1] = v12;
        v13 = a2[3];
        v15[2] = a2[2];
        v15[3] = v13;
        v7 = (*(v9 + 8))(v16, v15, v8, v9);
      }

      else
      {
        v7 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t LegacyAnyStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      sub_24E615E00(v8, v18);
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v9 = v19;
        v10 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v11 = a1[1];
        v17[0] = *a1;
        v17[1] = v11;
        v12 = a1[3];
        v17[2] = a1[2];
        v17[3] = v12;
        v13 = a2[1];
        v16[0] = *a2;
        v16[1] = v13;
        v14 = a2[3];
        v16[2] = a2[2];
        v16[3] = v14;
        v7 = (*(v10 + 8))(v17, v16, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_24EF9E624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2356F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9B7C10;
  *(inited + 32) = 0x656C6261797562;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for LegacyBuyableRules;
  *(inited + 80) = &off_286200728;
  *(inited + 88) = 0x676E6974696177;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = &type metadata for LegacyWaitingRules;
  *(inited + 136) = &off_286200718;
  if (qword_27F210C40 != -1)
  {
    swift_once();
  }

  *(inited + 144) = 0x64616F6C6E776F64;
  *(inited + 152) = 0xEB00000000676E69;
  *(inited + 184) = &type metadata for LegacyDownloadingRules;
  *(inited + 192) = &off_286200708;
  *(inited + 200) = 0x646573756170;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 240) = &type metadata for LegacyPausedRules;
  *(inited + 248) = &off_2862006F8;
  *(inited + 256) = 0x696C6C6174736E69;
  *(inited + 264) = 0xEA0000000000676ELL;
  *(inited + 296) = &type metadata for LegacyInstallingRules;
  *(inited + 304) = &off_2862006E8;
  *(inited + 312) = 0x656C6C6174736E69;
  *(inited + 320) = 0xE900000000000064;
  *(inited + 352) = &type metadata for LegacyInstalledRules;
  *(inited + 360) = &off_2862006D8;
  *(inited + 368) = 0x6573616863727570;
  *(inited + 376) = 0xE900000000000064;
  *(inited + 408) = &type metadata for LegacyPurchasedRules;
  *(inited + 416) = &off_2862006C8;
  *(inited + 424) = 0x6C62617461647075;
  *(inited + 432) = 0xE900000000000065;
  *(inited + 464) = &type metadata for LegacyUpdatableRules;
  *(inited + 472) = &off_2862006B8;
  strcpy((inited + 480), "downloadable");
  *(inited + 493) = 0;
  *(inited + 494) = -5120;
  *(inited + 520) = &type metadata for LegacyDownloadableRules;
  *(inited + 528) = &off_2862006A8;
  sub_24E9421D0();

  *(inited + 536) = 0x656C62616E65706FLL;
  *(inited + 544) = 0xE800000000000000;
  *(inited + 576) = &type metadata for LegacyOpenableRules;
  *(inited + 584) = &off_286200698;
  *(inited + 592) = 0x6E776F6E6B6E75;
  *(inited + 600) = 0xE700000000000000;
  *(inited + 632) = &type metadata for LegacyNoneStateRule;
  *(inited + 640) = &protocol witness table for LegacyNoneStateRule;
  v1 = sub_24E60F56C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133D0);
  result = swift_arrayDestroy();
  qword_27F2356F0 = v1;
  return result;
}

uint64_t defaultLegacyAppTransitionRules.getter()
{
  if (qword_27F210CF0 != -1)
  {
    swift_once();
  }
}

BOOL sub_24EF9E9B4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 3)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) > 8)
  {
    return 0;
  }

  if (((1 << v3) & 0xB7) != 0)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[7];
  v7 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v6 && v2 == 0x8000000000000000 && v5 == 1 && !v7)
  {
    return 1;
  }

  return !v6 && v2 == 0x8000000000000000 && v5 == 4 && !v7;
}

BOOL sub_24EF9EA70(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 4)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) < 6 || v3 == 7)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[7];
  v8 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v7 && v2 == 0x8000000000000000 && v6 == 1 && !v8)
  {
    return 1;
  }

  return !v7 && v2 == 0x8000000000000000 && v6 == 4 && !v8;
}

BOOL sub_24EF9EB1C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 7)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v18 = *a1;
  *(&v18 + 1) = v4;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = 4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = xmmword_24F966510;
  return (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v18, &v13) & 1) != 0 || (v10 >> 60) < 7 || v10 >> 60 == 8 && !v11 && v10 == 0x8000000000000000 && v5 == 1 && !(v6 | v4 | v7 | v8 | v9);
}

BOOL sub_24EF9ECB4(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  if (v4 != 0x8000000000000000)
  {
    return 0;
  }

  v5 = vorrq_s8(*(a2 + 8), *(a2 + 24));
  if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v25[0] = *a1;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = v10;
  v25[5] = v11;
  v25[6] = v12;
  v25[7] = v13;
  v25[8] = 4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v14 = v12 >> 60;
  v29 = xmmword_24F966510;
  if ((v12 >> 60) > 3)
  {
    if (v14 <= 6)
    {
      v18 = v10;
      v19 = v6;
      v20 = v9;
      v21 = v8;
    }

    else if (v14 == 7)
    {
      v15 = v6;
    }

    else
    {
      v22 = v9 | v6;
      v23 = v10 | v11;
      if (v12 != 0x8000000000000000 || v22 | v7 | v8 | v23 | v13)
      {
        v24 = v22 | v8 | v23;
        if ((v13 || v12 != 0x8000000000000000 || v7 != 1 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 2 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 3 || v24))
        {
          sub_24EF9EEA0(v25);
          return 1;
        }
      }
    }

    goto LABEL_15;
  }

  if (v14 > 1)
  {

    goto LABEL_15;
  }

  if (v14)
  {
LABEL_15:
    sub_24EF9EEA0(v25);
    return 0;
  }

  sub_24EF9EEA0(v25);
  return (v7 & 0xFE) == 0;
}

uint64_t sub_24EF9EEA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EF9EF08(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >> 60)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(a1 + 6);
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v12 = v4 >> 60;
  if ((v4 >> 60) <= 2)
  {
    if (v12 == 1)
    {
      return (v3 & 1) != 0;
    }

    if (v12 != 2)
    {
      return 0;
    }

LABEL_12:
    *&v19 = *a2;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 2;
    v18 = 0;
    if (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17))
    {
      return 1;
    }

    goto LABEL_13;
  }

  if ((v12 - 3) < 3)
  {
    return 1;
  }

  if (v12 == 7)
  {
    goto LABEL_12;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v13 = (*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v3;
  v14 = *(a1 + 2) | *(a1 + 1) | *(a1 + 3) | *(a1 + 4) | *(a1 + 5) | *(a1 + 7);
  if (v4 != 0x8000000000000000 || v14 | v13)
  {
    return v4 == 0x8000000000000000 && !v14 && v13 == 4;
  }

  *&v19 = *a2;
  *(&v19 + 1) = v5;
  v20 = v8;
  v21 = v7;
  v22 = v10;
  v23 = v9;
  v24 = v2;
  v25 = v11;
  v15 = 1;
  *&v17[0] = 1;
  v18 = 0;
  if ((_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) == 0)
  {
LABEL_13:
    *&v19 = v6;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 0;
    v18 = 0;
    return (_s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) != 0;
  }

  return v15;
}

BOOL sub_24EF9F0AC(uint64_t *a1, int8x16_t *a2)
{
  v4 = a2[3].u64[0];
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  result = 0;
  if (!a2[3].i64[1] && v4 == 0x8000000000000000 && a2->i64[0] == 1)
  {
    v7 = vorrq_s8(a2[1], a2[2]);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | a2->i64[1]))
    {
      v34 = v2;
      v35 = v3;
      v9 = *a1;
      v8 = a1[1];
      v11 = a1[2];
      v10 = a1[3];
      v12 = a1[4];
      v13 = a1[5];
      v15 = a1[6];
      v14 = a1[7];
      v29[0] = v9;
      v29[1] = v8;
      v29[2] = v11;
      v29[3] = v10;
      v29[4] = v12;
      v29[5] = v13;
      v29[6] = v15;
      v29[7] = v14;
      v29[8] = 4;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v16 = v15 >> 60;
      v33 = xmmword_24F966510;
      if ((v15 >> 60) <= 3)
      {
        if (v16 > 1)
        {

          goto LABEL_19;
        }

        if (v16)
        {
          sub_24EF9EEA0(v29);
          return (v9 & 1) != 0;
        }
      }

      else
      {
        if (v16 <= 5)
        {
          v18 = v12;
          v19 = v8;
          v20 = v11;
          v21 = v10;
          goto LABEL_19;
        }

        if (v16 == 6)
        {
          v22 = v12;
          v23 = v8;
          v24 = v11;
          v25 = v10;
        }

        else
        {
          if (v16 == 7)
          {
            v17 = v8;
LABEL_19:
            sub_24EF9EEA0(v29);
            return 1;
          }

          v26 = v11 | v8;
          v27 = v12 | v13;
          if (v15 != 0x8000000000000000 || v26 | v9 | v10 | v27 | v14)
          {
            v28 = v26 | v10 | v27;
            if ((v14 || v15 != 0x8000000000000000 || v9 != 1 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 2 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 3 || v28))
            {
              sub_24EF9EEA0(v29);
              return 1;
            }
          }
        }
      }

      sub_24EF9EEA0(v29);
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EF9F2B0(__int128 *a1, char *a2)
{
  v2 = a1[1];
  v32 = *a1;
  v33 = v2;
  v3 = a1[3];
  v34 = a1[2];
  v35 = v3;
  v4 = *(a2 + 6);
  if (v4 >> 60 == 1)
  {
    v5 = *a2;
    v7 = *(a2 + 1);
    v6 = a2 + 1;
    v8 = *(v6 + 55);
    v9 = *(v6 + 2);
    v10 = *(v6 + 39);
    v11 = v6[6];
    v12 = a1[1];
    v22[0] = *a1;
    v22[1] = v12;
    v13 = a1[3];
    v22[2] = a1[2];
    v22[3] = v13;
    v23 = v5;
    v26 = v11;
    v25 = v9;
    v24 = v7;
    v27 = *(v6 + 7);
    v28 = *(v6 + 23);
    v29 = v10;
    v30 = v4;
    v31 = v8;
    v14 = v35 >> 60;
    if (!(v35 >> 60))
    {
      if (v32 >= 2u)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14 != 1)
    {
      if (v14 != 8 || ((v15 = (*(&v32 + 1) << 8) | ((*(&v32 + 5) | (BYTE7(v32) << 16)) << 40) | v32, v16 = v34.i64[1] | *(&v35 + 1) | v34.i64[0], v35 != 0x8000000000000000) || v16 | v33.i64[1] | v33.i64[0] | *(&v32 + 1) | v15) && (v35 != 0x8000000000000000 || v15 != 4 || v16 | v33.i64[1] | v33.i64[0] | *(&v32 + 1)))
      {
LABEL_16:
        sub_24E8B9478(&v32, v21);
        sub_24EF9EEA0(v22);
        if ((v5 & 1) == 0)
        {
          return 0;
        }

        v17 = v35 >> 60;
        if ((v35 >> 60) > 8)
        {
          return 0;
        }

        if (((1 << v17) & 0xB7) == 0)
        {
          if (v17 != 8)
          {
            return 0;
          }

          v19 = vorrq_s8(v33, v34);
          v20 = *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v32 + 1);
          if ((v35 != 0x8000000000000000 || v32 != 1 || v20) && (v35 != 0x8000000000000000 || v32 != 4 || v20))
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_15:
      sub_24E8B9478(&v32, v21);
      sub_24EF9EEA0(v22);
      return 1;
    }

    if (v32)
    {
      goto LABEL_16;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    sub_24E8B9478(&v32, v21);
    sub_24EF9EEA0(v22);
  }

  return 0;
}

BOOL sub_24EF9F4CC(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 2)
  {
    return 0;
  }

  v31 = v2;
  v32 = v3;
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v26[0] = *a1;
  v26[1] = v4;
  v26[2] = v7;
  v26[3] = v6;
  v26[4] = v8;
  v26[5] = v9;
  v26[6] = v10;
  v26[7] = v11;
  v26[8] = 4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v12 = v10 >> 60;
  v30 = xmmword_24F966510;
  if ((v10 >> 60) > 3)
  {
    if (v12 <= 5)
    {
      v15 = v8;
      v16 = v4;
      v17 = v7;
      v18 = v6;
      goto LABEL_25;
    }

    if (v12 == 6)
    {
      v19 = v8;
      v20 = v4;
      v21 = v7;
      v22 = v6;
    }

    else
    {
      if (v12 == 7)
      {
        v13 = v4;
LABEL_25:
        sub_24EF9EEA0(v26);
        return 1;
      }

      v23 = v7 | v4;
      v24 = v8 | v9;
      if (v10 != 0x8000000000000000 || v23 | v5 | v6 | v24 | v11)
      {
        v25 = v23 | v6 | v24;
        if (!v11 && v10 == 0x8000000000000000 && v5 == 1 && !v25)
        {
          goto LABEL_25;
        }

        if ((v11 || v10 != 0x8000000000000000 || v5 != 2 || v25) && (v11 || v10 != 0x8000000000000000 || v5 != 3 || v25))
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_19;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {

      goto LABEL_25;
    }

LABEL_19:
    sub_24EF9EEA0(v26);
    return 0;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  sub_24EF9EEA0(v26);
  return (v5 | 2) == 2;
}

BOOL sub_24EF9F698(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 6)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_24F966510;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_11;
  }

  if (v8 <= 5)
  {
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_24EF9FBA4(&v23, v20);
    goto LABEL_11;
  }

  if (v8 != 6)
  {
    if (v8 == 7)
    {
      v9 = *(&v37 + 1);
    }

    else
    {
      v17 = v39 | *(&v38 + 1);
      if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v17 | v38)
      {
        v18 = *(&v39 + 1) | *(&v37 + 1) | v17 | v38;
        if ((v40 != 0x8000000000000000 || v37 != 1 || v18) && (v40 != 0x8000000000000000 || v37 != 2 || v18) && (v40 != 0x8000000000000000 || v37 != 3 || v18))
        {
          v13 = v31;
          goto LABEL_12;
        }
      }
    }

LABEL_11:
    sub_24EF9EEA0(v31);
    v23 = v41;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    sub_24E8B9478(&v37, v20);
    sub_24E8B9478(&v41, v20);
    v13 = &v23;
LABEL_12:
    sub_24EF9EEA0(v13);
    return 1;
  }

  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v15 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v15 + 1);
  v21 = v15 & 0xFFFFFFFFFFFFFFFLL;
  sub_24EF9FBA4(v20, &v23);
  sub_24EF9EEA0(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v16 = *&v41;
  sub_24E8B9478(&v37, v19);
  sub_24E8B9478(&v41, v19);
  sub_24EF9EEA0(&v23);
  return *v20 < v16;
}

BOOL sub_24EF9F91C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 5)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_24F966510;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_12;
  }

  if (v8 > 5)
  {
    if (v8 != 6)
    {
      if (v8 == 7)
      {
        v9 = *(&v37 + 1);
      }

      else
      {
        v14 = v39 | *(&v38 + 1);
        if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v14 | v38)
        {
          v15 = *(&v39 + 1) | *(&v37 + 1) | v14 | v38;
          if ((v40 != 0x8000000000000000 || v37 != 1 || v15) && (v40 != 0x8000000000000000 || v37 != 2 || v15) && (v40 != 0x8000000000000000 || v37 != 3 || v15))
          {
            v13 = v31;
            goto LABEL_13;
          }
        }
      }

LABEL_12:
      sub_24EF9EEA0(v31);
      v23 = v41;
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v30 = v40;
      sub_24E8B9478(&v37, v20);
      sub_24E8B9478(&v41, v20);
      v13 = &v23;
LABEL_13:
      sub_24EF9EEA0(v13);
      return 1;
    }

LABEL_11:
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_24EF9FBA4(&v23, v20);
    goto LABEL_12;
  }

  if (v8 == 4)
  {
    goto LABEL_11;
  }

  v16 = a1[1];
  v20[0] = *a1;
  v20[1] = v16;
  v17 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v17 + 1);
  v21 = v17 & 0xFFFFFFFFFFFFFFFLL;
  sub_24EF9FBA4(v20, &v23);
  sub_24EF9EEA0(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v18 = *&v41;
  sub_24E8B9478(&v37, v19);
  sub_24E8B9478(&v41, v19);
  sub_24EF9EEA0(&v23);
  return *v20 < v18;
}