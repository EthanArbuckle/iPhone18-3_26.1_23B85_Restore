unint64_t sub_24F156B98()
{
  result = qword_27F23A610;
  if (!qword_27F23A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A610);
  }

  return result;
}

unint64_t sub_24F156BEC()
{
  result = qword_27F23A628;
  if (!qword_27F23A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A628);
  }

  return result;
}

uint64_t sub_24F156C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F156CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsSummaryCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F156D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F156D80()
{
  result = qword_27F23A640;
  if (!qword_27F23A640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A5C8);
    sub_24E602068(&qword_27F23A648, &qword_27F23A650);
    sub_24F156E68(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A640);
  }

  return result;
}

uint64_t sub_24F156E68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F156EB4()
{
  result = qword_27F23A658;
  if (!qword_27F23A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A658);
  }

  return result;
}

unint64_t sub_24F156F0C()
{
  result = qword_27F23A660;
  if (!qword_27F23A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A660);
  }

  return result;
}

unint64_t sub_24F156F64()
{
  result = qword_27F23A668;
  if (!qword_27F23A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A668);
  }

  return result;
}

uint64_t sub_24F156FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t GenericPage.init(deserializing:using:)(char *a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v97 = a2;
  v100 = a1;
  v89 = *v2;
  v3 = sub_24F9285B8();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v80 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v84 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v96 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v85 = &v80 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v25 = sub_24F92AC28();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v83 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v80 - v29;
  v95 = v2;
  v93 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  sub_24F928398();
  sub_24F9282B8();
  v31 = v25;
  v87 = v15;
  v32 = v15 + 8;
  v33 = *(v15 + 8);
  v34 = v24;
  v35 = v14;
  v33(v34, v14);
  if ((*(v26 + 48))(v13, 1, v31) == 1)
  {
    sub_24E601704(v13, &qword_27F2213B0);
    v36 = sub_24F92AC38();
    sub_24F159DE8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v37 = 0x7365766C656873;
    v38 = v89;
    v37[1] = 0xE700000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v98 + 8))(v97, v99);
    v33(v100, v14);

    type metadata accessor for GenericPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v98;
    v88 = v26;
    v89 = v31;
    (*(v26 + 32))(v30, v13, v31);
    sub_24F928398();
    v40 = sub_24F928278();
    v92 = v35;
    v82 = v33;
    v33(v22, v35);
    v81 = v40;
    v80 = v32;
    v41 = v30;
    if (v40)
    {
      v42 = v95;
      v43 = v84;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v44, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v45 = v97;
      sub_24F928538();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v46 = swift_allocObject();
      *(v46 + 16) = MEMORY[0x277D84F90];
      *&v101 = v46;
      v42 = v95;
      v43 = v84;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v47, qword_27F22D8D8);
      v45 = v97;
      sub_24F928528();
    }

    v48 = v96;
    v49 = v88;
    v50 = v43;
    v51 = v99;
    (*(v39 + 32))(v96, v50, v99);
    v52 = *(v49 + 16);
    v84 = v41;
    v52(v83, v41, v89);
    v53 = *(v39 + 16);
    v95 = (v39 + 16);
    v97 = v53;
    v53(v94, v48, v51);
    type metadata accessor for Shelf();
    sub_24F159DE8(&qword_27F2265E0, type metadata accessor for Shelf);
    v54 = sub_24F92B6A8();
    v55 = sub_24EEF0A68(v54);
    v57 = v56;

    *(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v55;
    *(v42 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v57;
    v58 = v85;
    v59 = v100;
    sub_24F928398();
    v60 = sub_24F928348();
    v62 = v61;
    v63 = v92;
    v64 = v42;
    v65 = v82;
    v82(v58, v92);
    v66 = (v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    *v66 = v60;
    v66[1] = v62;
    v83 = type metadata accessor for Action();
    sub_24F928398();
    v67 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v65(v58, v63);
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v67;
    sub_24F928398();
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v58);
    sub_24F928398();
    sub_24F928368();
    v65(v58, v63);
    v68 = (v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage);
    v69 = v102;
    *v68 = v101;
    v68[1] = v69;
    type metadata accessor for Artwork();
    sub_24F928398();
    v70 = v99;
    v97(v94, v45, v99);
    sub_24F159DE8(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v71 = v103;
    v72 = v93;
    swift_beginAccess();
    *(v64 + v72) = v71;

    sub_24F928398();
    v73 = static Action.tryToMakeInstance(byDeserializing:using:)(v58, v45);
    v74 = v92;
    v65(v58, v92);
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = v73;
    *(v64 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v81 & 1;
    v75 = v86;
    (*(v87 + 16))(v86, v59, v74);
    v76 = v90;
    v97(v90, v45, v70);
    v77 = v91;
    v26 = BasePage.init(deserializing:using:)(v75, v76);
    if (v77)
    {
      v26 = *(v98 + 8);
      (v26)(v45, v70);
      v65(v59, v74);
      (v26)(v96, v70);
    }

    else
    {
      v78 = *(v98 + 8);
      v78(v45, v70);
      v65(v59, v74);
      v78(v96, v70);
    }

    (*(v88 + 8))(v84, v89);
  }

  return v26;
}

uint64_t type metadata accessor for GenericPage()
{
  result = qword_27F23A670;
  if (!qword_27F23A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  LODWORD(v62) = a7;
  v69 = a6;
  v58 = a3;
  v59 = a5;
  v57 = a2;
  v64 = a13;
  v65 = a4;
  v63 = a12;
  v67 = a8;
  v68 = a11;
  v66 = a10;
  v61 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = sub_24F928818();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v29 = sub_24EEF0A68(a1);
  v31 = v30;

  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v29;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v31;
  v32 = (v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v33 = v58;
  *v32 = v57;
  v32[1] = v33;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v65;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v59;
  sub_24E60169C(v69, v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v62;
  swift_beginAccess();
  *(v14 + v28) = v67;

  *(v14 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v60 = v25;
  v34 = *(v25 + 16);
  v34(v27, v68, v24);
  v35 = v64;
  sub_24E60169C(v64, v23, &qword_27F2218B0);
  *(v14 + 16) = v66;
  v62 = v27;
  v34((v14 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v27, v24);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v63;
  sub_24E60169C(v23, v20, &qword_27F2218B0);
  v36 = sub_24F9285B8();
  v58 = *(v36 - 8);
  v37 = *(v58 + 48);
  if (v37(v20, 1, v36) == 1)
  {

    sub_24E601704(v35, &qword_27F2218B0);
    v38 = *(v60 + 8);
    v38(v68, v24);
    sub_24E601704(v69, &qword_27F2129B0);
    sub_24E601704(v23, &qword_27F2218B0);
    v38(v62, v24);
    v39 = v20;
  }

  else
  {
    v55 = v37;
    v59 = v20;
    v40 = qword_27F2105F0;

    if (v40 != -1)
    {
      swift_once();
    }

    v57 = v24;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v41, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v42 = v70;
    v43 = v23;
    v44 = v58;
    if (v70)
    {
    }

    v45 = *(v44 + 8);
    v45(v59, v36);
    v46 = v62;
    if (!v42)
    {

      sub_24E601704(v64, &qword_27F2218B0);
      v50 = *(v60 + 8);
      v51 = v57;
      v50(v68, v57);
      sub_24E601704(v69, &qword_27F2129B0);
      sub_24E601704(v23, &qword_27F2218B0);
      v50(v46, v51);
      return v14;
    }

    v47 = v56;
    sub_24E60169C(v23, v56, &qword_27F2218B0);
    if (v55(v47, 1, v36) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0);
      v52 = *(v60 + 8);
      v53 = v57;
      v52(v68, v57);
      sub_24E601704(v69, &qword_27F2129B0);
      sub_24E601704(v43, &qword_27F2218B0);
      v52(v46, v53);
      v45(v47, v36);
      return v14;
    }

    sub_24E601704(v64, &qword_27F2218B0);
    v48 = *(v60 + 8);
    v49 = v57;
    v48(v68, v57);
    sub_24E601704(v69, &qword_27F2129B0);
    sub_24E601704(v23, &qword_27F2218B0);
    v48(v46, v49);
    v39 = v47;
  }

  sub_24E601704(v39, &qword_27F2218B0);
  return v14;
}

uint64_t GenericPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);

  return v0;
}

uint64_t sub_24F15865C(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  v5 = sub_24F159E30(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_24F1586E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v39 - v6;
  v44 = sub_24F928818();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v4;
  v8 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
  v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  result = swift_beginAccess();
  if (v12)
  {
    v15 = 0;
    v16 = v10 + 32;
    v40 = v12 - 1;
    v42 = v8;
    v41 = v10 + 32;
    while (1)
    {
      v17 = v16 + 40 * v15;
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        sub_24E65864C(v17, v49);
        if (*(*(a1 + v13) + 16))
        {
          break;
        }

LABEL_4:
        ++v18;
        result = sub_24E6585F8(v49);
        v17 += 40;
        if (v12 == v18)
        {
          v8 = v42;
          goto LABEL_14;
        }
      }

      sub_24E76D934(v49);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = sub_24E6585F8(v49);
      MEMORY[0x253050F00](v20);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v15 = v18 + 1;
      result = sub_24F92B638();
      v11 = v48;
      v8 = v42;
      v16 = v41;
      if (v40 == v18)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_4;
  }

LABEL_14:

  v49[0] = v8;
  sub_24EA0AE3C(v11);
  v21 = v49[0];
  v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  if (v22)
  {
    v42 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v41 = v22;
  }

  else
  {
    v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    v42 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    v41 = v23;
  }

  v24 = v44;
  v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction);
  v26 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v49, &qword_27F2129B0);
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1)
  {
    LODWORD(v40) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  }

  else
  {
    LODWORD(v40) = 0;
  }

  v27 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v28 = *(v2 + v27);
  if (!v28)
  {
    v29 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v28 = *(a1 + v29);
  }

  v30 = v2[2];
  v44 = v26;
  v31 = *(a1 + 16);

  if (v30)
  {
    v31 = sub_24ED64DBC(v31);
  }

  else
  {
  }

  v32 = v25;
  v33 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v34 = v45;
  (*(v43 + 16))(v45, v2 + v33, v24);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  v36 = sub_24F9285B8();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v38 = *(v47 + 224);

  return v38(v21, v42, v41, v32, v44, v49, v40, v28, 0, v31, v34, v35, v37);
}

uint64_t GenericPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v66) = a7;
  v63 = a3;
  v64 = a5;
  v62 = a2;
  v69 = a13;
  v70 = a8;
  v67 = a4;
  v68 = a12;
  v72 = a11;
  v73 = a6;
  v71 = a10;
  v65 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = sub_24F928818();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v28 = sub_24EEF0A68(a1);
  v30 = v29;

  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v28;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v30;
  v31 = (v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v32 = v63;
  *v31 = v62;
  v31[1] = v32;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v67;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v64;
  sub_24E60169C(v73, v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v66;
  swift_beginAccess();
  *(v26 + v27) = v70;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v64 = v23;
  v33 = *(v23 + 16);
  v33(v25, v72, v22);
  v34 = v69;
  sub_24E60169C(v69, v21, &qword_27F2218B0);
  *(v26 + 16) = v71;
  v33((v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v25, v22);
  *(v26 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v68;
  v66 = v21;
  sub_24E60169C(v21, v18, &qword_27F2218B0);
  v35 = sub_24F9285B8();
  v62 = *(v35 - 8);
  v36 = *(v62 + 48);
  if (v36(v18, 1, v35) == 1)
  {

    sub_24E601704(v34, &qword_27F2218B0);
    v37 = *(v64 + 8);
    v37(v72, v22);
    sub_24E601704(v73, &qword_27F2129B0);
    sub_24E601704(v66, &qword_27F2218B0);
    v37(v25, v22);
    v38 = v18;
  }

  else
  {
    v58 = v36;
    v59 = v25;
    v63 = v18;
    v39 = v64;
    v40 = qword_27F2105F0;

    if (v40 != -1)
    {
      swift_once();
    }

    v60 = v22;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v41, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v42 = v74;
    v43 = v72;
    v44 = v62;
    if (v74)
    {
    }

    v45 = *(v44 + 8);
    v45(v63, v35);
    v46 = v61;
    if (!v42)
    {

      sub_24E601704(v69, &qword_27F2218B0);
      v51 = *(v39 + 8);
      v52 = v43;
      v53 = v60;
      v51(v52, v60);
      sub_24E601704(v73, &qword_27F2129B0);
      sub_24E601704(v66, &qword_27F2218B0);
      v51(v59, v53);
      return v26;
    }

    v47 = v66;
    sub_24E60169C(v66, v61, &qword_27F2218B0);
    if (v58(v46, 1, v35) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v69, &qword_27F2218B0);
      v54 = *(v39 + 8);
      v55 = v60;
      v54(v43, v60);
      sub_24E601704(v73, &qword_27F2129B0);
      sub_24E601704(v47, &qword_27F2218B0);
      v54(v59, v55);
      v45(v46, v35);
      return v26;
    }

    sub_24E601704(v69, &qword_27F2218B0);
    v48 = *(v39 + 8);
    v49 = v43;
    v50 = v60;
    v48(v49, v60);
    sub_24E601704(v73, &qword_27F2129B0);
    sub_24E601704(v47, &qword_27F2218B0);
    v48(v59, v50);
    v38 = v46;
  }

  sub_24E601704(v38, &qword_27F2218B0);
  return v26;
}

uint64_t sub_24F1593AC(uint64_t a1, uint64_t *a2)
{
  result = sub_24F928348();
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (result == 0xD000000000000011 && 0x800000024FA6D870 == v4 || (sub_24F92CE08() & 1) != 0)
    {

      if (*a2)
      {
        return result;
      }

      v7 = *a2 | 1;
      goto LABEL_7;
    }

    if (v5 == 0xD000000000000019 && 0x800000024FA6D890 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 2) == 0)
      {
        v7 = *a2 | 2;
LABEL_7:
        *a2 = v7;
      }
    }

    else if (v5 == 0xD000000000000025 && 0x800000024FA6D8B0 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 4) == 0)
      {
        v7 = *a2 | 4;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001ALL && 0x800000024FA6D8E0 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 8) == 0)
      {
        v7 = *a2 | 8;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000014 && 0x800000024FA6D900 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x10) == 0)
      {
        v7 = *a2 | 0x10;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD00000000000001CLL && 0x800000024FA6D920 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x20) == 0)
      {
        v7 = *a2 | 0x20;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000024 && 0x800000024FA6D940 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x40) == 0)
      {
        v7 = *a2 | 0x40;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000016 && 0x800000024FA6D970 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x80) == 0)
      {
        v7 = *a2 | 0x80;
        goto LABEL_7;
      }
    }

    else if (v5 == 0xD000000000000022 && 0x800000024FA6D990 == v6 || (sub_24F92CE08() & 1) != 0)
    {

      if ((*a2 & 0x100) == 0)
      {
        v7 = *a2 | 0x100;
        goto LABEL_7;
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v9[3] = MEMORY[0x277D837D0];
      v9[0] = v5;
      v9[1] = v6;
      sub_24F928438();
      sub_24E601704(v9, &qword_27F2129B0);
      sub_24F92A5B8();
    }
  }

  return result;
}

uint64_t GenericPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);

  return v1;
}

uint64_t sub_24F15992C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24F1599B4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0);
}

uint64_t GenericPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F159B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 312))(*a1);
  *a2 = result;
  return result;
}

uint64_t _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24F92AC28();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  sub_24F9282B8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_24F928388();
    (*(*(v9 - 8) + 8))(a1, v9);
    sub_24E601704(v4, &qword_27F2213B0);
  }

  else
  {
    v10 = (*(v6 + 32))(v8, v4, v5);
    MEMORY[0x28223BE20](v10);
    *(&v13 - 2) = &v14;
    sub_24F92ABE8();
    v11 = sub_24F928388();
    (*(*(v11 - 8) + 8))(a1, v11);
    (*(v6 + 8))(v8, v5);
  }

  return v14;
}

uint64_t sub_24F159DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F159E30(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    sub_24E65864C(*(a1 + 48) + 40 * v14, v36);
    *(&v37 + 1) = *(*(a1 + 56) + 8 * v14);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    v15 = *(&v37 + 1);

    v16 = a2(v15);
    if (v3)
    {
      break;
    }

    v17 = v16;
    v9 &= v9 - 1;
    if (v16)
    {
      v31 = v34;
      v32 = v35;
      v30 = v33;
      v18 = *(v5 + 16);
      if (*(v5 + 24) <= v18)
      {
        sub_24E899884(v18 + 1, 1);
        v5 = v38;
      }

      result = sub_24F92C7B8();
      v19 = v5 + 64;
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = *(v5 + 48) + 40 * v23;
      *v28 = v30;
      *(v28 + 16) = v31;
      *(v28 + 32) = v32;
      *(*(v5 + 56) + 8 * v23) = v17;
      ++*(v5 + 16);

      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v13 >= v10)
          {
            goto LABEL_28;
          }

          v9 = *(v6 + 8 * v13);
          ++v12;
          if (v9)
          {
            v12 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      result = sub_24E601704(&v33, &qword_27F222718);
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  sub_24E601704(&v33, &qword_27F222718);

LABEL_28:

  return v5;
}

uint64_t sub_24F15A134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id ShelfLayoutContext.traitCollection.getter()
{
  v1 = [*(v0 + *(type metadata accessor for ShelfLayoutContext() + 40)) traitCollection];

  return v1;
}

uint64_t type metadata accessor for ShelfLayoutContext()
{
  result = qword_27F23A6C8;
  if (!qword_27F23A6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *a3;
  v14 = type metadata accessor for ShelfLayoutContext();
  sub_24F15AD90(v5 + *(v14 + 24), v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  LODWORD(a3) = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_24E601704(&v12[*(v10 + 56)], &unk_27F23A690);
  sub_24E601704(v12, &unk_27F23A690);
  if (a3 == 1)
  {
    v16 = 10;
  }

  else
  {
    v16 = 2;
  }

  swift_getKeyPath();
  sub_24F928A48();

  v17 = v16 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v30 >> 1) & 1));
  swift_getKeyPath();
  sub_24F928A48();

  if (v30[0] == 1)
  {
    v17 |= 1uLL;
  }

  else
  {
    v18 = [*(v5 + *(v14 + 40)) traitCollection];
    v19 = sub_24F92BF68();

    if (v19)
    {
      v17 |= 0x10uLL;
    }
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v27, v30);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 8))(v29, v21, v22);
    if (LOBYTE(v29[0]) != 4)
    {
      v17 |= 0x40uLL;
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_24E601704(v27, &unk_27F23A6B0);
  }

  v23 = type metadata accessor for ItemLayoutContext();
  (*(*(v20 - 8) + 16))(&a4[v23[5]], a1, v20);
  sub_24EB07708(v5, &a4[v23[8]]);
  *a4 = v26;
  *&a4[v23[6]] = v13;
  *&a4[v23[7]] = v17;
}

uint64_t ShelfLayoutContext.itemLayoutContext(for:at:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = sub_24F91FA08();
  v8 = v5;
  return ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(a1, v6, &v8, a3);
}

uint64_t ShelfLayoutContext.id.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();
}

uint64_t ShelfLayoutContext.shelf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShelfLayoutContext.surroundingShelves.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = type metadata accessor for ShelfLayoutContext();
  sub_24F15AD90(v2 + *(v9 + 24), v8);
  v10 = *(v6 + 56);
  sub_24EAA34E0(v8, a1);
  return sub_24EAA34E0(&v8[v10], a2);
}

uint64_t ShelfLayoutContext.contentPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext() + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_24E8B9768(__dst, &v5);
}

uint64_t ShelfLayoutContext.supplementaryPageGrid.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfLayoutContext() + 32);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x188uLL);
  return sub_24E8B9768(__dst, &v5);
}

uint64_t ShelfLayoutContext.stateStore.getter()
{
  type metadata accessor for ShelfLayoutContext();
}

uint64_t sub_24F15AAB4(uint64_t (*a1)(char *, void *, void, uint64_t, unint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228458);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-1] - v4;
  v6 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v1 + *(v6 + 20));
  sub_24F92C7F8();
  sub_24F92AD68();
  v11[0] = *(v1 + *(v6 + 36));

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0);
  v8 = sub_24EB076A4();
  return a1(v5, v11, MEMORY[0x277D84A98], v7, v8);
}

uint64_t ShelfLayoutContext.shelfPresentationHints.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();
}

uint64_t ShelfLayoutContext.traitEnvironment.getter()
{
  type metadata accessor for ShelfLayoutContext();

  return swift_unknownObjectRetain();
}

BOOL ShelfLayoutContext.isFirstShelf.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ShelfLayoutContext();
  sub_24F15AD90(v0 + *(v5 + 24), v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
  sub_24E601704(&v4[*(v2 + 56)], &unk_27F23A690);
  sub_24E601704(v4, &unk_27F23A690);
  return v7;
}

uint64_t sub_24F15AD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F15AE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 264);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F15AF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 264) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F15B074()
{
  sub_24F15B140();
  if (v0 <= 0x3F)
  {
    sub_24F15B198();
    if (v1 <= 0x3F)
    {
      sub_24F15B20C();
      if (v2 <= 0x3F)
      {
        sub_24F15B264();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F15B140()
{
  if (!qword_27F23A6D8)
  {
    type metadata accessor for Shelf();
    v0 = sub_24F928A68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23A6D8);
    }
  }
}

void sub_24F15B198()
{
  if (!qword_27F23A6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23A690);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F23A6E0);
    }
  }
}

void sub_24F15B20C()
{
  if (!qword_27F23A6E8)
  {
    v0 = sub_24F929988();
    if (!v1)
    {
      atomic_store(v0, &qword_27F23A6E8);
    }
  }
}

unint64_t sub_24F15B264()
{
  result = qword_27F23A6F0;
  if (!qword_27F23A6F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23A6F0);
  }

  return result;
}

id sub_24F15B30C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutContextTraitEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InAppPurchaseInstallPage.preInstallOfferDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

BOOL sub_24F15B3B4()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete))
  {
    return 1;
  }

  if (*(v0 + 16))
  {
    return *(v0 + 24) != 0;
  }

  return 0;
}

uint64_t InAppPurchaseInstallPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *InAppPurchaseInstallPage.__allocating_init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v15 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v16 = sub_24F928818();
  (*(*(v16 - 8) + 32))(v14 + v15, a6, v16);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v14;
}

void *InAppPurchaseInstallPage.init(isComplete:lockup:parentLockup:preInstallOfferDescription:pageMetrics:pageRenderEvent:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v10 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v11 = sub_24F928818();
  (*(*(v11 - 8) + 32))(v7 + v10, a6, v11);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = a7;
  return v7;
}

uint64_t InAppPurchaseInstallPage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *InAppPurchaseInstallPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v46 = *v2;
  v5 = sub_24F928818();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F9285B8();
  v7 = *(v61 - 8);
  v8 = MEMORY[0x28223BE20](v61);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v44 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v59 = a1;
  sub_24F928398();
  v20 = sub_24F928278();
  v21 = *(v12 + 8);
  v54 = v11;
  v57 = v21;
  v58 = v12 + 8;
  v21(v19, v11);
  v53 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_isComplete) = v20 & 1;
  type metadata accessor for InAppPurchaseLockup();
  sub_24F928398();
  v55 = v7;
  v22 = *(v7 + 16);
  v23 = v56;
  v24 = v60;
  v22(v56, v60, v61);
  v52 = &protocol conformance descriptor for Lockup;
  sub_24F15BE68(&qword_27F228A00, type metadata accessor for InAppPurchaseLockup);
  sub_24F929548();
  v3[2] = v62;
  v25 = v3;
  v26 = v22;
  type metadata accessor for Lockup();
  sub_24F928398();
  v51 = v7 + 16;
  v22(v23, v24, v61);
  sub_24F15BE68(&qword_27F221FB8, type metadata accessor for Lockup);
  sub_24F929548();
  v27 = v62;
  v25[3] = v62;
  if (*(v53 + v25) != 1)
  {
    goto LABEL_4;
  }

  if (!v25[2])
  {
    v39 = sub_24F92AC38();
    sub_24F15BE68(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v41 = v40;
    v42 = 0xE600000000000000;
    *v40 = 0x70756B636F6CLL;
LABEL_9:
    v40[1] = v42;
    v40[2] = v46;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    v36 = 0;
    v28 = v59;
    v37 = v60;
    v33 = v61;
    v32 = v54;
    goto LABEL_10;
  }

  if (!v27)
  {
    v39 = sub_24F92AC38();
    sub_24F15BE68(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v41 = v40;
    *v40 = 0x6F4C746E65726170;
    v42 = 0xEC00000070756B63;
    goto LABEL_9;
  }

LABEL_4:
  v28 = v59;
  sub_24F928398();
  v29 = sub_24F928348();
  v31 = v30;
  v32 = v54;
  v57(v17, v54);
  v25[4] = v29;
  v25[5] = v31;
  sub_24F928398();
  v33 = v61;
  v53 = v26;
  v26(v48, v60, v61);
  v34 = v49;
  v35 = v50;
  sub_24F928788();
  if (!v35)
  {
    (*(v44 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics, v34, v45);
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v38 = v60;
    v53(v56, v60, v33);
    sub_24F15BE68(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    (*(v55 + 8))(v38, v33);
    v57(v28, v32);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageRenderEvent) = v62;
    return v25;
  }

  v36 = 1;
  v37 = v60;
LABEL_10:
  (*(v55 + 8))(v37, v33);
  v57(v28, v32);

  if (v36)
  {
  }

  type metadata accessor for InAppPurchaseInstallPage();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for InAppPurchaseInstallPage()
{
  result = qword_27F23A708;
  if (!qword_27F23A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F15BE68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InAppPurchaseInstallPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t InAppPurchaseInstallPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24F15BFFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InAppPurchaseInstallPage();
  v7 = swift_allocObject();
  result = InAppPurchaseInstallPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F15C07C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit24InAppPurchaseInstallPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24F15C100()
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

char *PageFacetsChangeAction.__allocating_init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter];
  *v15 = a1;
  *(v15 + 1) = a2;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a3;
    v28 = a4;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a4 = v28;
    a3 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830);
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *PageFacetsChangeAction.init(filterParameter:title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a4;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);
  *v20 = a1;
  v20[1] = a2;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t PageFacetsChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x61507265746C6966;
    v25 = v27;
    v24[1] = 0xEF726574656D6172;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t PageFacetsChangeAction.filterParameter.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit22PageFacetsChangeAction_filterParameter);

  return v1;
}

uint64_t PageFacetsChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t PageFacetsChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PageFacetsChangeAction()
{
  result = qword_27F23A718;
  if (!qword_27F23A718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F15CFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v101 = a2;
  v92 = a4;
  v5 = sub_24F928388();
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24F928D08();
  v90 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A748);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v83 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A750);
  v95 = *(v89 - 8);
  v10 = MEMORY[0x28223BE20](v89);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A758);
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v88 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  v109 = sub_24F9285B8();
  v102 = *(v109 - 8);
  v20 = MEMORY[0x28223BE20](v109);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v83 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  *&v103 = &v83 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - v28;
  v30 = dynamic_cast_existential_2_conditional(a1);
  if (v30)
  {
    v33 = v30;
    v96 = v31;
    v97 = v32;
    v34 = v101;
    __swift_project_boxed_opaque_existential_1(v101, v101[3]);
    sub_24F92D0E8();
    sub_24F928598();
    sub_24F928578();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A768);
    sub_24F9285D8();
    v35 = v99;
    v36 = *(v98 + 1);
    v37 = v36(v19, v99);
    v38 = v109;
    if (!v105)
    {
      v39 = v93(v37);
      v105 = v94;
      v106 = v39;
      v40 = v88;
      sub_24F928578();
      sub_24F928528();
      v41 = v40;
      v38 = v109;
      v36(v41, v35);
      v42 = v102;
      (*(v102 + 8))(v29, v38);
      (*(v42 + 32))(v29, v103, v38);
    }

    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v44 = v102;
    v43 = v103;
    (*(v102 + 16))(v103, v29, v38);
    MEMORY[0x253050800](v43);
    sub_24F92D0F8();

    *&v107 = v33;
    *(&v107 + 1) = v96;
    v108 = v97;
    __swift_allocate_boxed_opaque_existential_1(&v105);
    v45 = v100;
    sub_24F92BA78();
    if (v45)
    {
      (*(v44 + 8))(v29, v38);
      return __swift_deallocate_boxed_opaque_existential_2(&v105);
    }

    v103 = v107;
    v70 = v107;
    v71 = __swift_project_boxed_opaque_existential_1(&v105, v107);
    v72 = v92;
    *(v92 + 24) = v103;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(*(v70 - 8) + 16))(boxed_opaque_existential_1, v71, v70);
    (*(v44 + 8))(v29, v38);
    return __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  v47 = v96;
  v98 = v12;
  v88 = v22;
  v48 = v95;
  v99 = v25;
  v49 = v97;
  v50 = v101;
  v51 = dynamic_cast_existential_2_conditional(a1);
  if (v51)
  {
    v84 = v52;
    v85 = v53;
    v86 = v51;
    v54 = v50;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_24F92D0E8();
    v55 = v99;
    sub_24F928598();
    sub_24F928558();
    v56 = v49;
    sub_24F9285D8();
    v57 = *(v48 + 8);
    v58 = v14;
    v59 = v89;
    v57(v58, v89);
    v60 = v90;
    v61 = (*(v90 + 48))(v47, 1, v56);
    v62 = sub_24E601704(v47, &qword_27F23A748);
    v63 = v109;
    if (v61 == 1)
    {
      v93(v62);
      v64 = v87;
      sub_24F928D18();
      v65 = v98;
      sub_24F928558();
      sub_24F928528();
      v66 = v65;
      v63 = v109;
      v57(v66, v59);
      v67 = v64;
      v55 = v99;
      (*(v60 + 8))(v67, v56);
      v68 = v102;
      (*(v102 + 8))(v55, v63);
      (*(v68 + 32))(v55, v103, v63);
    }

    sub_24E615E00(v54, v104);
    v69 = v100;
    sub_24F928298();
    if (v69)
    {
      return (*(v102 + 8))(v55, v63);
    }

    v78 = v102;
    (*(v102 + 16))(v88, v55, v63);
    *&v107 = v86;
    *(&v107 + 1) = v84;
    v108 = v85;
    __swift_allocate_boxed_opaque_existential_1(&v105);
    sub_24F929538();
    v103 = v107;
    v79 = v107;
    v80 = __swift_project_boxed_opaque_existential_1(&v105, v107);
    v81 = v92;
    *(v92 + 24) = v103;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(*(v79 - 8) + 16))(v82, v80, v79);
    (*(v78 + 8))(v55, v63);
    return __swift_destroy_boxed_opaque_existential_1(&v105);
  }

  v74 = sub_24F92C918();
  swift_allocError();
  v76 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
  *v76 = a1;
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_24F92D0C8();
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_24F92C888();

  v105 = 60;
  v106 = 0xE100000000000000;
  v77 = sub_24F92D1E8();
  MEMORY[0x253050C20](v77);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA46560);
  sub_24F92C908();
  (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
  return swift_willThrow();
}

uint64_t sub_24F15DAA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9CE420;
  v1 = type metadata accessor for AlertAction();
  v2 = sub_24F15F350(&qword_27F216210, type metadata accessor for AlertAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ArcadeAction();
  v4 = sub_24F15F350(&qword_27F23A778, type metadata accessor for ArcadeAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ArcadeLaunchAttributionAction();
  v6 = sub_24F15F350(&qword_27F216218, type metadata accessor for ArcadeLaunchAttributionAction);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ArcadeSubscriptionStateAction();
  v8 = sub_24F15F350(&qword_27F216220, type metadata accessor for ArcadeSubscriptionStateAction);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CancelPreorderAction();
  v10 = sub_24F15F350(&qword_27F216240, type metadata accessor for CancelPreorderAction);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for CompoundAction();
  v12 = sub_24F15F350(&qword_27F221050, type metadata accessor for CompoundAction);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  v13 = type metadata accessor for CopyTextAction();
  v14 = sub_24F15F350(&qword_27F230400, type metadata accessor for CopyTextAction);
  *(v0 + 128) = v13;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for ExternalUrlAction();
  v16 = sub_24F15F350(qword_27F222318, type metadata accessor for ExternalUrlAction);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for FlowBackAction();
  v18 = sub_24F15F350(&qword_27F226398, type metadata accessor for FlowBackAction);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for GameCenterDashboardAction();
  v20 = sub_24F15F350(&qword_27F23A780, type metadata accessor for GameCenterDashboardAction);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  v21 = type metadata accessor for GameCenterPlayerProfileAction();
  v22 = sub_24F15F350(&qword_27F238A08, type metadata accessor for GameCenterPlayerProfileAction);
  *(v0 + 192) = v21;
  *(v0 + 200) = v22;
  v23 = type metadata accessor for HttpAction();
  v24 = sub_24F15F350(&qword_27F225620, type metadata accessor for HttpAction);
  *(v0 + 208) = v23;
  *(v0 + 216) = v24;
  v25 = type metadata accessor for LocalAction();
  v26 = sub_24F15F350(&qword_27F23A788, type metadata accessor for LocalAction);
  *(v0 + 224) = v25;
  *(v0 + 232) = v26;
  v27 = type metadata accessor for OfferAction();
  v28 = sub_24F15F350(&qword_27F222868, type metadata accessor for OfferAction);
  *(v0 + 240) = v27;
  *(v0 + 248) = v28;
  v29 = type metadata accessor for OfferAlertAction();
  v30 = sub_24F15F350(&qword_27F22D430, type metadata accessor for OfferAlertAction);
  *(v0 + 256) = v29;
  *(v0 + 264) = v30;
  v31 = type metadata accessor for OfferStateAction();
  v32 = sub_24F15F350(&qword_27F23A790, type metadata accessor for OfferStateAction);
  *(v0 + 272) = v31;
  *(v0 + 280) = v32;
  v33 = type metadata accessor for OpenAppAction();
  v34 = sub_24F15F350(qword_27F222880, type metadata accessor for OpenAppAction);
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  v35 = type metadata accessor for OpenGamesUIAction();
  v36 = sub_24F15F350(&qword_27F23A798, type metadata accessor for OpenGamesUIAction);
  *(v0 + 304) = v35;
  *(v0 + 312) = v36;
  v37 = type metadata accessor for RateAction();
  v38 = sub_24F15F350(qword_27F225598, type metadata accessor for RateAction);
  *(v0 + 320) = v37;
  *(v0 + 328) = v38;
  v39 = type metadata accessor for RateLimitedAction();
  v40 = sub_24F15F350(&qword_27F216310, type metadata accessor for RateLimitedAction);
  *(v0 + 336) = v39;
  *(v0 + 344) = v40;
  v41 = type metadata accessor for ReportConcernAction();
  v42 = sub_24F15F350(&qword_27F2369D0, type metadata accessor for ReportConcernAction);
  *(v0 + 352) = v41;
  *(v0 + 360) = v42;
  v43 = type metadata accessor for SearchAction();
  v44 = sub_24F15F350(&qword_27F22D038, type metadata accessor for SearchAction);
  *(v0 + 368) = v43;
  *(v0 + 376) = v44;
  v45 = type metadata accessor for SearchAdAction();
  v46 = sub_24F15F350(qword_27F237520, type metadata accessor for SearchAdAction);
  *(v0 + 384) = v45;
  *(v0 + 392) = v46;
  v47 = type metadata accessor for SignInAction();
  v48 = sub_24F15F350(&qword_27F23A7A0, type metadata accessor for SignInAction);
  *(v0 + 400) = v47;
  *(v0 + 408) = v48;
  v49 = type metadata accessor for SignOutAction();
  v50 = sub_24F15F350(&qword_27F23A7A8, type metadata accessor for SignOutAction);
  *(v0 + 416) = v49;
  *(v0 + 424) = v50;
  v51 = type metadata accessor for ShareSheetAction();
  v52 = sub_24F15F350(&qword_27F233C38, type metadata accessor for ShareSheetAction);
  *(v0 + 432) = v51;
  *(v0 + 440) = v52;
  v53 = type metadata accessor for TabChangeAction();
  v54 = sub_24F15F350(&qword_27F22B800, type metadata accessor for TabChangeAction);
  *(v0 + 448) = v53;
  *(v0 + 456) = v54;
  updated = type metadata accessor for UpdateAllAction();
  v56 = sub_24F15F350(&qword_27F233618, type metadata accessor for UpdateAllAction);
  *(v0 + 464) = updated;
  *(v0 + 472) = v56;
  v57 = type metadata accessor for WriteReviewAction();
  v58 = sub_24F15F350(qword_27F2288B8, type metadata accessor for WriteReviewAction);
  *(v0 + 480) = v57;
  *(v0 + 488) = v58;
  v59 = type metadata accessor for UnhideAppAction();
  result = sub_24F15F350(&qword_27F23A7B0, type metadata accessor for UnhideAppAction);
  *(v0 + 496) = v59;
  *(v0 + 504) = result;
  off_27F23A728 = v0;
  return result;
}

uint64_t sub_24F15E094()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x69746341776F6C66;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = type metadata accessor for FlowAction();
  v2 = sub_24F15F350(&qword_27F216400, type metadata accessor for FlowAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_24E6090CC(inited);
  swift_setDeallocating();
  result = sub_24E601704(inited + 32, &qword_27F213A68);
  qword_27F23A730 = v3;
  return result;
}

uint64_t sub_24F15E174()
{
  if (qword_27F210F20 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A730;
  v1 = qword_27F210F18;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = off_27F23A728;
  v3 = *(off_27F23A728 + 2);
  if (v3)
  {

    v4 = MEMORY[0x277D84F90];
    v5 = 32;
    do
    {
      v17 = *&v2[v5];
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8);
      v6 = sub_24F92B188();
      v8 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E616118(0, v4[2] + 1, 1, v4);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E616118((v9 > 1), v10 + 1, 1, v4);
      }

      v4[2] = v10 + 1;
      v11 = &v4[4 * v10];
      v11[4] = v6;
      v11[5] = v8;
      *(v11 + 3) = v17;
      v5 += 16;
      --v3;
    }

    while (v3);

    if (v4[2])
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = MEMORY[0x277D84F98];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310);
  v12 = sub_24F92CB58();
LABEL_16:
  *&v18 = v12;

  sub_24F15E680(v13, 1, &v18);

  v14 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v18 = v0;
  sub_24E678F54(v14, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v18);

  result = v18;
  qword_27F23A738 = v18;
  return result;
}

uint64_t static AppStoreActionKinds.table.getter()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24F15E460()
{
  result = qword_27F23A740;
  if (!qword_27F23A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A740);
  }

  return result;
}

uint64_t sub_24F15E4B4()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }
}

unint64_t sub_24F15E510()
{
  if (qword_27F210F28 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23A738;

  v1 = sub_24F92A018();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0;
  sub_24F15F06C(v1, sub_24F15F3A4, 0, isUniquelyReferenced_nonNull_native, &v5);

  v3 = sub_24F15EA0C(v5);

  return v3;
}

unint64_t sub_24F15E62C()
{
  result = qword_27F23A760;
  if (!qword_27F23A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A760);
  }

  return result;
}

void sub_24F15E680(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v37 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_24E76D644(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24E8990B4(v15, v6 & 1);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_24E8ADC44();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + 16 * v10) = v37;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24F92C888();
    MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
    sub_24F92CA38();
    MEMORY[0x253050C20](39, 0xE100000000000000);
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 80);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v37 = *v6;
      v26 = *a3;

      v27 = sub_24E76D644(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_24E8990B4(v31, 1);
        v27 = sub_24E76D644(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + 16 * v27) = v37;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_24F15EA0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA08);
    v2 = sub_24F92CB58();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA18);
        swift_dynamicCast();
        result = sub_24E76D644(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_24F15EC34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310);
  v2 = *v0;
  v3 = sub_24F92CB28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_24F15ED9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213310);
  v33 = a2;
  result = sub_24F92CB38();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_24F92D068();
      sub_24F92B218();
      result = sub_24F92D0B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24F15F04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

uint64_t sub_24F15F06C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v43[0] = *v16;
    v43[1] = v17;
    v44 = *(v15 + v14);

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v37 = v42;
    v20 = *v45;
    v22 = sub_24E76D644(v40, v41);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_24F15EC34();
      }
    }

    else
    {
      sub_24F15ED9C(v25, v39 & 1);
      v27 = sub_24E76D644(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v45;
    if (v26)
    {
      v38 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v38;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v37;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_24E6586B4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24F15F2FC()
{
  result = qword_27F23A770;
  if (!qword_27F23A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A770);
  }

  return result;
}

uint64_t sub_24F15F350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CompoundItemSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CompoundItemSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E619D8C(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E619D8C((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

uint64_t CompoundItemSupplementaryProvider.removeChild(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    result = swift_beginAccess();
    v3 = *(v1 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      for (i = (v3 + 32); *i != v2; i += 2)
      {
        if (v4 == ++v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_24EA0E8E0(v5);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundItemSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t CompoundItemSupplementaryProvider.supplementaryItems(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v8[2] = a1;
  v8[3] = a2;

  v6 = sub_24EA0D7A8(sub_24F15F8A0, v8, v5);

  return v6;
}

uint64_t CompoundItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = (v7 + 40);
    while (v10 < *(v7 + 16))
    {
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v14(&v19, a1, a2, a3, a4, ObjectType, v12);
      swift_unknownObjectRelease();
      if (v20)
      {

        return sub_24E612C80(&v19, a5);
      }

      ++v10;
      result = sub_24EE0F5B8(&v19);
      v11 += 2;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t CompoundItemSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F15F810(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v8[2] = a1;
  v8[3] = a2;

  v6 = sub_24EA0D7A8(sub_24F15F97C, v8, v5);

  return v6;
}

uint64_t sub_24F15F908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(v5, v4, ObjectType, v6);
  *a2 = result;
  return result;
}

uint64_t AppEvent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);

  return v1;
}

uint64_t AppEvent.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);

  return v1;
}

uint64_t AppEvent.detail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);

  return v1;
}

uint64_t AppEvent.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);

  return v1;
}

uint64_t AppEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v4 = sub_24F91F648();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEvent.requirements.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);

  return v1;
}

uint64_t AppEvent.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_24F161DA8(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v63 = a23;
  v64 = a22;
  v62 = a21;
  v60 = a17;
  v61 = a20;
  v56 = a14;
  v57 = a15;
  v58 = a18;
  v59 = a16;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a19;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = a3;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v30 = v52;
  *v29 = v51;
  v29[1] = v30;
  v31 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v32 = v54;
  *v31 = v53;
  v31[1] = v32;
  v33 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  *v33 = v55;
  v33[1] = a9;
  v34 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  *v34 = a10;
  v34[1] = a11;
  v35 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v36 = sub_24F91F648();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v27 + v35, a12, v36);
  sub_24E60169C(a13, v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30);
  v38 = (v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v59;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v60;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v58;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v61;
  v40 = v63;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v62;
  sub_24E60169C(a1, v70, &qword_27F235830);
  sub_24E60169C(v40, v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v70, &v67, &qword_27F235830);
  if (*(&v68 + 1))
  {
    v41 = v68;
    *(v27 + 24) = v67;
    *(v27 + 40) = v41;
    *(v27 + 56) = v69;
  }

  else
  {
    v42 = v48;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v49 + 8))(v42, v50);
    v65 = v43;
    v66 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830);
  }

  sub_24E601704(v40, &qword_27F213E68);
  sub_24E601704(a13, &unk_27F22EC30);
  (*(v37 + 8))(a12, v36);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v70, &qword_27F235830);
  *(v27 + 16) = 0;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v64;
  return v27;
}

uint64_t AppEvent.init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, char *a19, unsigned __int8 a20, char *a21, uint64_t a22, uint64_t a23)
{
  v24 = v23;
  v71 = a8;
  v63 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v69 = a23;
  v72 = a21;
  v73 = a22;
  LODWORD(v70) = a20;
  v68 = a17;
  v67 = a16;
  v65 = a15;
  v64 = a14;
  v59 = a11;
  v66 = a18;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v55 - v30;
  v32 = *a19;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = a2;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = a3;
  v33 = a1;
  v34 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v35 = v61;
  *v34 = v60;
  v34[1] = v35;
  v36 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v37 = v63;
  *v36 = v62;
  v36[1] = v37;
  v38 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  *v38 = v71;
  v38[1] = a9;
  v39 = (v23 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  v40 = v59;
  *v39 = a10;
  v39[1] = v40;
  v41 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v42 = sub_24F91F648();
  v43 = *(v42 - 8);
  v44 = *(v43 + 16);
  v71 = a12;
  v44(v24 + v41, a12, v42);
  sub_24E60169C(a13, v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30);
  v45 = (v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v46 = v65;
  *v45 = v64;
  v45[1] = v46;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v67;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v68;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v66;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v32;
  v47 = v69;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v70;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v72;
  v70 = v33;
  sub_24E60169C(v33, v82, &qword_27F235830);
  v72 = v31;
  sub_24E60169C(v47, v31, &qword_27F213E68);
  sub_24E60169C(v82, &v76, &qword_27F235830);
  if (*(&v77 + 1))
  {
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  else
  {
    v48 = v56;
    sub_24F91F6A8();
    v49 = sub_24F91F668();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v74 = v49;
    v75 = v51;
    sub_24F92C7F8();
    sub_24E601704(&v76, &qword_27F235830);
  }

  sub_24E601704(v47, &qword_27F213E68);
  sub_24E601704(a13, &unk_27F22EC30);
  (*(v43 + 8))(v71, v42);
  sub_24E601704(v70, &qword_27F235830);
  sub_24E601704(v82, &qword_27F235830);
  v52 = v80;
  *(v24 + 24) = v79;
  *(v24 + 40) = v52;
  *(v24 + 56) = v81;
  *(v24 + 16) = 0;
  v53 = v72;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v73;
  sub_24E65E0D4(v53, v24 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
  return v24;
}

uint64_t AppEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v137 = a2;
  v135 = v3;
  v134 = *v3;
  v138 = sub_24F9285B8();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v125 = &v101[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v129 = &v101[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v101[-v11];
  v13 = sub_24F91F648();
  v132 = *(v13 - 8);
  v133 = v13;
  MEMORY[0x28223BE20](v13);
  v130 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v121 = &v101[-v19];
  MEMORY[0x28223BE20](v20);
  v120 = &v101[-v21];
  MEMORY[0x28223BE20](v22);
  v128 = &v101[-v23];
  MEMORY[0x28223BE20](v24);
  v26 = &v101[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v101[-v28];
  MEMORY[0x28223BE20](v30);
  v32 = &v101[-v31];
  MEMORY[0x28223BE20](v33);
  v35 = &v101[-v34];
  v139 = a1;
  sub_24F928398();
  v122 = sub_24F928348();
  v37 = v36;
  v124 = v16;
  v40 = *(v16 + 8);
  v38 = v16 + 8;
  v39 = v40;
  v40(v35, v15);
  if (!v37)
  {
    v53 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v55 = v54;
    *v54 = 0x656C746974;
    v54[1] = 0xE500000000000000;
LABEL_8:
    v54[2] = v134;
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    (*(v136 + 8))(v137, v138);
    v39(v139, v15);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v38;
  }

  v131 = v37;
  sub_24F928398();
  v118 = sub_24F928348();
  v42 = v41;
  v39(v32, v15);
  if (!v42)
  {

    v53 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v55 = v54;
    *v54 = 1684957547;
    v54[1] = 0xE400000000000000;
    goto LABEL_8;
  }

  v119 = v42;
  v43 = v39;
  sub_24F928398();
  v116 = sub_24F928348();
  v45 = v44;
  v39(v29, v15);
  v46 = v38;
  v47 = v136;
  if (!v45)
  {

    v50 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x6C6961746564;
    v51[1] = 0xE600000000000000;
    goto LABEL_10;
  }

  v117 = v45;
  v38 = 0xE900000000000065;
  sub_24F928398();
  sub_24F928288();
  v43(v26, v15);
  v49 = v132;
  v48 = v133;
  if ((*(v132 + 48))(v12, 1, v133) == 1)
  {

    sub_24E601704(v12, &unk_27F22EC30);
    v50 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v52 = v51;
    *v51 = 0x7461447472617473;
    v51[1] = 0xE900000000000065;
LABEL_10:
    v51[2] = v134;
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D22530], v50);
    swift_willThrow();
    (*(v47 + 8))(v137, v138);
    v43(v139, v15);
    goto LABEL_11;
  }

  v112 = v43;
  v113 = v46;
  v111 = v15;
  v57 = v49;
  v38 = v130;
  (*(v49 + 32))(v130, v12, v48);
  type metadata accessor for Lockup();
  v58 = v128;
  sub_24F928398();
  v59 = v47 + 16;
  v60 = *(v47 + 16);
  v61 = v129;
  v62 = v47;
  v63 = v137;
  v64 = v138;
  v115 = v59;
  v114 = v60;
  v60(v129, v137, v138);
  sub_24F161DA8(&qword_27F221FB8, type metadata accessor for Lockup);
  sub_24F929548();
  if (!v140)
  {

    v69 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v70 = 0x70756B636F6CLL;
    v71 = v134;
    v70[1] = 0xE600000000000000;
    v70[2] = v71;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x277D22530], v69);
    swift_willThrow();
    (*(v62 + 8))(v63, v64);
    v112(v139, v111);
    (*(v57 + 8))(v38, v133);
    goto LABEL_11;
  }

  v109 = v140;
  type metadata accessor for Artwork();
  v38 = v139;
  sub_24F928398();
  v65 = v114;
  v114(v61, v63, v64);
  sub_24F161DA8(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v110 = v140;
  type metadata accessor for Video();
  sub_24F928398();
  v65(v61, v63, v64);
  sub_24F161DA8(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  if (!(v110 | v140))
  {

    v66 = sub_24F92AC38();
    sub_24F161DA8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v67 = MEMORY[0x277D84F90];
    *v68 = v134;
    v68[1] = v67;
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D22538], v66);
    swift_willThrow();

    (*(v136 + 8))(v63, v64);
    v112(v139, v111);
    (*(v132 + 8))(v130, v133);
    goto LABEL_11;
  }

  v72 = v63;
  v73 = v139;
  v105 = v140;
  sub_24F928398();
  v134 = sub_24F928348();
  v108 = v74;
  v75 = v111;
  v76 = v58;
  v77 = v112;
  v112(v58, v111);
  sub_24F928398();
  sub_24F928288();
  v77(v58, v75);
  sub_24F928398();
  v107 = sub_24F928348();
  v106 = v78;
  v77(v58, v75);
  v79 = v120;
  sub_24F928398();
  v104 = sub_24F928278();
  v77(v79, v75);
  sub_24F928398();
  v114(v61, v72, v138);
  type metadata accessor for AppEventFormattedDate();
  sub_24F161DA8(&qword_27F22D450, type metadata accessor for AppEventFormattedDate);
  v120 = sub_24F92B698();
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v77(v76, v75);
  v103 = v140;
  v80 = v121;
  sub_24F928398();
  v102 = sub_24F928278();
  v77(v80, v75);
  type metadata accessor for AppEventNotificationConfig();
  sub_24F928398();
  v114(v61, v137, v138);
  sub_24F161DA8(&qword_27F23A7B8, type metadata accessor for AppEventNotificationConfig);
  v82 = v137;
  v81 = v138;
  sub_24F929548();
  v83 = v135;
  *(v135 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleArtwork) = v110;
  v84 = v73;
  v85 = v140;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_moduleVideo) = v105;
  v86 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_title);
  v87 = v131;
  *v86 = v122;
  v86[1] = v87;
  v88 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_subtitle);
  v89 = v108;
  *v88 = v134;
  v88[1] = v89;
  v90 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_detail);
  v91 = v117;
  *v90 = v116;
  v90[1] = v91;
  v92 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_kind);
  v93 = v119;
  *v92 = v118;
  v92[1] = v93;
  v94 = v132;
  v95 = v130;
  (*(v132 + 16))(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate, v130, v133);
  sub_24E60169C(v127, v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30);
  v96 = (v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_requirements);
  v97 = v106;
  *v96 = v107;
  v96[1] = v97;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup) = v109;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_hideLockupWhenNotInstalled) = v104 & 1;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_formattedDates) = v120;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_mediaOverlayStyle) = v103;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_includeBorderInDarkMode) = v102 & 1;
  *(v83 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_notificationConfig) = v85;
  v98 = v123;
  (*(v124 + 16))(v123, v84, v75);
  v38 = v125;
  v114(v125, v82, v81);
  v99 = v126;
  v100 = AppPromotion.init(deserializing:using:)(v98, v38);
  if (!v99)
  {
    v38 = v100;
  }

  (*(v136 + 8))(v82, v81);
  v112(v139, v75);
  sub_24E601704(v127, &unk_27F22EC30);
  (*(v94 + 8))(v95, v133);
  return v38;
}

uint64_t sub_24F161998()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30);
}

uint64_t AppEvent.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);

  v1 = OBJC_IVAR____TtC12GameStoreKit8AppEvent_startDate;
  v2 = sub_24F91F648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_endDate, &unk_27F22EC30);

  return v0;
}

uint64_t AppEvent.__deallocating_deinit()
{
  AppEvent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F161CA0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_24F161DA8(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_24F161D50(uint64_t a1)
{
  result = sub_24F161DA8(&qword_27F23A7C0, type metadata accessor for AppEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F161DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AppEvent()
{
  result = qword_27F23A7C8;
  if (!qword_27F23A7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F161E44()
{
  sub_24F91F648();
  if (v0 <= 0x3F)
  {
    sub_24E728940();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of AppEvent.__allocating_init(id:moduleArtwork:moduleVideo:title:subtitle:detail:kind:startDate:endDate:requirements:lockup:hideLockupWhenNotInstalled:formattedDates:mediaOverlayStyle:includeBorderInDarkMode:notificationConfig:clickAction:impressionMetrics:)()
{
  v2 = *(v0 + 256);

  return v2();
}

id UpsellBreakout.DisplayProperties.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UpsellBreakout.DisplayProperties.badgeColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.titleColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.descriptionColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UpsellBreakout.DisplayProperties.callToActionColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double UpsellBreakout.DisplayProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 514;
  return result;
}

uint64_t UpsellBreakout.DisplayProperties.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_24F928398();
  v28 = JSONObject.appStoreColor.getter();
  v15 = *(v6 + 8);
  v15(v14, v5);
  sub_24F928398();
  v16 = sub_24F928278();
  v15(v11, v5);
  v30 = v16 & 1;
  sub_24F928398();
  v17 = sub_24F928278();
  v15(v8, v5);
  v27 = v17 & 1;
  sub_24F928398();
  v26 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v25 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v24 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  v18 = JSONObject.appStoreColor.getter();
  v15(v14, v5);
  sub_24F928398();
  sub_24F162588();
  sub_24F928208();
  v15(v14, v5);
  LOBYTE(v11) = v32;
  sub_24F928398();
  sub_24E9619AC();
  sub_24F928208();
  v19 = sub_24F9285B8();
  (*(*(v19 - 8) + 8))(v29, v19);
  v15(a1, v5);
  result = (v15)(v14, v5);
  v21 = v31;
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 9) = v27;
  v22 = v25;
  *(a3 + 16) = v26;
  *(a3 + 24) = v22;
  *(a3 + 32) = v24;
  *(a3 + 40) = v18;
  *(a3 + 48) = v11;
  *(a3 + 49) = v21;
  return result;
}

unint64_t sub_24F162588()
{
  result = qword_27F23A7D8;
  if (!qword_27F23A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A7D8);
  }

  return result;
}

uint64_t UpsellBreakout.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  UpsellBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *UpsellBreakout.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v78 = *v3;
  v96 = sub_24F9285B8();
  v87 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v77 - v10;
  v11 = sub_24F91F6B8();
  v88 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  *(v3 + 128) = 0;
  v79 = v3 + 128;
  v90 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v89 = v14;
  v82 = v15;
  v83 = v8;
  if (v22)
  {
    v91 = v21;
    v92 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v14;
    v29 = v28;
    v88[1](v13, v11);
    v91 = v26;
    v92 = v29;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v27;
  }

  v88 = v23;
  (v23)(v24, v25);
  v30 = *&v93[16];
  *(v3 + 136) = *v93;
  *(v3 + 152) = v30;
  *(v3 + 168) = *&v93[32];
  v80 = sub_24F929608();
  sub_24F928398();
  v31 = v86;
  v32 = v3;
  v34 = v87 + 16;
  v33 = *(v87 + 16);
  v35 = v83;
  v36 = v96;
  v33(v83, v86, v96);
  v37 = v17;
  v38 = v81;
  sub_24F929548();
  v85 = v32;
  v80 = OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics;
  v39 = v38;
  v40 = v37;
  sub_24E65E0D4(v39, v32 + OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics);
  v41 = v84;
  v33(v84, v31, v36);
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v81 = v33;
  v33(v35, v41, v36);
  sub_24F1633D8(&qword_27F225B08, type metadata accessor for BreakoutDetails);
  v42 = v35;
  sub_24F929548();
  v43 = *v93;
  if (*v93)
  {
    v44 = v85;
    v85[2] = *v93;
    v45 = type metadata accessor for Action();
    v80 = v43;

    sub_24F928398();
    v78 = v45;
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v37, v41);
    v47 = v82 + 8;
    (v88)(v37, v89);
    v44[3] = v46;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v48 = v81;
    v77 = v34;
    (v81)(v42, v41, v96);
    v49 = v48;
    sub_24F1633D8(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    v44[4] = *v93;
    sub_24F928398();
    v50 = sub_24F928348();
    v52 = v51;
    v82 = v47;
    (v88)(v40, v89);
    v44[5] = v50;
    v44[6] = v52;
    type metadata accessor for Artwork();
    sub_24F928398();
    v53 = v96;
    v49(v42, v41, v96);
    sub_24F1633D8(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v44[7] = *v93;
    type metadata accessor for Video();
    v54 = v90;
    sub_24F928398();
    v49(v42, v41, v53);
    sub_24F1633D8(&qword_27F221590, type metadata accessor for Video);
    sub_24F929548();
    v55 = v85;
    v85[8] = *v93;
    sub_24F928398();
    v49(v42, v41, v96);
    sub_24F163144();
    sub_24F929548();
    v56 = *v93;
    v57 = v55;
    if (*v93 == 1)
    {
      v56 = 0;
      v58 = 0;
      v59 = xmmword_24F9CE620;
      v60 = 0uLL;
      v61 = 514;
    }

    else
    {
      v61 = v95;
      v58 = v94;
      v60 = *&v93[24];
      v59 = *&v93[8];
    }

    v67 = v86;
    v68 = v87;
    v55[9] = v56;
    *(v55 + 5) = v59;
    *(v55 + 6) = v60;
    v55[14] = v58;
    *(v55 + 60) = v61;
    sub_24F928398();
    v87 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v41);

    v69 = v41;
    v70 = *(v68 + 8);
    v71 = v67;
    v72 = v96;
    v70(v71, v96);
    v73 = v54;
    v74 = v88;
    v75 = v89;
    (v88)(v73, v89);
    (v74)(v40, v75);
    v70(v69, v72);
    swift_beginAccess();
    v57[16] = v87;
  }

  else
  {
    v62 = sub_24F92AC38();
    sub_24F1633D8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v63 = 0x736C6961746564;
    v64 = v78;
    v63[1] = 0xE700000000000000;
    v63[2] = v64;
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D22530], v62);
    swift_willThrow();
    v65 = *(v87 + 8);
    v66 = v96;
    v65(v86, v96);
    (v88)(v90, v89);
    v65(v41, v66);
    v57 = v85;

    sub_24E6585F8((v57 + 17));
    sub_24EB05BC8(v57 + v80);
    type metadata accessor for UpsellBreakout();
    swift_deallocPartialClassInstance();
  }

  return v57;
}

uint64_t type metadata accessor for UpsellBreakout()
{
  result = qword_27F23A7F0;
  if (!qword_27F23A7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F163144()
{
  result = qword_27F23A7E0;
  if (!qword_27F23A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A7E0);
  }

  return result;
}

uint64_t UpsellBreakout.buttonCallToAction.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UpsellBreakout.displayProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v2;
  v8 = *(v1 + 104);
  v3 = v8;
  v9 = *(v1 + 120);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_24F163240(v7, v6);
}

uint64_t UpsellBreakout.deinit()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  sub_24E6585F8(v0 + 136);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit14UpsellBreakout_impressionMetrics);
  return v0;
}

uint64_t UpsellBreakout.__deallocating_deinit()
{
  UpsellBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F1633D8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_24F163430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UpsellBreakout();
  v7 = swift_allocObject();
  result = UpsellBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1634B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_24F16350C()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24F1636C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
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

uint64_t sub_24F163724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_24F163798()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  xmmword_27F39DB00 = xmmword_24F9B4980;
  qword_27F39DB10 = v0;
  unk_27F39DB18 = v2;
  result = 4.0;
  xmmword_27F39DB20 = xmmword_24F9CE8A0;
  unk_27F39DB30 = xmmword_24F9CE8B0;
  *&xmmword_27F39DB40 = 0x7FF0000000000000;
  *(&xmmword_27F39DB40 + 1) = v3;
  return result;
}

double sub_24F1637F8()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  xmmword_27F39DB50 = xmmword_24F9B4980;
  qword_27F39DB60 = v0;
  unk_27F39DB68 = v2;
  result = 4.0;
  xmmword_27F39DB70 = xmmword_24F9CE8C0;
  unk_27F39DB80 = xmmword_24F9CE8B0;
  *&xmmword_27F39DB90 = 0x4075E00000000000;
  *(&xmmword_27F39DB90 + 1) = v3;
  return result;
}

uint64_t sub_24F163868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F1638A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24F1638F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_24F163930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F163978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1639F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F163B34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F163C84()
{
  sub_24F16C8E0(319, &qword_27F23A810, type metadata accessor for LocalPlayerProvider, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        sub_24E6D753C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24F16C890(319, &qword_27F23A818, &type metadata for Player.ProfilePrivacyVisibilityLevel, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24F16C890(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24F16C8E0(319, &qword_27F22CC08, type metadata accessor for NicknameModel, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24E6D753C(319, &qword_27F22CC10, &unk_27F237670, &unk_24F989C80, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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
}

uint64_t sub_24F163ED0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_24F921738();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228E50);
  MEMORY[0x28223BE20](v6 - 8);
  v18 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v17 = &v17 - v9;
  v10 = type metadata accessor for ProfileCreationView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_24F16CB4C(v1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_24F16CA3C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v13, type metadata accessor for ProfileCreationView);
  sub_24F16CB4C(v1, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationView);
  v14 = swift_allocObject();
  sub_24F16CA3C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ProfileCreationView);
  sub_24F921728();
  v15 = v17;
  sub_24F9271B8();
  (*(v3 + 8))(v5, v2);
  sub_24E60169C(v15, v18, &qword_27F228E50);
  type metadata accessor for GKPlayerAgeCategory(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A820);
  sub_24F921AA8();
  sub_24F921A58();
  sub_24F16A2DC();
  sub_24F16C2C4(&qword_27F215638, MEMORY[0x277D7EBB0]);
  sub_24F16C2C4(&qword_27F215640, MEMORY[0x277D7EB90]);
  sub_24F921D08();
  return sub_24E601704(v15, &qword_27F228E50);
}

uint64_t sub_24F1642B8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_24F92B7F8();
  v1[4] = sub_24F92B7E8();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_24F164368;

  return sub_24F16451C();
}

uint64_t sub_24F164368(int a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1644AC, v3, v2);
}

uint64_t sub_24F1644AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F16451C()
{
  v1[6] = v0;
  sub_24F92B7F8();
  v1[7] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_24F1645B4, v3, v2);
}

uint64_t sub_24F1645B4()
{
  v1 = v0[6];
  v2 = type metadata accessor for ProfileCreationView(0);
  v0[10] = v2;
  v3 = (v1 + *(v2 + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_24F164670;

  return sub_24F16730C(v5, v4);
}

uint64_t sub_24F164670(int a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_24F164798, v4, v3);
}

uint64_t sub_24F164798()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = (v3 + *(v2 + 56));
  v5 = *v4;
  v6 = *(v4 + 1);
  if (v1 == 1)
  {
    *(v0 + 32) = v5;
    v7 = v0 + 32;
    *(v0 + 101) = 1;
  }

  else
  {
    *(v0 + 16) = v5;
    v7 = v0 + 16;
    *(v0 + 100) = 2;
  }

  *(v7 + 8) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898);
  sub_24F926F48();
  v8 = *(v0 + 8);
  v9 = *(v0 + 96);

  return v8(v9);
}

uint64_t sub_24F164874@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A848);
  v5 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v137 = (&v123 - v6);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A850);
  MEMORY[0x28223BE20](v136);
  v8 = &v123 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A858);
  MEMORY[0x28223BE20](v141);
  v143 = &v123 - v9;
  v10 = type metadata accessor for ProfileCreationView(0);
  v139 = *(v10 - 1);
  v11 = *(v139 + 8);
  MEMORY[0x28223BE20](v10);
  v135 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v123 - v13;
  *&v134 = sub_24F928AD8();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A830);
  MEMORY[0x28223BE20](v146);
  v17 = &v123 - v16;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A860);
  v18 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v20 = &v123 - v19;
  LODWORD(object) = *a1;
  sub_24F0181F0(a2 + v10[10], &v157);
  if (v160)
  {
    v135 = *(&v157 + 1);
    *&v134 = v157;
    *(v8 + 40) = 0u;
    *(v8 + 7) = 0;
    *(v8 + 24) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 15) = 0;
    v132 = *(a2 + v10[11]);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v21 = *(v139 + 80);
    v139 = v5;
    v22 = (v21 + 20) & ~v21;
    v23 = swift_allocObject();
    v133 = v23;
    v24 = object;
    *(v23 + 16) = object;
    sub_24F16CA3C(v14, v23 + v22, type metadata accessor for ProfileCreationView);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v25 = swift_allocObject();
    sub_24F16CA3C(v14, v25 + ((v21 + 16) & ~v21), type metadata accessor for ProfileCreationView);
    sub_24F16CB4C(a2, v14, type metadata accessor for ProfileCreationView);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    sub_24F16CA3C(v14, v26 + v22, type metadata accessor for ProfileCreationView);
    v27 = v136;
    v28 = *(v136 + 136);
    v29 = type metadata accessor for HeaderPresentation(0);
    (*(*(v29 - 8) + 56))(&v8[v28], 1, 1, v29);
    v30 = &v8[v27[37]];
    LOBYTE(v149[0]) = 0;
    v31 = v132;

    sub_24F926F28();
    v32 = *(&v150 + 1);
    *v30 = v150;
    *(v30 + 1) = v32;
    v33 = &v8[v27[38]];
    LOBYTE(v149[0]) = 0;
    sub_24F926F28();
    v34 = *(&v150 + 1);
    *v33 = v150;
    *(v33 + 1) = v34;
    v35 = &v8[v27[39]];
    v149[0] = 0;
    sub_24F926F28();
    v36 = *(&v150 + 1);
    *v35 = v150;
    *(v35 + 1) = v36;
    v37 = v27[40];
    *&v8[v37] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v38 = v27[41];
    *&v8[v38] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v39 = v27[42];
    *&v8[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v40 = &v8[v27[43]];
    v41 = sub_24F923398();
    *v40 = v41 & 1;
    *(v40 + 1) = v42;
    v40[16] = v43 & 1;
    *(v8 + 64) = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = 0;
    *(v8 + 9) = 0;
    *(v8 + 10) = 0;
    *(v8 + 8) = 0;
    *(v8 + 17) = v31;
    *(v8 + 18) = 0;
    *(v8 + 19) = 0;
    *(v8 + 20) = sub_24F16A490;
    *(v8 + 21) = v133;
    *(v8 + 22) = sub_24F16A494;
    *(v8 + 23) = v25;
    *(v8 + 24) = sub_24F16ADC0;
    *(v8 + 25) = v26;
    *(v8 + 26) = CGSizeMake;
    *(v8 + 27) = 0;
    v8[v27[35]] = 7;
    v8[v27[36]] = 0;
    MEMORY[0x28223BE20](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A868);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A870);
    v45 = sub_24E602068(&qword_27F23A878, &qword_27F23A850);
    v46 = sub_24E602068(&qword_27F23A880, &qword_27F23A870);
    *&v150 = v27;
    *(&v150 + 1) = v44;
    v151 = v45;
    v152 = v46;
    swift_getOpaqueTypeConformance2();
    v47 = v137;
    sub_24F923C18();
    v48 = v139;
    v49 = v145;
    (*(v139 + 2))(v143, v47, v145);
    swift_storeEnumTagMultiPayload();
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A28);
    v51 = sub_24E602068(&qword_27F23A838, &qword_27F23A830);
    v52 = sub_24E600AEC();
    v53 = sub_24E602068(&qword_27F228258, &qword_27F225A28);
    *&v150 = v146;
    *(&v150 + 1) = MEMORY[0x277D837D0];
    v151 = v50;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v51;
    v154 = v52;
    v155 = v53;
    v156 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848);
    sub_24F924E28();

    (*(v48 + 1))(v47, v49);
    return sub_24E601704(v8, &qword_27F23A850);
  }

  else
  {
    v130 = v158;
    v129 = v159;
    sub_24E612C80(&v157, v149);
    v128 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_24F93A400;
    v56 = (a2 + v10[16]);
    v138 = a2;
    v136 = v20;
    v58 = v56[1];
    *&v150 = *v56;
    v57 = v150;
    *(&v150 + 1) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
    v137 = v18;
    sub_24F926F38();
    v127 = v14;
    countAndFlagsBits = v147._countAndFlagsBits;
    swift_getKeyPath();
    *&v150 = countAndFlagsBits;
    sub_24F16C2C4(&unk_27F241D30, type metadata accessor for NicknameModel);
    sub_24F91FD88();

    v60 = *(countAndFlagsBits + 64);
    v126 = *(countAndFlagsBits + 56);

    v147._countAndFlagsBits = v57;
    v147._object = v58;
    sub_24F926F58();
    v61 = v150;
    v62 = v151;
    swift_getKeyPath();
    v147 = v61;
    v148 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE0);
    sub_24F927188();

    v123 = v150;
    v131 = v11;
    v63 = v151;
    v64 = v152;

    v65 = v132;
    sub_24F928A98();
    v66 = type metadata accessor for SetNicknameAction();
    *(v55 + 56) = v66;
    *(v55 + 64) = sub_24F16C2C4(&qword_27F216390, type metadata accessor for SetNicknameAction);
    v125 = v55;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 32));
    *boxed_opaque_existential_1 = v126;
    boxed_opaque_existential_1[1] = v60;
    *(boxed_opaque_existential_1 + 1) = v123;
    boxed_opaque_existential_1[4] = v63;
    boxed_opaque_existential_1[5] = v64;
    *(boxed_opaque_existential_1 + 48) = 0;
    (*(v133 + 32))(boxed_opaque_existential_1 + *(v66 + 28), v65, v134);
    sub_24E615E00(v149, v55 + 72);
    v124 = v10;
    v68 = v138;
    v69 = v138 + v10[15];
    v71 = *(v69 + 8);
    LOBYTE(v147._countAndFlagsBits) = *v69;
    v70 = v147._countAndFlagsBits;
    v147._object = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
    sub_24F926F58();
    v72 = v150;
    LOBYTE(v55) = v151;
    v147 = *(v68 + v10[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
    sub_24F926F58();
    v134 = v150;
    v73 = v151;
    *(v17 + 6) = type metadata accessor for ProgressPerformAction();
    *(v17 + 7) = sub_24F16C2C4(&qword_27F2162F0, type metadata accessor for ProgressPerformAction);
    v74 = __swift_allocate_boxed_opaque_existential_1(v17 + 3);
    sub_24F928A98();
    *v74 = v125;
    *(v74 + 1) = v72;
    *(v74 + 24) = v55;
    *(v74 + 2) = v134;
    v74[6] = v73;
    *(v17 + 15) = 0;
    *(v17 + 104) = 0u;
    *(v17 + 88) = 0u;
    LOBYTE(v150) = v70;
    *(&v150 + 1) = v71;
    sub_24F926F38();
    LODWORD(v134) = LOBYTE(v147._countAndFlagsBits);
    v75 = v138;
    v125 = *(v138 + v124[11]);
    v76 = v127;
    sub_24F16CB4C(v138, v127, type metadata accessor for ProfileCreationView);
    v77 = *(v139 + 80);
    v78 = (v77 + 20) & ~v77;
    v79 = swift_allocObject();
    v133 = v79;
    LODWORD(v71) = object;
    *(v79 + 16) = object;
    sub_24F16CA3C(v76, v79 + v78, type metadata accessor for ProfileCreationView);
    v126 = type metadata accessor for ProfileCreationView;
    sub_24F16CB4C(v75, v76, type metadata accessor for ProfileCreationView);
    v132 = swift_allocObject();
    v139 = type metadata accessor for ProfileCreationView;
    sub_24F16CA3C(v76, &v132[(v77 + 16) & ~v77], type metadata accessor for ProfileCreationView);
    v80 = v75;
    v81 = v135;
    sub_24F16CB4C(v80, v135, type metadata accessor for ProfileCreationView);
    v82 = swift_allocObject();
    *(v82 + 16) = v71;
    sub_24F16CA3C(v81, v82 + v78, type metadata accessor for ProfileCreationView);
    v83 = v146;
    v84 = *(v146 + 136);
    v85 = type metadata accessor for HeaderPresentation(0);
    (*(*(v85 - 8) + 56))(&v17[v84], 1, 1, v85);
    v86 = &v17[v83[37]];
    LOBYTE(v147._countAndFlagsBits) = 0;
    v87 = v125;

    sub_24F926F28();
    v88 = *(&v150 + 1);
    *v86 = v150;
    *(v86 + 1) = v88;
    v89 = &v17[v83[38]];
    LOBYTE(v147._countAndFlagsBits) = 0;
    sub_24F926F28();
    v90 = *(&v150 + 1);
    *v89 = v150;
    *(v89 + 1) = v90;
    v91 = &v17[v83[39]];
    v147._countAndFlagsBits = 0;
    sub_24F926F28();
    v92 = *(&v150 + 1);
    *v91 = v150;
    *(v91 + 1) = v92;
    v93 = v83[40];
    *&v17[v93] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v94 = v83[41];
    *&v17[v94] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v95 = v83[42];
    *&v17[v95] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v96 = &v17[v83[43]];
    *v96 = sub_24F923398() & 1;
    *(v96 + 1) = v97;
    v96[16] = v98 & 1;
    v99 = v129;
    *v17 = v130;
    *(v17 + 1) = v99;
    *(v17 + 2) = v128;
    v17[128] = 0;
    *(v17 + 9) = 0;
    *(v17 + 10) = 0;
    *(v17 + 8) = 0;
    v17[129] = v134;
    *(v17 + 17) = v87;
    *(v17 + 18) = 0;
    *(v17 + 19) = 0;
    *(v17 + 20) = sub_24F16D3BC;
    *(v17 + 21) = v133;
    *(v17 + 22) = sub_24F16AEE0;
    *(v17 + 23) = v132;
    *(v17 + 24) = sub_24F16AF50;
    *(v17 + 25) = v82;
    *(v17 + 26) = CGSizeMake;
    *(v17 + 27) = 0;
    v17[v83[35]] = 7;
    v17[v83[36]] = 0;
    v100._object = 0x800000024FA6DD30;
    v100._countAndFlagsBits = 0xD000000000000018;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v102 = localizedString(_:comment:)(v100, v101);
    object = v102._object;
    v147 = v102;
    v103 = v138;
    v104 = v126;
    sub_24F16CB4C(v138, v76, v126);
    sub_24F92B7F8();
    v105 = sub_24F92B7E8();
    v106 = (v77 + 32) & ~v77;
    v107 = swift_allocObject();
    v108 = MEMORY[0x277D85700];
    *(v107 + 16) = v105;
    *(v107 + 24) = v108;
    v109 = v107 + v106;
    v110 = v76;
    v111 = v76;
    v112 = v139;
    sub_24F16CA3C(v111, v109, v139);
    sub_24F16CB4C(v103, v110, v104);
    v113 = sub_24F92B7E8();
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = MEMORY[0x277D85700];
    sub_24F16CA3C(v110, v114 + v106, v112);
    v115 = sub_24F9271A8();
    v139 = &v123;
    MEMORY[0x28223BE20](v115);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28);
    v116 = sub_24E602068(&qword_27F23A838, &qword_27F23A830);
    v117 = sub_24E600AEC();
    v122 = sub_24E602068(&qword_27F228258, &qword_27F225A28);
    v118 = v146;
    v119 = v136;
    sub_24F926908();

    sub_24E601704(v17, &qword_27F23A830);
    v120 = v137;
    v121 = v142;
    v137[2](v143, v119, v142);
    swift_storeEnumTagMultiPayload();
    *&v150 = v118;
    *(&v150 + 1) = MEMORY[0x277D837D0];
    v151 = v138;
    v152 = MEMORY[0x277CE0BD8];
    v153 = v116;
    v154 = v117;
    v155 = v122;
    v156 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848);
    sub_24F924E28();
    v120[1](v119, v121);
    return __swift_destroy_boxed_opaque_existential_1(v149);
  }
}

id sub_24F165E50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[3];
  v17 = a1[2];
  v18 = *a1;
  v5 = a1[9];
  *&v26[0] = a1[8];
  *(&v26[0] + 1) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890);
  sub_24F926F38();
  v6 = *v19;
  v7 = objc_opt_self();
  result = [v7 shared];
  if (result)
  {
    v9 = result;
    v10 = [result isAccountModificationRestricted];

    v11 = 1;
    if (v10)
    {
LABEL_7:
      sub_24F16B9F8(v25);
      v23 = v25[3];
      v24 = v25[4];
      v21 = v25[1];
      v22 = v25[2];
      v20 = v25[0];
      sub_24EC8C9B0(v25, v26);
      *&v19[23] = v21;
      *&v19[39] = v22;
      *&v19[55] = v23;
      *&v19[71] = v24;
      *&v19[7] = v20;
      sub_24F9275F8();
      result = sub_24F9242E8();
      *a2 = v18;
      *(a2 + 8) = v3;
      *(a2 + 16) = v17;
      *(a2 + 24) = v4;
      *(a2 + 32) = v6;
      *(a2 + 40) = v11;
      *(a2 + 73) = *&v19[32];
      *(a2 + 89) = *&v19[48];
      *(a2 + 105) = *&v19[64];
      *(a2 + 120) = *(&v24 + 1);
      *(a2 + 41) = *v19;
      *(a2 + 57) = *&v19[16];
      v14 = v26[5];
      *(a2 + 192) = v26[4];
      *(a2 + 208) = v14;
      *(a2 + 224) = v26[6];
      v15 = v26[1];
      *(a2 + 128) = v26[0];
      *(a2 + 144) = v15;
      v16 = v26[3];
      *(a2 + 160) = v26[2];
      *(a2 + 176) = v16;
      return result;
    }

    result = [v7 shared];
    if (result)
    {
      v12 = result;
      v13 = [result isProfileModificationRestricted];

      if (v13)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_24F166070@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v6 = a2[7];
  v17 = a2[6];
  v18 = a2[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890);
  sub_24F926F38();
  v21 = *(a2 + *(type metadata accessor for ProfileCreationView(0) + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  v7 = objc_opt_self();
  result = [v7 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = [result isAccountModificationRestricted];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    result = [v7 shared];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v12 = result;
    v11 = [result isProfileModificationRestricted];
  }

  result = [v7 shared];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  v14 = [result isAccountModificationRestricted];

  v15 = 1;
  if (v14)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898);
    sub_24F926F58();
    sub_24F9275F8();
    result = sub_24F9242E8();
    *(a3 + 136) = v24;
    *(a3 + 152) = v25;
    *(a3 + 168) = v26;
    *(a3 + 184) = v27;
    *(a3 + 88) = v21;
    *(a3 + 104) = v22;
    *a3 = a1;
    *(a3 + 8) = v18;
    *(a3 + 16) = v5;
    *(a3 + 24) = v17;
    *(a3 + 32) = v6;
    *(a3 + 40) = v20;
    *(a3 + 48) = v20;
    *(a3 + 56) = v11;
    *(a3 + 57) = v15;
    *(a3 + 64) = v21;
    *(a3 + 80) = v22;
    *(a3 + 120) = v23;
    return result;
  }

  result = [v7 shared];
  if (result)
  {
    v16 = result;
    v15 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_24F16632C(uint64_t a1@<X2>, char *a2@<X8>)
{
  v11 = *(a1 + *(type metadata accessor for ProfileCreationView(0) + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
  sub_24F926F38();
  if (v13 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600), swift_dynamicCast()) && v12 == 1 && v11 >= 6)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8E0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_24F16B9A4();
      swift_allocError();
      *v9 = v11;
      v3 = 1;
      *(v9 + 16) = 1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_24E5DD000, v5, v6, "Nickname change failed due to a server error. An alert will be presented and the user will be allowed to continue. Error: %@", v7, 0xCu);
      sub_24E601704(v8, &qword_27F227B20);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    else
    {

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

uint64_t sub_24F166540()
{
  type metadata accessor for ProfileCreationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCE8);
  return sub_24F926F48();
}

uint64_t sub_24F1665A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  v8._object = 0x800000024FA580D0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = localizedString(_:comment:)(v8, v9);
  v11 = sub_24F9232F8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_24E615E00(a1, v14);
  sub_24E60169C(v7, v4, &unk_27F254FA0);
  sub_24E60169C(v14, v13, qword_27F21B590);
  *(swift_allocObject() + 16) = v10;
  sub_24F921788();
  sub_24E601704(v14, qword_27F21B590);
  return sub_24E601704(v7, &unk_27F254FA0);
}

uint64_t sub_24F166788@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000024FA6DD50;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

id sub_24F166800@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  sub_24E60169C(a1, &v48 - v8, &qword_27F220F50);
  v10 = a3[1];
  v51 = *a3;
  v11 = a3[3];
  v52 = a3[2];
  v12 = a3[5];
  v54 = a3[4];
  v13 = a3[7];
  v56 = a3[6];
  v14 = a3[9];
  *&v63[0] = a3[8];
  *(&v63[0] + 1) = v14;

  v53 = v11;

  v55 = v12;

  v57 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890);
  sub_24F926F38();
  v50 = v59[0];
  v15 = type metadata accessor for ProfileCreationView(0);
  v16 = (a3 + *(v15 + 64));
  v18 = *v16;
  v17 = v16[1];
  *&v63[0] = v18;
  *(&v63[0] + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  v49 = v59[0];
  v19 = objc_opt_self();
  result = [v19 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v22 = [result isAccountModificationRestricted];

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    result = [v19 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v24 = result;
    v23 = [result isProfileModificationRestricted];
  }

  result = [v19 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = result;
  v26 = [result isAccountModificationRestricted];

  if (v26)
  {
    v27 = 1;
LABEL_11:
    sub_24F16B9F8(v63);
    v29 = a3 + *(v15 + 56);
    v30 = *v29;
    v31 = *(v29 + 1);
    v61 = v30;
    v62 = v31;
    sub_24EC8C9B0(v63, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898);
    sub_24F926F58();
    v32 = v59[0];
    v33 = v59[1];
    v34 = v60;
    sub_24E6009C8(v9, a4, &qword_27F220F50);
    v35 = type metadata accessor for SingleColumnView(0);
    *(a4 + v35[5]) = v58;
    v36 = (a4 + v35[6]);
    *v36 = v51;
    v36[1] = v10;
    v37 = (a4 + v35[7]);
    v38 = v53;
    *v37 = v52;
    v37[1] = v38;
    v39 = (a4 + v35[8]);
    v40 = v55;
    *v39 = v54;
    v39[1] = v40;
    v41 = (a4 + v35[9]);
    v42 = v57;
    *v41 = v56;
    v41[1] = v42;
    *(a4 + v35[10]) = v50;
    *(a4 + v35[11]) = v49;
    *(a4 + v35[12]) = v23;
    *(a4 + v35[13]) = v27;
    v43 = (a4 + v35[14]);
    v44 = v63[3];
    v43[2] = v63[2];
    v43[3] = v44;
    v43[4] = v63[4];
    v45 = v63[1];
    *v43 = v63[0];
    v43[1] = v45;
    v46 = a4 + v35[15];
    *v46 = v32;
    *(v46 + 8) = v33;
    *(v46 + 16) = v34;
    v47 = v35[16];
    *(a4 + v47) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    return swift_storeEnumTagMultiPayload();
  }

  result = [v19 shared];
  if (result)
  {
    v28 = result;
    v27 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_24F166C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v19 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[9];
  *v21 = a1[8];
  *&v21[8] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890);
  sub_24F926F38();
  v7 = *&v22[0];
  v8 = objc_opt_self();
  result = [v8 shared];
  if (result)
  {
    v10 = result;
    v11 = [result isAccountModificationRestricted];

    if (v11)
    {
      v12 = 1;
LABEL_8:
      sub_24F16B9F8(v22);
      *&v21[7] = v22[0];
      *&v21[23] = v22[1];
      *&v21[71] = v22[4];
      *&v21[55] = v22[3];
      *&v21[39] = v22[2];
      *a2 = v19;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      *(a2 + 24) = v4;
      *(a2 + 32) = v7;
      *(a2 + 40) = v12;
      v15 = *v21;
      *(a2 + 57) = *&v21[16];
      *(a2 + 41) = v15;
      v16 = *&v21[32];
      v17 = *&v21[48];
      v18 = *&v21[64];
      *(a2 + 120) = *&v21[79];
      *(a2 + 105) = v18;
      *(a2 + 89) = v17;
      *(a2 + 73) = v16;
      return sub_24EC8C9B0(v22, v20);
    }

    result = [v8 shared];
    if (result)
    {
      v13 = result;
      v14 = [result isProfileModificationRestricted];

      if (v14)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_24F166DDC@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[5];
  v6 = a2[7];
  v19 = a2[6];
  v20 = a2[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A890);
  sub_24F926F38();
  v7 = (a2 + *(type metadata accessor for ProfileCreationView(0) + 64));
  v22 = *v7;
  v23 = v7[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8);
  sub_24F926F38();
  v8 = objc_opt_self();
  result = [v8 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  v11 = [result isAccountModificationRestricted];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    result = [v8 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v13 = result;
    v12 = [result isProfileModificationRestricted];
  }

  result = [v8 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result isAccountModificationRestricted];

  if (v15)
  {
    v16 = 1;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A898);
    result = sub_24F926F58();
    *a3 = a1;
    *(a3 + 8) = v20;
    *(a3 + 16) = v5;
    *(a3 + 24) = v19;
    *(a3 + 32) = v6;
    *(a3 + 40) = v25;
    *(a3 + 48) = v18;
    *(a3 + 56) = v12;
    *(a3 + 57) = v16;
    *(a3 + 64) = v22;
    *(a3 + 72) = v23;
    *(a3 + 80) = v24;
    return result;
  }

  result = [v8 shared];
  if (result)
  {
    v17 = result;
    v16 = [result isProfilePrivacyModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24F167028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A870);
  sub_24E602068(&qword_27F23A878, &qword_27F23A850);
  sub_24E602068(&qword_27F23A880, &qword_27F23A870);
  return sub_24F926A68();
}

uint64_t sub_24F167134(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  swift_getOpaqueTypeConformance2();
  return sub_24F926F88();
}

uint64_t sub_24F16721C()
{
  if (qword_27F2116A8 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v0 = sub_24F925E18();
  v2 = v1;
  v4 = v3 & 1;
  sub_24F9268B8();
  sub_24E600B40(v0, v2, v4);
}

uint64_t sub_24F16730C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_24F92B7F8();
  v2[20] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_24F1673A4, v4, v3);
}

uint64_t sub_24F1673A4()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[23] = v2;

  v3 = sub_24F92B098();
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24F16752C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F1676B4;
  v0[13] = &block_descriptor_122;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F16752C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_24F167634, v2, v1);
}

uint64_t sub_24F167634()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 200);
  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F1676B4(uint64_t a1, int a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24F167718(uint64_t a1)
{
  type metadata accessor for ProfileCreationView(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24F1642B8(a1);
}

uint64_t objectdestroyTm_54()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v37 = *(v7 - 8);
  v38 = v7;
  v36 = *(v37 + 8);
  v36(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v8 + v12, 1, v38))
      {
        (v36)(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v13 + v14, 1, v38))
      {
        (v36)(v13 + v14, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game();
    (v36)(v15 + v17[18], v38);
    v18 = v17[19];
    if (!(*(v37 + 48))(v15 + v18, 1, v38))
    {
      (v36)(v15 + v18, v38);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }
  }

  v22 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    (v36)(v22 + v24[18], v38);
    v25 = v24[19];
    if (!(*(v37 + 48))(v22 + v25, 1, v38))
    {
      (v36)(v22 + v25, v38);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  }

  v29 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24F925218();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v3 + v29, 1, v30))
    {
      (*(v31 + 8))(v3 + v29, v30);
    }
  }

  else
  {
  }

  v32 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_24F925218();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v32, 1, v33))
    {
      (*(v34 + 8))(v3 + v32, v33);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F1680B0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F164874(a1, v6, a2);
}

void *sub_24F168130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SingleColumnView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v14 = sub_24F924C88();
  v18 = 0;
  sub_24F168370(v1, v16);
  memcpy(v19, v16, 0x1B1uLL);
  memcpy(v20, v16, 0x1B1uLL);
  sub_24E60169C(v19, &v15, &qword_27F23A900);
  sub_24E601704(v20, &qword_27F23A900);
  memcpy(&v17[7], v19, 0x1B1uLL);
  v7 = v18;
  v8 = [objc_opt_self() defaultCenter];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A908);
  sub_24F92C0F8();

  sub_24F16CB4C(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleColumnView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_24F16CA3C(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SingleColumnView);
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  result = memcpy((a1 + 17), v17, 0x1B8uLL);
  v13 = (a1 + *(v9 + 56));
  *v13 = sub_24F16CDC4;
  v13[1] = v11;
  return result;
}

uint64_t sub_24F168370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SingleColumnView(0);
  v4 = (a1 + v3[6]);
  v5 = v4[1];
  v48 = *v4;
  v6 = (a1 + v3[7]);
  v7 = *(a1 + v3[10]);
  v8 = v6[1];
  *&v47 = *v6;
  v46 = *(a1 + v3[12]);
  v9 = (a1 + v3[14]);
  v10 = v9[3];
  v108 = v9[4];
  v11 = v9[1];
  v105[0] = *v9;
  v105[1] = v11;
  v106 = v9[2];
  v107 = v10;
  *&v109[7] = v105[0];
  *&v109[71] = v108;
  *&v109[55] = v10;
  *&v109[39] = v106;
  *&v109[23] = v11;
  v44 = v7;
  swift_retain_n();
  v12 = v5;

  *(&v47 + 1) = v8;

  sub_24EC8C9B0(v105, &v79);
  v45 = sub_24F925818();
  sub_24F923318();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v43 = v19;
  v110 = 0;
  LODWORD(v8) = *(a1 + v3[5]);
  v20 = v3[9];
  v21 = (a1 + v3[8]);
  v22 = v21[1];
  v41 = *v21;
  v23 = *(a1 + v3[11]);
  v24 = *(a1 + v20 + 8);
  v39 = *(a1 + v20);
  v40 = *(a1 + v3[13]);
  v25 = (a1 + v3[15]);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v25) = *(v25 + 16);
  v79 = v26;
  v80 = v27;
  LOBYTE(v81) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
  sub_24F927198();
  v28 = v70;
  v29 = v71;
  LOBYTE(v5) = sub_24F925818();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v103 = 0;
  sub_24F927618();
  sub_24F9242E8();
  *&v104[55] = v114;
  *&v104[71] = v115;
  *&v104[87] = v116;
  *&v104[103] = v117;
  *&v104[7] = v111;
  *&v104[23] = v112;
  *&v104[39] = v113;
  *&v66[0] = v48;
  *(&v66[0] + 1) = v12;
  v66[1] = v47;
  *v67 = v44;
  v67[8] = v46;
  *&v67[25] = *&v109[16];
  *&v67[9] = *v109;
  *&v67[88] = *&v109[79];
  *&v67[73] = *&v109[64];
  *&v67[57] = *&v109[48];
  *&v67[41] = *&v109[32];
  LOBYTE(v68) = v45;
  *(&v68 + 1) = v14;
  *v69 = v16;
  *&v69[8] = v18;
  *&v69[16] = v43;
  v69[24] = 0;
  __src[0] = v66[0];
  __src[1] = v47;
  __src[4] = *&v67[32];
  __src[5] = *&v67[48];
  __src[2] = *v67;
  __src[3] = *&v67[16];
  *(&__src[9] + 9) = *&v69[9];
  __src[8] = v68;
  __src[9] = *v69;
  __src[6] = *&v67[64];
  __src[7] = *&v67[80];
  LODWORD(v70) = v8;
  *(&v70 + 1) = v41;
  *&v71 = v22;
  *(&v71 + 1) = v39;
  *&v72 = v24;
  *(&v72 + 1) = v44;
  *&v73 = v23;
  BYTE8(v73) = v46;
  BYTE9(v73) = v40;
  v74 = v28;
  LOBYTE(v75) = v29;
  BYTE8(v75) = v5;
  *&v76 = v31;
  *(&v76 + 1) = v33;
  *&v77 = v35;
  *(&v77 + 1) = v37;
  v78[0] = 0;
  *&v78[49] = *&v104[48];
  *&v78[33] = *&v104[32];
  *&v78[17] = *&v104[16];
  *&v78[1] = *v104;
  *&v78[112] = *(&v117 + 1);
  *&v78[97] = *&v104[96];
  *&v78[81] = *&v104[80];
  *&v78[65] = *&v104[64];
  __src[13] = v72;
  __src[14] = v73;
  __src[11] = v70;
  __src[12] = v71;
  __src[17] = v76;
  __src[18] = v77;
  __src[15] = v28;
  __src[16] = v75;
  __src[21] = *&v78[32];
  __src[22] = *&v78[48];
  __src[19] = *v78;
  __src[20] = *&v78[16];
  *&__src[26] = *&v78[112];
  __src[24] = *&v78[80];
  __src[25] = *&v78[96];
  __src[23] = *&v78[64];
  v64 = 0;
  memcpy(a2, __src, 0x1A8uLL);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  LODWORD(v79) = v8;
  v80 = v41;
  v81 = v22;
  v82 = v39;
  v83 = v24;
  v84 = v44;
  v85 = v23;
  v86 = v46;
  v87 = v40;
  v88 = v28;
  v89 = v29;
  v90 = v5;
  v91 = v31;
  v92 = v33;
  v93 = v35;
  v94 = v37;
  v95 = 0;
  v100 = *&v104[64];
  v101 = *&v104[80];
  *v102 = *&v104[96];
  *&v102[15] = *&v104[111];
  v96 = *v104;
  v97 = *&v104[16];
  v98 = *&v104[32];
  v99 = *&v104[48];
  sub_24E60169C(v66, v49, &qword_27F23A910);
  sub_24E60169C(&v70, v49, &qword_27F23A918);
  sub_24E601704(&v79, &qword_27F23A918);
  v55 = *&v109[32];
  v56 = *&v109[48];
  *v57 = *&v109[64];
  v53 = *v109;
  v49[0] = v48;
  v49[1] = v12;
  v50 = v47;
  v51 = v44;
  v52 = v46;
  *&v57[15] = *&v109[79];
  v54 = *&v109[16];
  v58 = v45;
  v59 = v14;
  v60 = v16;
  v61 = v18;
  v62 = v43;
  v63 = 0;
  return sub_24E601704(v49, &qword_27F23A910);
}

uint64_t sub_24F16899C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleColumnView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24F16CB4C(a2, v6, type metadata accessor for SingleColumnView);
  sub_24F92B7F8();
  v11 = sub_24F92B7E8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_24F16CA3C(v6, v13 + v12, type metadata accessor for SingleColumnView);
  sub_24EA9A1C4(0, 0, v9, &unk_24F9CEF38, v13);
}

uint64_t sub_24F168B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_24F92B7F8();
  v4[4] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F168C14, v6, v5);
}

uint64_t sub_24F168C14()
{
  v1 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v1;
  sub_24F9276F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00);
  sub_24F923B18();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F168CF0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  sub_24E60169C(a1, v11 - v5, &qword_27F220F50);
  v7 = sub_24F924098();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  if (v9 == 1)
  {
    result = sub_24E601704(v6, &qword_27F220F50);
  }

  else
  {
    v11[0] = 0xD000000000000020;
    v11[1] = 0x800000024FA589F0;
    sub_24F924088();
    result = (*(v8 + 8))(v6, v7);
  }

  *a2 = v9 == 1;
  return result;
}

uint64_t sub_24F168E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v66);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD88) - 8;
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v70 = sub_24F924C98();
  v15 = *(a1 + 4);
  v16 = *(a1 + 6);
  v113 = *(a1 + 5);
  v114 = v16;
  v17 = *(a1 + 6);
  v115 = *(a1 + 7);
  v122 = v16;
  v123 = v115;
  v18 = *(a1 + 4);
  v112[0] = *(a1 + 3);
  v112[1] = v18;
  v111 = 0;
  v19 = *a1;
  v20 = a1[1];
  v67 = v113;
  v68 = v19;
  v74 = v20;
  v21 = a1[2];
  v22 = a1[3];
  v119 = v112[0];
  v120 = v18;
  v121 = v113;
  *&v116[0] = v21;
  *(&v116[0] + 1) = v22;
  v116[3] = v113;
  v116[4] = v17;
  v116[1] = v112[0];
  v116[2] = v15;
  v117 = *(a1 + 7);
  v86 = v17;
  v87 = v117;
  v84 = v15;
  v85 = v113;
  v82 = v116[0];
  v83 = v112[0];
  v118[0] = v21;
  v118[1] = v22;

  sub_24EC8C9B0(v112, &v92);

  sub_24F16CAA4(v116, &v92);
  sub_24F16CADC(v118);

  v73 = v111;
  sub_24F927628();
  sub_24F9242E8();
  v23 = *(&v113 + 1);
  v64 = a1[4];
  v65 = *(a1 + 40);
  v24 = type metadata accessor for AvatarSection(0);
  v25 = v24[7];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60);
  (*(*(v26 - 8) + 56))(&v14[v25], 1, 1, v26);
  v27 = &v14[v24[8]];
  LOBYTE(v89) = 0;

  sub_24F926F28();
  v28 = v93;
  *v27 = v92;
  *(v27 + 1) = v28;
  v29 = sub_24F9289E8();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_24E60169C(v10, v7, &qword_27F213FB0);
  sub_24F926F28();
  sub_24E601704(v10, &qword_27F213FB0);
  v30 = &v14[v24[10]];
  *v30 = swift_getKeyPath();
  v30[40] = 0;
  v31 = v24[11];
  *&v14[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  v32 = &v14[v24[12]];
  LOBYTE(v89) = 0;
  sub_24F926F28();
  v33 = v93;
  *v32 = v92;
  *(v32 + 1) = v33;
  *v14 = v23;
  v34 = v64;
  *(v14 + 1) = v64;
  v35 = sub_24F92B858();
  v36 = v69;
  (*(*(v35 - 8) + 56))(v69, 1, 1, v35);
  sub_24F92B7F8();

  v37 = sub_24F92B7E8();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v34;
  sub_24EA998B8(0, 0, v36, &unk_24F9923E0, v38);

  v14[16] = v65;
  LOBYTE(v37) = sub_24F925818();
  sub_24F923318();
  v40 = v72;
  v41 = &v14[*(v71 + 44)];
  *v41 = v37;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_24E60169C(v14, v40, &qword_27F22CD88);
  v46 = v70;
  v47 = v67;
  v48 = v68;
  *&v89 = v70;
  *(&v89 + 1) = v67;
  LOBYTE(v90) = v73;
  *(&v90 + 1) = *v88;
  DWORD1(v90) = *&v88[3];
  *(&v90 + 1) = v68;
  *v91 = v74;
  *&v91[40] = v84;
  *&v91[56] = v85;
  *&v91[72] = v86;
  *&v91[88] = v87;
  *&v91[8] = v82;
  *&v91[24] = v83;
  *&v91[136] = v77;
  *&v91[120] = v76;
  *&v91[104] = v75;
  *&v91[200] = v81;
  *&v91[184] = v80;
  *&v91[168] = v79;
  *&v91[152] = v78;
  v49 = v89;
  v50 = v90;
  v51 = *&v91[16];
  *(a2 + 32) = *v91;
  *(a2 + 48) = v51;
  *a2 = v49;
  *(a2 + 16) = v50;
  v52 = *&v91[32];
  v53 = *&v91[48];
  v54 = *&v91[80];
  *(a2 + 96) = *&v91[64];
  *(a2 + 112) = v54;
  *(a2 + 64) = v52;
  *(a2 + 80) = v53;
  v55 = *&v91[96];
  v56 = *&v91[112];
  v57 = *&v91[144];
  *(a2 + 160) = *&v91[128];
  *(a2 + 176) = v57;
  *(a2 + 128) = v55;
  *(a2 + 144) = v56;
  v58 = *&v91[160];
  v59 = *&v91[176];
  v60 = *&v91[192];
  *(a2 + 240) = *&v91[208];
  *(a2 + 208) = v59;
  *(a2 + 224) = v60;
  *(a2 + 192) = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8F0);
  sub_24E60169C(v40, a2 + *(v61 + 48), &qword_27F22CD88);
  sub_24E60169C(&v89, &v92, &qword_27F23A8F8);
  sub_24E601704(v14, &qword_27F22CD88);
  sub_24E601704(v40, &qword_27F22CD88);
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v98 = v82;
  v99 = v83;
  v107 = v78;
  v108 = v79;
  v109 = v80;
  v110 = v81;
  v104 = v75;
  v105 = v76;
  v92 = v46;
  v93 = v47;
  v94 = v73;
  *v95 = *v88;
  *&v95[3] = *&v88[3];
  v96 = v48;
  v97 = v74;
  v106 = v77;
  return sub_24E601704(&v92, &qword_27F23A8F8);
}

uint64_t sub_24F1695DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8E8);
  return sub_24F168E80(v9, a1 + *(v7 + 44));
}

uint64_t sub_24F169654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = type metadata accessor for ActivitySharingSection();
  MEMORY[0x28223BE20](v55);
  v4 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D0);
  MEMORY[0x28223BE20](v56);
  v60 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v57 = &v50[-v7];
  MEMORY[0x28223BE20](v8);
  v59 = &v50[-v9];
  v10 = type metadata accessor for NicknameSection();
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD10) - 8;
  MEMORY[0x28223BE20](v53);
  v58 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v52 = &v50[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-v18];
  v51 = *(a1 + 56);
  *v13 = swift_getKeyPath();
  v13[40] = 0;
  v20 = v11[7];
  *&v13[v20] = swift_getKeyPath();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NicknameModel();
  sub_24F16C2C4(&unk_27F241D30, type metadata accessor for NicknameModel);

  v21 = v19;
  sub_24F927378();
  v13[v11[9]] = v51;
  v22 = &v13[v11[10]];
  LOBYTE(v64) = 0;
  sub_24F926F28();
  v23 = *(&v71 + 1);
  *v22 = v71;
  *(v22 + 1) = v23;
  sub_24F927628();
  sub_24F9242E8();
  v24 = v13;
  v25 = v52;
  sub_24F16CA3C(v24, v52, type metadata accessor for NicknameSection);
  v26 = &v25[*(v53 + 44)];
  v27 = v69;
  v26[4] = v68;
  v26[5] = v27;
  v26[6] = v70;
  v28 = v65;
  *v26 = v64;
  v26[1] = v28;
  v29 = v67;
  v26[2] = v66;
  v26[3] = v29;
  sub_24E6009C8(v25, v19, &qword_27F22CD10);
  LODWORD(v20) = *a1;
  v30 = *(a1 + 8);
  v78 = *(a1 + 24);
  v79 = v30;
  LOBYTE(v11) = *(a1 + 57);
  v71 = *(a1 + 64);
  LOBYTE(v72) = *(a1 + 80);
  sub_24E614DB0(&v79, v62);
  sub_24E614DB0(&v78, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8);
  sub_24F927198();
  v31 = v62[0];
  v32 = v62[1];
  v33 = v63;
  *v4 = v20;
  v34 = v78;
  *(v4 + 8) = v79;
  *(v4 + 24) = v34;
  v4[40] = v11;
  if (qword_27F211138 != -1)
  {
    swift_once();
  }

  v35 = qword_27F39E3D0;
  v36 = unk_27F39E3D8;
  *(v4 + 3) = xmmword_27F39E3C0;
  *(v4 + 8) = v35;
  *(v4 + 9) = v36;
  *(v4 + 10) = v31;
  *(v4 + 11) = v32;
  v4[96] = v33;
  LOBYTE(v62[0]) = 0;

  sub_24F926F28();
  v37 = *(&v71 + 1);
  v4[104] = v71;
  *(v4 + 14) = v37;
  *(v4 + 15) = swift_getKeyPath();
  v4[160] = 0;
  v38 = *(v55 + 48);
  *&v4[v38] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_24F927628();
  sub_24F9242E8();
  v39 = v57;
  sub_24F16CA3C(v4, v57, type metadata accessor for ActivitySharingSection);
  v40 = &v39[*(v56 + 36)];
  v41 = v76;
  v40[4] = v75;
  v40[5] = v41;
  v40[6] = v77;
  v42 = v72;
  *v40 = v71;
  v40[1] = v42;
  v43 = v74;
  v40[2] = v73;
  v40[3] = v43;
  v44 = v59;
  sub_24E6009C8(v39, v59, &qword_27F23A8D0);
  v45 = v58;
  sub_24E60169C(v21, v58, &qword_27F22CD10);
  v46 = v60;
  sub_24E60169C(v44, v60, &qword_27F23A8D0);
  v47 = v61;
  sub_24E60169C(v45, v61, &qword_27F22CD10);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8E0);
  sub_24E60169C(v46, v47 + *(v48 + 48), &qword_27F23A8D0);
  sub_24E601704(v44, &qword_27F23A8D0);
  sub_24E601704(v21, &qword_27F22CD10);
  sub_24E601704(v46, &qword_27F23A8D0);
  return sub_24E601704(v45, &qword_27F22CD10);
}

uint64_t sub_24F169CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8C8);
  return sub_24F169654(v7, a1 + *(v5 + 44));
}

uint64_t sub_24F169D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = sub_24F929888();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925988();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v10, v12, v14 & 1);

  *&v34 = v15;
  *(&v34 + 1) = v17;
  v19 &= 1u;
  LOBYTE(v35) = v19;
  *(&v35 + 1) = v21;
  v22 = MEMORY[0x277CE0BD8];
  v23 = MEMORY[0x277CE0BC8];
  sub_24F9268B8();
  sub_24E600B40(v15, v17, v19);

  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v24 = v27;
  sub_24F9297A8();
  sub_24E601704(v33, &qword_27F2129B0);
  sub_24E601704(&v34, &qword_27F2129B0);
  *&v34 = v22;
  *(&v34 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  sub_24F925EE8();
  (*(v30 + 8))(v24, v32);
  return (*(v29 + 8))(v9, v25);
}

uint64_t sub_24F16A068@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_24F929888();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[1];
  v28 = *v1;
  v29 = v5;
  sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  sub_24E600B40(v6, v8, v10 & 1);

  LODWORD(v28) = sub_24F9251C8();
  v16 = sub_24F925C58();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_24E600B40(v11, v13, v15 & 1);

  v28 = v16;
  v29 = v18;
  v20 &= 1u;
  v30 = v20;
  v31 = v22;
  v32 = 256;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  sub_24F9297A8();
  sub_24E601704(v26, &qword_27F2129B0);
  sub_24E601704(v27, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A920);
  sub_24F16D158();
  sub_24F925EE8();
  (*(v2 + 8))(v4, v25);
  sub_24E600B40(v16, v18, v20);
}

unint64_t sub_24F16A2DC()
{
  result = qword_27F23A828;
  if (!qword_27F23A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A28);
    sub_24E602068(&qword_27F23A838, &qword_27F23A830);
    sub_24E600AEC();
    sub_24E602068(&qword_27F228258, &qword_27F225A28);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F23A840, &qword_27F23A848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A828);
  }

  return result;
}

id sub_24F16A494@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F166C38(v4, a1);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 20) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v37 = *(v7 - 8);
  v38 = v7;
  v36 = *(v37 + 8);
  v36(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v8 + v12, 1, v38))
      {
        (v36)(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v37 + 48))(v13 + v14, 1, v38))
      {
        (v36)(v13 + v14, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game();
    (v36)(v15 + v17[18], v38);
    v18 = v17[19];
    if (!(*(v37 + 48))(v15 + v18, 1, v38))
    {
      (v36)(v15 + v18, v38);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }
  }

  v22 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    (v36)(v22 + v24[18], v38);
    v25 = v24[19];
    if (!(*(v37 + 48))(v22 + v25, 1, v38))
    {
      (v36)(v22 + v25, v38);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  }

  v29 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24F925218();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v3 + v29, 1, v30))
    {
      (*(v31 + 8))(v3 + v29, v30);
    }
  }

  else
  {
  }

  v32 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = sub_24F925218();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v32, 1, v33))
    {
      (*(v34 + 8))(v3 + v32, v33);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_24F16ADC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 20) & ~*(v3 + 80)));

  return sub_24F166DDC(v4, v5, a1);
}

id sub_24F16AEE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F165E50(v4, a1);
}

id sub_24F16AF50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 20) & ~*(v3 + 80)));

  return sub_24F166070(v4, v5, a1);
}

void sub_24F16AFC8(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ProfileCreationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24F16632C(v4, a1);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for ProfileCreationView(0);
  v2 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);

  v4 = v3 + v1[9];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v40 = *(v7 - 8);
  v39 = *(v40 + 8);
  v39(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v38 = v7;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v40 + 48))(v8 + v12, 1, v38))
      {
        v39(v8 + v12, v38);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v7 = v38;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v40 + 48))(v13 + v15, 1, v38))
      {
        v39(v13 + v15, v38);
      }
    }
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {

    v18 = type metadata accessor for Game();
    v39(v16 + v18[18], v7);
    v19 = v18[19];
    if (!(*(v40 + 48))(v16 + v19, 1, v7))
    {
      v39(v16 + v19, v7);
    }

    v20 = v7;

    v21 = v18[21];
    v22 = sub_24F920818();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v16 + v21, 1, v22))
    {
      (*(v23 + 8))(v16 + v21, v22);
    }

    v7 = v20;
  }

  v24 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v24, 1, ChallengeInfo))
  {

    v26 = type metadata accessor for Game();
    v39(v24 + v26[18], v7);
    v27 = v26[19];
    if (!(*(v40 + 48))(v24 + v27, 1, v7))
    {
      v39(v24 + v27, v7);
    }

    v28 = v26[21];
    v29 = sub_24F920818();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v24 + v28, 1, v29))
    {
      (*(v30 + 8))(v24 + v28, v29);
    }
  }

  if (*(v3 + v1[10] + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  }

  v31 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_24F925218();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v3 + v31, 1, v32))
    {
      (*(v33 + 8))(v3 + v31, v32);
    }
  }

  else
  {
  }

  v34 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_24F925218();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v3 + v34, 1, v35))
    {
      (*(v36 + 8))(v3 + v34, v35);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F16B8F0()
{
  type metadata accessor for ProfileCreationView(0);

  return sub_24F166540();
}

uint64_t sub_24F16B96C()
{

  return swift_deallocObject();
}

unint64_t sub_24F16B9A4()
{
  result = qword_27F23A888;
  if (!qword_27F23A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A888);
  }

  return result;
}

__n128 sub_24F16B9F8@<Q0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v62 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v60 = &v49[-v13];
  MEMORY[0x28223BE20](v14);
  v61 = &v49[-v15];
  MEMORY[0x28223BE20](v16);
  v65 = &v49[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v49[-v22];
  v58 = type metadata accessor for ProfileCreationView(0);
  v24 = v1;
  sub_24F769764(v23);
  v25 = v3[13];
  v57 = *MEMORY[0x277CE0560];
  v56 = v25;
  v54 = v3 + 13;
  v25(v20);
  v55 = v3[7];
  v55(v20, 0, 1, v2);
  v59 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598);
  v64 = v3;
  v27 = v3[6];
  if (v27(v9, 1, v2) != 1)
  {
    sub_24E60169C(v9, v65, &qword_27F215598);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v63 = v27;
      v51 = v24;
      v29 = v53;
      (v64[4])(v53, &v9[v26], v2);
      sub_24F16C2C4(&qword_27F215650, MEMORY[0x277CE0570]);
      v30 = v65;
      v50 = sub_24F92AFF8();
      v31 = v64[1];
      v31(v29, v2);
      sub_24E601704(v20, &qword_27F215598);
      sub_24E601704(v23, &qword_27F215598);
      v31(v30, v2);
      sub_24E601704(v9, &qword_27F215598);
      if ((v50 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598);
    sub_24E601704(v23, &qword_27F215598);
    (v64[1])(v65, v2);
LABEL_6:
    v28 = v9;
LABEL_14:
    sub_24E601704(v28, &unk_27F254F20);
    goto LABEL_15;
  }

  v51 = v24;
  v63 = v27;
  sub_24E601704(v20, &qword_27F215598);
  sub_24E601704(v23, &qword_27F215598);
  if (v63(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598);
LABEL_8:
  v32 = v61;
  sub_24F769764(v61);
  v33 = v60;
  v56(v60, v57, v2);
  v55(v33, 0, 1, v2);
  v34 = *(v59 + 48);
  v35 = v62;
  sub_24E60169C(v32, v62, &qword_27F215598);
  sub_24E60169C(v33, &v35[v34], &qword_27F215598);
  v36 = v63;
  if (v63(v35, 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    if (v36(&v35[v34], 1, v2) == 1)
    {
      sub_24E601704(v35, &qword_27F215598);
LABEL_20:
      if (qword_27F210F38 != -1)
      {
        swift_once();
      }

      v38 = &xmmword_27F39DB50;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v37 = v52;
  sub_24E60169C(v35, v52, &qword_27F215598);
  if (v36(&v35[v34], 1, v2) == 1)
  {
    sub_24E601704(v33, &qword_27F215598);
    sub_24E601704(v32, &qword_27F215598);
    (v64[1])(v37, v2);
LABEL_13:
    v28 = v35;
    goto LABEL_14;
  }

  v43 = v33;
  v44 = v64;
  v45 = &v35[v34];
  v46 = v53;
  (v64[4])(v53, v45, v2);
  sub_24F16C2C4(&qword_27F215650, MEMORY[0x277CE0570]);
  v47 = sub_24F92AFF8();
  v48 = v44[1];
  v48(v46, v2);
  sub_24E601704(v43, &qword_27F215598);
  sub_24E601704(v32, &qword_27F215598);
  v48(v37, v2);
  sub_24E601704(v35, &qword_27F215598);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210F30 != -1)
  {
    swift_once();
  }

  v38 = &xmmword_27F39DB00;
LABEL_18:
  v39 = v38[3];
  v69 = v38[2];
  v70 = v39;
  v71 = v38[4];
  v40 = v38[1];
  v67 = *v38;
  v68 = v40;
  v41 = v66;
  *(v66 + 32) = v69;
  *(v41 + 48) = v39;
  *(v41 + 64) = v71;
  result = v68;
  *v41 = v67;
  *(v41 + 16) = result;
  return result;
}

uint64_t sub_24F16C2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F16C334()
{

  return swift_deallocObject();
}

uint64_t sub_24F16C398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_24F16C3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F16C46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F16C5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24F16C700()
{
  sub_24F16C8E0(319, &qword_27F233350, MEMORY[0x277CDDA30], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GKPlayerAgeCategory(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LocalPlayerProvider();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NicknameModel();
        if (v3 <= 0x3F)
        {
          sub_24F16C890(319, &qword_27F23A8B0, &type metadata for Player.ProfilePrivacyVisibilityLevel, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_24F16C8E0(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
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

void sub_24F16C890(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F16C8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F16CA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F16CB0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F16CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F16CBB4()
{
  v1 = type metadata accessor for SingleColumnView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F16CDC4(uint64_t a1)
{
  v3 = *(type metadata accessor for SingleColumnView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F16899C(a1, v4);
}

uint64_t sub_24F16CE34()
{
  v1 = type metadata accessor for SingleColumnView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_24F924098();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v5 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F16D04C(uint64_t a1)
{
  v4 = *(type metadata accessor for SingleColumnView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F168B7C(a1, v6, v7, v1 + v5);
}

unint64_t sub_24F16D158()
{
  result = qword_27F23A928;
  if (!qword_27F23A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A928);
  }

  return result;
}

uint64_t sub_24F16D2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A920);
  sub_24F16D158();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F16D30C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2128D0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F16D3D4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[16];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[17];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v18 = *(*(v17 - 8) + 48);
  v19 = &a1[a3[20]];

  return v18(v19, a2, v17);
}

char *sub_24F16D674(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[16];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[17];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v18 = *(*(v17 - 8) + 56);
  v19 = &v5[a4[20]];

  return v18(v19, a2, a2, v17);
}

void sub_24F16D920()
{
  type metadata accessor for Shelf();
  if (v0 <= 0x3F)
  {
    sub_24F15B198();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968);
      if (v2 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F23A970);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_24F16DB84(319, &qword_27F2381D8, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24F928FD8();
              if (v6 <= 0x3F)
              {
                sub_24EF36C6C();
                if (v7 <= 0x3F)
                {
                  sub_24F16DB84(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_24E684120();
                    if (v9 <= 0x3F)
                    {
                      sub_24E746BEC(319, &qword_27F254DF0);
                      if (v10 <= 0x3F)
                      {
                        sub_24F16DB84(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_24F16DB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F16DC04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  v115 = *(v3 - 8);
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v116 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = &v112 - v6;
  MEMORY[0x28223BE20](v7);
  v113 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159E8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - v11;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159D8);
  MEMORY[0x28223BE20](v114);
  v123 = (&v112 - v13);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215968);
  MEMORY[0x28223BE20](v125);
  v124 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A978);
  v119 = *(v15 - 8);
  v120 = v15;
  MEMORY[0x28223BE20](v15);
  v118 = &v112 - v16;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A980);
  sub_24F16E73C(v1, &v12[*(v17 + 44)]);
  v130[0] = 0;
  v130[1] = 0xE000000000000000;
  v18 = *v1;
  sub_24E65864C(*v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, &v126);
  v19 = sub_24F92C7A8();
  MEMORY[0x253050C20](v19);

  sub_24E6585F8(&v126);
  MEMORY[0x253050C20](95, 0xE100000000000000);
  LOBYTE(v126) = *(v18 + 16);
  sub_24F92CA38();
  v20 = v130[0];
  v21 = v130[1];
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A18) + 52)];
  *v22 = v20;
  *(v22 + 1) = v21;
  v23 = sub_24F925818();
  sub_24F16F0DC();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A08) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_24F925828();
  v117 = v2;
  sub_24F16F504();
  sub_24F923318();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159F8) + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v122 = v18;
  v43 = v18 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  v48 = *(v43 + 32);
  sub_24E951F10(*v43, v45, v46, v47, v48);
  v49 = sub_24F927618();
  v50 = &v12[*(v10 + 44)];
  *v50 = v44;
  *(v50 + 1) = v45;
  *(v50 + 2) = v46;
  *(v50 + 3) = v47;
  *(v50 + 16) = v48;
  *(v50 + 5) = v49;
  *(v50 + 6) = v51;
  sub_24E951F10(v44, v45, v46, v47, v48);
  sub_24E951FEC(v44, v45, v46, v47, v48);
  v52 = *(v43 + 32);
  if ((v52 & 0xE000) == 0x8000 && v52 == 0x8000 && *v43 == 1 && !(*(v43 + 16) | *(v43 + 24) | *(v43 + 8)))
  {
    v53 = *MEMORY[0x277CDF3C0];
    v54 = sub_24F9234D8();
    v55 = *(v54 - 8);
    v56 = v112;
    (*(v55 + 104))(v112, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
  }

  else
  {
    v57 = sub_24F9234D8();
    v56 = v112;
    (*(*(v57 - 8) + 56))(v112, 1, 1, v57);
  }

  v58 = v56;
  v59 = v113;
  sub_24E6009C8(v58, v113, &qword_27F2325E8);
  KeyPath = swift_getKeyPath();
  v61 = v116;
  sub_24E6009C8(v59, v116, &qword_27F2325E8);
  v62 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v63 = swift_allocObject();
  sub_24E6009C8(v61, v63 + v62, &qword_27F2325E8);
  v64 = v123;
  sub_24E6009C8(v12, v123, &qword_27F2159E8);
  v65 = (v64 + *(v114 + 36));
  *v65 = KeyPath;
  v65[1] = sub_24F1759C0;
  v65[2] = v63;
  v66 = type metadata accessor for ShelfView(0);
  v67 = (v117 + *(v66 + 24));
  v132 = *v67;
  v68 = *(v67 + 16);
  v131[0] = *(v67 + 17);
  *(v131 + 3) = *(v67 + 5);
  v69 = *(v67 + 3);
  memcpy(v130, v67 + 2, sizeof(v130));
  v70 = 0;
  v71 = *(v67 + 46);
  v72 = *(v67 + 47);
  v73 = *(v67 + 48);
  if ((v68 & 1) == 0)
  {
    v70 = *(v122 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  }

  v74 = (v117 + *(v66 + 36));
  v75 = swift_getKeyPath();
  v76 = v123;
  v77 = v124;
  sub_24E60169C(v123, v124, &qword_27F2159D8);
  v78 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159C8) + 36);
  *v78 = v75;
  *(v78 + 8) = v69 - v71 - v73;
  v79 = swift_getKeyPath();
  v80 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159B8) + 36);
  *v80 = v79;
  *(v80 + 8) = v71;
  v81 = swift_getKeyPath();
  v82 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2159A8) + 36);
  *v82 = v81;
  *(v82 + 8) = 0;
  v83 = swift_getKeyPath();
  v84 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215998) + 36);
  *v84 = v83;
  *(v84 + 8) = v70;
  *(v84 + 16) = v68 & 1;
  v85 = swift_getKeyPath();
  v86 = sub_24E6B00B4(v69);
  v87 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215988) + 36);
  *v87 = v85;
  *(v87 + 8) = v86;
  v88 = swift_getKeyPath();
  v89 = v74[3];
  v90 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v89);
  v126 = v132;
  LOBYTE(v127) = v68;
  *(&v127 + 1) = v131[0];
  HIDWORD(v127) = *(v131 + 3);
  v128 = v69;
  memcpy(v129, v130, 0x150uLL);
  *&v129[42] = v71;
  v129[43] = v72;
  *&v129[44] = v73;
  v91 = *(v90 + 16);
  v92 = (v77 + *(v125 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A88);
  v93 = v122;
  v91(v122, &v126, v89, v90);
  sub_24E601704(v76, &qword_27F2159D8);
  *v92 = v88;
  LOBYTE(v126) = *(v93 + 16);
  v94 = Shelf.ContentType.rawValue.getter();
  v96 = v95;
  v97 = sub_24F9275B8();
  v99 = v98;
  v100 = sub_24F926C38();
  v123 = &v112;
  MEMORY[0x28223BE20](v100);
  *(&v112 - 10) = v94;
  *(&v112 - 9) = v96;
  *(&v112 - 8) = v97;
  *(&v112 - 7) = v99;
  *(&v112 - 3) = 0u;
  *(&v112 - 2) = 0u;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215970);
  v101 = sub_24E66B7FC();
  v102 = sub_24E6695B8();
  v103 = sub_24E66BF00();
  v111 = v103;
  v104 = v118;
  v105 = v125;
  v106 = v124;
  sub_24F926B08();

  sub_24E601704(v106, &qword_27F215968);
  v107 = sub_24F926C28();
  MEMORY[0x28223BE20](v107);
  *(&v112 - 4) = v108;
  *(&v112 - 3) = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AA8);
  *&v126 = v105;
  *(&v126 + 1) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v127 = v122;
  v128 = *&v101;
  v129[0] = v102;
  v129[1] = v103;
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  v111 = sub_24F176268();
  v109 = v120;
  sub_24F926B08();

  return (*(v119 + 8))(v104, v109);
}

uint64_t sub_24F16E73C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v76 = type metadata accessor for ShelfView.ShelfDivider(0) - 8;
  MEMORY[0x28223BE20](v76);
  v78 = &KeyPath - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &KeyPath - v5;
  v72 = type metadata accessor for ShelfView.Grid(0) - 8;
  MEMORY[0x28223BE20](v72);
  v77 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = (&KeyPath - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  v74 = *(v9 - 8);
  v71 = *(v74 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &KeyPath - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &KeyPath - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A990) - 8;
  MEMORY[0x28223BE20](v69);
  v85 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&KeyPath - v17);
  v86 = *a1;
  v19 = v86;
  v20 = type metadata accessor for ShelfView(0);
  v83 = v20[5];
  sub_24E60169C(a1 + v83, v14, &unk_27F23A680);
  v68 = *(v12 + 56);
  v80 = v12;
  v73 = v20[7];
  memcpy(v87, a1 + v73, sizeof(v87));
  KeyPath = swift_getKeyPath();
  *v18 = v19;
  v21 = type metadata accessor for ShelfView.Header(0);
  v22 = v18 + v21[5];
  v23 = *(v12 + 56);
  v81 = v14;
  sub_24E6009C8(v14, v22, &unk_27F23A690);
  sub_24E6009C8(&v14[v68], v22 + v23, &unk_27F23A690);
  memcpy(v18 + v21[6], v87, 0x188uLL);
  v24 = v18 + v21[7];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = v18 + v21[8];
  v84 = v18;
  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v25[32] = 0;
  v26 = v20[11];
  v27 = swift_getKeyPath();
  v28 = v70;
  sub_24E60169C(a1 + v26, v70, &qword_27F2325E8);
  v29 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v30 = swift_allocObject();
  sub_24E6009C8(v28, v30 + v29, &qword_27F2325E8);
  v31 = (v18 + *(v69 + 44));
  *v31 = v27;
  v31[1] = sub_24F179374;
  v31[2] = v30;
  sub_24E60169C(a1 + v83, v81, &unk_27F23A680);
  v32 = v80;
  v70 = *(v80 + 56);
  memcpy(v88, a1 + v20[6], sizeof(v88));
  v71 = v20[8];
  v33 = v72;
  v34 = v82;
  sub_24E615E00(a1 + v71, v82 + *(v72 + 36));
  sub_24E615E00(a1 + v20[9], v34 + v33[10]);
  v35 = v86;
  swift_retain_n();
  sub_24E8B9768(v87, &v93);
  sub_24E8B9768(v88, &v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  v36 = v93;
  sub_24F769788(v34 + v33[12]);
  v37 = v20[13];
  v74 = *(a1 + v20[12]);
  v38 = v74;
  v69 = *(a1 + v37);
  v68 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *v34 = v35;
  v39 = v34 + v33[7];
  v40 = *(v32 + 56);
  v41 = v81;
  sub_24E6009C8(v81, v39, &unk_27F23A690);
  sub_24E6009C8(v41 + v70, v39 + v40, &unk_27F23A690);
  memcpy(v34 + v33[8], v88, 0x188uLL);
  *(v34 + v33[11]) = v36;
  *(v34 + v33[13]) = v38;
  v42 = v34 + v33[14];
  v43 = KeyPath;
  *v42 = v68;
  v42[8] = 0;
  v44 = v34 + v33[15];
  *v44 = v43;
  v44[8] = 0;
  v45 = v34 + v33[16];
  *v45 = swift_getKeyPath();
  *(v45 + 1) = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  v45[32] = 0;
  *(v34 + v33[17]) = v69;
  v46 = v73;
  memcpy(v89, a1 + v73, sizeof(v89));
  memcpy(v90, a1 + v73, sizeof(v90));
  sub_24E60169C(a1 + v83, v41, &unk_27F23A680);
  v47 = v80;
  v48 = *(v80 + 56);
  memcpy(v91, a1 + v46, sizeof(v91));
  v50 = v75;
  v49 = v76;
  sub_24E615E00(a1 + v71, &v75[*(v76 + 36)]);
  *v50 = v86;
  v51 = v50 + v49[7];
  v52 = *(v47 + 56);
  sub_24E6009C8(v41, v51, &unk_27F23A690);
  sub_24E6009C8(v41 + v48, v51 + v52, &unk_27F23A690);
  memcpy(v50 + v49[8], v91, 0x188uLL);
  v53 = v49[10];
  *(v50 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v54 = v49[11];
  *(v50 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v55 = v49[12];
  *(v50 + v55) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v56 = v50 + v49[13];
  *v56 = swift_getKeyPath();
  *(v56 + 1) = 0;
  *(v56 + 2) = 0;
  *(v56 + 3) = 0;
  v56[32] = 0;
  v57 = v49[14];
  *(v50 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v58 = v85;
  sub_24E60169C(v84, v85, &qword_27F23A990);
  v59 = v77;
  sub_24F1765BC(v34, v77, type metadata accessor for ShelfView.Grid);
  v60 = v78;
  sub_24F1765BC(v50, v78, type metadata accessor for ShelfView.ShelfDivider);
  v61 = v58;
  v62 = v79;
  sub_24E60169C(v61, v79, &qword_27F23A990);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A998);
  sub_24F1765BC(v59, v62 + v63[12], type metadata accessor for ShelfView.Grid);
  v64 = v63[16];
  v65 = v86;
  v92[0] = v86;
  memcpy(&v92[1], v90, 0x188uLL);
  memcpy((v62 + v64), v92, 0x190uLL);
  sub_24F1765BC(v60, v62 + v63[20], type metadata accessor for ShelfView.ShelfDivider);

  sub_24E8B9768(v89, &v93);
  sub_24E8B9768(v91, &v93);
  sub_24F176624(v92, &v93);
  sub_24F17665C(v50, type metadata accessor for ShelfView.ShelfDivider);
  sub_24F17665C(v82, type metadata accessor for ShelfView.Grid);
  sub_24E601704(v84, &qword_27F23A990);
  sub_24F17665C(v60, type metadata accessor for ShelfView.ShelfDivider);
  v93 = v65;
  memcpy(v94, v90, sizeof(v94));
  sub_24F1766BC(&v93);
  sub_24F17665C(v59, type metadata accessor for ShelfView.Grid);
  return sub_24E601704(v85, &qword_27F23A990);
}

double sub_24F16F0DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = *v0 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v37 = *(v8 + 24);
  v35 = *(v8 + 32);
  v12 = type metadata accessor for ShelfView(0);
  sub_24E60169C(v0 + *(v12 + 20), v4, &unk_27F23A680);
  v13 = &v4[*(v2 + 56)];
  sub_24E6009C8(v4, v7, &unk_27F23A690);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v7, 1, v14) == 1;
  v38 = v9;
  v39 = v11;
  v36 = v10;
  v17 = v11;
  if (v16)
  {
    v25 = v37;
    v19 = v35;
    sub_24E951F10(v10, v9, v17, v37, v35);
    sub_24E601704(v13, &unk_27F23A690);
    v34 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 64764;
    v13 = v7;
  }

  else
  {
    v18 = v37;
    v19 = v35;
    sub_24E951F10(v10, v9, v17, v37, v35);
    sub_24F928A58();
    v20 = v45;
    (*(v15 + 8))(v7, v14);
    v21 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8];
    v23 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16];
    v22 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24];
    v24 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32];
    v34 = *&v20[OBJC_IVAR____TtC12GameStoreKit5Shelf_background];
    sub_24E951F10(v34, v21, v23, v22, v24);

    v25 = v18;
  }

  sub_24E601704(v13, &unk_27F23A690);
  if ((~v19 & 0xFCFC) == 0)
  {
    v27 = v38;
    v26 = v39;
    v28 = v36;
    if ((~v24 & 0xFCFC) == 0)
    {
      sub_24F176378(v36, v38, v39, v25, v19);
      return 0.0;
    }

    goto LABEL_9;
  }

  v29 = v36;
  v27 = v38;
  v26 = v39;
  v45 = v36;
  v46 = v38;
  v47 = v39;
  v48 = v25;
  v49 = v19;
  if ((~v24 & 0xFCFC) == 0)
  {
    sub_24F17638C(v36, v38, v39, v25, v19);
    sub_24E951FEC(v29, v27, v26, v25, v19);
    v28 = v29;
LABEL_9:
    sub_24F176378(v28, v27, v26, v25, v19);
    sub_24F176378(v34, v21, v23, v22, v24);
LABEL_10:
    v30 = *(v8 + 32);
    if ((v30 & 0xE000) == 0x8000 && v30 == 0x8000 && *v8 == 1 && !(*(v8 + 16) | *(v8 + 24) | *(v8 + 8)))
    {
      return 52.0;
    }

    return 0.0;
  }

  v40 = v34;
  v41 = v21;
  v42 = v23;
  v43 = v22;
  v44 = v24;
  sub_24F17638C(v36, v38, v39, v25, v19);
  v32 = v25;
  v33 = _s12GameStoreKit15ShelfBackgroundO2eeoiySbAC_ACtFZ_0(&v45, &v40);
  sub_24E951FEC(v40, v41, v42, v43, v44);
  sub_24E951FEC(v45, v46, v47, v48, v49);
  sub_24F176378(v29, v27, v26, v32, v19);
  result = 0.0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

double sub_24F16F504()
{
  v1 = v0;
  v79 = sub_24F924848();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F925218();
  v105 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v101);
  v85 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v75 - v13;
  MEMORY[0x28223BE20](v14);
  v99 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v97 = sub_24F923E98();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PageEnvironment();
  MEMORY[0x28223BE20](v103);
  v104 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v89);
  v26 = &v75 - v25;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v28 = &v75 - v27;
  v29 = type metadata accessor for ShelfView(0);
  sub_24E615E00(v1 + v29[8], &v109);
  v87 = v111;
  v88 = v110;
  v86 = __swift_project_boxed_opaque_existential_1(&v109, v110);
  v106 = *v1;
  type metadata accessor for Shelf();

  v90 = v28;
  sub_24F928A78();
  v30 = v1 + v29[5];
  v95 = v26;
  sub_24E60169C(v30, v26, &unk_27F23A680);
  v31 = (v1 + v29[10]);
  v32 = *v31;
  v33 = v31[1];
  v93 = v23;
  sub_24F769788(v23);
  v102 = v29;
  v96 = v1;
  sub_24F769764(v21);
  v34 = v98;
  v35 = v105;
  v36 = *(v105 + 104);
  v82 = *MEMORY[0x277CE0558];
  v81 = v36;
  v36(v18);
  v37 = v35;
  v80 = *(v35 + 56);
  v80(v18, 0, 1, v3);
  v38 = *(v101 + 48);
  sub_24E60169C(v21, v34, &qword_27F215598);
  sub_24E60169C(v18, v34 + v38, &qword_27F215598);
  v39 = *(v37 + 48);
  if (v39(v34, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    if (v39(v34 + v38, 1, v3) == 1)
    {
      sub_24E601704(v34, &qword_27F215598);
      v83 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v34, v99, &qword_27F215598);
  if (v39(v34 + v38, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    (*(v105 + 8))(v99, v3);
LABEL_6:
    sub_24E601704(v34, &unk_27F254F20);
    v83 = 0;
    goto LABEL_8;
  }

  v40 = v76;
  (*(v105 + 32))(v76, v34 + v38, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570]);
  v83 = sub_24F92AFF8();
  v41 = *(v105 + 8);
  v41(v40, v3);
  sub_24E601704(v18, &qword_27F215598);
  sub_24E601704(v21, &qword_27F215598);
  v41(v99, v3);
  sub_24E601704(v98, &qword_27F215598);
LABEL_8:
  v42 = v84;
  v43 = v96;
  sub_24F769764(v84);
  v44 = v100;
  v81(v100, v82, v3);
  v80(v44, 0, 1, v3);
  v45 = v44;
  v46 = *(v101 + 48);
  v47 = v85;
  sub_24E60169C(v42, v85, &qword_27F215598);
  sub_24E60169C(v45, v47 + v46, &qword_27F215598);
  if (v39(v47, 1, v3) == 1)
  {
    sub_24E601704(v45, &qword_27F215598);
    sub_24E601704(v42, &qword_27F215598);
    if (v39(v47 + v46, 1, v3) == 1)
    {
      sub_24E601704(v47, &qword_27F215598);
      LODWORD(v48) = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v49 = v75;
  sub_24E60169C(v47, v75, &qword_27F215598);
  if (v39(v47 + v46, 1, v3) == 1)
  {
    sub_24E601704(v100, &qword_27F215598);
    sub_24E601704(v42, &qword_27F215598);
    (*(v105 + 8))(v49, v3);
LABEL_13:
    sub_24E601704(v47, &unk_27F254F20);
    LODWORD(v48) = 0;
    goto LABEL_15;
  }

  v50 = v105;
  v51 = v42;
  v52 = v76;
  (*(v105 + 32))(v76, v47 + v46, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570]);
  LODWORD(v48) = sub_24F92AFF8();
  v53 = *(v50 + 8);
  v53(v52, v3);
  sub_24E601704(v100, &qword_27F215598);
  sub_24E601704(v51, &qword_27F215598);
  v53(v49, v3);
  sub_24E601704(v47, &qword_27F215598);
LABEL_15:
  v54 = v102;
  sub_24F7699B0(&v104[*(v103 + 28)]);
  v55 = v43 + v54[19];
  v56 = *(v55 + 8);
  v57 = *(v55 + 24);
  if (*(v55 + 32) == 1)
  {
    v58 = *(v55 + 8);
    v59 = *(v55 + 24);
  }

  else
  {
    v60 = *v55;
    v61 = *(v55 + 16);

    sub_24F92BDC8();
    v62 = sub_24F9257A8();
    LODWORD(v105) = v48;
    v63 = v62;
    sub_24F921FD8();

    v64 = v77;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v60, v56, v61, v57, 0);
    v65 = *(v78 + 8);
    v66 = v79;
    v65(v64, v79);
    v58 = v107;

    sub_24F92BDC8();
    v48 = sub_24F9257A8();
    sub_24F921FD8();

    LOBYTE(v48) = v105;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v60, v56, v61, v57, 0);
    v65(v64, v66);
    v59 = v108;
  }

  v67 = *(v89 + 48);
  v68 = v58 + v59 > 0.0;
  v69 = v104;
  (*(v94 + 32))(v104, v93, v97);
  v70 = v103;
  *(v69 + *(v103 + 20)) = v83 & 1;
  *(v69 + *(v70 + 24)) = v48 & 1;
  *(v69 + *(v70 + 32)) = v68;
  v71 = v95;
  v72 = v90;
  v73 = (*(v87 + 24))(v90, v95, &v95[v67], v69, v88, v32, v33);
  sub_24F17665C(v69, type metadata accessor for PageEnvironment);
  (*(v91 + 8))(v72, v92);
  sub_24E601704(v71 + v67, &unk_27F23A690);
  sub_24E601704(v71, &unk_27F23A690);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  return v73;
}

double sub_24F170308()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Header(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F170464@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B00);
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v113 = &v100 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B10);
  MEMORY[0x28223BE20](v110);
  v112 = &v100 - v5;
  v6 = sub_24F924848();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B58);
  MEMORY[0x28223BE20](v8);
  v10 = &v100 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B48);
  MEMORY[0x28223BE20](v107);
  v12 = &v100 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B38);
  MEMORY[0x28223BE20](v108);
  v117 = &v100 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB78);
  v14 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v100 - v15;
  v16 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v100 - v20;
  v109 = v1;
  v22 = *v1;

  sub_24E98606C(v23, v21);
  if (!sub_24F31B9B4())
  {
    sub_24F17665C(v21, type metadata accessor for HeaderPresentation);
    v26 = 1;
    v27 = v116;
    v28 = a1;
    return (*(v14 + 56))(v28, v26, 1, v27);
  }

  v101 = v21;
  sub_24F1765BC(v21, v18, type metadata accessor for HeaderPresentation);
  v24 = *(v22 + 40);
  v102 = v14;
  v103 = a1;
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = *(v24 + 104);
  if (!v25)
  {
    v29 = *(v24 + 136);
    if (v29)
    {
      *(&v132 + 1) = type metadata accessor for Action();
      *&v133 = sub_24F178F7C(&qword_27F216DE8, type metadata accessor for Action);
      *&v131 = v29;
      goto LABEL_8;
    }

LABEL_9:
    *&v133 = 0;
    v131 = 0u;
    v132 = 0u;
    goto LABEL_10;
  }

  *(&v125 + 1) = type metadata accessor for Action();
  *&v126 = sub_24F178F7C(&qword_27F216DE8, type metadata accessor for Action);
  *&v124 = v25;
  sub_24E612C80(&v124, &v131);
LABEL_8:

LABEL_10:
  v30 = &v10[v8[11]];
  v31 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v30[3] = MEMORY[0x277D84030];
  v32 = swift_allocObject();
  *v30 = v32;
  sub_24E65864C(v22 + v31, v32 + 16);
  sub_24F178C84(v18, v10, type metadata accessor for HeaderPresentation);
  v33 = &v10[v8[9]];
  *v33 = CGSizeMake;
  *(v33 + 1) = 0;
  v34 = &v10[v8[10]];
  v35 = v132;
  *v34 = v131;
  *(v34 + 1) = v35;
  *(v34 + 4) = v133;
  v36 = v109;
  sub_24F170308();
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v10, v12, &qword_27F231B58);
  v37 = &v12[*(v107 + 36)];
  v38 = v129;
  *(v37 + 4) = v128;
  *(v37 + 5) = v38;
  *(v37 + 6) = v130;
  v39 = v125;
  *v37 = v124;
  *(v37 + 1) = v39;
  v40 = v127;
  *(v37 + 2) = v126;
  *(v37 + 3) = v40;
  sub_24F927618();
  sub_24F9242E8();
  v41 = v117;
  sub_24E6009C8(v12, v117, &qword_27F231B48);
  v42 = (v41 + *(v108 + 36));
  v43 = v136;
  v42[4] = v135;
  v42[5] = v43;
  v42[6] = v137;
  v44 = v132;
  *v42 = v131;
  v42[1] = v44;
  v45 = v134;
  v42[2] = v133;
  v42[3] = v45;
  v46 = v36 + *(type metadata accessor for ShelfView.Header(0) + 32);
  v47 = *(v46 + 8);
  v48 = *(v46 + 24);
  if ((*(v46 + 32) & 1) == 0)
  {
    v49 = *v46;
    v109 = *(v46 + 16);
    v50 = v109;

    sub_24F92BDC8();
    v51 = sub_24F9257A8();
    sub_24F921FD8();

    v52 = v104;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v49, v47, v50, v48, 0);
    v53 = v106;
    v54 = *(v105 + 8);
    v54(v52, v106);

    sub_24F92BDC8();
    v55 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v49, v47, v109, v48, 0);
    v54(v52, v53);
  }

  v28 = v103;
  v56 = sub_24F925838();
  sub_24F923318();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v112;
  sub_24E60169C(v117, v112, &qword_27F231B38);
  v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231B28) + 36);
  *v66 = v56;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = sub_24F925858();
  sub_24F923318();
  v68 = v110;
  v69 = v65 + *(v110 + 36);
  *v69 = v67;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  v74 = sub_24EE536D0();
  v75 = v113;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB80);
  v118 = v68;
  v119 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_24E8F20E4();
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08);
  v79 = sub_24EE5392C();
  v80 = v115;
  v118 = v115;
  v119 = &type metadata for IsDebugFocusOverlayEnabled;
  v120 = v78;
  v121 = OpaqueTypeConformance2;
  v122 = v77;
  v123 = v79;
  swift_getOpaqueTypeConformance2();
  v81 = v111;
  sub_24F926B08();
  (*(v114 + 8))(v75, v80);
  sub_24E601704(v65, &qword_27F231B10);
  v82 = sub_24F925838();
  sub_24F923318();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB88) + 36);
  *v91 = v82;
  *(v91 + 8) = v84;
  *(v91 + 16) = v86;
  *(v91 + 24) = v88;
  *(v91 + 32) = v90;
  *(v91 + 40) = 0;
  v92 = sub_24F925858();
  sub_24F923318();
  v27 = v116;
  v93 = v117;
  v94 = v81 + *(v116 + 36);
  *v94 = v92;
  *(v94 + 8) = v95;
  *(v94 + 16) = v96;
  *(v94 + 24) = v97;
  *(v94 + 32) = v98;
  *(v94 + 40) = 0;
  sub_24E601704(v93, &qword_27F231B38);
  sub_24F17665C(v101, type metadata accessor for HeaderPresentation);
  sub_24E6009C8(v81, v28, &qword_27F23AB78);
  v26 = 0;
  v14 = v102;
  return (*(v14 + 56))(v28, v26, 1, v27);
}

double sub_24F170FA0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Grid(0) + 48));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

double sub_24F1710FC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ShelfView.Grid(0) + 52));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F17125C@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  v2 = sub_24F924848();
  v139 = *(v2 - 8);
  v140 = v2;
  MEMORY[0x28223BE20](v2);
  v138 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9E0);
  MEMORY[0x28223BE20](v162);
  v166 = &v132 - v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9E8);
  v137 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v136 = &v132 - v5;
  v6 = sub_24F925688();
  v134 = *(v6 - 8);
  v135 = v6;
  MEMORY[0x28223BE20](v6);
  v133 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = &v132 - v9;
  v10 = type metadata accessor for ShelfView.Grid(0);
  v146 = *(v10 - 8);
  v145 = *(v146 + 64);
  MEMORY[0x28223BE20](v10);
  v147 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v144 = &v132 - v13;
  v14 = sub_24F921998();
  MEMORY[0x28223BE20](v14 - 8);
  v179 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F921938();
  MEMORY[0x28223BE20](v16 - 8);
  v178 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9F0);
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x28223BE20](v18);
  v149 = &v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9F8);
  v153 = *(v20 - 8);
  v154 = v20;
  MEMORY[0x28223BE20](v20);
  v152 = &v132 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA00);
  MEMORY[0x28223BE20](v157);
  v155 = &v132 - v22;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA08);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v156 = &v132 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA10);
  v160 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v158 = &v132 - v24;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA18);
  v165 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v164 = &v132 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA20);
  v170 = *(v26 - 8);
  v171 = v26;
  MEMORY[0x28223BE20](v26);
  v180 = &v132 - v27;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA28);
  MEMORY[0x28223BE20](v172);
  v168 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v169 = &v132 - v30;
  v184 = sub_24F9218F8();
  v186 = *(v184 - 8);
  v143 = *(v186 + 64);
  MEMORY[0x28223BE20](v184);
  v148 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v142 = &v132 - v33;
  MEMORY[0x28223BE20](v34);
  v175 = &v132 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v132 - v37;
  v39 = (v1 + *(v10 + 32));
  v41 = v39[3];
  v40 = v39[4];
  v177 = __swift_project_boxed_opaque_existential_1(v39, v41);
  v42 = *v1;
  v173 = v10;
  v43 = *(v10 + 24);
  v183 = v1;
  memcpy(v191, v1 + v43, sizeof(v191));
  memcpy(v196, v1 + v43, 0x188uLL);
  v44 = *(v40 + 8);
  sub_24E8B9768(v191, v195);
  v185 = v38;
  v182 = v42;
  v44(v42, v196, v41, v40);
  memcpy(v192, v196, sizeof(v192));
  sub_24F177548(v192);
  *&v187 = v42;
  v176 = *(v186 + 16);
  v177 = (v186 + 16);
  v176(v175, v38, v184);
  v45 = v39[3];
  v46 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v45);
  v47 = v183;
  memcpy(v193, v183 + v43, sizeof(v193));
  memcpy(v196, v183 + v43, 0x188uLL);
  v48 = *(v46 + 24);
  v49 = v182;

  sub_24E8B9768(v193, v195);
  v48(v49, v196, v45, v46);
  memcpy(v194, v196, sizeof(v194));
  sub_24F177548(v194);
  v50 = v39[3];
  v51 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v50);
  memcpy(v195, (v47 + v43), sizeof(v195));
  memcpy(v190, (v47 + v43), sizeof(v190));
  v52 = *(v51 + 16);
  sub_24E8B9768(v195, v196);
  v52(v49, v190, v50, v51);
  memcpy(v196, v190, 0x188uLL);
  sub_24F177548(v196);
  v141 = type metadata accessor for ShelfView.Grid;
  v53 = v144;
  sub_24F1765BC(v47, v144, type metadata accessor for ShelfView.Grid);
  v54 = v142;
  v55 = v184;
  v176(v142, v185, v184);
  v56 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v146 = v56 + v145;
  v57 = v186;
  v58 = (v56 + v145 + *(v186 + 80)) & ~*(v186 + 80);
  v59 = swift_allocObject();
  v143 = v59;
  sub_24F178C84(v53, v59 + v56, type metadata accessor for ShelfView.Grid);
  v60 = v59 + v58;
  v61 = v55;
  (*(v57 + 32))(v60, v54, v55);
  v62 = v147;
  sub_24F1765BC(v183, v147, v141);
  v63 = swift_allocObject();
  sub_24F178C84(v62, v63 + v56, type metadata accessor for ShelfView.Grid);
  v64 = type metadata accessor for Shelf();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA30);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA38);
  v67 = sub_24F178F7C(&qword_27F23AA40, type metadata accessor for Shelf);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48);
  v69 = sub_24F177C3C();
  v190[0] = v68;
  v190[1] = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_24F178174();
  v144 = v67;
  v145 = v66;
  v146 = v65;
  v147 = v64;
  v72 = v149;
  sub_24F921D58();
  if (*(v182 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior))
  {
    v188 = sub_24F921CC8();
    v189 = sub_24F178F7C(&qword_27F23AAB0, MEMORY[0x277D7ECC8]);
    __swift_allocate_boxed_opaque_existential_1(&v187);
    sub_24F924EF8();
  }

  else
  {
    v73 = v132;
    sub_24F925668();
    v188 = sub_24F9256A8();
    v189 = MEMORY[0x277CDE478];
    __swift_allocate_boxed_opaque_existential_1(&v187);
    v74 = v134;
    v75 = v135;
    (*(v134 + 16))(v133, v73, v135);
    sub_24F925698();
    (*(v74 + 8))(v73, v75);
  }

  sub_24E612C80(&v187, v190);
  v76 = v151;
  v77 = v152;
  sub_24F921D48();
  __swift_destroy_boxed_opaque_existential_1(v190);
  (*(v150 + 8))(v72, v76);
  v78 = v148;
  v176(v148, v185, v55);
  v79 = v186;
  v80 = (*(v186 + 88))(v78, v61);
  v81 = v155;
  v82 = v153;
  if (v80 == *MEMORY[0x277D7EB20])
  {
    (*(v79 + 96))(v78, v61);
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8) + 48);
    v84 = sub_24F9219E8();
    (*(*(v84 - 8) + 8))(&v78[v83], v84);
    v190[0] = v147;
    v190[1] = v146;
    v190[2] = v145;
    v190[3] = v144;
    v190[4] = OpaqueTypeConformance2;
    v190[5] = v71;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = v136;
    v87 = v154;
    sub_24F9265A8();
    v88 = v137;
    v89 = v167;
    (*(v137 + 16))(v166, v86, v167);
    swift_storeEnumTagMultiPayload();
    v190[0] = v87;
    v190[1] = v85;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v88 + 8))(v86, v89);
  }

  else
  {
    (*(v79 + 8))(v78, v61);
    v87 = v154;
    (*(v82 + 16))(v166, v77, v154);
    swift_storeEnumTagMultiPayload();
    v190[0] = v147;
    v190[1] = v146;
    v190[2] = v145;
    v190[3] = v144;
    v190[4] = OpaqueTypeConformance2;
    v190[5] = v71;
    v90 = swift_getOpaqueTypeConformance2();
    v190[0] = v87;
    v190[1] = v90;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
  }

  v178 = v195[1];
  v179 = v195[0];
  (*(v82 + 8))(v77, v87);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D8);
  v92 = sub_24F178254();
  v93 = sub_24F09D94C();
  v94 = MEMORY[0x277CE1410];
  v95 = MEMORY[0x277CE1428];
  v96 = v156;
  v97 = v157;
  sub_24F925F58();
  sub_24E601704(v81, &qword_27F23AA00);
  v98 = v183;
  sub_24F170FA0();
  sub_24F1710FC();
  v190[0] = v97;
  v190[1] = v95;
  v190[2] = v95;
  v190[3] = v91;
  v190[4] = v92;
  v190[5] = v94;
  v190[6] = v94;
  v190[7] = v93;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v158;
  v101 = v161;
  sub_24F925F18();
  (*(v159 + 8))(v96, v101);
  v190[0] = v101;
  v190[1] = v99;
  v102 = swift_getOpaqueTypeConformance2();
  v104 = v163;
  v103 = v164;
  sub_24F925F88();
  (*(v160 + 8))(v100, v104);
  v105 = sub_24F926CE8();
  MEMORY[0x28223BE20](v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAC0);
  v190[0] = v104;
  v190[1] = v102;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = sub_24F09B68C();
  v182 = sub_24F178428();
  v109 = v181;
  sub_24F926B08();

  (*(v165 + 8))(v103, v109);
  v110 = v98 + *(v173 + 56);
  v111 = *(v110 + 8);
  v112 = *(v110 + 24);
  if (*(v110 + 32) == 1)
  {
    v113 = *(v110 + 24);
  }

  else
  {
    v114 = *v110;
    v177 = *(v110 + 16);
    v115 = v177;

    sub_24F92BDC8();
    v183 = v106;
    v116 = sub_24F9257A8();
    v178 = v108;
    v117 = v116;
    sub_24F921FD8();

    v118 = v138;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v114, v111, v115, v112, 0);
    v119 = *(v139 + 8);
    v179 = v107;
    v120 = v140;
    v119(v118, v140);

    sub_24F92BDC8();
    v121 = sub_24F9257A8();
    v106 = v183;
    sub_24F921FD8();

    v108 = v178;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v114, v111, v177, v112, 0);
    v122 = v120;
    v107 = v179;
    v119(v118, v122);
    v113 = *&v190[3];
  }

  v123 = -v113;
  v190[0] = v181;
  v190[1] = &type metadata for IsDebugShelfLayoutOverlayEnabled;
  v190[2] = v106;
  v190[3] = v107;
  v190[4] = v108;
  v190[5] = v182;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = v168;
  v126 = v171;
  v127 = v180;
  sub_24EB1EBF0(v124, v168, v123);
  (*(v170 + 8))(v127, v126);
  (*(v186 + 8))(v185, v184);
  v128 = sub_24F1786DC();
  v129 = v169;
  v130 = v172;
  sub_24E7896B8(v125, v172, v128);
  sub_24E601704(v125, &qword_27F23AA28);
  sub_24E7896B8(v129, v130, v128);
  return sub_24E601704(v129, &qword_27F23AA28);
}

uint64_t sub_24F17280C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v204 = a3;
  v212 = a1;
  v207 = a4;
  v208 = sub_24F929888();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v205 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB40);
  MEMORY[0x28223BE20](v173);
  v174 = (&v149 - v6);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B70);
  MEMORY[0x28223BE20](v180);
  v175 = &v149 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B88);
  MEMORY[0x28223BE20](v172);
  v171 = &v149 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB48);
  MEMORY[0x28223BE20](v177);
  v179 = &v149 - v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB50);
  MEMORY[0x28223BE20](v164);
  v165 = &v149 - v10;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B38);
  MEMORY[0x28223BE20](v178);
  v166 = &v149 - v11;
  v12 = sub_24F924218();
  v160 = *(v12 - 8);
  v161 = v12;
  MEMORY[0x28223BE20](v12);
  v158 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B58);
  MEMORY[0x28223BE20](v152);
  v150 = &v149 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B50);
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v151 = &v149 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB58);
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v149 - v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B48);
  MEMORY[0x28223BE20](v163);
  v154 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v162 = &v149 - v19;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB60);
  MEMORY[0x28223BE20](v183);
  v185 = &v149 - v20;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B28);
  MEMORY[0x28223BE20](v184);
  v176 = &v149 - v21;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE0);
  MEMORY[0x28223BE20](v188);
  v186 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v187 = &v149 - v24;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA80);
  v191 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v189 = &v149 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB68);
  v194 = *(v26 - 8);
  v195 = v26;
  MEMORY[0x28223BE20](v26);
  v192 = &v149 - v27;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA78);
  MEMORY[0x28223BE20](v190);
  v196 = &v149 - v28;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA58);
  MEMORY[0x28223BE20](v198);
  v197 = &v149 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AB70);
  v200 = *(v30 - 8);
  v201 = v30;
  MEMORY[0x28223BE20](v30);
  v199 = &v149 - v31;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA48);
  MEMORY[0x28223BE20](v202);
  v203 = &v149 - v32;
  v33 = sub_24F922348();
  v168 = *(v33 - 8);
  v169 = v33;
  MEMORY[0x28223BE20](v33);
  v167 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v35);
  v170 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v216 = (&v149 - v38);
  MEMORY[0x28223BE20](v39);
  v214 = &v149 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v149 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v149 - v45;
  v210 = type metadata accessor for ComponentHeightFactory.ComponentHeight();
  MEMORY[0x28223BE20](v210);
  v211 = (&v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v50 = (&v149 - v49);
  MEMORY[0x28223BE20](v51);
  v182 = &v149 - v52;
  v217 = *a2;
  v53 = *(v217 + 16);
  v213 = type metadata accessor for ShelfView.Grid(0);
  v54 = v213[5];
  v215 = a2;
  v181 = v54;
  sub_24E60169C(a2 + v54, v46, &unk_27F23A680);
  v55 = *(v35 + 48);
  sub_24E60169C(v46, v43, &unk_27F23A690);
  v209 = v35;
  v56 = *(v35 + 48);
  v57 = v55;
  sub_24E60169C(&v46[v55], &v43[v56], &unk_27F23A690);
  sub_24E601704(v43, &unk_27F23A680);
  if (v53 > 73)
  {
    if (v53 != 74)
    {
      v58 = v181;
      v59 = v182;
      if (v53 == 87 || v53 == 102)
      {
        *v50 = 0;
      }

      goto LABEL_12;
    }

    v60 = 0x407D200000000000;
LABEL_11:
    *v50 = v60;
    v58 = v181;
    v59 = v182;
    goto LABEL_12;
  }

  if (v53 == 11)
  {
    v60 = 0x4046000000000000;
    goto LABEL_11;
  }

  v58 = v181;
  v59 = v182;
  if (v53 == 58)
  {
    *v50 = 0x407D200000000000;
  }

LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_24F178C84(v50, v59, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  sub_24E601704(&v46[v57], &unk_27F23A690);
  sub_24E601704(v46, &unk_27F23A690);
  v61 = v213[6];
  memcpy(v228, v215 + v61, 0x188uLL);
  v62 = v211;
  sub_24F1765BC(v59, v211, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v69 = *v62;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v64 = v167;
    v65 = v168;
    v66 = v62;
    v67 = v169;
    (*(v168 + 32))(v167, v66, v169);
    sub_24E8B9768(v228, v227);
    sub_24F922308();
    v69 = v68;
    (*(v65 + 8))(v64, v67);
    sub_24F177548(v228);
LABEL_16:
    LODWORD(v211) = 0;
    v210 = v69;
    goto LABEL_18;
  }

  v210 = 0;
  LODWORD(v211) = 1;
LABEL_18:
  sub_24F17665C(v59, type metadata accessor for ComponentHeightFactory.ComponentHeight);
  v70 = v215;
  v71 = v214;
  sub_24E60169C(v215 + v58, v214, &unk_27F23A680);
  v72 = v209;
  v73 = (v71 + *(v209 + 48));
  memcpy(v227, v70 + v61, sizeof(v227));
  v74 = v213;
  v182 = v213[7];
  sub_24F9218B8();
  sub_24F9218C8();
  v75 = *(v70 + v74[11]);
  v76 = v71;
  v77 = v216;
  sub_24E60169C(v76, v216, &unk_27F23A690);
  v78 = v77 + *(v72 + 48);
  v213 = v73;
  sub_24E60169C(v73, v78, &unk_27F23A690);
  __swift_project_boxed_opaque_existential_1(&v224, *(&v225 + 1));
  *&v223[0] = swift_getDynamicType();
  *(&v223[0] + 1) = v226;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AA10);
  v79 = sub_24F92B188();
  if (qword_27F20FE48 != -1)
  {
    v147 = v79;
    v148 = v80;
    swift_once();
    v79 = v147;
    v80 = v148;
  }

  v81 = off_27F21A9F8;
  if (!*(off_27F21A9F8 + 2))
  {

    goto LABEL_28;
  }

  v82 = sub_24E76D644(v79, v80);
  v84 = v83;

  if ((v84 & 1) == 0 || !*(v81[7] + 16 * v82))
  {
LABEL_28:
    LOBYTE(v218) = *(v217 + 16);
    sub_24E615E00(&v224, &v218 + 8);
    switch(v218)
    {
      case 1u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        type metadata accessor for Lockup();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_41;
        }

        *(&v223[2] + 1) = type metadata accessor for GameLockup(0);
        *&v223[3] = sub_24F178F7C(&qword_27F216AD0, type metadata accessor for GameLockup);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v223[1]);

        sub_24E68E90C(v106, boxed_opaque_existential_1);
        type metadata accessor for GSKComponentContentBuilder();
        sub_24F178F7C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
        *&v223[0] = sub_24F923598();
        BYTE8(v223[0]) = v107 & 1;
        sub_24F0A10E8(v223, v165);
        swift_storeEnumTagMultiPayload();
        sub_24E66C1E0();
        sub_24E66C34C();
        v108 = v166;
        sub_24F924E28();
        sub_24E60169C(v108, v179, &qword_27F215B38);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();

        sub_24E601704(v108, &qword_27F215B38);
        sub_24E88F154(v223);
        break;
      case 0xDu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        type metadata accessor for RibbonBar();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_41;
        }

        *v174 = *&v223[0];
        swift_storeEnumTagMultiPayload();
        sub_24E66C544();
        sub_24E66C598();

        v104 = v175;
        sub_24F924E28();
        sub_24E60169C(v104, v179, &qword_27F215B70);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();

        sub_24E601704(v104, &qword_27F215B70);
        break;
      case 0x5Du:
        v90 = v152;
        v91 = v150;
        *&v150[*(v152 + 48)] = v75;
        *v91 = swift_getKeyPath();
        *(v91 + 8) = 0;
        v92 = *(v90 + 44);
        *(v91 + v92) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
        swift_storeEnumTagMultiPayload();
        v93 = qword_27F211238;

        if (v93 != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for MediaCard();
        __swift_project_value_buffer(v94, qword_27F39E520);
        v95 = sub_24E602068(&qword_27F215B60, &qword_27F215B58);
        v96 = v151;
        sub_24F921D38();
        sub_24E601704(v91, &qword_27F215B58);
        v97 = v158;
        sub_24F924208();
        *&v223[0] = v90;
        *(&v223[0] + 1) = v95;
        swift_getOpaqueTypeConformance2();
        v99 = v155;
        v98 = v156;
        sub_24F926AE8();
        (*(v160 + 8))(v97, v161);
        (*(v153 + 8))(v96, v99);
        KeyPath = swift_getKeyPath();
        v101 = *(v217 + 17);
        v102 = v176;
        if (v101 > 0x36)
        {
          if (v101 == 55 || v101 == 99)
          {
            v103 = 2;
LABEL_50:
            v115 = v154;
            (*(v157 + 32))(v154, v98, v159);
            v116 = v162;
            v117 = v115 + *(v163 + 36);
            *v117 = KeyPath;
            *(v117 + 8) = v103;
            sub_24E6009C8(v115, v116, &qword_27F215B48);
            sub_24E60169C(v116, v165, &qword_27F215B48);
            swift_storeEnumTagMultiPayload();
            sub_24E66C1E0();
            sub_24E66C34C();
            v118 = v166;
            sub_24F924E28();
            sub_24E60169C(v118, v179, &qword_27F215B38);
            swift_storeEnumTagMultiPayload();
            sub_24E66C2C0();
            sub_24E66C4B8();
            sub_24F924E28();
            sub_24E601704(v118, &qword_27F215B38);
            sub_24E601704(v116, &qword_27F215B48);
            break;
          }
        }

        else
        {
          v103 = 0;
          if (v101 == 1 || v101 == 54)
          {
            goto LABEL_50;
          }
        }

        v103 = 3;
        goto LABEL_50;
      default:
LABEL_41:
        v109 = v170;
        sub_24E60169C(v216, v170, &unk_27F23A680);
        v110 = *(v209 + 48);
        memcpy(v223, v227, 0x188uLL);
        v111 = v171;
        sub_24EC73A08(v217, v109, v109 + v110, v223, &v224, v75, v171);
        sub_24E601704(v109 + v110, &unk_27F23A690);
        sub_24E601704(v109, &unk_27F23A690);
        sub_24E60169C(v111, v174, &qword_27F215B88);
        swift_storeEnumTagMultiPayload();
        sub_24E66C544();
        sub_24E66C598();
        v112 = v175;
        sub_24F924E28();
        sub_24E60169C(v112, v179, &qword_27F215B70);
        swift_storeEnumTagMultiPayload();
        sub_24E66C2C0();
        sub_24E66C4B8();
        v102 = v176;
        sub_24F924E28();
        v113 = v112;
        v114 = v216;
        sub_24E601704(v113, &qword_27F215B70);
        sub_24E601704(v111, &qword_27F215B88);
        sub_24E601704(&v218, &qword_27F22C960);
LABEL_52:
        sub_24E60169C(v102, v185, &qword_27F215B28);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B00);
        sub_24E66C128();
        sub_24E66C234();
        v89 = v186;
        sub_24F924E28();
        sub_24E601704(v102, &qword_27F215B28);
        sub_24E601704(v114, &unk_27F23A680);
        __swift_destroy_boxed_opaque_existential_1(&v224);
        goto LABEL_53;
    }

    __swift_destroy_boxed_opaque_existential_1(&v218 + 8);
    v114 = v216;
    goto LABEL_52;
  }

  sub_24E615E00(&v224, &v219);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F178F7C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *&v218 = sub_24F923598();
  BYTE8(v218) = v85 & 1;
  v86 = swift_getKeyPath();
  v87 = *(v217 + 16);
  v88 = 3;
  if (v87 > 0x36)
  {
    v89 = v186;
    if (v87 == 55 || v87 == 99)
    {
      v88 = 2;
    }
  }

  else
  {
    v89 = v186;
    if (v87 == 1 || v87 == 54)
    {
      v88 = 0;
    }
  }

  v223[0] = v218;
  v223[1] = v219;
  v223[2] = v220;
  *&v223[3] = v221;
  *(&v223[3] + 1) = v86;
  LOBYTE(v223[4]) = v88;
  sub_24E60169C(v223, v185, &qword_27F215B00);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B00);
  sub_24E66C128();
  sub_24E66C234();
  sub_24F924E28();
  sub_24E601704(v223, &qword_27F215B00);
  sub_24E601704(v216, &unk_27F23A680);
  __swift_destroy_boxed_opaque_existential_1(&v224);
LABEL_53:
  v119 = v187;
  sub_24E6009C8(v89, v187, &qword_27F215AE0);
  sub_24E601704(v213, &unk_27F23A690);
  sub_24E601704(v214, &unk_27F23A690);
  v120 = sub_24F9218B8();
  MEMORY[0x28223BE20](v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE8);
  v122 = sub_24E66C09C();
  v123 = sub_24E6695B8();
  v124 = sub_24E66DAE0();
  v125 = v188;
  v126 = v189;
  sub_24F926B08();
  sub_24E601704(v119, &qword_27F215AE0);
  __swift_destroy_boxed_opaque_existential_1(v223);
  v127 = sub_24F926C28();
  v216 = &v149;
  MEMORY[0x28223BE20](v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D98);
  *&v223[0] = v125;
  *(&v223[0] + 1) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  *&v223[1] = v121;
  *(&v223[1] + 1) = v122;
  *&v223[2] = v123;
  *(&v223[2] + 1) = v124;
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F177F84();
  v129 = v192;
  v128 = v193;
  sub_24F926B08();

  (*(v191 + 8))(v126, v128);
  sub_24F927618();
  sub_24F9242E8();
  v130 = v196;
  (*(v194 + 32))(v196, v129, v195);
  v131 = (v130 + *(v190 + 36));
  v132 = v223[3];
  v133 = v223[5];
  v134 = v223[6];
  v131[4] = v223[4];
  v131[5] = v133;
  v131[6] = v134;
  v135 = v223[1];
  *v131 = v223[0];
  v131[1] = v135;
  v131[2] = v223[2];
  v131[3] = v132;
  sub_24F927618();
  sub_24F9238C8();
  v136 = v197;
  sub_24E6009C8(v130, v197, &qword_27F23AA78);
  v137 = (v136 + *(v198 + 36));
  v138 = v219;
  *v137 = v218;
  v137[1] = v138;
  v137[2] = v220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA60);
  sub_24F177D78();
  sub_24F09B68C();
  sub_24F178094();
  v139 = v199;
  sub_24F926B08();
  sub_24E601704(v136, &qword_27F23AA58);
  v140 = swift_getKeyPath();
  v141 = v203;
  v142 = &v203[*(v202 + 36)];
  v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388A0) + 28);
  v144 = sub_24F9218F8();
  (*(*(v144 - 8) + 16))(v142 + v143, v204, v144);
  *v142 = v140;
  (*(v200 + 32))(v141, v139, v201);
  *&v224 = 0;
  *(&v224 + 1) = 0xE000000000000000;
  v222[0] = *(v217 + 16);
  sub_24F92CA38();
  v224 = 0u;
  v225 = 0u;
  memset(v222, 0, sizeof(v222));
  v145 = v205;
  sub_24F929878();

  sub_24E601704(v222, &qword_27F2129B0);
  sub_24E601704(&v224, &qword_27F2129B0);
  sub_24F177C3C();
  sub_24F925EE8();
  (*(v206 + 8))(v145, v208);
  return sub_24E601704(v141, &qword_27F23AA48);
}