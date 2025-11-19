uint64_t sub_24F7C6C9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F7C6CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7C47AC(a1, v4, v5, v6);
}

uint64_t sub_24F7C6D90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7C6DF0()
{

  return swift_deallocObject();
}

uint64_t sub_24F7C6E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7C6EA8(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlayer.Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7C6FA4(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) = 1;
  v10 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_pageControlTimerDelegate;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate()) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) = 0;
  v11 = (v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_dragState);
  memset(v28, 0, 40);
  v28[40] = 1;
  *(v11 + 25) = *&v28[25];
  v12 = *&v28[16];
  *v11 = *v28;
  v11[1] = v12;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) = 0;
  v13 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v14 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2508C0);
  sub_24F923058();
  (*(v7 + 32))(v1 + v13, v9, v6);
  v15 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2508D0);
  sub_24F923058();
  (*(v3 + 32))(v1 + v15, v5, v2);
  v16 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v17 = *MEMORY[0x277CDFA88];
  v18 = sub_24F923F78();
  (*(*(v18 - 8) + 104))(v1 + v16, v17, v18);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = 0;
  v19 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions) = MEMORY[0x277D84FA0];
  v20 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
  v21 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_visibleHeaderHeight;
  *v21 = 0;
  *(v21 + 8) = 1;
  swift_beginAccess();
  v26 = 0;
  sub_24F923058();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) = &unk_2861C0A00;
  v22 = (v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
  *v22 = 2;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  *(v1 + 16) = v25;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F923098();

  sub_24F7C3EA0(v27, 1, v28, 0);
  sub_24F7C4598();
  return v1;
}

unint64_t LibraryPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F7C7514(uint64_t a1)
{
  v2 = sub_24F7C7AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7C7550(uint64_t a1)
{
  v2 = sub_24F7C7AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LibraryPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LibraryPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A20);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LibraryPageIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F7C7B8C(v13, v11, type metadata accessor for Player);
    sub_24F7C7B8C(v11, v12, type metadata accessor for LibraryPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F7C7988(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7C7AEC()
{
  result = qword_27F250A18;
  if (!qword_27F250A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A18);
  }

  return result;
}

uint64_t type metadata accessor for LibraryPageIntent()
{
  result = qword_27F250A28;
  if (!qword_27F250A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F7C7B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C7C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7C7C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F7C7D0C()
{
  result = qword_27F250A38;
  if (!qword_27F250A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A38);
  }

  return result;
}

unint64_t sub_24F7C7D64()
{
  result = qword_27F250A40;
  if (!qword_27F250A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A40);
  }

  return result;
}

unint64_t sub_24F7C7DBC()
{
  result = qword_27F250A48[0];
  if (!qword_27F250A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F250A48);
  }

  return result;
}

void sub_24F7C7E10()
{
  type metadata accessor for ASKBagContract();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalPlayerProvider();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ArcadeSubscription();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NetworkConnectionMonitor();
        if (v3 <= 0x3F)
        {
          sub_24F923648();
          if (v4 <= 0x3F)
          {
            sub_24E6C55A0();
            if (v5 <= 0x3F)
            {
              sub_24E654514();
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

uint64_t sub_24F7C7F3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

void *sub_24F7C800C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F7C8120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v75 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = v55 - v3;
  v70 = *(a1 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v69 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a1 + 16);
  v6 = v67;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0);
  v8 = *(a1 + 32);
  v66 = v8;
  v9 = sub_24F7CBA74();
  v81 = v6;
  v82 = v7;
  v83 = v8;
  v84 = v9;
  type metadata accessor for BaseShelfPageView();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20);
  v10 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24E667ED0();
  v96 = WitnessTable;
  v97 = v12;
  v94 = swift_getWitnessTable();
  v95 = WitnessTable;
  v93 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x277CE0790];
  v91 = v13;
  v92 = MEMORY[0x277CE0790];
  v89 = swift_getWitnessTable();
  v90 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_24E602068(&qword_27F250B28, &qword_27F250B20);
  v87 = v15;
  v88 = v16;
  v17 = swift_getWitnessTable();
  v81 = v10;
  v82 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = OpaqueTypeMetadata2;
  v81 = v10;
  v82 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v67;
  v81 = v67;
  v82 = OpaqueTypeMetadata2;
  v20 = v66;
  v83 = v66;
  v84 = OpaqueTypeConformance2;
  v21 = type metadata accessor for PageView();
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277D839B0];
  v81 = v21;
  v82 = MEMORY[0x277D839B0];
  v24 = MEMORY[0x277D839C8];
  v83 = v22;
  v84 = MEMORY[0x277D839C8];
  v25 = v22;
  v60 = v22;
  v26 = swift_getOpaqueTypeMetadata2();
  v55[2] = v26;
  v57 = sub_24E6A4C1C();
  v81 = &type metadata for GameOverlayViewPredicate;
  v82 = v57;
  v27 = swift_getOpaqueTypeConformance2();
  v59 = v27;
  v55[1] = v21;
  v81 = v21;
  v82 = v23;
  v83 = v25;
  v84 = v24;
  v56 = swift_getOpaqueTypeConformance2();
  v81 = v21;
  v82 = v76;
  v83 = v26;
  v84 = v25;
  v85 = v27;
  v86 = v56;
  v63 = MEMORY[0x277CE0E68];
  v64 = swift_getOpaqueTypeMetadata2();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55[0] = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v58 = v55 - v30;
  v31 = v72;
  sub_24F923628();
  v32 = v70;
  v33 = v69;
  v34 = v68;
  (*(v70 + 16))(v69, v31, v68);
  v35 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = *(v34 + 24);
  *(v36 + 2) = v19;
  *(v36 + 3) = v37;
  *(v36 + 4) = v20;
  (*(v32 + 32))(&v36[v35], v33, v34);
  swift_checkMetadataState();
  sub_24F6A9290();
  v71 = v38;
  v81 = v38;
  v82 = v39;
  v83 = v40;
  LOBYTE(v84) = v41 & 1;
  v42 = v73;
  sub_24F924B68();
  v77 = v19;
  v78 = v37;
  v79 = v20;
  v80 = v31;
  v43 = swift_checkMetadataState();
  v44 = swift_checkMetadataState();
  v45 = v56;
  v46 = v55[0];
  v47 = v76;
  v48 = v60;
  v49 = v59;
  sub_24F926B08();
  (*(v74 + 8))(v42, v47);

  swift_unknownObjectRelease();
  v81 = v43;
  v82 = v47;
  v83 = v44;
  v84 = v48;
  v85 = v49;
  v86 = v45;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v58;
  v52 = v64;
  sub_24E7896B8(v46, v64, v50);
  v53 = *(v65 + 8);
  v53(v46, v52);
  sub_24E7896B8(v51, v52, v50);
  return (v53)(v51, v52);
}

uint64_t sub_24F7C8960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v125 = a3;
  v91 = a1;
  v120 = a5;
  v119 = sub_24F929888();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v84 = a4;
  v122 = type metadata accessor for EditorialPageView();
  v126 = *(v122 - 8);
  v124 = *(v126 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0);
  v107 = v11;
  v106 = sub_24F7CBA74();
  *&v127 = a2;
  *(&v127 + 1) = v11;
  *&v128 = a4;
  *(&v128 + 1) = v106;
  v12 = type metadata accessor for BaseShelfPageView();
  v112 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v123 = (&v77 - v13);
  sub_24F924038();
  v93 = v12;
  sub_24F924E38();
  v14 = sub_24F926DC8();
  v114 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v108 = &v77 - v15;
  v92 = v14;
  v16 = sub_24F924038();
  v113 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v110 = &v77 - v17;
  v95 = v16;
  v18 = sub_24F924038();
  v115 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v109 = &v77 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20);
  v98 = v18;
  v20 = sub_24F924038();
  v116 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v111 = &v77 - v21;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_24E667ED0();
  v139 = WitnessTable;
  v140 = v23;
  v89 = WitnessTable;
  v137 = swift_getWitnessTable();
  v138 = WitnessTable;
  v136 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v24 = MEMORY[0x277CE0790];
  v134 = v90;
  v135 = MEMORY[0x277CE0790];
  v94 = swift_getWitnessTable();
  v132 = v94;
  v133 = v24;
  v25 = swift_getWitnessTable();
  v96 = v25;
  v26 = sub_24E602068(&qword_27F250B28, &qword_27F250B20);
  v130 = v25;
  v131 = v26;
  v102 = v20;
  v101 = swift_getWitnessTable();
  *&v127 = v20;
  *(&v127 + 1) = v101;
  v103 = MEMORY[0x277D7EDF8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v97 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v99 = &v77 - v29;
  v30 = v91;
  v31 = *(v91 + 40);
  v80 = *(v91 + 32);
  v79 = v31;
  v81 = *(v91 + 48);
  v32 = v84;
  v33 = v85;
  v78 = sub_24F923628();
  v34 = sub_24F9234D8();
  v35 = v100;
  (*(*(v34 - 8) + 56))(v100, 1, 1, v34);
  v36 = v126;
  v37 = *(v126 + 16);
  v87 = v126 + 16;
  v88 = v37;
  v38 = v121;
  v39 = v122;
  v37(v121, v30, v122);
  v86 = *(v36 + 80);
  v40 = (v86 + 40) & ~v86;
  v83 = v40;
  v41 = swift_allocObject();
  v42 = v125;
  *(v41 + 2) = v33;
  *(v41 + 3) = v42;
  *(v41 + 4) = v32;
  v82 = *(v36 + 32);
  v126 = v36 + 32;
  v82(&v41[v40], v38, v39);
  v43 = v33;
  v44 = v32;
  sub_24F06AF60(v35, sub_24F7CC4F4, v41, v123);
  v45 = v30;
  v46 = v30[1];
  v107 = *v30;
  v106 = v46;
  v47 = v30[3];
  v100 = v30[2];
  v78 = v47;
  v48 = sub_24F923628();
  v49 = v30[7];
  v50 = v30[8];
  v51 = v30[9];
  v52 = v30[10];
  LOBYTE(v41) = *(v45 + 88);
  *(&v128 + 1) = type metadata accessor for PageViewModelToolbarProvider();
  v129 = &off_286237370;
  v53 = swift_allocObject();
  *&v127 = v53;
  *(v53 + 16) = v48;
  *(v53 + 24) = v49;
  *(v53 + 32) = v50;
  *(v53 + 40) = v51;
  *(v53 + 48) = v52;
  *(v53 + 56) = v41;

  v54 = v108;
  v55 = v93;
  v56 = v123;
  sub_24F67B57C();
  (*(v112 + 8))(v56, v55);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v57 = v121;
  v58 = v122;
  v88(v121, v45, v122);
  v59 = v83;
  v60 = swift_allocObject();
  v61 = v125;
  *(v60 + 2) = v43;
  *(v60 + 3) = v61;
  *(v60 + 4) = v44;
  v82(&v60[v59], v57, v58);
  v62 = v110;
  v63 = v92;
  sub_24F926AA8();

  (*(v114 + 8))(v54, v63);
  v64 = v109;
  v65 = v95;
  sub_24F9261E8();
  (*(v113 + 8))(v62, v65);
  swift_getKeyPath();
  *&v127 = sub_24F927778();
  BYTE8(v127) = 0;
  v66 = v111;
  v67 = v98;
  sub_24F9261B8();

  (*(v115 + 8))(v64, v67);
  sub_24F7CA708(v58);
  v127 = 0u;
  v128 = 0u;
  v68 = v117;
  sub_24F929838();

  sub_24E601704(&v127, &qword_27F2129B0);
  v69 = v97;
  v70 = v102;
  v71 = v101;
  sub_24F925EE8();
  (*(v118 + 8))(v68, v119);
  (*(v116 + 8))(v66, v70);
  *&v127 = v70;
  *(&v127 + 1) = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v99;
  v74 = OpaqueTypeMetadata2;
  sub_24E7896B8(v69, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v75 = *(v105 + 8);
  v75(v69, v74);
  sub_24E7896B8(v73, v74, OpaqueTypeConformance2);
  return (v75)(v73, v74);
}

uint64_t sub_24F7C9680()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v0);
  sub_24E6A4C1C();
  sub_24F924B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08);
  swift_getOpaqueTypeConformance2();
  sub_24F7CBB40();
  sub_24F7CBBF8();
  return sub_24F927568();
}

uint64_t sub_24F7C9818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[2] = a3;
  v21[3] = a4;
  v21[1] = a2;
  v21[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B40);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250AF8);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = *(a1 + 24);
  swift_getKeyPath();
  v21[5] = v15;
  sub_24F7CBE34(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  if (*(v15 + 16) == 2)
  {
    *v14 = sub_24F924C88();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B48);
    sub_24F7C9B5C(a1, &v14[*(v16 + 44)]);
    v17 = &qword_27F250AF8;
    sub_24E60169C(v14, v11, &qword_27F250AF8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250AF0, &qword_27F250AF8);
    sub_24F7CBBF8();
    sub_24F924E28();
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for EditorialPageView();
    sub_24F7C9D7C(v19, v8);
    v17 = &qword_27F250B08;
    sub_24E60169C(v8, v11, &qword_27F250B08);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250AF0, &qword_27F250AF8);
    sub_24F7CBBF8();
    sub_24F924E28();
    v18 = v8;
  }

  return sub_24E601704(v18, v17);
}

uint64_t sub_24F7C9B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  v15 = type metadata accessor for EditorialPageView();
  sub_24F7C9D7C(v15, v14);
  sub_24F6A94D4(v8);
  sub_24E60169C(v14, v11, &qword_27F250B08);
  sub_24E60169C(v8, v5, &qword_27F229128);
  sub_24E60169C(v11, a2, &qword_27F250B08);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F250B50);
  sub_24E60169C(v5, a2 + *(v16 + 48), &qword_27F229128);
  sub_24E601704(v8, &qword_27F229128);
  sub_24E601704(v14, &qword_27F250B08);
  sub_24E601704(v5, &qword_27F229128);
  return sub_24E601704(v11, &qword_27F250B08);
}

uint64_t sub_24F7C9D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DefaultPageHeaderView();
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B30);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v49 - v8;
  v9 = type metadata accessor for GamesPageHeader();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B38);
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD88);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for GamesHeroCarousel();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v51 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 32);
  v20 = *(v2 + 48);
  v21 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = *(v22 + 8);
  v60 = *(v2 + 40);
  v61 = v19;
  v59 = v20;
  v58 = v23;
  sub_24F923628();
  v57 = *(v22 + 120);
  v24 = v57(v21, v22);
  swift_unknownObjectRelease();
  if (!v24)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_24E601704(v15, &qword_27F24AAA8);
    sub_24F923628();
    v37 = v57(v21, v22);
    swift_unknownObjectRelease();
    if (v37)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v40 = v64;
      sub_24F7CB8A0(AssociatedTypeWitness, AssociatedConformanceWitness, type metadata accessor for GamesPageHeader, v64);
      swift_unknownObjectRelease();
      if ((*(v62 + 48))(v40, 1, v63) != 1)
      {
        v41 = v40;
        v42 = v49;
        sub_24F7CC970(v41, v49, type metadata accessor for GamesPageHeader);
        v43 = v50;
        sub_24F7CC908(v42, v50, type metadata accessor for HeaderPresentation);
        v44 = type metadata accessor for HeaderPresentation(0);
        (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
        *(v43 + *(v5 + 20)) = 0;
        *(v43 + *(v5 + 24)) = 1;
        sub_24F7CC908(v43, v55, type metadata accessor for DefaultPageHeaderView);
        swift_storeEnumTagMultiPayload();
        v45 = sub_24EAB4870();
        v65 = &type metadata for GamesHeroCarouselComponent;
        v66 = v45;
        swift_getOpaqueTypeConformance2();
        sub_24F7CBE34(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView);
        sub_24F924E28();
        sub_24F7CC9D8(v43, type metadata accessor for DefaultPageHeaderView);
        v35 = type metadata accessor for GamesPageHeader;
        v36 = v42;
        goto LABEL_8;
      }
    }

    else
    {
      v40 = v64;
      (*(v62 + 56))(v64, 1, 1, v63);
    }

    sub_24E601704(v40, &qword_27F250B30);
    v46 = 1;
    goto LABEL_11;
  }

  v25 = v5;
  v26 = a2;
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v29 = v27;
  a2 = v26;
  v5 = v25;
  sub_24F7CB8A0(v29, v28, type metadata accessor for GamesHeroCarousel, v15);
  swift_unknownObjectRelease();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v30 = v51;
  sub_24F7CC970(v15, v51, type metadata accessor for GamesHeroCarousel);
  LOBYTE(v65) = 0;
  v31 = sub_24EAB4870();
  v32 = v52;
  sub_24F921D38();
  v33 = v53;
  v34 = v56;
  (*(v53 + 16))(v55, v32, v56);
  swift_storeEnumTagMultiPayload();
  v65 = &type metadata for GamesHeroCarouselComponent;
  v66 = v31;
  swift_getOpaqueTypeConformance2();
  sub_24F7CBE34(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView);
  sub_24F924E28();
  (*(v33 + 8))(v32, v34);
  v35 = type metadata accessor for GamesHeroCarousel;
  v36 = v30;
LABEL_8:
  sub_24F7CC9D8(v36, v35);
  v46 = 0;
LABEL_11:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B18);
  return (*(*(v47 - 8) + 56))(a2, v46, 1, v47);
}

uint64_t sub_24F7CA5F4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditorialPageView() + 72));
  v2 = *v1;
  v3 = *(v1 + 1);
  v10[0] = v2;
  v11 = v3;
  v12 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F48();
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v4 = off_27F229AB8;
  result = swift_beginAccess();
  v6 = v4[20];
  if (v6 != 2 && (v6 != 1 || v4[26] != 1))
  {
    v9 = sub_24EB6B1B0();
    if (*(v8 + 8) != 2)
    {
      *(v8 + 90) = 1;
    }

    return (v9)(v10, 0);
  }

  return result;
}

uint64_t sub_24F7CA708(uint64_t a1)
{
  v2 = 0x6964655F65676170;
  v3 = sub_24F928818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  sub_24F923628();
  v9 = (*(v8 + 120))(v7, v8);
  swift_unknownObjectRelease();
  if (v9)
  {
    *&v24[0] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_24F92AD48();
    swift_unknownObjectRelease();
    v10 = sub_24F9286C8();
    (*(v4 + 8))(v6, v3);
    if (v10)
    {
      if (*(v10 + 16) && (v11 = sub_24E76D644(0x644965676170, 0xE600000000000000), (v12 & 1) != 0))
      {
        sub_24E643A9C(*(v10 + 56) + 32 * v11, &v22);
        sub_24E612B0C(&v22, v24);
        *&v21 = 0;
        *(&v21 + 1) = 0xE000000000000000;
        if (*(v10 + 16) && (v13 = sub_24E76D644(0x6C725565676170, 0xE700000000000000), (v14 & 1) != 0))
        {
          sub_24E643A9C(*(v10 + 56) + 32 * v13, v20);

          sub_24E612B0C(v20, &v22);
        }

        else
        {
          v15 = MEMORY[0x277D837D0];

          v23 = v15;
          *&v22 = 0;
          *(&v22 + 1) = 0xE000000000000000;
        }

        sub_24F92CA38();
        __swift_destroy_boxed_opaque_existential_1(&v22);
        v22 = v21;
        strcpy(v20, "isArcade=true");
        HIWORD(v20[0]) = -4864;
        sub_24E600AEC();
        v16 = sub_24F92C5F8();

        *&v22 = 0;
        *(&v22 + 1) = 0xE000000000000000;
        sub_24F92C888();
        if (v16)
        {
          v17 = 0x800000024FA7E140;
          v18 = 0xD000000000000016;
        }

        else
        {
          v17 = 0xEF5F6C6169726F74;
          v18 = 0x6964655F65676170;
        }

        MEMORY[0x253050C20](v18, v17);
        sub_24F92CA38();
        v2 = v22;
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {
      }
    }
  }

  return v2;
}

uint64_t sub_24F7CAAA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v53 = a2;
  v52 = a1;
  v59 = a6;
  v57 = type metadata accessor for EditorialPageView();
  v55 = *(v57 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0);
  v10 = sub_24F7CBA74();
  *&v72 = a3;
  *(&v72 + 1) = v9;
  v11 = a3;
  v48 = a3;
  v73 = a5;
  v74 = v10;
  v12 = a5;
  v49 = a5;
  type metadata accessor for BaseShelfPageView();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20);
  v13 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_24E667ED0();
  v70 = WitnessTable;
  v71 = v15;
  v68 = swift_getWitnessTable();
  v69 = WitnessTable;
  v67 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x277CE0790];
  v65 = v16;
  v66 = MEMORY[0x277CE0790];
  v63 = swift_getWitnessTable();
  v64 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_24E602068(&qword_27F250B28, &qword_27F250B20);
  v61 = v18;
  v62 = v19;
  v20 = swift_getWitnessTable();
  *&v72 = v13;
  *(&v72 + 1) = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v72 = v13;
  *(&v72 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v72 = v11;
  *(&v72 + 1) = OpaqueTypeMetadata2;
  v73 = v12;
  v74 = OpaqueTypeConformance2;
  v23 = type metadata accessor for PageView();
  v50 = swift_getWitnessTable();
  *&v72 = v23;
  *(&v72 + 1) = MEMORY[0x277D839B0];
  v73 = v50;
  v74 = MEMORY[0x277D839C8];
  v51 = MEMORY[0x277CE0E30];
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v48 - v29;
  v31 = *(v52 + 2);
  v32 = *(v52 + 24);
  v72 = *v52;
  v73 = v31;
  LOBYTE(v74) = v32;
  v33 = v53;
  v34 = *(v53 + 24);
  swift_getKeyPath();
  v60 = v34;
  sub_24F7CBE34(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  LOBYTE(v60) = *(v34 + 16) < 2u;
  v35 = v55;
  v36 = v54;
  v37 = v57;
  (*(v55 + 16))(v54, v33, v57);
  v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 2) = v48;
  *(v39 + 3) = v40;
  *(v39 + 4) = v49;
  (*(v35 + 32))(&v39[v38], v36, v37);
  v41 = swift_checkMetadataState();
  v42 = MEMORY[0x277D839B0];
  v43 = v50;
  v44 = MEMORY[0x277D839C8];
  sub_24F926AB8();

  *&v72 = v41;
  *(&v72 + 1) = v42;
  v73 = v43;
  v74 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  sub_24E7896B8(v27, v24, v45);
  v46 = *(v25 + 8);
  v46(v27, v24);
  sub_24E7896B8(v30, v24, v45);
  return (v46)(v30, v24);
}

uint64_t sub_24F7CB0F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v10 = type metadata accessor for EditorialPageView();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  LOBYTE(a2) = *a2;
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a3, v10);
  sub_24F92B7F8();
  v18 = sub_24F92B7E8();
  v19 = (*(v11 + 80) + 57) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = v24;
  *(v20 + 56) = a2;
  (*(v11 + 32))(v20 + v19, v13, v10);
  sub_24EA998B8(0, 0, v16, &unk_24FA2B790, v20);
}

uint64_t sub_24F7CB31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 105) = a4;
  sub_24F92B7F8();
  *(v8 + 64) = sub_24F92B7E8();
  v10 = sub_24F92B778();
  *(v8 + 72) = v10;
  *(v8 + 80) = v9;

  return MEMORY[0x2822009F8](sub_24F7CB3BC, v10, v9);
}

uint64_t sub_24F7CB3BC()
{
  if (*(v0 + 105) == 1 && (v1 = *(v0 + 32), v2 = (v1 + *(type metadata accessor for EditorialPageView() + 72)), v3 = *v2, v4 = *(v2 + 1), *(v0 + 16) = v3, *(v0 + 24) = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220), sub_24F926F38(), (*(v0 + 104) & 1) == 0))
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E7F0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Network connectivity changed from offline to online for EditorialPage, refreshing", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v19 = *(v0 + 56);

    *(v0 + 88) = sub_24F923628();
    v18 = (*(v19 + 232) + **(v19 + 232));
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_24F7CB6FC;
    v16 = *(v0 + 56);
    v17 = *(v0 + 40);

    return v18(v17, v16);
  }

  else
  {

    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E7F0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Network connectivity changed but a refresh is not required.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_24F7CB6FC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24F7CB840, v3, v2);
}

uint64_t sub_24F7CB840()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24F7CB8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  result = ShelfBasedPage.shelves.getter(a1, a2);
  if (result >> 62)
  {
    v13 = result;
    v14 = sub_24F92C738();
    result = v13;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x253052270](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(result + 32);
  }

  v8 = *(v7 + 24);

  if (*(v8 + 16))
  {
    sub_24E615E00(v8 + 32, v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    v9 = a3(0);
    v10 = swift_dynamicCast();
    return (*(*(v9 - 8) + 56))(a4, v10 ^ 1u, 1, v9);
  }

LABEL_8:

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, 1, 1, v11);
}

unint64_t sub_24F7CBA74()
{
  result = qword_27F250AD8;
  if (!qword_27F250AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0);
    sub_24E6A4C1C();
    swift_getOpaqueTypeConformance2();
    sub_24F7CBB40();
    sub_24F7CBBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250AD8);
  }

  return result;
}

unint64_t sub_24F7CBB40()
{
  result = qword_27F250AE0;
  if (!qword_27F250AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AE8);
    sub_24E602068(&qword_27F250AF0, &qword_27F250AF8);
    sub_24F7CBBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250AE0);
  }

  return result;
}

unint64_t sub_24F7CBBF8()
{
  result = qword_27F250B00;
  if (!qword_27F250B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B08);
    sub_24F7CBC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250B00);
  }

  return result;
}

unint64_t sub_24F7CBC7C()
{
  result = qword_27F250B10;
  if (!qword_27F250B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B18);
    sub_24EAB4870();
    swift_getOpaqueTypeConformance2();
    sub_24F7CBE34(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250B10);
  }

  return result;
}

uint64_t sub_24F7CBD68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24F7CBD78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for EditorialPageView() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_24F7C8960(v7, v3, v4, v5, a1);
}

uint64_t sub_24F7CBE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7CBE7C(uint64_t a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for EditorialPageView() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_24F7CB0F4(a1, a2, v9, v5, v6, v7);
}

uint64_t sub_24F7CBF24()
{
  v1 = type metadata accessor for EditorialPageView();
  v2 = (*(*(v1 - 8) + 80) + 57) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_24F7CBD68(*(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F7CC0B0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(type metadata accessor for EditorialPageView() - 8);
  v8 = (*(v7 + 80) + 57) & ~*(v7 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24F7CB31C(a1, v9, v10, v11, v1 + v8, v5, v4, v6);
}

uint64_t sub_24F7CC1D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v8 = a1 + 16;
  v7 = *(a1 + 16);
  v6 = *(v8 + 8);
  if (!(*(v6 + 120))(v7, v6, v3))
  {
    v12 = type metadata accessor for GamesPageHeader();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
LABEL_5:
    sub_24E601704(v5, &qword_27F250B30);
    result = (*(v6 + 128))(v7, v6);
    if (v14)
    {
      return result;
    }

    return 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F7CB8A0(AssociatedTypeWitness, AssociatedConformanceWitness, type metadata accessor for GamesPageHeader, v5);
  swift_unknownObjectRelease();
  v11 = type metadata accessor for GamesPageHeader();
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    goto LABEL_5;
  }

  sub_24E601704(v5, &qword_27F250B30);
  return 0;
}

uint64_t sub_24F7CC3E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (sub_24F7CC1D8(a1) || v3 != 0xE000000000000000)
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {

    v5 = 3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_24F7CC490@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

uint64_t sub_24F7CC4F4()
{
  type metadata accessor for EditorialPageView();

  return sub_24F7C9680();
}

uint64_t sub_24F7CC5AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_89()
{
  v1 = type metadata accessor for EditorialPageView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80));

  sub_24F7CBD68(*(v2 + 32), *(v2 + 40), *(v2 + 48));

  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F7CC788()
{
  v1 = *(type metadata accessor for EditorialPageView() - 8);
  v2 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_24F7CA5F4(v2);
}

uint64_t sub_24F7CC818@<X0>(uint64_t a1@<X8>)
{
  sub_24EDC12D8();
  result = sub_24F924868();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24F7CC908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7CC970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7CC9D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7CCA38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F7CCA74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24F7CCABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F7CCB08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0);
  sub_24F7CBA74();
  type metadata accessor for BaseShelfPageView();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20);
  sub_24F924038();
  swift_getWitnessTable();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F250B28, &qword_27F250B20);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for PageView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F7CCE90@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

char *sub_24F7CCF38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F458);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  sub_24F923068();
  swift_endAccess();
  v6 = sub_24F929158();
  sub_24F928F28();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  v7 = objc_allocWithZone(type metadata accessor for GSKVideoPlaybackCoordinator());
  return sub_24E859354(v5, v2);
}

uint64_t sub_24F7CD0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250BE0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250BE8);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  type metadata accessor for GSKVideoPlaybackCoordinator();
  sub_24F7CD840();
  a4 &= 1u;
  v16 = sub_24F923628();
  v17 = sub_24F922F98();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250BF0);
  (*(*(v18 - 8) + 16))(v11, a1, v18);
  v19 = &v11[*(v9 + 36)];
  *v19 = v17;
  v19[1] = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  sub_24F7CD8B8(a2, a3, a4);
  v21 = sub_24F7CD8C8();
  v22 = MEMORY[0x277D84030];
  sub_24F925F28();

  sub_24F7CD9AC(v11);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  *(v23 + 32) = a4;
  sub_24F7CD8B8(a2, a3, a4);
  v30 = v9;
  v31 = v22;
  v32 = v21;
  v33 = MEMORY[0x277D84038];
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_24F926638();

  return (*(v28 + 8))(v15, v24);
}

void sub_24F7CD3C4(uint64_t a1)
{
  type metadata accessor for GSKVideoPlaybackCoordinator();
  sub_24F7CD840();
  v2 = sub_24F923628();
  v3 = OBJC_IVAR____TtC12GameStoreKit27GSKVideoPlaybackCoordinator_visibleVideoFrames;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_24F7CDA88(v4, a1);

  if ((v5 & 1) == 0)
  {
    v6 = *&v2[v3];
    *&v2[v3] = a1;

    sub_24E85B828(v6);

    sub_24E85E064();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (v7 != 1)
    {
      sub_24E85C800();
    }
  }
}

uint64_t sub_24F7CD504()
{
  v0 = sub_24F923608() & 1;
  result = sub_24F923608();
  if (v0 != (result & 1))
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24F7CD840();
    sub_24F923628();
    v2 = sub_24F923608();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v2 & 1) == 0)
    {
      if (v3)
      {
        sub_24E85C800();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

uint64_t View.videoPlaybackCoordinator(objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GSKAutoPlayVideoSettingsManager();
  sub_24F928F28();
  v6 = swift_allocObject();
  *(v6 + 16) = v8[0];
  *(v6 + 24) = a1;
  v8[0] = sub_24F7CD748;
  v8[1] = v6;
  v9 = 0;

  MEMORY[0x25304C420](v8, a2, &type metadata for VideoPlaybackCoordinatorViewModifier, a3);
}

uint64_t sub_24F7CD708()
{

  return swift_deallocObject();
}

uint64_t sub_24F7CD750()
{
  sub_24F924038();
  sub_24F7CD7B4();
  return swift_getWitnessTable();
}

unint64_t sub_24F7CD7B4()
{
  result = qword_27F250BD8;
  if (!qword_27F250BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250BD8);
  }

  return result;
}

unint64_t sub_24F7CD840()
{
  result = qword_27F2141F0;
  if (!qword_27F2141F0)
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2141F0);
  }

  return result;
}

void sub_24F7CD89C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_24F7CD8B8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t sub_24F7CD8C8()
{
  result = qword_27F250BF8;
  if (!qword_27F250BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250BE0);
    sub_24E602068(&qword_27F250C00, &qword_27F250BF0);
    sub_24E602068(&qword_27F250C08, &qword_27F250C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250BF8);
  }

  return result;
}

uint64_t sub_24F7CD9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm_1()
{
  sub_24F7CD89C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24F7CDA88(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
LABEL_9:
    while (1)
    {
      sub_24E65864C(*(a1 + 48) + 40 * (__clz(__rbit64(v6)) | (v9 << 6)), v15);
      v13[0] = v15[0];
      v13[1] = v15[1];
      v14 = v16;
      if (!*(a2 + 16))
      {
        break;
      }

      sub_24E76D934(v13);
      v11 = v10;
      result = sub_24E6585F8(v13);
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      v6 &= v6 - 1;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    sub_24E6585F8(v13);
LABEL_19:

    return 0;
  }

  else
  {
LABEL_14:
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v12 >= v7)
      {

        return 1;
      }

      v6 = *(a1 + 64 + 8 * v12);
      ++v9;
      if (v6)
      {
        v9 = v12;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24F7CDBE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250BE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250BE0);
  sub_24F7CD8C8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t FriendRequestsAndChallengesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for FriendRequestsAndChallengesShelfIntent()
{
  result = qword_27F250C30;
  if (!qword_27F250C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F7CDD80(uint64_t a1)
{
  v2 = sub_24F7CDF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7CDDBC(uint64_t a1)
{
  v2 = sub_24F7CDF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendRequestsAndChallengesShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250C18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7CDF9C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for FriendRequestsAndChallengesShelfIntent();
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F7CDF9C()
{
  result = qword_27F250C20;
  if (!qword_27F250C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C20);
  }

  return result;
}

uint64_t FriendRequestsAndChallengesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250C28);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FriendRequestsAndChallengesShelfIntent();
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7CDF9C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v11 = v17;
  v21 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v12;
  v20 = 1;
  sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  (*(v11 + 8))(v7, v19);
  sub_24E61C0A8(v5, v10 + *(v15 + 20));
  sub_24F7CE2D8(v10, v16, type metadata accessor for FriendRequestsAndChallengesShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F7CE340(v10);
}

uint64_t sub_24F7CE2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7CE340(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestsAndChallengesShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7CE400(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F7CE4C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F7CE578()
{
  result = qword_27F250C40;
  if (!qword_27F250C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C40);
  }

  return result;
}

unint64_t sub_24F7CE5D0()
{
  result = qword_27F250C48;
  if (!qword_27F250C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C48);
  }

  return result;
}

unint64_t sub_24F7CE628()
{
  result = qword_27F250C50;
  if (!qword_27F250C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C50);
  }

  return result;
}

uint64_t sub_24F7CE690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F7CE750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LeaveChallengeAction()
{
  result = qword_27F250C58;
  if (!qword_27F250C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7CE840()
{
  sub_24E6CFC68();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F7CE8D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250C68);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = v18 - v4;
  v6 = type metadata accessor for LeaveChallengeAction();
  MEMORY[0x28223BE20](v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7CEEB8();
  v22 = v5;
  v9 = v24;
  sub_24F92D108();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v6;
  v10 = v21;
  LOBYTE(v25) = 0;
  v11 = v8;
  *v8 = sub_24F92CC28();
  v8[1] = v12;
  v18[4] = v12;
  LOBYTE(v25) = 1;
  v8[2] = sub_24F92CC28();
  v8[3] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v28 = 2;
  v18[1] = sub_24EE076B8();
  v18[2] = v14;
  v18[3] = 0;
  sub_24F92CC68();
  v15 = v26;
  *(v11 + 32) = v25;
  *(v11 + 48) = v15;
  *(v11 + 64) = v27;
  v28 = 3;
  sub_24F92CC68();
  v16 = v26;
  *(v11 + 72) = v25;
  *(v11 + 88) = v16;
  *(v11 + 104) = v27;
  LOBYTE(v25) = 4;
  sub_24E862F10();
  sub_24F92CC68();
  (*(v10 + 8))(v22, v23);
  (*(v19 + 32))(v11 + *(v24 + 32), 0, v3);
  sub_24E80FC1C(v11, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F7CEF0C(v11);
}

uint64_t sub_24F7CED38()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x4173736563637573;
  v4 = 0x416572756C696166;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F7CEE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7CF080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7CEE28(uint64_t a1)
{
  v2 = sub_24F7CEEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7CEE64(uint64_t a1)
{
  v2 = sub_24F7CEEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F7CEEB8()
{
  result = qword_27F250C70;
  if (!qword_27F250C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C70);
  }

  return result;
}

uint64_t sub_24F7CEF0C(uint64_t a1)
{
  v2 = type metadata accessor for LeaveChallengeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F7CEF7C()
{
  result = qword_27F250C78;
  if (!qword_27F250C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C78);
  }

  return result;
}

unint64_t sub_24F7CEFD4()
{
  result = qword_27F250C80;
  if (!qword_27F250C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C80);
  }

  return result;
}

unint64_t sub_24F7CF02C()
{
  result = qword_27F250C88;
  if (!qword_27F250C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250C88);
  }

  return result;
}

uint64_t sub_24F7CF080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F7CF270(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ChallengeDetailDescription(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[15];

  return v16(v17, a2, v15);
}

uint64_t sub_24F7CF45C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChallengeDetailDescription(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[15];

  return v16(v17, a2, a2, v15);
}

void sub_24F7CF654()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F7D1130(319, &qword_27F249160, type metadata accessor for ChallengeDetail.Participant, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24F7D10E0(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChallengeDetailDescription(319);
        if (v3 <= 0x3F)
        {
          sub_24F7D1130(319, &qword_27F21C588, type metadata accessor for ButtonGroupItem, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_24F7D1130(319, &qword_27F21C740, type metadata accessor for JSColor, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24F7D10E0(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24E68857C(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
                if (v7 <= 0x3F)
                {
                  sub_24E68857C(319, &qword_27F215458, &qword_27F215460, &unk_24F942C00, MEMORY[0x277D21D28]);
                  if (v8 <= 0x3F)
                  {
                    sub_24F7D1130(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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

uint64_t sub_24F7CF908(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F7CF950(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    v7 = 0x4D747865746E6F63;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x75426E6F69746361;
    v9 = 0xD000000000000013;
    if (a1 == 7)
    {
      v9 = 0x756F72676B636162;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000014;
    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 == 1)
    {
      v4 = 0x7069636974726170;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F7CFAF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v36 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ChallengeDetailDescription(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250CB0);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for ChallengeDetailHero(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 52)];
  *&v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v48 = v20;
  sub_24E61DA68(&v50, v20, qword_27F21B590);
  v21 = v16[14];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v47 = v21;
  v49 = v18;
  v23(&v18[v21], 1, 1, v22);
  v24 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24F7D0B48();
  v44 = v15;
  v25 = v45;
  sub_24F92D108();
  if (v25)
  {
    v26 = v49;
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_24E601704(v48, qword_27F24EC90);
    return sub_24E601704(v26 + v47, &qword_27F215440);
  }

  else
  {
    v45 = v12;
    v37 = v6;
    v38 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v53 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v27 = v51;
    v28 = v49;
    *v49 = v50;
    v28[1] = v27;
    *(v28 + 4) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B90);
    v53 = 1;
    sub_24F69E684();
    sub_24F92CC68();
    *(v28 + 5) = v50;
    LOBYTE(v50) = 2;
    *(v28 + 6) = sub_24F92CC08();
    *(v28 + 56) = v29 & 1;
    LOBYTE(v50) = 3;
    *(v28 + 57) = sub_24F92CC38() & 1;
    LOBYTE(v50) = 4;
    *(v28 + 58) = sub_24F92CC38() & 1;
    LOBYTE(v50) = 5;
    sub_24F7CF908(&qword_27F250CC0, type metadata accessor for ChallengeDetailDescription);
    v30 = v45;
    sub_24F92CC68();
    sub_24F7D4C88(v30, v28 + v16[9], type metadata accessor for ChallengeDetailDescription);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
    v53 = 6;
    sub_24E79193C();
    sub_24F92CC68();
    *(v28 + v16[10]) = v50;
    type metadata accessor for JSColor();
    LOBYTE(v50) = 7;
    sub_24F7CF908(&qword_27F21C758, type metadata accessor for JSColor);
    v31 = v38;
    v45 = 0;
    sub_24F92CC18();
    sub_24E6009C8(v31, v28 + v16[11], &qword_27F21C728);
    v53 = 8;
    sub_24E688020();
    sub_24F92CC18();
    v32 = (v28 + v16[12]);
    v33 = v51;
    *v32 = v50;
    v32[1] = v33;
    v32[2] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v53 = 9;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v50, v48, qword_27F24EC90);
    LOBYTE(v50) = 10;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v37, v49 + v47, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v50) = 11;
    sub_24F7CF908(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    (*(v42 + 8))(v44, v43);
    v34 = v49;
    sub_24E6009C8(v40, v49 + v16[15], &qword_27F213E68);
    sub_24F7D4C20(v34, v39, type metadata accessor for ChallengeDetailHero);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F7D0B9C(v34, type metadata accessor for ChallengeDetailHero);
  }
}

uint64_t sub_24F7D0520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7D46A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7D0548(uint64_t a1)
{
  v2 = sub_24F7D0B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7D0584(uint64_t a1)
{
  v2 = sub_24F7D0B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7D05C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 56), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F7D06E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChallengeDetailHeroView(0);
  sub_24F7D4C20(a1, a2 + v4[10], type metadata accessor for ChallengeDetailHero);
  KeyPath = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  v6 = v4[8];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v7 = v4[9];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);

  return swift_storeEnumTagMultiPayload();
}

double sub_24F7D0818()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    return *(v0 + 72);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_24F7D0968()
{
  sub_24F47DC74();

  return sub_24F9218E8();
}

unint64_t sub_24F7D09F8()
{
  result = qword_27F250CA8;
  if (!qword_27F250CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250CA8);
  }

  return result;
}

unint64_t sub_24F7D0B48()
{
  result = qword_27F250CB8;
  if (!qword_27F250CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250CB8);
  }

  return result;
}

uint64_t sub_24F7D0B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7D0C20(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ChallengeDetailHero(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F7D0DB0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ChallengeDetailHero(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F7D0F30()
{
  sub_24F7D10E0(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F7D10E0(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F7D10E0(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24F7D1130(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24E68857C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ChallengeDetailHero(319);
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

void sub_24F7D10E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F7D1130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F7D11F8()
{
  v45 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24E69A5C4(0, &qword_27F220358);
  sub_24E890DCC();
  v2 = sub_24F92BAA8();

  v42[2] = 0;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v44 = MEMORY[0x277D84FA0];
    v2 = sub_24F92C6F8();
    for (i = sub_24F92C778(); i; i = sub_24F92C778())
    {
      v42[3] = i;
      swift_dynamicCast();
      v6 = v43;
      if ([v43 activationState])
      {

        continue;
      }

      v7 = v4[2];
      if (v4[3] <= v7)
      {
        sub_24ED84E38(v7 + 1);
      }

      v4 = v44;
      v8 = sub_24F92C3F8();
      v9 = v44 + 56;
      v10 = -1 << *(v44 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v44 + 56 + 8 * (v11 >> 6))) != 0)
      {
        v13 = __clz(__rbit64((-1 << v11) & ~*(v44 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_19;
      }

      v14 = 0;
      v15 = (63 - v10) >> 6;
      do
      {
        if (++v12 == v15 && (v14 & 1) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v16 = v12 == v15;
        if (v12 == v15)
        {
          v12 = 0;
        }

        v14 |= v16;
        v17 = *(v9 + 8 * v12);
      }

      while (v17 == -1);
      v13 = __clz(__rbit64(~v17)) + (v12 << 6);
LABEL_19:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v4[6] + 8 * v13) = v6;
      ++v4[2];
    }
  }

  else
  {
    v18 = *(v2 + 32);
    v19 = ((1 << v18) + 63) >> 6;
    if ((v18 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v41 = swift_slowAlloc();
        v4 = sub_24F7D4614(v41, v19, v2, sub_24F7D1784);

        MEMORY[0x2530542D0](v41, -1, -1);
        goto LABEL_37;
      }
    }

    v42[1] = v42;
    MEMORY[0x28223BE20](v3);
    v21 = v42 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v22 = 0;
    v23 = 0;
    v24 = 1 << *(v2 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v2 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_32:
      v31 = v28 | (v23 << 6);
      if (![*(*(v2 + 48) + 8 * v31) activationState])
      {
        *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          goto LABEL_36;
        }
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_49;
      }

      if (v23 >= v27)
      {
        break;
      }

      v30 = *(v2 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v26 = (v30 - 1) & v30;
        goto LABEL_32;
      }
    }

LABEL_36:
    v4 = sub_24F7A918C(v21, v19, v22, v2);
  }

LABEL_37:
  sub_24F0810F8(v4);
  v34 = v33;

  v2 = sub_24F081480(v34);

  if (v2 >> 62)
  {
    goto LABEL_52;
  }

  for (j = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24F92C738())
  {
    v36 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x253052270](v36, v2);
      }

      else
      {
        if (v36 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v37 = *(v2 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ([v37 isKeyWindow])
      {

        [v38 safeAreaInsets];
        goto LABEL_54;
      }

      ++v36;
      if (v39 == j)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

LABEL_53:

  v38 = 0;
LABEL_54:
  v40 = [objc_opt_self() currentDevice];
  [v40 userInterfaceIdiom];
}

uint64_t sub_24F7D17C0()
{
  v1 = sub_24F925218();
  v47 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = sub_24F924848();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v0;
  LODWORD(v16) = *(v0 + 8);
  v48 = v15;
  v49 = v19;
  v46 = v17;
  v50 = v0;
  if (v16 == 1)
  {
    v20 = *&v18;
  }

  else
  {

    sub_24F92BDC8();
    v21 = v1;
    v22 = v13;
    v23 = sub_24F9257A8();
    sub_24F921FD8();

    v13 = v22;
    v1 = v21;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    (*(v48 + 8))(v17, v14);
    v20 = v51;
  }

  type metadata accessor for ChallengeDetailHeroView(0);
  sub_24F769764(v13);
  v24 = v47;
  (*(v47 + 104))(v10, *MEMORY[0x277CE0558], v1);
  (*(v24 + 56))(v10, 0, 1, v1);
  v25 = *(v3 + 48);
  sub_24E60169C(v13, v5, &qword_27F215598);
  sub_24E60169C(v10, &v5[v25], &qword_27F215598);
  v26 = *(v24 + 48);
  if (v26(v5, 1, v1) == 1)
  {
    sub_24E601704(v10, &qword_27F215598);
    sub_24E601704(v13, &qword_27F215598);
    v27 = v26(&v5[v25], 1, v1);
    v29 = v49;
    v28 = v50;
    if (v27 == 1)
    {
      result = sub_24E601704(v5, &qword_27F215598);
      v31 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v43 = v13;
  v32 = v45;
  sub_24E60169C(v5, v45, &qword_27F215598);
  if (v26(&v5[v25], 1, v1) == 1)
  {
    sub_24E601704(v10, &qword_27F215598);
    sub_24E601704(v43, &qword_27F215598);
    (*(v24 + 8))(v32, v1);
    v29 = v49;
    v28 = v50;
LABEL_9:
    result = sub_24E601704(v5, &unk_27F254F20);
    v31 = 0;
    goto LABEL_11;
  }

  v33 = v44;
  (*(v24 + 32))(v44, &v5[v25], v1);
  sub_24F7CF908(&qword_27F215650, MEMORY[0x277CE0570]);
  v34 = v32;
  v31 = sub_24F92AFF8();
  v35 = *(v24 + 8);
  v35(v33, v1);
  sub_24E601704(v10, &qword_27F215598);
  sub_24E601704(v43, &qword_27F215598);
  v35(v34, v1);
  result = sub_24E601704(v5, &qword_27F215598);
  v29 = v49;
  v28 = v50;
LABEL_11:
  v36 = *(v28 + 24);
  v37 = *(v28 + 40);
  if (*(v28 + 48) == 1)
  {
    if (v31)
    {
      return result;
    }
  }

  else
  {
    v38 = *(v28 + 16);
    v39 = *(v28 + 32);

    sub_24F92BDC8();
    v40 = sub_24F9257A8();
    sub_24F921FD8();

    v41 = v46;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v38, v36, v39, v37, 0);
    result = (*(v48 + 8))(v41, v29);
    if (v31)
    {
      return result;
    }
  }

  v42 = 1580.0;
  if (v20 <= 1580.0)
  {
    v42 = v20;
  }

  return sub_24E6B00B4(v42);
}

uint64_t sub_24F7D1E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250CF8);
  MEMORY[0x28223BE20](v51);
  v4 = &v41 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D00);
  MEMORY[0x28223BE20](v46);
  v50 = &v41 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D08);
  MEMORY[0x28223BE20](v47);
  v8 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D10);
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v41 - v9;
  v10 = sub_24F924848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailHeroView(0);
  sub_24F769788(v17);
  v18 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    v19 = *(v2 + 56);
    if (*(v2 + 64) == 1)
    {
      if (*(v2 + 56) >= 4u)
      {
LABEL_4:
        *v8 = sub_24F9249A8();
        *(v8 + 1) = 0;
        v8[16] = 1;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D18);
        sub_24F7D2694(v2, &v8[*(v20 + 44)]);
        v21 = sub_24E6A4C1C();
        v22 = v42;
        v23 = sub_24F924B68();
        v41 = &v41;
        MEMORY[0x28223BE20](v23);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D20);
        v25 = sub_24E602068(&qword_27F250D28, &qword_27F250D08);
        v53 = &type metadata for GameOverlayViewPredicate;
        v54 = v21;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v40 = sub_24F7D4A7C();
        v27 = v44;
        v29 = v47;
        v28 = v48;
        sub_24F926B08();
        (*(v43 + 8))(v22, v28);
        sub_24E601704(v8, &qword_27F250D08);
        v30 = v45;
        v31 = v49;
        (*(v45 + 16))(v50, v27, v49);
        swift_storeEnumTagMultiPayload();
        v53 = v29;
        v54 = v28;
        v55 = v24;
        v56 = v25;
        v57 = OpaqueTypeConformance2;
        v58 = v40;
        swift_getOpaqueTypeConformance2();
        sub_24E602068(&qword_27F250D58, &qword_27F250CF8);
        sub_24F924E28();
        return (*(v30 + 8))(v27, v31);
      }
    }

    else
    {

      sub_24F92BDC8();
      v33 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v19, 0);
      (*(v11 + 8))(v13, v10);
      if (v53 >= 4u)
      {
        goto LABEL_4;
      }
    }
  }

  *v4 = sub_24F924C98();
  *(v4 + 1) = 0xC055000000000000;
  v4[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D60);
  sub_24F7D319C(v2, &v4[*(v34 + 44)]);
  sub_24E60169C(v4, v50, &qword_27F250CF8);
  swift_storeEnumTagMultiPayload();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250D20);
  v36 = sub_24E602068(&qword_27F250D28, &qword_27F250D08);
  v37 = sub_24E6A4C1C();
  v53 = &type metadata for GameOverlayViewPredicate;
  v54 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_24F7D4A7C();
  v53 = v47;
  v54 = v48;
  v55 = v35;
  v56 = v36;
  v57 = v38;
  v58 = v39;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F250D58, &qword_27F250CF8);
  sub_24F924E28();
  return sub_24E601704(v4, &qword_27F250CF8);
}

uint64_t sub_24F7D2694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D70);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_24F7D28E8(&v26 - v15);
  *v10 = sub_24F924C98();
  *(v10 + 1) = 0x4030000000000000;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D80);
  sub_24F7D34CC(a1, 1, &v10[*(v17 + 44)]);
  v18 = sub_24F925818();
  sub_24F7D11F8();
  sub_24F923318();
  v19 = &v10[*(v5 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_24E60169C(v16, v13, &qword_27F250D78);
  sub_24E60169C(v10, v7, &qword_27F250D70);
  sub_24E60169C(v13, a2, &qword_27F250D78);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D88);
  sub_24E60169C(v7, a2 + *(v24 + 48), &qword_27F250D70);
  sub_24E601704(v10, &qword_27F250D70);
  sub_24E601704(v16, &qword_27F250D78);
  sub_24E601704(v7, &qword_27F250D70);
  return sub_24E601704(v13, &qword_27F250D78);
}

uint64_t sub_24F7D28E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChallengeDetailHeroView(0);
  v4 = sub_24F7D377C(v1 + *(v3 + 40));
  v6 = v5;
  v8 = v7;
  sub_24E608A90(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80);
  sub_24F926F28();
  *(a1 + 88) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  *(a1 + 104) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = *(&v20 + 1);
  v9 = type metadata accessor for ChallengesSlashHeaderView(0);
  v10 = v9[10];
  *(a1 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *(a1 + v9[11]) = 0x4031000000000000;
  *(a1 + v9[12]) = 0x4020000000000000;
  v11 = (a1 + v9[13]);
  *v11 = 0xD000000000000017;
  v11[1] = 0x800000024FA453F0;
  *a1 = v4;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_24F927618();
  sub_24F9238C8();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DA0) + 36));
  *v12 = v19;
  v12[1] = v20;
  v12[2] = v21;
  v13 = sub_24F927618();
  v15 = v14;

  if ((v8 & 0x100) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D78);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v13;
  *(v18 + 16) = v15;
  return result;
}

uint64_t sub_24F7D2B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E60169C(a1, a3, &qword_27F250D08);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D40) + 36)) = 256;
  v5 = sub_24F927618();
  v7 = v6;
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D20) + 36);
  sub_24F7D2BC8(a2, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D50);
  v10 = (v8 + *(result + 36));
  *v10 = v5;
  v10[1] = v7;
  return result;
}

uint64_t sub_24F7D2BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DA8);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v49 - v4;
  v5 = type metadata accessor for ColorGroup();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSColor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C728);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = a1 + *(type metadata accessor for ChallengeDetailHeroView(0) + 40);
  v22 = type metadata accessor for ChallengeDetailHero(0);
  sub_24E60169C(v21 + *(v22 + 44), v14, &qword_27F21C728);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    (*(v6 + 56))(v20, 1, 1, v5);
  }

  else
  {
    sub_24F7D4C88(v14, v11, type metadata accessor for JSColor);
    if (qword_27F20FEE0 != -1)
    {
      swift_once();
    }

    ColorGrouping.colorGroup(for:)(*&v11[*(v8 + 24)]);
    sub_24F7D0B9C(v11, type metadata accessor for JSColor);
  }

  sub_24E60169C(v20, v17, &qword_27F2190D8);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    sub_24E601704(v20, &qword_27F2190D8);
    sub_24E601704(v17, &qword_27F2190D8);
    v23 = 1;
    v25 = v53;
    v24 = v54;
  }

  else
  {
    v26 = v50;
    sub_24F7D4C88(v17, v50, type metadata accessor for ColorGroup);
    v27 = *(v26 + *(v5 + 28));
    v28 = sub_24F927618();
    v30 = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DB0);
    v32 = v51;
    v33 = &v51[*(v31 + 36)];
    sub_24F926C88();
    v34 = sub_24F926D08();

    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F6F8) + 36);
    v36 = *MEMORY[0x277CE13B0];
    v37 = sub_24F927748();
    (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
    *v33 = v34;
    v38 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DB8) + 36));
    *v38 = v28;
    v38[1] = v30;
    *v32 = v27;

    LOBYTE(v28) = sub_24F9257F8();
    sub_24F923318();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_24E601704(v20, &qword_27F2190D8);
    sub_24F7D0B9C(v26, type metadata accessor for ColorGroup);
    v25 = v53;
    v47 = v32 + *(v53 + 36);
    *v47 = v28;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    v24 = v54;
    sub_24E6009C8(v32, v54, &qword_27F250DA8);
    v23 = 0;
  }

  return (*(v52 + 56))(v24, v23, 1, v25);
}

uint64_t sub_24F7D319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D70);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D78);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  sub_24F7D28E8(&v35 - v20);
  *v6 = sub_24F924C88();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D80);
  sub_24F7D34CC(a1, 0, &v6[*(v22 + 44)]);
  v23 = sub_24F9257F8();
  if (sub_24F7D0818() == 0.0)
  {
    sub_24F7D17C0();
  }

  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E6009C8(v6, v12, &qword_27F250D68);
  v32 = &v12[*(v7 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_24E6009C8(v12, v15, &qword_27F250D70);
  sub_24E60169C(v21, v18, &qword_27F250D78);
  sub_24E60169C(v15, v9, &qword_27F250D70);
  sub_24E60169C(v18, a2, &qword_27F250D78);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D88);
  sub_24E60169C(v9, a2 + *(v33 + 48), &qword_27F250D70);
  sub_24E601704(v15, &qword_27F250D70);
  sub_24E601704(v21, &qword_27F250D78);
  sub_24E601704(v9, &qword_27F250D70);
  return sub_24E601704(v18, &qword_27F250D78);
}

uint64_t sub_24F7D34CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D90);
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = a1 + *(type metadata accessor for ChallengeDetailHeroView(0) + 40);
  v11 = type metadata accessor for ChallengeDetailHero(0);
  sub_24F47DCC8();
  sub_24F921D38();
  v43 = *(v10 + *(v11 + 40));
  v12 = (v10 + *(v11 + 48));
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  v18 = v12[4];
  v17 = v12[5];
  v41 = v13;
  v37 = v18;
  v38 = v17;
  v35 = v16;
  v36 = v15;
  v34 = v14;
  if (v13)
  {
    v42 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v17;
  }

  else
  {
    v42 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v23 = *(v4 + 16);
  v39 = v9;
  v40 = v6;
  v24 = v46;
  v23(v6, v9, v46);
  v25 = v45;
  v23(v45, v6, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250D98);
  v27 = &v25[*(v26 + 48)];
  *v27 = v43;
  v27[8] = v44;
  v28 = &v25[*(v26 + 64)];
  v29 = v41;
  v30 = v42;
  *v28 = v42;
  v28[1] = v29;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;

  sub_24E68FE2C(v34, v29);

  sub_24E68FE2C(v30, v29);
  v31 = *(v4 + 8);
  v31(v39, v24);
  sub_24E687F7C(v30, v29);

  return (v31)(v40, v24);
}

uint64_t sub_24F7D377C(uint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v3 = &v48 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v48 - v5;
  v59 = type metadata accessor for ChallengeDetail.Participant(0);
  v6 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57) == 1)
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v67 = MEMORY[0x277D84F90];
      sub_24F457CC0(0, v10, 0);
      v11 = v67;
      v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v52 = *(v6 + 72);
      v13 = v53;
      do
      {
        v57 = v10;
        v14 = v58;
        sub_24F7D4C20(v12, v58, type metadata accessor for ChallengeDetail.Participant);
        v15 = v14 + *(v59 + 32);
        v56 = *v15;
        LODWORD(v55) = *(v15 + 8);
        v16 = *(v14 + 24);
        v54 = *(v14 + 16);

        sub_24F7D0B9C(v14, type metadata accessor for ChallengeDetail.Participant);
        v17 = type metadata accessor for PlayerAvatar.Overlay(0);
        v18 = *(*(v17 - 8) + 56);
        v19 = v60;
        v18(v60, 1, 1, v17);
        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v20 = (v13 + *(v50 + 20));
        v21 = type metadata accessor for PlayerAvatar(0);
        v22 = *(v21 + 20);
        v18(&v20[v22], 1, 1, v17);
        v23 = &v20[*(v21 + 24)];
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        *v23 = 0u;
        *(v23 + 16) = 0u;
        *(v23 + 32) = 0;
        sub_24E61DA68(&v61, v23, qword_27F21B590);
        *v20 = v54;
        *(v20 + 1) = v16;
        sub_24E61DA68(v19, &v20[v22], &qword_27F22DF80);
        v24 = v23;
        v13 = v53;
        sub_24E61DA68(&v64, v24, qword_27F21B590);
        *v13 = v56;
        *(v13 + 8) = v55;
        v67 = v11;
        v26 = *(v11 + 16);
        v25 = *(v11 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24F457CC0(v25 > 1, v26 + 1, 1);
          v11 = v67;
        }

        *(v11 + 16) = v26 + 1;
        sub_24F7D4C88(v13, v11 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v26, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
        v12 += v52;
        v10 = v57 - 1;
      }

      while (v57 != 1);
    }

    return sub_24EE90870(v11);
  }

  else
  {
    v27 = *(a1 + 56);
    v29 = *(a1 + 40);
    v28 = *(a1 + 48);
    v30 = *(v29 + 16);
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v49 = v28;
      LODWORD(v50) = v27;
      v67 = MEMORY[0x277D84F90];
      sub_24F457C3C(0, v30, 0);
      v31 = v67;
      v32 = v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v53 = *(v6 + 72);
      do
      {
        v56 = v31;
        v57 = v30;
        v33 = v58;
        sub_24F7D4C20(v32, v58, type metadata accessor for ChallengeDetail.Participant);
        v55 = &v3[*(v52 + 48)];
        v34 = *(v33 + 24);
        v54 = *(v33 + 16);
        v35 = type metadata accessor for PlayerAvatar.Overlay(0);
        v36 = *(*(v35 - 8) + 56);
        v37 = v60;
        v36(v60, 1, 1, v35);
        v38 = type metadata accessor for PlayerAvatar(0);
        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v39 = *(v38 + 20);
        v36(&v3[v39], 1, 1, v35);
        v40 = &v3[*(v38 + 24)];
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        *v40 = 0u;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0;

        sub_24E61DA68(&v61, v40, qword_27F21B590);
        *v3 = v54;
        *(v3 + 1) = v34;
        sub_24E61DA68(v37, &v3[v39], &qword_27F22DF80);
        sub_24E61DA68(&v64, v40, qword_27F21B590);
        v41 = v33 + *(v59 + 32);
        v42 = *v41;
        LOBYTE(v39) = *(v41 + 8);
        sub_24F7D0B9C(v33, type metadata accessor for ChallengeDetail.Participant);
        v43 = v55;
        *v55 = v42;
        v43[8] = v39;
        v31 = v56;
        v67 = v56;
        v45 = v56[2];
        v44 = v56[3];
        if (v45 >= v44 >> 1)
        {
          sub_24F457C3C(v44 > 1, v45 + 1, 1);
          v31 = v67;
        }

        v31[2] = v45 + 1;
        sub_24E6009C8(v3, v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v45, &qword_27F217C08);
        v32 += v53;
        v30 = v57 - 1;
      }

      while (v57 != 1);
      v27 = v50;
      v28 = v49;
    }

    v47 = sub_24F5289A8(v28, v27, v31, 4, 4);

    return v47;
  }
}

unint64_t sub_24F7D3F00()
{
  result = qword_27F250CE0;
  if (!qword_27F250CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250CE0);
  }

  return result;
}

unint64_t sub_24F7D3F58()
{
  result = qword_27F250CE8;
  if (!qword_27F250CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250CE8);
  }

  return result;
}

unint64_t sub_24F7D3FB0()
{
  result = qword_27F250CF0;
  if (!qword_27F250CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250CF0);
  }

  return result;
}

uint64_t sub_24F7D4004@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AC8);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231AD8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4030000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DD0);
  *&v36 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB68);
  sub_24E602068(&qword_27F21C600, &qword_27F21C5F0);
  sub_24EDBCFD0();
  sub_24F7CF908(&qword_27F21C610, type metadata accessor for ButtonGroupItem);
  sub_24F927238();
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v8, v11, &qword_27F231AF0);
  v13 = &v11[*(v9 + 36)];
  v14 = v41;
  *(v13 + 4) = v40;
  *(v13 + 5) = v14;
  *(v13 + 6) = v42;
  v15 = v37;
  *v13 = v36;
  *(v13 + 1) = v15;
  v16 = v39;
  *(v13 + 2) = v38;
  *(v13 + 3) = v16;
  v17 = sub_24EE53500();
  v18 = v26;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250DD8);
  v30 = v9;
  v31 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD0);
  v22 = sub_24EE535B8();
  v23 = v27;
  v30 = v27;
  v31 = &type metadata for IsDebugFocusOverlayEnabled;
  v32 = v21;
  v33 = OpaqueTypeConformance2;
  v34 = v20;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v28 + 8))(v18, v23);
  return sub_24E601704(v11, &qword_27F231AD8);
}

double sub_24F7D449C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v11 + 1) = type metadata accessor for ButtonGroupItem();
  v12 = sub_24F7CF908(&qword_27F21AAB0, type metadata accessor for ButtonGroupItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_24F7D4C20(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupItem);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F7CF908(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *&v9 = sub_24F923598();
  BYTE8(v9) = v5 & 1;
  sub_24F927618();
  sub_24F9238C8();
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  v7 = v14;
  *(a2 + 56) = v13;
  *(a2 + 72) = v7;
  result = *&v15;
  *(a2 + 88) = v15;
  return result;
}

void *sub_24F7D4614(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_24F57A8E0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_24F7D46A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77760 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA7E160 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA7E180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA7E1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x75426E6F69746361 && a2 == 0xED0000736E6F7474 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_24F7D4A7C()
{
  result = qword_27F250D30;
  if (!qword_27F250D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250D20);
    sub_24F7D4B34();
    sub_24E602068(&qword_27F250D48, &qword_27F250D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250D30);
  }

  return result;
}

unint64_t sub_24F7D4B34()
{
  result = qword_27F250D38;
  if (!qword_27F250D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250D40);
    sub_24E602068(&qword_27F250D28, &qword_27F250D08);
    sub_24E602068(&qword_27F2263F8, &qword_27F226400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250D38);
  }

  return result;
}

uint64_t sub_24F7D4C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7D4C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F7D4D04()
{
  result = qword_27F250DC0;
  if (!qword_27F250DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250D20);
    sub_24E602068(&qword_27F250D28, &qword_27F250D08);
    sub_24E6A4C1C();
    swift_getOpaqueTypeConformance2();
    sub_24F7D4A7C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F250D58, &qword_27F250CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250DC0);
  }

  return result;
}

uint64_t sub_24F7D4EC4()
{

  return swift_deallocObject();
}

uint64_t sub_24F7D4F08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD8);
  sub_24EE53500();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231AD0);
  sub_24EE535B8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F7D5098(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t Bag.metricsResettableTopics.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  if (qword_27F211878 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v4 = sub_24E9E2340(v7);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t Bag.isArcadeSupported.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-v2];
  if (qword_27F211880 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return v5[15];
}

uint64_t Bag.anonymousMetricsTopics.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - v2;
  if (qword_27F2108C8 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  v4 = *(*&v17[0] + 16);
  if (v4)
  {
    v5 = *&v17[0] + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      sub_24E643A9C(v5, v17);
      sub_24E612B0C(v17, v14);
      if (swift_dynamicCast())
      {
        v8 = v16;
        if (v16)
        {
          v9 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_24E615CF4(0, *(v6 + 2) + 1, 1, v6);
          }

          v11 = *(v6 + 2);
          v10 = *(v6 + 3);
          if (v11 >= v10 >> 1)
          {
            v6 = sub_24E615CF4((v10 > 1), v11 + 1, 1, v6);
          }

          *(v6 + 2) = v11 + 1;
          v7 = &v6[16 * v11];
          *(v7 + 4) = v9;
          *(v7 + 5) = v8;
        }
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = sub_24F45D828(v6);

  return v12;
}

uint64_t sub_24F7D56DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_24F92A428();
  sub_24F92A3F8();
  (*(v3 + 8))(v5, v2);
  if (!v9)
  {
    return 0;
  }

  v6 = sub_24E9E270C(v9);

  return v6;
}

uint64_t sub_24F7D581C()
{
  result = sub_24F92B098();
  qword_27F250DE0 = result;
  return result;
}

void sub_24F7D5878(uint64_t a1@<X8>)
{
  strcpy(a1, "xp_amp_gc_cs");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_24F7D589C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F93DE60;
  *(result + 56) = MEMORY[0x277D837D0];
  strcpy((result + 32), "xp_amp_gc_cs");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  *a1 = result;
  return result;
}

uint64_t sub_24F7D5918()
{
  result = sub_24F92B098();
  qword_27F250DE8 = result;
  return result;
}

uint64_t sub_24F7D5950()
{
  result = sub_24F92B098();
  qword_27F250DF0 = result;
  return result;
}

uint64_t sub_24F7D5988()
{
  result = sub_24F92B098();
  qword_27F250DF8 = result;
  return result;
}

uint64_t sub_24F7D59C0()
{
  result = sub_24F92B098();
  qword_27F250E00 = result;
  return result;
}

uint64_t sub_24F7D5A00()
{
  result = sub_24F92B098();
  qword_27F250E08 = result;
  return result;
}

uint64_t sub_24F7D5A50()
{
  result = sub_24F92B098();
  qword_27F250E10 = result;
  return result;
}

uint64_t sub_24F7D5AAC()
{
  result = sub_24F92B098();
  qword_27F250E18 = result;
  return result;
}

uint64_t sub_24F7D5B14()
{
  result = sub_24F92B098();
  qword_27F250E20 = result;
  return result;
}

uint64_t sub_24F7D5B84(uint64_t a1, void *a2)
{
  v2[3] = a1;
  v2[4] = *a2;
  v3 = type metadata accessor for OnDevicePersonalizationManager();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_24F7D5C40;

  return MEMORY[0x28217F228](v2 + 2, v3, v3);
}

uint64_t sub_24F7D5C40()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24F7D5FFC;
  }

  else
  {
    v2 = sub_24F7D5D54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7D5D54()
{
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  *(v0 + 8) = v1;
  *v1 = v0;
  v1[1] = sub_24F7D5E00;
  v2 = v0[4];

  return sub_24E66DCC8(v2);
}

uint64_t sub_24F7D5E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_24F7D5F98;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_24F7D5F28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F7D5F28()
{
  v1 = v0[10];
  v2 = v0[3];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_24F7D5F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7D6014(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v2[68] = *(type metadata accessor for GameSearchResultsTab(0) - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  v2[71] = swift_task_alloc();
  v2[72] = type metadata accessor for GameSearchResultsPageIntent();
  v2[73] = swift_task_alloc();
  v3 = type metadata accessor for GameSearchResultsPage(0);
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();
  sub_24F92B7F8();
  v2[77] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v2[78] = v5;
  v2[79] = v4;

  return MEMORY[0x2822009F8](sub_24F7D61DC, v5, v4);
}

uint64_t sub_24F7D61DC()
{
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E928);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[SRP] Fetching available segments for search results.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[67];

  v0[80] = *(v5 + 192);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v7 = swift_task_alloc();
  v0[81] = v7;
  *v7 = v0;
  v7[1] = sub_24F7D635C;

  return MEMORY[0x28217F228](v0 + 46, v6, v6);
}

uint64_t sub_24F7D635C()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 632);
  v4 = *(v2 + 624);
  if (v0)
  {
    v5 = sub_24F7D6C58;
  }

  else
  {
    v5 = sub_24F7D6478;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7D6478()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 536);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 368), v4);
  sub_24F7DE03C(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_player, v1, type metadata accessor for Player);
  v7 = v3[2];
  v6 = v3[3];
  *(v0 + 16) = v3[1];
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v8 = v3[7];
  v10 = v3[4];
  v9 = v3[5];
  *(v0 + 96) = v3[6];
  *(v0 + 112) = v8;
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  v11 = v3[11];
  v13 = v3[8];
  v12 = v3[9];
  *(v0 + 160) = v3[10];
  *(v0 + 176) = v11;
  *(v0 + 128) = v13;
  *(v0 + 144) = v12;
  v14 = *(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_friendsPlayingGames);
  memmove((v1 + *(v2 + 20)), v3 + 1, 0xB0uLL);
  *(v1 + *(v2 + 24)) = v14;
  sub_24E7B6680(v0 + 16, v0 + 192);

  v15 = swift_task_alloc();
  *(v0 + 664) = v15;
  v16 = sub_24F7DDFF4(&qword_27F21D3B8, type metadata accessor for GameSearchResultsPageIntent);
  *v15 = v0;
  v15[1] = sub_24F7D662C;
  v17 = *(v0 + 640);
  v18 = *(v0 + 608);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);

  return MEMORY[0x28217F4B0](v18, v19, v17, v20, v16, v4, v5);
}

uint64_t sub_24F7D662C()
{
  v2 = *v1;
  (*v1)[84] = v0;

  sub_24F7DE0A4(v2[73], type metadata accessor for GameSearchResultsPageIntent);
  v3 = v2[79];
  v4 = v2[78];
  if (v0)
  {
    v5 = sub_24F7D6D04;
  }

  else
  {
    v5 = sub_24F7D6794;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7D6794()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 568);
  v5 = *(v0 + 536);

  sub_24F7DE03C(v1, v4, type metadata accessor for GameSearchResultsPage);
  (*(v2 + 56))(v4, 0, 1, v3);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v0 + 504) = v5;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F228F60);
  swift_getKeyPath();
  *(v0 + 512) = v5;
  sub_24F91FD88();

  v7 = v5 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID;
  v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 8);
  v9 = *(v5 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 16);
  v10 = *(v5 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 24);
  *(v0 + 408) = *(v5 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID);
  *(v0 + 416) = v8;
  *(v0 + 424) = v9;
  *(v0 + 432) = v10;
  v11 = *(v1 + 16);
  v33 = *(v11 + 16);
  if (!v33)
  {

LABEL_12:
    v27 = *(v0 + 608);
    v25 = v27[1];
    if (v25)
    {
      v26 = *v27;
    }

    else
    {
      if (!*(v11 + 16))
      {
        v26 = 0;
        v25 = 0;
        goto LABEL_17;
      }

      v28 = *(*(v0 + 544) + 80);
      v29 = v11 + ((v28 + 32) & ~v28);
      v26 = *(v29 + 40);
      v25 = *(v29 + 48);
    }

LABEL_17:
    v30 = *(v0 + 528);
    *(v0 + 488) = v26;
    *(v0 + 496) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
    sub_24F927178();

    sub_24F7DE104(v27, v30, type metadata accessor for GameSearchResultsPage);
    __swift_destroy_boxed_opaque_existential_1(v0 + 368);

    v31 = *(v0 + 8);

    return v31();
  }

  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v32 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

  v15 = 0;
  while (v15 < *(v11 + 16))
  {
    v17 = *(v0 + 536);
    sub_24F7DE03C(v32 + *(v13 + 72) * v15, *(v0 + 552), type metadata accessor for GameSearchResultsTab);
    v19 = *(v12 + 40);
    v18 = *(v12 + 48);
    swift_getKeyPath();
    *(v0 + 520) = v17;
    sub_24F91FD88();

    v20 = *(v7 + 8);
    v21 = *(v7 + 16);
    *(v0 + 440) = *v7;
    *(v0 + 448) = v20;
    *(v0 + 456) = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F00);
    MEMORY[0x25304CAF0](v22);
    v23 = *(v0 + 480);
    if (v23)
    {
      if (v19 == *(v0 + 472) && v23 == v18)
      {

LABEL_10:
        v24 = *(v0 + 560);
        sub_24F7DE104(*(v0 + 552), v24, type metadata accessor for GameSearchResultsTab);
        v26 = *(v24 + 40);
        v25 = *(v24 + 48);

        sub_24F7DE0A4(v24, type metadata accessor for GameSearchResultsTab);
        v27 = *(v0 + 608);
        goto LABEL_17;
      }

      v16 = sub_24F92CE08();

      if (v16)
      {
        goto LABEL_10;
      }
    }

    ++v15;
    result = sub_24F7DE0A4(*(v0 + 552), type metadata accessor for GameSearchResultsTab);
    if (v33 == v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F7D6C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7D6D04()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 368);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7D6DB8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  return sub_24E60169C(v5 + v3, a1, &qword_27F228F60);
}

uint64_t sub_24F7D6E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = type metadata accessor for GameSearchResultsGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameSearchResultsTabContent(0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  swift_getKeyPath();
  v57 = v2;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__cachedSelectedGroup;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_24E76D644(v53, v54);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 16 * v21);

LABEL_26:

      return v23;
    }
  }

  v50 = v15;
  swift_getKeyPath();
  v56 = v3;
  sub_24F91FD88();

  v24 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v25 = *(v3 + v24);
  v26 = *(v25 + 16);
  v45 = v5;
  v46 = v7;
  if (v26)
  {

    v27 = sub_24E76D644(v53, v54);
    if (v28)
    {
      sub_24F7DE03C(*(v25 + 56) + *(v51 + 72) * v27, v18, type metadata accessor for GameSearchResultsTabContent);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 1;
  }

  v31 = v51;
  v30 = v52;
  v49 = *(v51 + 56);
  v49(v18, v29, 1, v52);
  v48 = *(v31 + 48);
  if (v48(v18, 1, v30))
  {
    sub_24E601704(v18, &qword_27F223250);
  }

  else
  {
    sub_24F7DE03C(v18, v12, type metadata accessor for GameSearchResultsTabContent);
    sub_24E601704(v18, &qword_27F223250);
    v23 = *(v12 + 1);
    v37 = *(v12 + 2);

    sub_24F7DE0A4(v12, type metadata accessor for GameSearchResultsTabContent);
    if (v37)
    {
      return v23;
    }
  }

  swift_getKeyPath();
  v55 = v3;
  sub_24F91FD88();

  v32 = *(v3 + v24);
  if (*(v32 + 16))
  {

    v33 = sub_24E76D644(v53, v54);
    v34 = v50;
    if (v35)
    {
      sub_24F7DE03C(*(v32 + 56) + *(v51 + 72) * v33, v50, type metadata accessor for GameSearchResultsTabContent);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }
  }

  else
  {
    v36 = 1;
    v34 = v50;
  }

  v38 = v36;
  v39 = v52;
  v49(v34, v38, 1, v52);
  if (v48(v34, 1, v39))
  {
    sub_24E601704(v34, &qword_27F223250);
  }

  else
  {
    v40 = v47;
    sub_24F7DE03C(v34, v47, type metadata accessor for GameSearchResultsTabContent);
    sub_24E601704(v34, &qword_27F223250);
    v41 = *v40;

    sub_24F7DE0A4(v40, type metadata accessor for GameSearchResultsTabContent);
    if (*(v41 + 16))
    {
      v42 = v46;
      sub_24F7DE03C(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v46, type metadata accessor for GameSearchResultsGroup);

      v23 = *v42;

      sub_24F7DE0A4(v42, type metadata accessor for GameSearchResultsGroup);
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_24F7D74C0(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for GameSearchResultsTabContent(0);
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for GameSearchResultsPage(0);
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250E78);
  v3[41] = swift_task_alloc();
  v6 = type metadata accessor for GameSearchResultsTab(0);
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223250);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_24F92B7F8();
  v3[48] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v3[49] = v8;
  v3[50] = v7;

  return MEMORY[0x2822009F8](sub_24F7D7730, v8, v7);
}

uint64_t sub_24F7D7730()
{
  v64 = v0;
  v1 = v0[33];
  swift_getKeyPath();
  v0[26] = v1;
  v0[51] = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel___observationRegistrar;
  v0[52] = sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  v0[53] = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[31];
    v4 = v0[32];

    v6 = sub_24E76D644(v5, v4);
    if (v7)
    {
      v8 = v6;
      v9 = v0[47];
      v10 = v0[34];
      v11 = v0[35];

      sub_24F7DE03C(*(v3 + 56) + *(v11 + 72) * v8, v9, type metadata accessor for GameSearchResultsTabContent);

      (*(v11 + 56))(v9, 0, 1, v10);
      sub_24E601704(v9, &qword_27F223250);
      if (qword_27F211448 != -1)
      {
        swift_once();
      }

      v12 = sub_24F9220D8();
      __swift_project_value_buffer(v12, qword_27F39E928);

      v13 = sub_24F9220B8();
      v14 = sub_24F92BD98();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_27;
      }

      v16 = v0[31];
      v15 = v0[32];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24E7620D4(v16, v15, &v63);
      v19 = "[SRP] Tab %s already have cached content. Skipped fetching.";
      goto LABEL_26;
    }
  }

  v20 = v0[47];
  v21 = v0[40];
  v22 = v0[38];
  v62 = v0[37];
  v23 = v0[34];
  v24 = v0[35];
  v25 = v0[33];
  v26 = *(v24 + 56);
  v0[54] = v26;
  v0[55] = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v20, 1, 1, v23);
  sub_24E601704(v20, &qword_27F223250);
  swift_getKeyPath();
  v0[27] = v25;
  sub_24F91FD88();

  v27 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  sub_24E60169C(v25 + v27, v21, &qword_27F228F60);
  if ((*(v22 + 48))(v21, 1, v62))
  {
    v28 = v0[42];
    v29 = v0[43];
    v31 = v0[40];
    v30 = v0[41];

    sub_24E601704(v31, &qword_27F228F60);
    (*(v29 + 56))(v30, 1, 1, v28);
    goto LABEL_23;
  }

  v32 = v0[39];
  v33 = v0[40];
  sub_24F7DE03C(v33, v32, type metadata accessor for GameSearchResultsPage);
  sub_24E601704(v33, &qword_27F228F60);
  v34 = *(v32 + 16);

  sub_24F7DE0A4(v32, type metadata accessor for GameSearchResultsPage);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = 0;
    v38 = v0[43];
    v37 = v0[44];
    while (v36 < *(v34 + 16))
    {
      v40 = v0[31];
      v39 = v0[32];
      sub_24F7DE03C(v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v0[44], type metadata accessor for GameSearchResultsTab);
      v41 = *(v37 + 40) == v40 && *(v37 + 48) == v39;
      if (v41 || (sub_24F92CE08() & 1) != 0)
      {
        v43 = v0[44];
        v44 = v0[41];

        sub_24F7DE104(v43, v44, type metadata accessor for GameSearchResultsTab);
        v42 = 0;
        goto LABEL_21;
      }

      ++v36;
      sub_24F7DE0A4(v0[44], type metadata accessor for GameSearchResultsTab);
      if (v35 == v36)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_19:

  v42 = 1;
LABEL_21:
  v45 = v0[42];
  v46 = v0[43];
  v47 = v0[41];
  (*(v46 + 56))(v47, v42, 1, v45);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {

LABEL_23:
    sub_24E601704(v0[41], &qword_27F250E78);
    if (qword_27F211448 == -1)
    {
LABEL_24:
      v48 = sub_24F9220D8();
      __swift_project_value_buffer(v48, qword_27F39E928);

      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();

      if (!os_log_type_enabled(v13, v14))
      {
LABEL_27:

        v51 = v0[1];

        return v51();
      }

      v50 = v0[31];
      v49 = v0[32];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24E7620D4(v50, v49, &v63);
      v19 = "[SRP] Not found tab %s from page.";
LABEL_26:
      _os_log_impl(&dword_24E5DD000, v13, v14, v19, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2530542D0](v18, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
      goto LABEL_27;
    }

LABEL_38:
    swift_once();
    goto LABEL_24;
  }

  sub_24F7DE104(v0[41], v0[45], type metadata accessor for GameSearchResultsTab);
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v53 = sub_24F9220D8();
  __swift_project_value_buffer(v53, qword_27F39E928);

  v54 = sub_24F9220B8();
  v55 = sub_24F92BD98();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = v0[31];
    v56 = v0[32];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_24E7620D4(v57, v56, &v63);
    _os_log_impl(&dword_24E5DD000, v54, v55, "[SRP] Fetching tab content for %s.", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x2530542D0](v59, -1, -1);
    MEMORY[0x2530542D0](v58, -1, -1);
  }

  v0[56] = *(v0[33] + 192);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v61 = swift_task_alloc();
  v0[57] = v61;
  *v61 = v0;
  v61[1] = sub_24F7D7FF8;

  return MEMORY[0x28217F228](v0 + 2, v60, v60);
}

uint64_t sub_24F7D7FF8()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F7D85D0;
  }

  else
  {
    v5 = sub_24F7D8134;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7D8134()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  sub_24E60169C(v1, v0 + 96, &qword_27F225D80);
  sub_24E612C80((v0 + 96), v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
  v7 = swift_task_alloc();
  *(v0 + 472) = v7;
  *v7 = v0;
  v7[1] = sub_24F7D824C;
  v8 = *(v0 + 448);
  v9 = *(v0 + 288);

  return MEMORY[0x28217F4B0](v9, v6, v8, v4, v5, v2, v3);
}

uint64_t sub_24F7D824C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F7D86BC;
  }

  else
  {
    v5 = sub_24F7D8388;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7D8388()
{
  v1 = v0[54];
  v2 = v0[46];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v9 = v0[31];
  v10 = v0[45];

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  sub_24F7DE03C(v3, v2, type metadata accessor for GameSearchResultsTabContent);
  v1(v2, 0, 1, v4);
  swift_getKeyPath();
  v0[28] = v5;

  sub_24F91FD88();

  v0[29] = v5;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24E989E14(v2, v9, v6);
  swift_endAccess();
  v0[30] = v5;
  swift_getKeyPath();
  sub_24F91FD98();

  sub_24F7DE0A4(v3, type metadata accessor for GameSearchResultsTabContent);
  sub_24F7DE0A4(v10, type metadata accessor for GameSearchResultsTab);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F7D85D0()
{
  v1 = *(v0 + 360);

  sub_24F7DE0A4(v1, type metadata accessor for GameSearchResultsTab);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F7D86BC()
{
  v1 = *(v0 + 360);

  sub_24F7DE0A4(v1, type metadata accessor for GameSearchResultsTab);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F7D87CC()
{
  swift_getKeyPath();
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  swift_beginAccess();
}

void sub_24F7D8884(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v40 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  swift_getKeyPath();
  *&v42[0] = v5;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);

  sub_24F91FD88();

  v17 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__groupStates;
  swift_beginAccess();
  v18 = *(v6 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_9;
  }

  v19 = sub_24E76D9B8(a1, a2, a3, a4);
  if ((v20 & 1) == 0)
  {

LABEL_9:
    v30 = type metadata accessor for PaginatedShelfContent();
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    sub_24E601704(v16, &qword_27F223258);
    v31 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_fetchGroupShelfTasks;
    swift_beginAccess();
    if (*(*(v6 + v31) + 16) && (sub_24E76D9B8(a1, a2, a3, a4), (v32 & 1) != 0))
    {
      swift_endAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
      sub_24F92B958();
    }

    else
    {
      swift_endAccess();
    }

    v33 = sub_24F92B858();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    sub_24EB3BA60(v40, v42);
    sub_24F92B7F8();

    v34 = sub_24F92B7E8();
    v35 = swift_allocObject();
    v36 = v42[1];
    *(v35 + 72) = v42[0];
    v37 = MEMORY[0x277D85700];
    *(v35 + 16) = v34;
    *(v35 + 24) = v37;
    *(v35 + 32) = a3;
    *(v35 + 40) = a4;
    *(v35 + 48) = a1;
    *(v35 + 56) = a2;
    *(v35 + 64) = v6;
    *(v35 + 88) = v36;
    *(v35 + 104) = v43;
    *(v35 + 112) = a1;
    *(v35 + 120) = a2;
    *(v35 + 128) = a3;
    *(v35 + 136) = a4;
    v38 = sub_24F1D3DA4(0, 0, v13, &unk_24FA2C6A0, v35);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v6 + v31);
    *(v6 + v31) = 0x8000000000000000;
    sub_24E81F3F8(v38, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *(v6 + v31) = v41;
    swift_endAccess();
    return;
  }

  v21 = v19;

  v22 = *(v18 + 56);
  v23 = type metadata accessor for PaginatedShelfContent();
  v24 = *(v23 - 8);
  sub_24F7DE03C(v22 + *(v24 + 72) * v21, v16, type metadata accessor for PaginatedShelfContent);

  (*(v24 + 56))(v16, 0, 1, v23);
  sub_24E601704(v16, &qword_27F223258);
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9220D8();
  __swift_project_value_buffer(v25, qword_27F39E928);

  v26 = sub_24F9220B8();
  v27 = sub_24F92BD98();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v42[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_24E7620D4(a3, a4, v42);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_24E7620D4(a1, a2, v42);
    _os_log_impl(&dword_24E5DD000, v26, v27, "[SRP] groupID %s, tab %s already have cached content. Skipped fetching.", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }
}

uint64_t sub_24F7D8E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v64 - v11;
  v12 = type metadata accessor for PaginatedShelfContent();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel___observationRegistrar;
  v76[0] = v5;
  v18 = sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);

  v66 = v18;
  v67 = v17;
  sub_24F91FD88();

  v19 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__groupStates;
  swift_beginAccess();
  v68 = a1;
  v69 = v5;
  v20 = *(v5 + v19);
  v21 = *(v20 + 16);
  v72 = a2;
  v70 = a3;
  if (v21)
  {

    v22 = sub_24E76D9B8(a1, a2, a3, a4);
    v23 = a4;
    if (v24)
    {
      v25 = v71;
      sub_24F7DE03C(*(v20 + 56) + *(v71 + 72) * v22, v16, type metadata accessor for PaginatedShelfContent);
      v26 = 0;
    }

    else
    {
      v26 = 1;
      v25 = v71;
    }
  }

  else
  {
    v26 = 1;
    v23 = a4;
    v25 = v71;
  }

  (*(v25 + 56))(v16, v26, 1, v12);
  if ((*(v25 + 48))(v16, 1, v12))
  {

    return sub_24E601704(v16, &qword_27F223258);
  }

  sub_24E60169C(&v16[*(v12 + 20)], &v74, &qword_27F216638);
  sub_24E601704(v16, &qword_27F223258);
  if (!v75)
  {

    if (!v75)
    {
      return result;
    }

    v55 = &v74;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  sub_24E612C80(&v74, v76);
  v28 = swift_allocBox();
  v30 = v29;
  swift_getKeyPath();
  v31 = v69;
  *&v74 = v69;
  sub_24F91FD88();

  v32 = *(v31 + v19);
  v33 = *(v32 + 16);

  v34 = v72;
  v35 = v68;
  if (!v33 || (v36 = sub_24E76D9B8(v68, v72, v70, v23), (v37 & 1) == 0))
  {

    swift_deallocBox();
    if (qword_27F211448 != -1)
    {
      swift_once();
    }

    v48 = sub_24F9220D8();
    __swift_project_value_buffer(v48, qword_27F39E928);

    v49 = sub_24F9220B8();
    v50 = sub_24F92BDB8();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v70;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v74 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_24E7620D4(v52, v23, &v74);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_24E7620D4(v35, v34, &v74);
      _os_log_impl(&dword_24E5DD000, v49, v50, "[SRP] It looks like search missing initial load for group %s, tab: %s. This is unexpected", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v54, -1, -1);
      MEMORY[0x2530542D0](v53, -1, -1);
    }

    v55 = v76;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v38 = v65;
  sub_24F7DE03C(*(v32 + 56) + *(v25 + 72) * v36, v65, type metadata accessor for PaginatedShelfContent);

  sub_24F7DE104(v38, v30, type metadata accessor for PaginatedShelfContent);
  v39 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_fetchGroupShelfTasks;
  v40 = v69;
  swift_beginAccess();
  v41 = v70;
  if (*(*(v40 + v39) + 16) && (sub_24E76D9B8(v35, v34, v70, v23), (v42 & 1) != 0))
  {
    swift_endAccess();

    if (qword_27F211448 != -1)
    {
      swift_once();
    }

    v43 = sub_24F9220D8();
    __swift_project_value_buffer(v43, qword_27F39E928);

    v44 = sub_24F9220B8();
    v45 = sub_24F92BDB8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v74 = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_24E7620D4(v41, v23, &v74);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_24E7620D4(v35, v34, &v74);
      _os_log_impl(&dword_24E5DD000, v44, v45, "[SRP] There are ongoing fetching task for group %s, tab %s. Skip this fetch.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v47, -1, -1);
      MEMORY[0x2530542D0](v46, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    v56 = sub_24F92B858();
    v57 = v64;
    (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
    sub_24E615E00(v76, &v74);
    sub_24F92B7F8();

    v58 = v69;

    v59 = sub_24F92B7E8();
    v60 = swift_allocObject();
    v61 = MEMORY[0x277D85700];
    v60[2] = v59;
    v60[3] = v61;
    v60[4] = v41;
    v60[5] = v23;
    v60[6] = v35;
    v60[7] = v34;
    v60[8] = v58;
    sub_24E612C80(&v74, (v60 + 9));
    v60[14] = v28;
    v60[15] = v35;
    v60[16] = v34;
    v60[17] = v41;
    v60[18] = v23;
    v62 = sub_24F1D3DA4(0, 0, v57, &unk_24FA2C670, v60);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v58 + v39);
    *(v58 + v39) = 0x8000000000000000;
    sub_24E81F3F8(v62, v35, v34, v41, v23, isUniquelyReferenced_nonNull_native);
    *(v58 + v39) = v73;
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_24F7D978C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__cachedSelectedGroup;
  swift_beginAccess();

  v5 = sub_24EBACE54(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
    sub_24F91FD78();
  }
}

void sub_24F7D98DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for GameSearchResultsPage(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_getKeyPath();
  v21 = v0;
  v22 = v4;
  v23 = v0;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F228F60);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_24E608BA4(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  v19 = v0;
  v20 = v7;
  v23 = v0;
  sub_24F91FD78();

  v8 = sub_24E608D8C(v6);
  swift_getKeyPath();
  v17 = v0;
  v18 = v8;
  v23 = v0;
  sub_24F91FD78();

  v9 = sub_24E608F94(v6);
  v10 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_fetchGroupShelfTasks;
  swift_beginAccess();
  *(v1 + v10) = v9;

  v11 = sub_24E6086DC(v6);
  sub_24F7D978C(v11);
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9220D8();
  __swift_project_value_buffer(v12, qword_27F39E928);
  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24E5DD000, v13, v14, "[SRP] Reset search results state", v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }
}

uint64_t sub_24F7D9C2C()
{
  swift_getKeyPath();
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID);

  return v1;
}

uint64_t sub_24F7D9D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_24F7D9D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F228F60);
}

uint64_t sub_24F7D9E64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F228F60);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F228F60);
}

uint64_t sub_24F7D9FB4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
  swift_beginAccess();
  sub_24F7DCF88(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24F7DA07C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD88();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_24F7DA1A8()
{
  swift_getKeyPath();
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);
  sub_24F91FD78();
}

uint64_t sub_24F7DA264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_24F7DA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v16;
  *(v8 + 264) = v15;
  *(v8 + 248) = v14;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 208) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258);
  *(v8 + 288) = swift_task_alloc();
  type metadata accessor for GSKShelf();
  *(v8 + 296) = swift_task_alloc();
  v9 = type metadata accessor for PaginatedShelfContent();
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  sub_24F92B7F8();
  *(v8 + 328) = sub_24F92B7E8();
  v11 = sub_24F92B778();
  *(v8 + 336) = v11;
  *(v8 + 344) = v10;

  return MEMORY[0x2822009F8](sub_24F7DA44C, v11, v10);
}

uint64_t sub_24F7DA44C()
{
  v15 = v0;
  if (sub_24F92B978())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_27F211448 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E928);

    v4 = sub_24F9220B8();
    v5 = sub_24F92BD98();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[28];
      v6 = v0[29];
      v9 = v0[26];
      v8 = v0[27];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_24E7620D4(v9, v8, &v14);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24E7620D4(v7, v6, &v14);
      _os_log_impl(&dword_24E5DD000, v4, v5, "[SRP] Fetching initial results for group: %s, tab: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v11, -1, -1);
      MEMORY[0x2530542D0](v10, -1, -1);
    }

    v0[44] = *(v0[30] + 192);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
    v13 = swift_task_alloc();
    v0[45] = v13;
    *v13 = v0;
    v13[1] = sub_24F7DA6F8;

    return MEMORY[0x28217F228](v0 + 2, v12, v12);
  }
}

uint64_t sub_24F7DA6F8()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_24F7DAD88;
  }

  else
  {
    v5 = sub_24F7DA834;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7DA834()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  sub_24E60169C(v1, v0 + 96, &qword_27F216698);
  sub_24E612C80((v0 + 96), v0 + 56);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  *v7 = v0;
  v7[1] = sub_24F7DA94C;
  v8 = *(v0 + 352);
  v9 = *(v0 + 320);

  return MEMORY[0x28217F4B0](v9, v6, v8, v4, v5, v2, v3);
}

uint64_t sub_24F7DA94C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_24F7DAE10;
  }

  else
  {
    v5 = sub_24F7DAA88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7DAA88()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  if (sub_24F92B978())
  {
    v1 = v0[40];
  }

  else
  {
    v3 = v0[39];
    v2 = v0[40];
    v5 = v0[37];
    v4 = v0[38];
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[33];
    v12 = v0[34];
    v13 = v0[32];
    v9 = v0[30];
    sub_24F7DAEA8(v2, v5);
    sub_24F7DE16C(v5, v2, type metadata accessor for GSKShelf);
    sub_24F7DE03C(v2, v6, type metadata accessor for PaginatedShelfContent);
    (*(v3 + 56))(v6, 0, 1, v4);
    swift_getKeyPath();
    v0[23] = v9;
    sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);

    sub_24F91FD88();

    v0[24] = v9;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24E98A7F0(v6, v13, v8, v12, v7);
    swift_endAccess();
    v0[25] = v9;
    swift_getKeyPath();
    sub_24F91FD98();

    swift_beginAccess();

    sub_24E989FE8(0, v13, v8, v12, v7);
    swift_endAccess();
    v1 = v2;
  }

  sub_24F7DE0A4(v1, type metadata accessor for PaginatedShelfContent);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F7DAD88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7DAE10()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7DAEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250E80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v9 = type metadata accessor for AppEventSearchCard();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a2;
  sub_24F7DE03C(a1, a2, type metadata accessor for GSKShelf);
  v13 = type metadata accessor for GSKShelf();
  v14 = *(v13 + 60);
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v87 = v13;
    v117[0] = MEMORY[0x277D84F90];
    sub_24F457A9C(0, v16, 0);
    v18 = v15 + 32;
    v19 = (v10 + 56);
    v17 = v117[0];
    v89 = xmmword_24F966510;
    v90 = v8;
    v92 = v12;
    v100 = (v10 + 56);
    while (1)
    {
      v101 = v18;
      sub_24E615E00(v18, v116);
      sub_24E615E00(v116, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      v20 = swift_dynamicCast();
      v21 = *v19;
      if (v20)
      {
        break;
      }

      v21(v8, 1, 1, v9);
      sub_24E601704(v8, &qword_27F250E80);
      sub_24E612C80(v116, &v107);
LABEL_13:
      sub_24E612C80(&v107, v111);
      v117[0] = v17;
      v57 = *(v17 + 16);
      v56 = *(v17 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_24F457A9C((v56 > 1), v57 + 1, 1);
      }

      v58 = *&v111[24];
      v59 = *&v111[32];
      v60 = __swift_mutable_project_boxed_opaque_existential_1(v111, *&v111[24]);
      v61 = MEMORY[0x28223BE20](v60);
      v63 = &v87 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v64 + 16))(v63, v61);
      sub_24ED8F474(v57, v63, v117, v58, v59);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v17 = v117[0];
      v19 = v100;
      v18 = v101 + 40;
      if (!--v16)
      {
        v14 = *(v87 + 60);
        goto LABEL_24;
      }
    }

    v98 = v17;
    v21(v8, 0, 1, v9);
    sub_24F7DE104(v8, v12, type metadata accessor for AppEventSearchCard);
    v22 = v12[v9[17]];
    v99 = v16;
    LODWORD(v97) = v22;
    if ((v22 & 1) == 0)
    {
      v23 = &v12[v9[16]];
      v25 = *v23;
      v24 = *(v23 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);

      sub_24F928EF8();
      if (v107)
      {
        v26 = *(&v107 + 1);
        ObjectType = swift_getObjectType();
        *&v107 = v25;
        *(&v107 + 1) = v24;
        (*(v26 + 56))(&v107, ObjectType, v26);
        v29 = v28;
        v30 = swift_getObjectType();
        (*(v29 + 16))(v111, v30, v29);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        *v111 = 4;
        memset(&v111[8], 0, 40);
        v112 = v89;
      }

      v110 = v112;
      v107 = *v111;
      v108 = *&v111[16];
      v109 = *&v111[32];
      v31 = v112 >> 60;
      if (v112 >> 60 != 3 && v31 != 2 && v31 != 7)
      {
        if (v31 != 8 || v110 != 0x8000000000000000 || v107 != 1 || (v65 = vorrq_s8(v108, v109), *&vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)) | *(&v107 + 1)))
        {
          sub_24E88D2AC(&v107);
          v66 = type metadata accessor for SearchCard();
          v114 = v66;
          v115 = sub_24F7DDFF4(&qword_27F219668, type metadata accessor for SearchCard);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v113);
          sub_24E60169C(v12, &v104, &qword_27F213F18);
          v68 = v106;
          v69 = v105;
          *boxed_opaque_existential_1 = v104;
          *(boxed_opaque_existential_1 + 1) = v69;
          boxed_opaque_existential_1[4] = v68;
          sub_24E60169C((v12 + 40), v102, qword_27F24EC90);
          v104 = v102[0];
          v105 = v102[1];
          v106 = v103;
          v70 = v91;
          sub_24E60169C(&v12[v9[6]], v91, &qword_27F215440);
          sub_24E68039C(v70, boxed_opaque_existential_1 + v66[6]);
          sub_24E60169C(&v12[v9[7]], boxed_opaque_existential_1 + v66[7], &qword_27F213E68);
          sub_24F7DE03C(&v12[v9[8]], boxed_opaque_existential_1 + v66[8], type metadata accessor for CommonCardAttributes);
          v71 = *&v12[v9[9]];
          v72 = *&v12[v9[10]];
          v73 = v9[12];
          v74 = &v12[v9[11]];
          v75 = *v74;
          LODWORD(v95) = v74[8];
          v76 = &v92[v73];
          v77 = *&v92[v73];
          v78 = *(v76 + 1);
          v96 = v75;
          v97 = v77;
          v79 = v9[14];
          v80 = &v92[v9[13]];
          v81 = *(v80 + 1);
          v94 = *v80;
          sub_24E60169C(&v92[v79], boxed_opaque_existential_1 + v66[14], &qword_27F213FB0);
          *(boxed_opaque_existential_1 + 7) = 0u;
          boxed_opaque_existential_1[9] = 0;
          *(boxed_opaque_existential_1 + 5) = 0u;

          sub_24E7D5870(&v104, (boxed_opaque_existential_1 + 5));
          *(boxed_opaque_existential_1 + v66[9]) = v71;
          *(boxed_opaque_existential_1 + v66[10]) = v72;
          v82 = boxed_opaque_existential_1 + v66[11];
          *v82 = v96;
          v82[8] = v95;
          v12 = v92;
          v83 = (boxed_opaque_existential_1 + v66[12]);
          *v83 = v97;
          v83[1] = v78;
          v84 = (boxed_opaque_existential_1 + v66[13]);
          *v84 = v94;
          v84[1] = v81;
          goto LABEL_12;
        }
      }

      sub_24E88D2AC(&v107);
    }

    v114 = v9;
    v115 = sub_24F7DDFF4(&qword_27F21AA90, type metadata accessor for AppEventSearchCard);
    v32 = __swift_allocate_boxed_opaque_existential_1(&v113);
    sub_24E60169C(v12, v111, &qword_27F213F18);
    v33 = *&v111[32];
    v34 = *&v111[16];
    *v32 = *v111;
    *(v32 + 1) = v34;
    v32[4] = v33;
    v35 = &v12[v9[15]];
    sub_24E60169C(v35 + 40, &v107, qword_27F24EC90);
    *v111 = v107;
    *&v111[16] = v108;
    *&v111[32] = v109.i64[0];
    v36 = v91;
    sub_24E60169C(&v12[v9[6]], v91, &qword_27F215440);
    sub_24E68039C(v36, v32 + v9[6]);
    sub_24E60169C(&v12[v9[7]], v32 + v9[7], &qword_27F213E68);
    v37 = type metadata accessor for AppEventCard(0);
    sub_24F7DE03C(v35 + *(v37 + 32), v32 + v9[8], type metadata accessor for CommonCardAttributes);
    v38 = *&v12[v9[9]];
    v39 = *&v12[v9[10]];
    v40 = v9[12];
    v41 = &v12[v9[11]];
    v42 = *v41;
    LODWORD(v94) = v41[8];
    v43 = &v12[v40];
    v44 = *&v12[v40];
    v45 = *(v43 + 1);
    v95 = v42;
    v96 = v44;
    v46 = v9[14];
    v47 = &v12[v9[13]];
    v48 = *(v47 + 1);
    v93 = *v47;
    sub_24E60169C(&v12[v46], v32 + v46, &qword_27F213FB0);
    sub_24F7DE03C(v35, v32 + v9[15], type metadata accessor for AppEventCard);
    v49 = &v12[v9[16]];
    v51 = *v49;
    v50 = *(v49 + 1);
    *(v32 + 7) = 0u;
    v32[9] = 0;
    *(v32 + 5) = 0u;

    sub_24E7D5870(v111, (v32 + 5));
    *(v32 + v9[9]) = v38;
    *(v32 + v9[10]) = v39;
    v52 = v32 + v9[11];
    *v52 = v95;
    v52[8] = v94;
    v53 = (v32 + v9[12]);
    *v53 = v96;
    v53[1] = v45;
    v54 = (v32 + v9[13]);
    *v54 = v93;
    v54[1] = v48;
    v55 = (v32 + v9[16]);
    *v55 = v51;
    v55[1] = v50;
    v12 = v92;
    *(v32 + v9[17]) = v97;
LABEL_12:
    sub_24F7DE0A4(v12, type metadata accessor for AppEventSearchCard);
    __swift_destroy_boxed_opaque_existential_1(v116);
    sub_24E612C80(&v113, &v107);
    v8 = v90;
    v17 = v98;
    v16 = v99;
    goto LABEL_13;
  }

LABEL_24:
  v85 = v88;

  *(v85 + v14) = v17;
  return result;
}

uint64_t sub_24F7DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v18;
  *(v8 + 320) = v19;
  *(v8 + 296) = v17;
  *(v8 + 280) = v15;
  *(v8 + 288) = v16;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 240) = a4;
  v9 = sub_24F92AA48();
  *(v8 + 328) = v9;
  *(v8 + 336) = *(v9 - 8);
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223258);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = type metadata accessor for GSKShelf();
  *(v8 + 368) = swift_task_alloc();
  v10 = type metadata accessor for PaginatedShelfContent();
  *(v8 + 376) = v10;
  *(v8 + 384) = *(v10 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_projectBox();
  sub_24F92B7F8();
  *(v8 + 408) = sub_24F92B7E8();
  v12 = sub_24F92B778();
  *(v8 + 416) = v12;
  *(v8 + 424) = v11;

  return MEMORY[0x2822009F8](sub_24F7DBACC, v12, v11);
}

uint64_t sub_24F7DBACC()
{
  v14 = v0;
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[54] = __swift_project_value_buffer(v1, qword_27F39E928);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[32];
    v4 = v0[33];
    v7 = v0[30];
    v6 = v0[31];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24E7620D4(v7, v6, &v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24E7620D4(v5, v4, &v13);
    _os_log_impl(&dword_24E5DD000, v2, v3, "[SRP] Fetching more results for group %s, tab %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v0[55] = *(v0[34] + 192);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_24F7DBD0C;

  return MEMORY[0x28217F228](v0 + 2, v10, v10);
}

uint64_t sub_24F7DBD0C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_24F7DC420;
  }

  else
  {
    v5 = sub_24F7DBE48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7DBE48()
{
  v1 = v0[35];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v7 = swift_task_alloc();
  v0[58] = v7;
  *v7 = v0;
  v7[1] = sub_24F7DBF38;
  v8 = v0[55];
  v9 = v0[49];

  return MEMORY[0x28217F4B0](v9, v6, v8, v4, v5, v2, v3);
}

uint64_t sub_24F7DBF38()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_24F7DC6F4;
  }

  else
  {
    v5 = sub_24F7DC074;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7DC074()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);

  sub_24F7DAEA8(v2, v3);
  sub_24F7DE16C(v3, v2, type metadata accessor for GSKShelf);
  swift_beginAccess();

  sub_24EA0AEC0(v5);
  sub_24E60169C(v2 + *(v4 + 20), v0 + 56, &qword_27F216638);
  v6 = v1 + *(v4 + 20);
  v7 = *(v0 + 80);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v7)
    {
LABEL_3:
      sub_24E612C80((v0 + 56), v6);
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  *(v6 + 32) = *(v0 + 88);
  *v6 = v8;
  *(v6 + 16) = v9;
LABEL_6:
  v10 = *(v0 + 400);
  v12 = *(v0 + 376);
  v11 = *(v0 + 384);
  v13 = *(v0 + 352);
  v14 = *(v0 + 320);
  v24 = *(v0 + 312);
  v25 = *(v0 + 392);
  v15 = *(v0 + 304);
  v23 = *(v0 + 296);
  v16 = *(v0 + 272);
  swift_endAccess();
  swift_beginAccess();
  sub_24F7DE03C(v10, v13, type metadata accessor for PaginatedShelfContent);
  (*(v11 + 56))(v13, 0, 1, v12);
  swift_getKeyPath();
  *(v0 + 216) = v16;
  sub_24F7DDFF4(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel);

  sub_24F91FD88();

  *(v0 + 224) = v16;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24E98A7F0(v13, v23, v15, v24, v14);
  swift_endAccess();
  *(v0 + 232) = v16;
  swift_getKeyPath();
  sub_24F91FD98();

  sub_24F7DE0A4(v25, type metadata accessor for PaginatedShelfContent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  swift_beginAccess();

  sub_24E989FE8(0, v20, v19, v18, v17);
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F7DC420()
{
  v25 = v0;

  v1 = v0[57];

  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v7 = v0[42];
    v6 = v0[43];
    v8 = v0[41];
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315394;
    swift_beginAccess();
    (*(v7 + 16))(v6, v5, v8);
    v10 = sub_24F92AA08();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = sub_24E7620D4(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v22 = v15;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[SRP] GSKShelf %s pagination fetch failed: %@", v9, 0x16u);
    sub_24E601704(v22, &qword_27F227B20);
    MEMORY[0x2530542D0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[39];
  v16 = v0[40];
  v19 = v0[37];
  v18 = v0[38];
  swift_beginAccess();

  sub_24E989FE8(0, v19, v18, v17, v16);
  swift_endAccess();

  v20 = v0[1];

  return v20();
}

uint64_t sub_24F7DC6F4()
{
  v25 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[59];

  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v7 = v0[42];
    v6 = v0[43];
    v8 = v0[41];
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v9 = 136315394;
    swift_beginAccess();
    (*(v7 + 16))(v6, v5, v8);
    v10 = sub_24F92AA08();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = sub_24E7620D4(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v22 = v15;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[SRP] GSKShelf %s pagination fetch failed: %@", v9, 0x16u);
    sub_24E601704(v22, &qword_27F227B20);
    MEMORY[0x2530542D0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[39];
  v16 = v0[40];
  v19 = v0[37];
  v18 = v0[38];
  swift_beginAccess();

  sub_24E989FE8(0, v19, v18, v17, v16);
  swift_endAccess();

  v20 = v0[1];

  return v20();
}

char *sub_24F7DC9D0()
{
  v1 = *(v0 + 10);
  v9[8] = *(v0 + 9);
  v9[9] = v1;
  v9[10] = *(v0 + 11);
  v2 = *(v0 + 6);
  v9[4] = *(v0 + 5);
  v9[5] = v2;
  v3 = *(v0 + 8);
  v9[6] = *(v0 + 7);
  v9[7] = v3;
  v4 = *(v0 + 2);
  v9[0] = *(v0 + 1);
  v9[1] = v4;
  v5 = *(v0 + 4);
  v9[2] = *(v0 + 3);
  v9[3] = v5;
  sub_24EB38BC8(v9);

  sub_24F7DE0A4(&v0[OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_player], type metadata accessor for Player);

  sub_24E601704(&v0[OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page], &qword_27F228F60);

  v6 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel___observationRegistrar;
  v7 = sub_24F91FDC8();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t sub_24F7DCB3C()
{
  sub_24F7DC9D0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchResultsPageViewModel()
{
  result = qword_27F250E58;
  if (!qword_27F250E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7DCBE8()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24F7DCD24();
    if (v1 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F7DCD24()
{
  if (!qword_27F250E68)
  {
    type metadata accessor for GameSearchResultsPage(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F250E68);
    }
  }
}

unint64_t sub_24F7DCD90()
{
  result = qword_27F250E70;
  if (!qword_27F250E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250E70);
  }

  return result;
}

uint64_t sub_24F7DCF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7DCFF8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_24F7DD068(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F7DB8E0(a1, v12, v4, v5, v6, v7, v8, v9);
}

void *sub_24F7DD17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = &v86 - v6;
  v96 = type metadata accessor for HeaderPresentation(0);
  v113 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v87 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v86 - v9;
  v94 = type metadata accessor for ComponentGrid();
  MEMORY[0x28223BE20](v94);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250E88);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v86 - v13;
  v14 = type metadata accessor for LockupCollectionSearchItem();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v114 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F92A708();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F92AA48();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GSKShelf();
  v99 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v86 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v93 = &v86 - v26;
  MEMORY[0x28223BE20](v27);
  v102 = &v86 - v28;
  MEMORY[0x28223BE20](v29);
  v115 = &v86 - v30;
  MEMORY[0x28223BE20](v31);
  v98 = &v86 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v86 - v34;
  sub_24F7DE03C(a1, &v86 - v34, type metadata accessor for GSKShelf);

  v111 = a3;
  sub_24F92A6F8();
  v107 = v18;
  sub_24F92AA18();
  v36 = *(v20 + 40);
  v104 = v22;
  v106 = v19;
  v105 = v20 + 40;
  v101 = v36;
  v36(v35, v22, v19);
  v37 = *(v23 + 60);

  v38 = MEMORY[0x277D84F90];
  *&v35[v37] = MEMORY[0x277D84F90];
  v103 = v23;
  v39 = *(v23 + 60);
  v109 = a1;
  v40 = *(a1 + v39);
  v41 = *(v40 + 16);
  v110 = v35;
  if (v41)
  {
    v42 = v40 + 32;
    v43 = (v100 + 7);
    v90 = (v113 + 48);
    v89 = xmmword_24F93DE60;
    v88 = xmmword_24F950E90;
    v44 = v38;
    v113 = v14;
    v92 = v37;
    v91 = (v100 + 7);
    do
    {
      sub_24E615E00(v42, v121);
      sub_24E615E00(v121, &v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      v48 = v108;
      v49 = swift_dynamicCast();
      v50 = *v43;
      if (v49)
      {
        v50(v48, 0, 1, v14);
        sub_24F7DE104(v48, v114, type metadata accessor for LockupCollectionSearchItem);
        if (*(*&v35[v37] + 16))
        {
          sub_24F7DE03C(v35, v98, type metadata accessor for GSKShelf);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_24E6186FC(0, v44[2] + 1, 1, v44);
          }

          v52 = v44[2];
          v51 = v44[3];
          if (v52 >= v51 >> 1)
          {
            v44 = sub_24E6186FC(v51 > 1, v52 + 1, 1, v44);
          }

          v44[2] = v52 + 1;
          sub_24F7DE104(v98, v44 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v52, type metadata accessor for GSKShelf);
        }

        v100 = v44;
        v53 = v115;
        sub_24F7DE03C(v109, v115, type metadata accessor for GSKShelf);

        sub_24F92A6F8();
        v54 = v104;
        sub_24F92AA18();
        v101(v53, v54, v106);
        v55 = v103;
        v56 = *(v103 + 60);

        v57 = v114;
        *(v115 + v56) = MEMORY[0x277D84F90];
        sub_24E60169C(v57, &v118, &qword_27F213F18);
        v58 = v119;
        *v11 = v118;
        *(v11 + 1) = v58;
        *(v11 + 4) = v120;
        sub_24E60169C(v57 + 40, v116, qword_27F24EC90);
        v118 = v116[0];
        v119 = v116[1];
        v120 = v117;
        v59 = v113;
        v60 = v95;
        sub_24E60169C(v57 + *(v113 + 24), v95, &qword_27F215440);
        v61 = v94;
        sub_24E68039C(v60, &v11[*(v94 + 24)]);
        sub_24E60169C(v57 + *(v59 + 28), &v11[v61[7]], &qword_27F213E68);
        v62 = *(v59 + 44);
        v63 = v55;
        v64 = v115;
        v65 = *(v57 + v62);
        *(v11 + 9) = 0;
        *(v11 + 56) = 0u;
        *(v11 + 40) = 0u;

        sub_24E7D5870(&v118, (v11 + 40));
        *&v11[v61[8]] = v65;
        v11[v61[9]] = 7;
        v11[v61[10]] = 0;
        v11[v61[11]] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
        v66 = swift_allocObject();
        *(v66 + 16) = v89;
        *(v66 + 56) = v61;
        *(v66 + 64) = sub_24F7DDFF4(&qword_27F21AB60, type metadata accessor for ComponentGrid);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v66 + 32));
        sub_24F7DE03C(v11, boxed_opaque_existential_1, type metadata accessor for ComponentGrid);
        *(v64 + v56) = v66;
        v68 = v64 + *(v63 + 44);
        *v68 = v88;
        *(v68 + 16) = 0x80;
        v69 = v97;
        sub_24E9D8F20(v97);
        if ((*v90)(v69, 1, v96) == 1)
        {
          sub_24E601704(v69, qword_27F220E38);
        }

        else
        {
          v74 = v69;
          v75 = v87;
          sub_24F7DE104(v74, v87, type metadata accessor for HeaderPresentation);
          sub_24F7DE16C(v75, v64 + *(v63 + 24), type metadata accessor for HeaderPresentation);
        }

        sub_24F7DE03C(v64, v102, type metadata accessor for GSKShelf);
        v76 = v100;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_24E6186FC(0, v76[2] + 1, 1, v76);
        }

        v78 = v76[2];
        v77 = v76[3];
        if (v78 >= v77 >> 1)
        {
          v76 = sub_24E6186FC(v77 > 1, v78 + 1, 1, v76);
        }

        v76[2] = v78 + 1;
        sub_24F7DE104(v102, v76 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v78, type metadata accessor for GSKShelf);
        v45 = v93;
        sub_24F7DE03C(v109, v93, type metadata accessor for GSKShelf);

        sub_24F92A6F8();
        v46 = v104;
        sub_24F92AA18();
        v101(v45, v46, v106);
        sub_24F7DE0A4(v114, type metadata accessor for LockupCollectionSearchItem);
        __swift_destroy_boxed_opaque_existential_1(v121);
        v47 = *(v103 + 60);

        *(v45 + v47) = MEMORY[0x277D84F90];
        sub_24F7DE0A4(v11, type metadata accessor for ComponentGrid);
        v35 = v110;
        sub_24F7DE0A4(v110, type metadata accessor for GSKShelf);
        v44 = v76;
        sub_24F7DE104(v45, v35, type metadata accessor for GSKShelf);
        sub_24F7DE0A4(v115, type metadata accessor for GSKShelf);
        v37 = v92;
        v43 = v91;
      }

      else
      {
        v50(v48, 1, 1, v14);
        sub_24E601704(v48, &qword_27F250E88);
        sub_24E615E00(v121, &v118);
        v70 = *&v35[v37];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_24E61710C(0, v70[2] + 1, 1, v70);
        }

        v72 = v70[2];
        v71 = v70[3];
        if (v72 >= v71 >> 1)
        {
          v70 = sub_24E61710C((v71 > 1), v72 + 1, 1, v70);
        }

        __swift_destroy_boxed_opaque_existential_1(v121);
        v70[2] = v72 + 1;
        sub_24E612C80(&v118, &v70[5 * v72 + 4]);
        v73 = v110;
        *&v110[v37] = v70;
        v35 = v73;
      }

      v42 += 40;
      --v41;
      v14 = v113;
    }

    while (v41);
    v38 = *&v35[v37];
  }

  else
  {
    v44 = v38;
  }

  v79 = v86;
  if (v38[2])
  {
    sub_24F7DE03C(v35, v86, type metadata accessor for GSKShelf);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_24E6186FC(0, v44[2] + 1, 1, v44);
    }

    v80 = v44;
    v81 = v44[2];
    v82 = v80;
    v83 = v80[3];
    if (v81 >= v83 >> 1)
    {
      v82 = sub_24E6186FC(v83 > 1, v81 + 1, 1, v82);
    }

    v82[2] = v81 + 1;
    v84 = v82 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v81;
    v44 = v82;
    sub_24F7DE104(v79, v84, type metadata accessor for GSKShelf);
    v35 = v110;
  }

  sub_24F7DE0A4(v35, type metadata accessor for GSKShelf);
  return v44;
}

uint64_t sub_24F7DDFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7DE03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7DE0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7DE104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7DE16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7DE1D4()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_24F7DE23C(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F7DA2D0(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_24F7DE3B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F7DE4FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingHeaderItem()
{
  result = qword_27F250E90;
  if (!qword_27F250E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7DE678()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F7DE7AC(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v2 <= 0x3F)
      {
        sub_24E61C8D4();
        if (v3 <= 0x3F)
        {
          sub_24F7DE7AC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F7DE7AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F7DE810(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7E1170();
  sub_24F92D128();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    sub_24F7E12F4(&qword_27F21BC30, &qword_27F213E28);
    sub_24F92CD48();
    type metadata accessor for FriendsPlayingHeaderItem();
    v10[14] = 2;
    type metadata accessor for Player(0);
    sub_24F7E1390(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v10[13] = 3;
    sub_24F92CD18();
    v10[12] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v10[11] = 5;
    sub_24F929608();
    sub_24F7E1390(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F7DEBD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v28 - v4;
  v31 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250EE0);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for FriendsPlayingHeaderItem();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 32)];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v35 = v14;
  sub_24E61DA68(&v38, v14, qword_27F21B590);
  v15 = v10[9];
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v37 = v15;
  v18 = v12;
  v17(&v12[v15], 1, 1, v16);
  v19 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F7E1170();
  v20 = v34;
  sub_24F92D108();
  if (v20)
  {
    v21 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E601704(v21, qword_27F24EC90);
    return sub_24E601704(&v12[v37], &qword_27F213E68);
  }

  else
  {
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v22 = v39;
    *v12 = v38;
    *(v12 + 1) = v22;
    *(v12 + 4) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v41 = 1;
    sub_24F7E12F4(&qword_27F2196A8, &qword_27F213E38);
    sub_24F92CC68();
    v23 = v32;
    v24 = v35;
    *(v12 + 5) = v38;
    LOBYTE(v38) = 2;
    sub_24F7E1390(&qword_27F213E38, type metadata accessor for Player);
    v25 = v34;
    v31 = 0;
    sub_24F92CC68();
    sub_24F7E11C4(v25, &v12[v10[6]], type metadata accessor for Player);
    LOBYTE(v38) = 3;
    v12[v10[7]] = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v41 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v38, v24, qword_27F24EC90);
    LOBYTE(v38) = 5;
    sub_24F7E1390(&qword_27F213F48, MEMORY[0x277D21F70]);
    v26 = v30;
    sub_24F92CC18();
    (*(v23 + 8))(v9, v33);
    sub_24E61DA68(v26, v18 + v37, &qword_27F213E68);
    sub_24F7E122C(v18, v29, type metadata accessor for FriendsPlayingHeaderItem);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F7E1294(v18, type metadata accessor for FriendsPlayingHeaderItem);
  }
}

unint64_t sub_24F7DF2F8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x5773646E65697266;
  if (v1 != 1)
  {
    v5 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F7DF3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7E0290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7DF3E4(uint64_t a1)
{
  v2 = sub_24F7E1170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7DF420(uint64_t a1)
{
  v2 = sub_24F7E1170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7DF4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_24F924218();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250EB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250EB8);
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - v9;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0x4038000000000000;
  v7[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250EC0);
  sub_24F7DF8A0(a1, &v7[*(v11 + 44)]);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  v13 = sub_24E602068(&qword_27F250EC8, &qword_27F250EB0);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F250EB0);
  if (*(a1 + *(type metadata accessor for FriendsPlayingHeaderItem() + 28)) == 1)
  {
    sub_24F924208();
    v14 = v20;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
    sub_24F7E1390(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
    v14 = v20;
    sub_24F92C6A8();
  }

  v21 = v5;
  v22 = v13;
  swift_getOpaqueTypeConformance2();
  v15 = v17;
  sub_24F926AE8();
  (*(v18 + 8))(v4, v14);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_24F7DF8A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D0D8);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v57 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250ED0);
  MEMORY[0x28223BE20](v66);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for OverlappingPlayerAvatarsView();
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = sub_24F7E0498(a1);
  v68 = 0x4010000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  *&v17[v15[5]] = v22;
  v23 = &v17[v15[6]];
  *v23 = 3;
  v23[8] = 0;
  v17[v15[7]] = 4;
  v24 = *MEMORY[0x277CDFA10];
  v25 = sub_24F923E98();
  (*(*(v25 - 8) + 104))(v14, v24, v25);
  sub_24F7E1390(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F7E1390(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView);
    v60 = v11;
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
    v59 = v21;
    sub_24F9263F8();
    sub_24E601704(v14, &qword_27F21CCC8);
    sub_24F7E1294(v17, type metadata accessor for OverlappingPlayerAvatarsView);
    v68 = sub_24F7E0EBC(a1);
    v69 = v27;
    sub_24E600AEC();
    v28 = sub_24F925E18();
    v30 = v29;
    v32 = v31;
    sub_24F925898();
    v33 = sub_24F925C98();
    v35 = v34;
    v58 = a1;
    v37 = v36;
    v39 = v38;

    sub_24E600B40(v28, v30, v32 & 1);

    v68 = v33;
    v69 = v35;
    v70 = v37 & 1;
    v71 = v39;
    v40 = v67;
    sub_24F9268B8();
    sub_24E600B40(v33, v35, v37 & 1);

    LODWORD(v39) = sub_24F9251C8();
    v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0) + 36));
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v43 = *MEMORY[0x277CE13B8];
    v44 = sub_24F927748();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    *v41 = v39;
    if (*(v58 + *(type metadata accessor for FriendsPlayingHeaderItem() + 28)))
    {
      v45 = 0.0;
    }

    else
    {
      v45 = 1.0;
    }

    v46 = v64;
    sub_24E6009C8(v40, v64, &qword_27F21D0D8);
    *(v46 + *(v66 + 36)) = v45;
    v47 = v60;
    sub_24E6009C8(v46, v60, &qword_27F250ED0);
    v49 = v62;
    v48 = v63;
    v50 = *(v63 + 16);
    v51 = v59;
    v52 = v65;
    v50(v62, v59, v65);
    v53 = v6;
    sub_24F7E1100(v47, v6);
    v54 = v61;
    v50(v61, v49, v52);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250ED8);
    sub_24F7E1100(v53, &v54[*(v55 + 48)]);
    sub_24E601704(v47, &qword_27F250ED0);
    v56 = *(v48 + 8);
    v56(v51, v52);
    sub_24E601704(v53, &qword_27F250ED0);
    return (v56)(v49, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F7DFF88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  sub_24F7E122C(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24F7E1390(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v18 = sub_24F927348();
  result = sub_24F7E1294(v7, MEMORY[0x277CDFBC8]);
  *(a1 + 40) = v18;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F7E0148()
{
  sub_24F47D790();

  return sub_24F9218E8();
}

unint64_t sub_24F7E01D8()
{
  result = qword_27F250EA8;
  if (!qword_27F250EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250EA8);
  }

  return result;
}

uint64_t sub_24F7E0290(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5773646E65697266 && a2 == 0xEE0079616C506F68 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA758C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F7E0498(uint64_t a1)
{
  v2 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v85 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Player(0);
  v84 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v12);
  v87 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  v17 = type metadata accessor for PlayerAvatarView(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - v22;
  v24 = type metadata accessor for FriendsPlayingHeaderItem();
  if (*(a1 + *(v24 + 28)) == 1)
  {
    v25 = type metadata accessor for PlayerAvatar.Overlay(0);
    v26 = *(*(v25 - 8) + 56);
    v26(v11, 1, 1, v25);
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v27 = *(v12 + 20);
    v26(&v16[v27], 1, 1, v25);
    v28 = &v16[*(v12 + 24)];
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    sub_24E61DA68(&v88, v28, qword_27F21B590);
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    sub_24E61DA68(v11, &v16[v27], &qword_27F22DF80);
    sub_24E61DA68(&v91, v28, qword_27F21B590);
    LOBYTE(v91) = 7;
    sub_24F8319B8(v16, &v91, v23);
    v29 = sub_24F92B618();
    *(v29 + 16) = 3;
    v30 = v29 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    sub_24F7E122C(v23, v30, type metadata accessor for PlayerAvatarView);
    v31 = *(v18 + 72);
    sub_24F7E122C(v23, v30 + v31, type metadata accessor for PlayerAvatarView);
    sub_24F7E11C4(v23, v30 + 2 * v31, type metadata accessor for PlayerAvatarView);
  }

  else
  {
    v32 = *(a1 + 40);
    v33 = *(v32 + 16);
    if (v33)
    {
      v75 = v8;
      v76 = v17;
      v79 = v12;
      v80 = v11;
      v94 = MEMORY[0x277D84F90];
      v86 = v33;
      sub_24F457C7C(0, v33, 0);
      v29 = v94;
      v34 = v32 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v74 = *(v84 + 72);
      v73 = (v85 + 56);
      v78 = v18;
      v77 = v2;
      v72 = v20;
      do
      {
        v84 = v34;
        v85 = v29;
        v35 = v81;
        sub_24F7E122C(v34, v81, type metadata accessor for Player);
        v36 = *(v35 + 24);
        v82 = *(v35 + 16);
        v37 = type metadata accessor for PlayerAvatar.Overlay(0);
        v38 = *(v37 - 8);
        v39 = *(v38 + 56);
        v40 = v80;
        v83 = v37;
        v39(v80, 1, 1, v37);
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v41 = v79;
        v42 = *(v79 + 20);
        v43 = v87;
        v39(v87 + v42, 1, 1, v37);
        v44 = v43 + *(v41 + 24);
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
        *v44 = 0u;
        *(v44 + 16) = 0u;
        *(v44 + 32) = 0;

        sub_24E61DA68(&v88, v44, qword_27F21B590);
        *v43 = v82;
        v43[1] = v36;

        sub_24E61DA68(v40, v43 + v42, &qword_27F22DF80);
        sub_24E61DA68(&v91, v44, qword_27F21B590);
        v45 = v72;
        sub_24F928948();
        sub_24F7E1294(v35, type metadata accessor for Player);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        v46 = v45;
        swift_storeEnumTagMultiPayload();
        v47 = v75;
        sub_24E60169C(v43 + v42, v75, &qword_27F22DF80);
        v48 = v76;
        v49 = *(v76 + 20);
        if ((*(v38 + 48))(v47, 1, v83) == 1)
        {
          sub_24E601704(v47, &qword_27F22DF80);
          v50 = 1;
          v51 = v77;
        }

        else
        {
          v52 = v71;
          sub_24F7E11C4(v47, v71, type metadata accessor for PlayerAvatar.Overlay);
          v51 = v77;
          v53 = v52 + *(v77 + 20);
          *v53 = 0;
          *(v53 + 8) = 1;
          v54 = (v52 + *(v51 + 24));
          *v54 = 0;
          v54[1] = 0;
          sub_24F7E11C4(v52, v46 + v49, type metadata accessor for PlayerAvatarView.Overlay);
          v50 = 0;
        }

        (*v73)(v46 + v49, v50, 1, v51);
        v55 = v46 + *(v48 + 24);
        sub_24E60169C(v44, &v91, qword_27F24EC90);
        sub_24F7E1294(v87, type metadata accessor for PlayerAvatar);
        v56 = v92;
        *v55 = v91;
        *(v55 + 16) = v56;
        *(v55 + 32) = v93;
        *(v46 + *(v48 + 28)) = 7;
        v29 = v85;
        v94 = v85;
        v58 = *(v85 + 16);
        v57 = *(v85 + 24);
        v59 = v78;
        if (v58 >= v57 >> 1)
        {
          sub_24F457C7C(v57 > 1, v58 + 1, 1);
          v29 = v94;
        }

        *(v29 + 16) = v58 + 1;
        sub_24F7E11C4(v46, v29 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, type metadata accessor for PlayerAvatarView);
        v34 = v84 + v74;
        --v86;
      }

      while (v86);
    }

    else
    {
      v60 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213848);
      v61 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_24F93DE60;
      v63 = a1 + *(v60 + 24);
      v64 = *(v63 + 24);
      v87 = *(v63 + 16);
      v65 = type metadata accessor for PlayerAvatar.Overlay(0);
      v66 = *(*(v65 - 8) + 56);
      v66(v11, 1, 1, v65);
      v93 = 0;
      v91 = 0u;
      v92 = 0u;
      v67 = *(v12 + 20);
      v66(&v16[v67], 1, 1, v65);
      v68 = &v16[*(v12 + 24)];
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      *v68 = 0u;
      *(v68 + 16) = 0u;
      *(v68 + 32) = 0;

      sub_24E61DA68(&v88, v68, qword_27F21B590);
      *v16 = v87;
      *(v16 + 1) = v64;
      sub_24E61DA68(v11, &v16[v67], &qword_27F22DF80);
      v29 = v62;
      sub_24E61DA68(&v91, v68, qword_27F21B590);
      LOBYTE(v91) = 7;
      sub_24F8319B8(v16, &v91, v62 + v61);
    }
  }

  return v29;
}

uint64_t sub_24F7E0EBC(uint64_t a1)
{
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  if (v7 == 1)
  {
    sub_24F7E122C(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for Player);
    v8 = &v5[*(v2 + 36)];
    if (v8[1] == 1 || (v9 = v8[3]) == 0)
    {
      v12 = &v5[*(v2 + 28)];
      v10 = *v12;
      v9 = v12[1];
    }

    else
    {
      v10 = v8[2];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x614E726579616C70;
    v14 = inited + 32;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = v10;
    *(inited + 56) = v9;
    v15 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(v14, &qword_27F219F90);
    v16._countAndFlagsBits = 0xD000000000000032;
    v16._object = 0x800000024FA7E370;
    countAndFlagsBits = localizedString(_:with:)(v16, v15)._countAndFlagsBits;

    sub_24F7E1294(v5, type metadata accessor for Player);
    return countAndFlagsBits;
  }

  else
  {

    return _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD000000000000029, 0x800000024FA7E340, v7);
  }
}

uint64_t sub_24F7E1100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F7E1170()
{
  result = qword_27F250EE8;
  if (!qword_27F250EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250EE8);
  }

  return result;
}

uint64_t sub_24F7E11C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7E122C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7E1294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7E12F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24F7E1390(a2, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F7E1390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7E13E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250EB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250EB0);
  sub_24E602068(&qword_27F250EC8, &qword_27F250EB0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F7E14C0()
{
  result = qword_27F250EF8;
  if (!qword_27F250EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250EF8);
  }

  return result;
}

unint64_t sub_24F7E1518()
{
  result = qword_27F250F00;
  if (!qword_27F250F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F00);
  }

  return result;
}

unint64_t sub_24F7E1570()
{
  result = qword_27F250F08;
  if (!qword_27F250F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F08);
  }

  return result;
}

uint64_t sub_24F7E15D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F7E16B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeUpsellCardComponent()
{
  result = qword_27F250F10;
  if (!qword_27F250F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7E17CC()
{
  sub_24F7E1858();
  if (v0 <= 0x3F)
  {
    sub_24E6CAF48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F7E1858()
{
  if (!qword_27F21F618)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F618);
    }
  }
}

uint64_t sub_24F7E1928@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v88 = a1;
  v87 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FD0);
  MEMORY[0x28223BE20](v75);
  v65 = &v63 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FF0);
  MEMORY[0x28223BE20](v72);
  v74 = &v63 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FB0);
  MEMORY[0x28223BE20](v86);
  v76 = &v63 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FC0);
  MEMORY[0x28223BE20](v73);
  v63 = &v63 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FA0);
  MEMORY[0x28223BE20](v70);
  v64 = &v63 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250FF8);
  MEMORY[0x28223BE20](v66);
  v69 = &v63 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250F80);
  MEMORY[0x28223BE20](v80);
  v71 = &v63 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250F90);
  MEMORY[0x28223BE20](v68);
  v13 = (&v63 - v12);
  v67 = type metadata accessor for ArcadeUpsellCardLargeView(0);
  MEMORY[0x28223BE20](v67);
  v15 = (&v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251000);
  MEMORY[0x28223BE20](v83);
  v85 = &v63 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251008);
  MEMORY[0x28223BE20](v77);
  v79 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F251010);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250F60);
  MEMORY[0x28223BE20](v78);
  v22 = &v63 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250F50);
  MEMORY[0x28223BE20](v84);
  v81 = &v63 - v23;
  v24 = type metadata accessor for ArcadeUpsellCardExtraLargeView(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a2 + *(type metadata accessor for ArcadeUpsellCardComponent() + 24));
  if (v88 > 2u)
  {
    if (v88 == 3)
    {
      v39 = v67;
      sub_24F7E36F0(v82, v15 + *(v67 + 20), type metadata accessor for ArcadeUpsellCard);
      v40 = *(v39 + 24);

      sub_24F769788(v15 + v40);
      *v15 = v27;
      type metadata accessor for CardSafeArea(0);
      sub_24F9233C8();
      sub_24F7E36F0(v15, v20, type metadata accessor for ArcadeUpsellCardLargeView);
      swift_storeEnumTagMultiPayload();
      sub_24F7E35E0(&qword_27F250F68, type metadata accessor for ArcadeUpsellCardExtraLargeView);
      sub_24F7E35E0(&qword_27F250F70, type metadata accessor for ArcadeUpsellCardLargeView);
      sub_24F924E28();
      sub_24E60169C(v22, v79, &qword_27F250F60);
      swift_storeEnumTagMultiPayload();
      sub_24F7E3270();
      sub_24F7E335C();
      v41 = v81;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F250F60);
      sub_24E60169C(v41, v85, &qword_27F250F50);
      swift_storeEnumTagMultiPayload();
      sub_24F7E31E4();
      sub_24F7E3440();
      sub_24F924E28();
      sub_24E601704(v41, &qword_27F250F50);
      return sub_24F7E3690(v15, type metadata accessor for ArcadeUpsellCardLargeView);
    }

    if (v88 == 4)
    {
      sub_24F7E36F0(v82, v26 + *(v24 + 20), type metadata accessor for ArcadeUpsellCard);
      v32 = *(v24 + 24);

      sub_24F769788(v26 + v32);
      *v26 = v27;
      type metadata accessor for CardSafeArea(0);
      sub_24F9233C8();
      sub_24F7E36F0(v26, v20, type metadata accessor for ArcadeUpsellCardExtraLargeView);
      swift_storeEnumTagMultiPayload();
      sub_24F7E35E0(&qword_27F250F68, type metadata accessor for ArcadeUpsellCardExtraLargeView);
      sub_24F7E35E0(&qword_27F250F70, type metadata accessor for ArcadeUpsellCardLargeView);
      sub_24F924E28();
      sub_24E60169C(v22, v79, &qword_27F250F60);
      swift_storeEnumTagMultiPayload();
      sub_24F7E3270();
      sub_24F7E335C();
      v33 = v81;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F250F60);
      sub_24E60169C(v33, v85, &qword_27F250F50);
      swift_storeEnumTagMultiPayload();
      sub_24F7E31E4();
      sub_24F7E3440();
      sub_24F924E28();
      sub_24E601704(v33, &qword_27F250F50);
      return sub_24F7E3690(v26, type metadata accessor for ArcadeUpsellCardExtraLargeView);
    }

    v46 = type metadata accessor for ArcadeUpsellCardHeroView(0);
    v36 = v65;
    sub_24F7E36F0(v82, &v65[v46[5]], type metadata accessor for ArcadeUpsellCard);
    v47 = v46[6];

    sub_24F769788(v36 + v47);
    *v36 = v27;
    v48 = (v36 + v46[7]);
    *v48 = 0x4030000000000000;
    v48[1] = 0;
    v48[2] = 0;
    v48[3] = 0;
    v49 = v36 + v46[8];
    v89 = 0uLL;
    LOBYTE(v90) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
    sub_24F926F28();
    v50 = v93;
    v51 = *(&v93 + 1);
    *v49 = v92;
    v49[16] = v50;
    *(v49 + 3) = v51;
    v52 = v36 + v46[9];
    v89 = 0u;
    v90 = 0u;
    v91 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E990);
    sub_24F926F28();
    v53 = v94;
    v54 = v95;
    v55 = v93;
    *v52 = v92;
    *(v52 + 1) = v55;
    v52[32] = v53;
    *(v52 + 5) = v54;
    v56 = (v36 + v46[10]);
    type metadata accessor for HeroSafeAreaMetrics();
    v57 = swift_allocObject();
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0u;
    *(v57 + 80) = 0u;
    *(v57 + 96) = 0u;
    *(v57 + 112) = 1;
    *(v57 + 120) = 0;
    *(v57 + 128) = 0;
    *(v57 + 136) = 1;
    sub_24F91FDB8();
    *&v89 = v57;
    sub_24F926F28();
    v58 = *(&v92 + 1);
    *v56 = v92;
    v56[1] = v58;
    type metadata accessor for CardSafeArea(0);
    sub_24F9233C8();
    v59 = v36 + v46[12];
    *v59 = swift_getKeyPath();
    *(v59 + 1) = 0;
    *(v59 + 2) = 0;
    *(v59 + 3) = 0;
    v59[32] = 0;
    v60 = v36 + v46[13];
    *v60 = swift_getKeyPath();
    v60[8] = 0;
    KeyPath = swift_getKeyPath();
    v62 = (v36 + *(v75 + 36));
    *v62 = KeyPath;
    v62[1] = sub_24F7E2B28;
    v62[2] = 0;
    v30 = &qword_27F250FD0;
    sub_24E60169C(v36, v74, &qword_27F250FD0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250FB8, &qword_27F250FC0);
    sub_24F7E34F8();
    v38 = v76;
  }

  else
  {
    if (v88)
    {
      if (v88 == 1)
      {
        v28 = v70;
        v13 = v64;
        sub_24F7E36F0(v82, &v64[*(v70 + 44)], type metadata accessor for ArcadeUpsellCard);
        v29 = *(v28 + 48);

        sub_24F769788(v13 + v29);
        *v13 = v27;
        type metadata accessor for CardSafeArea(0);
        sub_24F9233C8();
        v30 = &qword_27F250FA0;
        sub_24E60169C(v13, v69, &qword_27F250FA0);
      }

      else
      {
        v42 = v68;
        sub_24F7E36F0(v82, v13 + *(v68 + 44), type metadata accessor for ArcadeUpsellCard);
        v43 = *(v42 + 48);

        sub_24F769788(v13 + v43);
        *v13 = v27;
        type metadata accessor for CardSafeArea(0);
        sub_24F9233C8();
        v30 = &qword_27F250F90;
        sub_24E60169C(v13, v69, &qword_27F250F90);
      }

      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F250F88, &qword_27F250F90);
      sub_24E602068(&qword_27F250F98, &qword_27F250FA0);
      v31 = v71;
      sub_24F924E28();
      sub_24E60169C(v31, v79, &qword_27F250F80);
      swift_storeEnumTagMultiPayload();
      sub_24F7E3270();
      sub_24F7E335C();
      v44 = v81;
      sub_24F924E28();
      sub_24E601704(v31, &qword_27F250F80);
      sub_24E60169C(v44, v85, &qword_27F250F50);
      swift_storeEnumTagMultiPayload();
      sub_24F7E31E4();
      sub_24F7E3440();
      sub_24F924E28();
      sub_24E601704(v44, &qword_27F250F50);
      v45 = v13;
      return sub_24E601704(v45, v30);
    }

    v35 = v73;
    v36 = v63;
    sub_24F7E36F0(v82, &v63[*(v73 + 44)], type metadata accessor for ArcadeUpsellCard);
    v37 = *(v35 + 48);

    sub_24F769788(v36 + v37);
    *v36 = v27;
    v30 = &qword_27F250FC0;
    sub_24E60169C(v36, v74, &qword_27F250FC0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250FB8, &qword_27F250FC0);
    sub_24F7E34F8();
    v38 = v76;
  }

  sub_24F924E28();
  sub_24E60169C(v38, v85, &qword_27F250FB0);
  swift_storeEnumTagMultiPayload();
  sub_24F7E31E4();
  sub_24F7E3440();
  sub_24F924E28();
  sub_24E601704(v38, &qword_27F250FB0);
  v45 = v36;
  return sub_24E601704(v45, v30);
}

uint64_t sub_24F7E2B40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  if (*(v2 + 8) == 1)
  {
    v10 = *v2;
  }

  else
  {

    sub_24F92BDC8();
    v11 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v9, 0);
    (*(v6 + 8))(v8, v5);
    v10 = v16[15];
  }

  v12 = *(a1 + *(type metadata accessor for ArcadeUpsellCard() + 32));
  if (v12 == 6)
  {
    v12 = v10;
  }

  if (v12 > 4)
  {

    v15 = 0;
  }

  else
  {
    v13 = sub_24F92CE08();

    v15 = v13 ^ 1;
  }

  *a2 = v15 & 1;
  return result;
}

uint64_t sub_24F7E2D88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F924218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250F28);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = sub_24F769EF0(*v2, *(v2 + 8));
  v12 = *(a1 + *(type metadata accessor for ArcadeUpsellCard() + 32));
  if (v12 == 6)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  sub_24F7E1928(v13, v2, a1, v10);
  sub_24F08E504();
  sub_24F7E30D4();
  sub_24F926AE8();
  (*(v5 + 8))(v7, v4);
  return sub_24E601704(v10, &qword_27F250F28);
}

uint64_t sub_24F7E2F34()
{
  MEMORY[0x28223BE20](v0);
  sub_24F7E36F0(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArcadeUpsellCardComponent);
  sub_24F7E35E0(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent);
  return sub_24F9218E8();
}

unint64_t sub_24F7E30D4()
{
  result = qword_27F250F30;
  if (!qword_27F250F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F28);
    sub_24F7E3158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F30);
  }

  return result;
}

unint64_t sub_24F7E3158()
{
  result = qword_27F250F38;
  if (!qword_27F250F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F40);
    sub_24F7E31E4();
    sub_24F7E3440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F38);
  }

  return result;
}

unint64_t sub_24F7E31E4()
{
  result = qword_27F250F48;
  if (!qword_27F250F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F50);
    sub_24F7E3270();
    sub_24F7E335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F48);
  }

  return result;
}

unint64_t sub_24F7E3270()
{
  result = qword_27F250F58;
  if (!qword_27F250F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F60);
    sub_24F7E35E0(&qword_27F250F68, type metadata accessor for ArcadeUpsellCardExtraLargeView);
    sub_24F7E35E0(&qword_27F250F70, type metadata accessor for ArcadeUpsellCardLargeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F58);
  }

  return result;
}

unint64_t sub_24F7E335C()
{
  result = qword_27F250F78;
  if (!qword_27F250F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F80);
    sub_24E602068(&qword_27F250F88, &qword_27F250F90);
    sub_24E602068(&qword_27F250F98, &qword_27F250FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250F78);
  }

  return result;
}

unint64_t sub_24F7E3440()
{
  result = qword_27F250FA8;
  if (!qword_27F250FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250FB0);
    sub_24E602068(&qword_27F250FB8, &qword_27F250FC0);
    sub_24F7E34F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250FA8);
  }

  return result;
}

unint64_t sub_24F7E34F8()
{
  result = qword_27F250FC8;
  if (!qword_27F250FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250FD0);
    sub_24F7E35E0(&qword_27F250FD8, type metadata accessor for ArcadeUpsellCardHeroView);
    sub_24E602068(&qword_27F250FE0, &qword_27F250FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250FC8);
  }

  return result;
}

uint64_t sub_24F7E35E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7E362C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CardSafeArea(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  result = sub_24F91FDB8();
  *a1 = v2;
  return result;
}

uint64_t sub_24F7E3690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7E36F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7E379C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250F28);
  sub_24F7E30D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F7E3804()
{
  v0 = sub_24F928388();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v4 = sub_24F928348();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24F7E38F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24F92CE08();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24F7E3968(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E697A6973 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24F92CE08();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24F7E39DC(void *a1)
{
  type metadata accessor for AnyJSIntent.JSPresentationSizing.FixedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_24F92CD58();
  v18 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v10[-v3];
  type metadata accessor for AnyJSIntent.JSPresentationSizing.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24F92CD58();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-v6];
  v14 = *v1;
  v13 = *(v1 + 8);
  v12 = v1[2];
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v15;
  sub_24F92D128();
  sub_24F92CC98();
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  sub_24F7E5A70();
  sub_24F92CD48();
  (*(v18 + 8))(v4, v8);
  return (*(v17 + 8))(v7, v5);
}

uint64_t sub_24F7E3C7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for AnyJSIntent.JSPresentationSizing.FixedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_24F92CC88();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  type metadata accessor for AnyJSIntent.JSPresentationSizing.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_24F92CC88();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v44;
  sub_24F92D108();
  if (v13)
  {
    goto LABEL_9;
  }

  v31 = v5;
  v32 = 0;
  v33 = a2;
  v15 = v37;
  v14 = v38;
  v44 = a1;
  *&v40 = sub_24F92CC78();
  sub_24F92B6E8();
  swift_getWitnessTable();
  *&v42 = sub_24F92C668();
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;
  sub_24F92C658();
  swift_getWitnessTable();
  sub_24F92BC28();
  if ((v40 & 1) != 0 || (v30 = v42, v40 = v42, v41 = v43, (sub_24F92BC58() & 1) == 0))
  {
    v20 = sub_24F92C918();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v22 = type metadata accessor for AnyJSIntent.JSPresentationSizing();
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v39 + 8))(v12, v14);
    goto LABEL_8;
  }

  v19 = v32;
  sub_24F92CBA8();
  if (v19)
  {
    (*(v39 + 8))(v12, v14);
LABEL_8:
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_9:
    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  sub_24F7E5A1C();
  v23 = v35;
  sub_24F92CC68();
  v24 = v39;
  (*(v34 + 8))(v8, v23);
  (*(v24 + 8))(v12, v14);
  swift_unknownObjectRelease();
  v26 = BYTE8(v40);
  v27 = v41;
  v28 = BYTE8(v41);
  *v15 = v40;
  *(v15 + 8) = v26;
  *(v15 + 16) = v27;
  *(v15 + 24) = v28;
  v29 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_24F7E4164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7E38F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_24F7E4194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E60312C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F7E41C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24F7E4218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24F7E4280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7E3968(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_24F7E42B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24F7E4304(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_24F7E438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x65746E4965736162;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_24F928368();
  v9 = v28;
  if (v28)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v29 = a3;
    v26[2] = v4;
    v26[1] = v26;
    v11 = a2;
    v12 = *(v9 - 8);
    v13 = MEMORY[0x28223BE20](v10);
    v15 = a1;
    v16 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v16, v13);
    v17 = sub_24F92CDE8();
    v18 = v16;
    a1 = v15;
    (*(v12 + 8))(v18, v9);
    a2 = v11;
    a3 = v29;
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v17 = 0;
  }

  v19 = [objc_opt_self() valueWithObject:v17 inContext:a1];
  swift_unknownObjectRelease();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  v20 = sub_24E6360E0();
  *(inited + 48) = v19;
  *(inited + 80) = v20;
  *(inited + 88) = 0xD000000000000017;
  *(inited + 96) = 0x800000024FA7E3B0;
  v21 = (v3 + *(a2 + 32));
  LOBYTE(v19) = *v21;
  v22 = v21[1];
  *(inited + 128) = &type metadata for IntentViewConfiguration;
  *(inited + 136) = sub_24F7E5998();
  *(inited + 104) = v19;
  *(inited + 105) = v22;
  v23 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v24 = sub_24E80FFAC(v23);

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a3[4] = result;
  *a3 = v24;
  return result;
}

uint64_t sub_24F7E4664(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E4965736162 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7E3D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA7E3B0 == a2)
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

uint64_t sub_24F7E4790(char a1)
{
  if (!a1)
  {
    return 0x65746E4965736162;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000017;
}

uint64_t sub_24F7E47F4(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = v2;
  v18[1] = *(a2 + 16);
  type metadata accessor for AnyJSIntent.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24F92CD58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D128();
  LOBYTE(v21) = 0;
  sub_24F928388();
  sub_24F7E58FC(&qword_27F231C40, MEMORY[0x277D21B10]);
  v9 = v20;
  sub_24F92CD48();
  if (!v9)
  {
    v10 = v19;
    v11 = (v3 + *(v19 + 28));
    v12 = *(v11 + 2);
    v13 = *(v11 + 24);
    v14 = *(v11 + 25);
    v21 = *v11;
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = 1;
    type metadata accessor for AnyJSIntent.JSPresentationSizing();
    swift_getWitnessTable();
    sub_24F92CCF8();
    v15 = (v3 + *(v10 + 32));
    v16 = *v15;
    LOBYTE(v15) = v15[1];
    LOBYTE(v21) = v16;
    BYTE1(v21) = v15;
    v25 = 2;
    sub_24F7E5944();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F7E4A80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24F928388();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyJSIntent.CodingKeys();
  swift_getWitnessTable();
  v31 = sub_24F92CC88();
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v25 - v5;
  v7 = type metadata accessor for AnyJSIntent();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v6;
  v10 = v34;
  sub_24F92D108();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v7;
  v34 = v9;
  v12 = v28;
  v11 = v29;
  LOBYTE(v35) = 0;
  sub_24F7E58FC(&qword_27F21E7D0, MEMORY[0x277D21B10]);
  v13 = v31;
  v14 = v30;
  sub_24F92CC68();
  v15 = v34;
  (*(v11 + 32))(v34, v32, v14);
  type metadata accessor for AnyJSIntent.JSPresentationSizing();
  v39 = 1;
  swift_getWitnessTable();
  sub_24F92CC18();
  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v25;
  v20 = &v15[*(v25 + 28)];
  *v20 = v35;
  *(v20 + 2) = v16;
  v20[24] = v17;
  v20[25] = v18;
  v39 = 2;
  sub_24F7E58A8();
  sub_24F92CC68();
  (*(v12 + 8))(v33, v13);
  v21 = BYTE1(v35);
  v22 = &v15[*(v19 + 32)];
  *v22 = v35;
  v22[1] = v21;
  v23 = v26;
  (*(v26 + 16))(v27, v15, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v23 + 8))(v15, v19);
}

uint64_t sub_24F7E4F04()
{
  sub_24F92D068();
  sub_24EDCB744(v2, *v0);
  return sub_24F92D0B8();
}

uint64_t sub_24F7E4F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7E4664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7E4F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F7E5BC0();
  *a1 = result;
  return result;
}

uint64_t sub_24F7E4FB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24F7E5004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24F7E50C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t static _IntentKindTable_ReturningAnyJSIntent._decode(_:from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v13[2] = a3;
  v13[0] = a4;
  v13[1] = a1;
  v5 = sub_24F928388();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D2B8);
  MEMORY[0x28223BE20](v9 - 8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15[6] = sub_24F92D0E8();
  sub_24F928568();
  type metadata accessor for ExtendedIntentKindTable();
  swift_getWitnessTable();
  sub_24F928D58();
  v10 = sub_24F928D48();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_24F92AE88();
  sub_24E615E00(a2, v14);
  v11 = v13[3];
  sub_24F928298();
  if (v11)
  {
  }

  v15[3] = sub_24F929798();
  v15[4] = sub_24F7E58FC(&qword_27F21C8D0, MEMORY[0x277D22028]);
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_24F929788();
  sub_24F92A128();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_24F7E5458()
{
  result = sub_24F928388();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnyJSIntent.JSPresentationSizing();
    result = sub_24F92C4A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F7E5508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F7E55D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F928388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ChallengesSlashHeaderView.Style(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_24F7E56D4()
{
  v0 = sub_24F929028();
  v1 = type metadata accessor for AnyJSIntent();
  WitnessTable = swift_getWitnessTable();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81CEE8(v1, WitnessTable, 0x746E49534A796E41, 0xEB00000000746E65, isUniquelyReferenced_nonNull_native);

  return v0;
}

uint64_t sub_24F7E57A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28217F2F8](a1, WitnessTable);
}

unint64_t sub_24F7E58A8()
{
  result = qword_27F251218;
  if (!qword_27F251218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251218);
  }

  return result;
}

uint64_t sub_24F7E58FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F7E5944()
{
  result = qword_27F251220;
  if (!qword_27F251220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251220);
  }

  return result;
}

unint64_t sub_24F7E5998()
{
  result = qword_27F251228;
  if (!qword_27F251228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251228);
  }

  return result;
}

unint64_t sub_24F7E5A1C()
{
  result = qword_27F251230;
  if (!qword_27F251230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251230);
  }

  return result;
}

unint64_t sub_24F7E5A70()
{
  result = qword_27F251238[0];
  if (!qword_27F251238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F251238);
  }

  return result;
}

unint64_t BoolSettingKey.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 0x20:
      result = 0xD00000000000002CLL;
      break;
    case 4:
    case 0xC:
    case 0x15:
    case 0x16:
    case 0x25:
    case 0x28:
      result = 0xD000000000000033;
      break;
    case 5:
      result = 0xD000000000000028;
      break;
    case 6:
    case 0x1E:
      result = 0xD000000000000034;
      break;
    case 7:
    case 8:
      result = 0xD00000000000003CLL;
      break;
    case 9:
      result = 0xD00000000000003BLL;
      break;
    case 0xA:
      result = 0xD000000000000026;
      break;
    case 0xB:
    case 0x1A:
    case 0x1D:
    case 0x2A:
      result = 0xD000000000000031;
      break;
    case 0xD:
    case 0x13:
    case 0x14:
      result = 0xD000000000000030;
      break;
    case 0xE:
    case 0x24:
      result = 0xD000000000000032;
      break;
    case 0xF:
    case 0x18:
    case 0x19:
    case 0x1B:
      result = 0xD00000000000002FLL;
      break;
    case 0x10:
    case 0x21:
      result = 0xD000000000000037;
      break;
    case 0x11:
    case 0x17:
    case 0x29:
      result = 0xD00000000000002DLL;
      break;
    case 0x12:
    case 0x27:
      result = 0xD000000000000039;
      break;
    case 0x1C:
      result = 0xD000000000000042;
      break;
    case 0x1F:
      result = 0xD000000000000038;
      break;
    case 0x22:
    case 0x23:
      result = 0xD00000000000003ELL;
      break;
    case 0x26:
      result = 0xD000000000000035;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t DeprecatedBoolSettingKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000002DLL;
  }

  else
  {
    return 0xD000000000000031;
  }
}

GameStoreKit::DeprecatedBoolSettingKey_optional __swiftcall DeprecatedBoolSettingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7E6070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002DLL;
  }

  else
  {
    v3 = 0xD000000000000031;
  }

  if (v2)
  {
    v4 = "ofile";
  }

  else
  {
    v4 = "s_recently_played";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000002DLL;
  }

  else
  {
    v6 = 0xD000000000000031;
  }

  if (*a2)
  {
    v7 = "s_recently_played";
  }

  else
  {
    v7 = "ofile";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}