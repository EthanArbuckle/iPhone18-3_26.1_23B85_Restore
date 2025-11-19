uint64_t sub_24F3F40C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4679616C70736964 && a2 == 0xEF657461446D6F72;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA53670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xEF657461446F546ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA53690 == a2)
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

uint64_t sub_24F3F42AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_24E61DA68(v10, v12, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F46FC();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(v10, v12, qword_27F24EC90);
    sub_24F3F4780(v12, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F3F4750(v12);
}

uint64_t sub_24F3F44C0(uint64_t a1)
{
  v2 = sub_24F3F46FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F44FC(uint64_t a1)
{
  v2 = sub_24F3F46FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3F4570(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F46FC();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  sub_24E6419D0(&qword_27F214048, &qword_27F214050);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F3F46FC()
{
  result = qword_27F242678;
  if (!qword_27F242678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242678);
  }

  return result;
}

unint64_t sub_24F3F47CC()
{
  result = qword_27F242688;
  if (!qword_27F242688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242688);
  }

  return result;
}

unint64_t sub_24F3F4824()
{
  result = qword_27F242690;
  if (!qword_27F242690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242690);
  }

  return result;
}

unint64_t sub_24F3F487C()
{
  result = qword_27F242698[0];
  if (!qword_27F242698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F242698);
  }

  return result;
}

uint64_t GSKTabChangeActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKTabChangeAction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v13 = sub_24F92A9E8();
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_24F3F631C(a1, v9, type metadata accessor for GSKTabChangeAction);
  sub_24F92B7F8();

  v15 = sub_24F92B7E8();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v15;
  v18[3] = v19;
  v18[4] = *(a3 + 16);
  sub_24F3F4DEC(v9, v18 + v16);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_24EA998B8(0, 0, v12, &unk_24F9F24A8, v18);

  return v13;
}

uint64_t sub_24F3F4B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_24F92B7F8();
  v7[11] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3F4BAC, v9, v8);
}

uint64_t sub_24F3F4BAC()
{
  v1 = v0[8];
  v2 = v0[7];

  v3 = type metadata accessor for GSKTabChangeActionImplementation();
  sub_24F3F4FDC(v2, v1, v3);
  v4 = sub_24E74EC40();
  swift_retain_n();
  v5 = sub_24F92BEF8();
  v6 = MEMORY[0x277D225C0];
  v0[5] = v4;
  v0[6] = v6;
  v0[2] = v5;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v7 = v0[1];

  return v7();
}

uint64_t sub_24F3F4CC4()
{
  v1 = type metadata accessor for GSKTabChangeAction();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + v2 + 8) >= 0xCuLL)
  {
  }

  v3 = *(v1 + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F3F4DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKTabChangeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3F4E50(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(type metadata accessor for GSKTabChangeAction() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F3F4B10(a1, v9, v10, v1 + v7, v11, v12, v5);
}

uint64_t sub_24F3F4FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v5 = sub_24F928DD8();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x28223BE20](v5);
  v111 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D88();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v104 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24F927DC8();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GSKTabChangeAction();
  v97 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = v11;
  v99 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F927DE8();
  v101 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = &v88 - v14;
  v15 = sub_24F91F6B8();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15);
  v90 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v88 - v20;
  v22 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F928AD8();
  v25 = *(v109 - 1);
  MEMORY[0x28223BE20](v109);
  v108 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  sub_24F928A98();
  sub_24F92A678();
  v94 = sub_24F92A6B8();
  v140[3] = v94;
  v140[4] = MEMORY[0x277D223D8];
  __swift_allocate_boxed_opaque_existential_1(v140);
  v116 = v32;
  sub_24F92A668();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  v33 = v124;
  swift_getKeyPath();
  *&v124 = v33;
  sub_24F3F6548(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v34 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F3F631C(v33 + v34, v24, type metadata accessor for Player);

  v35 = *(a1 + 8);
  v114 = a2;
  v110 = v24;
  if (v35 == 11)
  {
    v139 = 0;
    memset(v138, 0, sizeof(v138));
  }

  else
  {
    v89 = a1;
    v136 = *a1;
    v36 = v136;
    v137 = v35;
    *&v138[0] = StoreTab.Identifier.rawValue.getter();
    *(&v138[0] + 1) = v37;
    sub_24F92C7F8();
    v38 = sub_24F91F4A8();
    v39 = *(*(v38 - 8) + 56);
    v95 = v21;
    v39(v21, 1, 1, v38);
    *&v138[0] = v36;
    *(&v138[0] + 1) = v35;
    StoreTab.Identifier.gamesTabDestination(player:asPartOf:)(v24, a2, &v133);
    v40 = v133;
    if ((~v133 & 0xF000000000000007) != 0)
    {
      v41 = &type metadata for FlowDestination;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      *(&v118 + 1) = 0;
      *&v119 = 0;
    }

    v42 = v93;
    *&v118 = v40;
    *(&v119 + 1) = v41;
    sub_24F928A98();
    v43 = sub_24F929D28();
    v45 = v44;
    v46 = type metadata accessor for FlowAction();
    v47 = swift_allocObject();
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v48 = v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v48 = 0u;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0;
    v49 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v49 = 0;
    v49[1] = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
    sub_24E60169C(v95, v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v50 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v50 = 0;
    v50[1] = 0;
    v51 = v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v51 = xmmword_24F9406F0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    *(v51 + 16) = 0;
    *(v51 + 40) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v52 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v52 = v43;
    v52[1] = v45;
    sub_24E60169C(&v124, v138, &qword_27F235830);
    (*(v25 + 16))(v108, v29, v109);
    v53 = sub_24F929608();
    (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
    v54 = (v47 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v54 = 0u;
    v54[1] = 0u;
    sub_24E60169C(v138, &v130, &qword_27F235830);
    if (*(&v131 + 1))
    {
      v133 = v130;
      v134 = v131;
      v135 = v132;
    }

    else
    {
      v55 = v90;
      sub_24F91F6A8();
      v56 = sub_24F91F668();
      v58 = v57;
      (*(v91 + 8))(v55, v92);
      v128 = v56;
      v129 = v58;
      sub_24F92C7F8();
      sub_24E601704(&v130, &qword_27F235830);
    }

    sub_24E601704(v138, &qword_27F235830);
    v59 = v47 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v60 = v134;
    *v59 = v133;
    *(v59 + 16) = v60;
    *(v59 + 32) = v135;
    sub_24E65E0D4(v42, v47 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    v61 = v109;
    (*(v25 + 32))(v47 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v108, v109);

    FlowAction.setPageData(_:)(&v118);

    (*(v25 + 8))(v29, v61);
    sub_24E601704(v95, &qword_27F228530);
    sub_24E601704(&v124, &qword_27F235830);
    sub_24E601704(&v118, &qword_27F2129B0);
    v62 = sub_24F3F6548(&qword_27F216400, type metadata accessor for FlowAction);
    *(v138 + 8) = v124;
    *&v138[0] = v47;
    *(&v138[1] + 1) = v46;
    v139 = v62;
    a1 = v89;
  }

  v63 = v114;
  if (*(a1 + 24) == 1)
  {
    sub_24F928A98();
    sub_24F92A688();
    *(&v134 + 1) = v94;
    v135 = MEMORY[0x277D223D8];
    __swift_allocate_boxed_opaque_existential_1(&v133);
    sub_24F92A668();
  }

  else
  {
    v135 = 0;
    v133 = 0u;
    v134 = 0u;
  }

  if (*(*(a1 + 16) + 16))
  {
    sub_24E74EC40();
    v108 = sub_24F92BEF8();
    v64 = v96;
    sub_24F927DD8();
    v65 = v100;
    sub_24F927E58();
    v109 = *(v101 + 8);
    (v109)(v64, v115);
    v66 = v99;
    sub_24F3F631C(a1, v99, type metadata accessor for GSKTabChangeAction);
    v67 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v68 = (v98 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    *(v69 + 16) = *(v117 + 16);
    sub_24F3F4DEC(v66, v69 + v67);
    *(v69 + v68) = v63;
    v126 = sub_24F3F6494;
    v127 = v69;
    *&v124 = MEMORY[0x277D85DD0];
    *(&v124 + 1) = 1107296256;
    *&v125 = sub_24EAF8248;
    *(&v125 + 1) = &block_descriptor_148;
    v70 = _Block_copy(&v124);

    v71 = v102;
    sub_24F927DA8();
    *&v130 = MEMORY[0x277D84F90];
    sub_24F3F6548(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v72 = v104;
    v73 = v107;
    sub_24F92C6A8();
    v74 = v108;
    MEMORY[0x253051820](v65, v71, v72, v70);
    _Block_release(v70);

    (*(v106 + 8))(v72, v73);
    (*(v103 + 8))(v71, v105);
    (v109)(v65, v115);
  }

  sub_24E60169C(v140, v121, qword_27F21B590);
  sub_24E60169C(v138, v122, qword_27F21B590);
  sub_24E60169C(&v133, v123, qword_27F21B590);
  sub_24E60169C(v121, &v124, qword_27F21B590);
  v118 = v124;
  v119 = v125;
  v120 = v126;
  if (*(&v125 + 1))
  {
    sub_24E612C80(&v118, &v130);
    v75 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_24E61950C(0, v75[2] + 1, 1, v75);
    }

    v77 = v75[2];
    v76 = v75[3];
    if (v77 >= v76 >> 1)
    {
      v75 = sub_24E61950C((v76 > 1), v77 + 1, 1, v75);
    }

    v75[2] = v77 + 1;
    sub_24E612C80(&v130, &v75[5 * v77 + 4]);
  }

  else
  {
    sub_24E601704(&v118, qword_27F21B590);
    v75 = MEMORY[0x277D84F90];
  }

  sub_24E60169C(v122, &v124, qword_27F21B590);
  v118 = v124;
  v119 = v125;
  v120 = v126;
  if (*(&v125 + 1))
  {
    sub_24E612C80(&v118, &v130);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_24E61950C(0, v75[2] + 1, 1, v75);
    }

    v79 = v75[2];
    v78 = v75[3];
    if (v79 >= v78 >> 1)
    {
      v75 = sub_24E61950C((v78 > 1), v79 + 1, 1, v75);
    }

    v75[2] = v79 + 1;
    sub_24E612C80(&v130, &v75[5 * v79 + 4]);
  }

  else
  {
    sub_24E601704(&v118, qword_27F21B590);
  }

  sub_24E60169C(v123, &v124, qword_27F21B590);
  v118 = v124;
  v119 = v125;
  v120 = v126;
  if (*(&v125 + 1))
  {
    sub_24E612C80(&v118, &v130);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_24E61950C(0, v75[2] + 1, 1, v75);
    }

    v81 = v75[2];
    v80 = v75[3];
    if (v81 >= v80 >> 1)
    {
      v75 = sub_24E61950C((v80 > 1), v81 + 1, 1, v75);
    }

    v75[2] = v81 + 1;
    sub_24E612C80(&v130, &v75[5 * v81 + 4]);
  }

  else
  {
    sub_24E601704(&v118, qword_27F21B590);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590);
  swift_arrayDestroy();
  sub_24F928A98();
  v82 = v111;
  sub_24F928DC8();
  v83 = v113;
  *(&v125 + 1) = v113;
  v126 = MEMORY[0x277D21D10];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v124);
  v85 = v112;
  (*(v112 + 16))(boxed_opaque_existential_1, v82, v83);
  swift_getWitnessTable();
  v86 = sub_24F1489C4(&v124);
  (*(v85 + 8))(v82, v83);
  sub_24E71BF38(v110);
  sub_24E601704(v138, qword_27F21B590);
  sub_24E601704(&v133, qword_27F21B590);
  __swift_destroy_boxed_opaque_existential_1(&v124);
  sub_24E601704(v140, qword_27F21B590);
  return v86;
}

uint64_t sub_24F3F6128()
{
  v0 = sub_24F928AD8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24F928DD8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928A98();

  sub_24F928DC8();
  v8[3] = v1;
  v8[4] = MEMORY[0x277D21D10];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
  type metadata accessor for GSKTabChangeActionImplementation();
  swift_getWitnessTable();
  sub_24F1489C4(v8);

  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_24F3F631C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3F6384()
{
  v1 = type metadata accessor for GSKTabChangeAction();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  if (*(v0 + v2 + 8) >= 0xCuLL)
  {
  }

  v3 = *(v1 + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F3F6494()
{
  type metadata accessor for GSKTabChangeAction();

  return sub_24F3F6128();
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F3F6548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3F65A4(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_24F3F673C(uint64_t result, uint64_t a2, int a3, int *a4)
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

uint64_t type metadata accessor for MediaCard()
{
  result = qword_27F242720;
  if (!qword_27F242720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3F690C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24F3F6A98(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F3F6A98(319, &qword_27F2191D8, MEMORY[0x277D21C48], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_24F3F6AFC();
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

void sub_24F3F6A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F3F6AFC()
{
  if (!qword_27F2189E8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2189E8);
    }
  }
}

uint64_t sub_24F3F6B4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v34);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242740);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for MediaCard();
  MEMORY[0x28223BE20](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  *&v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v39 = v15 + 40;
  sub_24E61DA68(&v43, (v15 + 40), qword_27F21B590);
  v41 = v13;
  v16 = *(v13 + 24);
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F3F76A4();
  v20 = v38;
  sub_24F92D108();
  if (v20)
  {
    v22 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24E601704(v22, qword_27F24EC90);
    return sub_24E601704(&v15[v42], &qword_27F215440);
  }

  else
  {
    v32[0] = v6;
    v32[1] = v7;
    v38 = v9;
    v21 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v23 = v44;
    *v15 = v43;
    *(v15 + 1) = v23;
    *(v15 + 4) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v46 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v24 = v21;
    sub_24E61DA68(&v43, v39, qword_27F24EC90);
    LOBYTE(v43) = 2;
    sub_24E65CAA0();
    v25 = v38;
    sub_24F92CC68();
    sub_24E61DA68(v25, &v15[v42], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v43) = 3;
    sub_24F3F8188(&qword_27F213F48, MEMORY[0x277D21F70]);
    v26 = v32[0];
    sub_24F92CC18();
    v27 = v41;
    sub_24E6009C8(v26, &v15[v41[7]], &qword_27F213E68);
    LOBYTE(v43) = 4;
    sub_24F3F8188(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v28 = v35;
    sub_24F92CC68();
    sub_24E706B90(v28, &v15[v27[8]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
    v46 = 5;
    sub_24F3F76F8();
    sub_24F92CC68();
    *&v15[v27[9]] = v43;
    v46 = 6;
    sub_24E6E8474();
    sub_24F92CC18();
    (*(v24 + 8))(v12, v37);
    v29 = &v15[v27[10]];
    v30 = v44;
    *v29 = v43;
    *(v29 + 1) = v30;
    *(v29 + 2) = v45;
    sub_24F3F77AC(v15, v33, type metadata accessor for MediaCard);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24F3F7814(v15, type metadata accessor for MediaCard);
  }
}

uint64_t sub_24F3F7340()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6575676573;
    if (v1 != 1)
    {
      v5 = 0x4D747865746E6F63;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x777472416E6F6369;
    if (v1 != 5)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F3F7428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3F7F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3F7450(uint64_t a1)
{
  v2 = sub_24F3F76A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F748C(uint64_t a1)
{
  v2 = sub_24F3F76A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3F7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F3F75D8(uint64_t a1)
{
  *(a1 + 8) = sub_24F3F8188(&qword_27F21ACE0, type metadata accessor for MediaCard);
  result = sub_24F3F8188(&qword_27F242730, type metadata accessor for MediaCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F3F76A4()
{
  result = qword_27F242748;
  if (!qword_27F242748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242748);
  }

  return result;
}

unint64_t sub_24F3F76F8()
{
  result = qword_27F227788;
  if (!qword_27F227788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538);
    sub_24F3F8188(&qword_27F214018, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227788);
  }

  return result;
}

uint64_t sub_24F3F77AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3F7814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3F7888()
{
  result = qword_27F242750;
  if (!qword_27F242750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242750);
  }

  return result;
}

unint64_t sub_24F3F78E0()
{
  result = qword_27F242758;
  if (!qword_27F242758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242758);
  }

  return result;
}

unint64_t sub_24F3F7938()
{
  result = qword_27F242760;
  if (!qword_27F242760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242760);
  }

  return result;
}

double sub_24F3F798C()
{
  v0 = type metadata accessor for CommonCardAttributes(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215460);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for MediaCard();
  __swift_allocate_value_buffer(v17, qword_27F39E520);
  v18 = __swift_project_value_buffer(v17, qword_27F39E520);
  sub_24F91F6A8();
  (*(v11 + 16))(v13, v16, v10);
  sub_24F3F8188(&qword_27F2551B0, MEMORY[0x277CC95F0]);
  sub_24F92C7F8();
  (*(v11 + 8))(v16, v10);
  v19 = sub_24F92A6D8();
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  *v3 = 6;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  v21 = v1[8];
  v22 = sub_24F9289E8();
  v23 = *(*(v22 - 8) + 56);
  v23(&v3[v21], 1, 1, v22);
  v23(&v3[v1[9]], 1, 1, v22);
  v24 = v1[10];
  v25 = type metadata accessor for GSKVideo();
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  v26 = &v3[v1[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v23(&v3[v1[12]], 1, 1, v22);
  v27 = &v3[v1[13]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v3[v1[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v3[v1[15]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v3[v1[16]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v3[v1[17]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v3[v1[18]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = v1[19];
  v34 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  (*(*(v34 - 8) + 56))(&v3[v33], 1, 1, v34);
  v35 = &v3[v1[20]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v3[v1[21]];
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  sub_24E61DA68(v42, v36, qword_27F21B590);
  v37 = v1[22];
  v38 = type metadata accessor for CardPrimaryActionType();
  (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
  v3[v1[23]] = 2;
  v39 = v47;
  *v18 = v46;
  *(v18 + 16) = v39;
  *(v18 + 32) = v48;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0;
  *(v18 + 40) = 0u;
  sub_24E61DA68(v44, v18 + 40, qword_27F21B590);
  sub_24E6009C8(v9, v18 + v17[6], &qword_27F215460);
  sub_24E6009C8(v6, v18 + v17[7], &qword_27F213E68);
  sub_24E706B90(v3, v18 + v17[8]);
  *(v18 + v17[9]) = MEMORY[0x277D84F90];
  v40 = (v18 + v17[10]);
  result = 0.0;
  v40[1] = 0u;
  v40[2] = 0u;
  *v40 = 0u;
  return result;
}

uint64_t sub_24F3F7F3C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x777472416E6F6369 && a2 == 0xEC000000736B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F3F8188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3F81FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = sub_24F925688();
  MEMORY[0x28223BE20](v2 - 8);
  v20[1] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9256A8();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242768);
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242770);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  sub_24F9257B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242778);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242780);
  v15 = sub_24E602068(&qword_27F242788, &qword_27F242780);
  v27 = v14;
  v28 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F923438();
  sub_24F925678();
  sub_24F925698();
  v16 = sub_24E602068(&qword_27F242790, &qword_27F242768);
  v17 = MEMORY[0x277CDE478];
  sub_24F926698();
  (*(v25 + 8))(v6, v4);
  (*(v21 + 8))(v9, v7);
  v27 = v7;
  v28 = v4;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_24F9265A8();
  return (*(v23 + 8))(v13, v18);
}

uint64_t sub_24F3F85CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242780);
  MEMORY[0x28223BE20](v2);
  v4 = v7 - v3;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242798);
  v7[3] = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208);
  sub_24E602068(&qword_27F2427A0, &qword_27F22B618);
  v5 = sub_24E66C1E0();
  v7[1] = &type metadata for GSKComponentView;
  v7[2] = v5;
  swift_getOpaqueTypeConformance2();
  sub_24F927228();
  sub_24E602068(&qword_27F242788, &qword_27F242780);
  sub_24F9265C8();
  return sub_24F3F8A24(v4);
}

uint64_t sub_24F3F87DC(uint64_t *a1)
{
  v2 = sub_24F929888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v15 = type metadata accessor for RibbonBarItem();
  v16 = sub_24F3F8A8C(&qword_27F2427A8, type metadata accessor for RibbonBarItem);
  v14 = v6;
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F3F8A8C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);

  v12 = sub_24F923598();
  v13 = v7 & 1;
  v8 = OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  v11[3] = MEMORY[0x277D84030];
  v11[0] = swift_allocObject();
  sub_24E65864C(v6 + v8, v11[0] + 16);
  memset(v10, 0, sizeof(v10));
  sub_24F929828();
  sub_24E857CC8(v10);
  sub_24E857CC8(v11);
  sub_24E66C1E0();
  sub_24F925EE8();
  (*(v3 + 8))(v5, v2);
  return sub_24E88F154(&v12);
}

uint64_t sub_24F3F8A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3F8A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3F8AD4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F3F8B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242770);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242768);
  sub_24F9256A8();
  sub_24E602068(&qword_27F242790, &qword_27F242768);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ChallengesHistoryGamesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengesHistoryGamesShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 88), "gameHistories");
  *(inited + 102) = -4864;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
  v10 = sub_24F3F95E8(&qword_27F2179A0, &qword_27F2179A8);
  *(inited + 104) = v5;
  *(inited + 136) = v10;
  *(inited + 144) = 0x796C6E4F6E6977;
  *(inited + 152) = 0xE700000000000000;
  v11 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v11;
  *(inited + 160) = v6;
  *(inited + 200) = 0x5479616C70736964;
  *(inited + 208) = 0xEB00000000657079;
  *(inited + 240) = &type metadata for ChallengesShelfDisplayType;
  *(inited + 248) = sub_24E7C96C0();
  *(inited + 216) = v7;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F3F8E7C()
{
  v1 = 0x444965676170;
  v2 = 0x796C6E4F6E6977;
  if (*v0 != 2)
  {
    v2 = 0x5479616C70736964;
  }

  if (*v0)
  {
    v1 = 0x74736948656D6167;
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

uint64_t sub_24F3F8F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3F98BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3F8F30(uint64_t a1)
{
  v2 = sub_24F3F9594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F8F6C(uint64_t a1)
{
  v2 = sub_24F3F9594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryGamesShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v12 = *(v1 + 16);
  v7 = *(v1 + 24);
  v11[0] = *(v1 + 25);
  v11[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F9594();
  sub_24F92D128();
  v19 = 0;
  v8 = v13;
  sub_24F92CD08();
  if (!v8)
  {
    v9 = v11[0];
    v14 = v12;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
    sub_24F3F95E8(&qword_27F2179D0, &qword_27F2179D8);
    sub_24F92CD48();
    v17 = 2;
    sub_24F92CD18();
    v16 = v9;
    v15 = 3;
    sub_24F3F9670();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryGamesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F9594();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998);
  v23 = 1;
  sub_24F3F95E8(&qword_27F2179F8, &qword_27F217A00);
  sub_24F92CC68();
  v17 = v19;
  v22 = 2;
  HIDWORD(v16) = sub_24F92CC38();
  v20 = 3;
  sub_24F368F98();
  sub_24F92CC68();
  v13 = BYTE4(v16) & 1;
  (*(v6 + 8))(v8, v5);
  v14 = v21;
  v15 = v17;
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 25) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3F9594()
{
  result = qword_27F2427B8;
  if (!qword_27F2427B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427B8);
  }

  return result;
}

uint64_t sub_24F3F95E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217998);
    sub_24F3F96C4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3F9670()
{
  result = qword_27F2427C0;
  if (!qword_27F2427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427C0);
  }

  return result;
}

uint64_t sub_24F3F96C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengesHistoryData.GameHistory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F3F9708(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_24F3F9750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F3F97B8()
{
  result = qword_27F2427D0;
  if (!qword_27F2427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427D0);
  }

  return result;
}

unint64_t sub_24F3F9810()
{
  result = qword_27F2427D8;
  if (!qword_27F2427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427D8);
  }

  return result;
}

unint64_t sub_24F3F9868()
{
  result = qword_27F2427E0;
  if (!qword_27F2427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427E0);
  }

  return result;
}

uint64_t sub_24F3F98BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736948656D6167 && a2 == 0xED0000736569726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079)
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

uint64_t sub_24F3F9A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v16 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427E8);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v11 - v3;
  v12 = "GameOverlaySupportsSocial";
  v20 = *v2;
  LOBYTE(v21) = *(v2 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
  sub_24F927198();
  v11[3] = v25;
  v19 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427F0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427F8);
  v7 = sub_24E602068(&qword_27F242800, &qword_27F2427F0);
  v8 = sub_24E602068(&qword_27F242808, &qword_27F2427F8);
  sub_24F926568();

  v20 = *(v2 + 24);
  LOBYTE(v21) = *(v2 + 40);
  sub_24F927198();
  v18 = v2;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  v21 = MEMORY[0x277CE0BD8];
  v22 = v7;
  v23 = v8;
  v24 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v9 = v15;
  sub_24F926568();

  return (*(v17 + 8))(v4, v9);
}

uint64_t sub_24F3F9DF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-v11 - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v29[-v17 - 8];
  sub_24F9232B8();
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  sub_24F926F78();
  v20 = *a1;
  v30 = a1[3];
  v31 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  *(v21 + 41) = *(a1 + 25);
  sub_24F373C50(&v31, v29);

  sub_24F373C50(&v30, v29);

  sub_24F926F88();
  v23 = *(v7 + 16);
  v23(v12, v18, v6);
  v23(v9, v15, v6);
  v24 = v28;
  v23(v28, v12, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242810);
  v23(&v24[*(v25 + 48)], v9, v6);
  v26 = *(v7 + 8);
  v26(v15, v6);
  v26(v18, v6);
  v26(v9, v6);
  return (v26)(v12, v6);
}

void sub_24F3FA180()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

double sub_24F3FA1E0@<D0>(uint64_t a1@<X8>)
{
  result = 8.91463799e252;
  *a1 = xmmword_24F9F2A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_24F3FA200(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003DLL;
  *(a1 + 8) = 0x800000024FA74E00;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_24F3FA230@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-v11 - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v29[-v17 - 8];
  sub_24F9232B8();
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  sub_24F926F78();
  v20 = *a1;
  v30 = a1[3];
  v31 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  *(v21 + 41) = *(a1 + 25);
  sub_24F373C50(&v31, v29);

  sub_24F373C50(&v30, v29);

  sub_24F926F88();
  v23 = *(v7 + 16);
  v23(v12, v18, v6);
  v23(v9, v15, v6);
  v24 = v28;
  v23(v28, v12, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242810);
  v23(&v24[*(v25 + 48)], v9, v6);
  v26 = *(v7 + 8);
  v26(v15, v6);
  v26(v18, v6);
  v26(v9, v6);
  return (v26)(v12, v6);
}

uint64_t sub_24F3FA5BC()
{
  v18 = sub_24F927D88();
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v1 = &v16 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24F927DC8();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DE8();
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_24E74EC40();
  v12 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v16 = *(v6 + 8);
  v16(v8, v5);
  aBlock[4] = sub_24F3FA92C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_149;
  v13 = _Block_copy(aBlock);
  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v14 = v18;
  sub_24F92C6A8();
  MEMORY[0x253051820](v11, v4, v1, v13);
  _Block_release(v13);

  (*(v21 + 8))(v1, v14);
  (*(v19 + 8))(v4, v20);
  return (v16)(v11, v17);
}

double sub_24F3FA940@<D0>(uint64_t a1@<X8>)
{
  result = 2.43998717e-152;
  *a1 = xmmword_24F9F2A90;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

double sub_24F3FA960@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x726574614CLL;
  *a1 = xmmword_24F9F2AA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_24F3FA980(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000078;
  *(a1 + 8) = 0x800000024FA74D80;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_68()
{

  return swift_deallocObject();
}

uint64_t sub_24F3FAB20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427F0);
  sub_24E602068(&qword_27F242800, &qword_27F2427F0);
  sub_24E602068(&qword_27F242808, &qword_27F2427F8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_24F3FAC70(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *&v276 = a3;
  *&v275 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v259 = &v249 - v7;
  v272 = sub_24F9289E8();
  v271 = *(v272 - 8);
  v8 = MEMORY[0x28223BE20](v272);
  v258 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v270 = &v249 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220);
  MEMORY[0x28223BE20](v11 - 8);
  v269 = &v249 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v13 - 8);
  v261 = &v249 - v14;
  v15 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v15 - 8);
  v264 = &v249 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_24F91F648();
  v262 = *(v263 - 8);
  v17 = MEMORY[0x28223BE20](v263);
  v256 = &v249 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v257 = &v249 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v260 = &v249 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v254 = &v249 - v24;
  MEMORY[0x28223BE20](v23);
  v255 = &v249 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220);
  MEMORY[0x28223BE20](v26 - 8);
  v268 = &v249 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v28 - 8);
  v249 = &v249 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170);
  MEMORY[0x28223BE20](v30 - 8);
  v273 = &v249 - v31;
  v32 = [a1 playerID];
  v33 = sub_24F92B0D8();
  v35 = v34;

  v267 = v33;
  *a4 = v33;
  a4[1] = v35;
  v266 = v35;
  v36 = [a1 displayNameWithOptions_];
  v37 = sub_24F92B0D8();
  v39 = v38;

  v40 = type metadata accessor for Player(0);
  v41 = (a4 + *(v40 + 28));
  v265 = v37;
  *v41 = v37;
  v41[1] = v39;
  v274 = v39;

  v42 = [a1 inboxEntry];
  v277 = a4;
  v278 = a1;
  v279 = v40;
  if (v42)
  {
    v43 = v42;
    v44 = [v42 friendCode];
    v45 = sub_24F92B0D8();
    v47 = v46;

    v48 = [v43 senderHandle];
    v49 = sub_24F92B0D8();
    v51 = v50;

    v52 = [v43 contactID];
    if (v52)
    {
      v53 = v52;
      v54 = sub_24F92B0D8();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v58 = [v43 contactName];
    if (v58)
    {
      v59 = v58;
      v60 = sub_24F92B0D8();
      v62 = v61;

      a4 = v277;
    }

    else
    {

      v60 = 0;
      v62 = 0;
    }

    v63 = (a4 + v279[15]);
    *v63 = v45;
    v63[1] = v47;
    v63[2] = v49;
    v63[3] = v51;
    v63[4] = v54;
    v63[5] = v56;
    v63[6] = v60;
    v63[7] = v62;
    a1 = v278;
  }

  else
  {
    v57 = (a4 + *(v40 + 60));
    v57[2] = 0u;
    v57[3] = 0u;
    *v57 = 0u;
    v57[1] = 0u;
  }

  v64 = [a1 contact];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 _gkCompositeName];
    v67 = sub_24F92B0D8();
    v69 = v68;

    v70 = v279;
  }

  else
  {
    v67 = 0;
    v70 = v279;
    v71 = (a4 + v279[15]);
    if (v71[1])
    {
      v69 = 0;
      if (v71[7])
      {
        v67 = v71[6];
      }
    }

    else
    {
      v69 = 0;
    }
  }

  v72 = (a4 + v70[8]);
  *v72 = v67;
  v72[1] = v69;
  v73 = [a1 contact];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 namePrefix];
    v253 = sub_24F92B0D8();
    v252 = v76;

    v77 = [v74 givenName];
    v251 = sub_24F92B0D8();
    v250 = v78;

    v79 = [v74 middleName];
    v80 = sub_24F92B0D8();
    v82 = v81;

    v83 = [v74 familyName];
    v84 = sub_24F92B0D8();
    v86 = v85;

    v87 = [v74 nameSuffix];
    v88 = sub_24F92B0D8();
    v90 = v89;

    v91 = [v74 nickname];
    v92 = sub_24F92B0D8();
    v94 = v93;

    v95 = v250;
    v96 = v251;
    v97 = v252;
    v98 = v253;
  }

  else
  {
    v98 = 0;
    v96 = 0;
    v95 = 0;
    v80 = 0;
    v82 = 0;
    v84 = 0;
    v86 = 0;
    v88 = 0;
    v90 = 0;
    v92 = 0;
    v94 = 0;
    v97 = 1;
  }

  v99 = v279;
  v100 = v277;
  v101 = (v277 + v279[9]);
  *v101 = v98;
  v101[1] = v97;
  v101[2] = v96;
  v101[3] = v95;
  v101[4] = v80;
  v101[5] = v82;
  v101[6] = v84;
  v101[7] = v86;
  v101[8] = v88;
  v101[9] = v90;
  v102 = v275;
  v103 = v276;
  v101[10] = v92;
  v101[11] = v94;
  v104 = v278;
  if (!v103)
  {
    v105 = [v278 contact];
    if (v105)
    {
      v106 = v105;
      v102 = sub_24EEA5788();
      v103 = v107;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    v100 = v277;
    v99 = v279;
  }

  v108 = (v100 + v99[10]);
  *v108 = v102;
  v108[1] = v103;

  v109 = [v104 contact];
  if (v109)
  {
    v110 = v109;
    v111 = [v109 phoneNumberStrings];

    v112 = sub_24F92B5A8();
  }

  else
  {
    v112 = 0;
  }

  *(v100 + v99[11]) = v112;
  v113 = [v104 contact];
  if (v113)
  {
    v114 = v113;
    v115 = [v113 emailAddressStrings];

    v116 = sub_24F92B5A8();
  }

  else
  {
    v116 = 0;
  }

  *(v100 + v99[12]) = v116;
  v117 = v276;
  if (!v276)
  {
    v118 = [v104 contact];
    if (v118)
    {
      v119 = v118;
      *&v275 = sub_24EEA5788();
      v117 = v120;
    }

    else
    {
      *&v275 = 0;
      v117 = 0;
    }
  }

  v121 = [objc_opt_self() sharedInstance];
  v122 = [v121 providerManager];

  v123 = [v122 defaultProvider];
  v124 = [v122 providers];
  sub_24E69A5C4(0, &qword_27F225FA8);
  v125 = sub_24F92B5A8();

  v126 = [v122 faceTimeProvider];
  v127 = [v122 telephonyProvider];

  if (v117)
  {
    v128 = v275;
    *&v284 = v275;
    *(&v284 + 1) = v117;
    *&v282 = 64;
    *(&v282 + 1) = 0xE100000000000000;
    sub_24E600AEC();
    v129 = v123;

    if (sub_24F92C5F8())
    {
      v130 = 2;
    }

    else
    {
      v130 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858);
    v131 = swift_allocObject();
    v276 = xmmword_24F93DE60;
    *(v131 + 16) = xmmword_24F93DE60;
    *(v131 + 32) = v130;
    *(v131 + 40) = v128;
    *(v131 + 48) = v117;
    sub_24F26E39C(v131, &v284);
    v275 = v284;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0);
    v132 = swift_allocObject();
    v133 = v275;
    *(v132 + 16) = v276;
    *(v132 + 32) = v133;
  }

  else
  {
    v134 = v123;
    v132 = MEMORY[0x277D84F90];
  }

  *&v284 = v122;
  *(&v284 + 1) = v123;
  v285 = v123;
  v286 = v125;
  v287 = v126;
  v288 = v127;
  v135 = v122;
  v136 = v123;

  v137 = v126;
  v138 = v127;
  v139 = v273;
  sub_24F4B6440(&v284, v132, MEMORY[0x277D84F90], v273);

  v140 = type metadata accessor for CallProviderConversationHandleSet();
  (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
  v141 = v279;
  v142 = v277;
  sub_24E6009C8(v139, v277 + v279[13], &unk_27F23E170);
  v143 = v278;
  *(v142 + v141[14]) = [v278 isArcadeSubscriber];
  v144 = [v143 photos];
  if (!v144)
  {
    goto LABEL_48;
  }

  v145 = v144;
  v146 = sub_24F92AE38();

  v280 = 0x6574616C706D6574;
  v281 = 0xE800000000000000;
  sub_24F92C7F8();
  if (!*(v146 + 16) || (v147 = sub_24E76D934(&v284), (v148 & 1) == 0))
  {

    sub_24E6585F8(&v284);
LABEL_48:
    v282 = 0u;
    v283 = 0u;
    goto LABEL_49;
  }

  sub_24E643A9C(*(v146 + 56) + 32 * v147, &v282);
  sub_24E6585F8(&v284);

  if (!*(&v283 + 1))
  {
LABEL_49:
    v154 = &qword_27F2129B0;
    v155 = &v282;
    goto LABEL_50;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v149 = *(&v284 + 1);
  v150 = v249;
  v151 = v284;
  sub_24F91F488();
  v152 = sub_24F91F4A8();
  v153 = *(v152 - 8);
  if ((*(v153 + 48))(v150, 1, v152) == 1)
  {

    v154 = &qword_27F228530;
    v155 = v150;
LABEL_50:
    sub_24E601704(v155, v154);
    goto LABEL_51;
  }

  sub_24F91F478();
  v247 = v246;
  (*(v153 + 8))(v150, v152);
  if (!v247 || (v248 = sub_24F92B358(), , (v248 & 1) == 0))
  {

LABEL_51:
    [objc_opt_self() sizeForPhotoSize_];
    v156 = GKImageURLKeyForSize();
    if (!v156)
    {
      goto LABEL_62;
    }

    v157 = v156;
    v158 = sub_24F92B0D8();
    v160 = v159;

    v161 = v278;
    v162 = [v278 photos];
    if (v162)
    {
      v163 = v162;
      v164 = sub_24F92AE38();

      v280 = v158;
      v281 = v160;
      sub_24F92C7F8();
      if (*(v164 + 16))
      {
        v165 = sub_24E76D934(&v284);
        if (v166)
        {
          sub_24E643A9C(*(v164 + 56) + 32 * v165, &v282);
          sub_24E6585F8(&v284);

          if (*(&v283 + 1))
          {
            if (swift_dynamicCast())
            {

              v167 = v284;
              *&v284 = 0x2F2F3A656C6966;
              *(&v284 + 1) = 0xE700000000000000;
              MEMORY[0x253050C20](v167, *(&v167 + 1));

              v149 = *(&v284 + 1);
              v168 = v284;
              v142[2] = v284;
              v142[3] = v149;

              v169 = 0;
              v170 = v279;
              goto LABEL_67;
            }

LABEL_62:
            v161 = v278;
            v171 = [v278 playerID];
            v172 = sub_24F92B0D8();
            v174 = v173;

            v168 = sub_24F5E3C58(v172, v174, v265, v274, 85, 0xE100000000000000);
            v149 = v175;

            v142[2] = v168;
            v142[3] = v149;

            v176 = sub_24F5E54A0(v267, v266);
            v177 = [objc_opt_self() availableColors];
            sub_24E69A5C4(0, &qword_27F22C138);
            v178 = sub_24F92B5A8();

            v170 = v279;
            if ((v178 & 0xC000000000000001) == 0)
            {
              if ((v176 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v176 < *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v179 = *(v178 + 8 * v176 + 32);
LABEL_66:
                v180 = v179;

                v181 = [v180 color];
                v169 = [v181 CGColor];

                v182 = v169;
                goto LABEL_67;
              }

              __break(1u);
              return;
            }

            v179 = MEMORY[0x253052270](v176, v178);
            goto LABEL_66;
          }

LABEL_61:
          sub_24E601704(&v282, &qword_27F2129B0);
          goto LABEL_62;
        }
      }

      sub_24E6585F8(&v284);
    }

    else
    {
    }

    v282 = 0u;
    v283 = 0u;
    goto LABEL_61;
  }

  v168 = v151;
  v142[2] = v151;
  v142[3] = v149;

  v169 = 0;
  v161 = v278;
  v170 = v279;
LABEL_67:
  v183 = [v161 lastPlayedGame];
  if (v183)
  {
    v184 = v183;
    v185 = [v161 lastPlayedDate];
    if (v185)
    {
      *&v276 = v149;
      v186 = v254;
      v187 = v185;
      sub_24F91F608();

      *&v275 = v168;
      v188 = v262;
      v189 = v255;
      v190 = v263;
      (*(v262 + 32))(v255, v186, v263);
      v191 = v261;
      (*(v188 + 56))(v261, 1, 1, v190);
      v192 = v184;
      v193 = v264;
      sub_24E7EDF8C(v192, v191, v264);
      v194 = v260;
      (*(v188 + 16))(v260, v189, v190);
      v195 = v170;
      v196 = v169;
      v197 = v268;
      sub_24E69BF7C(v193, v268);
      sub_24F91F5E8();
      v199 = v198;

      v200 = v188;
      v168 = v275;
      v201 = *(v200 + 8);
      v202 = v194;
      v149 = v276;
      v201(v202, v190);
      sub_24E69BFE0(v193);
      v203 = v189;
      v142 = v277;
      v201(v203, v190);
      v204 = v197;
      v169 = v196;
      v170 = v195;
      v161 = v278;
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      *(v204 + *(PlayedTogetherInfo + 20)) = v199 * 1000.0;
      (*(*(PlayedTogetherInfo - 8) + 56))(v204, 0, 1, PlayedTogetherInfo);
      goto LABEL_72;
    }
  }

  v206 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v204 = v268;
  (*(*(v206 - 8) + 56))(v268, 1, 1, v206);
LABEL_72:
  sub_24E6009C8(v204, v142 + v170[16], &unk_27F23E220);
  v207 = [v161 lastChallengedGame];
  if (!v207)
  {
LABEL_76:
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    v221 = v269;
    (*(*(ChallengeInfo - 8) + 56))(v269, 1, 1, ChallengeInfo);
    goto LABEL_77;
  }

  v208 = v207;
  v209 = [v161 lastChallengedDate];
  if (!v209)
  {

    goto LABEL_76;
  }

  *&v276 = v149;
  v210 = v256;
  v211 = v209;
  sub_24F91F608();

  *&v275 = v168;
  v212 = v262;
  v213 = v169;
  v214 = v257;
  v215 = v210;
  v216 = v263;
  (*(v262 + 32))(v257, v215, v263);
  v217 = v261;
  (*(v212 + 56))(v261, 1, 1, v216);
  v218 = v208;
  v219 = v264;
  sub_24E7EDF8C(v218, v217, v264);
  v220 = v260;
  (*(v212 + 16))(v260, v214, v216);
  v221 = v269;
  sub_24E69BF7C(v219, v269);
  sub_24F91F5E8();
  v223 = v222;

  v224 = *(v212 + 8);
  v224(v220, v216);
  sub_24E69BFE0(v219);
  v225 = v214;
  v169 = v213;
  v170 = v279;
  v224(v225, v216);
  v226 = type metadata accessor for Player.LastChallengeInfo(0);
  *(v221 + *(v226 + 20)) = v223 * 1000.0;
  (*(*(v226 - 8) + 56))(v221, 0, 1, v226);
LABEL_77:
  sub_24E6009C8(v221, v142 + v170[17], &unk_27F247220);
  *(v142 + v170[18]) = [v161 allowReceivingFriendInvites];
  *(v142 + v170[19]) = sub_24F3FC608(v161);
  GenericRGB = CGColorCreateGenericRGB(0.223, 0.435, 0.6, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C140);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_24F93DE60;
  v230 = *MEMORY[0x277CEE210];
  *(v229 + 32) = *MEMORY[0x277CEE210];
  if (v169)
  {
    v231 = v169;
  }

  else
  {
    v231 = GenericRGB;
  }

  v232 = v270;
  *(v229 + 40) = v231;
  v233 = v230;
  sub_24E609AB0(v229);
  swift_setDeallocating();
  sub_24E601704(v229 + 32, &qword_27F22C148);
  swift_deallocClassInstance();
  sub_24F928948();
  v234 = [v161 avatarArtwork];
  if (v234)
  {
    v235 = v234;
    v236 = [v234 metadata];
    v237 = v259;
    sub_24F3D7378(v236);
    v238 = v272;
    v239 = v271;

    (*(v239 + 56))(v237, 0, 1, v238);
    v240 = *(v239 + 32);
    v241 = v237;
    v242 = v258;
    v240(v258, v241, v238);
    v243 = v242;
    v244 = v279;
    v240(v142 + v279[6], v243, v238);
  }

  else
  {
    v244 = v279;
    v239 = v271;
    v238 = v272;
    (*(v271 + 16))(v142 + v279[6], v232, v272);
  }

  *(v142 + v244[20]) = [v161 isChallengeable];
  *(v142 + v244[21]) = [v161 supportsMultiplayerActivities];
  v245 = [v161 ageCategory];

  (*(v239 + 8))(v232, v238);
  *(v142 + v244[22]) = v245 == 3;
}

uint64_t Player.FriendRequestInboxEntry.init(friendCode:senderHandle:contactID:contactName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_24F3FC608(void *a1)
{
  v2 = 0xEB00000000796C6ELL;
  v3 = [a1 friendsVisibility];
  if (v3 >= 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [a1 achievementsVisibility];
  if (v5 >= 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [a1 gamesPlayedVisibility];
  if (v7 >= 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x4F73646E65697266;
      v10 = 0xEB00000000796C6ELL;
      v11 = v6;
      if (!v6)
      {
LABEL_19:
        v12 = 0xE800000000000000;
        if (v9 != 0x656E6F7972657665)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0xE600000000000000;
      v9 = 0x796C6E4F656DLL;
      v11 = v6;
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x656E6F7972657665;
    v11 = v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v11 == 2)
  {
    v12 = 0xE600000000000000;
    if (v9 != 0x796C6E4F656DLL)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0xEB00000000796C6ELL;
    if (v9 != 0x4F73646E65697266)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  if (v10 == v12)
  {

    goto LABEL_25;
  }

LABEL_24:
  v13 = sub_24F92CE08();

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_25:
  if (!v4)
  {
    v14 = 0xE800000000000000;
    v15 = 0x656E6F7972657665;
    v16 = v8;
    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (v4 != 2)
  {
    v15 = 0x4F73646E65697266;
    v14 = 0xEB00000000796C6ELL;
    v16 = v8;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_30:
    if (v16 == 2)
    {
      v2 = 0xE600000000000000;
      if (v15 != 0x796C6E4F656DLL)
      {
        goto LABEL_39;
      }
    }

    else if (v15 != 0x4F73646E65697266)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 == v2)
    {

      return v4;
    }

    goto LABEL_39;
  }

  v14 = 0xE600000000000000;
  v15 = 0x796C6E4F656DLL;
  v16 = v8;
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_34:
  v2 = 0xE800000000000000;
  if (v15 == 0x656E6F7972657665)
  {
    goto LABEL_37;
  }

LABEL_39:
  v17 = sub_24F92CE08();

  if (v17)
  {
    return v4;
  }

LABEL_41:
  v19 = MEMORY[0x277D84F90];

  return sub_24F3FC898(v4, v6, v8, v19);
}

uint64_t sub_24F3FC898(unsigned int a1, unsigned int a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v6 = a2;
  result = sub_24EB9B4E0(a2, &unk_2861BEA48);
  if (v9)
  {
    __break(1u);
    goto LABEL_129;
  }

  v10 = result;
  result = sub_24EB9B4E0(a1, &unk_2861BEA48);
  if (v11)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v10 >= result)
  {
    v6 = a1;
  }

  result = sub_24EB9B4E0(v5, &unk_2861BEA70);
  if (v12)
  {
    goto LABEL_130;
  }

  v13 = result;
  result = sub_24EB9B4E0(v6, &unk_2861BEA70);
  if (v14)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    return result;
  }

  if (v13 >= result)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = (a4 + 32);
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (byte_2861BEAB8 == 1)
      {
        v20 = 0x4F73646E65697266;
      }

      else
      {
        v20 = 0x796C6E4F656DLL;
      }

      if (byte_2861BEAB8 == 1)
      {
        v21 = 0xEB00000000796C6ELL;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (byte_2861BEAB8)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x656E6F7972657665;
      }

      if (byte_2861BEAB8)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v18 == 1)
      {
        v24 = 0x4F73646E65697266;
      }

      else
      {
        v24 = 0x796C6E4F656DLL;
      }

      if (v18 == 1)
      {
        v25 = 0xEB00000000796C6ELL;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (v18)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0x656E6F7972657665;
      }

      if (v18)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v22 == v26 && v23 == v27)
      {
        v28 = 0;
LABEL_44:

        goto LABEL_47;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        v28 = 0;
        goto LABEL_47;
      }

      if (byte_2861BEAB9)
      {
        if (byte_2861BEAB9 == 1)
        {
          v38 = 0x4F73646E65697266;
          v39 = 0xEB00000000796C6ELL;
          if (!v18)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v39 = 0xE600000000000000;
          v38 = 0x796C6E4F656DLL;
          if (!v18)
          {
LABEL_76:
            v40 = 0xE800000000000000;
            if (v38 != 0x656E6F7972657665)
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }
        }
      }

      else
      {
        v39 = 0xE800000000000000;
        v38 = 0x656E6F7972657665;
        if (!v18)
        {
          goto LABEL_76;
        }
      }

      if (v18 == 1)
      {
        v40 = 0xEB00000000796C6ELL;
        if (v38 != 0x4F73646E65697266)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v40 = 0xE600000000000000;
        if (v38 != 0x796C6E4F656DLL)
        {
          goto LABEL_81;
        }
      }

LABEL_79:
      if (v39 == v40)
      {
        v28 = 1;
        goto LABEL_44;
      }

LABEL_81:
      v41 = sub_24F92CE08();

      if (v41)
      {
        v28 = 1;
        goto LABEL_47;
      }

      if (byte_2861BEABA)
      {
        if (byte_2861BEABA == 1)
        {
          v44 = 0x4F73646E65697266;
          v45 = 0xEB00000000796C6ELL;
          if (!v18)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v45 = 0xE600000000000000;
          v44 = 0x796C6E4F656DLL;
          if (!v18)
          {
LABEL_108:
            v49 = 0xE800000000000000;
            if (v44 == 0x656E6F7972657665)
            {
              goto LABEL_111;
            }

            goto LABEL_113;
          }
        }
      }

      else
      {
        v45 = 0xE800000000000000;
        v44 = 0x656E6F7972657665;
        if (!v18)
        {
          goto LABEL_108;
        }
      }

      if (v18 == 1)
      {
        v49 = 0xEB00000000796C6ELL;
        if (v44 == 0x4F73646E65697266)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v49 = 0xE600000000000000;
        if (v44 == 0x796C6E4F656DLL)
        {
LABEL_111:
          if (v45 == v49)
          {
            v28 = 2;
            goto LABEL_44;
          }
        }
      }

LABEL_113:
      v50 = sub_24F92CE08();

      if ((v50 & 1) == 0)
      {
        goto LABEL_132;
      }

      v28 = 2;
LABEL_47:
      if (byte_2861BEAB8)
      {
        if (byte_2861BEAB8 == 1)
        {
          v30 = 0x4F73646E65697266;
          v31 = 0xEB00000000796C6ELL;
          v32 = v5;
          if (!v5)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v31 = 0xE600000000000000;
          v30 = 0x796C6E4F656DLL;
          v32 = v5;
          if (!v5)
          {
LABEL_56:
            v33 = 0xE800000000000000;
            if (v30 != 0x656E6F7972657665)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }
        }
      }

      else
      {
        v31 = 0xE800000000000000;
        v30 = 0x656E6F7972657665;
        v32 = v5;
        if (!v5)
        {
          goto LABEL_56;
        }
      }

      if (v32 == 1)
      {
        v33 = 0xEB00000000796C6ELL;
        if (v30 != 0x4F73646E65697266)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v33 = 0xE600000000000000;
        if (v30 != 0x796C6E4F656DLL)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      if (v31 == v33)
      {
        v17 = 0;
        goto LABEL_61;
      }

LABEL_62:
      v34 = sub_24F92CE08();

      if ((v34 & 1) == 0)
      {
        if (byte_2861BEAB9)
        {
          if (byte_2861BEAB9 == 1)
          {
            v35 = 0x4F73646E65697266;
            v36 = 0xEB00000000796C6ELL;
            v37 = v5;
            if (!v5)
            {
LABEL_88:
              v42 = 0xE800000000000000;
              if (v35 != 0x656E6F7972657665)
              {
LABEL_93:
                v43 = sub_24F92CE08();

                if (v43)
                {
                  v17 = 1;
                  goto LABEL_13;
                }

                if (byte_2861BEABA)
                {
                  if (byte_2861BEABA == 1)
                  {
                    v46 = 0x4F73646E65697266;
                    v47 = 0xEB00000000796C6ELL;
                    v48 = v5;
                    if (!v5)
                    {
                      goto LABEL_120;
                    }

LABEL_116:
                    if (v48 == 1)
                    {
                      v51 = 0xEB00000000796C6ELL;
                      if (v46 != 0x4F73646E65697266)
                      {
                        goto LABEL_125;
                      }
                    }

                    else
                    {
                      v51 = 0xE600000000000000;
                      if (v46 != 0x796C6E4F656DLL)
                      {
                        goto LABEL_125;
                      }
                    }

LABEL_123:
                    if (v47 != v51)
                    {
LABEL_125:
                      v52 = sub_24F92CE08();

                      if ((v52 & 1) == 0)
                      {
                        goto LABEL_133;
                      }

                      v17 = 2;
                      goto LABEL_13;
                    }

                    v17 = 2;
LABEL_61:

                    goto LABEL_13;
                  }

                  v47 = 0xE600000000000000;
                  v46 = 0x796C6E4F656DLL;
                  v48 = v5;
                  if (v5)
                  {
                    goto LABEL_116;
                  }
                }

                else
                {
                  v47 = 0xE800000000000000;
                  v46 = 0x656E6F7972657665;
                  v48 = v5;
                  if (v5)
                  {
                    goto LABEL_116;
                  }
                }

LABEL_120:
                v51 = 0xE800000000000000;
                if (v46 != 0x656E6F7972657665)
                {
                  goto LABEL_125;
                }

                goto LABEL_123;
              }

LABEL_91:
              if (v36 != v42)
              {
                goto LABEL_93;
              }

              v17 = 1;
              goto LABEL_61;
            }
          }

          else
          {
            v36 = 0xE600000000000000;
            v35 = 0x796C6E4F656DLL;
            v37 = v5;
            if (!v5)
            {
              goto LABEL_88;
            }
          }
        }

        else
        {
          v36 = 0xE800000000000000;
          v35 = 0x656E6F7972657665;
          v37 = v5;
          if (!v5)
          {
            goto LABEL_88;
          }
        }

        if (v37 == 1)
        {
          v42 = 0xEB00000000796C6ELL;
          if (v35 != 0x4F73646E65697266)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v42 = 0xE600000000000000;
          if (v35 != 0x796C6E4F656DLL)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_91;
      }

      v17 = 0;
LABEL_13:
      if (v28 >= v17)
      {
        v5 = v5;
      }

      else
      {
        v5 = v18;
      }

      --v15;
    }

    while (v15);
  }

  return v5;
}

void Player.FriendRequestInboxEntry.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (v7)
  {
    v20 = v5;
    v8 = sub_24F92C318();
    v19 = sub_24F92C2F8();
    v10 = v9;

    if (v10)
    {
      v11 = sub_24F92C318();
      v12 = sub_24F92C2F8();
      v14 = v13;

      v15 = sub_24F92C318();
      v16 = sub_24F92C2F8();
      v18 = v17;

      *a2 = v20;
      a2[1] = v7;
      a2[2] = v19;
      a2[3] = v10;
      a2[4] = v12;
      a2[5] = v14;
      a2[6] = v16;
      a2[7] = v18;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t Player.FriendRequestInboxEntry.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  v7 = v1[7];
  v15 = v1[4];
  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x6F43646E65697266;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  strcpy((inited + 88), "senderHandle");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v5;
  *(inited + 112) = v4;
  *(inited + 144) = 0x49746361746E6F63;
  *(inited + 152) = 0xE900000000000044;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 184) = v11;
  v12 = sub_24E605DB4();
  *(inited + 160) = v15;
  *(inited + 168) = v6;
  *(inited + 192) = v12;
  *(inited + 200) = 0x4E746361746E6F63;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 208) = 0xEB00000000656D61;
  *(inited + 216) = v16;
  *(inited + 224) = v7;

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F3FD254()
{
  v1 = 0x6F43646E65697266;
  v2 = 0x49746361746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x4E746361746E6F63;
  }

  if (*v0)
  {
    v1 = 0x61487265646E6573;
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

uint64_t sub_24F3FD2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3FE794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3FD310(uint64_t a1)
{
  v2 = sub_24F3FE2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3FD34C(uint64_t a1)
{
  v2 = sub_24F3FE2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.FriendRequestInboxEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3FE2C8();
  sub_24F92D128();
  v16 = 0;
  v10 = v12[7];
  sub_24F92CD08();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24F92CD08();
  v14 = 2;
  sub_24F92CCA8();
  v13 = 3;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Player.FriendRequestInboxEntry.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24F92B218();
  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t Player.FriendRequestInboxEntry.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t Player.FriendRequestInboxEntry.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242828);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3FE2C8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CC28();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_24F92CC28();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_24F92CBC8();
  v25 = v13;
  v33 = 3;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24F3FE31C(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_24F384DC0(v32);
}

uint64_t sub_24F3FDA84()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

void *Player.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E69A5C4(0, &qword_27F21E318);
  sub_24E69A5C4(0, &qword_27F235850);
  result = sub_24F92BE38();
  if (v3)
  {
    return sub_24E627880(a1, a2);
  }

  if (result)
  {
    sub_24F3FAC70(result, 0, 0, a3);
    return sub_24E627880(a1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F3FDC18()
{
  v0 = sub_24F92B098();
  [objc_opt_self() playerFromPlayerID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242850);
  return sub_24F92B798();
}

void sub_24F3FDCA8()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v0 = sub_24F9220D8();
  __swift_project_value_buffer(v0, qword_27F39E8E0);
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "currentLocalPlayer calling GKLocalPlayer.current", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = [v4 currentLocalPlayer];
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "currentLocalPlayer calling GKLocalPlayer.local", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v9 = [v4 local];
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_24E5DD000, v10, v11, "currentLocalPlayer returning the result: %@", v12, 0xCu);
    sub_24E601704(v13, &qword_27F227B20);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  if (!v5)
  {
    v15 = v9;
  }

  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242858);
  sub_24F92B798();
}

uint64_t static Player.currentPlayer()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24F3FDFF4;

  return sub_24F3FE354();
}

uint64_t sub_24F3FDFF4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_24F3FE0F4, 0, 0);
}

uint64_t sub_24F3FE0F4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [v1 internal];

  sub_24F3FAC70(v3, 0, 0, v2);
  v4 = v0[1];

  return v4();
}

uint64_t _s12GameStoreKit6PlayerV23FriendRequestInboxEntryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24F3FE2C8()
{
  result = qword_27F242820;
  if (!qword_27F242820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242820);
  }

  return result;
}

uint64_t sub_24F3FE370()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "currentLocalPlayer called", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v6 = sub_24E69A5C4(0, &unk_27F2229D0);
  *v5 = v0;
  v5[1] = sub_24F3FE518;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x800000024FA74E40, sub_24F3FDCA8, 0, v6);
}

uint64_t sub_24F3FE518()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

unint64_t sub_24F3FE618()
{
  result = qword_27F242830;
  if (!qword_27F242830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242830);
  }

  return result;
}

unint64_t sub_24F3FE690()
{
  result = qword_27F242838;
  if (!qword_27F242838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242838);
  }

  return result;
}

unint64_t sub_24F3FE6E8()
{
  result = qword_27F242840;
  if (!qword_27F242840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242840);
  }

  return result;
}

unint64_t sub_24F3FE740()
{
  result = qword_27F242848;
  if (!qword_27F242848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242848);
  }

  return result;
}

uint64_t sub_24F3FE794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43646E65697266 && a2 == 0xEA00000000006564;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61)
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

uint64_t sub_24F3FE91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24F3FE964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double sub_24F3FE9D4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(v1 + 17);
  if (*(v1 + 16))
  {

    sub_24F926E48();
    v14 = sub_24F926E68();
    v15 = *(v14 - 8);
    v16 = MEMORY[0x277CE1020];
    if (!v13)
    {
      v16 = MEMORY[0x277CE1010];
    }

    (*(*(v14 - 8) + 104))(v9, *v16, v14);
    sub_24F926E68();
    (*(v15 + 56))(v9, 0, 1, v14);
    v17 = sub_24F926E38();

    sub_24EB98570(v9);
    v28 = v17;
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v18 = qword_27F211820;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_27F24F280;
    sub_24F926E98();
    v20 = sub_24F926E68();
    v21 = *(v20 - 8);
    v22 = MEMORY[0x277CE1020];
    if (!v13)
    {
      v22 = MEMORY[0x277CE1010];
    }

    (*(*(v20 - 8) + 104))(v12, *v22, v20);
    sub_24F926E68();
    (*(v21 + 56))(v12, 0, 1, v20);
    sub_24F926E38();

    sub_24EB98570(v12);
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v23 = sub_24F926E88();

    (*(v4 + 8))(v6, v3);
    v28 = v23;
    v29 = 0;
    v30 = 1;
    v31 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
  sub_24E6E97A8();
  sub_24F924E28();
  result = *&v32;
  v25 = v33;
  v26 = v34;
  *a1 = v32;
  *(a1 + 16) = v25;
  *(a1 + 18) = v26;
  return result;
}

unint64_t sub_24F3FEDD8()
{
  result = qword_27F242860;
  if (!qword_27F242860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242868);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242860);
  }

  return result;
}

uint64_t type metadata accessor for InGameBannerRequiredData()
{
  result = qword_27F2428A8;
  if (!qword_27F2428A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InGameBannerRequiredData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData() + 24));

  return v1;
}

uint64_t InGameBannerRequiredData.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData() + 28));

  return v1;
}

uint64_t InGameBannerRequiredData.image.getter()
{
  v1 = v0 + *(type metadata accessor for InGameBannerRequiredData() + 32);
  v2 = *v1;
  sub_24E781610(*v1, *(v1 + 8));
  return v2;
}

uint64_t InGameBannerRequiredData.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData() + 36));

  return v1;
}

uint64_t InGameBannerRequiredData.playerIDs.getter()
{
  type metadata accessor for InGameBannerRequiredData();
}

uint64_t InGameBannerRequiredData.clipThumbnailData.getter()
{
  v1 = v0 + *(type metadata accessor for InGameBannerRequiredData() + 48);
  v2 = *v1;
  sub_24E781610(*v1, *(v1 + 8));
  return v2;
}

uint64_t InGameBannerRequiredData.imageSymbolName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData() + 52));

  return v1;
}

uint64_t InGameBannerRequiredData.init(useCase:player:title:message:image:identifier:game:playerIDs:clipThumbnailData:imageSymbolName:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = *a1;
  v23 = type metadata accessor for InGameBannerRequiredData();
  sub_24E6009C8(a2, &a9[v23[5]], &unk_27F23E1F0);
  v24 = &a9[v23[6]];
  *v24 = a3;
  v24[1] = a4;
  v25 = &a9[v23[7]];
  *v25 = a5;
  v25[1] = a6;
  v26 = &a9[v23[8]];
  *v26 = a7;
  v26[1] = a8;
  v27 = &a9[v23[9]];
  *v27 = a10;
  v27[1] = a11;
  result = sub_24E6009C8(a12, &a9[v23[10]], &qword_27F216FE0);
  *&a9[v23[11]] = a13;
  v29 = &a9[v23[12]];
  *v29 = a14;
  v29[1] = a15;
  v30 = &a9[v23[13]];
  *v30 = a16;
  v30[1] = a17;
  return result;
}

unint64_t InGameBannerRequiredData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F945E30;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v3 = *v1;
  *(inited + 72) = &type metadata for AccessPointUseCase;
  v4 = sub_24F3FF668();
  *(inited + 48) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v5 = type metadata accessor for InGameBannerRequiredData();
  v6 = v5[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 136) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(&v1[v6], boxed_opaque_existential_1, &unk_27F23E1F0);
  *(inited + 144) = 0x656C746974;
  *(inited + 152) = 0xE500000000000000;
  v8 = &v1[v5[6]];
  v9 = MEMORY[0x277D22580];
  v10 = *v8;
  v40 = v8[1];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 168) = v40;
  *(inited + 200) = 0x6567617373656DLL;
  *(inited + 208) = 0xE700000000000000;
  v11 = &v1[v5[7]];
  v12 = *v11;
  v13 = v11[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 240) = v14;
  v15 = v14;
  v36 = v14;
  v16 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740);
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 248) = v16;
  *(inited + 256) = 0x6567616D69;
  *(inited + 264) = 0xE500000000000000;
  v17 = &v1[v5[8]];
  v18 = *v17;
  v19 = v17[1];
  v38 = v19;
  v39 = *v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242878);
  *(inited + 296) = v20;
  v21 = sub_24F3FF6BC();
  *(inited + 272) = v18;
  *(inited + 280) = v19;
  *(inited + 304) = v21;
  *(inited + 312) = 0x696669746E656469;
  *(inited + 320) = 0xEA00000000007265;
  v22 = &v1[v5[9]];
  v23 = *v22;
  v37 = v22[1];
  *(inited + 352) = v15;
  *(inited + 360) = v16;
  *(inited + 328) = v23;
  *(inited + 336) = v37;
  *(inited + 368) = 1701667175;
  *(inited + 376) = 0xE400000000000000;
  v24 = v5[10];
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 416) = sub_24E736C00();
  v25 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  sub_24E60169C(&v1[v24], v25, &qword_27F216FE0);
  *(inited + 424) = 0x4449726579616C70;
  *(inited + 432) = 0xE900000000000073;
  v26 = *&v1[v5[11]];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240);
  v27 = sub_24EA14A34();
  *(inited + 440) = v26;
  *(inited + 472) = v27;
  *(inited + 480) = 0xD000000000000011;
  *(inited + 488) = 0x800000024FA74E60;
  v28 = &v1[v5[12]];
  v29 = *v28;
  v30 = v28[1];
  *(inited + 520) = v20;
  *(inited + 528) = v21;
  *(inited + 496) = v29;
  *(inited + 504) = v30;
  *(inited + 536) = 0x6D79536567616D69;
  *(inited + 544) = 0xEF656D614E6C6F62;
  v31 = &v1[v5[13]];
  v32 = *v31;
  v33 = v31[1];
  *(inited + 576) = v36;
  *(inited + 584) = v16;
  *(inited + 552) = v32;
  *(inited + 560) = v33;

  sub_24E781610(v39, v38);

  sub_24E781610(v29, v30);

  v34 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v34;
  return result;
}

unint64_t sub_24F3FF668()
{
  result = qword_27F242870;
  if (!qword_27F242870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242870);
  }

  return result;
}

unint64_t sub_24F3FF6BC()
{
  result = qword_27F242880;
  if (!qword_27F242880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242878);
    sub_24F3FF740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242880);
  }

  return result;
}

unint64_t sub_24F3FF740()
{
  result = qword_27F242888;
  if (!qword_27F242888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242888);
  }

  return result;
}

uint64_t sub_24F3FF794(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4449726579616C70;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x6D79536567616D69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    if (a1 != 5)
    {
      v7 = 1701667175;
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
    v1 = 0x65736143657375;
    v2 = 0x656C746974;
    v3 = 0x6567617373656DLL;
    if (a1 != 3)
    {
      v3 = 0x6567616D69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726579616C70;
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

uint64_t sub_24F3FF8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F400C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3FF904(uint64_t a1)
{
  v2 = sub_24F400638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3FF940(uint64_t a1)
{
  v2 = sub_24F400638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerRequiredData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F400638();
  sub_24F92D128();
  LOBYTE(v15) = *v3;
  v17 = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for InGameBannerRequiredData();
    LOBYTE(v15) = 1;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    v10 = &v3[v9[8]];
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v17 = 4;
    sub_24E781610(v15, v11);
    sub_24E86E0DC();
    sub_24F92CCF8();
    sub_24E71CBAC(v15, v16);
    LOBYTE(v15) = 5;
    sub_24F92CCA8();
    LOBYTE(v15) = 6;
    type metadata accessor for Game();
    sub_24E7B74F8(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CCF8();
    v15 = *&v3[v9[11]];
    v17 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24F352CA8();
    sub_24F92CCF8();
    v12 = &v3[v9[12]];
    v13 = v12[1];
    v15 = *v12;
    v16 = v13;
    v17 = 8;
    sub_24E781610(v15, v13);
    sub_24F92CCF8();
    sub_24E71CBAC(v15, v16);
    LOBYTE(v15) = 9;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InGameBannerRequiredData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2428A0);
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = v35 - v10;
  v12 = type metadata accessor for InGameBannerRequiredData();
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F400638();
  v39 = v11;
  v16 = v41;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v37 = v5;
  v41 = v14;
  v44 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  v17 = v41;
  *v41 = v43;
  type metadata accessor for Player(0);
  LOBYTE(v43) = 1;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC18();
  sub_24E6009C8(v8, &v17[v12[5]], &unk_27F23E1F0);
  LOBYTE(v43) = 2;
  v18 = sub_24F92CC28();
  v36 = v12;
  v19 = &v17[v12[6]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v43) = 3;
  v35[2] = 0;
  v21 = sub_24F92CBC8();
  v22 = &v17[v12[7]];
  *v22 = v21;
  v22[1] = v23;
  v44 = 4;
  v24 = sub_24E86F160();
  sub_24F92CC18();
  *&v17[v12[8]] = v43;
  LOBYTE(v43) = 5;
  v25 = sub_24F92CBC8();
  v35[1] = v24;
  v26 = &v17[v12[9]];
  *v26 = v25;
  v26[1] = v27;
  type metadata accessor for Game();
  LOBYTE(v43) = 6;
  sub_24E7B74F8(&qword_27F214968, type metadata accessor for Game);
  v28 = v37;
  sub_24F92CC18();
  sub_24E6009C8(v28, &v17[v12[10]], &qword_27F216FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v44 = 7;
  sub_24E7C1498();
  sub_24F92CC18();
  *&v17[v36[11]] = v43;
  v44 = 8;
  sub_24F92CC18();
  *&v41[v36[12]] = v43;
  LOBYTE(v43) = 9;
  v29 = sub_24F92CBC8();
  v31 = v30;
  (*(v9 + 8))(v39, v40);
  v32 = v41;
  v33 = &v41[v12[13]];
  *v33 = v29;
  v33[1] = v31;
  sub_24E732AD0(v32, v38);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_24F40068C(v32);
}

unint64_t sub_24F400638()
{
  result = qword_27F242898;
  if (!qword_27F242898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242898);
  }

  return result;
}

uint64_t sub_24F40068C(uint64_t a1)
{
  v2 = type metadata accessor for InGameBannerRequiredData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4006FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F400854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F400998()
{
  sub_24F400AE4(319, &qword_27F214988, type metadata accessor for Player);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F21F920);
      if (v2 <= 0x3F)
      {
        sub_24F400AE4(319, &qword_27F21ADC8, type metadata accessor for Game);
        if (v3 <= 0x3F)
        {
          sub_24E6BCB54();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F400AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_24F400B4C()
{
  result = qword_27F2428B8;
  if (!qword_27F2428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428B8);
  }

  return result;
}

unint64_t sub_24F400BA4()
{
  result = qword_27F2428C0;
  if (!qword_27F2428C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428C0);
  }

  return result;
}

unint64_t sub_24F400BFC()
{
  result = qword_27F2428C8;
  if (!qword_27F2428C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428C8);
  }

  return result;
}

uint64_t sub_24F400C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA74E60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D79536567616D69 && a2 == 0xEF656D614E6C6F62)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F400FBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_24F925AF8();
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetWidth(v9);
  sub_24F925B18();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetWidth(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  sub_24F925B18();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  sub_24F925B18();
  return sub_24F925AE8();
}

double sub_24F40108C@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_24F4010F8(uint64_t *a1))(void *)
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
  return sub_24EA092C8;
}

uint64_t sub_24F401180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401D48();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F4011E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401D48();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F401248(uint64_t a1)
{
  v2 = sub_24F401D48();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24F401294(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_24F925AF8();
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  CGRectGetWidth(v10);
  sub_24F925B18();
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetWidth(v11);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetHeight(v12);
  sub_24F925B18();
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetHeight(v13);
  sub_24F925B18();
  return sub_24F925AE8();
}

double sub_24F40135C@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_24F4013C8(uint64_t *a1))(void *)
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
  return sub_24F25EEFC;
}

uint64_t sub_24F401450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401CC8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F4014B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401CC8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F401518(uint64_t a1)
{
  v2 = sub_24F401CC8();

  return MEMORY[0x282133738](a1, v2);
}

double sub_24F401564@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = qword_24F9F3530[SBYTE1(a1)];
  v12 = (a1 & 0x10000) == 0;
  sub_24F4016A0(a1 & 0x1FF01, &v7);
  v15 = v9;
  v16 = v10;
  v17[0] = v11[0];
  *(v17 + 10) = *(v11 + 10);
  v13 = v7;
  v14 = v8;
  *(v19 + 10) = *(v11 + 10);
  v18[2] = v9;
  v18[3] = v10;
  v19[0] = v11[0];
  v18[0] = v7;
  v18[1] = v8;
  sub_24E60169C(&v13, v6, &qword_27F2428D0);
  sub_24E601704(v18, &qword_27F2428D0);
  v4 = v12;
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0x3FF8000000000000;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 88) = v15;
  *(a2 + 104) = v16;
  *(a2 + 120) = v17[0];
  *(a2 + 130) = *(v17 + 10);
  *(a2 + 56) = v13;
  result = *&v14;
  *(a2 + 72) = v14;
  return result;
}

uint64_t sub_24F4016A0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  v5 = sub_24F926C98();
  v6 = qword_24F9F3530[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  v8 = sub_24F926D08();

  *(v7 + 32) = v8;
  sub_24F926C88();
  v9 = sub_24F926D08();

  *(v7 + 40) = v9;
  *(v7 + 48) = sub_24F926C98();
  sub_24F927828();
  if ((v2 & 1) == 0)
  {
    sub_24F9278B8();
  }

  MEMORY[0x25304CD70](v7);
  sub_24F923BD8();
  v10 = v27;
  v11 = v28;
  v12 = v29;
  v13 = qword_24F9F3530[v4];
  *&v20[0] = v6;
  *(&v20[0] + 1) = v27;
  v20[1] = v28;
  *v21 = v29;
  *&v21[16] = v13;
  *&v21[24] = 256;
  *&v19[48] = *&v21[10];
  *&v19[38] = v29;
  *&v19[22] = v28;
  *&v19[6] = v20[0];
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = 256;
  v14 = *v19;
  v15 = *&v19[16];
  v16 = *&v19[32];
  *(a2 + 74) = *&v19[48];
  *(a2 + 58) = v16;
  *(a2 + 42) = v15;
  *(a2 + 26) = v14;
  v22[0] = v6;
  v22[1] = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = 256;

  sub_24E60169C(v20, v18, &qword_27F2428D8);
  sub_24E601704(v22, &qword_27F2428D8);
}

double sub_24F4018CC@<D0>(uint64_t a1@<X8>)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F401564(v2 | (v1[1] << 8) | *v1, a1);
}

unint64_t sub_24F401934()
{
  result = qword_27F2428E0;
  if (!qword_27F2428E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2428E8);
    sub_24E602068(&qword_27F2428F0, &qword_27F2428F8);
    sub_24E602068(&qword_27F242900, &qword_27F2428D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428E0);
  }

  return result;
}

unint64_t sub_24F401A1C()
{
  result = qword_27F242908;
  if (!qword_27F242908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242908);
  }

  return result;
}

unint64_t sub_24F401A74()
{
  result = qword_27F242910;
  if (!qword_27F242910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242910);
  }

  return result;
}

unint64_t sub_24F401B10()
{
  result = qword_27F242928;
  if (!qword_27F242928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242928);
  }

  return result;
}

unint64_t sub_24F401B68()
{
  result = qword_27F242930;
  if (!qword_27F242930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242930);
  }

  return result;
}

unint64_t sub_24F401C04()
{
  result = qword_27F242948;
  if (!qword_27F242948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242948);
  }

  return result;
}

unint64_t sub_24F401C5C()
{
  result = qword_27F242950;
  if (!qword_27F242950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242950);
  }

  return result;
}

unint64_t sub_24F401CC8()
{
  result = qword_27F242958;
  if (!qword_27F242958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242958);
  }

  return result;
}

unint64_t sub_24F401D48()
{
  result = qword_27F242960;
  if (!qword_27F242960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242960);
  }

  return result;
}

uint64_t sub_24F401DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialIntegration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SocialIntegrationContactsListPageIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialIntegrationContactsListPageIntent() + 20);

  return sub_24E736938(v3, a1);
}

uint64_t type metadata accessor for SocialIntegrationContactsListPageIntent()
{
  result = qword_27F2429B8;
  if (!qword_27F2429B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.game.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SocialIntegrationContactsListPageIntent() + 20);

  return sub_24F401F50(a1, v3);
}

uint64_t sub_24F401F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SocialIntegrationContactsListPageIntent.activeCalls.getter()
{
  type metadata accessor for SocialIntegrationContactsListPageIntent();
}

uint64_t SocialIntegrationContactsListPageIntent.activeCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SocialIntegrationContactsListPageIntent() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.includeGameCenterOptions.setter(char a1)
{
  result = type metadata accessor for SocialIntegrationContactsListPageIntent();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.isMoltresEnabled.setter(char a1)
{
  result = type metadata accessor for SocialIntegrationContactsListPageIntent();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.init(socialIntegration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialIntegrationContactsListPageIntent();
  v5 = v4[5];
  v6 = type metadata accessor for Game();
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v8 = v4[6];
  sub_24F3EA30C(a1, a2);
  sub_24E7D0014(a2 + v5);
  result = (v7)(a2 + v5, 1, 1, v6);
  *(a2 + v8) = 0;
  *(a2 + v4[7]) = 0;
  *(a2 + v4[8]) = 0;
  return result;
}

unint64_t SocialIntegrationContactsListPageIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000024FA74E80;
  *(inited + 72) = type metadata accessor for SocialIntegration();
  *(inited + 80) = sub_24F403034(&qword_27F242968, type metadata accessor for SocialIntegration);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F40307C(v2, boxed_opaque_existential_1, type metadata accessor for SocialIntegration);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for SocialIntegrationContactsListPageIntent();
  v7 = v6[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(inited + 136) = sub_24E736C00();
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E736938(v2 + v7, v8);
  *(inited + 144) = 0x6143657669746361;
  *(inited + 152) = 0xEB00000000736C6CLL;
  v9 = *(v2 + v6[6]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E48);
  v10 = sub_24F125CF8();
  *(inited + 160) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000024FA6CEA0;
  v11 = *(v2 + v6[7]);
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v13;
  *(inited + 216) = v11;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v14 = *(v2 + v6[8]);
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v14;

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

unint64_t sub_24F40255C()
{
  v1 = *v0;
  v2 = 1701667175;
  v3 = 0x6143657669746361;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_24F402604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F403568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F40262C(uint64_t a1)
{
  v2 = sub_24F402F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F402668(uint64_t a1)
{
  v2 = sub_24F402F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegrationContactsListPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F402F44();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for SocialIntegration();
  sub_24F403034(&qword_27F242980, type metadata accessor for SocialIntegration);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SocialIntegrationContactsListPageIntent();
    v13 = 1;
    type metadata accessor for Game();
    sub_24F403034(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E38);
    sub_24F402F98(&qword_27F242988, &qword_27F242990);
    sub_24F92CCF8();
    v11[14] = 3;
    sub_24F92CD18();
    v11[13] = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialIntegrationContactsListPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for SocialIntegration();
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242998);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SocialIntegrationContactsListPageIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for Game();
  v16 = *(*(v15 - 8) + 56);
  v35 = v14;
  v17 = v12;
  v16(&v12[v14], 1, 1, v15);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F402F44();
  v32 = v9;
  v19 = v34;
  sub_24F92D108();
  if (v19)
  {
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E7D0014(v17 + v22);
  }

  else
  {
    v20 = v30;
    v42 = 0;
    sub_24F403034(&qword_27F2429A0, type metadata accessor for SocialIntegration);
    v21 = v31;
    sub_24F92CC68();
    sub_24F3EA30C(v21, v17);
    v41 = 1;
    sub_24F403034(&qword_27F214968, type metadata accessor for Game);
    sub_24F92CC18();
    sub_24F401F50(v5, v17 + v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E38);
    v40 = 2;
    sub_24F402F98(&qword_27F2429A8, &qword_27F2429B0);
    sub_24F92CC18();
    *(v17 + v10[6]) = v37;
    v39 = 3;
    v23 = v17;
    *(v17 + v10[7]) = sub_24F92CC38() & 1;
    v38 = 4;
    v25 = v32;
    v24 = v33;
    v26 = sub_24F92CC38();
    (*(v20 + 8))(v25, v24);
    *(v23 + v10[8]) = v26 & 1;
    sub_24F40307C(v23, v29, type metadata accessor for SocialIntegrationContactsListPageIntent);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F4030E4(v23, type metadata accessor for SocialIntegrationContactsListPageIntent);
  }
}

unint64_t sub_24F402F44()
{
  result = qword_27F242978;
  if (!qword_27F242978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242978);
  }

  return result;
}

uint64_t sub_24F402F98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38);
    sub_24F403034(a2, type metadata accessor for ActiveCall);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F403034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F40307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4030E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F403158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialIntegration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
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

uint64_t sub_24F403290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SocialIntegration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F4033A4()
{
  type metadata accessor for SocialIntegration();
  if (v0 <= 0x3F)
  {
    sub_24E737854();
    if (v1 <= 0x3F)
    {
      sub_24F125C18();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F403464()
{
  result = qword_27F2429C8;
  if (!qword_27F2429C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429C8);
  }

  return result;
}

unint64_t sub_24F4034BC()
{
  result = qword_27F2429D0;
  if (!qword_27F2429D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429D0);
  }

  return result;
}

unint64_t sub_24F403514()
{
  result = qword_27F2429D8;
  if (!qword_27F2429D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429D8);
  }

  return result;
}

uint64_t sub_24F403568(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000024FA74E80 == a2;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6143657669746361 && a2 == 0xEB00000000736C6CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA6CEA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
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

uint64_t sub_24F403738@<X0>(char a1@<W0>, void *a2@<X8>)
{
  type metadata accessor for ArticlePage();
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v18 != 255)
  {
    if (v18)
    {
      sub_24E683B84(v17, v18);
    }

    else
    {
      v5 = *&v17[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard];

      sub_24E683B84(v17, v18);
      if (v5)
      {
        v6 = *(v2 + 104);
        v7 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
        *(a2 + v7[8]) = 1;
        *a2 = v5;
        a2[1] = v6;
        *(a2 + v7[7]) = a1;
        v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup);
        type metadata accessor for LockupViewModel();
        swift_allocObject();

        swift_retain_n();
        v9 = sub_24F41AF18(v8, 2, 0, 0, 1, 5, v6);
        v10 = a2 + v7[6];
        v11 = _s9ViewModelVMa();
        v12 = v11[6];
        v13 = type metadata accessor for IconRowViewModel();
        (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
        *v10 = 4 * (v9 == 0);
        *(v10 + 1) = v9;
        v14 = &v10[v11[7]];
        *v14 = 0;
        *(v14 + 1) = 0;
        *&v10[v11[8]] = 0;
        return (*(*(v7 - 1) + 56))(a2, 0, 1, v7);
      }
    }
  }

  v16 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t sub_24F403A04(uint64_t a1, double a2, double a3)
{
  if (a1)
  {

    v6 = sub_24E7E9768(v5, a2, a3);
    if (v6)
    {
      v7 = v6;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if (!v10)
      {
        type metadata accessor for ArtworkLoader();
        sub_24F928FD8();
        sub_24F92A758();
        v9 = swift_allocObject();
        swift_weakInit();

        ArtworkLoader.fetchArtworkFromCache(using:closestMatch:completionHandler:)(v7, 1, sub_24F4057D8, v9);
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v10 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_24F9230A8();
  }

  return result;
}

uint64_t sub_24F403C14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F403C88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F403CFC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for ArticlePage();
    sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    sub_24F24D234(a1, a2, a3, 0);

LABEL_6:
    sub_24F9230A8();
    v14 = (v4 + *(*v4 + 184));
    v11 = *v14;
    *v14 = 0;
    v14[1] = 0;
    return sub_24E824448(v11);
  }

  if (a4 != 1)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for ArticlePage();
    sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    swift_getKeyPath();

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for ArticlePage();
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();

  sub_24E5FCA4C(a2);
  v9 = a1;
  sub_24F9230A8();
  v10 = (v4 + *(*v4 + 184));
  v11 = *v10;
  *v10 = a2;
  v10[1] = a3;
  return sub_24E824448(v11);
}

uint64_t sub_24F404120(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for GenericPage();
    sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    sub_24F24D234(a1, a2, a3, 0);

LABEL_6:
    sub_24F9230A8();
    v14 = (v4 + *(*v4 + 184));
    v11 = *v14;
    *v14 = 0;
    v14[1] = 0;
    return sub_24E824448(v11);
  }

  if (a4 != 1)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for GenericPage();
    sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    swift_getKeyPath();

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for GenericPage();
  sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();

  sub_24E5FCA4C(a2);
  v9 = a1;
  sub_24F9230A8();
  v10 = (v4 + *(*v4 + 184));
  v11 = *v10;
  *v10 = a2;
  v10[1] = a3;
  return sub_24E824448(v11);
}

uint64_t sub_24F404558(uint64_t *a1)
{

  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + 64);

  v3 = qword_27F239B60;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = *(*v1 + 168);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  sub_24E94E128(v1 + *(*v1 + 176));
  sub_24E824448(*(v1 + *(*v1 + 184)));

  return v1;
}

uint64_t sub_24F4046B8()
{
  type metadata accessor for ArticlePage();
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v4 != 255)
  {
    if (v4)
    {
      sub_24E683B84(v3, v4);
    }

    else
    {
      v0 = *&v3[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card];

      sub_24E683B84(v3, v4);
      if (v0)
      {
        v1 = *(v0 + 32);

        return v1;
      }
    }
  }

  return 0;
}

uint64_t sub_24F404820@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F4048A0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F40491C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F40499C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F404A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a4 && a1)
    {
      v7 = a1;
      v8 = sub_24F926DD8();
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v8;

      sub_24F9230A8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (v9)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_24F9230A8();
    }
  }

  return result;
}

uint64_t sub_24F404B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  LODWORD(a1) = *(a1 + 24);
  result = sub_24F403CFC(v14, v15, v16, a1);
  if (a1)
  {
    return result;
  }

  sub_24F403738(2, v13);
  v18 = type metadata accessor for ArticlePageEditorialStoryCardViewModel();
  v19 = *(*(v18 - 8) + 48);
  if (v19(v13, 1, v18) == 1)
  {
    sub_24F4056AC(v13);
  }

  else if (*(*v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
  {
    sub_24E68507C(v13);
  }

  else
  {
    v21 = *(*v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork);

    sub_24E68507C(v13);
    if (v21)
    {
LABEL_12:

      LOBYTE(v20) = 1;
      goto LABEL_13;
    }
  }

  sub_24F403738(2, v10);
  if (v19(v10, 1, v18) == 1)
  {
    sub_24F4056AC(v10);
    LOBYTE(v20) = 0;
    goto LABEL_13;
  }

  v20 = *(*v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo);

  sub_24E68507C(v10);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_24F403738(3, v7);
  if (v19(v7, 1, v18) == 1)
  {
    sub_24F4056AC(v7);
  }

  else if (*(*v7 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video))
  {
    sub_24E68507C(v7);
  }

  else
  {
    v23 = *(*v7 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork);

    sub_24E68507C(v7);
    if (v23)
    {
    }
  }

  sub_24F403738(3, v4);
  if (v19(v4, 1, v18) == 1)
  {
    result = sub_24F4056AC(v4);
    goto LABEL_20;
  }

  v22 = *(*v4 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video);

  result = sub_24E68507C(v4);
  if (v22)
  {
  }

LABEL_20:
  if ((v20 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v24[15] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24[14] = 1;

      return sub_24F9230A8();
    }
  }

  return result;
}

char *sub_24F404F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_24F40539C(a1, v14, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t sub_24F405048()
{
  v1 = qword_27F2429E0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27F2429E8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_24F405108()
{
  v0 = sub_24F404558(&qword_27F22C6A8);
  v1 = qword_27F2429E0;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27F2429E8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticlePageViewModel()
{
  result = qword_27F2429F0;
  if (!qword_27F2429F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40526C()
{
  sub_24F405338();
  if (v0 <= 0x3F)
  {
    sub_24EA22D84();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24F405338()
{
  if (!qword_27F242A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6A0);
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F242A00);
    }
  }
}

char *sub_24F40539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a7;
  v33 = a3;
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  (*(v16 + 32))(&v30 - v22, a2, a6, v21);
  v24 = swift_allocObject();
  v25 = qword_27F2429E0;
  v37[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A0);
  sub_24F923058();
  (*(v13 + 32))(&v24[v25], v15, v12);
  v26 = qword_27F2429E8;
  LOBYTE(v37[0]) = 0;
  sub_24F923058();
  (*(v31 + 32))(&v24[v26], v11, v32);
  v27 = v33;
  sub_24E615E00(v33, v37);
  (*(v16 + 16))(v19, v23, a6);
  v28 = sub_24F11C64C(v34, v19, v37, v35, v24, a6, v36);
  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v16 + 8))(v23, a6);
  return v28;
}

uint64_t sub_24F4056AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24F405730(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24F405744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4057A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F4057F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F927748();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F4058B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F927748();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayerGroupView()
{
  result = qword_27F242A08;
  if (!qword_27F242A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4059A4()
{
  sub_24F405A50();
  if (v0 <= 0x3F)
  {
    sub_24F927748();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F405A50()
{
  if (!qword_27F214D28)
  {
    type metadata accessor for PlayerAvatar(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F214D28);
    }
  }
}

void sub_24F405AC4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v13 = a3 + 32 * a1;
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    sub_24F407F08(a2, v12, type metadata accessor for PlayerAvatar);
    LOBYTE(v19[0]) = 7;
    sub_24F8319B8(v12, v19, a4);
    *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A60) + 36)) = 256;
    sub_24F927618();
    sub_24F9238C8();
    v16 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A50) + 36));
    v17 = v19[1];
    *v16 = v19[0];
    v16[1] = v17;
    v16[2] = v19[2];
    v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A38) + 36));
    *v18 = v14 * a5;
    v18[1] = v15 * a5;
    return;
  }

  __break(1u);
}

uint64_t sub_24F405C6C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A18);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20);
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A28);
  MEMORY[0x28223BE20](v60);
  v13 = (&v54 - v12);
  sub_24F923998();
  v15 = v14;
  sub_24F923998();
  v17 = v16;
  sub_24F923998();
  v19 = v18;
  if (v15 != v17)
  {
    sub_24F923998();
    if (v20 < v19)
    {
      v19 = v20;
    }
  }

  v21 = type metadata accessor for PlayerGroupView();
  v22 = v19 / *(a1 + v21[7]);
  sub_24F4076A0();
  v56 = v23;
  *v13 = sub_24F9275A8();
  v13[1] = v24;
  v57 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A30) + 44);
  v25 = a1[1];
  sub_24F927618();
  sub_24F9238C8();
  v26 = v70;
  v27 = v71;
  v28 = v72;
  v58 = v13;
  v29 = v73;
  v55 = v74;
  v54 = v75;
  LOBYTE(v66) = v71;
  v67 = v73;
  v30 = v21[6];
  v31 = *(v7 + 36);
  v32 = sub_24F927748();
  (*(*(v32 - 8) + 16))(&v11[v31], a1 + v30, v32);
  *v11 = v25;
  *(v11 + 1) = v26;
  v11[16] = v27;
  *(v11 + 17) = *v69;
  *(v11 + 5) = *&v69[3];
  *(v11 + 3) = v28;
  v11[32] = v29;
  *(v11 + 33) = *v68;
  *(v11 + 9) = *&v68[3];
  v33 = v54;
  *(v11 + 5) = v55;
  *(v11 + 6) = v33;
  *(v11 + 28) = 256;
  sub_24E6B7C48(*(a1 + v21[8]), *a1);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_24F407364(v35, v37, v39);
  v41 = v40;
  swift_unknownObjectRelease();
  v66 = v41;
  swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v56;
  *(v42 + 24) = v22;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_24F407B80;
  *(v43 + 24) = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A38);
  sub_24E602068(&qword_27F21A2F0, &qword_27F21A2E0);
  sub_24F407BC4();
  v44 = v61;
  sub_24F927228();
  v45 = v59;
  sub_24F407DEC(v11, v59);
  v47 = v62;
  v46 = v63;
  v48 = *(v63 + 16);
  v49 = v64;
  v48(v62, v44, v64);
  v50 = v57;
  sub_24F407DEC(v45, v57);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A68);
  v48((v50 + *(v51 + 48)), v47, v49);
  v52 = *(v46 + 8);
  v52(v44, v49);
  sub_24F407E5C(v11);
  v52(v47, v49);
  sub_24F407E5C(v45);

  sub_24E602068(&qword_27F242A70, &qword_27F242A28);
  result = sub_24F927158();
  *v65 = result;
  return result;
}

uint64_t sub_24F406238@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F407F08(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayerGroupView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24F406428(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_24F40648C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24F406338()
{
  v1 = (type metadata accessor for PlayerGroupView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F927748();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F406428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerGroupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40648C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PlayerGroupView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F405C6C(v4, a1);
}

uint64_t sub_24F40650C(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v2);
  v7 = &v37 - v6;
  v8 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v5;
    v9 = *(v5 + 80);
    v37 = v9;
    v38 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v38;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlayerAvatar(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v39 = *(v13 + 72);
    v15 = v8;
    while (1)
    {
      v16 = v41;
      v17 = *(v42 + 48);
      *v41 = v11;
      sub_24F407F08(v14, v16 + v17, type metadata accessor for PlayerAvatar);
      v18 = v7;
      result = sub_24E6009C8(v16, v7, &qword_27F21A378);
      if (v12)
      {
        v44 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A78);
        v22 = *(v43 + 72);
        v23 = v38;
        v44 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v44);
        if (!v22)
        {
          goto LABEL_35;
        }

        v24 = result - v23;
        if (result - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v22;
        v27 = v44;
        *(v44 + 2) = v21;
        v27[3] = 2 * (v24 / v22);
        v28 = v27 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v27 < v15 || v28 >= v15 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v7 = v18;
      v33 = __OFSUB__(v12--, 1);
      if (v33)
      {
        break;
      }

      ++v11;
      result = sub_24E6009C8(v18, v10, &qword_27F21A378);
      v10 += *(v32 + 72);
      v14 += v39;
      v8 = v44;
      v15 = v44;
      if (v40 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v12);
  v36 = v35 - v12;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_24F406868(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      *&v21[0] = v3;
      result = sub_24E643A9C(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AA8);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
        }

        v6 = v12 + 40 * v13;
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      *(v6 + 32) = v25;
      *v6 = v16;
      *(v6 + 16) = v17;
      v6 += 40;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24F406A20(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      *&v29[0] = v3;
      result = sub_24ECEB97C(v5, v29 + 8);
      v39 = v29[8];
      v40 = v29[9];
      v41[0] = v30[0];
      *(v41 + 10) = *(v30 + 10);
      v35 = v29[4];
      v36 = v29[5];
      v37 = v29[6];
      v38 = v29[7];
      v31 = v29[0];
      v32 = v29[1];
      v33 = v29[2];
      v34 = v29[3];
      if (!v4)
      {
        v7 = *(v2 + 3);
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A80);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 192;
        *(v10 + 2) = v9;
        *(v10 + 3) = 2 * v11;
        v12 = v10 + 32;
        v13 = *(v2 + 3) >> 1;
        v14 = 192 * v13;
        if (*(v2 + 2))
        {
          v15 = v2 + 32;
          if (v10 != v2 || v12 >= &v15[v14])
          {
            memmove(v10 + 32, v15, 192 * v13);
          }

          *(v2 + 2) = 0;
        }

        v6 = &v12[v14];
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      v17 = v31;
      v18 = v32;
      v19 = v34;
      *(v6 + 2) = v33;
      *(v6 + 3) = v19;
      *v6 = v17;
      *(v6 + 1) = v18;
      v20 = v35;
      v21 = v36;
      v22 = v38;
      *(v6 + 6) = v37;
      *(v6 + 7) = v22;
      *(v6 + 4) = v20;
      *(v6 + 5) = v21;
      v23 = v39;
      v24 = v40;
      v25 = v41[0];
      *(v6 + 170) = *(v41 + 10);
      *(v6 + 9) = v24;
      *(v6 + 10) = v25;
      *(v6 + 8) = v23;
      v6 += 192;
      v5 += 184;
      if (v1 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = 0;
LABEL_18:
  v26 = *(v2 + 3);
  if (v26 < 2)
  {
    return v2;
  }

  v27 = v26 >> 1;
  v16 = __OFSUB__(v27, v4);
  v28 = v27 - v4;
  if (!v16)
  {
    *(v2 + 2) = v28;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_24F406C28(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8);
  MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for GameDetailsAnnotation() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_24F407F08(v13, v15 + v16, type metadata accessor for GameDetailsAnnotation);
      v17 = v6;
      sub_24E6009C8(v15, v6, &qword_27F2260C8);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AB0);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_24E6009C8(v17, v9, &qword_27F2260C8);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

uint64_t sub_24F406F84(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 56);
    v24 = *(result + 16);
    while (1)
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A98);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 40;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v2[3] >> 1;
        v5 = &v15[5 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v2[2])
        {
          if (v15 != v2 || v17 >= &v2[5 * v18 + 4])
          {
            memmove(v17, v2 + 4, 40 * v18);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v1 = v24;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v10;
      v5[4] = v9;
      v5 += 5;
      v6 += 4;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }

  return v2;
}

uint64_t sub_24F40715C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 72);
    v24 = *(result + 16);
    while (1)
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 2);
      v10 = *v6;
      v25 = *(v6 - 1);
      v26 = *(v6 - 3);
      if (v4)
      {

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AA0);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 56;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v2[3] >> 1;
        v5 = &v15[7 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v2[2])
        {
          if (v15 != v2 || v17 >= &v2[7 * v18 + 4])
          {
            memmove(v17, v2 + 4, 56 * v18);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v1 = v24;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      v6 += 6;
      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v26;
      v5[4] = v9;
      v5[5] = v25;
      v5[6] = v10;
      v5 += 7;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }

  return v2;
}

void sub_24F407364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - v10;
  v11 = a3 >> 1;
  v12 = MEMORY[0x277D84F90];
  if (a3 >> 1 != a2)
  {
    v14 = 0;
    v13 = 0;
    v15 = *(v6 + 80);
    v42 = v15;
    v43 = (v15 + 32) & ~v15;
    v16 = MEMORY[0x277D84F90] + v43;
    if (a2 <= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = a2;
    }

    v44 = v17;
    v18 = MEMORY[0x277D84F90];
    v40 = v6;
    v41 = v8;
    while (v44 != a2)
    {
      v19 = v45 + *(*(type metadata accessor for PlayerAvatar(0) - 8) + 72) * a2;
      v20 = *(v5 + 48);
      *v8 = v14;
      sub_24F407F08(v19, v8 + v20, type metadata accessor for PlayerAvatar);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_36;
      }

      sub_24E6009C8(v8, v46, &qword_27F21A378);
      if (v13)
      {
        v12 = v18;
        v21 = __OFSUB__(v13--, 1);
        if (v21)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v23 = v5;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A78);
        v26 = *(v6 + 72);
        v27 = v43;
        v12 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v12);
        if (!v26)
        {
          goto LABEL_39;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_40;
        }

        v31 = v29 / v26;
        v12[2] = v25;
        v12[3] = 2 * (v29 / v26);
        v32 = v12 + v27;
        v33 = v18[3] >> 1;
        v34 = v33 * v26;
        if (v18[2])
        {
          if (v12 < v18 || v32 >= v18 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v16 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v5 = v23;
        v6 = v40;
        v8 = v41;
        v21 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v21)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      sub_24E6009C8(v46, v16, &qword_27F21A378);
      v16 += *(v6 + 72);
      ++v14;
      v18 = v12;
      if (v11 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = 0;
LABEL_31:
  v36 = v12[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v21 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (!v21)
    {
      v12[2] = v38;
      return;
    }

LABEL_41:
    __break(1u);
  }
}

float64x2_t sub_24F4076A0()
{
  v1 = *(*v0 + 16);
  v2 = type metadata accessor for PlayerGroupView();
  v3 = v2;
  if (*(v0 + *(v2 + 32)) < v1)
  {
    v1 = *(v0 + *(v2 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A30);
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24F942000;
      *(v24 + 32) = xmmword_24F9F3950;
      __asm { FMOV            V0.2D, #28.0 }

      *(v24 + 48) = _Q0;
      v26 = *(v0 + *(v3 + 28));
      __asm
      {
        FMOV            V1.2D, #-24.0
        FMOV            V2.2D, #24.0
      }

      *(v24 + 64) = vaddq_f64(vaddq_f64(v26, _Q1), xmmword_24F9F3960);
      *(v24 + 80) = _Q2;
      *(v24 + 96) = 0x4039000000000000;
      *(v24 + 104) = v26.f64[1] + -22.0 + -6.0;
      __asm { FMOV            V2.2D, #22.0 }

      *(v24 + 112) = _Q2;
      *(v24 + 128) = v26.f64[0] + -13.0 + -24.0;
      *(v24 + 136) = xmmword_24F9F3970;
      *(v24 + 152) = xmmword_24F9F3980;
      *(v24 + 168) = v26.f64[1] + -12.0 + -15.0;
      __asm { FMOV            V0.2D, #12.0 }

      *(v24 + 176) = result;
      return result;
    }

    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v14 = swift_allocObject();
        __asm { FMOV            V1.2D, #9.0 }

        *(v14 + 16) = xmmword_24F9AF330;
        *(v14 + 32) = _Q1;
        *(v14 + 48) = vdupq_n_s64(0x4040800000000000uLL);
        v16 = *(v0 + *(v3 + 28));
        __asm
        {
          FMOV            V1.2D, #-23.0
          FMOV            V2.2D, #23.0
        }

        *(v14 + 64) = vaddq_f64(vaddq_f64(v16, _Q1), xmmword_24F9F38E0);
        *(v14 + 80) = _Q2;
        _Q1.f64[0] = v16.f64[1];
        *(v14 + 96) = 0x402A000000000000;
        *(v14 + 104) = v16.f64[1] + -14.0 + -13.0;
        __asm { FMOV            V2.2D, #14.0 }

        *(v14 + 112) = _Q2;
        *(v14 + 128) = v16.f64[0] + -16.0 + -10.0;
        *(v14 + 136) = xmmword_24F9F38F0;
        *(v14 + 152) = xmmword_24F9F3900;
        *(v14 + 168) = v16.f64[1] + -11.0 + -6.0;
        __asm { FMOV            V0.2D, #11.0 }

        *(v14 + 176) = _Q0;
        *(v14 + 192) = xmmword_24F9F3910;
        __asm { FMOV            V0.2D, #6.0 }

        *(v14 + 208) = _Q0;
        *(v14 + 224) = 0x403E000000000000;
        *(v14 + 232) = _Q1.f64[0] + -7.0 + -20.0;
        __asm { FMOV            V0.2D, #7.0 }

        *(v14 + 240) = result;
        return result;
      }

      goto LABEL_14;
    }

    v35 = swift_allocObject();
    __asm { FMOV            V1.2D, #9.0 }

    *(v35 + 16) = xmmword_24F93A070;
    *(v35 + 32) = _Q1;
    *(v35 + 48) = vdupq_n_s64(0x4040800000000000uLL);
    v37 = *(v0 + *(v3 + 28));
    __asm
    {
      FMOV            V1.2D, #-25.0
      FMOV            V2.2D, #25.0
    }

    *(v35 + 64) = vaddq_f64(vaddq_f64(v37, _Q1), xmmword_24F9F3920);
    *(v35 + 80) = _Q2;
    *(v35 + 96) = 0x4035000000000000;
    *(v35 + 104) = v37.f64[1] + -20.0 + -7.0;
    __asm { FMOV            V2.2D, #20.0 }

    *(v35 + 112) = _Q2;
    *(v35 + 128) = v37.f64[0] + -15.0 + -12.0;
    *(v35 + 136) = xmmword_24F9F3930;
    *(v35 + 152) = xmmword_24F9F3940;
    *(v35 + 168) = v37.f64[1] + -10.0 + -19.0;
    __asm { FMOV            V0.2D, #10.0 }

    *(v35 + 176) = _Q0;
    *(v35 + 192) = 0x4043800000000000;
    __asm { FMOV            V0.2D, #7.0 }

    *(v35 + 200) = result;
    *(v35 + 216) = 0x401C000000000000;
  }

  else
  {
    if (v1 == 2)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24F93A400;
      *(v22 + 32) = xmmword_24F9F39B0;
      __asm { FMOV            V0.2D, #28.0 }

      *(v22 + 48) = result;
      __asm { FMOV            V2.2D, #-28.0 }

      *(v22 + 64) = vaddq_f64(vaddq_f64(*(v0 + *(v3 + 28)), _Q2), xmmword_24F9F39C0);
      *(v22 + 80) = result;
      return result;
    }

    if (v1 != 3)
    {
      if (v1 == 4)
      {
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_24F93FC20;
        *(v4 + 32) = xmmword_24F9F3950;
        __asm { FMOV            V0.2D, #28.0 }

        *(v4 + 48) = _Q0;
        result = *(v0 + *(v3 + 28));
        __asm
        {
          FMOV            V1.2D, #-24.0
          FMOV            V2.2D, #24.0
        }

        *(v4 + 64) = vaddq_f64(vaddq_f64(result, _Q1), xmmword_24F9F3960);
        *(v4 + 80) = _Q2;
        *(v4 + 96) = 0x4039000000000000;
        *(v4 + 104) = result.f64[1] + -22.0 + -6.0;
        __asm { FMOV            V1.2D, #22.0 }

        *(v4 + 112) = _Q1;
        *(v4 + 128) = result.f64[0] + -13.0 + -24.0;
        result.f64[0] = 6.0;
        *(v4 + 136) = xmmword_24F9F3970;
        *(v4 + 152) = 0x402A000000000000;
        return result;
      }

LABEL_14:
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24F93DE60;
      v31 = *(v3 + 28);
      *(v30 + 32) = 0;
      *(v30 + 40) = 0;
      result = *(v0 + v31);
      *(v30 + 48) = result;
      return result;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24F9479A0;
    *(v32 + 32) = xmmword_24F9F3990;
    __asm { FMOV            V0.2D, #24.0 }

    *(v32 + 48) = result;
    __asm { FMOV            V2.2D, #-24.0 }

    v34 = vaddq_f64(*(v0 + *(v3 + 28)), _Q2);
    *(v32 + 64) = vaddq_f64(v34, xmmword_24F9F39A0);
    *(v32 + 80) = result;
    *(v32 + 96) = 0x4026000000000000;
    *(v32 + 104) = v34.f64[1] + -11.0;
    *(v32 + 112) = result;
  }

  return result;
}

uint64_t sub_24F407B48()
{

  return swift_deallocObject();
}

uint64_t sub_24F407B8C()
{

  return swift_deallocObject();
}

unint64_t sub_24F407BC4()
{
  result = qword_27F242A40;
  if (!qword_27F242A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A38);
    sub_24F407C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A40);
  }

  return result;
}

unint64_t sub_24F407C50()
{
  result = qword_27F242A48;
  if (!qword_27F242A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A50);
    sub_24F407CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A48);
  }

  return result;
}

unint64_t sub_24F407CDC()
{
  result = qword_27F242A58;
  if (!qword_27F242A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A60);
    sub_24F407D94();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A58);
  }

  return result;
}

unint64_t sub_24F407D94()
{
  result = qword_27F214AD0;
  if (!qword_27F214AD0)
  {
    type metadata accessor for PlayerAvatarView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AD0);
  }

  return result;
}

uint64_t sub_24F407DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F407E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F407F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F407F70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F408C90(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F242AB8 = v3;
  return result;
}

uint64_t sub_24F4080A4()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F40AA08(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F242AC0 = v4;
  return result;
}

uint64_t sub_24F40821C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2FB5F8(a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F2FB65C(v9);
  }

  sub_24F2FB65C(a1);
  v12 = sub_24E802CE0(&unk_2861C22D8);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24F9F3AC0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F4084AC()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] UpdateListener heard of an update, dropping previously cached friends.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v5 = off_27F242AB8;
  v6 = *(*off_27F242AB8 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_27F242AB8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F242AB8 + v7));
  sub_24E601704(&v5[v6], &qword_27F242AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v7]);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F408694(void *a1, uint64_t a2)
{
  sub_24E601704(a1, &qword_27F242AC8);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F408714(void *a1, uint64_t a2)
{
  sub_24E601704(a1, &qword_27F242AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0);
  *a1 = a2;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  return swift_storeEnumTagMultiPayload();
}

void sub_24F4087B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 friendServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24F40A964;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_150;
  v12 = _Block_copy(aBlock);

  [v9 getFriendsForPlayer:a2 fetchOptions:1 withFilter:1 handler:v12];
  swift_unknownObjectRelease();
  _Block_release(v12);
}

size_t sub_24F4089B8(unint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
    return sub_24F92B788();
  }

  if (a1 >> 62)
  {
    v10 = sub_24F92C738();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_14;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_24F457FDC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v11 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      sub_24F3FAC70(v13, 0, 0, v7);
      v17 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_24F457FDC(v14 > 1, v15 + 1, 1);
        v11 = v17;
      }

      ++v12;
      v11[2] = v15 + 1;
      sub_24F40AA08(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for Player);
    }

    while (v10 != v12);
LABEL_14:
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
    return sub_24F92B798();
  }

  __break(1u);
  return result;
}

uint64_t sub_24F408BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24F409A14(a2);
}

uint64_t sub_24F408C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F408D14()
{
  result = qword_27F2151B0;
  if (!qword_27F2151B0)
  {
    type metadata accessor for FriendsDataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151B0);
  }

  return result;
}

uint64_t sub_24F408D8C()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_24F40A87C();
  *v5 = v0;
  v5[1] = sub_24F408E8C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v4, v6);
}

uint64_t sub_24F408E8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24F4091F0;
  }

  else
  {

    v2 = sub_24F408FA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F408FA8()
{
  v1 = v0[2];
  v2 = [v1 internal];
  v0[8] = v2;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
  *v4 = v0;
  v4[1] = sub_24F4090D4;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000012, 0x800000024FA74F10, sub_24F40A8C8, v3, v5);
}

uint64_t sub_24F4090D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24F4092BC;
  }

  else
  {

    v2 = sub_24F409254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4091F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F409254()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24F4092BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F409348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250);
  *(v0 + 40) = sub_24F92A9E8();
  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v1 = off_27F242AB8;
  *(v0 + 48) = off_27F242AB8;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 56) = v3;
  v4 = *(v2 + 48);
  *(v0 + 96) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F40A844((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  *(v0 + 64) = __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "[FriendsDataIntentImplementation] Fetching friends...", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_24F409588;
  v11 = *(v0 + 32);

  return sub_24F408D6C(v11);
}

uint64_t sub_24F409588(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_24F409834;
  }

  else
  {
    v4 = sub_24F40969C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F40969C()
{

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendsDataIntentImplementation] Fetched %ld friends.", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = (*(v0 + 96) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v9 + v10));
  sub_24F40A860((v9 + v8));
  os_unfair_lock_unlock((v9 + v10));
  if (!v7)
  {
    v11 = *(v0 + 80);

    *(v0 + 24) = v11;
    sub_24F92A9C8();

    v12 = *(v0 + 80);
    v13 = *(v0 + 8);

    v13(v12);
  }
}

uint64_t sub_24F409834()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendsDataIntentImplementation] Failed to fetch friends: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);

  v14 = (v11 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v14));
  sub_24E601704(v13 + v12, &qword_27F242AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock((v13 + v14));
  v15 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_24F92A9C8();

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_24F409A14(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_24F91F648();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F409B28, 0, 0);
}

uint64_t sub_24F409B28()
{
  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F242AB8;
  v4 = *(*off_27F242AB8 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F242AB8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F242AB8 + v5));
  sub_24F40A7D4(&v3[v4], v2);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24F40A7D4(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v22 = swift_task_alloc();
      v0[11] = v22;
      *v22 = v0;
      v23 = sub_24F40A0AC;
LABEL_22:
      v22[1] = v23;
      v33 = v0[3];

      return sub_24F409328(v33);
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = *v7;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0);
    (*(v10 + 32))(v8, &v7[*(v12 + 48)], v9);
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E808);

    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v11 + 16);

      _os_log_impl(&dword_24E5DD000, v14, v15, "[FriendsDataIntentImplementation] Friends list cached, returning %ld friends.", v16, 0xCu);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    else
    {
    }

    v24 = v0[6];
    v25 = v0[4];
    v26 = v0[5];
    sub_24F91F618();
    sub_24F91F558();
    v28 = v27;
    v29 = *(v26 + 8);
    v0[16] = v29;
    v0[17] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v24, v25);
    if (v28 > 300.0)
    {

      v30 = sub_24F9220B8();
      v31 = sub_24F92BD98();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24E5DD000, v30, v31, "[FriendsDataIntentImplementation] Friends list cache is getting old, performing a fetch.", v32, 2u);
        MEMORY[0x2530542D0](v32, -1, -1);
      }

      v22 = swift_task_alloc();
      v0[18] = v22;
      *v22 = v0;
      v23 = sub_24F40A618;
      goto LABEL_22;
    }

    v34 = v0[10];
    v29(v0[7], v0[4]);
    sub_24E601704(v34, &qword_27F242AC8);

    v35 = v0[1];

    return v35(v11);
  }

  else
  {
    v0[13] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    v0[14] = __swift_project_value_buffer(v17, qword_27F39E808);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "[FriendsDataIntentImplementation] Friends fetch already in flight, waiting on it to finish...", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_24F40A254;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F40A0AC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_24F40A1AC, 0, 0);
}

uint64_t sub_24F40A1AC()
{
  sub_24E601704(v0[10], &qword_27F242AC8);
  v1 = v0[12];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F40A254()
{

  if (v0)
  {

    v1 = sub_24F40A4BC;
  }

  else
  {
    v1 = sub_24F40A36C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F40A36C()
{
  v1 = v0[2];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] Existing friends fetch completed, returning %ld friends.", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[10];

  sub_24E601704(v5, &qword_27F242AC8);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_24F40A4BC()
{
  v1 = MEMORY[0x277D84F90];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] Existing friends fetch completed, returning %ld friends.", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 80);

  sub_24E601704(v5, &qword_27F242AC8);

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(v7);
}

uint64_t sub_24F40A618(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24F40A718, 0, 0);
}

uint64_t sub_24F40A718()
{
  v1 = *(v0 + 80);
  (*(v0 + 128))(*(v0 + 56), *(v0 + 32));
  sub_24E601704(v1, &qword_27F242AC8);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F40A7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F40A87C()
{
  result = qword_27F216FC8;
  if (!qword_27F216FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F216FC8);
  }

  return result;
}

uint64_t sub_24F40A8D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

size_t sub_24F40A964(unint64_t a1, unint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8);

  return sub_24F4089B8(a1, a2);
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F40AA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t IncomingFriendRequestShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for IncomingFriendRequestShelfIntent()
{
  result = qword_27F242AF8;
  if (!qword_27F242AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t IncomingFriendRequestShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x7265646E6573;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for IncomingFriendRequestShelfIntent();
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Player(0);
  *(inited + 128) = v8;
  v9 = sub_24E61C064(&qword_27F215388);
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F40B4C4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x616C506C61636F6CLL;
  *(inited + 152) = 0xEB00000000726579;
  v11 = *(v6 + 24);
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F40B4C4(v1 + v11, v12, type metadata accessor for Player);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F40AD80()
{
  v1 = 0x7265646E6573;
  if (*v0 != 1)
  {
    v1 = 0x616C506C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F40ADDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F40B898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F40AE04(uint64_t a1)
{
  v2 = sub_24F40B470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F40AE40(uint64_t a1)
{
  v2 = sub_24F40B470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomingFriendRequestShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F40B470();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for IncomingFriendRequestShelfIntent();
    v10 = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28);
    sub_24F92CD48();
    v9 = 2;
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IncomingFriendRequestShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AF0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for IncomingFriendRequestShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F40B470();
  v27 = v9;
  v13 = v28;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v14 = v24;
  v15 = v10;
  v22 = v4;
  v31 = 0;
  v16 = v26;
  v17 = v12;
  *v12 = sub_24F92CC28();
  v12[1] = v18;
  v21[2] = v18;
  v30 = 1;
  v21[1] = sub_24E61C064(&qword_27F213E38);
  sub_24F92CC68();
  sub_24E61C0A8(v7, v12 + *(v15 + 20));
  v29 = 2;
  v19 = v22;
  sub_24F92CC68();
  (*(v14 + 8))(v27, v16);
  sub_24E61C0A8(v19, v17 + *(v15 + 24));
  sub_24F40B4C4(v17, v23, type metadata accessor for IncomingFriendRequestShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_24F40B52C(v17, type metadata accessor for IncomingFriendRequestShelfIntent);
}

unint64_t sub_24F40B470()
{
  result = qword_27F242AE8;
  if (!qword_27F242AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242AE8);
  }

  return result;
}

uint64_t sub_24F40B4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40B52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_24F40B660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_24F40B704()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F40B794()
{
  result = qword_27F242B08;
  if (!qword_27F242B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B08);
  }

  return result;
}

unint64_t sub_24F40B7EC()
{
  result = qword_27F242B10;
  if (!qword_27F242B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B10);
  }

  return result;
}

unint64_t sub_24F40B844()
{
  result = qword_27F242B18;
  if (!qword_27F242B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B18);
  }

  return result;
}

uint64_t sub_24F40B898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579)
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

uint64_t sub_24F40B9AC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SocialUserGroup();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for SocialMenuIntent();
  v2[14] = swift_task_alloc();
  v2[15] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230) - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F40BB0C, 0, 0);
}

uint64_t sub_24F40BB0C()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[15];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = v0[11];
    v31 = *(v3 + 72);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = v0[16];
      v6 = v0[17];
      v8 = v0[10];
      sub_24E60169C(v4, v6, &unk_27F23E230);
      sub_24E7725B4(v6, v7);
      v9 = (*(v30 + 48))(v7, 1, v8);
      v10 = v0[16];
      if (v9 == 1)
      {
        sub_24E601704(v10, &unk_27F23E230);
      }

      else
      {
        sub_24F40C9D8(v10, v0[12], type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_24E6181C8(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_24E6181C8(v11 > 1, v12 + 1, 1, v5);
        }

        v13 = v0[12];
        v5[2] = v12 + 1;
        sub_24F40C9D8(v13, v5 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v12, type metadata accessor for SocialUserGroup);
      }

      v4 += v31;
      --v2;
    }

    while (v2);
    v1 = v0[8];
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[9];
  v17 = type metadata accessor for ContactsPageViewSocialMenuProvider();
  sub_24E60169C(v16 + v17[7], v14 + v15[5], &qword_27F216FE0);
  v18 = *(v16 + v17[8]);
  v19 = *(v16 + v17[9]);
  v20 = *(v16 + v17[10]);
  *v14 = 0xD000000000000010;
  v14[1] = 0x800000024FA74F30;
  *(v14 + v15[6]) = v18;
  *(v14 + v15[7]) = v19;
  *(v14 + v15[8]) = v20;
  *(v14 + v15[9]) = v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B20);

  v22 = sub_24F92A9E8();
  v0[18] = v22;
  v0[19] = sub_24EB46AEC(v14, *v16, "GameStoreKit/ContactsPageViewSocialMenuProvider.swift", 53, 2);
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v22;
  v24 = sub_24E74EC40();
  swift_retain_n();

  v25 = sub_24F92BEF8();
  v26 = MEMORY[0x277D225C0];
  v0[5] = v24;
  v0[6] = v26;
  v0[2] = v25;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v27 = sub_24F40C4E0();
  v28 = swift_task_alloc();
  v0[20] = v28;
  *v28 = v0;
  v28[1] = sub_24F40BEF0;

  return MEMORY[0x282180360](v0 + 7, v21, v27);
}

uint64_t sub_24F40BEF0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_24F40C0D4;
  }

  else
  {
    *(v2 + 176) = *(v2 + 56);
    v3 = sub_24F40C00C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F40C00C()
{
  v1 = v0[14];

  sub_24F40CA40(v1, type metadata accessor for SocialMenuIntent);

  v2 = v0[1];
  v3 = v0[22];

  return v2(v3);
}

uint64_t sub_24F40C0D4()
{
  v1 = *(v0 + 112);

  sub_24F40CA40(v1, type metadata accessor for SocialMenuIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for ContactsPageViewSocialMenuProvider()
{
  result = qword_27F242B30;
  if (!qword_27F242B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F40C1E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = *(a2 + 16);
  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_18:
    v25 = v13;
    sub_24F92A9C8();
  }

  v10 = 0;
  v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  v24 = *a1;
  v22 = v24 + 32;
  v13 = MEMORY[0x277D84F90];
  v23 = v12;
  while (1)
  {
    sub_24E60169C(v11, v8, &unk_27F23E230);
    v14 = type metadata accessor for SocialUserGroup();
    result = (*(*(v14 - 8) + 48))(v8, 1, v14);
    if (result == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24E61A360(0, v13[2] + 1, 1, v13);
      }

      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        v13 = sub_24E61A360((v16 > 1), v17 + 1, 1, v13);
      }

      v13[2] = v17 + 1;
      v13[v17 + 4] = 0;
      goto LABEL_4;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v24 + 16))
    {
      goto LABEL_20;
    }

    v18 = *(v22 + 8 * v10);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24E61A360(0, v13[2] + 1, 1, v13);
    }

    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      v13 = sub_24E61A360((v19 > 1), v20 + 1, 1, v13);
    }

    v13[2] = v20 + 1;
    v13[v20 + 4] = v18;
    ++v10;
    v12 = v23;
LABEL_4:
    sub_24E601704(v8, &unk_27F23E230);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24F40C498()
{

  return swift_deallocObject();
}

unint64_t sub_24F40C4E0()
{
  result = qword_27F242B28;
  if (!qword_27F242B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B28);
  }

  return result;
}

uint64_t sub_24F40C544@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v37 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v38 = type metadata accessor for SocialUser();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v14;
  v15 = *a1;
  v16 = type metadata accessor for Player(0);
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F941C80;
  *(v17 + 32) = v15;
  v19 = a2[2];
  v18 = a2[3];
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v23 = a2[7];
  v40[0] = v19;
  v40[1] = v18;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v24 = v20;

  v25 = v22;
  v26 = v23;
  v27 = v15;
  v28 = v19;
  v29 = v18;
  SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v37, v40, 1, 0, v10);
  if ((*(v11 + 48))(v10, 1, v38) == 1)
  {
    sub_24E601704(v10, &unk_27F253B40);
    v30 = type metadata accessor for SocialUserGroup();
    return (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  }

  else
  {
    v32 = v35;
    sub_24F40C9D8(v10, v35, type metadata accessor for SocialUser);
    v33 = v36;
    sub_24F14246C(v32, v36);
    SocialUserGroup.init(user:)(v33, v39);
    return sub_24F40CA40(v32, type metadata accessor for SocialUser);
  }
}

uint64_t sub_24F40C880@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a4[1];
  v36 = *a4;
  v9 = a4[3];
  v34 = a4[2];
  v35 = v8;
  v32 = a4[4];
  v33 = v9;
  v10 = a5[3];
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[6];
  v15 = a5[7];
  v27.n128_u64[0] = a5[2];
  v11 = v27.n128_u64[0];
  v27.n128_u64[1] = v10;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v24 = v7;

  sub_24E60169C(&v36, v26, &unk_27F23E1A0);
  sub_24E60169C(&v35, v26, &unk_27F23E1A0);
  sub_24E60169C(&v34, v26, &unk_27F23E1A0);
  sub_24E60169C(&v33, v26, &unk_27F23E1A0);
  sub_24E60169C(&v32, v26, &unk_27F22E000);
  v16 = v12;

  v17 = v14;
  v18 = v15;
  v19 = v11;
  v20 = v10;
  return sub_24F2C4AEC(v24, a2, a3, a4, &v27, 0, a6);
}

uint64_t sub_24F40C9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40CA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40CAB4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24F40CB84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F40CC34()
{
  sub_24F928FD8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JSIntentDispatcher();
    if (v1 <= 0x3F)
    {
      sub_24E737854();
      if (v2 <= 0x3F)
      {
        sub_24F125C18();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F40CD24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F40CE74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsDeveloper()
{
  result = qword_27F242B40;
  if (!qword_27F242B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40CFFC()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E61C8D4();
    if (v1 <= 0x3F)
    {
      sub_24F3C7948(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v2 <= 0x3F)
      {
        sub_24F3C7948(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F40D0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BB0);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for GameDetailsDeveloper();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v42 = v14 + 40;
  sub_24E61DA68(&v43, (v14 + 40), qword_27F21B590);
  v15 = *(v12 + 24);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v39 = v15;
  v17(&v14[v15], 1, 1, v16);
  v36 = v12;
  v18 = *(v12 + 32);
  v19 = sub_24F9289E8();
  v20 = *(*(v19 - 8) + 56);
  v40 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F40EDA8();
  v37 = v11;
  v22 = v38;
  sub_24F92D108();
  if (v22)
  {
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_24E601704(v42, qword_27F24EC90);
    sub_24E601704(&v14[v24], &qword_27F213E68);
    return sub_24E601704(&v14[v40], &qword_27F213FB0);
  }

  else
  {
    v38 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v23 = v35;
    sub_24F92CC68();
    v25 = v44;
    *v14 = v43;
    *(v14 + 1) = v25;
    *(v14 + 4) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v46 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v39;
    sub_24E61DA68(&v43, v42, qword_27F24EC90);
    LOBYTE(v43) = 2;
    sub_24F40EDFC(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E61DA68(v8, &v14[v26], &qword_27F213E68);
    LOBYTE(v43) = 3;
    v27 = sub_24F92CC28();
    v28 = v34;
    v29 = &v14[*(v36 + 28)];
    *v29 = v27;
    v29[1] = v30;
    LOBYTE(v43) = 4;
    sub_24F40EDFC(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v38;
    sub_24F92CC18();
    (*(v28 + 8))(v37, v23);
    sub_24E61DA68(v31, &v14[v40], &qword_27F213FB0);
    sub_24F40EE44(v14, v33, type metadata accessor for GameDetailsDeveloper);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24F40EEAC(v14, type metadata accessor for GameDetailsDeveloper);
  }
}